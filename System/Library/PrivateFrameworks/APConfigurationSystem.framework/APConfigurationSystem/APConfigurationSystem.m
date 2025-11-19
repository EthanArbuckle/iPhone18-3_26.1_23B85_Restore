unint64_t sub_1CA1CF5B8(uint64_t a1)
{
  *(a1 + 8) = sub_1CA1CF5E8();
  result = sub_1CA1CF63C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CA1CF5E8()
{
  result = qword_1EDC0D978;
  if (!qword_1EDC0D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D978);
  }

  return result;
}

unint64_t sub_1CA1CF63C()
{
  result = qword_1EDC0D980;
  if (!qword_1EDC0D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D980);
  }

  return result;
}

uint64_t sub_1CA1CF6B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ConfigurableJSONSource.init(path:dataProvider:)(uint64_t *a1, uint64_t *a2)
{
  sub_1CA1CF7F0(a1, v2 + 16);
  sub_1CA1CF7F0(a2, v12);
  sub_1CA1CF7F0(v12, v11);
  v9 = &type metadata for ConfigurationNodeReader;
  v10 = &protocol witness table for ConfigurationNodeReader;
  v5 = swift_allocObject();
  *&v8 = v5;
  *(v5 + 40) = &type metadata for ConfigurationDirectoryURLBuilder;
  *(v5 + 48) = &protocol witness table for ConfigurationDirectoryURLBuilder;
  *(v5 + 16) = 0;
  sub_1CA1CF854(a2);
  sub_1CA1CF854(a1);
  sub_1CA1CF854(v12);
  type metadata accessor for ConfigurationJSONProvider();
  v6 = swift_allocObject();
  sub_1CA1CF6B4(v11, v6 + 16);
  sub_1CA1CF6B4(&v8, v6 + 56);
  *(v2 + 56) = v6;
  return v2;
}

uint64_t sub_1CA1CF7B8()
{
  sub_1CA1CF854((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA1CF7F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CA1CF854(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t ConfigurationJSONProvider.__deallocating_deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t ConfigurableJSONSource.__deallocating_deinit()
{
  sub_1CA1CF854((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1CA1CFA50(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1EDC0DE98 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1CA1CFBEC()
{
  sub_1CA1CF854((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA1CFC2C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1CA1CFC70()
{
  sub_1CA1CF854((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1CA1D31B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_cancelled(*(a1 + 32), a2, a3))
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CA1CE000, v6, OS_LOG_TYPE_INFO, "Request was cancelled and data task is not created.", buf, 2u);
    }

    objc_msgSend__runCompletionHandlerWithSuccess_data_(*(a1 + 32), v7, 0, 0);
    v8 = *(a1 + 32);
    v11 = objc_msgSend__configurationVersion(v8, v9, v10);
    objc_msgSend__sendCoreAnalyticsWithUpdateStatus_version_(v8, v12, 1513, v11);
  }

  else
  {
    v13 = objc_msgSend__configurationServerURL(*(a1 + 32), v4, v5);
    v16 = objc_msgSend_sharedAPNetworkClient(MEMORY[0x1E69861B0], v14, v15);
    v19 = objc_msgSend_temporarySessionForDaemon(v16, v17, v18);

    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_msgSend_absoluteString(v13, v21, v22);
      *buf = 138543362;
      v36 = v23;
      _os_log_impl(&dword_1CA1CE000, v20, OS_LOG_TYPE_DEFAULT, "Starting request to: %{public}@.", buf, 0xCu);
    }

    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = sub_1CA1D33C0;
    v32 = &unk_1E8368C70;
    v33 = *(a1 + 32);
    v34 = v19;
    v24 = v19;
    v26 = objc_msgSend_GET_headers_withCompletionHandler_(v24, v25, v13, 0, &v29);
    objc_msgSend_setSessionDataTask_(*(a1 + 32), v27, v26, v29, v30, v31, v32, v33);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1CA1D33C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_responseQueue(*(a1 + 32), v4, v5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1CA1D3488;
  block[3] = &unk_1E8368C48;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, block);
}

void sub_1CA1D3520(uint64_t a1)
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CA1CE000, v2, OS_LOG_TYPE_DEFAULT, "Config System Request: Canceling request.", buf, 2u);
  }

  objc_msgSend_setCancelled_(*(a1 + 32), v3, 1);
  v6 = objc_msgSend_sessionDataTask(*(a1 + 32), v4, v5);
  if (v6)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1CA1CE000, v7, OS_LOG_TYPE_INFO, "Config System Request: Data task canceled.", v10, 2u);
    }

    objc_msgSend_cancel(v6, v8, v9);
  }
}

void sub_1CA1D56A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v9 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1D56E8(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_datasource(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_subdirectoriesAtURL_(v6, v7, v3);

  v10 = objc_msgSend__versionInDirectoryWithURLs_(*(a1 + 32), v9, v8);
  v13 = v10;
  if (v10)
  {
    v14 = *(*(*(a1 + 40) + 8) + 24);
    v15 = objc_msgSend_integerValue(v10, v11, v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    *(*(*(a1 + 40) + 8) + 24) = v16;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v8;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v27, v31, 16);
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
          WeakRetained[2](WeakRetained, v23);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v25, &v27, v31, 16);
      }

      while (v20);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1CA1D5C3C()
{
  result = qword_1EDC0D5F8;
  if (!qword_1EDC0D5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC0D5F8);
  }

  return result;
}

uint64_t sub_1CA1D5C88@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_1CA1DD560();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA1DD5B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  (MEMORY[0x1EEE9AC00])();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_1CA1D66A0(&qword_1EC43CC78, &qword_1CA1DEE30) - 8) + 64);
  v13 = (MEMORY[0x1EEE9AC00])();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR___APConfigurationStorefrontValidator____lazy_storage___url;
  swift_beginAccess();
  sub_1CA1D765C(v1 + v18, v17);
  if ((*(v8 + 48))(v17, 1, v7) != 1)
  {
    return (*(v8 + 32))(v26, v17, v7);
  }

  sub_1CA1D754C(v17);
  v19 = *(v1 + OBJC_IVAR___APConfigurationStorefrontValidator_configurationPath);
  v20 = *(v1 + OBJC_IVAR___APConfigurationStorefrontValidator_configurationPath + 8);
  sub_1CA1DD570();
  strcpy(v27, "Storefront.txt");
  v27[15] = -18;
  (*(v3 + 104))(v6, *MEMORY[0x1E6968F70], v2);
  sub_1CA1D664C();
  v21 = v2;
  v22 = v26;
  v25 = v1;
  sub_1CA1DD5A0();
  (*(v3 + 8))(v6, v21);
  (*(v8 + 8))(v11, v7);
  (*(v8 + 16))(v15, v22, v7);
  (*(v8 + 56))(v15, 0, 1, v7);
  v23 = v25;
  swift_beginAccess();
  sub_1CA1D76CC(v15, v23 + v18);
  return swift_endAccess();
}

id ConfigurationStorefrontValidator.__allocating_init(storefront:configurationPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___APConfigurationStorefrontValidator____lazy_storage___url;
  v11 = sub_1CA1DD5B0();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = &v9[OBJC_IVAR___APConfigurationStorefrontValidator_storefront];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v9[OBJC_IVAR___APConfigurationStorefrontValidator_configurationPath];
  *v13 = a3;
  *(v13 + 1) = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

id ConfigurationStorefrontValidator.init(storefront:configurationPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___APConfigurationStorefrontValidator____lazy_storage___url;
  v10 = sub_1CA1DD5B0();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR___APConfigurationStorefrontValidator_storefront];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[OBJC_IVAR___APConfigurationStorefrontValidator_configurationPath];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ConfigurationStorefrontValidator();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t type metadata accessor for ConfigurationStorefrontValidator()
{
  result = qword_1EC43CC60;
  if (!qword_1EC43CC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA1D62A4()
{
  v1 = sub_1CA1DD750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA1DD5B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR___APConfigurationStorefrontValidator_storefront);
  v11 = *(v0 + OBJC_IVAR___APConfigurationStorefrontValidator_storefront + 8);
  v18[0] = v12;
  v18[1] = v11;

  sub_1CA1D5C88(v10);
  sub_1CA1DD740();
  sub_1CA1D664C();
  sub_1CA1DD7E0();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);

  v13 = sub_1CA1DD7A0();
  sub_1CA1D75B4(0, &qword_1EDC0D5F8, 0x1E69E9BF8);
  v14 = sub_1CA1DD7C0();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1CA1D6E14(v12, v11, v18);
    _os_log_impl(&dword_1CA1CE000, v14, v13, "[ConfigurationStorefrontValidator] Storefront: %{public}s saved to filesystem.", v15, 0xCu);
    sub_1CA1CF854(v16);
    MEMORY[0x1CCA9BA70](v16, -1, -1);
    MEMORY[0x1CCA9BA70](v15, -1, -1);
  }
}

unint64_t sub_1CA1D664C()
{
  result = qword_1EDC0D600;
  if (!qword_1EDC0D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D600);
  }

  return result;
}

uint64_t sub_1CA1D66A0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1CA1D6730()
{
  v1 = sub_1CA1D6828();
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v1 == *(v0 + OBJC_IVAR___APConfigurationStorefrontValidator_storefront) && v2 == *(v0 + OBJC_IVAR___APConfigurationStorefrontValidator_storefront + 8))
  {

LABEL_8:
    v5 = 0;
    return v5 & 1;
  }

  v4 = sub_1CA1DD8D0();

  v5 = v4 ^ 1;
  return v5 & 1;
}

uint64_t sub_1CA1D6828()
{
  v0 = sub_1CA1DD750();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1CA1DD5B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA1D5C88(v6);
  sub_1CA1DD740();
  v7 = sub_1CA1DD710();
  v9 = v8;
  v10 = v7;
  (*(v3 + 8))(v6, v2);
  v11 = sub_1CA1DD7A0();
  sub_1CA1D75B4(0, &qword_1EDC0D5F8, 0x1E69E9BF8);
  v12 = sub_1CA1DD7C0();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1CA1D6E14(v10, v9, &v17);
    _os_log_impl(&dword_1CA1CE000, v12, v11, "[ConfigurationStorefrontValidator] Old storefront: %{public}s", v13, 0xCu);
    sub_1CA1CF854(v14);
    MEMORY[0x1CCA9BA70](v14, -1, -1);
    MEMORY[0x1CCA9BA70](v13, -1, -1);
  }

  return v10;
}

id ConfigurationStorefrontValidator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConfigurationStorefrontValidator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurationStorefrontValidator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA1D6E14(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CA1D6EE0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1CA1D75FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1CA1CF854(v11);
  return v7;
}

unint64_t sub_1CA1D6EE0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1CA1D6FEC(a5, a6);
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
    result = sub_1CA1DD840();
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

uint64_t sub_1CA1D6FEC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CA1D7038(a1, a2);
  sub_1CA1D7168(&unk_1F49DA528);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1CA1D7038(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CA1D7254(v5, 0);
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

  result = sub_1CA1DD840();
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
        v10 = sub_1CA1DD790();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CA1D7254(v10, 0);
        result = sub_1CA1DD800();
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

uint64_t sub_1CA1D7168(uint64_t result)
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

  result = sub_1CA1D72C8(result, v12, 1, v3);
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

void *sub_1CA1D7254(uint64_t a1, uint64_t a2)
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

  sub_1CA1D66A0(&qword_1EC43CC88, qword_1CA1DEE38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1CA1D72C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CA1D66A0(&qword_1EC43CC88, qword_1CA1DEE38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1CA1D73C4()
{
  sub_1CA1D74F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1CA1D74F4()
{
  if (!qword_1EC43CC70)
  {
    sub_1CA1DD5B0();
    v0 = sub_1CA1DD7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC43CC70);
    }
  }
}

uint64_t sub_1CA1D754C(uint64_t a1)
{
  v2 = sub_1CA1D66A0(&qword_1EC43CC78, &qword_1CA1DEE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA1D75B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1CA1D75FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CA1D765C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA1D66A0(&qword_1EC43CC78, &qword_1CA1DEE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA1D76CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA1D66A0(&qword_1EC43CC78, &qword_1CA1DEE30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PurposeConfigSystemConfigurationStore.__allocating_init(configDataSource:fallback:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1CA1CF6B4(a1, v4 + 16);
  sub_1CA1CF6B4(a2, v4 + 56);
  return v4;
}

uint64_t PurposeConfigSystemConfigurationStore.init(configDataSource:fallback:)(__int128 *a1, __int128 *a2)
{
  sub_1CA1CF6B4(a1, v2 + 16);
  sub_1CA1CF6B4(a2, v2 + 56);
  return v2;
}

uint64_t PurposeConfigSystemConfigurationStore.deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));
  return v0;
}

uint64_t PurposeConfigSystemConfigurationStore.__deallocating_deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t PurposeConfigSystemConfigurationStore.configurationFor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1CA1DD670();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CA1D66A0(&qword_1EC43CC90, &qword_1CA1DEE70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = v2[5];
  v16 = v2[6];
  sub_1CA1D7AF0(v2 + 2, v15);
  v17 = (*(v16 + 8))(a1, v15, v16);
  if (v17)
  {
    sub_1CA1DAE20(v17, v14);
    swift_unknownObjectRelease();
    v18 = sub_1CA1DD620();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v14, 1, v18) != 1)
    {
      return (*(v19 + 32))(a2, v14, v18);
    }

    sub_1CA1D7B58(v14);
  }

  sub_1CA1DD650();
  v20 = sub_1CA1DD660();
  v21 = sub_1CA1DD7B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = a1;
    _os_log_impl(&dword_1CA1CE000, v20, v21, "Using fallback configuration for purpose %ld", v22, 0xCu);
    MEMORY[0x1CCA9BA70](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v23 = v3[11];
  sub_1CA1D7AF0(v3 + 7, v3[10]);
  return sub_1CA1DD630();
}

void *sub_1CA1D7AF0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1CA1D7B58(uint64_t a1)
{
  v2 = sub_1CA1D66A0(&qword_1EC43CC90, &qword_1CA1DEE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA1D7C24@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1CA1DD510();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1CA1DD500();
  sub_1CA1DD4F0();

  v7 = *(*(a1 - 8) + 56);

  return v7(a2, 0, 1, a1);
}

uint64_t sub_1CA1D7DB0(uint64_t a1)
{
  v2 = sub_1CA1D66A0(&qword_1EC43CC98, &unk_1CA1DF7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConfigurationDecodableProvider.__allocating_init(dataProvider:)(uint64_t *a1)
{
  sub_1CA1CF7F0(a1, v8);
  v6 = &type metadata for ConfigurationNodeReader;
  v7 = &protocol witness table for ConfigurationNodeReader;
  v2 = swift_allocObject();
  *&v5 = v2;
  *(v2 + 40) = &type metadata for ConfigurationDirectoryURLBuilder;
  *(v2 + 48) = &protocol witness table for ConfigurationDirectoryURLBuilder;
  *(v2 + 16) = 0;
  sub_1CA1CF854(a1);
  type metadata accessor for ConfigurationDecodableProvider();
  v3 = swift_allocObject();
  sub_1CA1CF6B4(v8, v3 + 16);
  sub_1CA1CF6B4(&v5, v3 + 56);
  return v3;
}

uint64_t sub_1CA1D7EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1CA1DD7D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1CA1D8094((v3 + 16), a1, a2, &v14 - v10);
  v12 = *(a2 - 8);
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return sub_1CA1D8094((v3 + 56), a1, a2, a3);
  }

  else
  {
    (*(v12 + 32))(a3, v11, a2);
    return (*(v12 + 56))(a3, 0, 1, a2);
  }
}

uint64_t sub_1CA1D8094@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_1CA1DD7D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = a1[3];
  v13 = a1[4];
  sub_1CA1D7AF0(a1, v12);
  v14 = (*(v13 + 8))(a2, v12, v13);
  if (v15 >> 60 == 15)
  {
    v16 = *(a3 - 8);
  }

  else
  {
    v17 = v14;
    v18 = v15;
    sub_1CA1D7C24(a3, v11);
    sub_1CA1D8370(v17, v18);
    v16 = *(a3 - 8);
    v19 = v16;
    if ((*(v16 + 48))(v11, 1, a3) != 1)
    {
      v22 = v25;
      (*(v16 + 32))(v25, v11, a3);
      v21 = v22;
      v20 = 0;
      return (*(v19 + 56))(v21, v20, 1, a3);
    }

    (*(v8 + 8))(v11, v7);
  }

  v19 = v16;
  v20 = 1;
  v21 = v25;
  return (*(v19 + 56))(v21, v20, 1, a3);
}

uint64_t ConfigurationDecodableProvider.deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));
  return v0;
}

uint64_t ConfigurationDecodableProvider.__deallocating_deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1CA1D8370(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CA1D8384(a1, a2);
  }

  return a1;
}

uint64_t sub_1CA1D8384(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ConfigurationDirectoryURLBuilder.configurationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CA1DD5B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v1)
  {
    sub_1CA1DD600();
    sub_1CA1DD580();
    (*(v4 + 8))(v7, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v9[15] = 0;
    return sub_1CA1D852C(a1);
  }
}

uint64_t sub_1CA1D852C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CA1DD720();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_1CA1DD720();
    v5 = sub_1CA1DD720();
    v6 = [v3 pathForResource:v4 ofType:v5];

    if (v6)
    {
      sub_1CA1DD730();

      sub_1CA1DD570();

      v7 = 0;
      goto LABEL_7;
    }

    sub_1CA1DD7B0();
    sub_1CA1D5C3C();
    v8 = sub_1CA1DD7C0();
    sub_1CA1DD640();
  }

  else
  {
    sub_1CA1DD7B0();
    sub_1CA1D5C3C();
    v3 = sub_1CA1DD7C0();
    sub_1CA1DD640();
  }

  v7 = 1;
LABEL_7:

  v9 = sub_1CA1DD5B0();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v7, 1, v9);
}

uint64_t ConfigurationDirectoryURLBuilder.hashValue.getter()
{
  v1 = *v0;
  sub_1CA1DD930();
  MEMORY[0x1CCA9B3E0](v1);
  return sub_1CA1DD950();
}

uint64_t sub_1CA1D8820()
{
  v1 = *v0;
  sub_1CA1DD930();
  MEMORY[0x1CCA9B3E0](v1);
  return sub_1CA1DD950();
}

uint64_t sub_1CA1D8868()
{
  v1 = *v0;
  sub_1CA1DD930();
  MEMORY[0x1CCA9B3E0](v1);
  return sub_1CA1DD950();
}

unint64_t sub_1CA1D88B0()
{
  result = qword_1EC43CCA0;
  if (!qword_1EC43CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CCA0);
  }

  return result;
}

uint64_t sub_1CA1D8904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CA1DD5B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v1)
  {
    sub_1CA1DD600();
    sub_1CA1DD580();
    (*(v4 + 8))(v7, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v9[15] = 0;
    return sub_1CA1D852C(a1);
  }
}

uint64_t getEnumTagSinglePayload for ConfigurationDirectoryURLBuilder(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConfigurationDirectoryURLBuilder(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConfigurationSystemConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ConfigurationSystemConstants(_WORD *result, int a2, int a3)
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

unint64_t sub_1CA1D8CA8()
{
  v1 = 0x66654C393034316DLL;
  *v0;
  if (*v0)
  {
    v1 = 0x696F56393034316DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1CA1D8D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA1D950C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA1D8D7C(uint64_t a1)
{
  v2 = sub_1CA1D8FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D8DB8(uint64_t a1)
{
  v2 = sub_1CA1D8FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ECClientMetricsConfig.encode(to:)(void *a1)
{
  v4 = sub_1CA1D66A0(&qword_1EC43CCA8, &qword_1CA1DF070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v14[1] = v1[2];
  v14[2] = v9;
  v11 = v1[3];
  v12 = a1[4];
  sub_1CA1D7AF0(a1, a1[3]);
  sub_1CA1D8FD0();
  sub_1CA1DD970();
  v18 = 0;
  sub_1CA1DD8C0();
  if (!v2)
  {
    v17 = 1;
    sub_1CA1DD8C0();
    v16 = 2;
    sub_1CA1DD8C0();
    v15 = 3;
    sub_1CA1DD8B0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1CA1D8FD0()
{
  result = qword_1EDC0D6D0;
  if (!qword_1EDC0D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D6D0);
  }

  return result;
}

uint64_t ECClientMetricsConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1CA1D66A0(&qword_1EC43CCB0, &qword_1CA1DF078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1CA1D7AF0(a1, a1[3]);
  sub_1CA1D8FD0();
  sub_1CA1DD960();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_1CA1DD880();
    v19 = 1;
    v12 = sub_1CA1DD880();
    v18 = 2;
    v16 = sub_1CA1DD880();
    v17 = 3;
    sub_1CA1DD870();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v16;
    a2[3] = v15;
  }

  return sub_1CA1CF854(a1);
}

__n128 sub_1CA1D924C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA1D9258(uint64_t a1, int a2)
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

uint64_t sub_1CA1D9278(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ECClientMetricsConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ECClientMetricsConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA1D9408()
{
  result = qword_1EC43CCB8;
  if (!qword_1EC43CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CCB8);
  }

  return result;
}

unint64_t sub_1CA1D9460()
{
  result = qword_1EDC0D6C0;
  if (!qword_1EDC0D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D6C0);
  }

  return result;
}

unint64_t sub_1CA1D94B8()
{
  result = qword_1EDC0D6C8;
  if (!qword_1EDC0D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D6C8);
  }

  return result;
}

uint64_t sub_1CA1D950C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x66654C393034316DLL && a2 == 0xE900000000000074;
  if (v4 || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696F56393034316DLL && a2 == 0xEE007466654C6563 || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CA1E0730 == a2 || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CA1E0750 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CA1DD8D0();

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

unint64_t Configuration.path.getter()
{
  v1 = 0x72756769666E6F43;
  v2 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E656D6563616C50;
  }

  if (*v0)
  {
    v1 = 0x4665727574616546;
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

unint64_t sub_1CA1D9744()
{
  v1 = 0x72756769666E6F63;
  v2 = 0xD00000000000001CLL;
  if (*v0 != 2)
  {
    v2 = 0x6E656D6563616C70;
  }

  if (*v0)
  {
    v1 = 0x4665727574616566;
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

uint64_t sub_1CA1D97E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA1DAC80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA1D9808(uint64_t a1)
{
  v2 = sub_1CA1D9EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D9844(uint64_t a1)
{
  v2 = sub_1CA1D9EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA1D988C(uint64_t a1)
{
  v2 = sub_1CA1D9FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D98C8(uint64_t a1)
{
  v2 = sub_1CA1D9FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA1D9904(uint64_t a1)
{
  v2 = sub_1CA1D9F4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D9940(uint64_t a1)
{
  v2 = sub_1CA1D9F4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA1D997C(uint64_t a1)
{
  v2 = sub_1CA1D9FA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D99B8(uint64_t a1)
{
  v2 = sub_1CA1D9FA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA1D99F4(uint64_t a1)
{
  v2 = sub_1CA1D9EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D9A30(uint64_t a1)
{
  v2 = sub_1CA1D9EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Configuration.encode(to:)(void *a1)
{
  v3 = sub_1CA1D66A0(&qword_1EC43CCC0, &qword_1CA1DF230);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = sub_1CA1D66A0(&qword_1EC43CCC8, &qword_1CA1DF238);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = sub_1CA1D66A0(&qword_1EC43CCD0, &qword_1CA1DF240);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = sub_1CA1D66A0(&qword_1EC43CCD8, &qword_1CA1DF248);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = sub_1CA1D66A0(&qword_1EC43CCE0, &qword_1CA1DF250);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  sub_1CA1D7AF0(a1, a1[3]);
  sub_1CA1D9EA4();
  sub_1CA1DD970();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1CA1D9F4C();
      v24 = v33;
      sub_1CA1DD8A0();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1CA1D9EF8();
      v24 = v36;
      sub_1CA1DD8A0();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1CA1D9FA0();
    v24 = v30;
    sub_1CA1DD8A0();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1CA1D9FF4();
  sub_1CA1DD8A0();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1CA1D9EA4()
{
  result = qword_1EC43CCE8;
  if (!qword_1EC43CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CCE8);
  }

  return result;
}

unint64_t sub_1CA1D9EF8()
{
  result = qword_1EC43CCF0;
  if (!qword_1EC43CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CCF0);
  }

  return result;
}

unint64_t sub_1CA1D9F4C()
{
  result = qword_1EC43CCF8;
  if (!qword_1EC43CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CCF8);
  }

  return result;
}

unint64_t sub_1CA1D9FA0()
{
  result = qword_1EC43CD00;
  if (!qword_1EC43CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD00);
  }

  return result;
}

unint64_t sub_1CA1D9FF4()
{
  result = qword_1EC43CD08;
  if (!qword_1EC43CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD08);
  }

  return result;
}

uint64_t Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_1CA1DD930();
  MEMORY[0x1CCA9B3E0](v1);
  return sub_1CA1DD950();
}

uint64_t Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = sub_1CA1D66A0(&qword_1EC43CD10, &qword_1CA1DF258);
  v47 = *(v51 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v54 = v42 - v4;
  v5 = sub_1CA1D66A0(&qword_1EC43CD18, &qword_1CA1DF260);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = v42 - v8;
  v48 = sub_1CA1D66A0(&qword_1EC43CD20, &qword_1CA1DF268);
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v11 = v42 - v10;
  v12 = sub_1CA1D66A0(&qword_1EC43CD28, &qword_1CA1DF270);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v42 - v14;
  v16 = sub_1CA1D66A0(&qword_1EC43CD30, &qword_1CA1DF278);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  sub_1CA1D7AF0(a1, v21);
  sub_1CA1D9EA4();
  v23 = v55;
  sub_1CA1DD960();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_1CA1DD890();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_1CA1DD830();
      swift_allocError();
      v33 = v32;
      v34 = *(sub_1CA1D66A0(&qword_1EC43CD38, &qword_1CA1DF280) + 48);
      *v33 = &type metadata for Configuration;
      sub_1CA1DD860();
      sub_1CA1DD820();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_1CA1D9FA0();
          v39 = v44;
          sub_1CA1DD850();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_1CA1D9FF4();
          v35 = v44;
          sub_1CA1DD850();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return sub_1CA1CF854(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_1CA1D9F4C();
        v38 = v44;
        sub_1CA1DD850();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return sub_1CA1CF854(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_1CA1D9EF8();
        v40 = v44;
        sub_1CA1DD850();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return sub_1CA1CF854(v56);
}

unint64_t sub_1CA1DA744()
{
  result = qword_1EC43CD40;
  if (!qword_1EC43CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD40);
  }

  return result;
}

unint64_t sub_1CA1DA798()
{
  v1 = 0x72756769666E6F43;
  v2 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E656D6563616C50;
  }

  if (*v0)
  {
    v1 = 0x4665727574616546;
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

unint64_t sub_1CA1DA8BC()
{
  result = qword_1EC43CD48;
  if (!qword_1EC43CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD48);
  }

  return result;
}

unint64_t sub_1CA1DA914()
{
  result = qword_1EC43CD50;
  if (!qword_1EC43CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD50);
  }

  return result;
}

unint64_t sub_1CA1DA96C()
{
  result = qword_1EC43CD58;
  if (!qword_1EC43CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD58);
  }

  return result;
}

unint64_t sub_1CA1DA9C4()
{
  result = qword_1EC43CD60;
  if (!qword_1EC43CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD60);
  }

  return result;
}

unint64_t sub_1CA1DAA1C()
{
  result = qword_1EC43CD68;
  if (!qword_1EC43CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD68);
  }

  return result;
}

unint64_t sub_1CA1DAA74()
{
  result = qword_1EC43CD70;
  if (!qword_1EC43CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD70);
  }

  return result;
}

unint64_t sub_1CA1DAACC()
{
  result = qword_1EC43CD78;
  if (!qword_1EC43CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD78);
  }

  return result;
}

unint64_t sub_1CA1DAB24()
{
  result = qword_1EC43CD80;
  if (!qword_1EC43CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD80);
  }

  return result;
}

unint64_t sub_1CA1DAB7C()
{
  result = qword_1EC43CD88;
  if (!qword_1EC43CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD88);
  }

  return result;
}

unint64_t sub_1CA1DABD4()
{
  result = qword_1EC43CD90;
  if (!qword_1EC43CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD90);
  }

  return result;
}

unint64_t sub_1CA1DAC2C()
{
  result = qword_1EC43CD98;
  if (!qword_1EC43CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD98);
  }

  return result;
}

uint64_t sub_1CA1DAC80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4665727574616566 && a2 == 0xEB0000000067616CLL || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001CA1E07C0 == a2 || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xEC000000504C5374)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CA1DD8D0();

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

uint64_t sub_1CA1DAE20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CA1DD5F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 boundary];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1CA1DD730();
    v13 = v12;

    v14 = v11 == 0x6C616E7265747865 && v13 == 0xE800000000000000;
    if (v14 || (sub_1CA1DD8D0() & 1) != 0)
    {

      v15 = MEMORY[0x1E69860E0];
LABEL_8:
      (*(v5 + 104))(v8, *v15, v4);
      sub_1CA1DD610();
      v16 = sub_1CA1DD620();
      return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    }

    if (v11 == 0x6C616E7265746E69 && v13 == 0xE800000000000000)
    {
    }

    else
    {
      v19 = sub_1CA1DD8D0();

      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v15 = MEMORY[0x1E69860E8];
    goto LABEL_8;
  }

LABEL_14:
  v20 = sub_1CA1DD620();
  v21 = *(*(v20 - 8) + 56);

  return v21(a2, 1, 1, v20);
}

uint64_t ConfigurationJSONProvider.__allocating_init(dataProvider:)(uint64_t *a1)
{
  sub_1CA1CF7F0(a1, v8);
  v6 = &type metadata for ConfigurationNodeReader;
  v7 = &protocol witness table for ConfigurationNodeReader;
  v2 = swift_allocObject();
  *&v5 = v2;
  *(v2 + 40) = &type metadata for ConfigurationDirectoryURLBuilder;
  *(v2 + 48) = &protocol witness table for ConfigurationDirectoryURLBuilder;
  *(v2 + 16) = 0;
  sub_1CA1CF854(a1);
  type metadata accessor for ConfigurationJSONProvider();
  v3 = swift_allocObject();
  sub_1CA1CF6B4(v8, v3 + 16);
  sub_1CA1CF6B4(&v5, v3 + 56);
  return v3;
}

uint64_t sub_1CA1DB11C(uint64_t a1)
{
  v2 = v1;
  v38 = *MEMORY[0x1E69E9840];
  v4 = v1[5];
  v5 = v1[6];
  sub_1CA1D7AF0(v1 + 2, v4);
  v6 = (*(v5 + 8))(a1, v4, v5);
  if (v7 >> 60 != 15)
  {
    v8 = v6;
    v9 = v7;
    v10 = objc_opt_self();
    v11 = sub_1CA1DD5D0();
    *&v35 = 0;
    v12 = [v10 JSONObjectWithData:v11 options:0 error:&v35];

    if (v12)
    {
      v13 = v35;
      sub_1CA1DD7F0();
      sub_1CA1D8370(v8, v9);
      swift_unknownObjectRelease();
      sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
      if (swift_dynamicCast())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = v35;
      v15 = sub_1CA1DD550();

      swift_willThrow();
      LOBYTE(v34) = 9;
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      swift_getErrorValue();
      v16 = sub_1CA1DD8E0();
      _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v34, &v35, v16, v17);

      sub_1CA1D8370(v8, v9);

      sub_1CA1D7DB0(&v35);
    }
  }

  v18 = v2[10];
  v19 = v2[11];
  sub_1CA1D7AF0(v2 + 7, v18);
  v20 = (*(v19 + 8))(a1, v18, v19);
  if (v21 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v22 = v20;
  v23 = v21;
  v24 = objc_opt_self();
  v25 = sub_1CA1DD5D0();
  *&v35 = 0;
  v26 = [v24 JSONObjectWithData:v25 options:0 error:&v35];

  if (!v26)
  {
    v29 = v35;
    v30 = sub_1CA1DD550();

    swift_willThrow();
    LOBYTE(v34) = 9;
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    swift_getErrorValue();
    v31 = sub_1CA1DD8E0();
    _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v34, &v35, v31, v32);

    sub_1CA1D8370(v22, v23);

    sub_1CA1D7DB0(&v35);
    goto LABEL_11;
  }

  v27 = v35;
  sub_1CA1DD7F0();
  sub_1CA1D8370(v22, v23);
  swift_unknownObjectRelease();
  sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

LABEL_9:
  result = v34;
LABEL_12:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ConfigurationJSONProvider.deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));
  return v0;
}

uint64_t sub_1CA1DB4D4(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v4 = a1[4];
  sub_1CA1D7AF0(a1, v3);
  v5 = (*(v4 + 8))(a2, v3, v4);
  if (v6 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v7 = v5;
  v8 = v6;
  v9 = objc_opt_self();
  v10 = sub_1CA1DD5D0();
  *&v20[0] = 0;
  v11 = [v9 JSONObjectWithData:v10 options:0 error:v20];

  if (!v11)
  {
    v14 = *&v20[0];
    v15 = sub_1CA1DD550();

    swift_willThrow();
    LOBYTE(v19) = 9;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    swift_getErrorValue();
    v16 = sub_1CA1DD8E0();
    _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v19, v20, v16, v17);

    sub_1CA1D8370(v7, v8);

    sub_1CA1D7DB0(v20);
    goto LABEL_6;
  }

  v12 = *&v20[0];
  sub_1CA1DD7F0();
  sub_1CA1D8370(v7, v8);
  swift_unknownObjectRelease();
  sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  result = v19;
LABEL_7:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ConfigurableJSONSource.__allocating_init(path:dataProvider:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  ConfigurableJSONSource.init(path:dataProvider:)(a1, a2);
  return v4;
}

uint64_t ConfigurableJSONSource.json.getter()
{
  v1 = v0;
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 56);
  v3 = v2[5];
  v4 = v2[6];
  sub_1CA1D7AF0(v2 + 2, v3);
  v5 = (*(v4 + 8))(v0 + 16, v3, v4);
  if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_opt_self();
    v10 = sub_1CA1DD5D0();
    *&v34 = 0;
    v11 = [v9 JSONObjectWithData:v10 options:0 error:&v34];

    if (v11)
    {
      v12 = v34;
      sub_1CA1DD7F0();
      sub_1CA1D8370(v7, v8);
      swift_unknownObjectRelease();
      sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
      if (swift_dynamicCast())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = v34;
      v14 = sub_1CA1DD550();

      swift_willThrow();
      LOBYTE(v33) = 9;
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      swift_getErrorValue();
      v15 = sub_1CA1DD8E0();
      _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v33, &v34, v15, v16);

      sub_1CA1D8370(v7, v8);

      sub_1CA1D7DB0(&v34);
    }
  }

  v17 = v2[10];
  v18 = v2[11];
  sub_1CA1D7AF0(v2 + 7, v17);
  v19 = (*(v18 + 8))(v1 + 16, v17, v18);
  if (v20 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v21 = v19;
  v22 = v20;
  v23 = objc_opt_self();
  v24 = sub_1CA1DD5D0();
  *&v34 = 0;
  v25 = [v23 JSONObjectWithData:v24 options:0 error:&v34];

  if (!v25)
  {
    v28 = v34;
    v29 = sub_1CA1DD550();

    swift_willThrow();
    LOBYTE(v33) = 9;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    swift_getErrorValue();
    v30 = sub_1CA1DD8E0();
    _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v33, &v34, v30, v31);

    sub_1CA1D8370(v21, v22);

    sub_1CA1D7DB0(&v34);
    goto LABEL_11;
  }

  v26 = v34;
  sub_1CA1DD7F0();
  sub_1CA1D8370(v21, v22);
  swift_unknownObjectRelease();
  sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

LABEL_9:
  result = v33;
LABEL_12:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ConfigurableJSONSource.deinit()
{
  sub_1CA1CF854((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t sub_1CA1DBB0C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  result = sub_1CA1DB4D4((v2 + 16), v1 + 16);
  if (!result)
  {

    return sub_1CA1DB4D4((v2 + 56), v1 + 16);
  }

  return result;
}

uint64_t sub_1CA1DBB90()
{
  v1 = sub_1CA1DD6A0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *(v0 + 24);
  os_unfair_lock_lock(v3 + 4);
  if (!*(v0 + 32))
  {
    sub_1CA1DD6D0();
    v4 = *(v0 + 16);
    sub_1CA1DD690();
    v5 = sub_1CA1DD680();
    v6 = *(v0 + 32);
    *(v0 + 32) = v5;
  }

  v7 = *(v0 + 32);

  os_unfair_lock_unlock(v3 + 4);
  return v7;
}

uint64_t ClientConfigurationXPCRequester.deinit()
{
  if (sub_1CA1DBB90())
  {
    sub_1CA1DD6B0();
  }

  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t ClientConfigurationXPCRequester.__deallocating_deinit()
{
  if (sub_1CA1DBB90())
  {
    sub_1CA1DD6B0();
  }

  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1CA1DBDFC(void *a1)
{
  v2 = sub_1CA1DD6F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if ([objc_opt_self() isMainThread])
  {
    v7 = sub_1CA1DD720();
    APSimulateCrash();
  }

  else
  {
    if (sub_1CA1DBB90())
    {
      v8 = a1[4];
      sub_1CA1D7AF0(a1, a1[3]);
      v9 = *(v8 + 16);
      sub_1CA1DD6C0();
      sub_1CA1DC078();
      sub_1CA1DD6E0();
      (*(v3 + 8))(v6, v2);

      return *&v12[0];
    }

    v14 = 5;
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v14, v12, 0xD000000000000016, 0x80000001CA1E08A0);
    sub_1CA1D7DB0(v12);
  }

  return 0;
}

unint64_t sub_1CA1DC078()
{
  result = qword_1EC43CDA8;
  if (!qword_1EC43CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CDA8);
  }

  return result;
}

id ProductionConfigSystemPurposeDataSource.configFor(_:)(uint64_t a1)
{
  v1 = [objc_opt_self() purposeConfig_];

  return v1;
}

id sub_1CA1DC1AC(uint64_t a1)
{
  v1 = [objc_opt_self() purposeConfig_];

  return v1;
}

uint64_t ConfigurationError.hashValue.getter()
{
  v1 = *v0;
  sub_1CA1DD930();
  MEMORY[0x1CCA9B3E0](v1);
  return sub_1CA1DD950();
}

unint64_t ConfigurationError.errorDescription.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0xD000000000000016;
    if (v1 != 8)
    {
      v5 = 0xD000000000000018;
    }

    if (v1 == 7)
    {
      v5 = 0xD00000000000001CLL;
    }

    v6 = 0xD000000000000015;
    if (v1 == 5)
    {
      v6 = 0xD00000000000001FLL;
    }

    if (*v0 <= 6u)
    {
      result = v6;
    }

    else
    {
      result = v5;
    }

    *v0;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    if (v1 != 3)
    {
      v2 = 0xD000000000000026;
    }

    if (v1 == 2)
    {
      v2 = 0xD00000000000001CLL;
    }

    v3 = 0xD000000000000021;
    if (!*v0)
    {
      v3 = 0xD000000000000029;
    }

    if (*v0 <= 1u)
    {
      result = v3;
    }

    else
    {
      result = v2;
    }

    *v0;
  }

  return result;
}

void _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  v8 = sub_1CA1DD7B0();
  sub_1CA1D5C3C();
  v9 = sub_1CA1DD7C0();
  sub_1CA1DC91C(a2, v28);
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 138412802;
    sub_1CA1DC768();
    swift_allocError();
    *v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v14;
    *v11 = v14;
    *(v10 + 12) = 2080;
    sub_1CA1DC91C(v28, v24);
    v15 = v25;
    if (v25)
    {
      v16 = v26;
      sub_1CA1D7AF0(v24, v25);
      v17 = (*(v16 + 24))(v15, v16);
      v19 = v18;
      sub_1CA1CF854(v24);
    }

    else
    {
      sub_1CA1DC98C(v24, &qword_1EC43CC98, &unk_1CA1DF7A0);
      v19 = 0xE700000000000000;
      v17 = 0x6E776F6E6B6E55;
    }

    sub_1CA1DC98C(v28, &qword_1EC43CC98, &unk_1CA1DF7A0);
    v20 = sub_1CA1D6E14(v17, v19, &v27);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2080;
    if (a4)
    {
      v21 = a3;
    }

    else
    {
      v21 = 0x7263736564206F4ELL;
    }

    if (a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = 0xEE006E6F69747069;
    }

    v23 = sub_1CA1D6E14(v21, v22, &v27);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_1CA1CE000, v9, v8, "Congfiguration Error: %@ Node: %s. Error description: %s.", v10, 0x20u);
    sub_1CA1DC98C(v11, &unk_1EC43CDC0, "j ");
    MEMORY[0x1CCA9BA70](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1CCA9BA70](v12, -1, -1);
    MEMORY[0x1CCA9BA70](v10, -1, -1);
  }

  else
  {

    sub_1CA1DC98C(v28, &qword_1EC43CC98, &unk_1CA1DF7A0);
  }
}

unint64_t sub_1CA1DC710()
{
  result = qword_1EC43CDB0;
  if (!qword_1EC43CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CDB0);
  }

  return result;
}

unint64_t sub_1CA1DC768()
{
  result = qword_1EC43CDB8;
  if (!qword_1EC43CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CDB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CA1DC91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA1D66A0(&qword_1EC43CC98, &unk_1CA1DF7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA1DC98C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1CA1D66A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ConfigurationNodeReader.fetchData(for:)(void *a1)
{
  v64 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v62 = sub_1CA1DD560();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA1D66A0(&qword_1EC43CC78, &qword_1CA1DEE30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v59 - v8;
  v10 = sub_1CA1DD5B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - v18;
  v21 = v1[3];
  v20 = v1[4];
  sub_1CA1D7AF0(v1, v21);
  (*(v20 + 8))(v21, v20);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1CA1DC98C(v9, &qword_1EC43CC78, &qword_1CA1DEE30);
    LOBYTE(v65) = 0;
    sub_1CA1CF7F0(v64, &v66);
    _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v65, &v66, 0, 0);
    sub_1CA1DC98C(&v66, &qword_1EC43CC98, &unk_1CA1DF7A0);
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  (*(v11 + 32))(v19, v9, v10);
  v22 = v11;
  v23 = v64[3];
  v24 = v64[4];
  sub_1CA1D7AF0(v64, v23);
  (*(v24 + 24))(v23, v24);
  sub_1CA1DD590();

  *&v66 = 0xD000000000000016;
  *(&v66 + 1) = 0x80000001CA1E0B20;
  v25 = v62;
  (*(v2 + 104))(v5, *MEMORY[0x1E6968F70], v62);
  sub_1CA1D664C();
  sub_1CA1DD5A0();
  (*(v2 + 8))(v5, v25);
  v26 = sub_1CA1DD5C0();
  v28 = v27;
  v60 = v19;
  v29 = v63;
  v30 = *(v22 + 8);
  v62 = v10;
  v61 = v22 + 8;
  v30(v15, v10);
  v31 = v30;
  v32 = objc_opt_self();
  v33 = sub_1CA1DD5D0();
  *&v66 = 0;
  v34 = [v32 JSONObjectWithData:v33 options:0 error:&v66];

  if (!v34)
  {
    v48 = v66;
    v49 = sub_1CA1DD550();

    swift_willThrow();
    LOBYTE(v65) = 9;
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    swift_getErrorValue();
    v50 = sub_1CA1DD8E0();
    _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v65, &v66, v50, v51);

    sub_1CA1D8384(v26, v28);

    sub_1CA1DC98C(&v66, &qword_1EC43CC98, &unk_1CA1DF7A0);
    v52 = v62;
    v36 = v29;
LABEL_12:
    v53 = v36;
LABEL_13:
    v31(v53, v52);
    v31(v60, v52);
    goto LABEL_17;
  }

  v35 = v66;
  sub_1CA1DD7F0();
  swift_unknownObjectRelease();
  sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
  v36 = v29;
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1CA1D8384(v26, v28);
    v52 = v62;
    goto LABEL_12;
  }

  v37 = v65;
  v38 = v62;
  if (!*(v65 + 16))
  {

    v40 = v64;
    goto LABEL_16;
  }

  v39 = sub_1CA1DD30C(0x69747265706F7270, 0xEA00000000007365);
  v40 = v64;
  if ((v41 & 1) == 0)
  {

    goto LABEL_16;
  }

  sub_1CA1D75FC(*(v37 + 56) + 32 * v39, &v66);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    LOBYTE(v65) = 1;
    sub_1CA1CF7F0(v40, &v66);
    _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v65, &v66, 0xD00000000000001DLL, 0x80000001CA1E0B40);
    sub_1CA1D8384(v26, v28);
    sub_1CA1DC98C(&v66, &qword_1EC43CC98, &unk_1CA1DF7A0);
    v30(v36, v38);
    v30(v60, v38);
    goto LABEL_17;
  }

  v42 = sub_1CA1DD700();

  *&v66 = 0;
  v43 = [v32 dataWithJSONObject:v42 options:0 error:&v66];

  v44 = v66;
  if (!v43)
  {
    v55 = v44;
    v56 = sub_1CA1DD550();

    swift_willThrow();
    LOBYTE(v65) = 8;
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    swift_getErrorValue();
    v57 = sub_1CA1DD8E0();
    _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v65, &v66, v57, v58);

    sub_1CA1D8384(v26, v28);

    sub_1CA1DC98C(&v66, &qword_1EC43CC98, &unk_1CA1DF7A0);
    v53 = v36;
    v52 = v62;
    goto LABEL_13;
  }

  v45 = sub_1CA1DD5E0();
  sub_1CA1D8384(v26, v28);

  v46 = v62;
  v31(v36, v62);
  v31(v60, v46);
  result = v45;
LABEL_18:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1CA1DD30C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1CA1DD930();
  sub_1CA1DD770();
  v6 = sub_1CA1DD950();

  return sub_1CA1DD384(a1, a2, v6);
}

unint64_t sub_1CA1DD384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1CA1DD8D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

__n128 sub_1CA1DD43C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CA1DD450(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CA1DD498(uint64_t result, int a2, int a3)
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