unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI13URLBasedAsset_pTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI13URLBasedAsset_ptMd);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI13URLBasedAsset_pGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_s10Foundation4UUIDV_9MomentsUI13URLBasedAsset_ptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of MOMusicPlaybackCoordinatorDelegate(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSe_SEpGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_16MomentsUIService28MOServerConnectionPropertiesCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_16MomentsUIService28MOServerConnectionPropertiesCtMd);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV16MomentsUIService28MOServerConnectionPropertiesCGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_s10Foundation4UUIDV_16MomentsUIService28MOServerConnectionPropertiesCtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, v13, &_ss11AnyHashableV_yptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVtMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3URLVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_sSS_10Foundation3URLVtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for URL();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVSgTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVSgtMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVSgGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_sSS_10Foundation4DateVSgtMd);
      v12 = *v5;
      v11 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
      result = outlined init with take of Date?(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t partial apply for closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)()
{
  specialized closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(v0);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100044DA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type NotificationRealTimeCheckManager.MotionActivityEnum and conformance NotificationRealTimeCheckManager.MotionActivityEnum()
{
  result = lazy protocol witness table cache variable for type NotificationRealTimeCheckManager.MotionActivityEnum and conformance NotificationRealTimeCheckManager.MotionActivityEnum;
  if (!lazy protocol witness table cache variable for type NotificationRealTimeCheckManager.MotionActivityEnum and conformance NotificationRealTimeCheckManager.MotionActivityEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationRealTimeCheckManager.MotionActivityEnum and conformance NotificationRealTimeCheckManager.MotionActivityEnum);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationRealTimeCheckManager.MotionActivityEnum(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NotificationRealTimeCheckManager.MotionActivityEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000451D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of MOMusicPlaybackCoordinatorDelegate(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA_37(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t outlined init with copy of (String, Date?)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_47(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5(a1, v4);
}

uint64_t specialized closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.notification.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = v2;
    v9 = v8;
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    swift_beginAccess();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSObject);

    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Notification Analytics for real time checks] result=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);

    (*(v3 + 8))(v5, v17);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  return *(a1 + 16);
}

uint64_t sub_100045838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100045928()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.isAtPlacesEligibleForJournaling(visit:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v9, v10);
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t sub_100045B28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy16MomentsUIService32NotificationRealTimeCheckManagerC18MotionActivityEnumOs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.isInSessionBasedOnMotion()(unint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy16MomentsUIService32NotificationRealTimeCheckManagerC18MotionActivityEnumOs5NeverOGMd) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #1 in closure #1 in NotificationRealTimeCheckManager.isInSessionBasedOnMotion()(a1, a2, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for UIApplication(255, &lazy cache variable for type metadata for NSNumber);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
  }

  return result;
}

uint64_t objectdestroy_73Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.isInWorkOutSessionBasedOnHealthKit()(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t one-time initialization function for assets(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.assets);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.assets, &one-time initialization token for assets, static MOAngelLogger.assets);
}

uint64_t one-time initialization function for pullToRefresh(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.pullToRefresh);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.pullToRefresh, &one-time initialization token for pullToRefresh, static MOAngelLogger.pullToRefresh);
}

uint64_t one-time initialization function for processing(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.processing);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.processing, &one-time initialization token for processing, static MOAngelLogger.processing);
}

uint64_t one-time initialization function for bundleProcessing()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static MOAngelLogger.bundleProcessing);
  __swift_project_value_buffer(v0, static MOAngelLogger.bundleProcessing);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assetRendering(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.assetRendering);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.assetRendering, &one-time initialization token for assetRendering, static MOAngelLogger.assetRendering);
}

uint64_t one-time initialization function for databaseOps(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.databaseOps);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.databaseOps, &one-time initialization token for databaseOps, static MOAngelLogger.databaseOps);
}

uint64_t one-time initialization function for shared(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assets(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v10, v12, v7);
  return OSSignposter.init(logger:)();
}

uint64_t MOAngelLogger.shared.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static MOAngelLogger.shared.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id MOSuggestionPickerPrivacyBadge.iconView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionPickerPrivacyBadge.iconView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void closure #1 in variable initialization expression of MOSuggestionPickerPrivacyBadge.label()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    v6 = [objc_opt_self() mainBundle];
    v10._object = 0x80000001002AFF10;
    v7._object = 0x80000001002AFEF0;
    v10._countAndFlagsBits = 0xD00000000000001DLL;
    v7._countAndFlagsBits = 0xD000000000000016;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

    v9 = String._bridgeToObjectiveC()();

    [v0 setText:v9];

    [v0 setAdjustsFontForContentSizeCategory:1];
    [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  }

  else
  {
    __break(1u);
  }
}

id MOSuggestionPickerPrivacyBadge.label.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionPickerPrivacyBadge.label.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void MOSuggestionPickerPrivacyBadge.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  v2 = CGRectMake();
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for MOSuggestionPickerBadgeIconView()) initWithFrame:{v2, v3, v4, v5}];
  v6 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  closure #1 in variable initialization expression of MOSuggestionPickerPrivacyBadge.label();
  *(v0 + v6) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MOSuggestionPickerPrivacyBadge.flipToPrivacyIconAndDismissAfterDelay()()
{
  v1 = v0;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v3 = v2;
  v5 = v4;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v7 = v6;
  v9 = v8;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v11 = v10;
  v13 = v12;
  v14 = (*((swift_isaMask & *v0) + 0x60))();
  (*((swift_isaMask & *v14) + 0x70))();

  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  v16 = objc_allocWithZone(UIViewPropertyAnimator);
  v29 = partial apply for closure #1 in MOSuggestionPickerPrivacyBadge.flipToPrivacyIconAndDismissAfterDelay();
  v30 = v15;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed () -> ();
  v28 = &block_descriptor_1;
  v17 = _Block_copy(&v25);
  v18 = v1;

  v19 = [v16 initWithDuration:v17 controlPoint1:0.167 controlPoint2:v3 animations:{v5, v11, v13}];
  _Block_release(v17);
  [v19 startAnimationAfterDelay:2.75];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = objc_allocWithZone(UIViewPropertyAnimator);
  v29 = partial apply for closure #2 in MOSuggestionPickerPrivacyBadge.flipToPrivacyIconAndDismissAfterDelay();
  v30 = v20;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed () -> ();
  v28 = &block_descriptor_6;
  v22 = _Block_copy(&v25);
  v23 = v18;

  v24 = [v21 initWithDuration:v22 controlPoint1:0.167 controlPoint2:v3 animations:{v5, v7, v9}];
  _Block_release(v22);
  [v24 startAnimationAfterDelay:2.75];
}

id MOSuggestionPickerPrivacyBadge.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

id MOSuggestionPickerPrivacyBadge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionPickerPrivacyBadge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *specialized MOSuggestionPickerPrivacyBadge.init(frame:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  v2 = CGRectMake();
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for MOSuggestionPickerBadgeIconView()) initWithFrame:{v2, v3, v4, v5}];
  v6 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  closure #1 in variable initialization expression of MOSuggestionPickerPrivacyBadge.label();
  *&v0[v6] = v7;
  v8 = [objc_opt_self() effectWithStyle:8];
  v44.receiver = v0;
  v44.super_class = type metadata accessor for MOSuggestionPickerPrivacyBadge();
  v43 = v8;
  v9 = objc_msgSendSuper2(&v44, "initWithEffect:", v43);
  [v9 setEffect:v43];

  v10 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  swift_beginAccess();
  [*&v9[v10] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v9 contentView];
  [v11 addSubview:*&v9[v10]];

  v12 = [v9 contentView];
  v13 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  swift_beginAccess();
  [v12 addSubview:*&v9[v13]];

  [v9 _setCornerRadius:6.0];
  v42 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002A5170;
  v15 = [*&v9[v10] widthAnchor];
  v16 = [v15 constraintEqualToConstant:20.0];

  *(v14 + 32) = v16;
  v17 = [*&v9[v10] heightAnchor];
  v18 = [v17 constraintEqualToConstant:20.0];

  *(v14 + 40) = v18;
  v19 = [*&v9[v10] leadingAnchor];
  v20 = [v9 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:2.0];

  *(v14 + 48) = v21;
  v22 = [*&v9[v10] topAnchor];
  v23 = [v9 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:2.0];

  *(v14 + 56) = v24;
  v25 = [v9 bottomAnchor];
  v26 = [*&v9[v10] bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:2.0];

  *(v14 + 64) = v27;
  v28 = [*&v9[v13] leadingAnchor];
  v29 = [*&v9[v10] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:3.0];

  *(v14 + 72) = v30;
  v31 = [*&v9[v13] topAnchor];
  v32 = [v9 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v14 + 80) = v33;
  v34 = [*&v9[v13] bottomAnchor];
  v35 = [v9 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v14 + 88) = v36;
  v37 = [v9 trailingAnchor];

  v38 = [*&v9[v13] trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:6.0];

  *(v14 + 96) = v39;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];

  return v9;
}

uint64_t sub_100047C94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100047D24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_100047DE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x78))();
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.__allocating_init(contactAssets:bundleStartDate:bundleEndDate:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v107 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v110 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_66;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 < 1)
  {
LABEL_67:

    v83 = type metadata accessor for Date();
    v84 = *(*(v83 - 8) + 8);
    v84(a3, v83);
    v84(a2, v83);
    return 0;
  }

LABEL_3:
  v112 = v9;
  v113 = v7;
  v103 = a3;
  v104 = a2;
  rawValue = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  a2 = 0;
  v11._rawValue = rawValue;
  v116 = a1 & 0xC000000000000001;
  a3 = &type metadata for String;
  v115 = a1;
  do
  {
    if (v116)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(a1 + 8 * a2 + 32);
    }

    v13 = v12;
    v14 = [v12 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v117 = v9;
    v118 = v16;
    v120 = 35;
    v121 = 0xE100000000000000;
    v114 = lazy protocol witness table accessor for type String and conformance String();
    v17 = StringProtocol.components<A>(separatedBy:)();

    if (!v17[2])
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      v82 = v7;
      v10 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v82;
      if (v10 < 1)
      {
        goto LABEL_67;
      }

      goto LABEL_3;
    }

    v19 = v17[4];
    v18 = v17[5];

    rawValue = v11._rawValue;
    v21 = *(v11._rawValue + 2);
    v20 = *(v11._rawValue + 3);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v11._rawValue = rawValue;
    }

    ++a2;
    *(v11._rawValue + 2) = v21 + 1;
    v22 = v11._rawValue + 16 * v21;
    *(v22 + 4) = v19;
    *(v22 + 5) = v18;
    a1 = v115;
  }

  while (v10 != a2);
  v23 = String.init(combinedIdentifiersFrom:)(v11);
  countAndFlagsBits = v23._countAndFlagsBits;
  object = v23._object;
  v108 = MOSuggestionAssetsTypeContactPhoto;
  v122 = _swiftEmptyArrayStorage;
  v123 = _swiftEmptyArrayStorage;
  a2 = type metadata accessor for Date();
  v24 = *(a2 - 8);
  v25 = *(v24 + 16);
  v26 = v110;
  v25(v110, v104, a2);
  v27 = v113[5];
  v25(v26 + v27, v103, a2);
  v93 = v24;
  v94 = a2;
  (*(v24 + 56))(v26 + v27, 0, 1, a2);
  if (v112)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v108;
  if (v28)
  {
    v111 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = v108;
    a3 = 0;
    v101 = xmmword_1002A48B0;
    v91 = xmmword_1002A4A70;
    v29 = _swiftEmptyArrayStorage;
    v109 = _swiftEmptyArrayStorage;
    v102 = _swiftEmptyArrayStorage;
    v113 = v28;
    while (1)
    {
      if (v116)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a3 >= *(v111 + 16))
        {
          goto LABEL_65;
        }

        v7 = *(a1 + 8 * a3 + 32);
      }

      v30 = v7;
      a1 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        goto LABEL_64;
      }

      v31 = [v7 assetType];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = v33;
      v35 = v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && a2 == v34;
      if (v35)
      {
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v36 & 1) == 0)
        {
          [v30 contentClassType];
          ObjCClassMetadata = swift_getObjCClassMetadata();
          if (ObjCClassMetadata != type metadata accessor for MOSuggestionGenericFallBackInfo())
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v38 = type metadata accessor for Logger();
            __swift_project_value_buffer(v38, static MOAngelLogger.shared);
            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v39, v40))
            {
              a2 = swift_slowAlloc();
              *a2 = 0;
              _os_log_impl(&_mh_execute_header, v39, v40, "[MOSuggestionInterstitialListAssetViewModel.contactAssets] Mismatched init for asset type", a2, 2u);
            }

            goto LABEL_51;
          }
        }
      }

      a2 = [v30 content];
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        v112 = v41;
        v42 = [v30 metadata];
        v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v43);

        if (!v44)
        {
          goto LABEL_50;
        }

        if (!*(v44 + 16) || (v45 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyContactName), (v46 & 1) == 0))
        {
          swift_unknownObjectRelease();

          goto LABEL_17;
        }

        outlined init with copy of Any(*(v44 + 56) + 32 * v45, &v117);

        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_50:
          swift_unknownObjectRelease();
LABEL_51:

          goto LABEL_17;
        }

        v105 = v121;
        v106 = v120;
        type metadata accessor for MOSuggestionSheetImage();
        v9 = swift_allocObject();
        *(v9 + 5) = 0;
        *(v9 + 4) = 0;
        *(v9 + 3) = 0;
        *(v9 + 72) = 0u;
        *(v9 + 56) = 0u;
        v9[88] = 1;
        *(v9 + 12) = 0;
        v102 = v9 + 96;
        v9[104] = 1;
        *(v9 + 2) = v112;
        swift_beginAccess();
        *(v9 + 3) = 0;
        swift_beginAccess();
        *(v9 + 4) = 0;
        swift_beginAccess();
        v47 = *(v9 + 5);
        *(v9 + 5) = 0;
        swift_unknownObjectRetain();

        v9[48] = 0;
        swift_beginAccess();
        *(v9 + 72) = 0u;
        *(v9 + 56) = 0u;
        v9[88] = 1;
        v48 = v102;
        swift_beginAccess();
        *v48 = 0;
        v9[104] = 1;
        v49 = [v30 identifier];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v117 = v29;
        v118 = v51;
        v120 = 35;
        v121 = 0xE100000000000000;
        v52 = StringProtocol.components<A>(separatedBy:)();

        if (!v52[2])
        {
          __break(1u);
          goto LABEL_69;
        }

        v53 = v52[5];
        v102 = v52[4];
        v99 = v53;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd);
        v54 = (*(v107 + 80) + 32) & ~*(v107 + 80);
        v55 = swift_allocObject();
        v98 = v55;
        *(v55 + 16) = v101;
        outlined init with copy of MOSuggestionSheetAssetDateRange(v110, v55 + v54);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
        v56 = swift_allocObject();
        v97 = v56;
        *(v56 + 16) = v101;
        v57 = v105;
        *(v56 + 32) = v106;
        *(v56 + 40) = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v58 = swift_allocObject();
        v96 = v58;
        *(v58 + 16) = v91;
        *(v58 + 32) = v9;
        type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
        v59 = swift_allocObject();
        *(v59 + 32) = 0u;
        *(v59 + 48) = 0u;
        *(v59 + 64) = 0;
        *(v59 + 16) = 0u;
        *(v59 + 90) = 1;
        v95 = OBJC_IVAR____TtC16MomentsUIService42MOSuggestionInterstitialListAssetViewModel_uniqueUUID;

        v112 = v9;

        UUID.init()();
        swift_beginAccess();
        *(v59 + 16) = 0;

        swift_beginAccess();
        *(v59 + 24) = 0;
        *(v59 + 32) = 0;

        swift_beginAccess();
        *(v59 + 40) = v98;

        swift_beginAccess();
        *(v59 + 48) = v97;

        swift_beginAccess();
        *(v59 + 56) = v96;

        *(v59 + 65) = 11;
        v60 = v99;
        *(v59 + 72) = v102;
        *(v59 + 80) = v60;
        *(v59 + 90) = 1;
        *(v59 + 88) = 0;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v102 = v123;
        v61 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
        }

        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        v65 = v105;
        v64 = v106;
        if (v63 >= v62 >> 1)
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v61);
          v65 = v105;
          v64 = v106;
          v61 = v67;
        }

        *(v61 + 2) = v63 + 1;
        v109 = v61;
        v66 = &v61[16 * v63];
        *(v66 + 4) = v64;
        *(v66 + 5) = v65;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        swift_unknownObjectRelease();

        v29 = v122;
        v9 = v108;
      }

      else
      {

        v7 = swift_unknownObjectRelease();
      }

LABEL_17:
      ++a3;
      v35 = a1 == v113;
      a1 = v115;
      if (v35)
      {
        goto LABEL_54;
      }
    }
  }

  v68 = v108;
  v29 = _swiftEmptyArrayStorage;
  v109 = _swiftEmptyArrayStorage;
  v102 = _swiftEmptyArrayStorage;
LABEL_54:

  if (!(v29 >> 62))
  {
    v69 = v104;
    v70 = v102;
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

    goto LABEL_70;
  }

LABEL_69:
  v85 = _CocoaArrayWrapper.endIndex.getter();
  v69 = v104;
  v70 = v102;
  if (!v85)
  {
LABEL_70:

    v86 = v94;
    v87 = *(v93 + 8);
    v87(v103, v94);
    v87(v69, v86);
    outlined destroy of MOSuggestionSheetAssetDateRange(v110);

    return 0;
  }

LABEL_56:
  if ((v29 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_59:
    v71 = (*(v100 + 344))(countAndFlagsBits, object, 0, 0, 0, 0, 0, 0, 267);
    if (v70 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        goto LABEL_62;
      }
    }

    else if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_62:

      v74 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
      v76 = v75;
      swift_beginAccess();
      v71[3] = v74;
      v71[4] = v76;

      swift_beginAccess();
      v71[6] = v109;

      swift_beginAccess();
      v71[7] = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd);
      v77 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1002A48B0;
      v79 = v110;
      outlined init with copy of MOSuggestionSheetAssetDateRange(v110, v78 + v77);

      v80 = v94;
      v81 = *(v93 + 8);
      v81(v103, v94);
      v81(v69, v80);
      outlined destroy of MOSuggestionSheetAssetDateRange(v79);
      swift_beginAccess();
      v71[5] = v78;

      return v71;
    }

    v117 = specialized Array._copyToContiguousArray()(v72);
    specialized MutableCollection<>.sort(by:)(&v117);

    v73 = v117;
    swift_beginAccess();
    v71[2] = v73;
    goto LABEL_62;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_59;
  }

  __break(1u);

  __break(1u);
  return result;
}

double MOSuggestionContactAssetView.mediumWidth.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth);
  if ((*(v0 + OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x4034000000000000;
  v1[8] = 0;
  return 20.0;
}

void MOSuggestionContactAssetView.mediumWidth.setter(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth;
  *v2 = a1;
  *(v2 + 8) = 0;
}

void *(*MOSuggestionContactAssetView.mediumWidth.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  *a1 = MOSuggestionContactAssetView.mediumWidth.getter();
  return MOSuggestionContactAssetView.mediumWidth.modify;
}

void *MOSuggestionContactAssetView.mediumWidth.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

void MOSuggestionContactAssetView.init(image:name:contactFirstName:assignedTileSize:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v8 = &v6[OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth];
  *v8 = 0;
  v8[8] = 1;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v141.receiver = v6;
  v141.super_class = type metadata accessor for MOSuggestionContactAssetView();
  v12 = objc_msgSendSuper2(&v141, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v13 = objc_allocWithZone(UIImageView);
  v14 = v12;
  v15 = a1;
  v16 = [v13 initWithImage:v15];
  v17 = [objc_opt_self() effectWithStyle:8];
  v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];
  v19 = v16;
  [v19 bounds];
  [v18 setFrame:?];
  [v18 setAutoresizingMask:18];
  [v19 addSubview:v18];

  [v19 setContentMode:2];
  v20 = v14;
  [v20 addSubview:v19];
  v136 = v19;
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v21 = [objc_allocWithZone(UIImageView) initWithImage:v15];
  v137 = v15;

  v22 = v21;
  [v22 setContentMode:1];
  v23 = [objc_allocWithZone(UILabel) init];
  v24 = objc_opt_self();
  v25 = [v24 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v26 = [v25 fontDescriptor];
  v27 = [v26 fontDescriptorWithSymbolicTraits:2];

  if (!v27)
  {
    __break(1u);
    goto LABEL_84;
  }

  v28 = [v24 fontWithDescriptor:v27 size:0.0];

  [v23 setFont:v28];
  v29 = [objc_opt_self() labelColor];
  [v23 setTextColor:v29];

  [v23 setNumberOfLines:0];
  [v23 setLineBreakMode:4];
  v30 = a6 == 2 || a6 == 5;
  [v23 setTextAlignment:v30];

  v31 = String._bridgeToObjectiveC()();

  [v23 setText:v31];

  v32 = v23;
  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v33 = [objc_allocWithZone(UIStackView) init];
  v140 = v22;
  [v33 addArrangedSubview:v22];
  [v33 addArrangedSubview:v32];
  [v33 setAlignment:3];
  [v20 addSubview:v33];
  v139 = v32;
  if (a6 <= 4u)
  {
    if (a6 == 2)
    {

      [v32 setTextAlignment:1];
      [v33 setAxis:1];
      [v32 setNumberOfLines:1];
      v63 = [v33 superview];
      v64 = v136;
      if (v63)
      {
        v65 = v63;
        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        v66 = [v33 topAnchor];
        v67 = [v65 topAnchor];
        v68 = [v66 constraintEqualToAnchor:v67];

        [v68 setConstant:8.0];
        if (v68)
        {
          [v68 setActive:1];
        }
      }

      v69 = [v33 superview];
      v34 = v140;
      if (v69)
      {
        v70 = v69;
        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        v71 = [v33 leadingAnchor];
        v72 = [v70 leadingAnchor];
        v73 = [v71 constraintEqualToAnchor:v72];

        [v73 setConstant:8.0];
        if (v73)
        {
          [v73 setActive:1];
        }
      }

      v74 = [v33 superview];
      if (v74)
      {
        v75 = v74;
        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        v76 = [v33 trailingAnchor];
        v77 = [v75 trailingAnchor];
        v78 = [v76 constraintEqualToAnchor:v77];

        [v78 setConstant:-8.0];
        if (v78)
        {
          [v78 setActive:1];
        }
      }

      v79 = [v33 superview];
      if (v79)
      {
        v80 = v79;
        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        v81 = [v33 bottomAnchor];
        v82 = [v80 bottomAnchor];
        v83 = [v81 constraintEqualToAnchor:v82];

        if (v83)
        {
          [v83 setConstant:-8.0];
          [v83 setActive:1];
        }
      }

      [v33 setCustomSpacing:v140 afterView:8.0];
      goto LABEL_78;
    }

    if (a6 == 3)
    {

      v34 = v22;
      [v33 removeFromSuperview];
      [v20 addSubview:v22];
      v84 = [v22 superview];
      if (v84)
      {
        v85 = v84;
        [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
        v86 = [v22 topAnchor];
        v87 = [v85 topAnchor];
        v88 = [v86 constraintEqualToAnchor:v87];

        [v88 setConstant:4.0];
        if (v88)
        {
          [v88 setActive:1];
        }
      }

      v89 = [v22 superview];
      v64 = v136;
      if (v89)
      {
        v90 = v89;
        [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
        v91 = [v140 leadingAnchor];
        v92 = [v90 leadingAnchor];
        v93 = [v91 constraintEqualToAnchor:v92];

        [v93 setConstant:4.0];
        if (v93)
        {
          [v93 setActive:1];
        }
      }

      v94 = [v140 superview];
      if (v94)
      {
        v95 = v94;
        [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
        v96 = [v140 trailingAnchor];
        v97 = [v95 trailingAnchor];
        v98 = [v96 constraintEqualToAnchor:v97];

        [v98 setConstant:-4.0];
        if (v98)
        {
          [v98 setActive:1];
        }
      }

      v99 = [v140 superview];
      if (v99)
      {
        v100 = v99;
        [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
        v101 = [v140 bottomAnchor];
        v102 = [v100 bottomAnchor];
        v103 = [v101 constraintEqualToAnchor:v102];

        if (v103)
        {
          [v103 setConstant:-4.0];
          [v103 setActive:1];
        }
      }

      goto LABEL_78;
    }

    v34 = v22;
    if (a6 != 4)
    {
      goto LABEL_56;
    }

    goto LABEL_14;
  }

  v34 = v22;
  if (a6 - 6 < 2)
  {
LABEL_14:
    [v32 setTextAlignment:0];
    [v33 setAxis:0];
    v35 = [v34 widthAnchor];
    v36 = v32;
    v37 = [v34 heightAnchor];
    v38 = [v35 constraintEqualToAnchor:v37];

    [v38 setActive:1];
    v39 = [v36 leadingAnchor];

    v40 = [v34 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:12.0];

    [v41 setActive:1];
    v42 = [v33 superview];
    if (v42)
    {
      v43 = v42;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v44 = [v33 topAnchor];
      v45 = [v43 topAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];

      [v46 setConstant:8.0];
      [v46 setActive:1];
    }

    v47 = [v33 superview];
    if (v47)
    {
      v48 = v47;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v49 = [v33 leadingAnchor];
      v50 = [v48 leadingAnchor];
      v51 = [v49 constraintEqualToAnchor:v50];

      [v51 setConstant:8.0];
      [v51 setActive:1];
    }

    v52 = [v33 superview];
    if (v52)
    {
      v53 = v52;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v54 = [v33 trailingAnchor];
      v55 = [v53 trailingAnchor];
      v56 = [v54 constraintEqualToAnchor:v55];

      [v56 setConstant:-8.0];
      [v56 setActive:1];
    }

    v57 = [v33 superview];
    if (v57)
    {
      v58 = v57;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v59 = [v33 bottomAnchor];
      v60 = [v58 bottomAnchor];
      v61 = [v59 constraintEqualToAnchor:v60];

      [v61 setConstant:-8.0];
      [v61 setActive:1];
    }

    v62 = 12.0;
LABEL_76:
    v34 = v22;
    [v33 setCustomSpacing:v22 afterView:v62];
    goto LABEL_77;
  }

  if (a6 == 8)
  {

    v104 = [v24 preferredFontForTextStyle:UIFontTextStyleBody];
    v105 = [v104 fontDescriptor];
    v106 = v32;
    v107 = [v105 fontDescriptorWithSymbolicTraits:2];

    if (v107)
    {
      v34 = [v24 fontWithDescriptor:v107 size:0.0];

      [v106 setFont:v34];
      v32 = v106;
      goto LABEL_59;
    }

LABEL_84:
    __break(1u);
    return;
  }

  if (a6 == 5)
  {

LABEL_59:
    [v32 setTextAlignment:1];
    [v33 setAxis:1];
    v108 = [v33 superview];
    if (v108)
    {
      v109 = v108;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v110 = [v33 topAnchor];
      v111 = [v109 topAnchor];
      v112 = [v110 constraintEqualToAnchor:v111];

      [v112 setConstant:16.0];
      if (v112)
      {
        [v112 setActive:1];
      }
    }

    v113 = [v33 superview];
    if (v113)
    {
      v114 = v113;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v115 = [v33 leadingAnchor];
      v116 = [v114 leadingAnchor];
      v117 = [v115 constraintEqualToAnchor:v116];

      [v117 setConstant:12.0];
      if (v117)
      {
        [v117 setActive:1];
      }
    }

    v118 = [v33 superview];
    if (v118)
    {
      v119 = v118;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v120 = [v33 trailingAnchor];
      v121 = [v119 trailingAnchor];
      v122 = [v120 constraintEqualToAnchor:v121];

      [v122 setConstant:-12.0];
      if (v122)
      {
        [v122 setActive:1];
      }
    }

    v123 = [v33 superview];
    if (v123)
    {
      v124 = v123;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v125 = [v33 bottomAnchor];
      v126 = [v124 bottomAnchor];
      v127 = [v125 constraintEqualToAnchor:v126];

      if (v127)
      {
        [v127 setConstant:-16.0];
        [v127 setActive:1];
      }
    }

    v62 = 16.0;
    goto LABEL_76;
  }

LABEL_56:

LABEL_77:
  v64 = v136;
  v15 = v137;
LABEL_78:
  v128 = v20;
  [v128 setIsAccessibilityElement:1];
  v129 = UIAccessibilityTraitImage;
  v130 = [v128 accessibilityTraits];
  if ((v129 & ~v130) != 0)
  {
    v131 = v129;
  }

  else
  {
    v131 = 0;
  }

  [v128 setAccessibilityTraits:v131 | v130];
  [v128 setAccessibilityIgnoresInvertColors:1];

  v132 = [objc_opt_self() mainBundle];
  v142._object = 0x80000001002AFF30;
  v133._countAndFlagsBits = 0x746361746E6F43;
  v133._object = 0xE700000000000000;
  v134._countAndFlagsBits = 0;
  v134._object = 0xE000000000000000;
  v142._countAndFlagsBits = 0xD000000000000026;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v133, 0, v132, v134, v142);

  v135 = String._bridgeToObjectiveC()();

  [v128 setAccessibilityLabel:v135];
}

void MOSuggestionContactAssetView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOSuggestionContactAssetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionContactAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *MOSuggestionSheetAssetGridView.gridCollectionView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_gridCollectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetAssetGridView.gridCollectionView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_gridCollectionView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetAssetGridView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionSheetAssetGridView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

void MOSuggestionSheetAssetGridView.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t MOSuggestionSheetAssetGridView.assetCount.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetGridView.assetCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionSheetAssetGridView.isFullWidth.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetGridView.isFullWidth.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullWidth;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if (a1)
  {
    v4 = type metadata accessor for MOSuggestionSheetMosaicLayout();
  }

  else
  {
    v4 = type metadata accessor for MOSuggestionSheetHalfMosaicLayout();
  }

  v5 = [objc_allocWithZone(v4) init];
  v6 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout);
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout) = v5;

  return (*((swift_isaMask & *v1) + 0x1E0))();
}

void (*MOSuggestionSheetAssetGridView.isFullWidth.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullWidth;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionSheetAssetGridView.isFullWidth.modify;
}

void MOSuggestionSheetAssetGridView.isFullWidth.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + v3[4]) == 1)
    {
      v5 = type metadata accessor for MOSuggestionSheetMosaicLayout();
    }

    else
    {
      v5 = type metadata accessor for MOSuggestionSheetHalfMosaicLayout();
    }

    v6 = [objc_allocWithZone(v5) init];
    v7 = *(v4 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout);
    *(v4 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout) = v6;

    (*((swift_isaMask & *v4) + 0x1E0))();
  }

  free(v3);
}

uint64_t MOSuggestionSheetAssetGridView.isFullHeight.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetGridView.isFullHeight.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullHeight;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout);
  type metadata accessor for MOSuggestionSheetMosaicLayout();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *((swift_isaMask & *v5) + 0xA8);
    v7 = v4;
    v6(a1 & 1);
  }

  return (*((swift_isaMask & *v1) + 0x1E0))();
}

void (*MOSuggestionSheetAssetGridView.isFullHeight.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullHeight;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionSheetAssetGridView.isFullHeight.modify;
}

void MOSuggestionSheetAssetGridView.isFullHeight.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout);
    type metadata accessor for MOSuggestionSheetMosaicLayout();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v4 + v3[4]);
      v8 = *((swift_isaMask & *v6) + 0xA8);
      v9 = v5;
      v8(v7);

      v4 = v3[3];
    }

    (*((swift_isaMask & *v4) + 0x1E0))();
  }

  free(v3);
}

uint64_t key path setter for MOSuggestionSheetAssetGridView.assetViewModels : MOSuggestionSheetAssetGridView(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *((swift_isaMask & **a2) + 0x158);
  outlined copy of MOWeakArray<MOSuggestionSheetAssetViewModel>?(*a1);
  return v5(v2, v3, v4);
}

uint64_t MOSuggestionSheetAssetGridView.assetViewModels.didset()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetViewModels;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!v4)
  {
    return (*((swift_isaMask & *v1) + 0x1C0))(v3);
  }

  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
  }

LABEL_4:
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v19 = v4 & 0xC000000000000001;
    v9 = v4 + 32;
    while (1)
    {
      if (v8 >= v7)
      {
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          result = _CocoaArrayWrapper.endIndex.getter();
          v7 = result;
          if (!result)
          {
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v19)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = v11;
        }

        else
        {
          if (v8 >= *(v6 + 16))
          {
            goto LABEL_19;
          }

          v4 = *(v9 + 8 * v8);
        }

        v12 = (*(*v4 + 96))(v11);

        ++v8;
        if (v12)
        {
          v20[0] = (*(*v12 + 512))(v13);
          v20[1] = v14;
          v21[0] = 35;
          v21[1] = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v4 = StringProtocol.components<A>(separatedBy:)();

          if (!*(v4 + 16))
          {
            goto LABEL_20;
          }

          v15 = *(v4 + 32);
          v16 = *(v4 + 40);

          v17 = (*((swift_isaMask & *v1) + 0x178))(v20);
          v4 = v18;
          specialized Set._Variant.insert(_:)(v21, v15, v16);

          v17(v20, 0);
        }
      }

      if (v8 == v7)
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t MOSuggestionSheetAssetGridView.assetViewModels.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetViewModels);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of MOWeakArray<MOSuggestionSheetAssetViewModel>?(*v1);
  return v2;
}

uint64_t outlined copy of MOWeakArray<MOSuggestionSheetAssetViewModel>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t MOSuggestionSheetAssetGridView.assetViewModels.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetViewModels);
  swift_beginAccess();
  v8 = *v7;
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v8);
  return MOSuggestionSheetAssetGridView.assetViewModels.didset();
}

uint64_t outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*MOSuggestionSheetAssetGridView.assetViewModels.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetAssetGridView.assetViewModels.modify;
}

uint64_t MOSuggestionSheetAssetGridView.assetViewModels.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return MOSuggestionSheetAssetGridView.assetViewModels.didset();
  }

  return result;
}

uint64_t MOSuggestionSheetAssetGridView.selectedAssetIdentifiers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_selectedAssetIdentifiers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetAssetGridView.isBundleSelected.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isBundleSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetGridView.isBundleSelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isBundleSelected;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((swift_isaMask & *v1) + 0x1E8))(v4);
}

uint64_t (*MOSuggestionSheetAssetGridView.isBundleSelected.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetAssetGridView.isBundleSelected.modify;
}

uint64_t MOSuggestionSheetAssetGridView.isBundleSelected.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((swift_isaMask & **(a1 + 24)) + 0x1E8))(result);
  }

  return result;
}

uint64_t MOSuggestionSheetAssetGridView.isInterstitial.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isInterstitial;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionSheetAssetGridView.isInterstitial.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isInterstitial;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = (*((swift_isaMask & *v1) + 0xA8))(v4);
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }
}

void (*MOSuggestionSheetAssetGridView.isInterstitial.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetAssetGridView.isInterstitial.modify;
}

void MOSuggestionSheetAssetGridView.isInterstitial.modify(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*((swift_isaMask & **(a1 + 24)) + 0xA8))(v4);
    if (v5)
    {
      v6 = v5;
      [v5 reloadData];
    }
  }
}

char *MOSuggestionSheetAssetGridView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_gridCollectionView] = 0;
  v10 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView;
  v11 = [objc_allocWithZone(type metadata accessor for MOSuggestionAddedView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = 0;
  v12 = v11;
  [v12 setClipsToBounds:1];
  MOSuggestionAddedView.initAddedView()();

  *&v5[v10] = v12;
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetCount] = 0;
  v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullWidth] = 1;
  v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullHeight] = 1;
  v13 = &v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetViewModels];
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_selectedAssetIdentifiers] = &_swiftEmptySetSingleton;
  v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isBundleSelected] = 0;
  v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isInterstitial] = 0;
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout] = [objc_allocWithZone(type metadata accessor for MOSuggestionSheetMosaicLayout()) init];
  v18.receiver = v5;
  v18.super_class = type metadata accessor for MOSuggestionSheetAssetGridView();
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  MOSuggestionSheetAssetGridView.initGridCollectionView()();
  v15 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView;
  [v14 addSubview:*&v14[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView]];
  v16 = [*&v14[v15] layer];
  [v16 setCornerRadius:8.0];

  return v14;
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetAssetGridView();
  v1 = objc_msgSendSuper2(&v2, "layoutSubviews");
  (*((swift_isaMask & *v0) + 0x1E8))(v1);
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.setAddedViewInteractionState(_:)(MomentsUIService::MOSuggestionCollectionViewInteractionState a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView);
  v4 = *((swift_isaMask & *v3) + 0x98);
  v5 = v3;
  v4(a1 & 1);
}

void MOSuggestionSheetAssetGridView.initGridCollectionView()()
{
  [v0 bounds];
  v5 = [objc_allocWithZone(type metadata accessor for MOSuggestionSheetGridCollectionView()) initWithFrame:*(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout) collectionViewLayout:{v1, v2, v3, v4}];
  v6 = (*((swift_isaMask & *v0) + 0xB0))(v5);
  v7 = *((swift_isaMask & *v0) + 0xA8);
  v8 = (v7)(v6);
  if (v8)
  {
    v9 = v8;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v10 = v7();
  if (v10)
  {
    v11 = v10;
    [v11 setAllowsSelection:1];
    [v11 setAllowsMultipleSelection:1];
    [v11 setDelegate:v0];
    [v11 setDataSource:v0];

    v35 = v11;
    [v35 setClipsToBounds:0];
    v12 = [v35 layer];
    [v12 setCornerCurve:kCACornerCurveContinuous];

    v13 = [v35 layer];
    [v13 setMaskedCorners:1];

    v14 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v14];

    [v0 addSubview:v35];
    v15 = [v35 superview];
    if (v15)
    {
      v16 = v15;
      [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = [v35 topAnchor];
      v18 = [v16 topAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];

      [v19 setConstant:2.0];
      [v19 setActive:1];
    }

    v20 = [v35 superview];
    if (v20)
    {
      v21 = v20;
      [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = [v35 leadingAnchor];
      v23 = [v21 leadingAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];

      [v24 setConstant:2.0];
      [v24 setActive:1];
    }

    v25 = [v35 superview];
    if (v25)
    {
      v26 = v25;
      [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
      v27 = [v35 trailingAnchor];
      v28 = [v26 trailingAnchor];
      v29 = [v27 constraintEqualToAnchor:v28];

      [v29 setConstant:-2.0];
      [v29 setActive:1];
    }

    v30 = [v35 superview];
    if (v30)
    {
      v31 = v30;
      [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
      v32 = [v35 bottomAnchor];
      v33 = [v31 bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      [v34 setConstant:-2.0];
      [v34 setActive:1];
    }

    (*((swift_isaMask & *v0) + 0x1C0))();
  }
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.reloadAll()()
{
  v1 = (*((swift_isaMask & *v0) + 0x1C0))();
  v2 = (*((swift_isaMask & *v0) + 0xA8))(v1);
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];
  }
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.reload(index:)(Swift::Int index)
{
  v3 = (*((swift_isaMask & *v1) + 0x150))();
  if (v3 && (v3 >> 62 ? (v4 = _CocoaArrayWrapper.endIndex.getter()) : (v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v5 = , v4 > index))
  {
    v6 = (*((swift_isaMask & *v1) + 0xA8))(v5);
    if (!v6)
    {
      return;
    }

    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
    type metadata accessor for IndexPath();
    *(swift_allocObject() + 16) = xmmword_1002A48B0;
    IndexPath.init(row:section:)();
    oslog = Array._bridgeToObjectiveC()().super.isa;

    [v7 reconfigureItemsAtIndexPaths:oslog];
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static MOAngelLogger.assets);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "[MOSuggestionSheetAssetGridView] Refusing to reconfigure due to size / index mismatch", v10, 2u);
    }
  }
}

void MOSuggestionSheetAssetGridView.reloadWith(assetViewModel:index:)(uint64_t a1, int64_t a2)
{
  v4 = (*((swift_isaMask & *v2) + 0x150))();
  if (v4 && (v4 >> 62 ? (v5 = _CocoaArrayWrapper.endIndex.getter()) : (v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10)), , , v5 > a2))
  {
    v6 = (*((swift_isaMask & *v2) + 0x160))(v17);
    if (*v7)
    {

      specialized MOWeakArray.subscript.setter(v8, a2);
    }

    v9 = v6(v17, 0);
    v10 = (*((swift_isaMask & *v2) + 0xA8))(v9);
    if (v10)
    {
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_1002A48B0;
      IndexPath.init(row:section:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v11 reconfigureItemsAtIndexPaths:isa];
    }
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static MOAngelLogger.assets);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "[MOSuggestionSheetAssetGridView] Refusing to reconfigure due to size / index mismatch", v15, 2u);
    }
  }
}

uint64_t specialized MOWeakArray.subscript.setter(uint64_t result, unint64_t a2)
{
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService15MOWeakReferenceCyAA31MOSuggestionSheetAssetViewModelCGMd);
    v4 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    swift_weakAssign();
    v5 = *v2;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v5 < 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = v4;

      *v2 = v5;
      return result;
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.updateGridLayout()()
{
  v1 = (*((swift_isaMask & *v0) + 0xA8))();
  if (v1)
  {
    v3 = v1;
    v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout);
    [v3 setCollectionViewLayout:v2];
  }
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.updateAddedVisibility()()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView;
  v2 = *((swift_isaMask & *v0) + 0x180);
  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView);
  [v3 setHidden:(v2() & 1) == 0];

  v4 = *(v0 + v1);
  [v0 bounds];
  [v4 setFrame:?];
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.updateSelectedAssets()()
{
  v1 = (*((swift_isaMask & *v0) + 0xA8))();
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }
}

Swift::Int __swiftcall MOSuggestionSheetAssetGridView.maxAssetCount()()
{
  result = (*((swift_isaMask & *v0) + 0x150))();
  if (result)
  {
    v2 = result;
    if ((*((swift_isaMask & *v0) + 0x198))())
    {
      if (v2 >> 62)
      {
        v3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v3 >= 13)
      {
        return 13;
      }

      else
      {
        return v3;
      }
    }

    else
    {

      if ((*((swift_isaMask & *v0) + 0x120))(v4))
      {
        return 5;
      }

      else
      {
        return 4;
      }
    }
  }

  return result;
}

id MOSuggestionSheetAssetGridView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetAssetGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int __swiftcall MOSuggestionSheetAssetGridView.collectionView(_:numberOfItemsInSection:)(UICollectionView _, Swift::Int numberOfItemsInSection)
{
  result = (*((swift_isaMask & *v2) + 0x150))(_.super.super.super.super.isa, numberOfItemsInSection);
  if (result)
  {
    if (result >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = (*((swift_isaMask & *v2) + 0x1F8))(v5);
    if (result >= v4)
    {
      return v4;
    }
  }

  return result;
}

void MOSuggestionSheetAssetGridView.collectionView(_:didEndDisplaying:forItemAt:)(uint64_t a1, void *a2)
{
  type metadata accessor for MOSuggestionSheetMosaicCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *((swift_isaMask & *v3) + 0x170);
    v5 = a2;
    v4();
  }
}

void *MOSuggestionSheetAssetGridView.collectionView(_:cellForItemAt:)(void *a1, NSObject *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = String._bridgeToObjectiveC()();
  v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v70 = a1;
  v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v11.super.isa];

  type metadata accessor for MOSuggestionSheetMosaicCell();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = v13;
  v15 = IndexPath.item.getter();
  v10 = *((swift_isaMask & *v3) + 0x150);
  v16 = (v10)();
  v72 = v7;
  if (v16)
  {
    if (v16 >> 62)
    {
      v71 = v14;
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v71;
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 >= v17)
    {
      return v14;
    }
  }

  else if (v15 > -2)
  {
    return v14;
  }

  v71 = v14;
  v18 = (v10)(v16);
  if (v18)
  {
    v11.super.isa = v18;
    v7 = v19;
    v20 = IndexPath.item.getter();
    v12 = (v11.super.isa & 0xFFFFFFFFFFFFFF8);
    if (v11.super.isa >> 62)
    {
      v68 = v20;
      v56 = _CocoaArrayWrapper.endIndex.getter();
      if ((v56 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_37;
    }

    v21 = *((v11.super.isa & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v20 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v20 >= v21)
        {
          break;
        }

        v69 = v7;
        if ((v11.super.isa & 0xC000000000000001) != 0)
        {
LABEL_37:
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v22 = v23;
        }

        else
        {
          if (v20 >= v12[2])
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v22 = *(v11.super.isa + v20 + 4);
        }

        v7 = (*(*v22 + 96))(v23);

        outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v11.super.isa);
        v69 = v7;
        if (!v7)
        {
          goto LABEL_44;
        }

        v24 = [v70 collectionViewLayout];
        v6 = a2;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v72 = v24;
        a2 = [v24 layoutAttributesForItemAtIndexPath:isa];

        if (a2)
        {
          [a2 size];
          v27 = v26;
          [a2 size];
          v29 = v27 - v28;
        }

        else
        {
          v29 = 0.0;
        }

        v10 = v71;
        v30 = v69;
        v31 = (*(*v69 + 808))(fabs(v29) < 5.0);
        v32 = *((swift_isaMask & *v3) + 0x198);
        v70 = ((swift_isaMask & *v3) + 408);
        v68 = v32;
        v33 = v32(v31);
        (*((swift_isaMask & *v10) + 0x128))(v33 & 1);
        v34 = *((swift_isaMask & *v10) + 0x110);

        v36 = v34(v35);
        v11.super.isa = (*((swift_isaMask & *v3) + 0x168))(v36);
        v37 = (*(*v30 + 512))();
        v9 = v38;
        v73[0] = v37;
        v73[1] = v38;
        v73[4] = 35;
        v73[5] = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v12 = StringProtocol.components<A>(separatedBy:)();

        if (!v12[2])
        {
          goto LABEL_39;
        }

        v39 = v12[4];
        v40 = v12[5];

        v41 = specialized Set.contains(_:)(v39, v40, v11.super.isa);

        v42 = [v10 setSelected:v41 & 1];
        v7 = *((swift_isaMask & *v3) + 0x120);
        if ((v7)(v42))
        {
          v10 = 4;
        }

        else
        {
          v10 = 3;
        }

        v43 = (v7)();
        v9 = (*((swift_isaMask & *v3) + 0x108))();
        if (IndexPath.row.getter() != v10)
        {
          goto LABEL_33;
        }

        v44 = 4;
        if (v43)
        {
          v44 = 5;
        }

        if (v9 <= v44)
        {
          goto LABEL_33;
        }

        v12 = v3;
        v45 = (v7)();
        v11.super.isa = &swift_isaMask;
        v46 = (*((swift_isaMask & *v3) + 0x108))();
        if (v45)
        {
          v47 = v46 - 5;
          if (!__OFSUB__(v46, 5))
          {
            goto LABEL_32;
          }

          __break(1u);
        }

        v47 = v46 - 4;
        if (!__OFSUB__(v46, 4))
        {
LABEL_32:
          v48 = v47 + 1;
          v49 = *((swift_isaMask & *v71) + 0x148);
          v50 = v49(v73);
          *(v51 + 8) = v48;
          v52 = v50(v73, 0);
          v53 = (v68)(v52);
          v54 = v49(v73);
          *v55 = (v53 & 1) == 0;
          v54(v73, 0);
LABEL_33:

          goto LABEL_54;
        }

LABEL_40:
        __break(1u);
LABEL_41:

        __break(1u);
LABEL_42:
        v21 = v56;
        v20 = v68;
      }

      while ((v68 & 0x8000000000000000) == 0);
    }

    outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v11.super.isa);
  }

LABEL_44:
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  __swift_project_value_buffer(v57, static MOAngelLogger.shared);
  v58 = v72;
  (*(v72 + 2))(v9, a2, v6);
  v59 = v3;
  a2 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(a2, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134218240;
    v62 = IndexPath.item.getter();
    v63 = v58[1](v9, v6);
    *(v61 + 4) = v62;
    *(v61 + 12) = 2048;
    v64 = (v10)(v63);
    if (v64)
    {
      if (v64 >> 62)
      {
        v65 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v65 = 0;
    }

    *(v61 + 14) = v65;

    _os_log_impl(&_mh_execute_header, a2, v60, "[MOSuggestionSheetAssetGridView] index out of bounds, indexPath.item=%ld, count=%ld", v61, 0x16u);
  }

  else
  {
    v58[1](v9, v6);

    a2 = v59;
  }

LABEL_54:

  return v71;
}

uint64_t MOSuggestionSheetAssetGridView.collectionView(_:willDisplay:forItemAt:)(void *a1, void *a2)
{
  v4 = v2;
  v6 = *((swift_isaMask & *v2) + 0x150);
  result = v6();
  if (result)
  {
    v9 = result;
    v10 = v8;
    v11 = IndexPath.item.getter();
    v12 = (v9 & 0xFFFFFFFFFFFFFF8);
    if (v9 >> 62)
    {
      v26 = v11;
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_24;
    }

    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v11 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v11 >= v13)
        {
          break;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
LABEL_24:
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = v15;
        }

        else
        {
          if (v11 >= v12[2])
          {
            __break(1u);
            goto LABEL_26;
          }

          v14 = *(v9 + 8 * v11 + 32);
        }

        v16 = (*(*v14 + 96))(v15);

        v17 = v9;
        v9 = v16;
        result = outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v17);
        v3 = a1;
        a1 = &swift_isaMask;
        if (!v9)
        {
          return result;
        }

        v10 = IndexPath.item.getter();
        v18 = v6();
        if (v18)
        {
          if (!(v18 >> 62))
          {
            v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_12;
          }

LABEL_26:
          v19 = _CocoaArrayWrapper.endIndex.getter();
LABEL_12:

          if (v10 >= v19)
          {
            goto LABEL_19;
          }

          goto LABEL_13;
        }

        if (v10 >= -1)
        {
LABEL_19:
        }

LABEL_13:
        v4 = (*((*a1 & *v4) + 0x168))(v18);
        (*(*v9 + 512))();
        v10 = v20;
        lazy protocol witness table accessor for type String and conformance String();
        v12 = StringProtocol.components<A>(separatedBy:)();

        if (v12[2])
        {
          v22 = v12[4];
          v23 = v12[5];

          v24 = specialized Set.contains(_:)(v22, v23, v4);

          if (v24)
          {
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            [v3 selectItemAtIndexPath:isa animated:0 scrollPosition:1];
          }

          [a2 setSelected:{v24 & 1, v26}];
        }

        __break(1u);
LABEL_28:
        v13 = v21;
        v11 = v26;
      }

      while ((v26 & 0x8000000000000000) == 0);
    }

    return outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v9);
  }

  return result;
}

uint64_t @objc MOSuggestionSheetAssetGridView.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

void specialized MOSuggestionSheetAssetGridView.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_gridCollectionView) = 0;
  v2 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView;
  v3 = [objc_allocWithZone(type metadata accessor for MOSuggestionAddedView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = 0;
  v4 = v3;
  [v4 setClipsToBounds:1];
  MOSuggestionAddedView.initAddedView()();

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetCount) = 0;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullWidth) = 1;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullHeight) = 1;
  v5 = (v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetViewModels);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_selectedAssetIdentifiers) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isBundleSelected) = 0;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isInterstitial) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized MOSuggestionSheetAssetGridView.collectionView(_:didSelectItemAt:)(uint64_t a1)
{
  v3 = v1;
  result = (*((swift_isaMask & *v1) + 0x150))();
  if (result)
  {
    v6 = result;
    v7 = IndexPath.item.getter();
    v8 = (v6 & 0xFFFFFFFFFFFFFF8);
    if (v6 >> 62)
    {
      a1 = v7;
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_31;
    }

    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v7 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v7 >= v9)
        {
          break;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
LABEL_31:
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v11;
        }

        else
        {
          if (v7 >= v8[2])
          {
            __break(1u);
LABEL_33:
            swift_once();
            goto LABEL_21;
          }

          v10 = *(v6 + 8 * v7 + 32);
        }

        a1 = (*(*v10 + 96))(v11);

        result = outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v6);
        if (!a1)
        {
          return result;
        }

        v12 = (*a1 + 512);
        v2 = *v12;
        v6 = v12;
        if ((*v12)(result) == 0x6C6F686563616C70 && v13 == 0xEB00000000726564)
        {
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
        }

        if (one-time initialization token for assets != -1)
        {
          goto LABEL_33;
        }

LABEL_21:
        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static MOAngelLogger.assets);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v34 = v18;
          v19 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v35 = v33;
          *v19 = 136315138;
          v36 = v2();
          v37 = v20;
          v38 = 35;
          v39 = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v8 = StringProtocol.components<A>(separatedBy:)();

          if (!v8[2])
          {
            goto LABEL_35;
          }

          v22 = v8[4];
          v23 = v8[5];

          v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v35);

          *(v19 + 4) = v24;
          _os_log_impl(&_mh_execute_header, v17, v34, "[MOSuggestionSheetAssetGridView] selecting %s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
        }

        v36 = v2();
        v37 = v25;
        v38 = 35;
        v39 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v2 = &v36;
        v8 = StringProtocol.components<A>(separatedBy:)();

        if (v8[2])
        {
          v26 = v8[4];
          v27 = v8[5];

          v28 = (*((swift_isaMask & *v3) + 0x178))(&v36);
          specialized Set._Variant.insert(_:)(&v38, v26, v27);

          v29 = v28(&v36, 0);
          if ((*((swift_isaMask & *v3) + 0xF0))(v29))
          {
            v31 = v30;
            ObjectType = swift_getObjectType();
            (*(v31 + 8))(ObjectType, v31);
            swift_unknownObjectRelease();
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v9 = v21;
        v7 = a1;
      }

      while ((a1 & 0x8000000000000000) == 0);
    }

    return outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v6);
  }

  return result;
}

uint64_t specialized MOSuggestionSheetAssetGridView.collectionView(_:didDeselectItemAt:)(unint64_t a1)
{
  v3 = v1;
  result = (*((swift_isaMask & *v1) + 0x150))();
  if (result)
  {
    v6 = result;
    v7 = IndexPath.item.getter();
    v8 = (v6 & 0xFFFFFFFFFFFFFF8);
    if (v6 >> 62)
    {
      a1 = v7;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_21;
    }

    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v7 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v7 >= v9)
        {
          break;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
LABEL_21:
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v11;
        }

        else
        {
          if (v7 >= v8[2])
          {
            __break(1u);
LABEL_23:
            swift_once();
            goto LABEL_10;
          }

          v10 = *(v6 + 8 * v7 + 32);
        }

        v2 = (*(*v10 + 96))(v11);

        result = outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v6);
        if (!v2)
        {
          return result;
        }

        if (one-time initialization token for assets != -1)
        {
          goto LABEL_23;
        }

LABEL_10:
        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static MOAngelLogger.assets);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v6 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v29 = v28;
          *v6 = 136315138;
          v30 = (*(*v2 + 512))();
          v31 = v15;
          v32 = 35;
          v33 = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v8 = StringProtocol.components<A>(separatedBy:)();

          if (!v8[2])
          {
            goto LABEL_25;
          }

          v17 = v8[4];
          v18 = v8[5];

          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v29);

          *(v6 + 4) = v19;
          _os_log_impl(&_mh_execute_header, v13, v14, "[MOSuggestionSheetAssetGridView] un-selecting %s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
        }

        else
        {
        }

        v30 = (*(*v2 + 512))();
        v31 = v20;
        v32 = 35;
        v33 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        a1 = &v30;
        v8 = StringProtocol.components<A>(separatedBy:)();

        if (v8[2])
        {
          v21 = v8[4];
          v22 = v8[5];

          v23 = (*((swift_isaMask & *v3) + 0x178))(&v30);
          specialized Set._Variant.remove(_:)(v21, v22);

          v24 = v23(&v30, 0);
          if ((*((swift_isaMask & *v3) + 0xF0))(v24))
          {
            v26 = v25;
            ObjectType = swift_getObjectType();
            (*(v26 + 8))(ObjectType, v26);
            swift_unknownObjectRelease();
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v9 = v16;
        v7 = a1;
      }

      while ((a1 & 0x8000000000000000) == 0);
    }

    return outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v6);
  }

  return result;
}

uint64_t sub_10004EEFC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_10004EF58(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xB0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10004EFC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10004F01C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0xF8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_10004F090@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_10004F154@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004F21C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x138))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004F2E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x150))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_10004F350@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t sub_10004F3B4(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x170);

  return v2(v3);
}

uint64_t sub_10004F420@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x180))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004F4E8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x198))();
  *a2 = result & 1;
  return result;
}

id one-time initialization function for taskWorkKind()
{
  static HealthCheckTaskProcessor.taskWorkKind = MOTaskWorkHealthCheck;
  return MOTaskWorkHealthCheck;
}

{
  static BackgroundSyncTaskProcessor.taskWorkKind = MOTaskWorkBackgroundSync;
  return MOTaskWorkBackgroundSync;
}

uint64_t *HealthCheckTaskProcessor.taskWorkKind.unsafeMutableAddressor()
{
  if (one-time initialization token for taskWorkKind != -1)
  {
    swift_once();
  }

  return &static HealthCheckTaskProcessor.taskWorkKind;
}

id static HealthCheckTaskProcessor.taskWorkKind.getter()
{
  if (one-time initialization token for taskWorkKind != -1)
  {
    swift_once();
  }

  v1 = static HealthCheckTaskProcessor.taskWorkKind;

  return v1;
}

id MOSuggestionAssetReference.assetType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void MOServerConnectionProperties.connectionHost.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t MOSuggestionAssetReference.bundleType.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

id static HealthCheckTaskProcessor.createWorker()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for HealthCheckTaskProcessor();
  v3 = swift_allocObject();
  v4 = MOTaskActionMore;
  *(v3 + 16) = MOTaskActionMore;
  *(v3 + 24) = 2;
  a1[3] = v2;
  a1[4] = &protocol witness table for HealthCheckTaskProcessor;
  *a1 = v3;
  return v4;
}

uint64_t HealthCheckTaskProcessor.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MOTaskActionMore;
  *(v0 + 16) = MOTaskActionMore;
  *(v0 + 24) = 2;
  v2 = v1;
  return v0;
}

Swift::String __swiftcall HealthCheckTaskProcessor.me()()
{
  type metadata accessor for HealthCheckTaskProcessor();

  v0 = String.init<A>(describing:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t HealthCheckTaskProcessor.beginTask()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(HealthCheckTaskProcessor.beginTask(), 0, 0);
}

{
  v17 = v0;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  if (v3)
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = (*(*v7 + 144))(v9);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "beginTask: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  (*(v5 + 8))(v4, v6);
  v13 = MOTaskActionMore;

  v14 = v0[1];

  return v14(v13);
}

uint64_t HealthCheckTaskProcessor.continueTask(progressReporter:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(HealthCheckTaskProcessor.continueTask(progressReporter:), 0, 0);
}

uint64_t (*HealthCheckTaskProcessor.continueTask(progressReporter:)())(uint64_t, void)
{
  v24 = v0;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  if (v3)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = (*(*v6 + 144))();
    v22 = v7;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "continueTask: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v4, v22);
  }

  else
  {

    (*(v5 + 8))(v4, v7);
  }

  v13 = *(v0 + 56);
  (*(**(v0 + 48) + 112))(1);
  result = (*(*v13 + 136))(v0 + 16);
  if (__OFSUB__(*v15, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = *(v0 + 56);
    --*v15;
    v17 = result(v0 + 16, 0);
    v18 = (*(*v16 + 120))(v17);
    v19 = &MOTaskActionMore;
    if (v18 <= 0)
    {
      v19 = &MOTaskActionCompleted;
    }

    v20 = *v19;

    v21 = *(v0 + 8);

    return v21(v20);
  }

  return result;
}

uint64_t HealthCheckTaskProcessor.endTask()()
{
  return _swift_task_switch(HealthCheckTaskProcessor.endTask(), 0, 0);
}

{
  v3 = *(v0 + 8);
  v1 = MOTaskActionCompleted;

  return v3(v1);
}

uint64_t HealthCheckTaskProcessor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t HealthCheckTaskProcessor.init()()
{
  v1 = MOTaskActionMore;
  *(v0 + 16) = MOTaskActionMore;
  *(v0 + 24) = 2;
  v2 = v1;
  return v0;
}

uint64_t protocol witness for TaskProcessorWorker.beginTask() in conformance HealthCheckTaskProcessor()
{
  v4 = (*(**v0 + 152) + **(**v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TaskProcessorWorker.continueTask(progressReporter:) in conformance HealthCheckTaskProcessor;

  return v4();
}

uint64_t protocol witness for TaskProcessorWorker.continueTask(progressReporter:) in conformance HealthCheckTaskProcessor(uint64_t a1)
{
  v6 = (*(**v1 + 160) + **(**v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for TaskProcessorWorker.continueTask(progressReporter:) in conformance HealthCheckTaskProcessor;

  return v6(a1);
}

uint64_t protocol witness for TaskProcessorWorker.endTask() in conformance HealthCheckTaskProcessor()
{
  v4 = (*(**v0 + 168) + **(**v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TaskProcessorWorker.endTask() in conformance HealthCheckTaskProcessor;

  return v4();
}

uint64_t protocol witness for TaskProcessorWorker.endTask() in conformance HealthCheckTaskProcessor(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id protocol witness for static TaskProcessorWorker.createWorker() in conformance HealthCheckTaskProcessor@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthCheckTaskProcessor();
  v5 = swift_allocObject();
  v6 = MOTaskActionMore;
  *(v5 + 16) = MOTaskActionMore;
  *(v5 + 24) = 2;
  a2[3] = v4;
  a2[4] = a1;
  *a2 = v5;
  return v6;
}

uint64_t sub_100050528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1000505C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

void one-time initialization function for font()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = v4;
    v6 = [v0 fontWithDescriptor:v5 size:0.0];

    static MOSuggestionSheetOverflowView.font = v6;
  }

  else
  {
    __break(1u);
  }
}

{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCallout;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = v4;
    v6 = [v0 fontWithDescriptor:v5 size:0.0];

    static MOSuggestionAddedView.font = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *MOSuggestionSheetOverflowView.font.unsafeMutableAddressor()
{
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetOverflowView.font;
}

void one-time initialization function for config()
{
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  v0 = static MOSuggestionSheetOverflowView.font;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  static MOSuggestionSheetOverflowView.config = v3;
}

{
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  v0 = static MOSuggestionAddedView.font;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2];

  static MOSuggestionAddedView.config = v3;
}

uint64_t *MOSuggestionSheetOverflowView.config.unsafeMutableAddressor()
{
  if (one-time initialization token for config != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetOverflowView.config;
}

void one-time initialization function for symbolColor()
{
  v0 = [objc_opt_self() tertiarySystemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent:0.5];

  static MOSuggestionSheetOverflowView.symbolColor = v1;
}

uint64_t *MOSuggestionSheetOverflowView.symbolColor.unsafeMutableAddressor()
{
  if (one-time initialization token for symbolColor != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetOverflowView.symbolColor;
}

id one-time initialization function for numberColor()
{
  result = [objc_opt_self() systemWhiteColor];
  static MOSuggestionSheetOverflowView.numberColor = result;
  return result;
}

uint64_t *MOSuggestionSheetOverflowView.numberColor.unsafeMutableAddressor()
{
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetOverflowView.numberColor;
}

void MOSuggestionSheetOverflowView.overflowCount.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 mainBundle];
  v11._object = 0x80000001002B02B0;
  v5._countAndFlagsBits = 25637;
  v5._object = 0xE200000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002A48B0;
  v8 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCount;
  swift_beginAccess();
  v9 = *(v0 + v8);
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = v9;
  static String.localizedStringWithFormat(_:_:)();

  v10 = String._bridgeToObjectiveC()();

  [v3 setText:v10];
}

uint64_t MOSuggestionSheetOverflowView.overflowCount.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionSheetOverflowView.overflowCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
  MOSuggestionSheetOverflowView.overflowCount.didset();
}

void (*MOSuggestionSheetOverflowView.overflowCount.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetOverflowView.overflowCount.modify;
}

void MOSuggestionSheetOverflowView.overflowCount.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    MOSuggestionSheetOverflowView.overflowCount.didset();
  }
}

char *MOSuggestionSheetOverflowView.__allocating_init(overflowCount:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = *&v4[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel];
  v6 = v5;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  return v4;
}

id MOSuggestionSheetOverflowView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_blurEffectView;
  *&v4[v9] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v4[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCount] = 0;
  v10 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  [v11 setTextColor:static MOSuggestionSheetOverflowView.numberColor];
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  [v11 setFont:static MOSuggestionSheetOverflowView.font];
  [v11 setAdjustsFontForContentSizeCategory:1];
  *&v4[v10] = v11;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for MOSuggestionSheetOverflowView();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  MOSuggestionSheetOverflowView.initOverflowView()();

  return v12;
}

void MOSuggestionSheetOverflowView.initOverflowView()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_blurEffectView];
  v3 = [objc_opt_self() _effectWithBlurRadius:10.0 scale:1.0];
  [v2 setEffect:v3];

  v4 = [objc_opt_self() blackColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  [v2 setBackgroundColor:v5];
  [v1 addSubview:v2];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v6 = [v2 layer];
  [v6 setCornerRadius:7.0];

  [v2 setClipsToBounds:1];
  v7 = [objc_allocWithZone(UIStackView) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAxis:0];
  [v7 setDistribution:2];
  [v7 setAlignment:3];
  [v1 addSubview:v7];
  v8 = [v7 superview];
  if (v8)
  {
    v9 = v8;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v7 centerXAnchor];
    v11 = [v9 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:0.0];
    [v12 setActive:1];
  }

  v13 = [v7 superview];
  if (v13)
  {
    v14 = v13;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v7 centerYAnchor];
    v16 = [v14 centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:0.0];
    [v17 setActive:1];
  }

  v18 = [objc_allocWithZone(UIImageView) init];
  if (one-time initialization token for config != -1)
  {
    swift_once();
  }

  v19 = static MOSuggestionSheetOverflowView.config;
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

  [v18 setImage:v21];
  if (one-time initialization token for symbolColor != -1)
  {
    swift_once();
  }

  [v18 setTintColor:static MOSuggestionSheetOverflowView.symbolColor];
  v27 = v18;
  [v27 setOverrideUserInterfaceStyle:1];
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  [v7 addArrangedSubview:v27];
  v22 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel;
  v23 = one-time initialization token for numberColor;
  v24 = *&v1[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel];
  if (v23 != -1)
  {
    swift_once();
  }

  [v24 setTextColor:static MOSuggestionSheetOverflowView.numberColor];

  v25 = one-time initialization token for font;
  v26 = *&v1[v22];
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setFont:static MOSuggestionSheetOverflowView.font];

  [*&v1[v22] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v7 addArrangedSubview:*&v1[v22]];
}

id MOSuggestionSheetOverflowView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetOverflowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized MOSuggestionSheetOverflowView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_blurEffectView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCount) = 0;
  v2 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel;
  v3 = [objc_allocWithZone(UILabel) init];
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  [v3 setTextColor:static MOSuggestionSheetOverflowView.numberColor];
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  [v3 setFont:static MOSuggestionSheetOverflowView.font];
  [v3 setAdjustsFontForContentSizeCategory:1];
  *(v0 + v2) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10005174C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

Swift::Int MOSuggestionCollectionViewInteractionState.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

void MOSuggestionSheetInterstitialView.controller.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*MOSuggestionSheetInterstitialView.controller.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_controller;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MOSuggestionSheetInterstitialView.controller.modify;
}

void MOSuggestionSheetInterstitialView.controller.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t MOSuggestionSheetInterstitialView.presentationDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionSheetInterstitialView.presentationDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

uint64_t MOSuggestionSheetInterstitialView.cellViewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetInterstitialView.toggleListViewCarouselModeAccessibilityLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode);
  v2 = [objc_opt_self() mainBundle];
  v9 = 0x80000001002B06A0;
  if (v1)
  {
    v3 = 0x6C6573756F726143;
    v4 = 0xED00007765695620;
  }

  else
  {
    v3 = 0x656956207473694CLL;
    v4 = 0xE900000000000077;
  }

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = 0xD00000000000004ELL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, v5, *(&v9 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

void closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.titleLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:0];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    [v0 setTextAlignment:1];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.dateLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setLineBreakMode:4];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  [v0 setTextAlignment:1];
  return v0;
}

id closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.assetTypeLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v1];

  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = [v2 colorWithAlphaComponent:0.67];

  [v0 setTextColor:v3];
  [v0 setTextAlignment:1];
  return v0;
}

id closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.emptySelectionLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v1];

  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = [v2 colorWithAlphaComponent:0.67];

  [v0 setTextColor:v3];
  [v0 setTextAlignment:1];
  [v0 setHidden:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  return v0;
}

void one-time initialization function for SELECT_AT_LEAST_ONE_TEXT()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002B0990;
  v1._object = 0x80000001002B0960;
  v4._countAndFlagsBits = 0xD000000000000049;
  v1._countAndFlagsBits = 0xD00000000000002ELL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static MOSuggestionSheetInterstitialView.SELECT_AT_LEAST_ONE_TEXT = v3;
}

__int128 *MOSuggestionSheetInterstitialView.SELECT_AT_LEAST_ONE_TEXT.unsafeMutableAddressor()
{
  if (one-time initialization token for SELECT_AT_LEAST_ONE_TEXT != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetInterstitialView.SELECT_AT_LEAST_ONE_TEXT;
}

uint64_t static MOSuggestionSheetInterstitialView.SELECT_AT_LEAST_ONE_TEXT.getter()
{
  if (one-time initialization token for SELECT_AT_LEAST_ONE_TEXT != -1)
  {
    swift_once();
  }

  v0 = static MOSuggestionSheetInterstitialView.SELECT_AT_LEAST_ONE_TEXT;

  return v0;
}

char *MOSuggestionSheetInterstitialView.__allocating_init(controller:cellViewModel:presentationDelegate:selectedSuggestion:indexPath:fromNotification:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v11 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate];
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode] = 0;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_photoMemoryBanner] = 0;
  v13 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel] = 0;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton] = 0;
  v14 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView;
  v15 = [objc_allocWithZone(UIScrollView) init];
  [v15 setShowsVerticalScrollIndicator:0];
  *&v11[v14] = v15;
  v16 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView;
  v17 = [objc_allocWithZone(UIStackView) init];
  [v17 setAxis:1];
  [v17 setAlignment:3];
  [v17 setSpacing:3.0];
  *&v11[v16] = v17;
  v18 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView;
  v19 = [objc_allocWithZone(UIStackView) init];
  [v19 setAxis:0];
  [v19 setAlignment:3];
  *&v11[v18] = v19;
  v20 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel;
  closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.titleLabel();
  *&v11[v20] = v21;
  v22 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel;
  *&v11[v22] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.dateLabel();
  v23 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel;
  *&v11[v23] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.assetTypeLabel();
  v24 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel;
  *&v11[v24] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.emptySelectionLabel();
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_portraitConstraints] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_landscapeConstraints] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_commonConstraints] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint] = 0;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint] = 0;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint] = 0;
  v25 = &v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString];
  *v26 = 0;
  v26[1] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v12 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v27 = &v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_selectedSuggestion];
  *v27 = a5;
  v27[1] = a6;
  v28 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_indexPath;
  v62 = type metadata accessor for IndexPath();
  v29 = *(v62 - 8);
  (*(v29 + 16))(&v11[v28], a7, v62);
  v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_fromNotification] = a8;
  v30 = objc_allocWithZone(UINavigationBar);

  v31 = [v30 init];
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar] = v31;
  swift_beginAccess();
  *&v11[v13] = a2;

  v33 = *((swift_isaMask & *a1) + 0x1B0);
  LOBYTE(v30) = v33(v32);
  v34 = (*((swift_isaMask & *a1) + 0x1C8))();
  v36 = v35;
  v37 = (*((swift_isaMask & *a1) + 0x1C0))();
  v38 = specialized static MOSuggestionSheetInterstitialView.makeJournalButton(publicUI:clientName:isSourceJournalComposer:)(v30 & 1, v34, v36, v37 & 1);

  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton] = v38;
  v40 = v33(v39);
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton] = specialized static MOSuggestionSheetInterstitialView.makeQuickAddButton(publicUI:)(v40 & 1);
  v41 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialExpandableListView());
  v42 = a1;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView] = MOSuggestionInterstitialExpandableListView.init(controller:)(v42);
  v43 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialCarouselView());
  v44 = v42;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView] = MOSuggestionInterstitialCarouselView.init(controller:)(v44);
  v67.receiver = v11;
  v67.super_class = v63;
  v45 = objc_msgSendSuper2(&v67, "initWithNibName:bundle:", 0, 0);
  v46 = *&v45[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
  v47 = *((swift_isaMask & *v46) + 0x198);
  v48 = v45;
  v49 = v46;
  v47(v45, &protocol witness table for MOSuggestionSheetInterstitialView);

  v50 = *&v48[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
  v51 = *((swift_isaMask & *v50) + 0xF0);
  v52 = v48;
  v53 = v50;
  v51(v45, &protocol witness table for MOSuggestionSheetInterstitialView);

  v54 = [objc_opt_self() defaultCenter];
  [v54 addObserver:v52 selector:"handleContentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];

  v55 = (*(*a2 + 176))();
  v56 = &v52[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString];
  *v56 = v55;
  v56[1] = v57;

  MOSuggestionSheetInterstitialView.updateTitleLabelString()();
  (*((swift_isaMask & *v52) + 0x318))();
  MOSuggestionSheetInterstitialView.updateConstraints()();

  (*(v29 + 8))(a7, v62);

  swift_unknownObjectRelease();

  return v52;
}

char *MOSuggestionSheetInterstitialView.init(controller:cellViewModel:presentationDelegate:selectedSuggestion:indexPath:fromNotification:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = specialized MOSuggestionSheetInterstitialView.init(controller:cellViewModel:presentationDelegate:selectedSuggestion:indexPath:fromNotification:)(a1, a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease();

  return v9;
}

void MOSuggestionSheetInterstitialView.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v7 = specialized static MOAngelRootViewController.isLandscape.getter();
  v8 = *&static MOAngelRootViewController.LANDSCAPE_WIDTH;
  if (!v7)
  {
    v8 = a2;
  }

  [v3 setPreferredContentSize:{v8, a3}];
  v13.receiver = v3;
  v13.super_class = type metadata accessor for MOSuggestionSheetInterstitialView();
  objc_msgSendSuper2(&v13, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v12[4] = partial apply for closure #1 in MOSuggestionSheetInterstitialView.viewWillTransition(to:with:);
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v12[3] = &block_descriptor_2;
  v11 = _Block_copy(v12);

  [a1 animateAlongsideTransition:0 completion:v11];
  _Block_release(v11);
}

void closure #1 in MOSuggestionSheetInterstitialView.viewWillTransition(to:with:)(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    MOSuggestionSheetInterstitialView.updateConstraints()();
    v6 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
    v7 = *&v5[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
    MOSuggestionInterstitialCarouselView.updateLayout()();

    v8 = specialized static MOAngelRootViewController.isLandscape.getter();
    v9 = *&static MOAngelRootViewController.LANDSCAPE_WIDTH;
    if (!v8)
    {
      v9 = a1;
    }

    [v5 setPreferredContentSize:{v9, a2}];
    MOSuggestionSheetInterstitialView.updateConstraints()();
    v10 = *&v5[v6];
    MOSuggestionInterstitialCarouselView.updateLayout()();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id MOSuggestionSheetInterstitialView.updateConstraints()()
{
  v1 = v0;
  if (specialized static MOAngelRootViewController.isLandscape.getter())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static MOAngelLogger.shared);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "handling landscape", v5, 2u);
    }

    MOSuggestionSheetInterstitialView.handleLandscapeLayout()();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static MOAngelLogger.shared);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "handling portrait", v9, 2u);
    }

    MOSuggestionSheetInterstitialView.handlePortraitLayout()();
  }

  v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
  [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView) setNeedsLayout];
  v11 = *(v1 + v10);

  return [v11 layoutIfNeeded];
}

void MOSuggestionSheetInterstitialView.handlePortraitLayout()()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v45 - v11;
  v13 = (*((swift_isaMask & *v0) + 0x1C8))(v10);
  if (v13)
  {
    v14 = v13;
    v46 = v9;
    v15 = [v0 navigationItem];
    v16 = *(v14 + 16);
    v17 = MOEventBundle._orderedAssetReferences()();
    v18 = v5;
    if (v17)
    {
      if (v17 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v3;

      if (v19 == 1)
      {
        v21 = v2;
        v22 = "sets in the interstitial view";
        v23 = 0xEB000000006D6574;
LABEL_9:
        v24 = (v22 | 0x8000000000000000);
        v25 = [objc_opt_self() mainBundle];
        v47._object = v24;
        v26._countAndFlagsBits = 0x49207463656C6553;
        v26._object = v23;
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        v47._countAndFlagsBits = 0xD00000000000002DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v47);

        v28 = String._bridgeToObjectiveC()();

        [v15 setTitle:v28];

        v2 = v21;
        v3 = v20;
        v5 = v18;
        v9 = v46;
        goto LABEL_10;
      }
    }

    else
    {
      v20 = v3;
    }

    v21 = v2;
    v22 = "ionCoordinatorContext>8";
    v23 = 0xEC000000736D6574;
    goto LABEL_9;
  }

LABEL_10:
  v29 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar);
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v29 heightAnchor];
  v31 = [v30 constraintEqualToConstant:50.0];

  [v31 setActive:1];
  v32 = objc_opt_self();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 deactivateConstraints:isa];

  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:v34];

  v35 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView);
  [v35 setCustomSpacing:*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel) afterView:10.0];
  v36 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView);
  [v35 setCustomSpacing:v36 afterView:20.0];
  [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint) setConstant:20.0];
  v37 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint);
  if (v37)
  {
    [v37 setConstant:-20.0];
  }

  [v36 setAxis:1];
  [v36 setAlignment:3];
  v38 = [v36 setCustomSpacing:*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel) afterView:0.0];
  v39 = (*((swift_isaMask & *v1) + 0x138))(v38);
  if (v39)
  {
    v40 = v39;
    if ((*((swift_isaMask & *v39) + 0x1B0))() & 1) != 0 || ((*((swift_isaMask & *v40) + 0x1C0))())
    {
      v41 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint);
      if (v41)
      {
        v42 = v41;
        [v42 setConstant:-56.0];
      }
    }
  }

  v43 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton);
  UIButton.configuration.getter();
  v44 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v44 - 8) + 48))(v12, 1, v44))
  {
    outlined init with copy of UIButton.Configuration?(v12, v9);
    UIButton.configuration.setter();

    outlined destroy of UIButton.Configuration?(v12);
  }

  else
  {
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.Size.large(_:), v2);
    UIButton.Configuration.buttonSize.setter();
    UIButton.configuration.setter();
  }
}

void MOSuggestionSheetInterstitialView.handleLandscapeLayout()()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = [v0 navigationItem];
  v13 = String._bridgeToObjectiveC()();
  [v12 setTitle:v13];

  v14 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar);
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v14 heightAnchor];
  v16 = [v15 constraintEqualToConstant:40.0];

  [v16 setActive:1];
  v17 = objc_opt_self();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 deactivateConstraints:isa];

  v19 = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:v19];

  v20 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView);
  [v20 setCustomSpacing:*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel) afterView:0.0];
  v21 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView);
  [v20 setCustomSpacing:v21 afterView:10.0];
  v22 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint);
  if (v22)
  {
    [v22 setConstant:200.0];
  }

  v23 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint);
  if (v23)
  {
    [v23 setConstant:-200.0];
  }

  [v21 setAxis:1];
  [v21 setAlignment:3];
  v24 = [v21 setCustomSpacing:*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel) afterView:2.0];
  v25 = (*((swift_isaMask & *v1) + 0x138))(v24);
  if (v25)
  {
    v26 = v25;
    if ((*((swift_isaMask & *v25) + 0x1B0))() & 1) != 0 || ((*((swift_isaMask & *v26) + 0x1C0))())
    {
      v27 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint);
      if (v27)
      {
        v28 = v27;
        [v28 setConstant:-4.0];
      }
    }
  }

  v29 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton);
  UIButton.configuration.getter();
  v30 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v30 - 8) + 48))(v11, 1, v30))
  {
    outlined init with copy of UIButton.Configuration?(v11, v9);
    UIButton.configuration.setter();

    outlined destroy of UIButton.Configuration?(v11);
  }

  else
  {
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.Size.medium(_:), v2);
    UIButton.Configuration.buttonSize.setter();
    UIButton.configuration.setter();
  }
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.setupViews()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x1C8))();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = (*((swift_isaMask & *v0) + 0x138))();
  if (v4)
  {
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar];
    v7 = objc_opt_self();
    v8 = [v7 systemBackgroundColor];
    [v6 setBarTintColor:v8];

    v9 = [v7 systemBackgroundColor];
    [v6 setBackgroundColor:v9];

    [v6 setTranslucent:0];
    v10 = [objc_allocWithZone(UIImage) init];
    [v6 setShadowImage:v10];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    p_align = &stru_100327FE8.align;
    v12 = [v0 view];
    if (!v12)
    {
      __break(1u);
      goto LABEL_76;
    }

    v13 = v12;
    v273 = v6;
    [v12 addSubview:v6];

    v14 = v3[2];
    v15 = MOEventBundle._orderedAssetReferences()();
    if (v15)
    {
      if (v15 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v16 == 1)
      {
        v17 = "sets in the interstitial view";
        v18 = 0xEB000000006D6574;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v17 = "ionCoordinatorContext>8";
    v18 = 0xEC000000736D6574;
LABEL_15:
    v269 = v5;
    v265 = v7;
    v19 = (v17 | 0x8000000000000000);
    v20 = [objc_opt_self() mainBundle];
    v279._object = v19;
    v21._countAndFlagsBits = 0x49207463656C6553;
    v21._object = v18;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v279._countAndFlagsBits = 0xD00000000000002DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v279);

    v23 = [v1 navigationItem];
    v24 = String._bridgeToObjectiveC()();
    [v23 setTitle:v24];

    MOSuggestionSheetInterstitialView.setNavBar()();
    v25 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel];
    [v25 setUserInteractionEnabled:1];
    v264 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"handleLabelEditTap:"];
    v26 = [v25 addGestureRecognizer:?];
    v27 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel];
    (*(*v3 + 56))(v26);
    v28 = String._bridgeToObjectiveC()();

    v274 = v27;
    [v27 setText:v28];

    v29 = [v1 view];
    if (v29)
    {
      v30 = v29;
      v31 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView];
      [v29 addSubview:v31];

      v32 = [v31 superview];
      if (v32)
      {
        v33 = v32;
        [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
        v34 = [v31 leadingAnchor];
        v35 = [v33 leadingAnchor];
        v36 = [v34 constraintEqualToAnchor:v35];

        [v36 setConstant:0.0];
        [v36 setActive:1];

        p_align = (&stru_100327FE8 + 24);
      }

      v37 = [v31 superview];
      v38 = v31;
      if (v37)
      {
        v39 = v37;
        [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
        v40 = [v31 trailingAnchor];
        v41 = [v39 trailingAnchor];
        v42 = [v40 constraintEqualToAnchor:v41];

        [v42 setConstant:0.0];
        [v42 setActive:1];

        p_align = &stru_100327FE8.align;
      }

      v43 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView];
      [v31 addSubview:v43];
      v44 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView];
      [v44 addArrangedSubview:v274];
      v266 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel];
      [v44 addArrangedSubview:?];
      [v43 addArrangedSubview:v25];
      v267 = v44;
      [v43 addArrangedSubview:v44];
      v45 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView;
      [v43 addArrangedSubview:*&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView]];
      v46 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
      [v43 addArrangedSubview:*&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView]];
      [*&v1[v45] setHidden:1];
      v47 = [v1 *(p_align + 376)];
      if (v47)
      {
        v48 = v47;
        v276 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton;
        [v47 addSubview:*&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton]];

        v49 = [v1 *(p_align + 376)];
        if (v49)
        {
          v50 = v49;
          v271 = v31;
          v272 = v46;
          v268 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton;
          [v49 addSubview:*&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton]];

          v51 = [v1 *(p_align + 376)];
          if (v51)
          {
            v52 = v51;
            v53 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel];
            [v51 addSubview:v53];

            v54 = [v25 superview];
            v270 = v53;
            if (v54)
            {
              v55 = v54;
              [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
              v56 = [v25 leadingAnchor];
              v57 = [v55 leadingAnchor];
              v58 = [v56 constraintEqualToAnchor:v57];

              [v58 setConstant:24.0];
              [v58 setActive:1];

              p_align = (&stru_100327FE8 + 24);
            }

            v59 = [v25 superview];
            if (v59)
            {
              v60 = v59;
              [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
              v61 = [v25 trailingAnchor];
              v62 = [v60 trailingAnchor];
              v63 = [v61 constraintEqualToAnchor:v62];

              p_align = &stru_100327FE8.align;
              [v63 setConstant:-16.0];
              [v63 setActive:1];
            }

            v64 = [*&v1[v276] leadingAnchor];
            v65 = [v1 *(p_align + 376)];
            if (v65)
            {
              v66 = v65;
              v67 = [v65 leadingAnchor];

              v68 = [v64 constraintEqualToAnchor:v67 constant:20.0];
              v69 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint;
              v70 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint];
              *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint] = v68;

              v71 = [*&v1[v276] trailingAnchor];
              v72 = [v1 view];
              if (v72)
              {
                v73 = v72;
                v74 = [v72 trailingAnchor];

                v75 = [v71 constraintEqualToAnchor:v74 constant:-20.0];
                v76 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint;
                v77 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint];
                *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint] = v75;

                [*&v1[v69] setActive:1];
                [*&v1[v76] setActive:1];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
                v78 = swift_allocObject();
                *(v78 + 16) = xmmword_1002A5360;
                v79 = [*&v1[v272] heightAnchor];
                v80 = [*&v1[v272] widthAnchor];
                v81 = [v79 constraintEqualToAnchor:v80];

                *(v78 + 32) = v81;
                v82 = [*&v1[v45] leadingAnchor];
                v83 = [v43 leadingAnchor];
                v84 = [v82 constraintEqualToAnchor:v83 constant:20.0];

                *(v78 + 40) = v84;
                v85 = [*&v1[v45] trailingAnchor];
                v86 = [v43 trailingAnchor];
                v87 = [v85 constraintEqualToAnchor:v86 constant:-20.0];

                *(v78 + 48) = v87;
                v88 = [v38 topAnchor];
                v89 = [v273 bottomAnchor];
                v90 = [v88 constraintEqualToAnchor:v89 constant:20.0];

                *(v78 + 56) = v90;
                v91 = [v43 topAnchor];
                v92 = [v38 topAnchor];
                v93 = [v91 constraintEqualToAnchor:v92 constant:8.0];

                *(v78 + 64) = v93;
                v94 = [v274 topAnchor];
                v95 = [v267 topAnchor];
                v96 = [v94 constraintEqualToAnchor:v95];

                *(v78 + 72) = v96;
                v97 = [v274 bottomAnchor];
                v98 = [v266 topAnchor];
                v99 = [v97 constraintEqualToAnchor:v98 constant:-10.0];

                *(v78 + 80) = v99;
                v100 = [v266 bottomAnchor];
                v101 = [v267 bottomAnchor];
                v102 = [v100 constraintEqualToAnchor:v101];

                *(v78 + 88) = v102;
                *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_portraitConstraints] = v78;

                v103 = swift_allocObject();
                *(v103 + 16) = xmmword_1002A5370;
                v104 = [*&v1[v272] heightAnchor];
                v105 = [v1 view];
                if (v105)
                {
                  v106 = v105;
                  v107 = [v105 heightAnchor];

                  v108 = [v104 constraintEqualToAnchor:v107 multiplier:0.5];
                  *(v103 + 32) = v108;
                  v109 = [*&v1[v45] leadingAnchor];
                  v110 = [v43 leadingAnchor];
                  v111 = [v109 constraintEqualToAnchor:v110 constant:104.0];

                  *(v103 + 40) = v111;
                  v112 = [*&v1[v45] trailingAnchor];
                  v113 = [v43 trailingAnchor];
                  v114 = [v112 constraintEqualToAnchor:v113 constant:-104.0];

                  *(v103 + 48) = v114;
                  v115 = [v38 topAnchor];
                  v116 = [v273 bottomAnchor];
                  v117 = [v115 constraintEqualToAnchor:v116];

                  *(v103 + 56) = v117;
                  v118 = [v43 topAnchor];
                  v119 = [v38 topAnchor];
                  v120 = [v118 constraintEqualToAnchor:v119];

                  *(v103 + 64) = v120;
                  v121 = [v274 leadingAnchor];
                  v122 = [v267 leadingAnchor];
                  v123 = [v121 constraintEqualToAnchor:v122];

                  *(v103 + 72) = v123;
                  v124 = [v274 trailingAnchor];
                  v125 = [v267 trailingAnchor];
                  v126 = [v124 constraintEqualToAnchor:v125];

                  *(v103 + 80) = v126;
                  v127 = [v266 leadingAnchor];
                  v128 = [v267 leadingAnchor];
                  v129 = [v127 constraintEqualToAnchor:v128];

                  *(v103 + 88) = v129;
                  v130 = [v267 leadingAnchor];
                  v131 = [v43 leadingAnchor];
                  v132 = [v130 constraintGreaterThanOrEqualToAnchor:v131];

                  *(v103 + 96) = v132;
                  v133 = [v267 trailingAnchor];
                  v134 = [v43 trailingAnchor];
                  v135 = [v133 constraintLessThanOrEqualToAnchor:v134];

                  *(v103 + 104) = v135;
                  v136 = [v274 leadingAnchor];
                  v137 = [v267 leadingAnchor];
                  v138 = [v136 constraintGreaterThanOrEqualToAnchor:v137];

                  *(v103 + 112) = v138;
                  v139 = [v266 trailingAnchor];
                  v140 = [v267 trailingAnchor];
                  v141 = [v139 constraintLessThanOrEqualToAnchor:v140];

                  *(v103 + 120) = v141;
                  v142 = [v267 centerXAnchor];
                  v143 = [v43 centerXAnchor];
                  v144 = [v142 constraintEqualToAnchor:v143];

                  *(v103 + 128) = v144;
                  *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_landscapeConstraints] = v103;

                  v145 = *&v1[v272];
                  v146 = [v145 superview];
                  if (v146)
                  {
                    v147 = v146;
                    [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v148 = &stru_100327FE8.align;
                    v149 = [v145 leadingAnchor];
                    v150 = [v147 leadingAnchor];
                    v151 = [v149 constraintEqualToAnchor:v150];

                    [v151 setConstant:0.0];
                    if (v151)
                    {
                      [v151 setActive:1];
                    }

                    v152 = (&stru_100327FE8 + 24);
                  }

                  else
                  {
                    v151 = 0;
                    v147 = v145;
                    v152 = &stru_100327FE8.align;
                    v148 = &stru_100327FE8.align;
                  }

                  v153 = *&v1[v272];
                  v154 = [v153 superview];
                  if (v154)
                  {
                    v155 = v154;
                    [v153 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v156 = [v153 trailingAnchor];
                    v157 = [v155 trailingAnchor];
                    v158 = [v156 constraintEqualToAnchor:v157];

                    [v158 setConstant:0.0];
                    if (v158)
                    {
                      [v158 setActive:1];
                    }

                    v152 = (&stru_100327FE8 + 24);
                  }

                  else
                  {
                    v158 = 0;
                    v155 = v153;
                  }

                  v159 = v270;
                  v160 = [v270 superview];
                  if (v160)
                  {
                    v161 = v160;
                    [v270 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v162 = [v270 leadingAnchor];
                    v163 = [v161 leadingAnchor];
                    v164 = [v162 constraintEqualToAnchor:v163];

                    v159 = v270;
                    [v164 setConstant:20.0];
                    [v164 setActive:1];
                  }

                  v165 = [v159 superview];
                  if (v165)
                  {
                    v166 = v165;
                    [v159 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v167 = [v159 trailingAnchor];
                    v168 = [v166 trailingAnchor];
                    v169 = [v167 constraintEqualToAnchor:v168];

                    [v169 setConstant:-20.0];
                    [v169 setActive:1];
                  }

                  if ((*((swift_isaMask & *v269) + 0x1B0))() & 1) != 0 || ((*((swift_isaMask & *v269) + 0x1C0))())
                  {
                    v170 = *&v1[v268];
                    [v170 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v171 = [v170 heightAnchor];
                    v172 = [v171 constraintEqualToConstant:0.0];

                    [v172 setActive:1];
                    [*&v1[v268] setHidden:1];
                    v173 = &stru_100327FE8.align;
                    v174 = [*&v1[v276] bottomAnchor];
                    v175 = [v1 *(v152 + 376)];
                    if (!v175)
                    {
LABEL_87:
                      __break(1u);
                      return;
                    }

                    v176 = v175;
                    v177 = [v175 safeAreaLayoutGuide];

                    v178 = [v177 bottomAnchor];
                    v179 = [v174 constraintEqualToAnchor:v178 constant:-4.0];
                  }

                  else
                  {
                    v180 = *&v1[v276];
                    v181 = *&v1[v268];
                    v182 = v180;
                    [v181 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v183 = [v181 leadingAnchor];
                    v184 = [v182 leadingAnchor];
                    v185 = [v183 constraintEqualToAnchor:v184 constant:0.0];

                    [v185 setActive:1];
                    v186 = *&v1[v276];
                    v187 = *&v1[v268];
                    v188 = v186;
                    [v187 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v189 = [v187 trailingAnchor];
                    v190 = [v188 trailingAnchor];
                    v191 = [v189 constraintEqualToAnchor:v190 constant:0.0];

                    [v191 setActive:1];
                    v192 = *&v1[v268];
                    v193 = [v192 superview];
                    if (v193)
                    {
                      v194 = v193;
                      [v192 setTranslatesAutoresizingMaskIntoConstraints:0];
                      v195 = [v192 centerXAnchor];
                      v196 = [v194 centerXAnchor];
                      v197 = [v195 constraintEqualToAnchor:v196];

                      [v197 setConstant:0.0];
                      if (v197)
                      {
                        [v197 setActive:1];
                      }

                      v152 = (&stru_100327FE8 + 24);
                      v148 = (&stru_100327FE8 + 24);
                      v173 = (&stru_100327FE8 + 24);
                    }

                    else
                    {
                      v197 = 0;
                      v194 = v192;
                      v152 = &stru_100327FE8.align;
                      v148 = &stru_100327FE8.align;
                      v173 = &stru_100327FE8.align;
                    }

                    v198 = *&v1[v268];
                    v199 = [v198 superview];
                    if (v199)
                    {
                      v200 = v199;
                      [v198 setTranslatesAutoresizingMaskIntoConstraints:0];
                      v201 = [v198 *(v173 + 276)];
                      v202 = v173;
                      v203 = v201;
                      v204 = [v200 *(v202 + 276)];
                      v205 = [v203 constraintEqualToAnchor:v204];

                      if (v205)
                      {
                        [v205 setConstant:-34.0];
                        [v205 setActive:1];
                      }

                      v152 = (&stru_100327FE8 + 24);

                      v173 = (&stru_100327FE8 + 24);
                    }

                    else
                    {
                      v205 = 0;
                      v200 = v198;
                    }

                    v174 = [*&v1[v276] *(v173 + 276)];
                    v178 = [*&v1[v268] topAnchor];
                    v179 = [v174 constraintEqualToAnchor:v178 constant:-5.0];
                  }

                  v206 = v179;

                  v207 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint];
                  *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint] = v206;
                  v208 = v206;

                  [v208 setActive:1];
                  v209 = [v43 superview];
                  if (v209)
                  {
                    v210 = v209;
                    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v211 = [v43 *(v148 + 272)];
                    v212 = [v210 *(v148 + 272)];
                    v213 = [v211 constraintEqualToAnchor:v212];

                    [v213 setConstant:0.0];
                    [v213 setActive:1];

                    v173 = (&stru_100327FE8 + 24);
                  }

                  v214 = [v43 superview];
                  if (v214)
                  {
                    v215 = v214;
                    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v216 = [v43 trailingAnchor];
                    v217 = [v215 trailingAnchor];
                    v218 = [v216 constraintEqualToAnchor:v217];

                    [v218 setConstant:0.0];
                    [v218 setActive:1];

                    v173 = &stru_100327FE8.align;
                  }

                  v219 = [v43 superview];
                  if (v219)
                  {
                    v220 = v219;
                    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v221 = [v43 *(v173 + 276)];
                    v222 = [v220 *(v173 + 276)];
                    v223 = [v221 constraintEqualToAnchor:v222];

                    if (v223)
                    {
                      [v223 setConstant:-0.0];
                      [v223 setActive:1];
                    }
                  }

                  v224 = swift_allocObject();
                  *(v224 + 16) = xmmword_1002A5380;
                  v225 = [v273 *(v148 + 272)];
                  v226 = [v1 *(v152 + 376)];
                  if (v226)
                  {
                    v227 = v226;
                    v228 = [v226 *(v148 + 272)];

                    v229 = [v225 constraintEqualToAnchor:v228];
                    *(v224 + 32) = v229;
                    v230 = [v273 trailingAnchor];
                    v231 = [v1 *(v152 + 376)];
                    if (v231)
                    {
                      v232 = v231;
                      v233 = [v231 trailingAnchor];

                      v234 = [v230 constraintEqualToAnchor:v233];
                      *(v224 + 40) = v234;
                      v235 = [v273 topAnchor];
                      v236 = [v1 *(v152 + 376)];
                      if (v236)
                      {
                        v237 = v236;
                        v275 = objc_opt_self();
                        v238 = [v237 topAnchor];

                        v239 = [v235 constraintEqualToAnchor:v238];
                        *(v224 + 48) = v239;
                        v240 = [*&v1[v276] centerXAnchor];
                        v241 = [v271 centerXAnchor];
                        v242 = [v240 constraintEqualToAnchor:v241];

                        *(v224 + 56) = v242;
                        v243 = [v43 widthAnchor];
                        v244 = [v271 widthAnchor];
                        v245 = [v243 constraintEqualToAnchor:v244];

                        *(v224 + 64) = v245;
                        v246 = [v271 bottomAnchor];
                        v247 = [v270 topAnchor];
                        v248 = [v246 constraintEqualToAnchor:v247];

                        *(v224 + 72) = v248;
                        v249 = [*&v1[v45] bottomAnchor];
                        v250 = [v270 topAnchor];
                        v251 = [v249 constraintEqualToAnchor:v250];

                        *(v224 + 80) = v251;
                        v252 = [*&v1[v276] topAnchor];
                        v253 = [v270 bottomAnchor];
                        v254 = [v252 constraintEqualToAnchor:v253];

                        *(v224 + 88) = v254;
                        v255 = [v270 centerXAnchor];
                        v256 = [*&v1[v276] centerXAnchor];
                        v257 = [v255 constraintEqualToAnchor:v256];

                        *(v224 + 96) = v257;
                        v258 = [v270 bottomAnchor];
                        v259 = [*&v1[v276] topAnchor];
                        v260 = [v258 constraintEqualToAnchor:v259 constant:-10.0];

                        *(v224 + 104) = v260;
                        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
                        isa = Array._bridgeToObjectiveC()().super.isa;

                        [v275 activateConstraints:isa];

                        [*&v1[v276] addTarget:v1 action:"journalButtonTapped:" forControlEvents:64];
                        [*&v1[v268] addTarget:v1 action:"addButtonTapped" forControlEvents:64];
                        v262 = [v1 view];
                        if (v262)
                        {
                          v263 = v262;

                          v277 = [v265 systemBackgroundColor];
                          [v263 setBackgroundColor:v277];

                          return;
                        }

                        goto LABEL_86;
                      }

LABEL_85:
                      __break(1u);
LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }

LABEL_84:
                    __break(1u);
                    goto LABEL_85;
                  }

LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.preFetch()()
{
  MOSuggestionSheetInterstitialView.fetchAssetsForCarousel()();

  MOSuggestionSheetInterstitialView.didUpdateSelection()();
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.didUpdateSelection()()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v3 = *((swift_isaMask & *v2) + 0xD0);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v3 = *((swift_isaMask & *v2) + 0x110);
  }

  v4 = v2;
  v5 = v3();

  specialized Set._Variant.remove(_:)(0x6C6F686563616C70, 0xEB00000000726564);

  specialized Set._Variant.remove(_:)(0, 0xE000000000000000);

  v6 = *(v5 + 16);

  v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton);
  if (v6)
  {
    [v7 setEnabled:1];
    [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton) setEnabled:1];
    v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel);
    [v8 setHidden:1];
  }

  else
  {
    [v7 setEnabled:0];
    [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton) setEnabled:0];
    v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel);
    [v8 setHidden:0];
    if (one-time initialization token for SELECT_AT_LEAST_ONE_TEXT != -1)
    {
      swift_once();
    }
  }

  v9 = String._bridgeToObjectiveC()();
  [v8 setText:v9];

  v10 = *((swift_isaMask & *v1) + 0x330);

  v10();
}

void MOSuggestionSheetInterstitialView.setNavBar()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x138))();
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    v6 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v5 style:2 target:0 action:"didToggleListCarouselViewButtonWithCarouselIndex:"];
    v7 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton;
    v8 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton];
    *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton] = v6;

    v9 = (*((swift_isaMask & *v3) + 0x1B0))();
    v10 = objc_opt_self();
    v11 = &selRef_systemBlueColor;
    if ((v9 & 1) == 0)
    {
      v11 = &selRef_systemIndigoColor;
    }

    v12 = [v10 *v11];
    v13 = *&v1[v7];
    if (v13)
    {
      [v13 setTintColor:v12];
      v14 = *&v1[v7];
      if (v14)
      {
        v15 = v14;
        MOSuggestionSheetInterstitialView.toggleListViewCarouselModeAccessibilityLabel.getter();
        v16 = String._bridgeToObjectiveC()();

        [v15 setAccessibilityLabel:v16];

        v17 = *&v1[v7];
        if (v17)
        {
          v18 = v17;
          v19 = [v1 navigationItem];
          [v19 setRightBarButtonItem:v18];
        }
      }
    }

    v20 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002A4A70;
    *(v21 + 32) = [v1 navigationItem];
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UINavigationItem);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 setItems:isa animated:0];

    v23 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:0 action:"cancelSheet"];
    [v23 setTintColor:v12];
    v24 = [v1 navigationItem];
    [v24 setLeftBarButtonItem:v23];
  }
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.updateAssetTypes()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOSuggestionSheetInterstitialView.updateAssetTypes();
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_7;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

void closure #1 in MOSuggestionSheetInterstitialView.updateAssetTypes()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionSheetInterstitialView.updateAssetTypes();
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_93;
    v4 = _Block_copy(aBlock);
    v5 = v1;

    [v2 animateWithDuration:v4 animations:1.0];
    _Block_release(v4);
  }
}

void closure #1 in closure #1 in MOSuggestionSheetInterstitialView.updateAssetTypes()(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode;
  if (*(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode) == 1)
  {
    v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView;
    v4 = *(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v5 = MOSuggestionInterstitialExpandableListView.assetTypeSummary.getter();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = *(a1 + v3);
      MOSuggestionInterstitialExpandableListView.assetTypeSummary.getter();
LABEL_11:

      goto LABEL_12;
    }

    if (*(a1 + v2))
    {
      goto LABEL_12;
    }
  }

  v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
  v11 = *(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
  v12 = MOSuggestionInterstitialCarouselView.assetTypeSummary.getter();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v9 = *(a1 + v10);
    MOSuggestionInterstitialCarouselView.assetTypeSummary.getter();
    goto LABEL_11;
  }

LABEL_12:
  v16 = *(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel);
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MOSuggestionSheetInterstitialView();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for MOSuggestionSheetInterstitialView();
  objc_msgSendSuper2(&v34, "viewDidDisappear:", a1);
  v4 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
  v5 = *&v2[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
  v6 = *((swift_isaMask & *v5) + 0xF0);
  v7 = v5;
  v8 = v6(v33);
  *v9 = _swiftEmptyArrayStorage;

  v8(v33, 0);

  v10 = *&v2[v4];
  v11 = *((swift_isaMask & *v10) + 0xD0);
  v12 = v10;
  v11(0);

  v13 = *&v2[v4];
  v14 = *((swift_isaMask & *v13) + 0xB8);
  v15 = v13;
  v14(0);

  v16 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView;
  v17 = *&v2[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
  v18 = *((swift_isaMask & *v17) + 0xC8);
  v19 = v17;
  v20 = v18(v33);
  *v21 = _swiftEmptyArrayStorage;

  v20(v33, 0);

  v22 = *&v2[v16];
  v23 = *((swift_isaMask & *v22) + 0x90);
  v24 = v22;
  v23(0);

  v25 = [v2 view];
  if (!v25)
  {
    goto LABEL_15;
  }

  v26 = v25;
  v27 = [v25 subviews];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIView);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v28 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_4:
      if (v29 >= 1)
      {
        for (i = 0; i != v29; ++i)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v31 = *(v28 + 8 * i + 32);
          }

          v32 = v31;
          [v31 removeFromSuperview];
        }

        goto LABEL_11;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }
  }

LABEL_11:

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static MOSuggestionAssetCacheManager.shared + 296))();
}

id MOSuggestionSheetInterstitialView.viewDidAppear(_:)(char a1, SEL *a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MOSuggestionSheetInterstitialView();
  return objc_msgSendSuper2(&v6, *a2, a1 & 1);
}

id @objc MOSuggestionSheetInterstitialView.viewDidAppear(_:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MOSuggestionSheetInterstitialView();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.cancelSheet()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static MOSuggestionAssetCacheManager.shared + 288))();

  [v0 dismissViewControllerAnimated:1 completion:0];
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.addButtonTapped()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x1C8))();
  if (v2)
  {
    v3 = v2;
    v4 = (*((swift_isaMask & *v0) + 0x138))();
    if (v4)
    {
      v15 = v4;
      v5 = (*((swift_isaMask & *v0) + 0x390))();
      v6 = (*((swift_isaMask & *v0) + 0x3A0))(v5);
      (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_selectedSuggestion))(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_indexPath, 1);
      v7 = IndexPath.row.getter();
      v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString);
      v9 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString + 8);
      v10 = *(*v3 + 552);

      v10(v7, v8, v9, v6 & 1, v15);

      if ((*((swift_isaMask & *v1) + 0x150))(v11))
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        (*(v13 + 16))(ObjectType, v13);
        swift_unknownObjectRelease();
      }

      [v1 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
    }
  }
}

void MOSuggestionSheetInterstitialView.updateTitleLabelString()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x138))();
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(NSMutableAttributedString);

    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithString:v5];

    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() systemImageNamed:v7];

    if (v8)
    {
      v9 = (*((swift_isaMask & *v3) + 0x1B0))();
      v10 = objc_opt_self();
      v11 = &selRef_systemBlueColor;
      if ((v9 & 1) == 0)
      {
        v11 = &selRef_systemIndigoColor;
      }

      v12 = [v10 *v11];
      v13 = [v8 imageWithTintColor:v12];

      v14 = objc_opt_self();
      v15 = [v14 preferredFontForTextStyle:UIFontTextStyleHeadline];
      v16 = [v15 fontDescriptor];
      v17 = [v16 fontDescriptorWithSymbolicTraits:2];

      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = [v14 fontWithDescriptor:v17 size:0.0];

      v19 = [objc_opt_self() configurationWithFont:v18];
      v8 = [v13 imageWithSymbolConfiguration:v19];
    }

    v20 = [objc_allocWithZone(NSTextAttachment) init];
    [v20 setImage:v8];
    v25 = [objc_opt_self() attributedStringWithAttachment:v20];
    v21 = objc_allocWithZone(NSAttributedString);
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 initWithString:v22];

    [v6 appendAttributedString:v23];
    [v6 appendAttributedString:v25];
    v24 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel);
    [v24 setAttributedText:v6];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setAdjustsFontForContentSizeCategory:1];
  }
}

void closure #1 in MOSuggestionSheetInterstitialView.handleLabelEditTap(_:)(uint64_t a1, void *a2)
{
  v2 = (*((swift_isaMask & *a2) + 0x60))();
  v4 = v3;
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString);
    v6 = *(Strong + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString + 8);
    v8 = Strong;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v16[0] = v7;
  v16[1] = v6;
  v9 = SettingsCodable<>.isEqual(_:)();
  __swift_destroy_boxed_opaque_existential_0(v16);
  if (v9)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = (v10 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString);
    *v11 = v2;
    v11[1] = v4;
    v12 = v10;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
LABEL_9:
  }

  else
  {
    v14 = v13;
    v15 = (v13 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString);
    *v15 = v2;
    v15[1] = v4;

    MOSuggestionSheetInterstitialView.updateTitleLabelString()();
  }
}

void MOSuggestionSheetInterstitialView.fetchAssetsForCarousel()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x1C8))();
  if (v2)
  {
    v3 = v2;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static MOSuggestionAssetCacheManager.shared + 296))();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)(0, 5, 5, 0, partial apply for closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForCarousel(), v4);

    v6 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
    v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v8 = specialized static MOSuggestionSheetAssetViewModel.placeholders(count:parent:)(v5, v3);
    (*((swift_isaMask & *v7) + 0xE8))(v8);

    v9 = *(v1 + v6);
    MOSuggestionInterstitialCarouselView.reloadAll()();
  }
}

void closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForCarousel()(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(a1 + 16) == 1 || (v11 = *a1) == 0)
    {
    }

    else
    {
      v12 = a1[1];
      v13 = Strong;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);

      v19 = static OS_dispatch_queue.main.getter();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = v11;
      v14[4] = v12;
      aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForCarousel();
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_100;
      v15 = _Block_copy(aBlock);

      v18 = v13;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v16 = v19;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v15);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }
  }
}

void closure #1 in closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForCarousel()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
  MOSuggestionInterstitialCarouselView.reloadCell(_:index:)(a2, a3);
}

void MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((*((swift_isaMask & *v2) + 0x1C8))())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v6;
    v8[4] = a1;
    v8[5] = a2;

    v9 = MOSuggestionCollectionViewCellViewModel.fetchListAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:typeSorted:completion:)(0, 5, 1, partial apply for closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:), v8);

    v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView;
    v11 = *(v3 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v12 = specialized static MOSuggestionInterstitialListAssetViewModel.placeHolders(count:)(v9);
    (*((swift_isaMask & *v11) + 0xC0))(v12);

    v13 = *(v3 + v10);
    MOSuggestionInterstitialExpandableListView.reloadAll()();
  }
}

void closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a5;
  v33 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (*(a1 + 16) == 1)
    {
    }

    else
    {
      v30 = *(a1 + 8);
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v31 = static OS_dispatch_queue.main.getter();
      outlined init with copy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(a1, &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
      v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
      v32 = v7;
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      outlined init with take of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(v16, v22 + v19);
      *(v22 + v20) = v30;
      v23 = v33;
      *(v22 + v21) = v34;
      v24 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
      v25 = v35;
      *v24 = v23;
      v24[1] = v25;
      aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:);
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_79;
      v26 = _Block_copy(aBlock);
      v27 = v18;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = v31;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v32 + 8))(v9, v6);
      (*(v36 + 8))(v12, v37);
    }
  }
}

uint64_t closure #1 in closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:)(void *a1, uint64_t *a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = *(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
  v9 = *a2;
  v10 = *((swift_isaMask & *v8) + 0xC8);
  v11 = v8;

  v12 = v10(v18);
  v14 = v13;
  v15 = *v13;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v14 = v15;
  if (!result || v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    v15 = result;
    *v14 = result;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *((v15 & 0xFFFFFFFFFFFFFF8) + 8 * a3 + 0x20) = v9;

  v12(v18, 0);
  MOSuggestionInterstitialExpandableListView.reloadAll()();

  (*((swift_isaMask & *a1) + 0x330))();
  result = swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    a5(result);
    result = swift_beginAccess();
    *(a4 + 16) = 1;
  }

  return result;
}

void MOSuggestionSheetInterstitialView.showCarousel()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
  v4 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode;
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v6 = *((swift_isaMask & *v5) + 0xD0);
    v3;
    v7 = v5;
    v8 = v6();

    v9 = v8;
  }

  else
  {
    v10 = *((swift_isaMask & *v3) + 0x110);
    v11 = v3;
    v9 = v10();
  }

  (*((swift_isaMask & *v3) + 0x118))(v9);

  v12 = *(v1 + v2);
  MOSuggestionInterstitialCarouselView.refreshCheckmarksState()();

  *(v1 + v4) = 0;
  [*(v1 + v2) setHidden:0];
  [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView) setHidden:1];
  [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView) setShowsVerticalScrollIndicator:0];
  MOSuggestionSheetInterstitialView.didUpdateSelection()();

  MOSuggestionSheetInterstitialView.setNavBar()();
}

uint64_t MOSuggestionSheetInterstitialView.currentlyActiveSelectedIdentifiers.getter()
{
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v2 = *((swift_isaMask & *v1) + 0xD0);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v2 = *((swift_isaMask & *v1) + 0x110);
  }

  v3 = v1;
  v4 = v2();

  return v4;
}

uint64_t MOSuggestionSheetInterstitialView.showListView()()
{
  v1 = v0;
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
  v8 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode;
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v9 = *((swift_isaMask & *v7) + 0xD0);
    v10 = v7;
    v11 = v9();
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v13 = *((swift_isaMask & *v12) + 0x110);
    v7;
    v14 = v12;
    v15 = v13();

    v11 = v15;
  }

  (*((swift_isaMask & *v7) + 0xD8))(v11);

  *(v1 + v8) = 1;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOSuggestionSheetInterstitialView.showListView();
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_66;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v19 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v3, v19);
  return (*(v22 + 8))(v6, v23);
}

void closure #1 in MOSuggestionSheetInterstitialView.showListView()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView;
    v3 = *(Strong + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    MOSuggestionInterstitialExpandableListView.refreshCheckmarksState()();

    [*&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView] setHidden:1];
    [*&v1[v2] setHidden:0];
    [*&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView] setShowsVerticalScrollIndicator:1];
    MOSuggestionSheetInterstitialView.didUpdateSelection()();
    MOSuggestionSheetInterstitialView.setNavBar()();
  }
}

void closure #1 in MOSuggestionSheetInterstitialView.didToggleListCarouselViewButton(carouselIndex:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MOSuggestionSheetInterstitialView.showListView()();
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static MOAngelLogger.assets);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v6 = 136315394;
      if (v3[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode])
      {
        v7 = *&v3[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
        v8 = *((swift_isaMask & *v7) + 0xD0);
      }

      else
      {
        v7 = *&v3[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
        v8 = *((swift_isaMask & *v7) + 0x110);
      }

      v9 = v7;
      v8(v9);

      v10 = Set.debugDescription.getter();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v21);

      *(v6 + 4) = v13;
      *(v6 + 12) = 2080;
      v14 = *&v3[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
      v15 = *((swift_isaMask & *v14) + 0xD0);
      v16 = v14;
      v15(v16);

      v17 = Set.debugDescription.getter();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v21);

      *(v6 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v4, v5, "[Interstitial] currentlySelected: %s, selectedList: %s", v6, 0x16u);
      swift_arrayDestroy();
    }
  }
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.markSelectedAssetsAsEligible()()
{
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v2 = *((swift_isaMask & *v1) + 0xD0);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v2 = *((swift_isaMask & *v1) + 0x110);
  }

  v3 = v1;
  v4 = v2();

  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      do
      {
LABEL_11:
        v11 = (*(v4 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v8)))));
        v13 = *v11;
        v12 = v11[1];
        v14 = one-time initialization token for shared;

        if (v14 != -1)
        {
          swift_once();
        }

        v8 &= v8 - 1;
        (*(*static MOSuggestionAssetCacheManager.shared + 264))(v13, v12);
      }

      while (v8);
    }
  }
}

Swift::Bool __swiftcall MOSuggestionSheetInterstitialView.isPromptElligibleForTransfer()()
{
  if (!(*((swift_isaMask & *v0) + 0x1C8))())
  {
    v4 = 0;
LABEL_63:
    LOBYTE(v6) = v4 & 1;
    return v6;
  }

  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v2 = *((swift_isaMask & *v1) + 0xD0);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v2 = *((swift_isaMask & *v1) + 0x110);
  }

  v3 = v1;
  v5 = v2();

  v6 = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  if (!v6)
  {

    goto LABEL_61;
  }

  v7 = v6;
  if (v6 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v6;
    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_60:

LABEL_61:
    v4 = 1;
LABEL_62:

    goto LABEL_63;
  }

LABEL_9:
  if (v8 >= 1)
  {
    v9 = 0;
    v74 = 1;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = (*(*v10 + 120))();
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v14 != v15)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_21;
        }

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v20 != v21)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            goto LABEL_21;
          }

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
          if (v24 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v26 != v27)
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v28)
            {
              goto LABEL_21;
            }

            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;
            if (v29 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v31 != v32)
            {
              v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v33)
              {
                goto LABEL_21;
              }

              v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v36 = v35;
              if (v34 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v36 != v37)
              {
                v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v38)
                {
                  goto LABEL_21;
                }

                v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v41 = v40;
                if (v39 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v41 != v42)
                {
                  break;
                }
              }
            }
          }
        }
      }

LABEL_12:
      if (v8 == ++v9)
      {

        v4 = v74;
        goto LABEL_62;
      }
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
      if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
      {
LABEL_41:
      }

      else
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v49 & 1) == 0)
        {
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;
          if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
          {
            goto LABEL_41;
          }

          v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v57 & 1) == 0)
          {
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;
            if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
            {
              goto LABEL_41;
            }

            v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v62 & 1) == 0)
            {
              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;
              if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
              {
                goto LABEL_41;
              }

              v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v67 & 1) == 0)
              {
                v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v70 = v69;
                if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
                {
                  goto LABEL_41;
                }

                v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v72 & 1) == 0)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  goto LABEL_41;
                }
              }
            }
          }
        }
      }

      v50 = (*(*v10 + 296))(v48);
      v52 = specialized Set.contains(_:)(v50, v51, v5);

      v74 &= v52;
      goto LABEL_12;
    }

LABEL_21:

    goto LABEL_12;
  }

  __break(1u);
  return v6;
}

id MOSuggestionSheetInterstitialView.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MOSuggestionSheetInterstitialView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetInterstitialView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.enableActionButtons()()
{
  [*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton) setEnabled:1];
  [*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton) setEnabled:1];
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel);
  [v1 setHidden:1];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.disableActionButtons()()
{
  [*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton) setEnabled:0];
  [*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton) setEnabled:0];
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel);
  [v1 setHidden:0];
  if (one-time initialization token for SELECT_AT_LEAST_ONE_TEXT != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, &type metadata accessor for UUID, &lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

{
  v5 = type metadata accessor for CloudDevice.Capability();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, &type metadata accessor for CloudDevice.Capability, &lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability, &protocol conformance descriptor for CloudDevice.Capability);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = _HashTable.previousHole(before:)();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v39 = (v17 + 1) & v16;
      v38 = *(v8 + 16);
      v44 = *(v8 + 72);
      v40 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v38(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v41, v42);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v39)
        {
          if (v26 < v39 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v39 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }

  return result;
}

id specialized static MOSuggestionSheetInterstitialView.makeJournalButton(publicUI:clientName:isSourceJournalComposer:)(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v56 = a4;
  v55 = a3;
  v53 = a2;
  v54 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v59 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v59 - 8);
  __chkstk_darwin(v59);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIButton.Configuration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(UIButton) init];
  static UIButton.Configuration.filled()();
  (*(v11 + 104))(v13, enum case for UIButton.Configuration.CornerStyle.large(_:), v10);
  UIButton.Configuration.cornerStyle.setter();
  (*(v7 + 104))(v9, enum case for UIButton.Configuration.Size.large(_:), v59);
  UIButton.Configuration.buttonSize.setter();
  v19 = objc_opt_self();
  v20 = &selRef_systemBlueColor;
  v21 = v54;
  if ((v54 & 1) == 0)
  {
    v20 = &selRef_systemIndigoColor;
  }

  v22 = [v19 *v20];
  UIButton.Configuration.baseBackgroundColor.setter();
  v23 = *(v15 + 16);
  v57 = v17;
  v23(v6, v17, v14);
  v58 = v15;
  v59 = v14;
  v24 = v15;
  v25 = v55;
  (*(v24 + 56))(v6, 0, 1, v14);
  UIButton.configuration.setter();
  [v18 setRole:1];
  v26 = v18;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  v28 = [v27 mainBundle];
  v52 = 0x80000001002B08B0;
  v60._object = 0x80000001002B08B0;
  v29._countAndFlagsBits = 0x7257207472617453;
  v29._object = 0xED0000676E697469;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0xD00000000000003BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v60);

  v31 = String._bridgeToObjectiveC()();

  [v26 setTitle:v31 forState:0];

  v32 = v26;
  v33 = [v27 mainBundle];
  v61._object = 0x80000001002B08F0;
  v61._countAndFlagsBits = 0xD000000000000042;
  v34._countAndFlagsBits = 0x7257207472617453;
  v34._object = 0xED0000676E697469;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v61);

  v36 = String._bridgeToObjectiveC()();

  [v32 setAccessibilityLabel:v36];

  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  if ((v21 & 1) != 0 && v25)
  {

    v37 = [v27 mainBundle];
    v62._countAndFlagsBits = 0xD000000000000011;
    v62._object = 0x80000001002B0940;
    v38._countAndFlagsBits = 0xE2206F7420646441;
    v38._object = 0xAF9D80E240259C80;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v62);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1002A48B0;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 32) = v53;
    *(v40 + 40) = v25;
    static String.localizedStringWithFormat(_:_:)();

    v41 = String._bridgeToObjectiveC()();
    [v32 setTitle:v41 forState:0];

    v42 = String._bridgeToObjectiveC()();

    [v32 setAccessibilityLabel:v42];
  }

  v43 = v32;
  if (v56)
  {
    v43 = v32;
    if ((v21 & 1) == 0)
    {
      v44 = [v27 mainBundle];
      v63._object = v52;
      v45._countAndFlagsBits = 0x45206F7420646441;
      v45._object = 0xEC0000007972746ELL;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v63._countAndFlagsBits = 0xD00000000000003BLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v63);

      v47 = String._bridgeToObjectiveC()();

      [v32 setTitle:v47 forState:0];

      v48 = [v27 mainBundle];
      v64._object = 0x80000001002B08F0;
      v64._countAndFlagsBits = 0xD000000000000042;
      v49._countAndFlagsBits = 0x45206F7420646441;
      v49._object = 0xEC0000007972746ELL;
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v64);

      v43 = String._bridgeToObjectiveC()();

      [v32 setAccessibilityLabel:v43];
    }
  }

  (*(v58 + 8))(v57, v59);
  return v32;
}

id specialized static MOSuggestionSheetInterstitialView.makeQuickAddButton(publicUI:)(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for UIButton.Configuration.Size();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(UIButton) init];
  static UIButton.Configuration.plain()();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.Size.large(_:), v5);
  UIButton.Configuration.buttonSize.setter();
  (*(v10 + 16))(v4, v12, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  UIButton.configuration.setter();
  v14 = v13;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = objc_opt_self();
  v16 = [v15 systemBackgroundColor];
  [v14 setBackgroundColor:v16];

  v17 = [objc_opt_self() mainBundle];
  v26._object = 0x80000001002B0860;
  v18._object = 0x80000001002B0840;
  v26._countAndFlagsBits = 0xD00000000000004ALL;
  v18._countAndFlagsBits = 0xD000000000000014;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v26);

  v20 = String._bridgeToObjectiveC()();

  [v14 setTitle:v20 forState:0];

  if (a1)
  {
    v21 = &selRef_systemBlueColor;
  }

  else
  {
    v21 = &selRef_systemIndigoColor;
  }

  v22 = [v15 *v21];
  [v14 setTitleColor:v22 forState:0];

  v23 = [v15 *v21];
  [v14 setTintColor:v23];

  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v14 setRole:1];
  (*(v10 + 8))(v12, v9);
  return v14;
}

char *specialized MOSuggestionSheetInterstitialView.init(controller:cellViewModel:presentationDelegate:selectedSuggestion:indexPath:fromNotification:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  swift_unknownObjectWeakInit();
  v11 = &v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate];
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode] = 0;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_photoMemoryBanner] = 0;
  v12 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel] = 0;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton] = 0;
  v13 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView;
  v14 = [objc_allocWithZone(UIScrollView) init];
  [v14 setShowsVerticalScrollIndicator:0];
  *&v9[v13] = v14;
  v15 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView;
  v16 = [objc_allocWithZone(UIStackView) init];
  [v16 setAxis:1];
  [v16 setAlignment:3];
  [v16 setSpacing:3.0];
  *&v9[v15] = v16;
  v17 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView;
  v18 = [objc_allocWithZone(UIStackView) init];
  [v18 setAxis:0];
  [v18 setAlignment:3];
  *&v9[v17] = v18;
  v19 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel;
  closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.titleLabel();
  *&v9[v19] = v20;
  v21 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel;
  *&v9[v21] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.dateLabel();
  v22 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel;
  *&v9[v22] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.assetTypeLabel();
  v23 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel;
  *&v9[v23] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.emptySelectionLabel();
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_portraitConstraints] = _swiftEmptyArrayStorage;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_landscapeConstraints] = _swiftEmptyArrayStorage;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_commonConstraints] = _swiftEmptyArrayStorage;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint] = 0;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint] = 0;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint] = 0;
  v24 = &v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString];
  *v25 = 0;
  v25[1] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v11 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v26 = &v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_selectedSuggestion];
  *v26 = a5;
  v26[1] = a6;
  v27 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_indexPath;
  v61 = type metadata accessor for IndexPath();
  v28 = *(v61 - 8);
  (*(v28 + 16))(&v9[v27], a7, v61);
  v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_fromNotification] = a8;
  v29 = objc_allocWithZone(UINavigationBar);

  v30 = [v29 init];
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar] = v30;
  swift_beginAccess();
  *&v9[v12] = a2;

  v32 = *((swift_isaMask & *a1) + 0x1B0);
  LOBYTE(v29) = v32(v31);
  v33 = (*((swift_isaMask & *a1) + 0x1C8))();
  v35 = v34;
  v36 = (*((swift_isaMask & *a1) + 0x1C0))();
  v37 = specialized static MOSuggestionSheetInterstitialView.makeJournalButton(publicUI:clientName:isSourceJournalComposer:)(v29 & 1, v33, v35, v36 & 1);

  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton] = v37;
  v39 = v32(v38);
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton] = specialized static MOSuggestionSheetInterstitialView.makeQuickAddButton(publicUI:)(v39 & 1);
  v40 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialExpandableListView());
  v41 = a1;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView] = MOSuggestionInterstitialExpandableListView.init(controller:)(v41);
  v42 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialCarouselView());
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView] = MOSuggestionInterstitialCarouselView.init(controller:)(v41);
  v64.receiver = v9;
  v64.super_class = type metadata accessor for MOSuggestionSheetInterstitialView();
  v43 = objc_msgSendSuper2(&v64, "initWithNibName:bundle:", 0, 0);
  v44 = *&v43[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
  v45 = *((swift_isaMask & *v44) + 0x198);
  v46 = v43;
  v47 = v44;
  v45(v43, &protocol witness table for MOSuggestionSheetInterstitialView);

  v48 = *&v46[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
  v49 = *((swift_isaMask & *v48) + 0xF0);
  v50 = v46;
  v51 = v48;
  v49(v43, &protocol witness table for MOSuggestionSheetInterstitialView);

  v52 = [objc_opt_self() defaultCenter];
  [v52 addObserver:v50 selector:"handleContentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];

  v53 = (*(*a2 + 176))();
  v54 = &v50[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString];
  *v54 = v53;
  v54[1] = v55;

  MOSuggestionSheetInterstitialView.updateTitleLabelString()();
  (*((swift_isaMask & *v50) + 0x318))();
  MOSuggestionSheetInterstitialView.updateConstraints()();

  (*(v28 + 8))(a7, v61);
  return v50;
}

uint64_t type metadata accessor for MOSuggestionSheetInterstitialView()
{
  result = type metadata singleton initialization cache for MOSuggestionSheetInterstitialView;
  if (!type metadata singleton initialization cache for MOSuggestionSheetInterstitialView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005C450()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C488()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized MOSuggestionSheetInterstitialView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_photoMemoryBanner) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton) = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView;
  v2 = [objc_allocWithZone(UIScrollView) init];
  [v2 setShowsVerticalScrollIndicator:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView;
  v4 = [objc_allocWithZone(UIStackView) init];
  [v4 setAxis:1];
  [v4 setAlignment:3];
  [v4 setSpacing:3.0];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView;
  v6 = [objc_allocWithZone(UIStackView) init];
  [v6 setAxis:0];
  [v6 setAlignment:3];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel;
  closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.titleLabel();
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel;
  *(v0 + v9) = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.dateLabel();
  v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel;
  *(v0 + v10) = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.assetTypeLabel();
  v11 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel;
  *(v0 + v11) = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.emptySelectionLabel();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_portraitConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_landscapeConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_commonConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint) = 0;
  v12 = (v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString);
  *v13 = 0;
  v13[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized MOSuggestionSheetInterstitialView.journalButtonTapped(_:)()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x1C8))();
  if (v2)
  {
    v3 = v2;
    v4 = (*((swift_isaMask & *v0) + 0x138))();
    if (v4)
    {
      v14 = v4;
      v5 = (*((swift_isaMask & *v0) + 0x390))();
      v6 = (*((swift_isaMask & *v0) + 0x3A0))(v5);
      (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_selectedSuggestion))(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_indexPath, 0);
      v7 = IndexPath.row.getter();
      v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString);
      v9 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString + 8);
      v10 = *(*v3 + 528);

      v10(v7, v8, v9, v6 & 1, v14);

      if ((*((swift_isaMask & *v14) + 0x1C0))())
      {
        if ((*((swift_isaMask & *v1) + 0x150))())
        {
          v12 = v11;
          ObjectType = swift_getObjectType();
          (*(v12 + 16))(ObjectType, v12);
          swift_unknownObjectRelease();
        }

        [v1 dismissViewControllerAnimated:1 completion:0];
      }
    }

    else
    {
    }
  }
}

void specialized MOSuggestionSheetInterstitialView.handleLabelEditTap(_:)()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString + 8];
  if (v1)
  {
    v2 = v0;
    v3 = *&v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString];
    type metadata accessor for MOSuggestionInterstitialAlertController();
    v4 = objc_opt_self();

    v5 = [v4 mainBundle];
    v26._object = 0x80000001002B06F0;
    v6._countAndFlagsBits = 0x7469542074696445;
    v26._countAndFlagsBits = 0xD00000000000004ALL;
    v6._object = 0xEA0000000000656CLL;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v26);

    v8 = String._bridgeToObjectiveC()();

    v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v8 message:0 preferredStyle:1];

    (*((swift_isaMask & *v9) + 0x58))(v3, v1);

    v10 = [v4 mainBundle];
    v27._object = 0x80000001002B0740;
    v11._countAndFlagsBits = 0x6C65636E6143;
    v27._countAndFlagsBits = 0xD000000000000049;
    v11._object = 0xE600000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v27);

    v13 = String._bridgeToObjectiveC()();

    v14 = objc_opt_self();
    v15 = [v14 actionWithTitle:v13 style:1 handler:0];

    [v9 addAction:v15];
    v16 = [v4 mainBundle];
    v28._object = 0x80000001002B0790;
    v17._countAndFlagsBits = 0x6D7269666E6F43;
    v17._object = 0xE700000000000000;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD000000000000044;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v28);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v9;
    *(v20 + 24) = v19;
    v21 = v9;

    v22 = String._bridgeToObjectiveC()();

    aBlock[4] = partial apply for closure #1 in MOSuggestionSheetInterstitialView.handleLabelEditTap(_:);
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_87;
    v23 = _Block_copy(aBlock);

    v24 = [v14 actionWithTitle:v22 style:0 handler:v23];
    _Block_release(v23);

    [v21 addAction:v24];
    [v2 presentViewController:v21 animated:1 completion:0];
  }
}

void specialized MOSuggestionSheetInterstitialView.didToggleListCarouselViewButton(carouselIndex:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode;
  if (v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode] == 1)
  {
    MOSuggestionSheetInterstitialView.showCarousel()();
    goto LABEL_8;
  }

  v3 = *&v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
  v4 = *((swift_isaMask & *v3) + 0xB8);
  v5 = v3;
  v6 = v4();

  if (v6 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();

    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
LABEL_5:
      MOSuggestionSheetInterstitialView.showListView()();
      goto LABEL_8;
    }
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:)(partial apply for closure #1 in MOSuggestionSheetInterstitialView.didToggleListCarouselViewButton(carouselIndex:), v9);

LABEL_8:
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static MOAngelLogger.assets);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 136315394;
    if (*(v1 + v2))
    {
      v15 = *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
      v16 = *((swift_isaMask & *v15) + 0xD0);
    }

    else
    {
      v15 = *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
      v16 = *((swift_isaMask & *v15) + 0x110);
    }

    v17 = v15;
    v16();

    v18 = Set.debugDescription.getter();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v29);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    v22 = *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
    v23 = *((swift_isaMask & *v22) + 0x110);
    v24 = v22;
    v23();

    v25 = Set.debugDescription.getter();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v29);

    *(v14 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "[Interstitial] currentlySelected: %s, selectedList: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  MOSuggestionSheetInterstitialView.setNavBar()();
}

unint64_t lazy protocol witness table accessor for type AssetViewMode and conformance AssetViewMode()
{
  result = lazy protocol witness table cache variable for type AssetViewMode and conformance AssetViewMode;
  if (!lazy protocol witness table cache variable for type AssetViewMode and conformance AssetViewMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewMode and conformance AssetViewMode);
  }

  return result;
}

uint64_t sub_10005D2C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_10005D328(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x140);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10005D398@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x150))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10005D3FC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0x158);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_10005D478@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t sub_10005D4DC(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x1D0);

  return v2(v3);
}

uint64_t getEnumTagSinglePayload for AssetViewMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetViewMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for MOSuggestionSheetInterstitialView()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10005D7E4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t outlined init with copy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D89C()
{
  v1 = (type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t outlined init with take of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:)()
{
  v1 = *(type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:)(v6, (v0 + v2), v5, v7, v8);
}

uint64_t outlined init with copy of UIButton.Configuration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UIButton.Configuration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005DC44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroy_83Tm(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t MOSuggestionSheetMosaicLayout.cachedAttributes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_cachedAttributes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double MOSuggestionSheetMosaicLayout.contentBounds.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_contentBounds;
  swift_beginAccess();
  return *v1;
}

uint64_t MOSuggestionSheetMosaicLayout.contentBounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_contentBounds);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t MOSuggestionSheetMosaicLayout.isFullHeight.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_isFullHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetMosaicLayout.isFullHeight.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_isFullHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionSheetMosaicLayout.mosaicSegmentDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_mosaicSegmentDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionSheetMosaicLayout.mosaicSegmentDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_mosaicSegmentDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

Swift::Void __swiftcall MOSuggestionSheetMosaicLayout.prepare()()
{
  v1 = v0;
  v462 = type metadata accessor for IndexPath();
  v2 = *(v462 - 8);
  __chkstk_darwin(v462);
  v461 = &v436 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MOSuggestionSheetMosaicLayout();
  v465.receiver = v0;
  v465.super_class = v4;
  objc_msgSendSuper2(&v465, "prepareLayout");
  v5 = [v0 collectionView];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *((swift_isaMask & *v0) + 0xC0);
  v8 = swift_unknownObjectRetain();
  v7(v8, &protocol witness table for MOSuggestionSheetMosaicLayout);
  v9 = (swift_isaMask & *v0) + 128;
  v460 = *((swift_isaMask & *v0) + 0x80);
  v459 = v9;
  v10 = v460(&slice);
  *v11 = _swiftEmptyArrayStorage;

  v10(&slice, 0);
  v12 = v6;
  v13 = [v12 bounds];
  v14 = (swift_isaMask & *v1) + 144;
  v458 = *((swift_isaMask & *v1) + 0x90);
  v457 = v14;
  (v458)(v13, 0.0, 0.0);
  v15 = [v12 numberOfItemsInSection:0];
  [v12 bounds];
  v17 = v16;

  (*((swift_isaMask & *v1) + 0xD0))(v15, v17);
  v454 = v15;
  v19 = v15 - 1;
  if (v15 < 1)
  {
    goto LABEL_195;
  }

  v20 = 0;
  v452 = v18;
  v448 = ceil(v18 * 0.5);
  v21 = 0.0;
  v453 = v17;
  v449 = ceil(v17 * 0.5);
  v22 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  v456 = (v2 + 8);
  v440 = xmmword_1002A48B0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v451 = v12;
  v450 = v19;
  while (2)
  {
    switch(v19)
    {
      case 0:

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v22 = COERCE_DOUBLE(swift_allocObject());
        *(*&v22 + 16) = v440;
        *(*&v22 + 32) = 0;
        *(*&v22 + 40) = 0;
        v30 = v452;
        *(*&v22 + 48) = v453;
        *(*&v22 + 56) = v30;
        goto LABEL_188;
      case 1:

        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v480.origin.x = 0.0;
        v480.origin.y = 0.0;
        v147 = v453;
        v480.size.width = v453;
        v148 = v452;
        v480.size.height = v452;
        v149 = v449;
        CGRectDivide(v480, &slice, &remainder, v449, CGRectMinXEdge);
        v463.x = remainder.origin.y;
        origin.width = remainder.size.height;
        v150 = remainder.origin.x + 1.0;
        v447.size.width = remainder.size.width + -1.0;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v481.origin.x = 0.0;
        v481.origin.y = 0.0;
        v481.size.width = v147;
        v481.size.height = v148;
        CGRectDivide(v481, &slice, &remainder, v149, CGRectMinXEdge);
        v447.origin = slice.origin;
        size = slice.size;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v22 = COERCE_DOUBLE(swift_allocObject());
        v151 = size;
        *(*&v22 + 16) = xmmword_1002A4A00;
        *(*&v22 + 32) = v447.origin;
        *(*&v22 + 48) = v151;
        x = v463.x;
        *(*&v22 + 64) = v150;
        *(*&v22 + 72) = x;
        width = origin.width;
        *(*&v22 + 80) = v447.size.width;
        *(*&v22 + 88) = width;
        goto LABEL_188;
      case 2:

        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v472.origin.x = 0.0;
        v472.origin.y = 0.0;
        v109 = v453;
        v472.size.width = v453;
        v110 = v452;
        v472.size.height = v452;
        v111 = v449;
        CGRectDivide(v472, &slice, &remainder, v449, CGRectMinXEdge);
        v447.size.width = remainder.origin.y;
        height = remainder.size.height;
        size.x = remainder.origin.x + 1.0;
        v447.origin.x = remainder.size.width + -1.0;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v473.origin.x = 0.0;
        v473.origin.y = 0.0;
        v473.size.width = v109;
        v473.size.height = v110;
        CGRectDivide(v473, &slice, &remainder, v111, CGRectMinXEdge);
        origin = slice.origin;
        v463 = slice.size;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v474.origin.x = size.x;
        v474.origin.y = v447.size.width;
        v474.size.width = v447.origin.x;
        v474.size.height = height;
        CGRectDivide(v474, &slice, &remainder, ceil(height * 0.5), CGRectMinYEdge);
        v113 = remainder.origin.x;
        v114 = remainder.size.width;
        v115 = remainder.origin.y + 1.0;
        v116 = remainder.size.height + -1.0;
        v447.size = slice.origin;
        v447.origin = slice.size;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v22 = COERCE_DOUBLE(swift_allocObject());
        v117 = origin;
        *(*&v22 + 16) = xmmword_1002A55C0;
        *(*&v22 + 32) = v117;
        v118 = v447.origin;
        *(*&v22 + 48) = v463;
        *(*&v22 + 64) = v447.size;
        *(*&v22 + 80) = v118;
        *(*&v22 + 96) = v113;
        *(*&v22 + 104) = v115;
        *(*&v22 + 112) = v114;
        *(*&v22 + 120) = v116;
        goto LABEL_188;
      case 3:

        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v475.origin.x = 0.0;
        v475.origin.y = 0.0;
        v119 = v453;
        v475.size.width = v453;
        v120 = v452;
        v475.size.height = v452;
        v121 = v449;
        CGRectDivide(v475, &slice, &remainder, v449, CGRectMinXEdge);
        v447.size.width = remainder.origin.y;
        v122 = remainder.size.height;
        size.x = remainder.origin.x + 1.0;
        v447.origin.x = remainder.size.width + -1.0;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v476.origin.x = 0.0;
        v476.origin.y = 0.0;
        v476.size.width = v119;
        v476.size.height = v120;
        CGRectDivide(v476, &slice, &remainder, v121, CGRectMinXEdge);
        v463 = slice.origin;
        origin = slice.size;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v477.origin.x = size.x;
        v477.origin.y = v447.size.width;
        v477.size.width = v447.origin.x;
        v477.size.height = v122;
        CGRectDivide(v477, &slice, &remainder, ceil(v122 * 0.5), CGRectMinYEdge);
        v478.origin.x = remainder.origin.x;
        v478.size.width = remainder.size.width;
        v478.origin.y = remainder.origin.y + 1.0;
        v478.size.height = remainder.size.height + -1.0;
        v123 = ceil(remainder.size.width * 0.5);
        v447 = slice;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        CGRectDivide(v478, &slice, &remainder, v123, CGRectMinXEdge);
        y = remainder.origin.y;
        v125 = remainder.size.height;
        v126 = remainder.origin.x + 1.0;
        v127 = remainder.size.width + -1.0;
        size = slice.origin;
        v445 = slice.size;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v22 = COERCE_DOUBLE(swift_allocObject());
        v128 = v463;
        *(*&v22 + 16) = xmmword_1002A48C0;
        *(*&v22 + 32) = v128;
        v129 = v447.origin;
        *(*&v22 + 48) = origin;
        *(*&v22 + 64) = v129;
        v130 = v445;
        *(*&v22 + 80) = v447.size;
        *(*&v22 + 96) = size;
        *(*&v22 + 112) = v130;
        *(*&v22 + 128) = v126;
        *(*&v22 + 136) = y;
        *(*&v22 + 144) = v127;
        *(*&v22 + 152) = v125;
        goto LABEL_188;
      case 4:

        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v469.origin.x = 0.0;
        v469.origin.y = 0.0;
        v469.size.width = v453;
        v469.size.height = v452;
        CGRectDivide(v469, &slice, &remainder, v449, CGRectMinXEdge);
        v46 = remainder.origin.y;
        v47 = remainder.size.height;
        v48 = remainder.origin.x + 1.0;
        v49 = remainder.size.width + -1.0;
        v463 = slice.origin;
        origin = slice.size;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v50 = swift_allocObject();
        v51 = origin;
        *(v50 + 16) = v440;
        *(v50 + 32) = v463;
        *(v50 + 48) = v51;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v52 = v48;
        v51.width = v46;
        v53 = v49;
        v54 = v47;
        CGRectDivide(*(&v51 - 8), &slice, &remainder, ceil(v49 * 0.5), CGRectMinXEdge);
        v470 = slice;
        v447.origin.x = remainder.origin.y;
        v55 = remainder.size.height;
        v439.x = remainder.origin.x + 1.0;
        v445.width = remainder.size.width + -1.0;
        v56 = ceil(slice.size.height * 0.5);
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        CGRectDivide(v470, &slice, &remainder, v56, CGRectMinYEdge);
        v444.x = slice.origin.x;
        v443.width = slice.origin.y;
        v442.x = slice.size.width;
        v441.width = slice.size.height;
        v463.x = remainder.origin.x;
        size.x = remainder.size.width;
        v447.size.width = remainder.origin.y + 1.0;
        origin.width = remainder.size.height + -1.0;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v471.origin.x = v439.x;
        v471.origin.y = v447.origin.x;
        v471.size.width = v445.width;
        v471.size.height = v55;
        CGRectDivide(v471, &slice, &remainder, ceil(v55 * 0.5), CGRectMinYEdge);
        v58 = slice.origin.x;
        v57 = slice.origin.y;
        v59 = slice.size.width;
        v436 = slice.size.height;
        v445.width = remainder.origin.x;
        v437 = remainder.size.width;
        v60 = remainder.origin.y + 1.0;
        v447.origin.x = remainder.size.height + -1.0;
        v61 = swift_allocObject();
        v62 = v443.width;
        *(v61 + 32) = v444.x;
        *(v61 + 40) = v62;
        v63 = v441.width;
        *(v61 + 48) = v442.x;
        *(v61 + 56) = v63;
        v438.width = v58;
        *(v61 + 64) = v58;
        *(v61 + 72) = v57;
        v64 = v57;
        v65 = v59;
        *(v61 + 80) = v59;
        v66 = v436;
        v67 = v463.x;
        *(v61 + 88) = v436;
        *(v61 + 96) = v67;
        v68 = size.x;
        *(v61 + 104) = v447.size.width;
        *(v61 + 112) = v68;
        v69 = v437;
        v70 = v445.width;
        *(v61 + 120) = origin.width;
        *(v61 + 128) = v70;
        v439.x = v60;
        *(v61 + 136) = v60;
        *(v61 + 144) = v69;
        v71 = v69;
        *(v61 + 152) = v447.origin.x;
        v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, v50));
        *(*&v22 + 16) = 2;
        v72 = v443.width;
        *(*&v22 + 64) = v444.x;
        *(*&v22 + 72) = v72;
        v73 = v441.width;
        *(*&v22 + 80) = v442.x;
        *(*&v22 + 88) = v73;
        v74 = *(*&v22 + 24);
        if (v74 < 6)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), 3, 1, *&v22));
          v74 = *(*&v22 + 24);
        }

        *(*&v22 + 16) = 3;
        *(*&v22 + 96) = v438.width;
        *(*&v22 + 104) = v64;
        *(*&v22 + 112) = v65;
        *(*&v22 + 120) = v66;
        if (v74 <= 7)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), 4, 1, *&v22));
          v74 = *(*&v22 + 24);
        }

        *(*&v22 + 16) = 4;
        v75 = v447.size.width;
        *(*&v22 + 128) = v463.x;
        *(*&v22 + 136) = v75;
        v76 = origin.width;
        *(*&v22 + 144) = size.x;
        *(*&v22 + 152) = v76;
        if (v74 <= 9)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), 5, 1, *&v22));
        }

        *(*&v22 + 16) = 5;
        v77 = v439.x;
        *(*&v22 + 160) = v445.width;
        *(*&v22 + 168) = v77;
        v78 = v447.origin.x;
        *(*&v22 + 176) = v71;
        *(*&v22 + 184) = v78;
        swift_setDeallocating();
        swift_deallocClassInstance();
        goto LABEL_188;
      case 5:
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v482.origin.x = 0.0;
        v482.origin.y = 0.0;
        v482.size.width = v453;
        v482.size.height = v452;
        CGRectDivide(v482, &slice, &remainder, v448, CGRectMinYEdge);
        v154 = remainder.origin.x;
        v155 = remainder.origin.y;
        v156 = remainder.size.width;
        v157 = remainder.size.height;
        v158 = specialized MOSuggestionSheetMosaicLayout.firstRowRects(segmentFrame:)(slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v159 = *(v158 + 2);
        if (v159)
        {
          v160 = v158;
          v161 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
          }

          v162 = *(*&v22 + 16);
          v163 = 32 * v162;
          v164 = (v160 + 48);
          do
          {
            v165 = v164[-1];
            v166 = *v164;
            v167 = *(*&v22 + 24);
            v168 = v162 + 1;
            if (v162 >= v167 >> 1)
            {
              v463 = v164[-1];
              origin = v166;
              *&v170 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v162 + 1, 1, *&v22));
              v166 = origin;
              v165 = v463;
              v22 = *&v170;
            }

            *(*&v22 + 16) = v168;
            v169 = (*&v22 + v163);
            v169[2] = v165;
            v169[3] = v166;
            v163 += 32;
            v164 += 2;
            v162 = v168;
            --v159;
          }

          while (v159);
        }

        else
        {
          v161 = v20;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
        }

        v350 = *(*&v22 + 16);
        v349 = *(*&v22 + 24);
        v20 = v161;
        if (v350 >= v349 >> 1)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v349 > 1), v350 + 1, 1, *&v22));
        }

        *(*&v22 + 16) = v350 + 1;
        v351 = (*&v22 + 32 * v350);
        v351[4] = v154;
        v351[5] = v155 + 1.0;
        v351[6] = v156;
        v351[7] = v157 + -1.0;
        goto LABEL_188;
      case 6:
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v483.origin.x = 0.0;
        v483.origin.y = 0.0;
        v483.size.width = v453;
        v483.size.height = v452;
        CGRectDivide(v483, &slice, &remainder, v448, CGRectMinYEdge);
        v171 = remainder.origin.x;
        v172 = remainder.origin.y;
        v173 = remainder.size.width;
        v174 = remainder.size.height;
        v175 = specialized MOSuggestionSheetMosaicLayout.firstRowRects(segmentFrame:)(slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v176 = *(v175 + 2);
        if (v176)
        {
          v177 = v175;
          v137 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
          }

          v178 = *(*&v22 + 16);
          v179 = 32 * v178;
          v180 = (v177 + 48);
          do
          {
            v181 = v180[-1];
            v182 = *v180;
            v183 = *(*&v22 + 24);
            v184 = v178 + 1;
            if (v178 >= v183 >> 1)
            {
              v463 = v180[-1];
              origin = v182;
              *&v186 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v183 > 1), v178 + 1, 1, *&v22));
              v182 = origin;
              v181 = v463;
              v22 = *&v186;
            }

            *(*&v22 + 16) = v184;
            v185 = (*&v22 + v179);
            v185[2] = v181;
            v185[3] = v182;
            v179 += 32;
            v180 += 2;
            v178 = v184;
            --v176;
          }

          while (v176);
        }

        else
        {
          v137 = v20;
        }

        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v486.origin.x = v171;
        v486.origin.y = v172 + 1.0;
        v486.size.width = v173;
        v486.size.height = v174 + -1.0;
        CGRectDivide(v486, &slice, &remainder, ceil(v173 * 0.5), CGRectMinXEdge);
        origin = slice.size;
        v463 = slice.origin;
        v352 = remainder.origin.x;
        v353 = remainder.origin.y;
        v355 = remainder.size.width;
        v354 = remainder.size.height;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
        }

        v357 = *(*&v22 + 16);
        v356 = *(*&v22 + 24);
        v358 = v356 >> 1;
        v359 = v357 + 1;
        if (v356 >> 1 <= v357)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v356 > 1), v357 + 1, 1, *&v22));
          v356 = *(*&v22 + 24);
          v358 = v356 >> 1;
        }

        *(*&v22 + 16) = v359;
        v360 = (*&v22 + 32 * v357);
        v361 = origin;
        v360[2] = v463;
        v360[3] = v361;
        if (v358 < (v357 + 2))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v356 > 1), v357 + 2, 1, *&v22));
        }

        *(*&v22 + 16) = v357 + 2;
        v362 = (*&v22 + 32 * v359);
        v362[4] = v352 + 1.0;
        v362[5] = v353;
        v362[6] = v355 + -1.0;
        v362[7] = v354;
        goto LABEL_187;
      case 7:
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v479.origin.x = 0.0;
        v479.origin.y = 0.0;
        v479.size.width = v453;
        v479.size.height = v452;
        CGRectDivide(v479, &slice, &remainder, v448, CGRectMinYEdge);
        v463.x = remainder.origin.x;
        v131 = remainder.origin.y;
        v132 = remainder.size.width;
        v133 = remainder.size.height;
        v134 = specialized MOSuggestionSheetMosaicLayout.firstRowRects(segmentFrame:)(slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v135 = *(v134 + 2);
        if (v135)
        {
          v136 = v134;
          v137 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
          }

          v138 = *(*&v22 + 16);
          v139 = 32 * v138;
          v140 = (v136 + 48);
          do
          {
            v141 = v140[-1];
            v142 = *v140;
            v143 = *(*&v22 + 24);
            v144 = v138 + 1;
            if (v138 >= v143 >> 1)
            {
              origin = v140[-1];
              v447.size = v142;
              *&v146 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), v138 + 1, 1, *&v22));
              v142 = v447.size;
              v141 = origin;
              v22 = *&v146;
            }

            *(*&v22 + 16) = v144;
            v145 = (*&v22 + v139);
            v145[2] = v141;
            v145[3] = v142;
            v139 += 32;
            v140 += 2;
            v138 = v144;
            --v135;
          }

          while (v135);
        }

        else
        {
          v137 = v20;
        }

        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v484.origin.x = v463.x;
        v484.origin.y = v131 + 1.0;
        v484.size.width = v132;
        v484.size.height = v133 + -1.0;
        CGRectDivide(v484, &slice, &remainder, ceil(v132 * 0.5), CGRectMinXEdge);
        v485 = slice;
        size.x = remainder.origin.x;
        v447.size.width = remainder.origin.y;
        v445.width = remainder.size.width;
        v447.origin.x = remainder.size.height;
        v330 = ceil(slice.size.height * 0.5);
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        CGRectDivide(v485, &slice, &remainder, v330, CGRectMinYEdge);
        origin = slice.size;
        v463 = slice.origin;
        v331 = remainder.origin.x;
        v332 = remainder.origin.y;
        v333 = remainder.size.width;
        v334 = remainder.size.height;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
        }

        v336 = *(*&v22 + 16);
        v335 = *(*&v22 + 24);
        v337 = v335 >> 1;
        v338 = v336 + 1;
        if (v335 >> 1 <= v336)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v335 > 1), v336 + 1, 1, *&v22));
          v335 = *(*&v22 + 24);
          v337 = v335 >> 1;
        }

        *(*&v22 + 16) = v338;
        v339 = (*&v22 + 32 * v336);
        v340 = origin;
        v339[2] = v463;
        v339[3] = v340;
        v341 = v336 + 2;
        if (v337 < (v336 + 2))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v335 > 1), v336 + 2, 1, *&v22));
        }

        *(*&v22 + 16) = v341;
        v342 = (*&v22 + 32 * v338);
        v342[4] = v331;
        v342[5] = v332 + 1.0;
        v342[6] = v333;
        v342[7] = v334 + -1.0;
        v343 = *(*&v22 + 24);
        if ((v336 + 3) > (v343 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v343 > 1), v336 + 3, 1, *&v22));
        }

        v344 = v447.size.width;
        v345 = v447.origin.x;
        v346 = size.x + 1.0;
        v347 = v445.width + -1.0;
        *(*&v22 + 16) = v336 + 3;
        v348 = (*&v22 + 32 * v341);
        v348[4] = v346;
        v348[5] = v344;
        v348[6] = v347;
        v348[7] = v345;
        goto LABEL_187;
      case 8:
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, 0.0, 0.0, v453, v452);
        v202 = v467;
        v203 = v468;
        v204 = specialized MOSuggestionSheetMosaicLayout.firstRowRects(segmentFrame:)(slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v205 = *(v204 + 2);
        if (v205)
        {
          v206 = v204;
          v137 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
          }

          v207 = *(*&v22 + 16);
          v208 = 32 * v207;
          v209 = (v206 + 48);
          do
          {
            v210 = v209[-1];
            v211 = *v209;
            v212 = *(*&v22 + 24);
            v213 = v207 + 1;
            if (v207 >= v212 >> 1)
            {
              v463 = v209[-1];
              origin = v211;
              *&v215 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v212 > 1), v207 + 1, 1, *&v22));
              v211 = origin;
              v210 = v463;
              v22 = *&v215;
            }

            *(*&v22 + 16) = v213;
            v214 = (*&v22 + v208);
            v214[2] = v210;
            v214[3] = v211;
            v208 += 32;
            v209 += 2;
            v207 = v213;
            --v205;
          }

          while (v205);
        }

        else
        {
          v137 = v20;
        }

        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, v202.width, v202.height, v203.x, v203.y);
        v463 = v468;
        origin = v467;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v443 = slice.size;
        v444 = slice.origin;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, v467.width, v467.height, v468.x, v468.y);
        v445 = slice.size;
        size = slice.origin;
        v447.origin = v468;
        v447.size = v467;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
        }

        v398 = *(*&v22 + 16);
        v397 = *(*&v22 + 24);
        v399 = v397 >> 1;
        v400 = v398 + 1;
        if (v397 >> 1 <= v398)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v397 > 1), v398 + 1, 1, *&v22));
          v397 = *(*&v22 + 24);
          v399 = v397 >> 1;
        }

        *(*&v22 + 16) = v400;
        v401 = (*&v22 + 32 * v398);
        v402 = v443;
        v401[2] = v444;
        v401[3] = v402;
        v403 = v398 + 2;
        if (v399 < (v398 + 2))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v397 > 1), v398 + 2, 1, *&v22));
        }

        *(*&v22 + 16) = v403;
        v404 = (*&v22 + 32 * v400);
        v405 = v445;
        v404[2] = size;
        v404[3] = v405;
        v406 = *(*&v22 + 24);
        v407 = v398 + 3;
        if ((v398 + 3) > (v406 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v406 > 1), v398 + 3, 1, *&v22));
        }

        *(*&v22 + 16) = v407;
        v408 = (*&v22 + 32 * v403);
        v409 = v447.origin;
        *(v408 + 2) = v447.size;
        *(v408 + 3) = v409;
        v410 = *(*&v22 + 24);
        if ((v398 + 4) > (v410 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v410 > 1), v398 + 4, 1, *&v22));
        }

        *(*&v22 + 16) = v398 + 4;
        v411 = (*&v22 + 32 * v407);
        v412 = v463;
        v411[2] = origin;
        v411[3] = v412;
LABEL_187:
        v20 = v137;
        goto LABEL_188;
      case 9:
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, 0.0, 0.0, v453, v452);
        v94 = v467;
        v95 = v468;
        v96 = specialized MOSuggestionSheetMosaicLayout.firstRowRects(segmentFrame:)(slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v97 = *(v96 + 2);
        if (v97)
        {
          v98 = v96;
          v99 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
          }

          v100 = *(*&v22 + 16);
          v101 = 32 * v100;
          v102 = (v98 + 48);
          do
          {
            v103 = v102[-1];
            v104 = *v102;
            v105 = *(*&v22 + 24);
            v106 = v100 + 1;
            if (v100 >= v105 >> 1)
            {
              v463 = v102[-1];
              origin = v104;
              *&v108 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v100 + 1, 1, *&v22));
              v104 = origin;
              v103 = v463;
              v22 = *&v108;
            }

            *(*&v22 + 16) = v106;
            v107 = (*&v22 + v101);
            v107[2] = v103;
            v107[3] = v104;
            v101 += 32;
            v102 += 2;
            v100 = v106;
            --v97;
          }

          while (v97);
        }

        else
        {
          v99 = v20;
        }

        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, v94.width, v94.height, v95.x, v95.y);
        v443 = v468;
        v444 = v467;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v302 = v467;
        v303 = v468;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v447.origin = v468;
        v447.size = v467;
        v442 = slice.origin;
        v441 = slice.size;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, v302.width, v302.height, v303.x, v303.y);
        v445 = slice.size;
        size = slice.origin;
        v463 = v468;
        origin = v467;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v304 = swift_allocObject();
        v305 = v441;
        *(v304 + 32) = v442;
        *(v304 + 48) = v305;
        v306 = v445;
        *(v304 + 64) = size;
        *(v304 + 80) = v306;
        v307 = v447.origin;
        *(v304 + 96) = v447.size;
        *(v304 + 112) = v307;
        v308 = v463;
        *(v304 + 128) = origin;
        *(v304 + 144) = v308;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
        }

        v309 = *(v304 + 32);
        v310 = *(v304 + 48);
        v312 = *(*&v22 + 16);
        v311 = *(*&v22 + 24);
        v313 = v311 >> 1;
        v314 = v312 + 1;
        if (v311 >> 1 <= v312)
        {
          v442 = *(v304 + 32);
          v441 = v310;
          *&v432 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v311 > 1), v312 + 1, 1, *&v22));
          v310 = v441;
          v309 = v442;
          v22 = *&v432;
          v311 = *(v432 + 3);
          v313 = v311 >> 1;
        }

        *(*&v22 + 16) = v314;
        v315 = (*&v22 + 32 * v312);
        v315[2] = v309;
        v315[3] = v310;
        v316 = v312 + 2;
        if (v313 < (v312 + 2))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v311 > 1), v312 + 2, 1, *&v22));
        }

        *(*&v22 + 16) = v316;
        v317 = (*&v22 + 32 * v314);
        v318 = v445;
        v317[2] = size;
        v317[3] = v318;
        v319 = *(*&v22 + 24);
        v320 = v312 + 3;
        if ((v312 + 3) > (v319 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v319 > 1), v312 + 3, 1, *&v22));
        }

        *(*&v22 + 16) = v320;
        v321 = (*&v22 + 32 * v316);
        v322 = v447.origin;
        *(v321 + 2) = v447.size;
        *(v321 + 3) = v322;
        v323 = *(*&v22 + 24);
        if ((v312 + 4) > (v323 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v323 > 1), v312 + 4, 1, *&v22));
        }

        *(*&v22 + 16) = v312 + 4;
        v324 = (*&v22 + 32 * v320);
        v325 = v463;
        v324[2] = origin;
        v324[3] = v325;
        swift_setDeallocating();
        swift_deallocClassInstance();
        v327 = *(*&v22 + 16);
        v326 = *(*&v22 + 24);
        if (v327 >= v326 >> 1)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v326 > 1), v327 + 1, 1, *&v22));
        }

        v20 = v99;
        *(*&v22 + 16) = v327 + 1;
        v328 = (*&v22 + 32 * v327);
        v329 = v443;
        v328[2] = v444;
        v328[3] = v329;
        goto LABEL_188;
      case 10:
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, 0.0, 0.0, v453, v452);
        v187 = v467;
        v188 = v468;
        v189 = specialized MOSuggestionSheetMosaicLayout.firstRowRects(segmentFrame:)(slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v190 = *(v189 + 2);
        if (v190)
        {
          v191 = v189;
          v192 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
          }

          v193 = *(*&v22 + 16);
          v194 = 32 * v193;
          v195 = (v191 + 48);
          do
          {
            v196 = v195[-1];
            v197 = *v195;
            v198 = *(*&v22 + 24);
            v199 = v193 + 1;
            if (v193 >= v198 >> 1)
            {
              v463 = v195[-1];
              origin = v197;
              *&v201 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v198 > 1), v193 + 1, 1, *&v22));
              v197 = origin;
              v196 = v463;
              v22 = *&v201;
            }

            *(*&v22 + 16) = v199;
            v200 = (*&v22 + v194);
            v200[2] = v196;
            v200[3] = v197;
            v194 += 32;
            v195 += 2;
            v193 = v199;
            --v190;
          }

          while (v190);
        }

        else
        {
          v192 = v20;
        }

        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, v187.width, v187.height, v188.x, v188.y);
        v443.width = v467.height;
        v444.x = v467.width;
        v441.width = v468.y;
        v442.x = v468.x;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v363 = v467;
        v364 = v468;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v447.origin = v468;
        v447.size = v467;
        v439 = slice.origin;
        v438 = slice.size;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, v363.width, v363.height, v364.x, v364.y);
        v445 = slice.size;
        size = slice.origin;
        v463 = v468;
        origin = v467;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v365 = swift_allocObject();
        v366 = v438;
        *(v365 + 32) = v439;
        *(v365 + 48) = v366;
        v367 = v445;
        *(v365 + 64) = size;
        *(v365 + 80) = v367;
        v368 = v447.origin;
        *(v365 + 96) = v447.size;
        *(v365 + 112) = v368;
        v369 = v463;
        *(v365 + 128) = origin;
        *(v365 + 144) = v369;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
        }

        v370 = *(v365 + 32);
        v371 = *(v365 + 48);
        v373 = *(*&v22 + 16);
        v372 = *(*&v22 + 24);
        v374 = v372 >> 1;
        v375 = v373 + 1;
        if (v372 >> 1 <= v373)
        {
          v439 = *(v365 + 32);
          v438 = v371;
          *&v433 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v372 > 1), v373 + 1, 1, *&v22));
          v371 = v438;
          v370 = v439;
          v22 = *&v433;
          v372 = *(v433 + 3);
          v374 = v372 >> 1;
        }

        *(*&v22 + 16) = v375;
        v376 = (*&v22 + 32 * v373);
        v376[2] = v370;
        v376[3] = v371;
        v377 = v373 + 2;
        if (v374 < (v373 + 2))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v372 > 1), v373 + 2, 1, *&v22));
        }

        *(*&v22 + 16) = v377;
        v378 = (*&v22 + 32 * v375);
        v379 = v445;
        v378[2] = size;
        v378[3] = v379;
        v380 = *(*&v22 + 24);
        v381 = v373 + 3;
        if ((v373 + 3) > (v380 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v380 > 1), v373 + 3, 1, *&v22));
        }

        *(*&v22 + 16) = v381;
        v382 = (*&v22 + 32 * v377);
        v383 = v447.origin;
        *(v382 + 2) = v447.size;
        *(v382 + 3) = v383;
        v384 = *(*&v22 + 24);
        if ((v373 + 4) > (v384 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v384 > 1), v373 + 4, 1, *&v22));
        }

        *(*&v22 + 16) = v373 + 4;
        v385 = (*&v22 + 32 * v381);
        v386 = v463;
        v385[2] = origin;
        v385[3] = v386;
        swift_setDeallocating();
        swift_deallocClassInstance();
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, v444.x, v443.width, v442.x, v441.width);
        v387 = slice.origin;
        v388 = slice.size;
        v389 = v467;
        v390 = v468;
        v392 = *(*&v22 + 16);
        v391 = *(*&v22 + 24);
        v393 = v391 >> 1;
        v394 = v392 + 1;
        if (v391 >> 1 <= v392)
        {
          v463 = v467;
          origin = v468;
          v447.size = slice.origin;
          v447.origin = slice.size;
          *&v434 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v391 > 1), v392 + 1, 1, *&v22));
          v388 = v447.origin;
          v387 = v447.size;
          v390 = origin;
          v389 = v463;
          v22 = *&v434;
          v391 = *(v434 + 3);
          v393 = v391 >> 1;
        }

        *(*&v22 + 16) = v394;
        v395 = (*&v22 + 32 * v392);
        v395[2] = v387;
        v395[3] = v388;
        if (v393 < (v392 + 2))
        {
          v463 = v389;
          origin = v390;
          *&v435 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v391 > 1), v392 + 2, 1, *&v22));
          v390 = origin;
          v389 = v463;
          v22 = *&v435;
        }

        *(*&v22 + 16) = v392 + 2;
        v396 = (*&v22 + 32 * v394);
        v396[2] = v389;
        v396[3] = v390;
        v20 = v192;
        goto LABEL_188;
      case 11:
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, 0.0, 0.0, v453, v452);
        v31 = v467;
        v32 = v468;
        v33 = specialized MOSuggestionSheetMosaicLayout.firstRowRects(segmentFrame:)(slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v34 = *(v33 + 2);
        if (v34)
        {
          v35 = v33;
          v36 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
          }

          v37 = *(*&v22 + 16);
          v38 = 32 * v37;
          v39 = (v35 + 48);
          do
          {
            v40 = v39[-1];
            v41 = *v39;
            v42 = *(*&v22 + 24);
            v43 = v37 + 1;
            if (v37 >= v42 >> 1)
            {
              v463 = v39[-1];
              origin = v41;
              *&v45 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v37 + 1, 1, *&v22));
              v41 = origin;
              v40 = v463;
              v22 = *&v45;
            }

            *(*&v22 + 16) = v43;
            v44 = (*&v22 + v38);
            v44[2] = v40;
            v44[3] = v41;
            v38 += 32;
            v39 += 2;
            v37 = v43;
            --v34;
          }

          while (v34);
        }

        else
        {
          v36 = v20;
        }

        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, v31.width, v31.height, v32.x, v32.y);
        v443.width = v467.height;
        v444.x = v467.width;
        v441.width = v468.y;
        v442.x = v468.x;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v216 = v467;
        v217 = v468;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v447.origin = v468;
        v447.size = v467;
        v439 = slice.origin;
        v438 = slice.size;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, v216.width, v216.height, v217.x, v217.y);
        v445 = slice.size;
        size = slice.origin;
        v463 = v468;
        origin = v467;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v218 = swift_allocObject();
        v219 = v438;
        *(v218 + 32) = v439;
        *(v218 + 48) = v219;
        v220 = v445;
        *(v218 + 64) = size;
        *(v218 + 80) = v220;
        v221 = v447.origin;
        *(v218 + 96) = v447.size;
        *(v218 + 112) = v221;
        v222 = v463;
        *(v218 + 128) = origin;
        *(v218 + 144) = v222;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
        }

        v223 = *(v218 + 32);
        v224 = *(v218 + 48);
        v226 = *(*&v22 + 16);
        v225 = *(*&v22 + 24);
        v227 = v225 >> 1;
        v228 = v226 + 1;
        if (v225 >> 1 <= v226)
        {
          v439 = *(v218 + 32);
          v438 = v224;
          *&v424 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v225 > 1), v226 + 1, 1, *&v22));
          v224 = v438;
          v223 = v439;
          v22 = *&v424;
          v225 = *(v424 + 3);
          v227 = v225 >> 1;
        }

        *(*&v22 + 16) = v228;
        v229 = (*&v22 + 32 * v226);
        v229[2] = v223;
        v229[3] = v224;
        v230 = v226 + 2;
        if (v227 < (v226 + 2))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v225 > 1), v226 + 2, 1, *&v22));
        }

        *(*&v22 + 16) = v230;
        v231 = (*&v22 + 32 * v228);
        v232 = v445;
        v231[2] = size;
        v231[3] = v232;
        v233 = *(*&v22 + 24);
        v234 = v226 + 3;
        if ((v226 + 3) > (v233 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v233 > 1), v226 + 3, 1, *&v22));
        }

        *(*&v22 + 16) = v234;
        v235 = (*&v22 + 32 * v230);
        v236 = v447.origin;
        *(v235 + 2) = v447.size;
        *(v235 + 3) = v236;
        v237 = *(*&v22 + 24);
        if ((v226 + 4) > (v237 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v237 > 1), v226 + 4, 1, *&v22));
        }

        *(*&v22 + 16) = v226 + 4;
        v238 = (*&v22 + 32 * v234);
        v239 = v463;
        v238[2] = origin;
        v238[3] = v239;
        swift_setDeallocating();
        swift_deallocClassInstance();
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, v444.x, v443.width, v442.x, v441.width);
        v463 = v468;
        origin = v467;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v240 = slice.origin;
        v241 = slice.size;
        v242 = v467;
        v243 = v468;
        v245 = *(*&v22 + 16);
        v244 = *(*&v22 + 24);
        v246 = v244 >> 1;
        v247 = v245 + 1;
        if (v244 >> 1 <= v245)
        {
          v447.size = v467;
          v447.origin = v468;
          size = slice.origin;
          v445 = slice.size;
          *&v425 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v244 > 1), v245 + 1, 1, *&v22));
          v241 = v445;
          v240 = size;
          v243 = v447.origin;
          v242 = v447.size;
          v22 = *&v425;
          v244 = *(v425 + 3);
          v246 = v244 >> 1;
        }

        *(*&v22 + 16) = v247;
        v248 = (*&v22 + 32 * v245);
        v248[2] = v240;
        v248[3] = v241;
        v249 = v245 + 2;
        if (v246 < (v245 + 2))
        {
          v447.size = v242;
          v447.origin = v243;
          *&v426 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v244 > 1), v245 + 2, 1, *&v22));
          v243 = v447.origin;
          v242 = v447.size;
          v22 = *&v426;
        }

        *(*&v22 + 16) = v249;
        v250 = (*&v22 + 32 * v247);
        v250[2] = v242;
        v250[3] = v243;
        v251 = *(*&v22 + 24);
        if ((v245 + 3) > (v251 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v251 > 1), v245 + 3, 1, *&v22));
        }

        *(*&v22 + 16) = v245 + 3;
        v252 = (*&v22 + 32 * v249);
        v253 = v463;
        v252[2] = origin;
        v252[3] = v253;
        v20 = v36;
        goto LABEL_188;
      case 12:
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, 0.0, 0.0, v453, v452);
        v79 = v467;
        v80 = v468;
        v81 = specialized MOSuggestionSheetMosaicLayout.firstRowRects(segmentFrame:)(slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v82 = *(v81 + 2);
        if (v82)
        {
          v83 = v81;
          v84 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
          }

          v85 = *(*&v22 + 16);
          v86 = 32 * v85;
          v87 = (v83 + 48);
          do
          {
            v88 = v87[-1];
            v89 = *v87;
            v90 = *(*&v22 + 24);
            v91 = v85 + 1;
            if (v85 >= v90 >> 1)
            {
              v463 = v87[-1];
              origin = v89;
              *&v93 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v85 + 1, 1, *&v22));
              v89 = origin;
              v88 = v463;
              v22 = *&v93;
            }

            *(*&v22 + 16) = v91;
            v92 = (*&v22 + v86);
            v92[2] = v88;
            v92[3] = v89;
            v86 += 32;
            v87 += 2;
            v85 = v91;
            --v82;
          }

          while (v82);
        }

        else
        {
          v84 = v20;
        }

        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, v79.width, v79.height, v80.x, v80.y);
        v443.width = v467.height;
        v444.x = v467.width;
        v441.width = v468.y;
        v442.x = v468.x;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v254 = v467;
        v255 = v468;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v447.origin = v468;
        v447.size = v467;
        v439 = slice.origin;
        v438 = slice.size;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, v254.width, v254.height, v255.x, v255.y);
        v445 = slice.size;
        size = slice.origin;
        v463 = v468;
        origin = v467;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v256 = swift_allocObject();
        v257 = v438;
        *(v256 + 32) = v439;
        *(v256 + 48) = v257;
        v258 = v445;
        *(v256 + 64) = size;
        *(v256 + 80) = v258;
        v259 = v447.origin;
        *(v256 + 96) = v447.size;
        *(v256 + 112) = v259;
        v260 = v463;
        *(v256 + 128) = origin;
        *(v256 + 144) = v260;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v22 + 16) + 1, 1, *&v22));
        }

        v261 = *(v256 + 32);
        v262 = *(v256 + 48);
        v264 = *(*&v22 + 16);
        v263 = *(*&v22 + 24);
        v265 = v263 >> 1;
        v266 = v264 + 1;
        if (v263 >> 1 <= v264)
        {
          v439 = *(v256 + 32);
          v438 = v262;
          *&v427 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v263 > 1), v264 + 1, 1, *&v22));
          v262 = v438;
          v261 = v439;
          v22 = *&v427;
          v263 = *(v427 + 3);
          v265 = v263 >> 1;
        }

        *(*&v22 + 16) = v266;
        v267 = (*&v22 + 32 * v264);
        v267[2] = v261;
        v267[3] = v262;
        v268 = v264 + 2;
        if (v265 < (v264 + 2))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v263 > 1), v264 + 2, 1, *&v22));
        }

        *(*&v22 + 16) = v268;
        v269 = (*&v22 + 32 * v266);
        v270 = v445;
        v269[2] = size;
        v269[3] = v270;
        v271 = *(*&v22 + 24);
        v272 = v264 + 3;
        if ((v264 + 3) > (v271 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v271 > 1), v264 + 3, 1, *&v22));
        }

        *(*&v22 + 16) = v272;
        v273 = (*&v22 + 32 * v268);
        v274 = v447.origin;
        *(v273 + 2) = v447.size;
        *(v273 + 3) = v274;
        v275 = *(*&v22 + 24);
        if ((v264 + 4) > (v275 >> 1))
        {
          v22 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v275 > 1), v264 + 4, 1, *&v22));
        }

        *(*&v22 + 16) = v264 + 4;
        v276 = (*&v22 + 32 * v272);
        v277 = v463;
        v276[2] = origin;
        v276[3] = v277;
        swift_setDeallocating();
        swift_deallocClassInstance();
        CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &slice, 0.5, v444.x, v443.width, v442.x, v441.width);
        v278 = v467;
        v279 = v468;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
        v443 = slice.size;
        v444 = slice.origin;
        v447.origin = v468;
        v447.size = v467;
        CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &slice, 0.5, v278.width, v278.height, v279.x, v279.y);
        v445 = slice.size;
        size = slice.origin;
        v463 = v468;
        origin = v467;
        v280 = swift_allocObject();
        v281 = v443;
        v282 = v444;
        v283 = v445;
        v284 = size;
        v285 = v447.origin;
        v286 = v447.size;
        v287 = origin;
        v288 = v463;
        v280[2] = v444;
        v280[3] = v281;
        v280[4] = v284;
        v280[5] = v283;
        v280[6] = v286;
        v280[7] = v285;
        v280[8] = v287;
        v280[9] = v288;
        v290 = *(*&v22 + 16);
        v289 = *(*&v22 + 24);
        v291 = v289 >> 1;
        v292 = v290 + 1;
        if (v289 >> 1 <= v290)
        {
          *&v428 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v289 > 1), v290 + 1, 1, *&v22));
          v281 = v443;
          v282 = v444;
          v283 = v445;
          v284 = size;
          v285 = v447.origin;
          v286 = v447.size;
          v287 = origin;
          v288 = v463;
          v22 = *&v428;
          v289 = *(v428 + 3);
          v291 = v289 >> 1;
        }

        *(*&v22 + 16) = v292;
        v293 = (*&v22 + 32 * v290);
        v293[2] = v282;
        v293[3] = v281;
        v294 = v290 + 2;
        if (v291 < (v290 + 2))
        {
          *&v429 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v289 > 1), v290 + 2, 1, *&v22));
          v283 = v445;
          v284 = size;
          v285 = v447.origin;
          v286 = v447.size;
          v287 = origin;
          v288 = v463;
          v22 = *&v429;
        }

        *(*&v22 + 16) = v294;
        v295 = (*&v22 + 32 * v292);
        v295[2] = v284;
        v295[3] = v283;
        v296 = *(*&v22 + 24);
        v297 = v290 + 3;
        if ((v290 + 3) > (v296 >> 1))
        {
          *&v430 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v296 > 1), v290 + 3, 1, *&v22));
          v285 = v447.origin;
          v286 = v447.size;
          v287 = origin;
          v288 = v463;
          v22 = *&v430;
        }

        *(*&v22 + 16) = v297;
        v298 = (*&v22 + 32 * v294);
        v298[2] = v286;
        v298[3] = v285;
        v299 = *(*&v22 + 24);
        v300 = v290 + 4;
        if ((v290 + 4) > (v299 >> 1))
        {
          *&v431 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v299 > 1), v300, 1, *&v22));
          v287 = origin;
          v288 = v463;
          v22 = *&v431;
        }

        *(*&v22 + 16) = v300;
        v301 = (*&v22 + 32 * v297);
        v301[2] = v287;
        v301[3] = v288;
        swift_setDeallocating();
        swift_deallocClassInstance();
        v20 = v84;
LABEL_188:
        v12 = *(*&v22 + 16);
        origin.width = v22;
        if (v12)
        {
          *&v463.x = objc_opt_self();
          v413 = *((swift_isaMask & *v1) + 0x88);
          v414 = (*&v22 + 56);
          while (1)
          {
            v26 = *(v414 - 3);
            v27 = *(v414 - 2);
            v28 = *(v414 - 1);
            v29 = *v414;
            v415 = v461;
            IndexPath.init(item:section:)();
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v417 = v20;
            v418 = [*&v463.x layoutAttributesForCellWithIndexPath:isa];

            (*v456)(v415, v462);
            [v418 setFrame:{v26, v27, v28, v29}];
            v419 = v418;
            v420 = v460(&slice);
            v422 = v421;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v422 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v422 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v423 = v420(&slice, 0);
            v487.origin.x = v413(v423);
            v489.origin.x = v21;
            v489.origin.y = v23;
            v489.size.width = v24;
            v489.size.height = v25;
            v488 = CGRectUnion(v487, v489);
            v458(v488.origin, *&v488.origin.y, v488.size, *&v488.size.height);

            if (v417 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v20 = v417 + 1;
            v414 += 4;
            v21 = v26;
            v23 = v27;
            v24 = v28;
            v25 = v29;
            if (!--v12)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
LABEL_198:

          return;
        }

        v26 = v21;
        v27 = v23;
        v28 = v24;
        v29 = v25;
LABEL_5:
        v21 = v26;
        v23 = v27;
        v24 = v28;
        v25 = v29;
        v12 = v451;
        v19 = v450;
        v22 = origin.width;
        if (v20 < v454)
        {
          continue;
        }

LABEL_195:

        return;
      default:
        goto LABEL_198;
    }
  }
}