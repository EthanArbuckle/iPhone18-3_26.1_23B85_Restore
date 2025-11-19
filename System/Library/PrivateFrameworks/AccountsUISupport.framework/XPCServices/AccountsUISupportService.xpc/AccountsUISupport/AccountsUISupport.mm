int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_1000016A0()
{
  v1 = sub_100041EC4();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  v0[4] = v4;
  v5 = sub_100041FA4();
  v0[5] = v5;
  v6 = *(v5 - 8);
  v0[6] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v0[7] = v8;
  sub_100042744();
  v0[8] = sub_100042734();
  sub_1000020D0();
  v9 = sub_100041FD4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  qword_100055890 = sub_100041FE4();
  type metadata accessor for Service();

  qword_100055898 = Service.__allocating_init(actorSystem:)(v12);
  v13 = sub_100042434();
  sub_100001D84(v13, qword_1000558A0);
  v14 = sub_100001DE8(v13, qword_1000558A0);
  sub_100042424();
  sub_100041F94();
  v15 = _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying21andExecuteForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAQnYaYbXEtYaAC10SetupErrorVYKFTu[1];
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_10000190C;

  return _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying21andExecuteForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAQnYaYbXEtYaAC10SetupErrorVYKF(v8, v14, &unk_100043630, 0, v4);
}

uint64_t sub_10000190C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v16 = *v1;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    if (v4)
    {
      v8 = *(v2 + 64);
      swift_getObjectType();
      v9 = sub_100042724();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = sub_100001B34;
  }

  else
  {
    if (v4)
    {
      v13 = *(v2 + 64);
      swift_getObjectType();
      v9 = sub_100042724();
      v11 = v14;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = sub_100001AFC;
  }

  return _swift_task_switch(v12, v9, v11);
}

void sub_100001AFC()
{
  v1 = *(v0 + 64);

  exit(0);
}

uint64_t sub_100001B34()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_100002088(&qword_1000548F0, &type metadata accessor for XPCSystem.SetupError);
  v5 = swift_allocError();
  (*(v3 + 32))(v6, v2, v4);

  return _swift_errorInMain(v5);
}

uint64_t sub_100001C00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001C8C;

  return sub_1000016A0();
}

uint64_t sub_100001C8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *sub_100001D84(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100001DE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001E20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100001E40, 0, 0);
}

uint64_t sub_100001E40()
{
  v1 = v0[3];
  type metadata accessor for $DistributedService();
  type metadata accessor for Service();
  sub_100002088(&qword_1000548F8, type metadata accessor for Service);
  sub_100002088(&qword_100054900, type metadata accessor for $DistributedService);
  sub_100041FC4();
  v2 = async function pointer to XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100001F94;
  v4 = v0[2];
  v5 = v0[3];

  return XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()(v4);
}

uint64_t sub_100001F94()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002088(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000020D0()
{
  sub_100042514();
  v0 = _set_user_dir_suffix();

  if (v0)
  {
    v1 = NSTemporaryDirectory();
  }

  else
  {
    sub_100042944(33);

    sub_100042444();
    v3._countAndFlagsBits = sub_100042BA4();
    sub_1000425C4(v3);

    sub_100042A34();
    __break(1u);
  }
}

Swift::Int sub_100002204()
{
  v1 = *v0;
  sub_100042C54();
  sub_100042C64(v1);
  return sub_100042C94();
}

Swift::Int sub_100002278()
{
  v1 = *v0;
  sub_100042C54();
  sub_100042C64(v1);
  return sub_100042C94();
}

Swift::Int sub_1000022BC()
{
  v1 = *v0;
  sub_100042C54();
  if (v1)
  {
    sub_100042C64(1uLL);
    sub_1000427F4();
  }

  else
  {
    sub_100042C64(0);
  }

  return sub_100042C94();
}

void sub_100002320()
{
  if (*v0)
  {
    sub_100042C64(1uLL);
    sub_1000427F4();
  }

  else
  {
    sub_100042C64(0);
  }
}

Swift::Int sub_100002378()
{
  v1 = *v0;
  sub_100042C54();
  if (v1)
  {
    sub_100042C64(1uLL);
    sub_1000427F4();
  }

  else
  {
    sub_100042C64(0);
  }

  return sub_100042C94();
}

BOOL sub_1000023D8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_100003084();
      return sub_1000427E4() & 1;
    }

    return 0;
  }

  return !v2;
}

void Authenticator.hash(into:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100042C64(a2);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  if (a5)
  {
    sub_100042C64(1uLL);
    sub_1000427F4();
  }

  else
  {
    sub_100042C64(0);
  }
}

Swift::Int Authenticator.hashValue.getter(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100042C54();
  sub_100042C64(a1);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  if (a4)
  {
    sub_100042C64(1uLL);
    sub_1000427F4();
  }

  else
  {
    sub_100042C64(0);
  }

  return sub_100042C94();
}

Swift::Int sub_100002540()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_100042C54();
  sub_100042C64(v1);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  if (v4)
  {
    sub_100042C64(1uLL);
    sub_1000427F4();
  }

  else
  {
    sub_100042C64(0);
  }

  return sub_100042C94();
}

void sub_1000025D8()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_100042C64(*v0);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  if (v3)
  {
    sub_100042C64(1uLL);
    sub_1000427F4();
  }

  else
  {
    sub_100042C64(0);
  }
}

Swift::Int sub_100002658()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_100042C54();
  sub_100042C64(v1);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  if (v4)
  {
    sub_100042C64(1uLL);
    sub_1000427F4();
  }

  else
  {
    sub_100042C64(0);
  }

  return sub_100042C94();
}

uint64_t static Authenticator.clientCertificate(host:identity:)(uint64_t a1, uint64_t a2, __SecIdentity *a3)
{
  v4 = sub_1000027CC(a3);
  sub_10000288C(v4);

  v5 = objc_allocWithZone(NSURLCredential);
  isa = sub_1000426E4().super.isa;

  [v5 initWithIdentity:a3 certificates:isa persistence:0];

  return 1;
}

_OWORD *sub_1000027CC(__SecIdentity *a1)
{
  v8 = 0;
  v1 = SecIdentityCopyCertificate(a1, &v8);
  v2 = sub_100042454();
  v3 = v8;
  if (v1 != v2 || v8 == 0)
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_100003288(&qword_100054938, &qword_100043828);
    v5 = swift_allocObject();
    v5[1] = xmmword_100043640;
    *(v5 + 4) = v3;
    v6 = v3;
  }

  return v5;
}

char *sub_10000288C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100042A54();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100012FE4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100042974();
        type metadata accessor for SecCertificate(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100012FE4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100003278(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for SecCertificate(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100012FE4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100003278(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static Authenticator.digestAuth(host:username:password:)()
{
  v0 = objc_allocWithZone(NSURLCredential);
  v1 = sub_1000424E4();
  v2 = sub_1000424E4();
  [v0 initWithUser:v1 password:v2 persistence:0];

  return 0;
}

_DWORD *sub_100002BB0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t _s27AccountsUISupportServiceLib13AuthenticatorV23__derived_struct_equalsySbAC_ACtFZ_0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2 == a6 && a3 == a7 || (sub_100042BD4() & 1) != 0)
  {
    if (a4)
    {
      if (a8)
      {
        sub_100003084();
        if (sub_1000427E4())
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_100002C70()
{
  result = qword_100054918;
  if (!qword_100054918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054918);
  }

  return result;
}

__n128 sub_100002CC4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100002D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100002D74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100002E18(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100002E34(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Authenticator.Method(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Authenticator.Method(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100002FD8()
{
  result = qword_100054920;
  if (!qword_100054920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054920);
  }

  return result;
}

unint64_t sub_100003030()
{
  result = qword_100054928;
  if (!qword_100054928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054928);
  }

  return result;
}

unint64_t sub_100003084()
{
  result = qword_100054930;
  if (!qword_100054930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100054930);
  }

  return result;
}

BOOL sub_1000030D0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 protectionSpace];
  v9 = [v8 authenticationMethod];

  v10 = sub_1000424F4();
  v12 = v11;

  v13 = **(&off_100051CB0 + a2);
  if (v10 == sub_1000424F4() && v12 == v14)
  {
  }

  else
  {
    v16 = sub_100042BD4();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = [a1 protectionSpace];
  v18 = [v17 host];

  v19 = sub_1000424F4();
  v21 = v20;

  if (v19 == a3 && v21 == a4)
  {

    return 1;
  }

  v23 = sub_100042BD4();

  return (v23 & 1) != 0;
}

_OWORD *sub_100003278(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100003288(uint64_t *a1, uint64_t *a2)
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

void sub_1000032F8(uint64_t a1, unint64_t *a2)
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

uint64_t CloudKitServer.__allocating_init(baseURL:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CloudKitServer.init(baseURL:)(a1);
  return v5;
}

uint64_t CloudKitServer.init(baseURL:)(uint64_t a1)
{
  v3 = sub_100003288(&qword_100054958, &qword_100043920);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_100041D04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100042404();
  v12 = sub_100004348();
  sub_1000044BC(a1, v6);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_100003634(v11);
    if (v13(v6, 1, v7) != 1)
    {
      sub_10000452C(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  v14 = type metadata accessor for SimpleURLSessionNetworkAPI();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  (*(v8 + 16))(v17 + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, v11, v7);
  v18 = [objc_opt_self() sessionWithConfiguration:v12];
  *(v17 + 16) = v18;
  v19 = sub_1000424E4();
  [v18 setSessionDescription:v19];

  sub_10000452C(a1);
  (*(v8 + 8))(v11, v7);
  *(v1 + 16) = v17;
  return v1;
}

uint64_t sub_100003634@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(sub_100003288(&qword_100054958, &qword_100043920) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = objc_allocWithZone(NSUserDefaults);
  v9 = sub_1000424E4();
  v10 = [v8 initWithSuiteName:v9];

  if (v10)
  {
    v11 = v10;
    v12 = sub_1000424E4();
    v13 = [v11 BOOLForKey:v12];

    if (v13)
    {
      sub_100041CF4();
      v14 = sub_100041D04();
      v15 = *(v14 - 8);
      result = (*(v15 + 48))(v7, 1, v14);
      if (result != 1)
      {

        return (*(v15 + 32))(a1, v7, v14);
      }

      goto LABEL_9;
    }
  }

  sub_100041CF4();
  v17 = sub_100041D04();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v5, 1, v17);
  if (result == 1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  return (*(v18 + 32))(a1, v5, v17);
}

uint64_t CloudKitServer.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC27AccountsUISupportServiceLib14CloudKitServer_logger;
  v3 = sub_100042414();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudKitServer.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC27AccountsUISupportServiceLib14CloudKitServer_logger;
  v3 = sub_100042414();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_1000039F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1000428D4(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100004780(*(v6 + 48) + 40 * v9, v17);
      v11 = sub_1000428E4();
      sub_10000472C(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_10000472C(a2);
    sub_100004780(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100004780(a2, v17);
    v16 = *v3;
    sub_100003DA0(v17, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_100003B40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003288(&qword_100054A30, &qword_100043968);
  result = sub_100042914();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v29 = *v19;
      v30 = *(v19 + 16);
      v31 = *(v19 + 32);
      result = sub_1000428D4(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v29;
      *(v15 + 16) = v30;
      *(v15 + 32) = v31;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100003DA0(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100003B40(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100003F18();
      goto LABEL_12;
    }

    sub_100004090(v7 + 1);
  }

  v9 = *v3;
  result = sub_1000428D4(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_100004780(*(v9 + 48) + 40 * a2, v19);
      v12 = sub_1000428E4();
      result = sub_10000472C(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100042BF4();
  __break(1u);
  return result;
}

void *sub_100003F18()
{
  v1 = v0;
  sub_100003288(&qword_100054A30, &qword_100043968);
  v2 = *v0;
  v3 = sub_100042904();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_100004780(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100004090(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003288(&qword_100054A30, &qword_100043968);
  result = sub_100042914();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_100004780(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v28);
      result = sub_1000428D4(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v28[0];
      v16 = v28[1];
      *(v14 + 32) = v29;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000042BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100042784();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100004780(v4, v5);
      sub_1000039F4(v6, v5);
      sub_10000472C(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id sub_100004348()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  [v0 setTimeoutIntervalForRequest:90.0];
  [v0 setTimeoutIntervalForResource:90.0];
  [v0 setWaitsForConnectivity:0];
  [v0 setUsesClassicLoadingMode:0];
  sub_100003288(&qword_100054A18, "RE");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100043910;
  sub_100004688();
  v4 = sub_100042804();
  sub_1000046D4();
  sub_1000428F4();
  sub_1000042BC(inited);
  swift_setDeallocating();
  sub_10000472C(inited + 32);
  isa = sub_100042774().super.isa;

  [v0 set_suppressedAutoAddedHTTPHeaders:{isa, v4}];

  return v0;
}

uint64_t sub_1000044BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054958, &qword_100043920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000452C(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054958, &qword_100043920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CloudKitServer()
{
  result = qword_100054988;
  if (!qword_100054988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000045E8()
{
  result = sub_100042414();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100004688()
{
  result = qword_100054A20;
  if (!qword_100054A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100054A20);
  }

  return result;
}

unint64_t sub_1000046D4()
{
  result = qword_100054A28;
  if (!qword_100054A28)
  {
    sub_100004688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054A28);
  }

  return result;
}

uint64_t sub_1000047DC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000047F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000480C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100004854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100004898(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000048C0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 == 2 && a4 == 3 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 2 && a4 == 2 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_100042BD4();
  }
}

uint64_t sub_1000049DC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100004A24(uint64_t a1)
{
  v2 = sub_100004C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004A60(uint64_t a1)
{
  v2 = sub_100004C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004AC4(void *a1)
{
  v2 = sub_100003288(&qword_100054A38, &qword_100043AB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100004C24(a1, a1[3]);
  sub_100004C68();
  sub_100042CC4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100004BD8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100004C24(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004C68()
{
  result = qword_100054A40;
  if (!qword_100054A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054A40);
  }

  return result;
}

__n128 sub_100004CBC@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100041AE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008FF4(&off_1000516E0);
  sub_100004ED4(&unk_100051700);
  sub_100004F3C(0, 0xF000000000000000);
  LOBYTE(v19) = 1;
  *(&v19 + 1) = 0x68746C6165682FLL;
  *&v20 = 0xE700000000000000;
  *(&v20 + 1) = _swiftEmptyArrayStorage;
  *&v21 = v7;
  *(&v21 + 1) = _swiftEmptyArrayStorage;
  v22 = xmmword_100043A50;
  v23[0] = 1;
  memset(&v23[8], 0, 32);
  v24[0] = 1;
  v25 = 0x68746C6165682FLL;
  v26 = 0xE700000000000000;
  v27 = _swiftEmptyArrayStorage;
  v28 = v7;
  v29 = _swiftEmptyArrayStorage;
  v30 = xmmword_100043A50;
  v31 = 1;
  v32 = 0u;
  v33 = 0u;
  sub_100004FA4(&v19, &v18);
  sub_100005000(v24);
  v8 = sub_100041B24();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_100041B14();
  (*(v3 + 104))(v6, enum case for JSONDecoder.KeyDecodingStrategy.convertFromSnakeCase(_:), v2);
  sub_100041AF4();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = Suggestion.init(text:kind:);
  v12[4] = 0;
  v13 = *&v23[16];
  *(a1 + 64) = *v23;
  *(a1 + 80) = v13;
  v14 = *&v23[32];
  v15 = v20;
  *a1 = v19;
  *(a1 + 16) = v15;
  result = v22;
  *(a1 + 32) = v21;
  *(a1 + 48) = result;
  *(a1 + 96) = v14;
  *(a1 + 104) = sub_100005094;
  *(a1 + 112) = v12;
  return result;
}

uint64_t sub_100004ED4(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054A48, &qword_100044380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004F3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100004F50(a1, a2);
  }

  return a1;
}

uint64_t sub_100004F50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005054()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000050C8()
{
  result = qword_100054A50;
  if (!qword_100054A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054A50);
  }

  return result;
}

unint64_t sub_100005120()
{
  result = qword_100054A58;
  if (!qword_100054A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054A58);
  }

  return result;
}

uint64_t sub_100005174@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v64 = a3;
  v63 = a4;
  v6 = sub_100042234();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000421F4();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v52 - v14;
  v15 = sub_1000420D4();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_1000421C4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  if ([a1 statusCode] == 200)
  {
    v25 = a2[1];
    if (v25)
    {
      v26 = *a2;
      if (v26 == 7106401 && v25 == 0xE300000000000000 || (sub_100042BD4() & 1) != 0)
      {
        v27 = &enum case for OAuth.Kind.aol(_:);
LABEL_7:
        v28 = *v27;
        v29 = sub_1000423B4();
        (*(*(v29 - 8) + 104))(v63, v28, v29);
        type metadata accessor for ResolvedDomain(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (v26 == 0x656C676F6F67 && v25 == 0xE600000000000000 || (sub_100042BD4() & 1) != 0)
      {
        v27 = &enum case for OAuth.Kind.google(_:);
        goto LABEL_7;
      }

      if (v26 == 0x64756F6C6369 && v25 == 0xE600000000000000 || (sub_100042BD4() & 1) != 0)
      {
        v27 = &enum case for OAuth.Kind.iCloud(_:);
        goto LABEL_7;
      }

      if (v26 == 0x6F6F686179 && v25 == 0xE500000000000000 || (sub_100042BD4() & 1) != 0)
      {
        v27 = &enum case for OAuth.Kind.yahoo(_:);
        goto LABEL_7;
      }

      if (v26 == 0x65676E6168637865 && v25 == 0xE800000000000000 || (sub_100042BD4() & 1) != 0 || v26 == 0xD000000000000010 && 0x8000000100047160 == v25 || (sub_100042BD4() & 1) != 0)
      {
        v27 = &enum case for OAuth.Kind.exchangeConsumer(_:);
        goto LABEL_7;
      }

      if (v26 == 0xD000000000000012 && 0x8000000100047180 == v25 || (sub_100042BD4() & 1) != 0)
      {
        v27 = &enum case for OAuth.Kind.exchangeEnterprise(_:);
        goto LABEL_7;
      }

      *&v65 = v26;
      *(&v65 + 1) = v25;
      v31 = 1;
      v66 = 1;
      sub_100009CD8();

      result = swift_willThrowTypedImpl();
    }

    else
    {
      v33 = a2[3];
      if (v33 == 1)
      {
        v65 = 0uLL;
        v31 = 2;
        v66 = 2;
        sub_100009CD8();
        result = swift_willThrowTypedImpl();
        v26 = 0;
        v25 = 0;
      }

      else
      {
        v34 = a2[7];
        if (v34 && a2[9])
        {
          v56 = a2[9];
          v35 = a2[4];
          v36 = a2[5];
          v53 = a2[2];
          v54 = v35;
          v37 = a2[6];
          v55 = a2[8];
          sub_100006990(v37, v34);
          if (v38)
          {
            v52 = v36;
            sub_1000420E4();
            sub_1000421B4();
            v39 = v18;
            v40 = *(v18 + 32);
            v40(v24, v22, v17);
            sub_100006990(v55, v56);
            if (v41)
            {
              sub_1000420E4();
              sub_1000421E4();
              v42 = v59;
              v64 = *(v58 + 32);
              v55 = v40;
              v43 = v57;
              (v64)(v57, v13, v59);
              v44 = v53;
              if (!v33)
              {
                v44 = 0;
              }

              v58 = v44;
              if (v33)
              {
                v45 = v33;
              }

              else
              {
                v45 = 0xE000000000000000;
              }

              v56 = v45;
              if (v52)
              {
                v46 = v54;
              }

              else
              {
                v46 = 0;
              }

              if (v52)
              {
                v47 = v52;
              }

              else
              {
                v47 = 0xE000000000000000;
              }

              v48 = v60;
              sub_100005990(v46, v47, v60);
              v49 = type metadata accessor for ResolvedDomain.Known(0);
              v50 = v63;
              v55(&v63[v49[6]], v24, v17);
              (v64)(&v50[v49[7]], v43, v42);
              v51 = v56;
              *v50 = v58;
              *(v50 + 1) = v51;
              (*(v61 + 32))(&v50[v49[5]], v48, v62);
              type metadata accessor for ResolvedDomain(0);
              return swift_storeEnumTagMultiPayload();
            }

            (*(v39 + 8))(v24, v17);
          }

          v65 = xmmword_100043B70;
          v26 = 2;
          v66 = 2;
          sub_100009CD8();
          result = swift_willThrowTypedImpl();
          v25 = 0;
          v31 = 2;
        }

        else
        {
          v65 = xmmword_100043B80;
          v31 = 2;
          v66 = 2;
          sub_100009CD8();
          result = swift_willThrowTypedImpl();
          v25 = 0;
          v26 = 1;
        }
      }
    }
  }

  else
  {
    v26 = [a1 statusCode];
    v65 = v26;
    v66 = 0;
    sub_100009CD8();
    result = swift_willThrowTypedImpl();
    v25 = 0;
    v31 = 0;
  }

  v32 = v64;
  *v64 = v26;
  v32[1] = v25;
  *(v32 + 16) = v31;
  return result;
}

uint64_t sub_10000590C@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, char *a3@<X8>)
{
  v4 = a2[3];
  v13[2] = a2[2];
  v13[3] = v4;
  v13[4] = a2[4];
  v5 = a2[1];
  v13[0] = *a2;
  v13[1] = v5;
  result = sub_100005174(a1, v13, v11, a3);
  if (v3)
  {
    v7 = v11[0];
    v8 = v11[1];
    v9 = v12;
    sub_100009CD8();
    result = swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v8;
    *(v10 + 16) = v9;
  }

  return result;
}

uint64_t sub_100005990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 0x316573616574656ELL && a2 == 0xEA00000000003632 || (sub_100042BD4() & 1) != 0)
  {

    v6 = &enum case for PasswordAccount.Known.Kind.netEase126(_:);
  }

  else if (a1 == 0x316573616574656ELL && a2 == 0xEA00000000003336 || (sub_100042BD4() & 1) != 0)
  {

    v6 = &enum case for PasswordAccount.Known.Kind.netEase163(_:);
  }

  else if (a1 == 0x71746E65636E6574 && a2 == 0xE900000000000071)
  {

    v6 = &enum case for PasswordAccount.Known.Kind.tencentQQ(_:);
  }

  else
  {
    v11 = sub_100042BD4();

    v6 = &enum case for PasswordAccount.Known.Kind.other(_:);
    if (v11)
    {
      v6 = &enum case for PasswordAccount.Known.Kind.tencentQQ(_:);
    }
  }

  v7 = *v6;
  v8 = sub_100042234();
  v9 = *(*(v8 - 8) + 104);

  return v9(a3, v7, v8);
}

Swift::Int sub_100005B34()
{
  v1 = *v0;
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  return sub_100042C94();
}

uint64_t sub_100005BE4()
{
  *v0;
  *v0;
  *v0;
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100005C80()
{
  v1 = *v0;
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  return sub_100042C94();
}

uint64_t sub_100005D2C(void *a1)
{
  v3 = v1;
  v5 = sub_100003288(&qword_100054B60, &qword_100043F58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_100004C24(a1, a1[3]);
  sub_10000AC00();
  sub_100042CC4();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_100042B44();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_100042B44();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_100042B44();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_100042B44();
  return (*(v6 + 8))(v9, v5);
}

void sub_100005EEC()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_100042C74(1u);
    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100042C74(0);
    if (v0[3])
    {
LABEL_3:
      v2 = v0[2];
      sub_100042C74(1u);
      _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
      if (v0[5])
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_100042C74(0);
      if (v0[7])
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_100042C74(0);
      return;
    }
  }

  sub_100042C74(0);
  if (!v0[5])
  {
    goto LABEL_10;
  }

LABEL_4:
  v3 = v0[4];
  sub_100042C74(1u);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  if (!v0[7])
  {
    goto LABEL_11;
  }

LABEL_5:
  v4 = v0[6];
  sub_100042C74(1u);

  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_100005FFC(void *a1)
{
  v3 = v1;
  v5 = sub_100003288(&qword_100054B18, &qword_100043D30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v10 = a1[4];
  sub_100004C24(a1, a1[3]);
  sub_10000A664();
  sub_100042CC4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  sub_100042B44();
  if (!v2)
  {
    v14 = *(v3 + 2);
    v24[0] = *(v3 + 1);
    v24[1] = v14;
    v15 = *(v3 + 4);
    v17 = *(v3 + 1);
    v16 = *(v3 + 2);
    v24[2] = *(v3 + 3);
    v24[3] = v15;
    v20 = v17;
    v21 = v16;
    v18 = *(v3 + 4);
    v22 = *(v3 + 3);
    v23 = v18;
    v25 = 1;
    sub_10000A744(v24, v19, &qword_100054B10, &qword_100043D28);
    sub_10000A7AC();
    sub_100042B54();
    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    sub_10000A800(v19, &qword_100054B10, &qword_100043D28);
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_100006204()
{
  sub_100042C54();
  if (v0[1])
  {
    v1 = *v0;
    sub_100042C74(1u);
    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_100042C74(0);
  }

  if (v0[3] == 1)
  {
    sub_100042C74(0);
  }

  else
  {
    v5 = *(v0 + 2);
    v6 = *(v0 + 3);
    v7 = *(v0 + 4);
    v3 = v0[2];
    v4 = v0[3];
    sub_100042C74(1u);
    sub_100005EEC();
  }

  return sub_100042C94();
}

uint64_t sub_1000062CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000A040(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000062FC(uint64_t *a1@<X8>)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7470697263736564;
  v4 = 0xE200000000000000;
  v5 = 28265;
  if (*v1 != 2)
  {
    v5 = 7632239;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 1684957547;
    v2 = 0xE400000000000000;
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

uint64_t sub_100006368()
{
  v1 = 0x7470697263736564;
  v2 = 28265;
  if (*v0 != 2)
  {
    v2 = 7632239;
  }

  if (*v0)
  {
    v1 = 1684957547;
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

uint64_t sub_1000063D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000A040(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100006404(uint64_t a1)
{
  v2 = sub_10000AC00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006440(uint64_t a1)
{
  v2 = sub_10000AC00();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10000647C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10000A08C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

Swift::Int sub_1000064D8()
{
  sub_100042C54();
  sub_100005EEC();
  return sub_100042C94();
}

Swift::Int sub_10000651C()
{
  sub_100042C54();
  sub_100005EEC();
  return sub_100042C94();
}

uint64_t sub_100006558(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_100009264(v7, v8) & 1;
}

uint64_t sub_1000065BC()
{
  if (*v0)
  {
    return 0x6E776F6E6BLL;
  }

  else
  {
    return 0x687475616FLL;
  }
}

uint64_t sub_1000065E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x687475616FLL && a2 == 0xE500000000000000;
  if (v6 || (sub_100042BD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E776F6E6BLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100042BD4();

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

uint64_t sub_1000066C8(uint64_t a1)
{
  v2 = sub_10000A664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006704(uint64_t a1)
{
  v2 = sub_10000A664();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100006740@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A38C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

void sub_1000067A8()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    sub_100042C74(1u);
    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
    if (v2 == 1)
    {
LABEL_3:
      sub_100042C74(0);
      return;
    }
  }

  else
  {
    sub_100042C74(0);
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  sub_100042C74(1u);
  sub_100005EEC();
}

Swift::Int sub_100006870()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_100042C54();
  if (!v2)
  {
    sub_100042C74(0);
    if (v4 == 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(v0 + 2);
    v7 = *(v0 + 3);
    v8 = *(v0 + 4);
    sub_100042C74(1u);
    sub_100005EEC();
    return sub_100042C94();
  }

  sub_100042C74(1u);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  if (v4 != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_100042C74(0);
  return sub_100042C94();
}

uint64_t sub_100006934(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1000093CC(v8, v9) & 1;
}

unsigned __int8 *sub_100006990(uint64_t a1, unint64_t a2)
{
  sub_100009D2C();
  sub_100009D80();
  sub_1000424B4();
  if (v36)
  {

    goto LABEL_69;
  }

  sub_100042684();
  v4 = sub_100042524();
  v6 = v5;

  sub_100006DBC(v35, a1, a2);
  v7 = sub_100042524();
  v9 = v8;

  v11 = HIBYTE(v9) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_70;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    v33 = sub_100008538(v7, v9, 10);

    if ((v33 & 0x10000) != 0)
    {
      goto LABEL_70;
    }

LABEL_68:
    a1 = v4;
    a2 = v6;
LABEL_69:
    if (sub_10001546C(a1, a2))
    {
      return a1;
    }

LABEL_70:

    return 0;
  }

  if ((v9 & 0x2000000000000000) == 0)
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1000429A4();
    }

    v14 = *result;
    if (v14 == 43)
    {
      if (v12 >= 1)
      {
        v11 = v12 - 1;
        if (v12 != 1)
        {
          LOWORD(v21) = 0;
          if (result)
          {
            v22 = result + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_63;
              }

              if (((10 * v21) & 0xF0000) != 0)
              {
                goto LABEL_63;
              }

              v21 = (10 * v21) + v23;
              if ((v21 & 0x10000) != 0)
              {
                goto LABEL_63;
              }

              ++v22;
              if (!--v11)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_75;
    }

    if (v14 != 45)
    {
      if (v12)
      {
        LOWORD(v27) = 0;
        if (result)
        {
          while (1)
          {
            v28 = *result - 48;
            if (v28 > 9)
            {
              goto LABEL_63;
            }

            if (((10 * v27) & 0xF0000) != 0)
            {
              goto LABEL_63;
            }

            v27 = (10 * v27) + v28;
            if ((v27 & 0x10000) != 0)
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v12)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      LOBYTE(v11) = 1;
LABEL_64:
      v32 = v11;

      if (v32)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    if (v12 >= 1)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        LOWORD(v15) = 0;
        if (result)
        {
          v16 = result + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              goto LABEL_63;
            }

            if (((10 * v15) & 0xF0000) != 0)
            {
              goto LABEL_63;
            }

            v15 = (10 * v15) - v17;
            if ((v15 & 0xFFFF0000) != 0)
            {
              goto LABEL_63;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v11) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v34 = v7;
  v35 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v11)
      {
        LOWORD(v29) = 0;
        v30 = &v34;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          if (((10 * v29) & 0xF0000) != 0)
          {
            break;
          }

          v29 = (10 * v29) + v31;
          if ((v29 & 0x10000) != 0)
          {
            break;
          }

          v30 = (v30 + 1);
          if (!--v11)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v11)
    {
      if (--v11)
      {
        LOWORD(v18) = 0;
        v19 = &v34 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v18) & 0xF0000) != 0)
          {
            break;
          }

          v18 = (10 * v18) - v20;
          if ((v18 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v19;
          if (!--v11)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_74;
  }

  if (v11)
  {
    if (--v11)
    {
      LOWORD(v24) = 0;
      v25 = &v34 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        if (((10 * v24) & 0xF0000) != 0)
        {
          break;
        }

        v24 = (10 * v24) + v26;
        if ((v24 & 0x10000) != 0)
        {
          break;
        }

        ++v25;
        if (!--v11)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_76:
  __break(1u);
  return result;
}

unint64_t sub_100006DBC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_100042684();
  }

  __break(1u);
  return result;
}

uint64_t sub_100006E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *), uint64_t a6)
{
  v61 = a4;
  v57 = a6;
  v58 = a5;
  v59 = a2;
  v60 = a3;
  v7 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v64 = &v51 - v9;
  v10 = sub_100041BA4();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003288(&qword_100054A70, &qword_100043BB8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v51 - v16;
  v18 = sub_1000420C4();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  v20 = __chkstk_darwin(v18);
  v21 = __chkstk_darwin(v20);
  v23 = &v51 - v22;
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  if ([a1 statusCode] < 200 || objc_msgSend(a1, "statusCode") > 299)
  {
    v26 = [a1 statusCode];
    sub_100009B58();
    swift_allocError();
    *v27 = v26;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    return swift_willThrow();
  }

  sub_100042094();
  v28 = NSHTTPURLResponse.subscript.getter(3u);
  if (!v29)
  {
    goto LABEL_9;
  }

  v65 = v28;
  v66 = v29;
  v69 = 59;
  v70 = 0xE100000000000000;
  v55 = v28;
  v56 = v29;
  v30 = sub_100041D24();
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
  sub_100009BAC();
  v54 = sub_1000428A4();
  v32 = v31;
  sub_10000A800(v17, &qword_100054A70, &qword_100043BB8);
  if ((v32 & 1) == 0)
  {
    v34 = sub_100042684();
    v53 = v35;
    v54 = v34;
    v52 = v36;
    v38 = v37;
    v55 = v37;

    v65 = v54;
    v66 = v53;
    v67 = v52;
    v68 = v38;
    sub_100041B94();
    sub_100009C84();
    v39 = sub_100042884();
    v41 = v40;
    (*(v63 + 8))(v13, v10);

    v65 = v39;
    v66 = v41;
    sub_100042674();
  }

  v33 = v64;
  sub_100042084();
  sub_100042054();
  v42 = v71;
  if ((*(v71 + 48))(v33, 1, v18) == 1)
  {
    sub_10000A800(v33, &qword_100054A68, &qword_100043BB0);
LABEL_9:
    (*(v71 + 8))(v25, v18);
LABEL_10:
    v43 = NSHTTPURLResponse.subscript.getter(3u);
    v45 = v44;
    sub_100009B58();
    swift_allocError();
    *v46 = v43;
    *(v46 + 8) = v45;
    *(v46 + 16) = 0;
    return swift_willThrow();
  }

  (*(v42 + 32))(v23, v33, v18);
  v48 = sub_1000420A4();
  v49 = *(v42 + 8);
  v49(v23, v18);
  v49(v25, v18);
  if ((v48 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_100009E80();
  v50 = v62;
  result = sub_100041B04();
  if (!v50)
  {
    return v58(a1);
  }

  return result;
}

uint64_t sub_10000738C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *, uint64_t *), uint64_t a6)
{
  v61 = a4;
  v57 = a6;
  v58 = a5;
  v59 = a2;
  v60 = a3;
  v7 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v64 = &v51 - v9;
  v10 = sub_100041BA4();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003288(&qword_100054A70, &qword_100043BB8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v51 - v16;
  v18 = sub_1000420C4();
  v65 = *(v18 - 8);
  v19 = *(v65 + 64);
  v20 = __chkstk_darwin(v18);
  v21 = __chkstk_darwin(v20);
  v23 = &v51 - v22;
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  if ([a1 statusCode] < 200 || objc_msgSend(a1, "statusCode") > 299)
  {
    v26 = [a1 statusCode];
    sub_100009B58();
    swift_allocError();
    *v27 = v26;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    return swift_willThrow();
  }

  sub_100042094();
  v28 = NSHTTPURLResponse.subscript.getter(3u);
  if (!v29)
  {
    goto LABEL_9;
  }

  v66 = v28;
  v67 = v29;
  v70 = 59;
  v71 = 0xE100000000000000;
  v55 = v28;
  v56 = v29;
  v30 = sub_100041D24();
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
  sub_100009BAC();
  v54 = sub_1000428A4();
  v32 = v31;
  sub_10000A800(v17, &qword_100054A70, &qword_100043BB8);
  if ((v32 & 1) == 0)
  {
    v34 = sub_100042684();
    v53 = v35;
    v54 = v34;
    v52 = v36;
    v38 = v37;
    v55 = v37;

    v66 = v54;
    v67 = v53;
    v68 = v52;
    v69 = v38;
    sub_100041B94();
    sub_100009C84();
    v39 = sub_100042884();
    v41 = v40;
    (*(v63 + 8))(v13, v10);

    v66 = v39;
    v67 = v41;
    sub_100042674();
  }

  v33 = v64;
  sub_100042084();
  sub_100042054();
  v42 = v65;
  if ((*(v65 + 48))(v33, 1, v18) == 1)
  {
    sub_10000A800(v33, &qword_100054A68, &qword_100043BB0);
LABEL_9:
    (*(v65 + 8))(v25, v18);
LABEL_10:
    v43 = NSHTTPURLResponse.subscript.getter(3u);
    v45 = v44;
    sub_100009B58();
    swift_allocError();
    *v46 = v43;
    *(v46 + 8) = v45;
    *(v46 + 16) = 0;
    return swift_willThrow();
  }

  (*(v42 + 32))(v23, v33, v18);
  v48 = sub_1000420A4();
  v49 = *(v42 + 8);
  v49(v23, v18);
  v49(v25, v18);
  if ((v48 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_100009E2C();
  v50 = v62;
  result = sub_100041B04();
  if (!v50)
  {
    v58(&v72, a1, &v66);
    return v72;
  }

  return result;
}

uint64_t sub_100007924@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void *, __int128 *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a6;
  v58 = a5;
  v61 = a4;
  v60 = a3;
  v59 = a2;
  v56 = a7;
  v8 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v64 = &v51 - v10;
  v11 = sub_100041BA4();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003288(&qword_100054A70, &qword_100043BB8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v51 - v17;
  v19 = sub_1000420C4();
  v71 = *(v19 - 8);
  v20 = *(v71 + 64);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v24 = &v51 - v23;
  __chkstk_darwin(v22);
  v26 = &v51 - v25;
  if ([a1 statusCode] < 200 || objc_msgSend(a1, "statusCode") > 299)
  {
    v27 = [a1 statusCode];
    sub_100009B58();
    swift_allocError();
    *v28 = v27;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    return swift_willThrow();
  }

  sub_100042094();
  v29 = NSHTTPURLResponse.subscript.getter(3u);
  if (!v30)
  {
    goto LABEL_9;
  }

  *&v66 = v29;
  *(&v66 + 1) = v30;
  *&v65[0] = 59;
  *(&v65[0] + 1) = 0xE100000000000000;
  v54 = v29;
  v55 = v30;
  v31 = sub_100041D24();
  (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
  sub_100009BAC();
  v53 = sub_1000428A4();
  v33 = v32;
  sub_10000A800(v18, &qword_100054A70, &qword_100043BB8);
  if ((v33 & 1) == 0)
  {
    v53 = sub_100042684();
    v52 = v35;
    v51 = v36;
    v38 = v37;
    v54 = v37;

    *&v66 = v53;
    *(&v66 + 1) = v52;
    *&v67 = v51;
    *(&v67 + 1) = v38;
    sub_100041B94();
    sub_100009C84();
    v39 = sub_100042884();
    v41 = v40;
    (*(v63 + 8))(v14, v11);

    *&v66 = v39;
    *(&v66 + 1) = v41;
    sub_100042674();
  }

  v34 = v64;
  sub_100042084();
  sub_100042054();
  v42 = v71;
  if ((*(v71 + 48))(v34, 1, v19) == 1)
  {
    sub_10000A800(v34, &qword_100054A68, &qword_100043BB0);
LABEL_9:
    (*(v71 + 8))(v26, v19);
LABEL_10:
    v43 = NSHTTPURLResponse.subscript.getter(3u);
    v45 = v44;
    sub_100009B58();
    swift_allocError();
    *v46 = v43;
    *(v46 + 8) = v45;
    *(v46 + 16) = 0;
    return swift_willThrow();
  }

  (*(v42 + 32))(v24, v34, v19);
  v48 = sub_1000420A4();
  v49 = *(v42 + 8);
  v49(v24, v19);
  v49(v26, v19);
  if ((v48 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_100009C00();
  v50 = v62;
  result = sub_100041B04();
  if (!v50)
  {
    v58(a1, &v66);
    v65[2] = v68;
    v65[3] = v69;
    v65[4] = v70;
    v65[0] = v66;
    v65[1] = v67;
    return sub_100009C54(v65);
  }

  return result;
}

uint64_t sub_100007F98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *, uint64_t *), uint64_t a6)
{
  v61 = a4;
  v57 = a6;
  v58 = a5;
  v59 = a2;
  v60 = a3;
  v7 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v64 = &v51 - v9;
  v10 = sub_100041BA4();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003288(&qword_100054A70, &qword_100043BB8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v51 - v16;
  v18 = sub_1000420C4();
  v65 = *(v18 - 8);
  v19 = *(v65 + 64);
  v20 = __chkstk_darwin(v18);
  v21 = __chkstk_darwin(v20);
  v23 = &v51 - v22;
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  if ([a1 statusCode] < 200 || objc_msgSend(a1, "statusCode") > 299)
  {
    v26 = [a1 statusCode];
    sub_100009B58();
    swift_allocError();
    *v27 = v26;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    return swift_willThrow();
  }

  sub_100042094();
  v28 = NSHTTPURLResponse.subscript.getter(3u);
  if (!v29)
  {
    goto LABEL_9;
  }

  v66 = v28;
  v67 = v29;
  v70 = 59;
  v71 = 0xE100000000000000;
  v55 = v28;
  v56 = v29;
  v30 = sub_100041D24();
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
  sub_100009BAC();
  v54 = sub_1000428A4();
  v32 = v31;
  sub_10000A800(v17, &qword_100054A70, &qword_100043BB8);
  if ((v32 & 1) == 0)
  {
    v34 = sub_100042684();
    v53 = v35;
    v54 = v34;
    v52 = v36;
    v38 = v37;
    v55 = v37;

    v66 = v54;
    v67 = v53;
    v68 = v52;
    v69 = v38;
    sub_100041B94();
    sub_100009C84();
    v39 = sub_100042884();
    v41 = v40;
    (*(v63 + 8))(v13, v10);

    v66 = v39;
    v67 = v41;
    sub_100042674();
  }

  v33 = v64;
  sub_100042084();
  sub_100042054();
  v42 = v65;
  if ((*(v65 + 48))(v33, 1, v18) == 1)
  {
    sub_10000A800(v33, &qword_100054A68, &qword_100043BB0);
LABEL_9:
    (*(v65 + 8))(v25, v18);
LABEL_10:
    v43 = NSHTTPURLResponse.subscript.getter(3u);
    v45 = v44;
    sub_100009B58();
    swift_allocError();
    *v46 = v43;
    *(v46 + 8) = v45;
    *(v46 + 16) = 0;
    return swift_willThrow();
  }

  (*(v42 + 32))(v23, v33, v18);
  v48 = sub_1000420A4();
  v49 = *(v42 + 8);
  v49(v23, v18);
  v49(v25, v18);
  if ((v48 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_100009DD8();
  v50 = v62;
  result = sub_100041B04();
  if (!v50)
  {
    v58(&v72, a1, &v66);

    return v72;
  }

  return result;
}

unsigned __int8 *sub_100008538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_100042674();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100008B0C();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000429A4();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOWORD(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOWORD(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100008B0C()
{
  v0 = sub_100042684();
  v4 = sub_100008B8C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100008B8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100042554();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_100042844();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100008CE4(v9, 0);
  v12 = sub_100008D58(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_100042554();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1000429A4();
LABEL_4:

  return sub_100042554();
}

void *sub_100008CE4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003288(&qword_100054AB0, &qword_100043BC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_100008D58(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100008F78(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100042604();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000429A4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100008F78(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000425E4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100008F78(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100042624();
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
    v5 = sub_1000425F4();
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

unint64_t sub_100008FF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003288(&qword_100054AB8, &qword_100043BC8);
    v3 = sub_100042A84();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_10001F724(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1000090EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100003288(&qword_100054AC0, &qword_100043BD0);
  v3 = sub_100042A84();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = sub_10001F8BC(v5, v4, v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v5;
  v13 = (a1 + 104);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = (v3[6] + 32 * v11);
    *v14 = result;
    v14[1] = v4;
    v14[2] = v6;
    v14[3] = v7;
    *(v3[7] + 2 * v11) = v8;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 20;
    v19 = *(v13 - 4);
    v20 = *(v13 - 3);
    v21 = *(v13 - 2);
    v7 = *(v13 - 1);
    v8 = *v13;

    v11 = sub_10001F8BC(v19, v20, v21, v7);
    v13 = v18;
    v6 = v21;
    v4 = v20;
    result = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100009264(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_100042BD4();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_100042BD4();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_100042BD4();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (v25 && (a1[6] == a2[6] && v24 == v25 || (sub_100042BD4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1000093CC(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      if (*a1 == *a2 && v2 == v3)
      {
        goto LABEL_8;
      }

      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_100042BD4();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if (v9)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    v15 = 0;
    return v15 & 1;
  }

  if (v3)
  {
    goto LABEL_12;
  }

LABEL_8:
  v10 = *(a1 + 2);
  v40[0] = *(a1 + 1);
  v40[1] = v10;
  v11 = *(a1 + 4);
  v40[2] = *(a1 + 3);
  v40[3] = v11;
  v12 = *(a2 + 32);
  v39[0] = *(a2 + 16);
  v39[1] = v12;
  v13 = *(a2 + 64);
  v39[2] = *(a2 + 48);
  v39[3] = v13;
  v14 = v40[0];
  if (*(&v40[0] + 1) == 1)
  {
    if (*(&v39[0] + 1) == 1)
    {
      v15 = 1;
      *&v31 = *&v40[0];
      *(&v31 + 1) = 1;
      v16 = *(a1 + 3);
      v32 = *(a1 + 2);
      v33 = v16;
      v34 = *(a1 + 4);
      sub_10000A744(v40, v41, &qword_100054B10, &qword_100043D28);
      sub_10000A744(v39, v41, &qword_100054B10, &qword_100043D28);
      v17 = &v31;
LABEL_16:
      sub_10000A800(v17, &qword_100054B10, &qword_100043D28);
      return v15 & 1;
    }
  }

  else if (*(&v39[0] + 1) != 1)
  {
    v26 = v39[0];
    v20 = *(a2 + 48);
    v27 = *(a2 + 32);
    v28 = v20;
    v29 = *(a2 + 64);
    v33 = v20;
    v34 = v29;
    v31 = v39[0];
    v32 = v27;
    v21 = *(a1 + 2);
    v22 = *(a1 + 4);
    v41[2] = *(a1 + 3);
    v41[3] = v22;
    v41[1] = v21;
    v41[0] = v40[0];
    v23 = a1;
    v15 = sub_100009264(v41, &v31);
    sub_10000A744(v40, v30, &qword_100054B10, &qword_100043D28);
    sub_10000A744(v39, v30, &qword_100054B10, &qword_100043D28);
    sub_10000A800(&v26, &qword_100054B10, &qword_100043D28);
    v30[0] = v14;
    v24 = v23[3];
    v30[1] = v23[2];
    v30[2] = v24;
    v30[3] = v23[4];
    v17 = v30;
    goto LABEL_16;
  }

  v31 = v40[0];
  v18 = *(a1 + 3);
  v32 = *(a1 + 2);
  v33 = v18;
  v34 = *(a1 + 4);
  v35 = v39[0];
  v19 = *(a2 + 48);
  v36 = *(a2 + 32);
  v37 = v19;
  v38 = *(a2 + 64);
  sub_10000A744(v40, v41, &qword_100054B10, &qword_100043D28);
  sub_10000A744(v39, v41, &qword_100054B10, &qword_100043D28);
  sub_10000A800(&v31, &qword_100054B28, &qword_100043D38);
  v15 = 0;
  return v15 & 1;
}

unint64_t sub_100009630(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054AC8, &qword_100043BD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003288(&qword_100054AD0, &qword_100043BE0);
    v8 = sub_100042A84();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000A744(v10, v6, &qword_100054AC8, &qword_100043BD8);
      result = sub_10001F7AC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1000423E4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

__n128 sub_100009818@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100041AE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003288(&qword_100054A60, &unk_100043BA0);
  v7 = *(sub_100041BD4() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100043910;
  sub_100041BB4();
  v11 = sub_100008FF4(&off_100051718);
  sub_10000A800(&unk_100051738, &qword_100054A48, &qword_100044380);
  sub_100004F3C(0, 0xF000000000000000);
  LOBYTE(v22) = 1;
  *(&v22 + 1) = 0x65766C6F7365722FLL;
  *&v23 = 0xE800000000000000;
  *(&v23 + 1) = v10;
  *&v24 = v11;
  *(&v24 + 1) = _swiftEmptyArrayStorage;
  v25 = xmmword_100043A50;
  v26[0] = 1;
  memset(&v26[8], 0, 32);
  v27[0] = 1;
  v28 = 0x65766C6F7365722FLL;
  v29 = 0xE800000000000000;
  v30 = v10;
  v31 = v11;
  v32 = _swiftEmptyArrayStorage;
  v33 = xmmword_100043A50;
  v34 = 1;
  v35 = 0u;
  v36 = 0u;
  sub_100004FA4(&v22, v21);
  sub_100005000(v27);
  v12 = sub_100041B24();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_100041B14();
  (*(v3 + 104))(v6, enum case for JSONDecoder.KeyDecodingStrategy.convertFromSnakeCase(_:), v2);
  sub_100041AF4();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_10000590C;
  v16[4] = 0;
  v17 = *&v26[16];
  *(a1 + 64) = *v26;
  *(a1 + 80) = v17;
  v18 = *&v26[32];
  v19 = v23;
  *a1 = v22;
  *(a1 + 16) = v19;
  result = v25;
  *(a1 + 32) = v24;
  *(a1 + 48) = result;
  *(a1 + 96) = v18;
  *(a1 + 104) = sub_100009B38;
  *(a1 + 112) = v16;
  return result;
}

uint64_t sub_100009AF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100009B58()
{
  result = qword_100054A78;
  if (!qword_100054A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054A78);
  }

  return result;
}

unint64_t sub_100009BAC()
{
  result = qword_100054A80;
  if (!qword_100054A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054A80);
  }

  return result;
}

unint64_t sub_100009C00()
{
  result = qword_100054A88;
  if (!qword_100054A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054A88);
  }

  return result;
}

unint64_t sub_100009C84()
{
  result = qword_100054A90;
  if (!qword_100054A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054A90);
  }

  return result;
}

unint64_t sub_100009CD8()
{
  result = qword_100054A98;
  if (!qword_100054A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054A98);
  }

  return result;
}

unint64_t sub_100009D2C()
{
  result = qword_100054AA0;
  if (!qword_100054AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054AA0);
  }

  return result;
}

unint64_t sub_100009D80()
{
  result = qword_100054AA8;
  if (!qword_100054AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054AA8);
  }

  return result;
}

unint64_t sub_100009DD8()
{
  result = qword_100054AD8;
  if (!qword_100054AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054AD8);
  }

  return result;
}

unint64_t sub_100009E2C()
{
  result = qword_100054AE0;
  if (!qword_100054AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054AE0);
  }

  return result;
}

unint64_t sub_100009E80()
{
  result = qword_100054AE8;
  if (!qword_100054AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054AE8);
  }

  return result;
}

uint64_t sub_100009ED4(uint64_t a1)
{
  v1 = *(a1 + 8);
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

__n128 sub_100009EF8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100009F14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100009F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100009FEC()
{
  result = qword_100054AF0;
  if (!qword_100054AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054AF0);
  }

  return result;
}

uint64_t sub_10000A040(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100051750;
  v6._object = a2;
  v4 = sub_100042AA4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000A08C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100003288(&qword_100054B50, &qword_100043F50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_100004C24(a1, a1[3]);
  sub_10000AC00();
  sub_100042CB4();
  if (v2)
  {
    sub_100004BD8(a1);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    return sub_10000AC54(&v37);
  }

  else
  {
    LOBYTE(v37) = 0;
    v11 = sub_100042AD4();
    v31 = v6;
    v32 = v12;
    v30 = a2;
    LOBYTE(v37) = 1;
    v13 = sub_100042AD4();
    v15 = v14;
    LOBYTE(v37) = 2;
    v16 = sub_100042AD4();
    v18 = v17;
    v45 = 3;
    v19 = sub_100042AD4();
    v20 = *(v31 + 8);
    v31 = v19;
    v21 = v9;
    v23 = v22;
    v20(v21, v5);
    v24 = v32;
    *&v33 = v11;
    *(&v33 + 1) = v32;
    *&v34 = v13;
    *(&v34 + 1) = v15;
    *&v35 = v16;
    *(&v35 + 1) = v18;
    *&v36 = v31;
    *(&v36 + 1) = v23;
    sub_10000AC84(&v33, &v37);
    sub_100004BD8(a1);
    v37 = v11;
    v38 = v24;
    v39 = v13;
    v40 = v15;
    v41 = v16;
    v42 = v18;
    v43 = v31;
    v44 = v23;
    result = sub_10000AC54(&v37);
    v26 = v34;
    v27 = v30;
    *v30 = v33;
    v27[1] = v26;
    v28 = v36;
    v27[2] = v35;
    v27[3] = v28;
  }

  return result;
}

uint64_t sub_10000A38C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v28 = a2;
  v4 = sub_100003288(&qword_100054AF8, &qword_100043D20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = a1[4];
  sub_100004C24(a1, a1[3]);
  sub_10000A664();
  sub_100042CB4();
  if (v2)
  {
    sub_100004BD8(a1);
    v42 = 0;
    v43 = 0;
    v44 = xmmword_100043B90;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    return sub_100009C54(&v42);
  }

  else
  {
    v27 = v5;
    LOBYTE(v42) = 0;
    v10 = sub_100042AD4();
    v12 = v11;
    v48 = 1;
    sub_10000A6B8();
    sub_100042AE4();
    (*(v27 + 8))(v8, v4);
    v13 = v35;
    v23 = v35;
    v15 = v36;
    v14 = v37;
    v24 = v39;
    v25 = v38;
    v26 = v41;
    v27 = v40;
    v29[0] = xmmword_100043B90;
    memset(&v29[1], 0, 48);
    sub_10000A800(v29, &qword_100054B10, &qword_100043D28);
    *&v30 = v10;
    *(&v30 + 1) = v12;
    v31 = v13;
    *&v32 = v15;
    *(&v32 + 1) = v14;
    v17 = v24;
    v16 = v25;
    *&v33 = v25;
    *(&v33 + 1) = v24;
    *&v34 = v27;
    *(&v34 + 1) = v26;
    sub_10000A70C(&v30, &v42);
    sub_100004BD8(a1);
    v42 = v10;
    v43 = v12;
    v44 = v23;
    *&v45 = v15;
    *(&v45 + 1) = v14;
    *&v46 = v16;
    *(&v46 + 1) = v17;
    *&v47 = v27;
    *(&v47 + 1) = v26;
    result = sub_100009C54(&v42);
    v19 = v33;
    v20 = v28;
    v28[2] = v32;
    v20[3] = v19;
    v20[4] = v34;
    v21 = v31;
    *v20 = v30;
    v20[1] = v21;
  }

  return result;
}

unint64_t sub_10000A664()
{
  result = qword_100054B00;
  if (!qword_100054B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B00);
  }

  return result;
}

unint64_t sub_10000A6B8()
{
  result = qword_100054B08;
  if (!qword_100054B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B08);
  }

  return result;
}

uint64_t sub_10000A744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003288(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000A7AC()
{
  result = qword_100054B20;
  if (!qword_100054B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B20);
  }

  return result;
}

uint64_t sub_10000A800(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003288(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s17RawResolvedDomainV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s17RawResolvedDomainV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_10000A9BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000A9D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10000AA2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10000AAA4()
{
  result = qword_100054B30;
  if (!qword_100054B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B30);
  }

  return result;
}

unint64_t sub_10000AAFC()
{
  result = qword_100054B38;
  if (!qword_100054B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B38);
  }

  return result;
}

unint64_t sub_10000AB54()
{
  result = qword_100054B40;
  if (!qword_100054B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B40);
  }

  return result;
}

unint64_t sub_10000ABAC()
{
  result = qword_100054B48;
  if (!qword_100054B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B48);
  }

  return result;
}

unint64_t sub_10000AC00()
{
  result = qword_100054B58;
  if (!qword_100054B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B58);
  }

  return result;
}

uint64_t _s17RawResolvedDomainV5KnownV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s17RawResolvedDomainV5KnownV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000AE10()
{
  result = qword_100054B68;
  if (!qword_100054B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B68);
  }

  return result;
}

unint64_t sub_10000AE68()
{
  result = qword_100054B70;
  if (!qword_100054B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B70);
  }

  return result;
}

unint64_t sub_10000AEC0()
{
  result = qword_100054B78;
  if (!qword_100054B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B78);
  }

  return result;
}

id sub_10000AF14@<X0>(void *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a2;
  result = [a1 statusCode];
  if (result == 200)
  {
    *a3 = v5 ^ 1;
  }

  else
  {
    v8 = [a1 statusCode];
    sub_100009CD8();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v7 = v8;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
  }

  return result;
}

Swift::Int sub_10000AFDC()
{
  sub_100042C54();
  sub_100042C64(0);
  return sub_100042C94();
}

Swift::Int sub_10000B048()
{
  sub_100042C54();
  sub_100042C64(0);
  return sub_100042C94();
}

uint64_t sub_10000B09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64696C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100042BD4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000B120(uint64_t a1)
{
  v2 = sub_10000B9A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B15C(uint64_t a1)
{
  v2 = sub_10000B9A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000B198@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100003288(&qword_100054B90, &qword_100044228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100004C24(a1, a1[3]);
  sub_10000B9A8();
  sub_100042CB4();
  if (v2)
  {
    return sub_100004BD8(a1);
  }

  v11 = sub_100042AF4();
  (*(v6 + 8))(v9, v5);
  result = sub_100004BD8(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_10000B2FC(void *a1)
{
  v3 = sub_100003288(&qword_100054BA0, &qword_100044230);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_100004C24(a1, a1[3]);
  sub_10000B9A8();
  sub_100042CC4();
  sub_100042B64();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int sub_10000B434()
{
  v1 = *v0;
  sub_100042C54();
  sub_100042C74(v1);
  return sub_100042C94();
}

Swift::Int sub_10000B4A8()
{
  v1 = *v0;
  sub_100042C54();
  sub_100042C74(v1);
  return sub_100042C94();
}

__n128 sub_10000B4EC@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100041AE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003288(&qword_100054A60, &unk_100043BA0);
  v7 = *(sub_100041BD4() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100043910;
  sub_100041BB4();
  v11 = sub_100008FF4(&off_1000517D0);
  sub_100004ED4(&unk_1000517F0);
  sub_100004F3C(0, 0xF000000000000000);
  LOBYTE(v22) = 1;
  *(&v22 + 1) = 0x746164696C61762FLL;
  *&v23 = 0xE900000000000065;
  *(&v23 + 1) = v10;
  *&v24 = v11;
  *(&v24 + 1) = _swiftEmptyArrayStorage;
  v25 = xmmword_100043A50;
  v26[0] = 1;
  memset(&v26[8], 0, 32);
  v27[0] = 1;
  v28 = 0x746164696C61762FLL;
  v29 = 0xE900000000000065;
  v30 = v10;
  v31 = v11;
  v32 = _swiftEmptyArrayStorage;
  v33 = xmmword_100043A50;
  v34 = 1;
  v35 = 0u;
  v36 = 0u;
  sub_100004FA4(&v22, v21);
  sub_100005000(v27);
  v12 = sub_100041B24();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_100041B14();
  (*(v3 + 104))(v6, enum case for JSONDecoder.KeyDecodingStrategy.convertFromSnakeCase(_:), v2);
  sub_100041AF4();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_10000AF14;
  v16[4] = 0;
  v17 = *&v26[16];
  *(a1 + 64) = *v26;
  *(a1 + 80) = v17;
  v18 = *&v26[32];
  v19 = v23;
  *a1 = v22;
  *(a1 + 16) = v19;
  result = v25;
  *(a1 + 32) = v24;
  *(a1 + 48) = result;
  *(a1 + 96) = v18;
  *(a1 + 104) = sub_10000B800;
  *(a1 + 112) = v16;
  return result;
}

uint64_t sub_10000B7C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B800@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_10000738C(a1, a2, a3, *(v4 + 16), *(v4 + 24), *(v4 + 32));
  if (!v5)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t _s18RawValidatedDomainVwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10000B8FC()
{
  result = qword_100054B80;
  if (!qword_100054B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B80);
  }

  return result;
}

unint64_t sub_10000B954()
{
  result = qword_100054B88;
  if (!qword_100054B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B88);
  }

  return result;
}

unint64_t sub_10000B9A8()
{
  result = qword_100054B98;
  if (!qword_100054B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B98);
  }

  return result;
}

uint64_t _s18RawValidatedDomainV10CodingKeysOwet(unsigned int *a1, int a2)
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

_WORD *_s18RawValidatedDomainV10CodingKeysOwst(_WORD *result, int a2, int a3)
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

unint64_t sub_10000BAE8()
{
  result = qword_100054BA8;
  if (!qword_100054BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054BA8);
  }

  return result;
}

unint64_t sub_10000BB40()
{
  result = qword_100054BB0;
  if (!qword_100054BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054BB0);
  }

  return result;
}

unint64_t sub_10000BB98()
{
  result = qword_100054BB8;
  if (!qword_100054BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054BB8);
  }

  return result;
}

uint64_t sub_10000BC34()
{
  v1 = *v0;
  v2 = sub_1000423E4();
  v3 = sub_100003288(&qword_100054BC0, &qword_100044378);
  v4 = sub_10000BCA4();

  return Dictionary.description.getter(v1, v2, v3, v4);
}

unint64_t sub_10000BCA4()
{
  result = qword_100054BC8;
  if (!qword_100054BC8)
  {
    sub_1000423E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054BC8);
  }

  return result;
}

uint64_t sub_10000BCFC(void *a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054C08, &qword_100044518);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100004C24(a1, a1[3]);
  sub_10000D670();
  sub_100042CC4();
  v11[1] = a2;
  sub_100003288(&qword_100054BE8, &qword_100044508);
  sub_10000D6C4();
  sub_100042B74();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000BE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100042BD4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000BEF8(uint64_t a1)
{
  v2 = sub_10000D670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000BF34(uint64_t a1)
{
  v2 = sub_10000D670();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000BF70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10000D11C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_10000BFD0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_100042C54();
  a3(v7, v5);
  return sub_100042C94();
}

Swift::Int sub_10000C040(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_100042C54();
  a4(v8, v6);
  return sub_100042C94();
}

unint64_t sub_10000C098(void *a1, uint64_t a2)
{
  v103 = sub_100042114();
  v4 = *(v103 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v103);
  v104 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003288(&qword_100054BD0, &qword_100044388);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v118 = &v100 - v9;
  v117 = sub_1000423E4();
  v10 = *(v117 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v117);
  v113 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 statusCode] != 200)
  {
    v99 = [a1 statusCode];
    v127 = v99;
    v128 = 0;
    v129 = 0;
    sub_100009CD8();
    swift_willThrowTypedImpl();
    return v99;
  }

  v13 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v114 = v15 & *(a2 + 64);
  v111 = (v10 + 48);
  v112 = (v14 + 63) >> 6;
  v106 = (v10 + 32);
  v101 = v4;
  v100 = v4 + 32;
  v105 = (v10 + 8);

  v17 = 0;
  v102 = &_swiftEmptyDictionarySingleton;
  v19 = v117;
  v18 = v118;
  v109 = v13;
  v110 = result;
LABEL_5:
  v20 = v17;
  while (1)
  {
    v21 = v114;
    if (v114)
    {
      v22 = v20;
    }

    else
    {
      do
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_119;
        }

        if (v22 >= v112)
        {

          return v102;
        }

        v21 = *(v13 + 8 * v22);
        ++v20;
      }

      while (!v21);
    }

    v114 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v22 << 6);
    v24 = (*(result + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(result + 56) + 8 * v23);
    v28 = v22;
    swift_bridgeObjectRetain_n();

    sub_1000423D4();
    if ((*v111)(v18, 1, v19) == 1)
    {

      sub_10000A800(v18, &qword_100054BD0, &qword_100044388);
      v20 = v28;
      goto LABEL_7;
    }

    v107 = v28;
    result = (*v106)(v113, v18, v19);
    v29 = v27;
    v122 = *(v27 + 16);
    if (v122)
    {
      break;
    }

    v108 = _swiftEmptyArrayStorage;
LABEL_110:
    v95 = v108;
    if (v108[2])
    {
      v96 = v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127 = v96;
      v98 = v113;
      sub_100020B7C(v95, v113, isUniquelyReferenced_nonNull_native);

      v102 = v127;
      (*v105)(v98, v19);
      v13 = v109;
      result = v110;
      v17 = v107;
      goto LABEL_5;
    }

    (*v105)(v113, v19);
    v20 = v107;
LABEL_7:
    v13 = v109;
    result = v110;
  }

  v30 = 0;
  v121 = v27 + 32;
  v108 = _swiftEmptyArrayStorage;
  v115 = v27;
  v116 = v26;
  while (1)
  {
    if (v30 >= *(v29 + 16))
    {
      goto LABEL_118;
    }

    v124 = v30;
    v31 = (v121 + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    swift_bridgeObjectRetain_n();
    if (sub_1000425A4() > 253)
    {
      result = swift_bridgeObjectRelease_n();
      goto LABEL_17;
    }

    v34 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v34 = v33 & 0xFFFFFFFFFFFFLL;
    }

    v130 = v33;
    if (v34)
    {
      break;
    }

    v52 = sub_100042684();
    v54 = v61;
    v56 = v62;
    v58 = v63;

    result = sub_10001BD68(0, 1, 1, _swiftEmptyArrayStorage);
    v39 = result;
    v60 = *(result + 16);
    v59 = *(result + 24);
LABEL_43:
    v64 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      result = sub_10001BD68((v59 > 1), v60 + 1, 1, v39);
      v39 = result;
    }

    *(v39 + 2) = v64;
    v65 = &v39[32 * v60];
    *(v65 + 4) = v52;
    *(v65 + 5) = v54;
    *(v65 + 6) = v56;
    *(v65 + 7) = v58;
    if (v60)
    {
      v66 = 0;
      v119 = v64;
      v120 = v39 + 32;
      while (1)
      {
        if (v66 >= *(v39 + 2))
        {
          goto LABEL_120;
        }

        v67 = &v120[32 * v66];
        v68 = *v67;
        v69 = *(v67 + 1);
        v70 = *(v67 + 2);
        v71 = *(v67 + 3);

        if (sub_100042854() < 1 || sub_100042854() > 63)
        {

          goto LABEL_93;
        }

        v123 = v66;
        v125 = v69 >> 14;
        v126 = v70;
        if (v69 >> 14 != v68 >> 14)
        {
          break;
        }

LABEL_47:
        v66 = v123 + 1;

        if (v66 == v119)
        {

          sub_100017DB4(v33, v32);
          v19 = v117;
          v18 = v118;
          if (v88)
          {
            sub_100042124();
            swift_bridgeObjectRelease_n();
            v89 = v108;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v89 = sub_10001BE74(0, v89[2] + 1, 1, v89);
            }

            v90 = v101;
            v108 = v89;
            v92 = v89[2];
            v91 = v89[3];
            if (v92 >= v91 >> 1)
            {
              v94 = sub_10001BE74(v91 > 1, v92 + 1, 1, v108);
              v90 = v101;
              v108 = v94;
            }

            v93 = v108;
            v108[2] = v92 + 1;
            result = (*(v90 + 32))(v93 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v92, v104, v103);
          }

          else
          {
            result = swift_bridgeObjectRelease_n();
          }

          goto LABEL_101;
        }
      }

      if (sub_100042864() == 45 && v72 == 0xE100000000000000)
      {
        goto LABEL_90;
      }

      v74 = sub_100042BD4();

      if (v74)
      {
        goto LABEL_98;
      }

      sub_100042834();
      if (sub_100042864() == 45 && v75 == 0xE100000000000000)
      {
LABEL_90:
      }

      else
      {
        v76 = sub_100042BD4();

        if ((v76 & 1) == 0)
        {
          while (1)
          {
            v77 = sub_100042864();
            v79 = v78;
            v80 = sub_100042824();
            if (v77 == 2573 && v79 == 0xE200000000000000)
            {
              goto LABEL_90;
            }

            result = sub_100042BD4();
            if (result)
            {
              goto LABEL_90;
            }

            if ((v79 & 0x2000000000000000) != 0)
            {
              v81 = HIBYTE(v79) & 0xF;
            }

            else
            {
              v81 = v77 & 0xFFFFFFFFFFFFLL;
            }

            if (!v81)
            {
              goto LABEL_116;
            }

            if ((v79 & 0x1000000000000000) != 0)
            {
              v86 = sub_100042534();
            }

            else
            {
              if ((v79 & 0x2000000000000000) != 0)
              {
                v83 = v77;
              }

              else
              {
                v82 = ((v77 & 0x1000000000000000) != 0 ? (v79 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1000429A4());
                v83 = *v82;
              }

              v84 = v83;
              v85 = (__clz(~v83) - 24) << 16;
              v86 = v84 < 0 ? v85 : 65541;
            }

            if (v86 >> 14 != 4 * v81)
            {
              break;
            }

            result = sub_10000CD9C(v77, v79);
            if ((result & 0x100000000) != 0)
            {
              goto LABEL_122;
            }

            if ((result & 0xFFFFFF80) != 0)
            {
              break;
            }

            result = sub_10000CD9C(v77, v79);
            if ((result & 0x100000000) != 0)
            {
              goto LABEL_123;
            }

            v87 = result;

            if ((v87 & 0xFFFFFF00) != 0)
            {
              goto LABEL_117;
            }

            v33 = v130;
            if (v87 - 123 <= 0xFFFFFFE5)
            {
              if (v87 <= 0x2Fu)
              {
                if (v87 != 45)
                {
                  goto LABEL_94;
                }
              }

              else if (v87 >= 0x3Au)
              {
LABEL_94:
                swift_bridgeObjectRelease_n();
                goto LABEL_95;
              }
            }

            if (v125 == v80 >> 14)
            {
              goto LABEL_47;
            }
          }

          swift_bridgeObjectRelease_n();

LABEL_95:

          goto LABEL_96;
        }

LABEL_98:
      }

      result = swift_bridgeObjectRelease_n();
      goto LABEL_100;
    }

LABEL_93:
    swift_bridgeObjectRelease_n();
LABEL_96:

LABEL_100:
    v19 = v117;
    v18 = v118;
LABEL_101:
    v29 = v115;
LABEL_17:
    v30 = v124 + 1;
    if (v124 + 1 == v122)
    {
      goto LABEL_110;
    }
  }

  v35 = 7;
  if (((v32 >> 60) & ((v33 & 0x800000000000000) == 0)) != 0)
  {
    v35 = 11;
  }

  v125 = v35 | (v34 << 16);
  v36 = 4 * v34;

  v37 = 0;
  v38 = 15;
  v39 = _swiftEmptyArrayStorage;
  v126 = v32;
  while (sub_100042664() != 46 || v40 != 0xE100000000000000)
  {
    v41 = sub_100042BD4();

    if (v41)
    {
      goto LABEL_32;
    }

    result = sub_1000425B4();
LABEL_27:
    v37 = result >> 14;
    if (result >> 14 == v36)
    {
      if (v36 < v38 >> 14)
      {
        goto LABEL_121;
      }

      v52 = sub_100042684();
      v54 = v53;
      v56 = v55;
      v58 = v57;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10001BD68(0, *(v39 + 2) + 1, 1, v39);
        v39 = result;
      }

      v60 = *(v39 + 2);
      v59 = *(v39 + 3);
      goto LABEL_43;
    }
  }

LABEL_32:
  if (v37 >= v38 >> 14)
  {
    v42 = sub_100042684();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_10001BD68(0, *(v39 + 2) + 1, 1, v39);
    }

    v50 = *(v39 + 2);
    v49 = *(v39 + 3);
    if (v50 >= v49 >> 1)
    {
      v39 = sub_10001BD68((v49 > 1), v50 + 1, 1, v39);
    }

    *(v39 + 2) = v50 + 1;
    v51 = &v39[32 * v50];
    *(v51 + 4) = v42;
    *(v51 + 5) = v44;
    *(v51 + 6) = v46;
    *(v51 + 7) = v48;
    v33 = v130;
    v32 = v126;
    result = sub_1000425B4();
    v38 = result;
    goto LABEL_27;
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
  return result;
}

unint64_t sub_10000CD2C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_10000C098(a1, *a2);
  v8 = result;
  if (v3)
  {
    v9 = v6;
    v10 = v7;
    sub_100009CD8();
    result = swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v9;
    *(v11 + 16) = v10;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_10000CD9C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10000CEEC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_100042934();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1000429A4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_10000CEEC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10000CF84(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10000CFF8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10000CF84(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100008F78(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000CFF8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1000429A4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

void *sub_10000D11C(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100004C24(a1, a1[3]);
  sub_100042CA4();
  if (!v1)
  {
    sub_100004C24(v7, v7[3]);
    sub_100003288(&qword_100054BE8, &qword_100044508);
    sub_10000D57C();
    sub_100042BE4();
    v4 = v6;
    sub_100004BD8(v7);
  }

  sub_100004BD8(a1);
  return v4;
}

__n128 sub_10000D20C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100041AE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008FF4(&off_100051808);
  sub_10000A800(&unk_100051828, &qword_100054A48, &qword_100044380);
  sub_100004F3C(0, 0xF000000000000000);
  LOBYTE(v19) = 1;
  *(&v19 + 1) = 0xD000000000000011;
  *&v20 = 0x80000001000471A0;
  *(&v20 + 1) = _swiftEmptyArrayStorage;
  *&v21 = v7;
  *(&v21 + 1) = _swiftEmptyArrayStorage;
  v22 = xmmword_100043A50;
  v23[0] = 1;
  memset(&v23[8], 0, 32);
  v24[0] = 1;
  v25 = 0xD000000000000011;
  v26 = 0x80000001000471A0;
  v27 = _swiftEmptyArrayStorage;
  v28 = v7;
  v29 = _swiftEmptyArrayStorage;
  v30 = xmmword_100043A50;
  v31 = 1;
  v32 = 0u;
  v33 = 0u;
  sub_100004FA4(&v19, &v18);
  sub_100005000(v24);
  v8 = sub_100041B24();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_100041B14();
  (*(v3 + 104))(v6, enum case for JSONDecoder.KeyDecodingStrategy.convertFromSnakeCase(_:), v2);
  sub_100041AF4();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = sub_10000CD2C;
  v12[4] = 0;
  v13 = *&v23[16];
  *(a1 + 64) = *v23;
  *(a1 + 80) = v13;
  v14 = *&v23[32];
  v15 = v20;
  *a1 = v19;
  *(a1 + 16) = v15;
  result = v22;
  *(a1 + 32) = v21;
  *(a1 + 48) = result;
  *(a1 + 96) = v14;
  *(a1 + 104) = sub_10000D478;
  *(a1 + 112) = v12;
  return result;
}

uint64_t sub_10000D438()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D478@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_100007F98(a1, a2, a3, *(v4 + 16), *(v4 + 24), *(v4 + 32));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_10000D4D0()
{
  result = qword_100054BD8;
  if (!qword_100054BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054BD8);
  }

  return result;
}

unint64_t sub_10000D528()
{
  result = qword_100054BE0;
  if (!qword_100054BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054BE0);
  }

  return result;
}

unint64_t sub_10000D57C()
{
  result = qword_100054BF0;
  if (!qword_100054BF0)
  {
    sub_10000D628(&qword_100054BE8, &qword_100044508);
    sub_10000D770(&qword_100054BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054BF0);
  }

  return result;
}

uint64_t sub_10000D628(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000D670()
{
  result = qword_100054C10;
  if (!qword_100054C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C10);
  }

  return result;
}

unint64_t sub_10000D6C4()
{
  result = qword_100054C18;
  if (!qword_100054C18)
  {
    sub_10000D628(&qword_100054BE8, &qword_100044508);
    sub_10000D770(&qword_100054C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C18);
  }

  return result;
}

uint64_t sub_10000D770(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000D628(&qword_100054C00, &qword_100044510);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000D7F0()
{
  result = qword_100054C28;
  if (!qword_100054C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C28);
  }

  return result;
}

unint64_t sub_10000D848()
{
  result = qword_100054C30;
  if (!qword_100054C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C30);
  }

  return result;
}

unint64_t sub_10000D8A0()
{
  result = qword_100054C38;
  if (!qword_100054C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C38);
  }

  return result;
}

unint64_t ContentType.acceptHeader.getter(unsigned __int8 a1)
{
  v1 = 0x616C702F74786574;
  v2 = 0xD000000000000021;
  if (a1 != 4)
  {
    v2 = 0x746163696C707061;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (a1 != 1)
  {
    v1 = 0x746163696C707061;
  }

  if (!a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int ContentType.hashValue.getter(unsigned __int8 a1)
{
  sub_100042C54();
  sub_100042C64(a1);
  return sub_100042C94();
}

unint64_t ContentType.contentTypeHeader.getter(unsigned __int8 a1)
{
  v2 = 0xEF6664702F6E6F69;
  v3 = 0x746163696C707061;
  if (a1 <= 2u)
  {
    if (a1 >= 2u)
    {
      return v3;
    }

    goto LABEL_8;
  }

  if (a1 == 3)
  {
LABEL_8:
    sub_100003288(&qword_100054C40, &unk_100044650);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100044640;
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        v2 = 0x80000001000471F0;
        v3 = 0xD000000000000014;
      }
    }

    else if (a1)
    {
      v2 = 0xEA00000000006E69;
      v3 = 0x616C702F74786574;
    }

    else
    {
      v3 = 0xD000000000000010;
      v2 = 0x8000000100046F50;
    }

    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
    strcpy((v4 + 48), "charset=utf-8");
    *(v4 + 62) = -4864;
    sub_100003288(&qword_100054C00, &qword_100044510);
    sub_10000DC08();
    v3 = sub_1000424C4();

    return v3;
  }

  if (a1 == 4)
  {
    return 0xD000000000000021;
  }

  return v3;
}

unint64_t sub_10000DC08()
{
  result = qword_100054C48;
  if (!qword_100054C48)
  {
    sub_10000D628(&qword_100054C00, &qword_100044510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C48);
  }

  return result;
}

unint64_t sub_10000DC70()
{
  result = qword_100054C50;
  if (!qword_100054C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000DE14@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 - 3 < 2)
    {
      v3 = 1;
      goto LABEL_11;
    }

    sub_100042074();
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_1000420B4();
    }

    else
    {
      sub_100042064();
    }
  }

  else
  {
    sub_100042094();
  }

  v3 = 0;
LABEL_11:
  v4 = sub_1000420C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_10000E088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void *a6)
{
  v6[2] = a6;
  v9 = sub_100041AD4();
  v6[3] = v9;
  v10 = *(v9 - 8);
  v6[4] = v10;
  v11 = *(v10 + 64) + 15;
  v6[5] = swift_task_alloc();
  v12 = *(*(sub_100003288(&unk_100054D00, &qword_100044778) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = _Block_copy(a5);
  sub_100041A74();
  v13 = a6;

  return _swift_task_switch(sub_10000E1CC, 0, 0);
}

uint64_t sub_10000E1CC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v2[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects];

  v4 = (v1 + 56);
  if (v3 == 1)
  {
    (*(v0[4] + 32))(v0[7], v0[5], v0[3]);
    v5 = 0;
  }

  else
  {
    (*(v0[4] + 8))(v0[5], v0[3]);
    v5 = 1;
  }

  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[3];
  v9 = v0[4];
  (*v4)(v7, v5, 1, v8);
  sub_10000F6B8(v7, v6);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = v0[6];
    v12 = v0[3];
    v13 = v0[4];
    v10 = sub_100041A64();
    (*(v13 + 8))(v11, v12);
  }

  v14 = v0[8];
  v16 = v0[5];
  v15 = v0[6];
  (v14)[2](v14, v10);
  _Block_release(v14);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10000E504(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_10000E5F8;

  return sub_10000F3EC(v12);
}

uint64_t sub_10000E5F8(uint64_t a1, void *a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v13 = *v2;

  (v6)[2](v6, a1, a2);
  _Block_release(v6);

  v11 = *(v13 + 8);

  return v11();
}

id sub_10000E7D4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000E848()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000E8A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000E968;

  return sub_10000E504(v2, v3, v4, v5, v6);
}

uint64_t sub_10000E968()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000EA5C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000F77C;

  return v7();
}

uint64_t sub_10000EB44()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000F77C;

  return sub_10000EA5C(v2, v3, v5);
}

uint64_t sub_10000EC04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000E968;

  return v8();
}

uint64_t sub_10000ECEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F77C;

  return sub_10000EC04(a1, v4, v5, v7);
}

uint64_t sub_10000EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003288(&qword_100054CF8, "\n;");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000F074(a3, v25 - v11);
  v13 = sub_100042764();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000F0E4(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100042754();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_100042724();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_100042514() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10000F0E4(a3);

    return v23;
  }

LABEL_8:
  sub_10000F0E4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000F074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054CF8, "\n;");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F0E4(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054CF8, "\n;");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F14C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001C8C;

  return v7(a1);
}

uint64_t sub_10000F244()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F27C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F77C;

  return sub_10000F14C(a1, v5);
}

uint64_t sub_10000F334(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000E968;

  return sub_10000F14C(a1, v5);
}

uint64_t sub_10000F3EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10000F40C, 0, 0);
}

uint64_t sub_10000F40C()
{
  if ([*(v0 + 16) previousFailureCount] <= 0)
  {
    v5 = *(v0 + 24) + OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator;
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(v0 + 16);
      v8 = *(v5 + 8);
      v9 = *v5;
      v10 = *(v5 + 24);
      v11 = v10;

      if (sub_1000030D0(v7, v9, v8, v6))
      {
        if (v10)
        {

          v1 = v10;
        }

        else
        {
          v12 = [*(v0 + 16) proposedCredential];

          v1 = v12;
        }

        v2 = 0;
        goto LABEL_3;
      }
    }
  }

  v1 = 0;
  v2 = 1;
LABEL_3:
  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_10000F540()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000F5A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000F77C;

  return sub_10000E088(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_10000F678()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&unk_100054D00, &qword_100044778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10000F728(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
  }
}

uint64_t sub_10000F780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(sub_100003288(&qword_100054DD8, "Z&") + 48);
  v7 = sub_100042114();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = sub_1000423E4();
  return (*(*(v8 - 8) + 16))(a3 + v6, a2, v8);
}

uint64_t sub_10000F850(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = sub_100003288(&qword_100054DD8, "Z&");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v18 - v9;
  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_100013004(0, v11, 0);
  v12 = v22;
  v13 = *(sub_100042114() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_100013004(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    v12[2] = v16 + 1;
    sub_1000101C0(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

void *sub_10000FA40(uint64_t a1)
{
  v81 = sub_100042114();
  v2 = *(v81 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v81);
  v74 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v56 - v6;
  v71 = sub_1000423E4();
  v8 = *(v71 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v71);
  v70 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  v11 = *(*(v65 - 8) + 64);
  v12 = __chkstk_darwin(v65);
  v64 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v56 - v14;
  sub_100042104();
  v80 = sub_100042504();
  v17 = v16;

  v18 = sub_100042104();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    return _swiftEmptyArrayStorage;
  }

  v23 = a1 + 64;
  v22 = *(a1 + 64);
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  v83 = _swiftEmptyArrayStorage;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v62 = v8 + 16;
  v61 = v8 + 32;
  v63 = v8;
  v69 = v8 + 8;
  v73 = (v2 + 32);
  v76 = (v2 + 8);
  v77 = v2 + 16;

  v29 = 0;
  v68 = 0;
  v79 = v17;
  v58 = a1 + 64;
  v57 = v27;
  v60 = a1;
  v59 = v15;
  while (1)
  {
    if (!v26)
    {
      do
      {
        v34 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_32;
        }

        if (v34 >= v27)
        {

          return v83;
        }

        v26 = *(v23 + 8 * v34);
        ++v29;
      }

      while (!v26);
      v29 = v34;
    }

    v67 = v26;
    v35 = __clz(__rbit64(v26)) | (v29 << 6);
    v36 = v63;
    v37 = v71;
    (*(v63 + 16))(v15, *(a1 + 48) + *(v63 + 72) * v35, v71);
    v38 = *(*(a1 + 56) + 8 * v35);
    v40 = v64;
    v39 = v65;
    *&v15[*(v65 + 48)] = v38;
    sub_1000100C8(v15, v40);
    v41 = *(v40 + *(v39 + 48));

    (*(v36 + 32))(v70, v40, v37);
    sub_1000100C8(v15, v40);
    v42 = *(v40 + *(v39 + 48));
    v66 = *(v36 + 8);
    result = v66(v40, v37);
    v78 = *(v42 + 16);
    if (v78)
    {
      break;
    }

    v75 = _swiftEmptyArrayStorage;
LABEL_8:
    v26 = (v67 - 1) & v67;

    __chkstk_darwin(v30);
    v31 = v70;
    *(&v56 - 2) = v70;
    v32 = v68;
    v33 = sub_10000F850(sub_100010138, (&v56 - 4), v75);
    v68 = v32;

    sub_100031954(v33);
    v15 = v59;
    sub_100010158(v59);
    result = v66(v31, v71);
    a1 = v60;
    v23 = v58;
    v27 = v57;
  }

  v43 = 0;
  v75 = _swiftEmptyArrayStorage;
  while (v43 < *(v42 + 16))
  {
    v44 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v45 = *(v2 + 72);
    (*(v2 + 16))(v7, v42 + v44 + v45 * v43, v81);
    sub_100042104();
    v46 = sub_100042504();
    v48 = v47;

    v49 = v79;
    if (v46 == v80 && v48 == v79 || (sub_100042BD4() & 1) != 0)
    {
    }

    else
    {
      v84._countAndFlagsBits = v80;
      v84._object = v49;
      v50 = sub_100042644(v84);

      if (v50)
      {
        v51 = *v73;
        (*v73)(v74, v7, v81);
        v52 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v52;
        v72 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100013024(0, v52[2] + 1, 1);
          v52 = v82;
        }

        v55 = v52[2];
        v54 = v52[3];
        if (v55 >= v54 >> 1)
        {
          sub_100013024(v54 > 1, v55 + 1, 1);
          v52 = v82;
        }

        v52[2] = v55 + 1;
        v75 = v52;
        result = (v72)(v52 + v44 + v55 * v45, v74, v81);
        goto LABEL_18;
      }
    }

    result = (*v76)(v7, v81);
LABEL_18:
    if (v78 == ++v43)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000100C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010158(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000101C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054DD8, "Z&");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100010230(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_100003288(&qword_100054DD8, "Z&");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v50 - v6;
  v8 = sub_100003288(&qword_100054DE0, &qword_100045C40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v50 - v10;
  v63 = sub_1000423E4();
  v61 = *(v63 - 8);
  v12 = v61[8];
  v13 = __chkstk_darwin(v63);
  v60 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = &v50 - v15;
  v65 = sub_100042114();
  v16 = *(v65 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v65);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_100042104();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    return _swiftEmptyArrayStorage;
  }

  v59 = v7;
  sub_100042104();
  v24 = sub_100042504();
  v26 = v25;

  v27 = Suggester.makeSuggestions(input:)(v24, v26, a2);

  v28 = *(v27 + 16);
  if (!v28)
  {
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v57 = v4;
  v58 = v3;
  v29 = 0;
  v30 = (v16 + 8);
  v55 = (v16 + 16);
  v56 = (v61 + 4);
  v53 = (v61 + 1);
  v54 = (v61 + 2);
  v31 = v27 + 48;
  v51 = v28 - 1;
  v32 = _swiftEmptyArrayStorage;
  v52 = v27 + 48;
  do
  {
    v61 = v32;
    v33 = (v31 + 24 * v29);
    v34 = v29;
    while (1)
    {
      if (v34 >= *(v27 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      if (!*v33)
      {
        break;
      }

LABEL_7:
      ++v34;
      v33 += 24;
      if (v28 == v34)
      {
        v32 = v61;
        goto LABEL_21;
      }
    }

    v35 = *(v33 - 2);
    v36 = *(v33 - 1);
    swift_bridgeObjectRetain_n();
    v37 = sub_100042124();
    __chkstk_darwin(v37);
    *(&v50 - 2) = v19;
    sub_100015E00(sub_1000109A0, v64, v11);
    v38 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
    if ((*(*(v38 - 8) + 48))(v11, 1, v38) == 1)
    {

      sub_10000A800(v11, &qword_100054DE0, &qword_100045C40);
      (*v30)(v19, v65);
      goto LABEL_7;
    }

    v39 = *&v11[*(v38 + 48)];

    v50 = *v56;
    v40 = v63;
    v50(v60, v11, v63);
    v50(v62, v60, v40);
    v41 = v59;
    v42 = *(v58 + 48);
    (*v55)(v59, v19, v65);
    (*v54)(v41 + v42, v62, v63);
    v43 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_10001C078(0, v43[2] + 1, 1, v43);
    }

    v44 = v43;
    v45 = v43[2];
    v61 = v44;
    v46 = v44[3];
    v50 = (v45 + 1);
    if (v45 >= v46 >> 1)
    {
      v61 = sub_10001C078(v46 > 1, v45 + 1, 1, v61);
    }

    v29 = v34 + 1;

    (*v53)(v62, v63);
    v47 = v61;
    v61[2] = v50;
    v48 = v47 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v45;
    v32 = v47;
    sub_1000101C0(v59, v48);
    (*v30)(v19, v65);
    v31 = v52;
  }

  while (v51 != v34);
LABEL_21:

  v66 = v32;

  sub_100011214(&v66);

  return v66;
}

uint64_t sub_10001082C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054DD8, "Z&");
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  sub_100012D80(a1, &v22 - v7);
  v9 = *(v5 + 56);
  v10 = sub_100042564();
  v12 = v11;
  v13 = sub_1000423E4();
  v14 = *(*(v13 - 8) + 8);
  v14(&v8[v9], v13);
  sub_100012D80(a2, v8);
  v15 = *(v5 + 56);
  v16 = sub_100042564();
  v18 = v17;
  v14(&v8[v15], v13);
  if (v10 == v16 && v12 == v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_100042BD4();
  }

  return v20 & 1;
}

char *sub_1000109C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054E20, &qword_1000447A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100010AD0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003288(&qword_100054DF0, &unk_100044C70);
  v10 = *(sub_100003288(&qword_100054DD8, "Z&") - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003288(&qword_100054DD8, "Z&") - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_100010D10(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003288(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100010EEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054E08, &qword_100044798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100010FF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054E10, &unk_100044C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000110EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054E18, &qword_1000447A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_100011214(void **a1)
{
  v2 = *(sub_100003288(&qword_100054DD8, "Z&") - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100012D6C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000112C8(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000112C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100042B94(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003288(&qword_100054DD8, "Z&");
        v6 = sub_100042704();
        v6[2] = v5;
      }

      v7 = *(sub_100003288(&qword_100054DD8, "Z&") - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100011790(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10001140C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10001140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = sub_100003288(&qword_100054DD8, "Z&");
  v8 = *(*(v54 - 8) + 64);
  v9 = __chkstk_darwin(v54);
  v50 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v53 = &v41 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v41 - v14;
  result = __chkstk_darwin(v13);
  v19 = &v41 - v18;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v48 = -v21;
    v49 = v20;
    v23 = a1 - a3;
    v42 = v21;
    v24 = v20 + v21 * a3;
    v51 = &v41 - v18;
    v52 = v15;
    v25 = v53;
LABEL_6:
    v46 = v22;
    v47 = a3;
    v44 = v24;
    v45 = v23;
    v26 = v24;
    v27 = v23;
    while (1)
    {
      v55 = v27;
      sub_100012D80(v26, v19);
      sub_100012D80(v22, v15);
      sub_100012D80(v19, v25);
      v28 = v54;
      v29 = *(v54 + 48);
      v57 = sub_100042564();
      v56 = v30;
      v31 = sub_1000423E4();
      v32 = *(*(v31 - 8) + 8);
      v32(v25 + v29, v31);
      sub_100012D80(v15, v25);
      v33 = *(v28 + 48);
      v34 = sub_100042564();
      v36 = v35;
      v32(v25 + v33, v31);
      if (v57 == v34 && v56 == v36)
      {

        v15 = v52;
        sub_10000A800(v52, &qword_100054DD8, "Z&");
        v19 = v51;
        result = sub_10000A800(v51, &qword_100054DD8, "Z&");
LABEL_5:
        a3 = v47 + 1;
        v22 = v46 + v42;
        v23 = v45 - 1;
        v24 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_6;
      }

      v37 = sub_100042BD4();

      v15 = v52;
      sub_10000A800(v52, &qword_100054DD8, "Z&");
      v19 = v51;
      result = sub_10000A800(v51, &qword_100054DD8, "Z&");
      v38 = v55;
      if ((v37 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v39 = v50;
      sub_1000101C0(v26, v50);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000101C0(v39, v22);
      v22 += v48;
      v26 += v48;
      v40 = __CFADD__(v38, 1);
      v27 = v38 + 1;
      if (v40)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100011790(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v141 = a1;
  v8 = sub_100003288(&qword_100054DD8, "Z&");
  v151 = *(v8 - 8);
  v9 = *(v151 + 64);
  v10 = __chkstk_darwin(v8);
  v145 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v158 = &v137 - v13;
  v14 = __chkstk_darwin(v12);
  v165 = &v137 - v15;
  v16 = __chkstk_darwin(v14);
  v164 = &v137 - v17;
  v18 = __chkstk_darwin(v16);
  v160 = &v137 - v19;
  v20 = __chkstk_darwin(v18);
  v154 = &v137 - v21;
  v22 = __chkstk_darwin(v20);
  v153 = &v137 - v23;
  v24 = __chkstk_darwin(v22);
  result = __chkstk_darwin(v24);
  v152 = a3;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_106:
    a3 = *v141;
    if (!*v141)
    {
      goto LABEL_146;
    }

    a4 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_140:
      result = sub_100012B64(a4);
    }

    v133 = v5;
    v166 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v152)
      {
        v134 = *(result + 16 * a4);
        v135 = result;
        v5 = *(result + 16 * (a4 - 1) + 40);
        sub_1000123AC(*v152 + *(v151 + 72) * v134, *v152 + *(v151 + 72) * *(result + 16 * (a4 - 1) + 32), *v152 + *(v151 + 72) * v5, a3);
        if (v133)
        {
        }

        if (v5 < v134)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v135 = sub_100012B64(v135);
        }

        if (a4 - 2 >= *(v135 + 2))
        {
          goto LABEL_134;
        }

        v136 = &v135[16 * a4];
        *v136 = v134;
        *(v136 + 1) = v5;
        v166 = v135;
        sub_100012AD8(a4 - 1);
        result = v166;
        a4 = *(v166 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_144;
    }
  }

  v138 = &v137 - v26;
  v139 = v27;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v140 = a4;
  v159 = v8;
  while (1)
  {
    v31 = v29;
    v146 = v30;
    v142 = v29;
    if (v29 + 1 < v28)
    {
      v155 = v28;
      v32 = *v152;
      v33 = *(v151 + 72);
      v34 = *v152 + v33 * (v29 + 1);
      v35 = v29;
      v36 = v138;
      sub_100012D80(v34, v138);
      v37 = v139;
      sub_100012D80(v32 + v33 * v29, v139);
      LODWORD(v156) = sub_10001082C(v36, v37);
      if (!v5)
      {
        v157 = v33;
        sub_10000A800(v37, &qword_100054DD8, "Z&");
        a3 = v157;
        result = sub_10000A800(v36, &qword_100054DD8, "Z&");
        v38 = v29 + 2;
        v39 = v32 + a3 * (v35 + 2);
        v150 = 0;
        do
        {
          if (v155 == v38)
          {
            v56 = v155;
            goto LABEL_16;
          }

          v41 = v153;
          sub_100012D80(v39, v153);
          v163 = v34;
          v42 = v154;
          sub_100012D80(v34, v154);
          v43 = v41;
          v44 = v160;
          sub_100012D80(v43, v160);
          v45 = *(v8 + 48);
          v46 = sub_100042564();
          v161 = v47;
          v162 = v46;
          v48 = sub_1000423E4();
          v49 = *(*(v48 - 8) + 8);
          v49(v44 + v45, v48);
          sub_100012D80(v42, v44);
          v50 = *(v8 + 48);
          v51 = sub_100042564();
          v53 = v52;
          v54 = v44 + v50;
          v55 = v161;
          v49(v54, v48);
          if (v162 == v51 && v55 == v53)
          {
            v40 = 0;
          }

          else
          {
            v40 = sub_100042BD4();
          }

          v5 = v150;

          sub_10000A800(v154, &qword_100054DD8, "Z&");
          result = sub_10000A800(v153, &qword_100054DD8, "Z&");
          ++v38;
          a3 = v157;
          v39 += v157;
          v34 = v163 + v157;
          v8 = v159;
        }

        while (((v156 ^ v40) & 1) == 0);
        v56 = v38 - 1;
LABEL_16:
        a4 = v140;
        v31 = v142;
        if (v156)
        {
          if (v56 < v142)
          {
            goto LABEL_139;
          }

          if (v142 < v56)
          {
            v57 = a3 * (v56 - 1);
            v58 = v56 * a3;
            v59 = v56;
            v60 = v142;
            v61 = v142 * a3;
            do
            {
              if (v60 != --v56)
              {
                v62 = *v152;
                if (!*v152)
                {
                  goto LABEL_143;
                }

                sub_1000101C0(v62 + v61, v145);
                if (v61 < v57 || v62 + v61 >= v62 + v58)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v61 != v57)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_1000101C0(v145, v62 + v57);
                a3 = v157;
              }

              ++v60;
              v57 -= a3;
              v58 -= a3;
              v61 += a3;
            }

            while (v60 < v56);
            v5 = v150;
            a4 = v140;
            v31 = v142;
            v56 = v59;
          }
        }

        goto LABEL_30;
      }

      sub_10000A800(v37, &qword_100054DD8, "Z&");
      sub_10000A800(v36, &qword_100054DD8, "Z&");
    }

    v56 = v29 + 1;
LABEL_30:
    v63 = v152[1];
    if (v56 >= v63)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v56, v31))
    {
      goto LABEL_136;
    }

    if (v56 - v31 >= a4)
    {
LABEL_39:
      v29 = v56;
      if (v56 < v31)
      {
        goto LABEL_135;
      }

      goto LABEL_40;
    }

    if (__OFADD__(v31, a4))
    {
      goto LABEL_137;
    }

    if ((v31 + a4) >= v63)
    {
      v64 = v152[1];
    }

    else
    {
      v64 = v31 + a4;
    }

    if (v64 < v31)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v56 == v64)
    {
      goto LABEL_39;
    }

    v150 = v5;
    v110 = *v152;
    v111 = *(v151 + 72);
    v112 = *v152 + v111 * (v56 - 1);
    v156 = -v111;
    v157 = v110;
    v113 = v31 - v56;
    v143 = v111;
    a3 = v110 + v56 * v111;
    v144 = v64;
LABEL_93:
    v155 = v56;
    v147 = a3;
    v148 = v113;
    v114 = v113;
    v149 = v112;
    v115 = v112;
LABEL_94:
    v161 = v114;
    v116 = v164;
    sub_100012D80(a3, v164);
    v117 = v165;
    sub_100012D80(v115, v165);
    v118 = v160;
    sub_100012D80(v116, v160);
    v119 = *(v8 + 48);
    v120 = sub_100042564();
    v162 = v121;
    v163 = v120;
    v122 = sub_1000423E4();
    v123 = *(*(v122 - 8) + 8);
    v123(v118 + v119, v122);
    sub_100012D80(v117, v118);
    v124 = *(v8 + 48);
    v125 = sub_100042564();
    v127 = v126;
    v128 = v118 + v124;
    v129 = v162;
    v123(v128, v122);
    if (v163 != v125 || v129 != v127)
    {
      break;
    }

    a4 = "Z&";
    sub_10000A800(v165, &qword_100054DD8, "Z&");
    sub_10000A800(v164, &qword_100054DD8, "Z&");
LABEL_91:
    v8 = v159;
LABEL_92:
    v56 = v155 + 1;
    v112 = v149 + v143;
    v113 = v148 - 1;
    a3 = v147 + v143;
    v29 = v144;
    if (v155 + 1 != v144)
    {
      goto LABEL_93;
    }

    v5 = v150;
    if (v144 < v142)
    {
      goto LABEL_135;
    }

LABEL_40:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v146;
    }

    else
    {
      result = sub_100012C68(0, *(v146 + 2) + 1, 1, v146);
      v30 = result;
    }

    a3 = *(v30 + 2);
    v65 = *(v30 + 3);
    v66 = a3 + 1;
    if (a3 >= v65 >> 1)
    {
      result = sub_100012C68((v65 > 1), a3 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v66;
    v67 = &v30[16 * a3];
    *(v67 + 4) = v142;
    *(v67 + 5) = v29;
    v68 = *v141;
    if (!*v141)
    {
      goto LABEL_145;
    }

    if (a3)
    {
      while (2)
      {
        a3 = v66 - 1;
        if (v66 >= 4)
        {
          v73 = &v30[16 * v66 + 32];
          v74 = *(v73 - 64);
          v75 = *(v73 - 56);
          v79 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          if (v79)
          {
            goto LABEL_122;
          }

          v78 = *(v73 - 48);
          v77 = *(v73 - 40);
          v79 = __OFSUB__(v77, v78);
          v71 = v77 - v78;
          v72 = v79;
          if (v79)
          {
            goto LABEL_123;
          }

          v80 = &v30[16 * v66];
          v82 = *v80;
          v81 = *(v80 + 1);
          v79 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v79)
          {
            goto LABEL_125;
          }

          v79 = __OFADD__(v71, v83);
          v84 = v71 + v83;
          if (v79)
          {
            goto LABEL_128;
          }

          if (v84 >= v76)
          {
            v102 = &v30[16 * a3 + 32];
            v104 = *v102;
            v103 = *(v102 + 1);
            v79 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v79)
            {
              goto LABEL_132;
            }

            if (v71 < v105)
            {
              a3 = v66 - 2;
            }
          }

          else
          {
LABEL_59:
            if (v72)
            {
              goto LABEL_124;
            }

            v85 = &v30[16 * v66];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_127;
            }

            v91 = &v30[16 * a3 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_131;
            }

            if (v89 + v94 < v71)
            {
              goto LABEL_73;
            }

            if (v71 < v94)
            {
              a3 = v66 - 2;
            }
          }
        }

        else
        {
          if (v66 == 3)
          {
            v69 = *(v30 + 4);
            v70 = *(v30 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
            goto LABEL_59;
          }

          v95 = &v30[16 * v66];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_73:
          if (v90)
          {
            goto LABEL_126;
          }

          v98 = &v30[16 * a3];
          v100 = *(v98 + 4);
          v99 = *(v98 + 5);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_129;
          }

          if (v101 < v89)
          {
            break;
          }
        }

        a4 = a3 - 1;
        if (a3 - 1 >= v66)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v152)
        {
          goto LABEL_142;
        }

        v106 = v30;
        v107 = *&v30[16 * a4 + 32];
        v108 = *&v30[16 * a3 + 40];
        sub_1000123AC(*v152 + *(v151 + 72) * v107, *v152 + *(v151 + 72) * *&v30[16 * a3 + 32], *v152 + *(v151 + 72) * v108, v68);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_100012B64(v106);
        }

        if (a4 >= *(v106 + 2))
        {
          goto LABEL_121;
        }

        v109 = &v106[16 * a4];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v166 = v106;
        a4 = &v166;
        result = sub_100012AD8(a3);
        v30 = v166;
        v66 = *(v166 + 16);
        if (v66 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v28 = v152[1];
    a4 = v140;
    if (v29 >= v28)
    {
      goto LABEL_106;
    }
  }

  v130 = sub_100042BD4();

  a4 = &qword_100054DD8;
  sub_10000A800(v165, &qword_100054DD8, "Z&");
  result = sub_10000A800(v164, &qword_100054DD8, "Z&");
  if ((v130 & 1) == 0)
  {
    goto LABEL_91;
  }

  v8 = v159;
  v131 = v161;
  if (v157)
  {
    a4 = v158;
    sub_1000101C0(a3, v158);
    swift_arrayInitWithTakeFrontToBack();
    sub_1000101C0(a4, v115);
    v115 += v156;
    a3 += v156;
    v132 = __CFADD__(v131, 1);
    v114 = v131 + 1;
    if (v132)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}