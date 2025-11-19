uint64_t sub_2400E1218()
{
  v1 = *(v0 + 24);
  sub_2400E53FC();
  v2 = sub_2400E545C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_2400E12B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _AsyncKVOSequenceProtocol<>.changes<A>(for:options:bufferingPolicy:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  sub_2400E53FC();
  v8 = sub_2400E543C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14[-v11];
  swift_checkMetadataState();
  (*(v9 + 16))(v12, a3, v8);
  v15 = v3;
  v16 = a1;
  v17 = a2;
  return sub_2400E546C();
}

uint64_t sub_2400E14BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v19[0] = a4;
  v6 = *a3;
  v7 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  sub_2400E53FC();
  v8 = sub_2400E545C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  v19[1] = a2;
  (*(v9 + 16))(v19 - v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = *(v6 + *MEMORY[0x277D84DE8]);
  *(v14 + 16) = v15;
  *(v14 + 24) = v7;
  (*(v9 + 32))(v14 + v13, v12, v8);
  v16 = sub_2400E540C();

  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v7;
  v17[4] = v16;
  return sub_2400E542C();
}

uint64_t sub_2400E16D4(uint64_t a1)
{
  v2 = sub_2400E53FC();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = sub_2400E541C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v13 - v10;
  (*(v3 + 16))(v6, a1, v2);
  sub_2400E545C();
  sub_2400E544C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2400E1854(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  sub_2400E53FC();
  v5 = *(*(sub_2400E545C() - 8) + 80);

  return sub_2400E16D4(a2);
}

id ASFLogHandleForCategory()
{
  if (ASFLogHandleForCategory_onceToken != -1)
  {
    dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
  }

  v1 = ASFLogHandleForCategory_logHandles_0;

  return v1;
}

id _readStringDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCA968];
    v2 = a1;
    v3 = objc_alloc_init(v1);
    v4 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [v3 setLocale:v4];
    [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    v5 = [v3 dateFromString:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __ASFLogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.appstorefoundation", "Default");
  v1 = ASFLogHandleForCategory_logHandles_0;
  ASFLogHandleForCategory_logHandles_0 = v0;

  ASFLogHandleForCategory_logHandles_1 = os_log_create("com.apple.appstorefoundation", "Signpost");

  return MEMORY[0x2821F96F8]();
}

void sub_2400E4E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __readIdentifier_block_invoke(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a4)
  {
    **(result + 40) = *a2 >> 6;
    if ((~*a2 & 0x1F) != 0)
    {
      **(result + 48) = 1;
      v5 = *a2 & 0x1F;
    }

    else
    {
      v5 = 0xFFFFLL;
    }

    *(*(*(result + 32) + 8) + 24) = v5;
  }

  *a5 = 1;
  return result;
}

void __readLength_block_invoke(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      **(a1 + 40) = 1;
      v6 = *a2;
LABEL_4:
      *(*(*(a1 + 32) + 8) + 24) = v6;
      goto LABEL_18;
    }

    v7 = *a2 & 0x7F;
    if (a4 <= v7)
    {
      **(a1 + 40) = 1;
      *(*(*(a1 + 32) + 8) + 24) = 0;
      goto LABEL_18;
    }

    if (v7 <= 8)
    {
      if (v7)
      {
        v8 = 0;
        v6 = 0;
        do
        {
          if (v8)
          {
            v6 <<= 8;
          }

          v6 |= a2[++v8];
        }

        while (v7 != v8);
      }

      else
      {
        v6 = 0;
      }

      **(a1 + 40) = (v7 + 1);
      goto LABEL_4;
    }

    if (ASFLogHandleForCategory_onceToken_0 != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken_0, &__block_literal_global_0);
    }

    v9 = ASFLogHandleForCategory_logHandles_0_0;
    if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0_0, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = v7;
      _os_log_error_impl(&dword_2400E0000, v9, OS_LOG_TYPE_ERROR, "Byte count would result in overflow: %d", v11, 8u);
    }
  }

LABEL_18:
  *a5 = 1;
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __ASFLogHandleForCategory_block_invoke_0()
{
  v0 = os_log_create("com.apple.appstorefoundation", "Default");
  v1 = ASFLogHandleForCategory_logHandles_0_0;
  ASFLogHandleForCategory_logHandles_0_0 = v0;

  ASFLogHandleForCategory_logHandles_1_0 = os_log_create("com.apple.appstorefoundation", "Signpost");

  return MEMORY[0x2821F96F8]();
}