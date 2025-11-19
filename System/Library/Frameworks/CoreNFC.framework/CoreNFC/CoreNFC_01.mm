void sub_2372A4F38(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, SEL *a11)
{
  v16 = sub_2372D0FB4();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v19[4] = a9;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2372A4E38;
  v19[3] = a10;
  v18 = _Block_copy(v19);

  [v11 *a11];
  _Block_release(v18);
}

void NFCISO15693Tag.challenge(requestFlags:cryptoSuiteIdentifier:message:completionHandler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2372D0FB4();
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2372A1D60;
  v13[3] = &unk_284A4F1B8;
  v12 = _Block_copy(v13);

  [v6 challengeWithRequestFlags:a1 cryptoSuiteIdentifier:a2 message:v11 completionHandler:v12];
  _Block_release(v12);
}

void NFCISO15693Tag.readBuffer(requestFlags:resultHandler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_2372A5224;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2372A4E38;
  v9[3] = &unk_284A4F208;
  v8 = _Block_copy(v9);

  [v3 readBufferWithRequestFlags:a1 completionHandler:v8];
  _Block_release(v8);
}

void NFCISO15693Tag.extendedGetMultipleBlockSecurityStatus(requestFlags:blockRange:resultHandler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_2372A54EC;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2372A54F4;
  v13[3] = &unk_284A4F258;
  v12 = _Block_copy(v13);

  [v5 extendedGetMultipleBlockSecurityStatusWithRequestFlag:a1 blockRange:a2 completionHandler:{a3, v12}];
  _Block_release(v12);
}

void sub_2372A5370(unint64_t a1, id a2, void (*a3)(id *), uint64_t a4)
{
  if (a2)
  {
    v18 = a2;
    v19 = 1;
    v6 = a2;
LABEL_16:
    a3(&v18);
    sub_2372A5BAC(v18, v19);
    return;
  }

  if (a1 >> 62)
  {
    v8 = sub_2372D1254();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
LABEL_15:
    v18 = v9;
    v19 = 0;
    goto LABEL_16;
  }

  v16 = a4;
  v17 = a3;
  v18 = MEMORY[0x277D84F90];
  sub_23728DC94(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v9 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2383C94A0](v10, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 integerValue];

      v18 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_23728DC94((v14 > 1), v15 + 1, 1);
        v9 = v18;
      }

      ++v10;
      v9[2] = v15 + 1;
      v9[v15 + 4] = v13;
    }

    while (v8 != v10);
    a3 = v17;
    goto LABEL_15;
  }

  __break(1u);
}

void sub_2372A54F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2372A5B60();
  v6 = sub_2372D10F4();

  v7 = a3;
  v5(v6, a3);
}

void sub_2372A55E4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v19[4] = a8;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2372A2A00;
  v19[3] = a9;
  v18 = _Block_copy(v19);

  [v10 *a10];
  _Block_release(v18);
}

void NFCISO15693Tag.sendRequest(requestFlags:commandCode:data:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_2372D0FB4();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v14[4] = sub_2372A58F0;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2372A5934;
  v14[3] = &unk_284A4F2F8;
  v13 = _Block_copy(v14);

  [v6 sendRequestWithFlag:a1 commandCode:a2 data:v11 completionHandler:v13];
  _Block_release(v13);
}

void sub_2372A5808(unsigned __int8 a1, uint64_t a2, uint64_t a3, id a4, void (*a5)(id, uint64_t, uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t), void (*a8)(uint64_t, uint64_t))
{
  if (a4)
  {
    v10 = a4;
    a5(a4, 0, 0, 1);
  }

  else
  {
    a7(a2, a3);
    a5(a1, a2, a3, 0);

    a8(a2, a3);
  }
}

uint64_t sub_2372A5934(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {

    v9 = v5;
    v5 = sub_2372D0FC4();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a4;
  v8(a2, v5, v11, a4);

  sub_23728E070(v5, v11);
}

__n128 sub_2372A59F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_2372A5A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 56))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2372A5A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2372A5ACC(uint64_t *a1, int a2)
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

uint64_t sub_2372A5B14(uint64_t result, int a2, int a3)
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

unint64_t sub_2372A5B60()
{
  result = qword_27DE99250;
  if (!qword_27DE99250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE99250);
  }

  return result;
}

void sub_2372A5BAC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2372A5BB8(uint64_t a1)
{
  v2 = sub_23728DDC0(&qword_27DE99258, "@\b");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id NFCPaymentTagReaderSession.init(delegate:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for NFCTagReaderSessionDelegateSwiftWrapper();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper_swiftDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSwiftDelegate:v7 queue:a3];
  swift_unknownObjectRelease();

  return v8;
}

id NFCPaymentTagReaderSession.init(__pollingOption:delegate:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPollingOption:a1 delegate:a2 queue:a3];
  swift_unknownObjectRelease();

  return v4;
}

{
  v8.super_class = NFCPaymentTagReaderSession;
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v8, sel_initWithPollingOption_delegate_delegateType_sessionType_queue_, a1, a2, 2, 5, a3);
  swift_unknownObjectRelease_n();

  return v6;
}

id NFCPaymentTagReaderSession.init(__delegate:queue:)(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate:a1 queue:a2];
  swift_unknownObjectRelease();

  return v3;
}

{
  v6.super_class = NFCPaymentTagReaderSession;
  swift_unknownObjectRetain();
  v4 = objc_msgSendSuper2(&v6, sel_initWithPollingOption_delegate_delegateType_sessionType_queue_, 1, a1, 2, 5, a2);
  swift_unknownObjectRelease_n();

  return v4;
}

id NFCPaymentTagReaderSession.init(delegate:sessionDelegateType:queue:pollMethod:sessionType:sessionConfig:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_2372A636C(a1, a1[3]);
  v13 = [v12 initWithDelegate:sub_2372D1274() sessionDelegateType:a2 queue:a3 pollMethod:a4 sessionType:a5 sessionConfig:a6];
  swift_unknownObjectRelease();

  sub_237296020(a1);
  return v13;
}

void *sub_2372A636C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t type metadata accessor for NFCPaymentTagReaderSession()
{
  result = qword_27DE99260;
  if (!qword_27DE99260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE99260);
  }

  return result;
}

void sub_2372A7990(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, v3, v4, v5);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Node size must be 2 bytes long", v11, ClassName, Name, 50);
  }

  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v20 = v14;
    v21 = 2082;
    v22 = v15;
    v23 = 2082;
    v24 = v16;
    v25 = 1024;
    v26 = 50;
    _os_log_impl(&dword_23728C000, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Node size must be 2 bytes long", buf, 0x22u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2372A7B5C(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [NFCError errorWithCode:3];
  (*(v2 + 16))(v2, v3, v4, v5);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i System code must not contain the 0xFF wildcard value", v11, ClassName, Name, 61);
  }

  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v20 = v14;
    v21 = 2082;
    v22 = v15;
    v23 = 2082;
    v24 = v16;
    v25 = 1024;
    v26 = 61;
    _os_log_impl(&dword_23728C000, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i System code must not contain the 0xFF wildcard value", buf, 0x22u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2372A7D28(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    (*(v7 + 16))(v7, v8, v9, v6);
  }

  else
  {
    if ([v5 length] == 18 || objc_msgSend(v5, "length") == 20)
    {
      v10 = [v5 subdataWithRange:{10, 8}];
      v11 = [v5 length];
      v12 = *(a1 + 32);
      if (v11 == 20)
      {
        v13 = [v5 subdataWithRange:{18, 2}];
      }

      else
      {
        v13 = objc_opt_new();
      }

      v14 = v13;
      (*(v12 + 16))(v12, v10, v13, 0);
    }

    else
    {
      v15 = *(a1 + 32);
      v10 = objc_opt_new();
      v14 = objc_opt_new();
      v19 = @"TagResponseInvalidLength";
      v20[0] = MEMORY[0x277CBEC38];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v17 = [NFCError errorWithCode:102 userInfo:v16];
      (*(v15 + 16))(v15, v10, v14, v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2372A8284(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Number of nodes must be between 1 to 32 inclusively", v10, ClassName, Name, 99);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 99;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Number of nodes must be between 1 to 32 inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372A8434(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Node size must be 2 bytes long", v10, ClassName, Name, 108);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 108;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Node size must be 2 bytes long", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372A85E4(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_new();
    (*(v7 + 16))(v7, v8, v6);
    goto LABEL_8;
  }

  if ([v5 length] <= 0xC)
  {
    v9 = *(a1 + 32);
    v8 = objc_opt_new();
    v21 = @"TagResponseInvalidLength";
    v22[0] = MEMORY[0x277CBEC38];
    v10 = MEMORY[0x277CBEAC0];
    v11 = v22;
    v12 = &v21;
LABEL_7:
    v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    v15 = [NFCError errorWithCode:102 userInfo:v14];
    (*(v9 + 16))(v9, v8, v15);

    goto LABEL_8;
  }

  v13 = *([v5 bytes] + 10);
  if ([v5 length] - 11 < (2 * v13))
  {
    v9 = *(a1 + 32);
    v8 = objc_opt_new();
    v19 = @"TagResponseInvalidLength";
    v20 = MEMORY[0x277CBEC38];
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v20;
    v12 = &v19;
    goto LABEL_7;
  }

  v8 = objc_opt_new();
  if (v13)
  {
    v17 = 11;
    do
    {
      v18 = [v5 subdataWithRange:{v17, 2}];
      [v8 addObject:v18];

      v17 += 2;
      --v13;
    }

    while (v13);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8, 0);
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372A8940(uint64_t a1, void *a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else if ([v5 length] == 11)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), *([v6 bytes] + 10), 0);
  }

  else
  {
    v7 = *(a1 + 32);
    v11 = @"TagResponseInvalidLength";
    v12[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [NFCError errorWithCode:102 userInfo:v8];
    (*(v7 + 16))(v7, -1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2372A8F54(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, -1, -1, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Number of service codes must be between 1 to 16 inclusively", v10, ClassName, Name, 189);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 189;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Number of service codes must be between 1 to 16 inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372A910C(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, -1, -1, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Node size must be 2 bytes long", v10, ClassName, Name, 199);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 199;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Node size must be 2 bytes long", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372A92C4(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, -1, -1, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Block list element must be 2 or 3 bytes long", v10, ClassName, Name, 211);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 211;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block list element must be 2 or 3 bytes long", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372A947C(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v9 = [v5 bytes];
    if ([v5 length] <= 0xB)
    {
      v10 = *(a1 + 32);
      v8 = objc_opt_new();
      v26 = @"TagResponseInvalidLength";
      v27[0] = MEMORY[0x277CBEC38];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v12 = [NFCError errorWithCode:102 userInfo:v11];
      (*(v10 + 16))(v10, -1, -1, v8, v12);

      goto LABEL_5;
    }

    v14 = objc_opt_new();
    if (!v9[10])
    {
      v17 = v9[12];
      if ([v5 length] - 13 < (16 * v17))
      {
        v18 = *(a1 + 32);
        v19 = objc_opt_new();
        v24 = @"TagResponseInvalidLength";
        v25 = MEMORY[0x277CBEC38];
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v21 = [NFCError errorWithCode:102 userInfo:v20];
        (*(v18 + 16))(v18, -1, -1, v19, v21);

        goto LABEL_9;
      }

      if (v17)
      {
        v22 = 13;
        do
        {
          v23 = [v5 subdataWithRange:{v22, 16}];
          [v14 addObject:v23];

          v22 += 16;
          --v17;
        }

        while (v17);
      }
    }

    v15 = v9[10];
    v16 = v9[11];
    (*(*(a1 + 32) + 16))();
LABEL_9:

    goto LABEL_6;
  }

  v7 = *(a1 + 32);
  v8 = objc_opt_new();
  (*(v7 + 16))(v7, -1, -1, v8, v6);
LABEL_5:

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2372A9E4C(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, -1, -1, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Number of service codes must be between 1 to 16 inclusively", v9, ClassName, Name, 277);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 277;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Number of service codes must be between 1 to 16 inclusively", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372A9FEC(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, -1, -1, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Number of elements in the block list and the block data list does not match", v9, ClassName, Name, 283);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 283;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Number of elements in the block list and the block data list does not match", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372AA18C(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, -1, -1, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Block list size exceeds the maximum limit", v9, ClassName, Name, 289);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 289;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block list size exceeds the maximum limit", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372AA32C(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, -1, -1, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Node size must be 2 bytes long", v9, ClassName, Name, 299);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 299;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Node size must be 2 bytes long", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372AA4CC(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, -1, -1, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Block list element must be 2 or 3 bytes long", v9, ClassName, Name, 311);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 311;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block list element must be 2 or 3 bytes long", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372AA66C(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, -1, -1, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Block data length must be 16 bytes long", v9, ClassName, Name, 323);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 323;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block data length must be 16 bytes long", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372AA80C(uint64_t a1, void *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else if ([v5 length] == 12)
  {
    v7 = [v6 bytes];
    (*(*(a1 + 32) + 16))(*(a1 + 32), *(v7 + 10), *(v7 + 11), 0);
  }

  else
  {
    v8 = *(a1 + 32);
    v12 = @"TagResponseInvalidLength";
    v13[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [NFCError errorWithCode:102 userInfo:v9];
    (*(v8 + 16))(v8, -1, -1, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2372AAA88(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_new();
    (*(v7 + 16))(v7, v8, v6);
    goto LABEL_8;
  }

  if ([v5 length] <= 0xA)
  {
    v9 = *(a1 + 32);
    v8 = objc_opt_new();
    v21 = @"TagResponseInvalidLength";
    v22[0] = MEMORY[0x277CBEC38];
    v10 = MEMORY[0x277CBEAC0];
    v11 = v22;
    v12 = &v21;
LABEL_7:
    v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    v15 = [NFCError errorWithCode:102 userInfo:v14];
    (*(v9 + 16))(v9, v8, v15);

    goto LABEL_8;
  }

  v13 = *([v5 bytes] + 10);
  if ([v5 length] - 11 < (2 * v13))
  {
    v9 = *(a1 + 32);
    v8 = objc_opt_new();
    v19 = @"TagResponseInvalidLength";
    v20 = MEMORY[0x277CBEC38];
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v20;
    v12 = &v19;
    goto LABEL_7;
  }

  v8 = objc_opt_new();
  if (v13)
  {
    v17 = 11;
    do
    {
      v18 = [v5 subdataWithRange:{v17, 2}];
      [v8 addObject:v18];

      v17 += 2;
      --v13;
    }

    while (v13);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8, 0);
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372AB008(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, -1, -1, 79, v3, v4, v5);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Number of nodes must be between 1 to 32 inclusively", v11, ClassName, Name, 412);
  }

  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v20 = v14;
    v21 = 2082;
    v22 = v15;
    v23 = 2082;
    v24 = v16;
    v25 = 1024;
    v26 = 412;
    _os_log_impl(&dword_23728C000, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Number of nodes must be between 1 to 32 inclusively", buf, 0x22u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2372AB1E0(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, -1, -1, 79, v3, v4, v5);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Node size must be 2 bytes long", v11, ClassName, Name, 421);
  }

  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v20 = v14;
    v21 = 2082;
    v22 = v15;
    v23 = 2082;
    v24 = v16;
    v25 = 1024;
    v26 = 421;
    _os_log_impl(&dword_23728C000, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Node size must be 2 bytes long", buf, 0x22u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2372AB3B8(uint64_t a1, void *a2, void *a3)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if ([v5 length] <= 0xB)
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_new();
      v12 = objc_opt_new();
      v39 = @"TagResponseInvalidLength";
      v40[0] = MEMORY[0x277CBEC38];
      v13 = MEMORY[0x277CBEAC0];
      v14 = v40;
      v15 = &v39;
LABEL_5:
      v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
      v17 = [NFCError errorWithCode:102 userInfo:v16];
      (*(v10 + 16))(v10, -1, -1, -1, v11, v12, v17);

      goto LABEL_9;
    }

    v18 = [v5 bytes];
    v19 = v18;
    v20 = *(v18 + 10);
    if (*(v18 + 10))
    {
      v21 = *(a1 + 32);
      v22 = *(v18 + 11);
      v23 = objc_opt_new();
      v24 = objc_opt_new();
      (*(v21 + 16))(v21, v20, v22, -1, v23, v24, 0);
    }

    else
    {
      if ([v5 length] <= 0xC)
      {
        v10 = *(a1 + 32);
        v11 = objc_opt_new();
        v12 = objc_opt_new();
        v37 = @"TagResponseInvalidLength";
        v38 = MEMORY[0x277CBEC38];
        v13 = MEMORY[0x277CBEAC0];
        v14 = &v38;
        v15 = &v37;
        goto LABEL_5;
      }

      v26 = v19[12];
      v27 = v19[13];
      v28 = 1;
      if (v26 == 65)
      {
        v28 = 2;
      }

      if ([v5 length] - 14 < (v27 << v28))
      {
        v10 = *(a1 + 32);
        v11 = objc_opt_new();
        v12 = objc_opt_new();
        v35 = @"TagResponseInvalidLength";
        v36 = MEMORY[0x277CBEC38];
        v13 = MEMORY[0x277CBEAC0];
        v14 = &v36;
        v15 = &v35;
        goto LABEL_5;
      }

      v23 = objc_opt_new();
      v24 = objc_opt_new();
      if (v27)
      {
        v34 = v26;
        v29 = 14;
        v30 = v27;
        do
        {
          v31 = [v5 subdataWithRange:{v29, 2, v34}];
          [v23 addObject:v31];

          v29 += 2;
          --v30;
        }

        while (v30);
        v26 = v34;
        if (v34 == 65)
        {
          v32 = 2 * v27 + 14;
          do
          {
            v33 = [v5 subdataWithRange:{v32, 2}];
            [v24 addObject:v33];

            v32 += 2;
            --v27;
          }

          while (v27);
        }
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), v19[10], v19[11], v26, v23, v24, 0);
    }

    goto LABEL_9;
  }

  v7 = *(a1 + 32);
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  (*(v7 + 16))(v7, -1, -1, -1, v8, v9, v6);

LABEL_9:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_2372AB8C0(uint64_t a1, void *a2, void *a3)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    (*(v7 + 16))(v7, -1, -1, v8, v9, v6);

    goto LABEL_8;
  }

  if ([v5 length] <= 0xB)
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v36 = @"TagResponseInvalidLength";
    v37[0] = MEMORY[0x277CBEC38];
    v13 = MEMORY[0x277CBEAC0];
    v14 = v37;
    v15 = &v36;
LABEL_5:
    v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    v17 = [NFCError errorWithCode:102 userInfo:v16];
    (*(v10 + 16))(v10, -1, -1, v11, v12, v17);

    goto LABEL_8;
  }

  v18 = [v5 bytes];
  v19 = v18;
  v20 = *(v18 + 10);
  if (*(v18 + 10))
  {
    v21 = *(a1 + 32);
    v22 = *(v18 + 11);
    v23 = objc_opt_new();
    v24 = objc_opt_new();
    (*(v21 + 16))(v21, v20, v22, v23, v24, 0);

    goto LABEL_8;
  }

  if ([v5 length] <= 0xE)
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v34 = @"TagResponseInvalidLength";
    v35 = MEMORY[0x277CBEC38];
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v35;
    v15 = &v34;
    goto LABEL_5;
  }

  v26 = v19[15];
  if ([v5 length] != 2 * v26 + 16)
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v32 = @"TagResponseInvalidLength";
    v33 = MEMORY[0x277CBEC38];
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v33;
    v15 = &v32;
    goto LABEL_5;
  }

  v27 = [v5 subdataWithRange:{13, 2}];
  v28 = objc_opt_new();
  if (v26)
  {
    v29 = [v5 subdataWithRange:{16, (2 * v26)}];
    [v28 appendData:v29];
  }

  v30 = v19[10];
  v31 = v19[11];
  (*(*(a1 + 32) + 16))();

LABEL_8:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_2372ABD64(uint64_t a1, void *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else if ([v5 length] == 12)
  {
    v7 = [v6 bytes];
    (*(*(a1 + 32) + 16))(*(a1 + 32), *(v7 + 10), *(v7 + 11), 0);
  }

  else
  {
    v8 = *(a1 + 32);
    v12 = @"TagResponseInvalidLength";
    v13[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [NFCError errorWithCode:102 userInfo:v9];
    (*(v8 + 16))(v8, -1, -1, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2372AC0F0(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Command packet length must be between 1 to 254 inclusively", v10, ClassName, Name, 595);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 595;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command packet length must be between 1 to 254 inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372AC2A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:4];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372AC628(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, 0, 0, v2);
}

void sub_2372AE12C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) copy];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void sub_2372AE224(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AE320(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372AE434(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AE530(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AE62C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372AE740(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AE83C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AE938(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AEA34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AEB30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AEC2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AED28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AEE24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AEF20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, -1, -1, -1, -1, -1, v2);
}

void sub_2372AF030(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, 0, -1, -1, -1, -1, -1, v2);
}

void sub_2372AF144(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372AF258(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372AF36C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372AF480(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372AF594(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AF690(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AF78C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372AF8A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AF99C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, 0, v3, v2);
}

void sub_2372AFAB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, 0, v3, v2);
}

void sub_2372AFBCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void sub_2372AFCC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, 0, v3, v2);
}

void sub_2372AFDE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372AFEF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372B0008(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void sub_2372B00CC()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A5A010];
  v1 = qword_27DE9A3B0;
  qword_27DE9A3B0 = v0;

  v2 = qword_27DE9A3B0;
  v3 = +[NFReaderSessionCallbacks interface];
  [v2 setInterface:v3 forSelector:sel_queueReaderSession_sessionConfig_completion_ argumentIndex:0 ofReply:0];

  v4 = qword_27DE9A3B0;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_queueReaderSession_sessionConfig_completion_ argumentIndex:1 ofReply:0];

  v6 = qword_27DE9A3B0;
  v7 = +[NFReaderSessionInterface interface];
  [v6 setInterface:v7 forSelector:sel_queueReaderSession_sessionConfig_completion_ argumentIndex:0 ofReply:1];

  v8 = qword_27DE9A3B0;
  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_queueCardSession_sessionConfig_completion_ argumentIndex:1 ofReply:0];

  v10 = qword_27DE9A3B0;
  v11 = sub_2372C56C4();
  [v10 setInterface:v11 forSelector:sel_queueCardSession_sessionConfig_completion_ argumentIndex:0 ofReply:0];

  v12 = qword_27DE9A3B0;
  v13 = sub_2372C568C();
  [v12 setInterface:v13 forSelector:sel_queueCardSession_sessionConfig_completion_ argumentIndex:0 ofReply:1];

  v14 = qword_27DE9A3B0;
  v15 = +[NFCFieldDetectSessionCallbacksInterface interface];
  [v14 setInterface:v15 forSelector:sel_queueCardFieldDetectSession_completion_ argumentIndex:0 ofReply:0];

  v16 = qword_27DE9A3B0;
  v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A59EE8];
  [v16 setInterface:v17 forSelector:sel_queueCardFieldDetectSession_completion_ argumentIndex:0 ofReply:1];
}

uint64_t sub_2372B037C()
{
  qword_27DE9A3C0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A55428];

  return MEMORY[0x2821F96F8]();
}

void sub_2372B1A40(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i expired", v7, ClassName, Name, 57);
  }

  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v10;
    v20 = 2082;
    v21 = v11;
    v22 = 2082;
    v23 = v12;
    v24 = 1024;
    v25 = 57;
    _os_log_impl(&dword_23728C000, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i expired", buf, 0x22u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = [WeakRetained delegate];
    [v15 didExpire];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372B1CCC(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i expired", v7, ClassName, Name, 80);
  }

  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v10;
    v20 = 2082;
    v21 = v11;
    v22 = 2082;
    v23 = v12;
    v24 = 1024;
    v25 = 80;
    _os_log_impl(&dword_23728C000, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i expired", buf, 0x22u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = [WeakRetained delegate];
    [v15 didFinishCooldown];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372B27B8(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5 = [v3 _connectionLock];
    [v5 lock];

    if (*(a1 + 48) == v3[3])
    {
      [v4 invalidate];
      v6 = v3[2];
      v3[2] = 0;

      v7 = [v3 _connectionLock];
      [v7 unlock];

      v8 = objc_loadWeakRetained(v3 + 9);
      [v8 didInvalidate];
    }

    else
    {
      v9 = MEMORY[0x277D82BB0];
      dispatch_get_specific(*MEMORY[0x277D82BB0]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v15 = 45;
        if (isMetaClass)
        {
          v15 = 43;
        }

        v11(4, "%c[%{public}s %{public}s]:%i Connection ID has been updated; skip cleanup", v15, ClassName, Name, 130);
      }

      dispatch_get_specific(*v9);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v17))
        {
          v18 = 43;
        }

        else
        {
          v18 = 45;
        }

        v19 = object_getClassName(*(a1 + 32));
        v20 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v24 = v18;
        v25 = 2082;
        v26 = v19;
        v27 = 2082;
        v28 = v20;
        v29 = 1024;
        v30 = 130;
        _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Connection ID has been updated; skip cleanup", buf, 0x22u);
      }

      v8 = [v3 _connectionLock];
      [v8 unlock];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2372B29E0(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D82BB0];
  dispatch_get_specific(*MEMORY[0x277D82BB0]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i NFCSession: Connection (ID=%ld) invalidated", "[NFCSession _connectIfNeeded]_block_invoke", 147, *(a1 + 40));
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 136446722;
    v9 = "[NFCSession _connectIfNeeded]_block_invoke";
    v10 = 1024;
    v11 = 147;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_23728C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i NFCSession: Connection (ID=%ld) invalidated", buf, 0x1Cu);
  }

  result = (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2372B2B08(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D82BB0];
  dispatch_get_specific(*MEMORY[0x277D82BB0]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i NFCSession: Connection (ID=%ld) interrupted", "[NFCSession _connectIfNeeded]_block_invoke", 154, *(a1 + 40));
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 136446722;
    v9 = "[NFCSession _connectIfNeeded]_block_invoke";
    v10 = 1024;
    v11 = 154;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_23728C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i NFCSession: Connection (ID=%ld) interrupted", buf, 0x1Cu);
  }

  result = (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2372B3D6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:103];
  (*(v1 + 16))(v1, 1, 0, v2);
}

void sub_2372B3DDC(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_2372B4288;
  v45[3] = &unk_278A29D20;
  v45[4] = v2;
  os_unfair_lock_lock(v2 + 8);
  v3 = sub_2372B4288(v45);
  os_unfair_lock_unlock(v2 + 8);
  v4 = [*(a1 + 40) currentTag];
  if ([v4 isEqualToNFTag:v3])
  {
    v41 = 0;
    v42 = 0;
    v5 = [*(a1 + 40) ndefStatus:&v42 maxMessageLength:&v41];
    if (v5)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v7(4, "%c[%{public}s %{public}s]:%i Error=%@", v10, ClassName, Name, 214, v5);
      }

      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        v14 = object_getClassName(*(a1 + 32));
        v15 = sel_getName(*(a1 + 56));
        *buf = 67110146;
        v47 = v13;
        v48 = 2082;
        v49 = v14;
        v50 = 2082;
        v51 = v15;
        v52 = 1024;
        v53 = 214;
        v54 = 2112;
        v55 = v5;
        _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error=%@", buf, 0x2Cu);
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_2372B4304;
      v38[3] = &unk_278A29D48;
      v16 = &v40;
      v17 = *(a1 + 40);
      v40 = *(a1 + 48);
      v39 = v5;
      [v17 submitBlockOnDelegateQueue:v38];
    }

    else
    {
      if (v42 > 4)
      {
        v30 = 0;
      }

      else
      {
        v30 = qword_2372D5190[v42];
      }

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_2372B4320;
      v36[3] = &unk_278A29D70;
      v16 = v37;
      v31 = *(a1 + 40);
      v37[0] = *(a1 + 48);
      v37[1] = v30;
      v37[2] = v41;
      [v31 submitBlockOnDelegateQueue:v36];
    }
  }

  else
  {
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(*(a1 + 32));
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(*(a1 + 32));
      v35 = sel_getName(*(a1 + 56));
      v23 = 45;
      if (v21)
      {
        v23 = 43;
      }

      v19(4, "%c[%{public}s %{public}s]:%i Tag is not connected", v23, v22, v35, 202);
    }

    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v47 = v26;
      v48 = 2082;
      v49 = v27;
      v50 = 2082;
      v51 = v28;
      v52 = 1024;
      v53 = 202;
      _os_log_impl(&dword_23728C000, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag is not connected", buf, 0x22u);
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_2372B4294;
    v43[3] = &unk_278A29C38;
    v29 = *(a1 + 40);
    v44 = *(a1 + 48);
    [v29 submitBlockOnDelegateQueue:v43];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_2372B4294(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:104];
  (*(v1 + 16))(v1, 1, 0, v2);
}

void sub_2372B44A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:103];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_2372B450C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [v2 readNdefMessageWithError:&v14];
  v4 = v14;
  v5 = [NFCError errorWithNFCDError:v4 defaultNFCErrorCode:104];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2372B4610;
  v10[3] = &unk_278A29C60;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v11 = v3;
  v8 = v5;
  v9 = v3;
  [v6 submitBlockOnDelegateQueue:v10];
}

void sub_2372B478C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:103];
  (*(v1 + 16))(v1, v2);
}

void sub_2372B47F4(uint64_t a1)
{
  v2 = [*(a1 + 32) writeLockNdef];
  v3 = [NFCError errorWithNFCDError:v2 defaultNFCErrorCode:104];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372B48CC;
  v7[3] = &unk_278A29D48;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 submitBlockOnDelegateQueue:v7];
}

void sub_2372B4A6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:103];
  (*(v1 + 16))(v1, v2);
}

void sub_2372B4AD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  [v2 writeNdefMessage:v3 error:&v12];
  v4 = v12;
  v5 = [NFCError errorWithNFCDError:v4 defaultNFCErrorCode:104];

  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372B4BC0;
  v9[3] = &unk_278A29D48;
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 submitBlockOnDelegateQueue:v9];
}

uint64_t sub_2372B4CAC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) type];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_2372B51A8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) technology];
  v3 = *(*(a1 + 32) + 8);
  if (v2 == 2)
  {
    v4 = [v3 tagB];
    v5 = [v4 pupi];
  }

  else
  {
    v5 = [v3 tagID];
  }

  return v5;
}

id sub_2372B52D0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) technology];
  v3 = *(*(a1 + 32) + 8);
  if (v2 == 1)
  {
    [v3 tagA];
  }

  else
  {
    [v3 tagB];
  }
  v4 = ;
  v5 = [v4 selectedAID];

  return v5;
}

id sub_2372B53F4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) tagF];
  v2 = [v1 SystemCode];

  return v2;
}

id sub_2372B54F0(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) tagA];
  v2 = [v1 historicalBytes];

  return v2;
}

id sub_2372B55EC(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) tagB];
  v2 = [v1 applicationData];

  return v2;
}

void sub_2372B56FC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) tagB];
  *(*(*(a1 + 40) + 8) + 24) = [v2 applicationDataCoding];
}

uint64_t sub_2372B5954(void *a1)
{
  result = [*(a1[4] + 8) isEqualToNFTag:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_2372B5DD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:103];
  (*(v1 + 16))(v1, v2);
}

void sub_2372B5E44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_2372B5F14;
    v5[3] = &unk_278A29E60;
    v5[4] = v4;
    v6 = *(a1 + 40);
    os_unfair_lock_lock(v4 + 8);
    sub_2372B5F14(v5);
    os_unfair_lock_unlock(v4 + 8);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v3);
}

uint64_t sub_2372B5F14(uint64_t a1)
{
  v2 = [*(a1 + 40) currentTag];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x2821F96F8]();
}

void sub_2372B619C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v17 = 0;
  v18 = 0;
  v5 = [v2 _transceiveWithSession:v3 sendData:v4 receivedData:&v18 error:&v17];
  v6 = v18;
  v7 = v17;
  if ((v5 & 1) == 0)
  {
    v8 = objc_opt_new();

    v6 = v8;
  }

  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2372B62B0;
  v13[3] = &unk_278A29C60;
  v10 = *(a1 + 56);
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v7;
  v12 = v6;
  [v9 submitBlockOnDelegateQueue:v13];
}

void sub_2372B6630(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_new();
    (*(v6 + 16))(v6, v7, 0, 0, v5);
  }

  else if ([v14 length] > 1)
  {
    v10 = [v14 length];
    v11 = v14;
    v12 = [v14 bytes];
    v13 = *(a1 + 32);
    if (v10 == 2)
    {
      v7 = objc_opt_new();
      (*(v13 + 16))(v13, v7, *v12, v12[1], 0);
    }

    else
    {
      v7 = [v14 subdataWithRange:{0, objc_msgSend(v14, "length") - 2}];
      (*(v13 + 16))(v13, v7, v12[[v14 length] - 2], v12[objc_msgSend(v14, "length") - 1], 0);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = objc_opt_new();
    v9 = [NFCError errorWithCode:102];
    (*(v8 + 16))(v8, v7, 0, 0, v9);
  }
}

void sub_2372B74D8(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 40)];
  [v4 readerSession:v2 didDetectTags:v3];
}

void sub_2372B7554(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [v4 readerSession:v2 didDetectNDEFs:v3];
}

void sub_2372B7CA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:3];
  (*(v1 + 16))(v1, v2);
}

void sub_2372B8054(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 readerSessionDidBecomeActive:*(a1 + 32)];
}

void sub_2372B87E8(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
    if (*(v2 + 24))
    {
      v3 = 3;
    }

    else
    {
      v5 = [*(v2 + 8) ndefAvailability] - 2;
      if (v5 > 2)
      {
        v3 = 1;
      }

      else
      {
        v3 = qword_2372D5240[v5];
      }
    }

    v6 = a1[6];
    v7 = [*(a1[5] + 8) ndefContainerSize];
    v8 = *(v6 + 16);

    v8(v6, v3, v7, 0);
  }

  else
  {
    v4 = a1[6];
    v9 = [NFCError errorWithCode:103];
    (*(v4 + 16))(v4, 1, 0, v9);
  }
}

void sub_2372B8A54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:103];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_2372B8AC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 readNdefMessageWithError:&v13];
  v4 = v13;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372B8BA4;
  v9[3] = &unk_278A29C60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v4;
  v12 = v6;
  v10 = v3;
  v7 = v4;
  v8 = v3;
  [v5 submitBlockOnDelegateQueue:v9];
}

void sub_2372B8D2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:103];
  (*(v1 + 16))(v1, v2);
}

void sub_2372B8D94(uint64_t a1)
{
  v2 = [*(a1 + 32) writeLockNdef];
  if (!v2)
  {
    *(*(a1 + 40) + 24) = 1;
  }

  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2372B8E60;
  v6[3] = &unk_278A29D48;
  v4 = *(a1 + 48);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 submitBlockOnDelegateQueue:v6];
}

void sub_2372B9000(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:103];
  (*(v1 + 16))(v1, v2);
}

void sub_2372B9068(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = 0;
  [v2 writeNdefMessage:v3 error:&v11];
  v4 = v11;
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372B9134;
  v8[3] = &unk_278A29D48;
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 submitBlockOnDelegateQueue:v8];
}

void sub_2372B94E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:103];
  (*(v1 + 16))(v1, v2);
}

void sub_2372B9550(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3 && (*(a1 + 56) & 1) != 0)
  {
    v3 = [*(a1 + 32) _updateNdefStatusWithSession:*(a1 + 40)];
  }

  v4 = v3;
  (*(*(a1 + 48) + 16))();
}

void sub_2372BB558(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372BB66C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NFCError errorWithCode:1];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_2372BB7E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 code] == 100)
  {

    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  v6 = v4;
  (*(*(a1 + 32) + 16))();
}

void sub_2372BB970(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = v5;
LABEL_4:
    v7 = objc_opt_new();
    goto LABEL_5;
  }

  v6 = [*(a1 + 32) _parseResponseErrorWithData:v9];
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = [v9 subdataWithRange:{1, objc_msgSend(v9, "length") - 1}];
LABEL_5:
  v8 = v7;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BBBE4(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Data block length must be greater than 0", v9, ClassName, Name, 183);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 183;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Data block length must be greater than 0", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372BBD7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BBF00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BC130(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v10, ClassName, Name, 228);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 228;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372BC2E0(uint64_t a1, void *a2, void *a3)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_new();
  }

  else
  {
    v7 = [*(a1 + 32) _parseResponseErrorWithData:v5];
    v8 = objc_opt_new();
    if (!v7)
    {
      v9 = *(a1 + 72);
      v10 = [v5 length];
      v11 = *(a1 + 56);
      if (v11 <= v10 - 1)
      {
        v24 = 0;
        v25 = (v10 - 1) / v11;
        v26 = (v9 & 0x40) >> 6;
        if ((v9 & 0x40) != 0)
        {
          v27 = 2;
        }

        else
        {
          v27 = 1;
        }

        v28 = v25 - v26;
        do
        {
          v29 = [v5 subdataWithRange:{v27, v28}];
          [v8 addObject:v29];

          v27 += v28;
          ++v24;
        }

        while (*(a1 + 56) > v24);
        v7 = 0;
      }

      else
      {
        v40 = @"TagResponseInvalidLength";
        v41[0] = MEMORY[0x277CBEC38];
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
        v7 = [NFCError errorWithCode:102 userInfo:v12];

        Logger = NFLogGetLogger();
        if (Logger)
        {
          v14 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 64));
          v18 = 45;
          if (isMetaClass)
          {
            v18 = 43;
          }

          v14(3, "%c[%{public}s %{public}s]:%i Unexpected block size of 0", v18, ClassName, Name, 249);
        }

        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v20))
          {
            v21 = 43;
          }

          else
          {
            v21 = 45;
          }

          v22 = object_getClassName(*(a1 + 32));
          v23 = sel_getName(*(a1 + 64));
          *buf = 67109890;
          v33 = v21;
          v34 = 2082;
          v35 = v22;
          v36 = 2082;
          v37 = v23;
          v38 = 1024;
          v39 = 249;
          _os_log_impl(&dword_23728C000, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected block size of 0", buf, 0x22u);
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v30 = *MEMORY[0x277D85DE8];
}

void sub_2372BC9A0(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v9, ClassName, Name, 275);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 275;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372BCB38(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Specified range length does not match the number of elements in the data block list", v9, ClassName, Name, 281);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 281;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Specified range length does not match the number of elements in the data block list", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372BCCD0(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v9, ClassName, Name, 287);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 287;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372BCE68(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Elements in the data block list are inconsistent in size", v9, ClassName, Name, 300);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 300;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Elements in the data block list are inconsistent in size", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372BD000(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BD178(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BD2EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BD470(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BD5E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BD768(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BD8A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BDAE4(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 || ([*(a1 + 32) _parseResponseErrorWithData:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  if ([v5 length] <= 9)
  {
    v20 = @"TagResponseInvalidLength";
    v21[0] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v7 = [NFCError errorWithCode:102 userInfo:v10];

    goto LABEL_4;
  }

  v8 = [v5 subdataWithRange:{2, 8}];
  v11 = [v5 bytes];
  v12 = *(v11 + 1);
  if ((v12 & 1) != 0 && [v5 length] >= 0xB)
  {
    v13 = *(v11 + 10);
    v14 = 11;
  }

  else
  {
    v14 = 10;
  }

  if ((v12 & 2) != 0 && [v5 length] > v14)
  {
    v15 = *(v11 + v14++);
  }

  if ((v12 & 4) != 0)
  {
    v16 = v14 + 1;
    if ([v5 length] > v16)
    {
      v17 = *(v11 + v14) + 1;
      v18 = (*(v11 + v16) & 0x1F) + 1;
      v14 += 2;
    }
  }

  if ((v12 & 8) != 0 && [v5 length] > v14)
  {
    v7 = 0;
    v19 = *(v11 + v14);
  }

  else
  {
    v7 = 0;
  }

LABEL_5:
  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2372BDED8(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v10, ClassName, Name, 505);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 505;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372BE088(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_new();
  }

  else
  {
    v7 = [*(a1 + 32) _parseResponseErrorWithData:v5];
    v8 = objc_opt_new();
    if (!v7)
    {
      v9 = *(a1 + 56);
      if (v9 == [v5 length] - 1)
      {
        v10 = [v5 bytes];
        if ([v5 length] >= 2)
        {
          v11 = 1;
          do
          {
            v12 = [MEMORY[0x277CCABB0] numberWithChar:*(v10 + v11)];
            [v8 addObject:v12];

            ++v11;
          }

          while ([v5 length] > v11);
        }

        v7 = 0;
      }

      else
      {
        v15 = @"TagResponseInvalidLength";
        v16[0] = MEMORY[0x277CBEC38];
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        v7 = [NFCError errorWithCode:102 userInfo:v13];
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2372BE400(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v10, ClassName, Name, 544);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 544;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372BE5B0(uint64_t a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_new();
  }

  else
  {
    v7 = [*(a1 + 32) _parseResponseErrorWithData:v5];
    v8 = objc_opt_new();
    if (!v7)
    {
      v9 = [v5 length] - 1;
      v10 = *(a1 + 56);
      if (v10 > v9 || (v11 = v9 / v10, v9 % v10))
      {
        v37 = @"TagResponseInvalidLength";
        v38[0] = MEMORY[0x277CBEC38];
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        v7 = [NFCError errorWithCode:102 userInfo:v12];

        Logger = NFLogGetLogger();
        if (Logger)
        {
          v14 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 64));
          v18 = 45;
          if (isMetaClass)
          {
            v18 = 43;
          }

          v14(3, "%c[%{public}s %{public}s]:%i Unexpected block size of 0", v18, ClassName, Name, 565);
        }

        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v20))
          {
            v21 = 43;
          }

          else
          {
            v21 = 45;
          }

          v22 = object_getClassName(*(a1 + 32));
          v23 = sel_getName(*(a1 + 64));
          *buf = 67109890;
          v30 = v21;
          v31 = 2082;
          v32 = v22;
          v33 = 2082;
          v34 = v23;
          v35 = 1024;
          v36 = 565;
          _os_log_impl(&dword_23728C000, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected block size of 0", buf, 0x22u);
        }
      }

      else
      {
        v25 = 0;
        v26 = 1;
        do
        {
          v27 = [v5 subdataWithRange:{v26, v11}];
          [v8 addObject:v27];

          v26 += v11;
          ++v25;
        }

        while (*(a1 + 56) > v25);
        v7 = 0;
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2372BEA20(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:3];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Custom command code must be between 0xA0 to 0xDF inclusively", v10, ClassName, Name, 589);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 589;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Custom command code must be between 0xA0 to 0xDF inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372BEBD0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = v5;
LABEL_4:
    v7 = objc_opt_new();
    goto LABEL_5;
  }

  v6 = [*(a1 + 32) _parseResponseErrorWithData:v9];
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = [v9 subdataWithRange:{1, objc_msgSend(v9, "length") - 1}];
LABEL_5:
  v8 = v7;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BEE2C(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v10, ClassName, Name, 625);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 625;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372BEFDC(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = v5;
LABEL_4:
    v7 = objc_opt_new();
    goto LABEL_5;
  }

  v6 = [*(a1 + 32) _parseResponseErrorWithData:v9];
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = [v9 subdataWithRange:{1, objc_msgSend(v9, "length") - 1}];
LABEL_5:
  v8 = v7;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BF2C4(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v9, ClassName, Name, 661);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 661;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372BF45C(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Data block length must be greater than 0", v9, ClassName, Name, 669);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 669;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Data block length must be greater than 0", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372BF5F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BF7FC(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v9, ClassName, Name, 698);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 698;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372BF994(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372BFBC8(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v10, ClassName, Name, 725);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 725;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372BFD78(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_new();
  }

  else
  {
    v7 = [*(a1 + 32) _parseResponseErrorWithData:v5];
    v8 = objc_opt_new();
    if (!v7)
    {
      v9 = [v5 length];
      v10 = *(a1 + 56);
      v11 = (v9 - 1) / v10;
      if ((v9 - 1) % v10)
      {
        v16 = @"TagResponseInvalidLength";
        v17[0] = MEMORY[0x277CBEC38];
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        v7 = [NFCError errorWithCode:102 userInfo:v12];
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = [v5 subdataWithRange:{v13 * v11 + 1, v11}];
          [v8 addObject:v14];

          ++v13;
        }

        while (*(a1 + 56) > v13);
        v7 = 0;
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372C0328(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v9, ClassName, Name, 769);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 769;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372C04C0(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Specified range length does not match the number of elements in the data block list", v9, ClassName, Name, 775);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 775;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Specified range length does not match the number of elements in the data block list", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372C0658(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v9, ClassName, Name, 781);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 781;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372C07F0(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [NFCError errorWithCode:4];
  (*(v2 + 16))(v2, v3);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Elements in the data block list are inconsistent in size", v9, ClassName, Name, 795);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 1024;
    v24 = 795;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Elements in the data block list are inconsistent in size", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2372C0988(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:a2];
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_2372C0B40(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:v9];
  }

  if ([v9 length] < 2)
  {
    v8 = objc_opt_new();
  }

  else
  {
    v6 = v9;
    v7 = *[v9 bytes];
    v8 = [v9 subdataWithRange:{1, objc_msgSend(v9, "length") - 1}];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2372C0D74(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:v9];
  }

  if ([v9 length] < 2)
  {
    v8 = objc_opt_new();
  }

  else
  {
    v6 = v9;
    v7 = *[v9 bytes];
    v8 = [v9 subdataWithRange:{1, objc_msgSend(v9, "length") - 1}];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2372C0FA8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 code];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2372C112C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _parseResponseErrorWithData:v9];
  }

  if ([v9 length] < 2)
  {
    v8 = objc_opt_new();
  }

  else
  {
    v6 = v9;
    v7 = *[v9 bytes];
    v8 = [v9 subdataWithRange:{1, objc_msgSend(v9, "length") - 1}];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2372C13DC(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v10, ClassName, Name, 932);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 932;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372C158C(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_new();
  }

  else
  {
    v7 = [*(a1 + 32) _parseResponseErrorWithData:v5];
    v8 = objc_opt_new();
    if (!v7)
    {
      v9 = *(a1 + 56);
      if (v9 == [v5 length] - 1)
      {
        v10 = [v5 bytes];
        if ([v5 length] >= 2)
        {
          v11 = 1;
          do
          {
            v12 = [MEMORY[0x277CCABB0] numberWithChar:*(v10 + v11)];
            [v8 addObject:v12];

            ++v11;
          }

          while ([v5 length] > v11);
        }

        v7 = 0;
      }

      else
      {
        v15 = @"TagResponseInvalidLength";
        v16[0] = MEMORY[0x277CBEC38];
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        v7 = [NFCError errorWithCode:102 userInfo:v13];
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2372C182C(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v6 = [*(a1 + 32) _parseResponseErrorWithData:v5];
  }

  v7 = [v5 bytes];
  if ([v5 length] < 2 || (*v7 & 0x40) == 0)
  {
    if (!v6)
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ([v5 length] != 3)
  {
    v11 = 0;
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_6:
    v8 = *(a1 + 48);
    v9 = objc_opt_new();
    (*(v8 + 16))(v8, v9, v6);
LABEL_7:

    goto LABEL_9;
  }

  v11 = 302000 * *(v7 + 1);
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_14:
  v12 = *(a1 + 56);
  v13 = v12 > 0;
  v14 = v12 - v13;
  if (v12 == v13)
  {
    v29 = *(a1 + 48);
    v9 = objc_opt_new();
    v30 = [NFCError errorWithCode:101];
    (*(v29 + 16))(v29, v9, v30);

    goto LABEL_7;
  }

  if (!v11)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 64));
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(4, "%c[%{public}s %{public}s]:%i Forcing minimum 20ms delay", v20, ClassName, Name, 992);
    }

    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(*(a1 + 32));
      v25 = sel_getName(*(a1 + 64));
      *buf = 67109890;
      v37 = v23;
      v38 = 2082;
      v39 = v24;
      v40 = 2082;
      v41 = v25;
      v42 = 1024;
      v43 = 992;
      _os_log_impl(&dword_23728C000, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Forcing minimum 20ms delay", buf, 0x22u);
    }

    v11 = 20000000;
  }

  v26 = [*(a1 + 32) _getInternalReaderSession];
  v27 = dispatch_time(0, v11);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2372C1B94;
  v32[3] = &unk_278A29D98;
  v28 = *(a1 + 40);
  v32[4] = *(a1 + 32);
  v33 = v28;
  v35 = v14;
  v34 = *(a1 + 48);
  [v26 submitBlockOnSessionQueueWithDelay:v27 block:v32];

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2372C1D88(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [NFCError errorWithCode:5];
  (*(v2 + 16))(v2, v3, v4);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", v10, ClassName, Name, 1020);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 1020;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Block range must be between 0 to 255 inclusively", buf, 0x22u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2372C1F38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2372C1FE0;
  v3[3] = &unk_278A2A018;
  v5 = *(a1 + 56);
  v3[4] = v1;
  v6 = *(a1 + 72);
  v4 = *(a1 + 48);
  [v1 _wtxRetryWithCommnand:v2 maxRetry:1 completionHandler:v3];
}

void sub_2372C1FE0(uint64_t a1, void *a2, void *a3)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  if (!v6)
  {
    v8 = [v5 length] - 1;
    v9 = *(a1 + 56);
    if (v9 > v8 || (v10 = v8 / v9, v8 % v9))
    {
      v36 = @"TagResponseInvalidLength";
      v37[0] = MEMORY[0x277CBEC38];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v6 = [NFCError errorWithCode:102 userInfo:v11];

      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 64));
        v17 = 45;
        if (isMetaClass)
        {
          v17 = 43;
        }

        v13(3, "%c[%{public}s %{public}s]:%i Unexpected block size of 0", v17, ClassName, Name, 1039);
      }

      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        v21 = object_getClassName(*(a1 + 32));
        v22 = sel_getName(*(a1 + 64));
        *buf = 67109890;
        v29 = v20;
        v30 = 2082;
        v31 = v21;
        v32 = 2082;
        v33 = v22;
        v34 = 1024;
        v35 = 1039;
        _os_log_impl(&dword_23728C000, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected block size of 0", buf, 0x22u);
      }
    }

    else
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = [v5 subdataWithRange:{v25, v10}];
        [v7 addObject:v26];

        v25 += v10;
        ++v24;
      }

      while (*(a1 + 56) > v24);
      v6 = 0;
    }
  }

  (*(*(a1 + 40) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2372C23A8(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
LABEL_3:
    v8 = 0;
    goto LABEL_10;
  }

  if (![v5 length])
  {
    v12 = @"TagResponseInvalidLength";
    v13[0] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [NFCError errorWithCode:102 userInfo:v10];

    goto LABEL_3;
  }

  v9 = *[v5 bytes];
  if ([v5 length] < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 subdataWithRange:{1, objc_msgSend(v5, "length") - 1}];
  }

  v7 = 0;
LABEL_10:
  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2372C2E60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:3];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_2372C2EDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 144);
    *(v4 + 144) = 0;

    objc_sync_exit(v3);
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 48) + 16);

  return v7();
}

void sub_2372C32A0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 tagReaderSessionDidBecomeActive:*(a1 + 32)];
}

void sub_2372C3848(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 40)];
  [v4 tagReaderSession:v2 didDetectTags:v3];
}

void sub_2372C3E68(uint64_t a1)
{
  v2 = _os_activity_create(&dword_23728C000, "com.apple.nfcd.vas.presenceCheckTimer", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v7 = 0;
    v5 = [WeakRetained checkPresenceWithError:&v7];
    v6 = v7;
    if (v5)
    {
      [v4[17] startTimer:0.5];
    }

    else
    {
      [v4 disconnectTagWithError:0];
      [v4 restartPolling];
    }
  }
}

void sub_2372C44E4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 readerSessionDidBecomeActive:*(a1 + 32)];
}

uint64_t sub_2372C471C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2372C4744(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_2372C4D00(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) connectTag:*(a1 + 40) error:0])
  {
    v2 = objc_opt_new();
    if ([*(*(a1 + 32) + 144) count])
    {
      v3 = 0;
      do
      {
        v4 = [*(*(a1 + 32) + 144) objectAtIndex:v3];
        v5 = [*(a1 + 32) _convertVASConfigToInternalRequest:v4];
        [v2 addObject:v5];

        ++v3;
      }

      while ([*(*(a1 + 32) + 144) count] > v3);
    }

    v6 = objc_opt_new();
    v7 = *(a1 + 32);
    v36 = 0;
    v8 = [v7 _sendVASRequests:v2 error:&v36];
    v9 = v36;
    if (v8)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v45 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v33;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v33 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(a1 + 32) _convertVASResponseToExternal:*(*(&v32 + 1) + 8 * i)];
            [v6 addObject:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v32 objects:v45 count:16];
        }

        while (v12);
      }
    }

    if ([v6 count])
    {
      v16 = *(a1 + 32);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_2372C509C;
      v30[3] = &unk_278A29E60;
      v30[4] = v16;
      v31 = v6;
      [v16 submitBlockOnDelegateQueue:v30];
    }

    [*(*(a1 + 32) + 136) startTimer:0.5];
  }

  else
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v18 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v22 = 45;
      if (isMetaClass)
      {
        v22 = 43;
      }

      v18(4, "%c[%{public}s %{public}s]:%i Restart polling", v22, ClassName, Name, 292);
    }

    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(*(a1 + 32));
      v27 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v38 = v25;
      v39 = 2082;
      v40 = v26;
      v41 = 2082;
      v42 = v27;
      v43 = 1024;
      v44 = 292;
      _os_log_impl(&dword_23728C000, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Restart polling", buf, 0x22u);
    }

    [*(a1 + 32) restartPolling];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2372C509C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 readerSession:*(a1 + 32) didReceiveVASResponses:*(a1 + 40)];
}

NFCNDEFMessage *sub_2372C5144(void *a1, const char *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = [a1 _payloadForIdentifier:@"com.apple.corenfc.useractivity.ndefmessagepayload"];
  v23 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v23];
  v6 = v23;
  if (v6)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Unarchive error: %@", v11, ClassName, Name, 29, v6);
    }

    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(a1);
      v16 = sel_getName(a2);
      *buf = 67110146;
      v25 = v14;
      v26 = 2082;
      v27 = v15;
      v28 = 2082;
      v29 = v16;
      v30 = 1024;
      v31 = 29;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_23728C000, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unarchive error: %@", buf, 0x2Cu);
    }

    v17 = [[NFCNDEFMessage alloc] initWithEmptyNdefMessage];
  }

  else
  {
    v17 = v5;
  }

  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void sub_2372C5364(void *a1, const char *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v30];
    v7 = v30;
    if (v7)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName(a2);
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(3, "%c[%{public}s %{public}s]:%i Archive error: %@", v12, ClassName, Name, 56, v7);
      }

      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = object_getClass(a1);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        v16 = object_getClassName(a1);
        v17 = sel_getName(a2);
        *buf = 67110146;
        v32 = v15;
        v33 = 2082;
        v34 = v16;
        v35 = 2082;
        v36 = v17;
        v37 = 1024;
        v38 = 56;
        v39 = 2112;
        v40 = v7;
        _os_log_impl(&dword_23728C000, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Archive error: %@", buf, 0x2Cu);
      }
    }

    else
    {
      [a1 _setPayload:v6 object:0 identifier:@"com.apple.corenfc.useractivity.ndefmessagepayload" dirty:0];
    }
  }

  else
  {
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(a1);
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(a1);
      v29 = sel_getName(a2);
      v23 = 45;
      if (v21)
      {
        v23 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Unexpected class type for the message", v23, v22, v29, 47);
    }

    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(a1);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      *buf = 67109890;
      v32 = v25;
      v33 = 2082;
      v34 = object_getClassName(a1);
      v35 = 2082;
      v36 = sel_getName(a2);
      v37 = 1024;
      v38 = 47;
      _os_log_impl(&dword_23728C000, v7, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected class type for the message", buf, 0x22u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2372C568C()
{
  objc_opt_self();
  v0 = MEMORY[0x277CCAE90];

  return [v0 interfaceWithProtocol:&unk_284A59E88];
}

uint64_t sub_2372C56C4()
{
  objc_opt_self();
  v0 = MEMORY[0x277CCAE90];

  return [v0 interfaceWithProtocol:&unk_284A553A8];
}

void sub_2372C598C(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(4, "%c[%{public}s %{public}s]:%i XPC error: %@", v8, ClassName, Name, 99, v3);
  }

  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v18 = v11;
    v19 = 2082;
    v20 = v12;
    v21 = 2082;
    v22 = v13;
    v23 = 1024;
    v24 = 99;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_23728C000, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error: %@", buf, 0x2Cu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2372C5B14(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    if (v3)
    {
      v10 = @"no error";
    }

    else
    {
      v10 = 0;
    }

    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i %@", v11, ClassName, Name, 101, v10);
  }

  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    if (v3)
    {
      v17 = @"no error";
    }

    else
    {
      v17 = 0;
    }

    v20 = v14;
    v21 = 2082;
    v22 = v15;
    v23 = 2082;
    v24 = v16;
    v25 = 1024;
    v26 = 101;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&dword_23728C000, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2372C5FDC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 readerSessionDidBecomeActive:*(a1 + 32)];
}

uint64_t sub_2372C6170(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 code];
  v5 = [v3 domain];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if (v4 <= 0x20 && ((1 << v4) & 0x100000500) != 0)
    {
      v4 = 2;
    }

    else if ([*(a1 + 32) code] == 2)
    {
      v4 = 203;
    }

    else
    {
      v4 = 202;
    }
  }

  v8 = *(a1 + 40);

  return [v8 _invalidateSessionWithCode:v4 message:0 finalUIState:0 activateCallback:1];
}

void sub_2372C625C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[13];
  v4 = v2[14];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2372C6304;
  v6[3] = &unk_278A2A2F8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _startPollingWithMethod:v3 sessionConfig:v4 completionHandler:v6];
}

uint64_t sub_2372C6304(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    v7 = *(a1 + 32);
    if (*(v7 + 40) == 2)
    {
      *(v7 + 40) = 3;
    }

    objc_sync_exit(v6);

    v8 = *(a1 + 32);

    return MEMORY[0x2821F9670](v8, sel__callbackDidBecomeActive);
  }
}

void sub_2372C8068(uint64_t a1)
{
  v2 = [*(a1 + 32) hardwareManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2372C8124;
  v5[3] = &unk_278A2A348;
  v5[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 areFeaturesSupported:1 expiry:v5 completion:30.0];
}

void sub_2372C8124(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    v5[5] = 1;
    [*(a1 + 32) _resumeDelegateQueue];
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v21 = [v4 code];
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i error:%@, errorCode: 0x%lx", v12, ClassName, Name, 453, v4, v21);
    }

    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(*(a1 + 32));
      v17 = sel_getName(*(a1 + 48));
      *buf = 67110402;
      v25 = v15;
      v26 = 2082;
      v27 = v16;
      v28 = 2082;
      v29 = v17;
      v30 = 1024;
      v31 = 453;
      v32 = 2112;
      v33 = v4;
      v34 = 2048;
      v35 = [v4 code];
      _os_log_impl(&dword_23728C000, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error:%@, errorCode: 0x%lx", buf, 0x36u);
    }

    [*(a1 + 32) _invalidateSessionAndActivateCallbackWithCode:{objc_msgSend(v4, "code")}];
  }

  else
  {
    v18 = [v5 hardwareManager];
    v19 = *(a1 + 40);
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    [v18 queueReaderSession:? sessionConfig:? completionHandler:?];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2372C836C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  *(*(a1 + 32) + 40) = 1;
  [*(a1 + 32) _resumeDelegateQueue];
  if (v11)
  {
    v12 = [v11 domain];
    v13 = [v12 isEqualToString:@"NFCError"];

    if (v13)
    {
      v14 = [v11 code];
    }

    else
    {
      v17 = [v11 domain];
      v18 = [v17 isEqualToString:*MEMORY[0x277CCA050]];

      if (v18)
      {
        v14 = 202;
      }

      else
      {
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v20 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 40));
          v24 = 45;
          if (isMetaClass)
          {
            v24 = 43;
          }

          v20(4, "%c[%{public}s %{public}s]:%i Unexpected error type", v24, ClassName, Name, 472);
        }

        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v26))
          {
            v27 = 43;
          }

          else
          {
            v27 = 45;
          }

          v28 = object_getClassName(*(a1 + 32));
          v29 = sel_getName(*(a1 + 40));
          *buf = 67109890;
          v45 = v27;
          v46 = 2082;
          v47 = v28;
          v48 = 2082;
          v49 = v29;
          v50 = 1024;
          v51 = 472;
          _os_log_impl(&dword_23728C000, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected error type", buf, 0x22u);
        }

        v14 = 1;
      }
    }

    v30 = NFLogGetLogger();
    if (v30)
    {
      v31 = v30;
      v32 = object_getClass(*(a1 + 32));
      v33 = class_isMetaClass(v32);
      v34 = object_getClassName(*(a1 + 32));
      v43 = sel_getName(*(a1 + 40));
      v35 = 45;
      if (v33)
      {
        v35 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i error:%@, errorCode: 0x%lx", v35, v34, v43, 474, v11, v14);
    }

    v36 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v37))
      {
        v38 = 43;
      }

      else
      {
        v38 = 45;
      }

      v39 = object_getClassName(*(a1 + 32));
      v40 = sel_getName(*(a1 + 40));
      *buf = 67110402;
      v45 = v38;
      v46 = 2082;
      v47 = v39;
      v48 = 2082;
      v49 = v40;
      v50 = 1024;
      v51 = 474;
      v52 = 2112;
      v53 = v11;
      v54 = 2048;
      v55 = v14;
      _os_log_impl(&dword_23728C000, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error:%@, errorCode: 0x%lx", buf, 0x36u);
    }

    [*(a1 + 32) _invalidateSessionAndActivateCallbackWithCode:v14];
  }

  else
  {
    v15 = *(a1 + 32);
    objc_sync_enter(v15);
    objc_storeStrong((*(a1 + 32) + 32), a2);
    objc_storeStrong((*(a1 + 32) + 88), a4);
    v16 = [*(a1 + 32) hardwareManager];
    [v16 addNFCHardwareManagerCallbacksListener:*(a1 + 32)];

    objc_sync_exit(v15);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void sub_2372C9268(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NFCError errorWithCode:103];
  (*(v1 + 16))(v1, v2);
}

void sub_2372C92D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = 0;
  [v2 connectTag:v3 error:&v11];
  v4 = v11;
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372C939C;
  v8[3] = &unk_278A29D48;
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 submitBlockOnDelegateQueue:v8];
}

uint64_t sub_2372C9BDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2372C9C04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_2372CAC00(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v17 = v8;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
  v14 = v9;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v7;
}

uint64_t sub_2372CAD40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2372CADB0;
  v3[3] = &unk_278A2A3E8;
  v3[4] = v1;
  return [v1 _restartPollingWithCompletionHandler:v3];
}

uint64_t sub_2372CADB0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _invalidateSessionWithCode:202];
  }

  return result;
}

void sub_2372CB260(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 readerSession:*(a1 + 32) didInvalidateWithError:*(a1 + 40)];
}

void sub_2372CB2B4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 tagReaderSession:*(a1 + 32) didInvalidateWithError:*(a1 + 40)];
}

void sub_2372CB308(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 readerSession:*(a1 + 32) didInvalidateWithError:*(a1 + 40)];
}

void sub_2372CB35C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 readerSession:*(a1 + 32) didInvalidateWithError:*(a1 + 40)];
}

void sub_2372CB8CC(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(4, "%c[%{public}s %{public}s]:%i XPC error: %@", v8, ClassName, Name, 983, v3);
  }

  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v18 = v11;
    v19 = 2082;
    v20 = v12;
    v21 = 2082;
    v22 = v13;
    v23 = 1024;
    v24 = 983;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_23728C000, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error: %@", buf, 0x2Cu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2372CBA54(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i %@", v8, ClassName, Name, 985, v3);
    }

    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v18 = v11;
      v19 = 2082;
      v20 = v12;
      v21 = 2082;
      v22 = v13;
      v23 = 1024;
      v24 = 985;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_23728C000, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2372CBBE0(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(4, "%c[%{public}s %{public}s]:%i XPC error: %@", v8, ClassName, Name, 996, v3);
  }

  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v18 = v11;
    v19 = 2082;
    v20 = v12;
    v21 = 2082;
    v22 = v13;
    v23 = 1024;
    v24 = 996;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_23728C000, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error: %@", buf, 0x2Cu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2372CBD68(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i %@", v8, ClassName, Name, 998, v3);
    }

    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v18 = v11;
      v19 = 2082;
      v20 = v12;
      v21 = 2082;
      v22 = v13;
      v23 = 1024;
      v24 = 998;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_23728C000, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2372CC210(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a4);
  if (!v9)
  {
    if ((a2 - 1) <= 3)
    {
      *(*(a1[5] + 8) + 24) = a2;
    }

    v8 = a1[6];
    if (v8)
    {
      *v8 = a3;
    }
  }
}

void sub_2372CC518(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  if (v11)
  {
    v7 = [NFCError errorWithNFCDError:v11 defaultNFCErrorCode:104];
LABEL_3:
    v8 = 32;
    goto LABEL_6;
  }

  if (!v5)
  {
    v7 = [NFCError errorWithCode:403];
    goto LABEL_3;
  }

  v7 = [[NFCNDEFMessage alloc] initWithNFNdefMessage:v5];
  v8 = 40;
LABEL_6:
  v9 = *(*(a1 + v8) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

uint64_t sub_2372CCA10(uint64_t a1, uint64_t a2)
{
  v3 = [NFCError errorWithNFCDError:a2 defaultNFCErrorCode:401];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void sub_2372CD070(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [v4 readerSession:v2 didDetectTags:v3];
}

uint64_t sub_2372CD20C()
{
  qword_27DE9A3D0 = objc_alloc_init(NFCHardwareManager);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2372CD430(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x2821F9670](*(a1[4] + 24), sel_setObject_forKey_);
}

void sub_2372CD59C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithInteger:0];
  (*(v2 + 16))(v2, 0, 0, v5, v4);
}

void sub_2372CD628(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = [v7 domain];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    if ([v7 code] == 36)
    {
      [v7 localizedDescription];
      v25 = [objc_claimAutoreleasedReturnValue() UTF8String];
      sub_2372CD984(v25);
    }

    if ([v7 code] == 14)
    {
      v11 = 1;
    }

    else
    {
      if ([v7 code] != 58 && objc_msgSend(v7, "code") != 47)
      {
        if ([v7 code] == 10)
        {
          v11 = 3;
          goto LABEL_8;
        }

        if ([v7 code] == 50)
        {
          v11 = 6;
          goto LABEL_8;
        }

        if ([v7 code] != 2)
        {
          if ([v7 code] == 8 || objc_msgSend(v7, "code") == 32)
          {
            v11 = 2;
          }

          else if ([v7 code] == 70)
          {
            v11 = 7;
          }

          else if ([v7 code] == 74)
          {
            v11 = 8;
          }

          else if ([v7 code] == 69)
          {
            v11 = 8;
          }

          else
          {
            v11 = 202;
          }

          goto LABEL_8;
        }
      }

      v11 = 203;
    }

LABEL_8:
    v12 = [NFCError errorWithCode:v11];

    v7 = v12;
  }

  if (v7)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v17, ClassName, Name, 133, v7);
    }

    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(*(a1 + 32));
      v22 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v29 = v20;
      v30 = 2082;
      v31 = v21;
      v32 = 2082;
      v33 = v22;
      v34 = 1024;
      v35 = 133;
      v36 = 2114;
      v37 = v7;
      _os_log_impl(&dword_23728C000, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error=%{public}@", buf, 0x2Cu);
    }

    v23 = 0;
  }

  else
  {
    v23 = [*(a1 + 32) _queueSession:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2372CDAF4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithInteger:0];
  (*(v2 + 16))(v2, 0, 0, v5, v4);
}

void sub_2372CDB80(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = [v7 domain];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
  v10 = [v8 isEqualToString:v9];

  if (v10 && [v7 code] == 36)
  {
    [v7 localizedDescription];
    v23 = [objc_claimAutoreleasedReturnValue() UTF8String];
    sub_2372CD984(v23);
  }

  if (v7)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v15, ClassName, Name, 165, v7);
    }

    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      v19 = object_getClassName(*(a1 + 32));
      v20 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v27 = v18;
      v28 = 2082;
      v29 = v19;
      v30 = 2082;
      v31 = v20;
      v32 = 1024;
      v33 = 165;
      v34 = 2114;
      v35 = v7;
      _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error=%{public}@", buf, 0x2Cu);
    }

    v21 = 0;
  }

  else
  {
    v21 = [*(a1 + 32) _queueSession:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2372CDF2C(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = a2;
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v11, ClassName, Name, 188, v5);
    }

    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v24 = v14;
      v25 = 2082;
      v26 = v15;
      v27 = 2082;
      v28 = v16;
      v29 = 1024;
      v30 = 188;
      v31 = 2114;
      v32 = v5;
      _os_log_impl(&dword_23728C000, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error=%{public}@", buf, 0x2Cu);
    }
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = a2;
    v12 = [v17 _queueSession:v18];
  }

  (*(*(a1 + 48) + 16))();
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2372CE59C(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v10, ClassName, Name, 221, v5);
    }

    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(*(a1 + 32));
      v15 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v28 = v13;
      v29 = 2082;
      v30 = v14;
      v31 = 2082;
      v32 = v15;
      v33 = 1024;
      v34 = 221;
      v35 = 2114;
      v36 = v5;
      _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error=%{public}@", buf, 0x2Cu);
    }

    v16 = 0;
  }

  else
  {
    v17 = [NFCPresentmentSuppression assertionWithAssertion:a2 delegate:*(a1 + 32)];
    v18 = *(a1 + 32);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2372CE810;
    v24[3] = &unk_278A2A460;
    v24[4] = v18;
    v16 = v17;
    v25 = v16;
    v26 = *(a1 + 40);
    os_unfair_lock_lock(v18 + 11);
    sub_2372CE810(v24);
    os_unfair_lock_unlock(v18 + 11);
  }

  v19 = *(a1 + 48);
  v20 = [v16 externalHandle];
  (*(v19 + 16))(v19, v20, v5);

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2372CE810(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  objc_storeWeak((*(a1 + 32) + 56), *(a1 + 48));
  v2 = *(*(a1 + 32) + 48);

  return MEMORY[0x2821F9670](v2, sel_startAssertion_);
}

uint64_t sub_2372CED60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_2372CED78(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) externalHandle];
  v3 = [v2 isEqualToNumber:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 48) assertion];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = 0;
  }

  else
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Invalid handle", v13, ClassName, Name, 246);
    }

    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(*(a1 + 32));
      v18 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v31 = v16;
      v32 = 2082;
      v33 = v17;
      v34 = 2082;
      v35 = v18;
      v36 = 1024;
      v37 = 246;
      _os_log_impl(&dword_23728C000, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid handle", buf, 0x22u);
    }

    v19 = objc_alloc(MEMORY[0x277CCA9B8]);
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
    v28[0] = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v29[0] = v21;
    v29[1] = &unk_284A53E60;
    v28[1] = @"Line";
    v28[2] = @"Method";
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v29[2] = v22;
    v28[3] = *MEMORY[0x277CCA068];
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 247];
    v29[3] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
    v7 = [v19 initWithDomain:v20 code:10 userInfo:v24];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_2372CF098(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v8, ClassName, Name, 266, v3);
    }

    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v20 = v11;
      v21 = 2082;
      v22 = v12;
      v23 = 2082;
      v24 = v13;
      v25 = 1024;
      v26 = 266;
      v27 = 2114;
      v28 = v3;
      _os_log_impl(&dword_23728C000, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error=%{public}@", buf, 0x2Cu);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2372CF2A4;
    v18[3] = &unk_278A29F00;
    v18[4] = v14;
    os_unfair_lock_lock(v14 + 11);
    sub_2372CF2A4(v18);
    os_unfair_lock_unlock(v14 + 11);
  }

  (*(*(a1 + 40) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2372CF3D4(uint64_t a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 32) + 16);
  }

  else if (a2 >= 3)
  {
    if (a2 != 3)
    {
      goto LABEL_8;
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
  }

  v5();
LABEL_8:

  return MEMORY[0x2821F9730]();
}

void sub_2372CF520(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allKeysForObject:*(a1 + 40)];
  [*(*(a1 + 32) + 24) removeObjectsForKeys:v2];
}

void sub_2372CFBF0(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

uint64_t sub_2372D01AC(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2372D055C(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 56), 0);
  v2 = [*(*(a1 + 32) + 48) externalHandle];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void sub_2372D05BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2372D0648;
  v2[3] = &unk_278A29F00;
  v2[4] = v1;
  os_unfair_lock_lock(v1 + 11);
  sub_2372D0648(v2);
  os_unfair_lock_unlock(v1 + 11);
}

void sub_2372D0648(uint64_t a1)
{
  [*(*(a1 + 32) + 48) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

uint64_t sub_2372D090C(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 56));
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  [*(a1[4] + 48) startCooldown:15.0];
  v5 = [*(a1[4] + 48) assertion];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

void sub_2372D098C(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%@", v8, ClassName, Name, 517, v3);
  }

  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v18 = v11;
    v19 = 2082;
    v20 = v12;
    v21 = 2082;
    v22 = v13;
    v23 = 1024;
    v24 = 517;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_23728C000, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%@", buf, 0x2Cu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2372D0B14(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i De-assert error=%@", v8, ClassName, Name, 520, v3);
    }

    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v18 = v11;
      v19 = 2082;
      v20 = v12;
      v21 = 2082;
      v22 = v13;
      v23 = 1024;
      v24 = 520;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_23728C000, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i De-assert error=%@", buf, 0x2Cu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2372D0ED8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}