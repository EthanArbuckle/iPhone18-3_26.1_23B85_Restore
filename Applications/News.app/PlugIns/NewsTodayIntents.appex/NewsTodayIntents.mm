void sub_100002798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 lowercaseString];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void sub_100003230()
{
  type metadata accessor for Tag();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_10000F144();
  v2 = sub_10000F144();
  v3 = [v0 initWithIdentifier:v1 displayString:v2];

  qword_10002B948 = v3;
}

void sub_1000032D0()
{
  type metadata accessor for Tag();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_10000F144();
  v2 = sub_10000F144();
  v3 = [v0 initWithIdentifier:v1 displayString:v2];

  qword_10002B958 = v3;
}

void *sub_100003398@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _s16NewsTodayIntents9TagIntentC14equalInContent3lhs3rhsSbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = [a1 tag];
  if (v3 && (v4 = v3, v5 = [v3 identifier], v4, v5))
  {
    v6 = sub_10000F154();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a2 tag];
  if (!v9 || (v10 = v9, v11 = [v9 identifier], v10, !v11))
  {
    v12 = 0;
    v14 = 0;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (v14)
    {
      if (v6 == v12 && v8 == v14)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_10000F2E4();
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_17;
  }

  v12 = sub_10000F154();
  v14 = v13;

  if (v8)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!v14)
  {
    v15 = 1;
    return v15 & 1;
  }

  v15 = 0;
LABEL_17:

  return v15 & 1;
}

void type metadata accessor for FCTagType()
{
  if (!qword_10002BDE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10002BDE0);
    }
  }
}

uint64_t sub_100003558(uint64_t a1)
{
  v2 = sub_10000EDE4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EDA4();
  sub_100006688(&qword_10002C210, &unk_10001C938);
  sub_10000EDD4();

  sub_10000EDB4();
  sub_1000066E0(0, &qword_10002C218, FCContextConfiguration_ptr);
  sub_10000EDC4();

  sub_10000EDB4();
  sub_100006688(&qword_10002C220, &unk_10001C948);
  sub_10000EDC4();

  sub_10000EDB4();
  sub_100006688(&qword_10002C228, &qword_10001C958);
  sub_10000EDC4();

  sub_10000EDB4();
  v25 = sub_1000066E0(0, &qword_10002C230, FCUserInfo_ptr);
  sub_10000EDC4();

  sub_10000EDB4();
  v24 = sub_100006688(&qword_10002C238, &unk_10001C960);
  sub_10000EDD4();

  sub_10000EDB4();
  sub_1000066E0(0, &qword_10002C240, FCNetworkBehaviorMonitor_ptr);
  sub_10000EDC4();

  sub_10000EDA4();
  sub_100006688(&qword_10002C248, &qword_10001C970);
  sub_10000EDC4();

  v7 = v3[13];
  v8 = enum case for Scope.singleton(_:);
  v7(v6);
  sub_10000ED44();

  v9 = v3[1];
  v9(v6, v2);
  sub_10000ED34();

  sub_10000EDA4();
  sub_1000066E0(0, &qword_10002C250, FCTagController_ptr);
  sub_10000EDC4();

  sub_10000EDA4();
  sub_100006688(&qword_10002C258, &unk_10001C978);
  sub_10000EDD4();

  v29 = v8;
  (v7)(v6, v8, v2);
  v28 = v3 + 13;
  sub_10000ED44();

  v27 = v9;
  v9(v6, v2);
  sub_10000EDA4();
  sub_100006688(&qword_10002C260, &qword_10001C988);
  sub_10000EDC4();

  sub_10000EDB4();
  sub_10000EF94();
  sub_10000EDC4();

  v23 = v7;
  (v7)(v6, v8, v2);
  sub_10000ED44();

  v9(v6, v2);
  sub_10000EDA4();
  sub_100006688(&qword_10002C268, &qword_10001C990);
  sub_10000EDD4();

  sub_10000EDA4();
  sub_100006688(&qword_10002C270, &unk_10001C998);
  sub_10000EDD4();

  v26 = a1;
  sub_10000EDA4();
  sub_1000066E0(0, &qword_10002C278, FCConfigurationManager_ptr);

  sub_10000EDC4();

  v10 = v29;
  (v7)(v6, v29, v2);
  sub_10000ED44();

  v11 = v27;
  v27(v6, v2);
  sub_10000EDA4();
  sub_1000066E0(0, &qword_10002C280, FCCloudContext_ptr);

  sub_10000EDC4();

  v12 = v10;
  v13 = v23;
  (v23)(v6, v12, v2);
  sub_10000ED44();

  v22[1] = v3 + 1;
  v11(v6, v2);
  sub_10000ED34();

  sub_10000EDA4();
  sub_100006688(&qword_10002C288, &unk_10001C9A8);
  sub_10000EDC4();

  v14 = v13;
  v13(v6, v29, v2);
  sub_10000ED44();

  v11(v6, v2);
  sub_10000EDA4();
  sub_1000066E0(0, &qword_10002C290, FCAssetManager_ptr);
  sub_10000EDC4();

  v15 = v29;
  v13(v6, v29, v2);
  sub_10000ED44();

  v11(v6, v2);
  sub_10000EDA4();
  sub_100006688(&qword_10002C298, &unk_10001C9B8);
  sub_10000EDC4();

  v16 = v15;
  v14(v6, v15, v2);
  sub_10000ED44();

  v11(v6, v2);
  sub_10000EDA4();
  sub_100006688(&qword_10002C2A0, &unk_10001C9C8);
  sub_10000EDC4();

  v14(v6, v15, v2);
  sub_10000ED44();

  v11(v6, v2);
  sub_10000EDA4();
  sub_1000066E0(0, &qword_10002C2A8, FCSubscriptionController_ptr);
  sub_10000EDC4();

  v14(v6, v15, v2);
  sub_10000ED44();

  v17 = v27;
  v27(v6, v2);
  sub_10000EDA4();
  sub_100006688(&qword_10002C2B0, &unk_10001C9D8);
  sub_10000EDC4();

  v14(v6, v16, v2);
  sub_10000ED44();

  v17(v6, v2);
  sub_10000EDA4();
  sub_1000066E0(0, &qword_10002C2B8, FCPuzzleTypeController_ptr);
  sub_10000EDC4();

  v18 = v29;
  v14(v6, v29, v2);
  sub_10000ED44();

  v17(v6, v2);
  sub_10000EDA4();
  sub_100006688(&qword_10002C2C0, &unk_10001C9E8);
  sub_10000EDC4();

  v14(v6, v18, v2);
  sub_10000ED44();

  v17(v6, v2);
  sub_10000EDA4();
  sub_1000066E0(0, &qword_10002C2C8, FCPurchaseController_ptr);
  sub_10000EDC4();

  v14(v6, v18, v2);
  sub_10000ED44();

  v17(v6, v2);
  sub_10000EDA4();
  sub_1000066E0(0, &qword_10002C2D0, FCEntitlementService_ptr);
  sub_10000EDC4();

  v14(v6, v18, v2);
  sub_10000ED44();

  v17(v6, v2);
  sub_10000EDA4();
  sub_100006688(&qword_10002C2D8, &unk_10001C9F8);
  sub_10000EDC4();

  v14(v6, v18, v2);
  sub_10000ED44();

  v17(v6, v2);
  sub_10000EDA4();
  sub_10000EDC4();

  sub_10000EDA4();
  sub_10000EDD4();

  sub_10000EDA4();
  sub_100006688(&qword_10002C2E0, &unk_10001CA08);
  sub_10000EDC4();

  v19 = v29;
  v14(v6, v29, v2);
  sub_10000ED44();

  v20 = v27;
  v27(v6, v2);
  sub_10000EDA4();
  sub_100006688(&qword_10002C2E8, &qword_10001CA18);
  sub_10000EDC4();

  v14(v6, v19, v2);
  sub_10000ED44();

  v20(v6, v2);
  sub_10000EDA4();
  sub_100006688(&qword_10002C2F0, &qword_10001CA20);
  sub_10000EDD4();

  sub_10000EDA4();
  sub_100006688(&qword_10002C2F8, &qword_10001CA28);
  sub_10000EDD4();

  sub_10000EDA4();
  sub_100006688(&qword_10002C300, &qword_10001CA30);
  sub_10000EDD4();

  sub_10000EDA4();
  sub_100006688(&qword_10002C308, &qword_10001CA38);
  sub_10000EDD4();

  v14(v6, v19, v2);
  sub_10000ED44();

  v20(v6, v2);
  sub_10000EDB4();
  sub_1000066E0(0, &qword_10002C310, FCPrivateDataSyncAvailability_ptr);
  sub_10000EDC4();
}

id sub_10000485C()
{
  v0 = [objc_opt_self() defaultConfiguration];

  return v0;
}

id sub_10000489C()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t sub_1000048DC(void *a1)
{
  v2 = (*(*(sub_100006688(&qword_10002C318, &unk_10001CA40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v20 - v3;
  v5 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C218, FCContextConfiguration_ptr);
  result = sub_10000ED64();
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  v8 = FCURLForContainerizedUserAccountCachesDirectory();
  if (v8)
  {
    v9 = v8;
    sub_10000ECC4();

    v10 = sub_10000ECD4();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  }

  else
  {
    v11 = sub_10000ECD4();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  }

  v12 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C220, &unk_10001C948);
  result = sub_10000ED64();
  if (!result)
  {
    goto LABEL_11;
  }

  v13 = result;
  v14 = sub_10000ECD4();
  v15 = *(v14 - 8);
  v17 = 0;
  if ((*(v15 + 48))(v4, 1, v14) != 1)
  {
    sub_10000ECB4(v16);
    v17 = v18;
    (*(v15 + 8))(v4, v14);
  }

  v19 = [objc_allocWithZone(FCConfigurationManager) initWithContextConfiguration:v7 contentHostDirectoryFileURL:v17 feldsparIDProvider:v13];

  result = swift_unknownObjectRelease();
  if (v19)
  {
    return v19;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_100004B5C()
{
  v0 = objc_allocWithZone(FCNetworkBehaviorMonitor);

  return [v0 initForLoggingOnly];
}

id sub_100004B94(void *a1)
{
  v2 = sub_10000ECD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C218, FCContextConfiguration_ptr);
  result = sub_10000ED64();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  v10 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C228, &qword_10001C958);
  result = sub_10000ED64();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  result = FCURLForContainerizedUserAccountCachesDirectory();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  sub_10000ECC4();

  v13 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C240, FCNetworkBehaviorMonitor_ptr);
  result = sub_10000ED64();
  if (result)
  {
    v14 = result;
    v15 = objc_allocWithZone(FCContentContext);
    sub_10000ECB4(v16);
    v18 = v17;
    v19 = [v15 initWithConfiguration:v9 configurationManager:v11 contentHostDirectory:v17 networkBehaviorMonitor:v14 desiredHeadlineFieldOptions:0 feedUsage:1 appActivityMonitor:0 backgroundTaskable:0 pptContext:0];

    swift_unknownObjectRelease();
    (*(v3 + 8))(v6, v2);
    return v19;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100004DDC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000F0E4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_10000F0D4();
  a1[3] = v2;
  a1[4] = &protocol witness table for FeatureAvailability;
  *a1 = result;
  return result;
}

uint64_t sub_100004E34(void *a1)
{
  v1 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_10000EF94();
  result = sub_10000ED64();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100004E88(void *a1)
{
  v1 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C288, &unk_10001C9A8);
  result = sub_10000ED64();
  if (result)
  {
    v3 = objc_allocWithZone(sub_10000EFD4());
    sub_10000EFC4();
    v4 = sub_10000EF94();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    return sub_10000EF84();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100004F28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C250, FCTagController_ptr);
  result = sub_10000ED64();
  if (result)
  {
    v6 = a1[4];
    sub_100006728(a1, a1[3]);
    sub_1000066E0(0, &qword_10002C2A8, FCSubscriptionController_ptr);
    result = sub_10000ED64();
    if (result)
    {
      v7 = sub_10000F0A4();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      result = sub_10000F094();
      a2[3] = v7;
      a2[4] = &protocol witness table for TagService;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100005024@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(sub_10000F064() - 8) + 64);
  __chkstk_darwin();
  v5 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C210, &unk_10001C938);
  result = sub_10000ED74();
  if (!v32)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C2B0, &unk_10001C9D8);
  result = sub_10000ED64();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C2C0, &unk_10001C9E8);
  result = sub_10000ED64();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C258, &unk_10001C978);
  result = sub_10000ED74();
  v10 = v30;
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v31;
  v12 = sub_100006728(v29, v30);
  v28[3] = v10;
  v28[4] = v11;
  v13 = sub_1000067C0(v28);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  v14 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C288, &unk_10001C9A8);
  result = sub_10000ED64();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_10000F044();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_10000F034();
  v18 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C238, &unk_10001C960);
  result = sub_10000ED74();
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C2A8, FCSubscriptionController_ptr);
  result = sub_10000ED64();
  if (result)
  {
    v20 = sub_10000F114();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_10000F104();
    sub_10000F054();
    v23 = sub_10000F024();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_10000F014();
    result = sub_100006824(v29);
    *a2 = v26;
    a2[1] = &protocol witness table for FeedContextFactory;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1000053CC()
{
  v0 = (*(*(sub_100006688(&qword_10002C318, &unk_10001CA40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v13 - v1;
  v3 = [objc_allocWithZone(FCContextConfiguration) initWithEnvironment:sub_1000055F4()];
  v4 = FCURLForContainerizedUserAccountCachesDirectory();
  if (v4)
  {
    v5 = v4;
    sub_10000ECC4();

    v6 = sub_10000ECD4();
    (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  }

  else
  {
    v6 = sub_10000ECD4();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  }

  v7 = [objc_opt_self() sharedInstance];
  sub_10000ECD4();
  v8 = *(v6 - 8);
  v10 = 0;
  if ((*(v8 + 48))(v2, 1, v6) != 1)
  {
    sub_10000ECB4(v9);
    v10 = v11;
    (*(v8 + 8))(v2, v6);
  }

  v12 = [objc_allocWithZone(FCConfigurationManager) initWithContextConfiguration:v3 contentHostDirectoryFileURL:v10 feldsparIDProvider:v7];

  if (!v12)
  {
    __break(1u);
  }
}

uint64_t sub_1000055F4()
{
  v1 = *v0;
  v2 = sub_10000F004();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ECE4();
  sub_10000676C();
  sub_10000ED14();

  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 == enum case for NewsEnvironment.production(_:))
  {
    return v8;
  }

  if (v7 == enum case for NewsEnvironment.staging(_:))
  {
    return 1;
  }

  if (v7 == enum case for NewsEnvironment.qa(_:))
  {
    return 2;
  }

  if (v7 == enum case for NewsEnvironment.test(_:))
  {
    return 3;
  }

  if (v7 == enum case for NewsEnvironment.devel(_:))
  {
    return 4;
  }

  if (v7 == enum case for NewsEnvironment.sandbox(_:))
  {
    return 6;
  }

  if (v7 == enum case for NewsEnvironment.demo1(_:))
  {
    return 7;
  }

  if (v7 == enum case for NewsEnvironment.demo2(_:))
  {
    return 8;
  }

  result = sub_10000F2D4();
  __break(1u);
  return result;
}

void sub_1000057F0(void *a1)
{
  v2 = *(*(sub_100006688(&qword_10002C318, &unk_10001CA40) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v42 - v6;
  v8 = [objc_allocWithZone(FCContextConfiguration) initWithEnvironment:sub_1000055F4()];
  v9 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C278, FCConfigurationManager_ptr);
  v10 = sub_10000ED64();
  if (!v10)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43 = v10;
  v11 = FCURLForContainerizedUserAccountCachesDirectory();
  if (v11)
  {
    v12 = v11;
    sub_10000ECC4();

    v13 = sub_10000ECD4();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  }

  else
  {
    v14 = sub_10000ECD4();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  v15 = 1;
  v16 = FCURLForContainerizedUserAccountCachesDirectory();
  v45 = v8;
  if (v16)
  {
    v17 = v16;
    sub_10000ECC4();

    v15 = 0;
  }

  v18 = sub_10000ECD4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v44 = v5;
  v20(v5, v15, 1, v18);
  v42 = [objc_allocWithZone(type metadata accessor for PrivateDataActionProvider()) init];
  v21 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C240, FCNetworkBehaviorMonitor_ptr);
  v22 = sub_10000ED64();
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  v24 = [objc_allocWithZone(NUApplicationAppActivityMonitorIOS) init];
  v25 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C310, FCPrivateDataSyncAvailability_ptr);
  v26 = sub_10000ED64();
  if (!v26)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = *(v19 + 48);
  if (v28(v7, 1, v18) == 1)
  {
    v30 = 0;
  }

  else
  {
    sub_10000ECB4(v29);
    v30 = v31;
    (*(v19 + 8))(v7, v18);
  }

  v32 = v44;
  if (v28(v44, 1, v18) == 1)
  {
    v34 = 0;
  }

  else
  {
    sub_10000ECB4(v33);
    v34 = v35;
    (*(v19 + 8))(v32, v18);
  }

  v36 = objc_allocWithZone(FCCloudContext);
  LOWORD(v41) = 0;
  v37 = v45;
  v39 = v42;
  v38 = v43;
  v40 = [v36 initWithConfiguration:v45 configurationManager:v43 contentHostDirectory:v30 privateDataHostDirectory:v34 privateDataActionProvider:v42 networkBehaviorMonitor:v23 appActivityMonitor:v24 desiredHeadlineFieldOptions:0xF87FFFFC1 feedUsage:2 lockStoreFrontIfNeeded:v41 deviceIsiPad:0 backgroundTaskable:v27 privateDataSyncAvailability:0 pptContext:?];

  if (!v40)
  {
    goto LABEL_20;
  }
}

id sub_100005C74(void *a1, SEL *a2)
{
  v3 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C248, &qword_10001C970);
  result = sub_10000ED64();
  if (result)
  {
    v5 = [result *a2];
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100005D08(void *a1, SEL *a2)
{
  v3 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C280, FCCloudContext_ptr);
  result = sub_10000ED64();
  if (result)
  {
    v5 = result;
    v6 = [result *a2];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100005DA8(void *a1, SEL *a2)
{
  v3 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C280, FCCloudContext_ptr);
  v4 = sub_10000ED64();
  if (!v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [v4 *a2];

  if (!v6)
  {
LABEL_5:
    __break(1u);
  }
}

id sub_100005E80()
{
  v0 = [objc_opt_self() sharedAccount];

  return v0;
}

uint64_t sub_100005ED0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C230, FCUserInfo_ptr);
  result = sub_10000ED64();
  if (result)
  {
    v5 = sub_10000F084();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_10000F074();
    a2[3] = v5;
    a2[4] = &protocol witness table for FeedUserInfo;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100005F74()
{
  v0 = objc_allocWithZone(sub_10000F0F4());

  return [v0 init];
}

uint64_t sub_100005FAC(void *a1)
{
  v2 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C2E0, &unk_10001CA08);
  result = sub_10000ED64();
  if (result)
  {
    v4 = a1[4];
    sub_100006728(a1, a1[3]);
    sub_100006688(&qword_10002C2A0, &unk_10001C9C8);
    result = sub_10000ED64();
    if (result)
    {
      v5 = sub_10000EF74();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      return sub_10000EF64();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000060F0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C288, &unk_10001C9A8);
  result = sub_10000ED64();
  if (result)
  {
    v11 = result;
    v12 = a2(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    result = a3(v11);
    a5[3] = v12;
    a5[4] = a4;
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000061AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C288, &unk_10001C9A8);
  result = sub_10000ED64();
  if (result)
  {
    v6 = a1[4];
    sub_100006728(a1, a1[3]);
    sub_100006688(&qword_10002C308, &qword_10001CA38);
    result = sub_10000ED74();
    if (v10)
    {
      v7 = sub_10000EFF4();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      result = sub_10000EFE4();
      a2[3] = v7;
      a2[4] = &protocol witness table for SearchEndpointConfigManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000062A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_1000066E0(0, &qword_10002C280, FCCloudContext_ptr);
  result = sub_10000ED64();
  if (result)
  {
    v5 = sub_10000F0C4();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_10000F0B4();
    a2[3] = v5;
    a2[4] = &protocol witness table for ResourceService;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000634C()
{
  v0 = [objc_opt_self() notAvailable];

  return v0;
}

uint64_t sub_1000065A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_10000662C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006688(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000066E0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *sub_100006728(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000676C()
{
  result = qword_10002C320;
  if (!qword_10002C320)
  {
    type metadata accessor for TodayIntentsServiceAssembly();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C320);
  }

  return result;
}

uint64_t *sub_1000067C0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100006824(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006870(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006894@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_100006C40(v1 + 24, &v6);
  if (v7)
  {
    return sub_100006DEC(&v6, a1);
  }

  sub_100006CB0(&v6);
  v4 = v1;
  v5 = *(v1 + 16);
  sub_10000EEA4();
  sub_100006D18(a1, &v6);
  swift_beginAccess();
  sub_100006D7C(&v6, v4 + 24);
  return swift_endAccess();
}

uint64_t sub_10000694C()
{
  v1 = v0;
  v2 = sub_10000EE84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 56) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  sub_100006688(&qword_10002C3D8, "(\b");
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10001CA50;
  v8 = type metadata accessor for TodayIntentsServiceAssembly();
  v9 = swift_allocObject();
  *(v7 + 56) = v8;
  *(v7 + 64) = sub_100006E04(&qword_10002C3E0, type metadata accessor for TodayIntentsServiceAssembly);
  *(v7 + 32) = v9;
  v10 = sub_10000EFB4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_10000EFA4();
  *(v7 + 96) = v10;
  *(v7 + 104) = sub_100006E04(&qword_10002C3E8, &type metadata accessor for SearchServiceAssembly);
  *(v7 + 72) = v13;
  v14 = type metadata accessor for TodayIntentsAssembly();
  v15 = swift_allocObject();
  *(v7 + 136) = v14;
  *(v7 + 144) = sub_100006E04(&qword_10002C3F0, type metadata accessor for TodayIntentsAssembly);
  *(v7 + 112) = v15;
  v16 = sub_10000ED94();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_10000ED84();
  (*(v3 + 104))(v6, enum case for Container.Environment.normal(_:), v2);
  v19 = sub_10000EEB4();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_10000EE94();
  return v1;
}

uint64_t sub_100006BDC()
{
  v1 = *(v0 + 16);

  sub_100006CB0(v0 + 24);

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100006C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006688(&unk_10002C580, "&\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006CB0(uint64_t a1)
{
  v2 = sub_100006688(&unk_10002C580, "&\b");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006688(&unk_10002C580, "&\b");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006DEC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100006E04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006E4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100006728(a1, a1[3]);
  sub_100006688(&qword_10002C498, &qword_10001CAE8);
  result = sub_10000ED74();
  if (v12)
  {
    v6 = a1[4];
    sub_100006728(a1, a1[3]);
    sub_100006688(&qword_10002C4A0, &unk_10001CAF0);
    result = sub_10000ED74();
    if (v10)
    {
      v7 = type metadata accessor for FollowingTagsService();
      v8 = swift_allocObject();
      sub_100006DEC(&v11, v8 + 16);
      result = sub_100006DEC(&v9, v8 + 56);
      a2[3] = v7;
      a2[4] = &off_100020ED0;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100006F58@<X0>(void *a1@<X8>)
{
  v2 = sub_10000ECD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForTodayDropbox();
  if (result)
  {
    v8 = result;
    sub_10000ECC4();

    v9 = objc_allocWithZone(FCFileCoordinatedTodayDropbox);
    sub_10000ECB4(v10);
    v12 = v11;
    v13 = [v9 initWithFileURL:v11];

    (*(v3 + 8))(v6, v2);
    result = sub_1000066E0(0, &qword_10002C4A8, FCFileCoordinatedTodayDropbox_ptr);
    a1[3] = result;
    a1[4] = &off_100020F30;
    *a1 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000070A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100006728(a1, a1[3]);
  v4 = sub_1000066E0(0, &qword_10002C250, FCTagController_ptr);
  result = sub_10000ED64();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &off_100020DB8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000714C()
{
  sub_10000EDA4();
  sub_100006688(&qword_10002C490, &qword_10001CAE0);
  sub_10000EDD4();

  sub_10000EDB4();
  sub_100006688(&qword_10002C498, &qword_10001CAE8);
  sub_10000EDD4();

  sub_10000EDB4();
  sub_100006688(&qword_10002C4A0, &unk_10001CAF0);
  sub_10000EDD4();
}

id sub_100007274()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    sub_10000F154();
    v1 = sub_10000F144();
  }

  v2 = [v0 nameCompact];
  if (!v2)
  {
    v2 = [v0 name];
  }

  v3 = v2;
  sub_10000F154();

  type metadata accessor for Tag();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_10000F144();

  v6 = [v4 initWithIdentifier:v1 displayString:v5];

  v7 = [v0 groupTitleColor];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 hex];

    if (!v9)
    {
      sub_10000F154();
      v9 = sub_10000F144();
    }
  }

  else
  {
    v9 = 0;
  }

  [v6 setNameColorLight:v9];

  v10 = [v0 groupDarkStyleTitleColor];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 hex];

    if (!v12)
    {
      sub_10000F154();
      v12 = sub_10000F144();
    }
  }

  else
  {
    v12 = 0;
  }

  [v6 setNameColorDark:v12];

  return v6;
}

uint64_t sub_100007468@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler____lazy_storage___resolver;
  swift_beginAccess();
  sub_10000A3AC(v1 + v3, &v7, &unk_10002C580, "&\b");
  if (v8)
  {
    return sub_100006DEC(&v7, a1);
  }

  sub_10000A414(&v7, &unk_10002C580, "&\b");
  v5 = v1;
  v6 = *(v1 + OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler_container);
  sub_100006894(a1);
  sub_100006D18(a1, &v7);
  swift_beginAccess();
  sub_10000A474(&v7, v5 + v3, &unk_10002C580, "&\b");
  return swift_endAccess();
}

uint64_t sub_100007568@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler____lazy_storage___followingTagsService;
  swift_beginAccess();
  sub_10000A3AC(v1 + v3, &v7, &unk_10002C570, &qword_10001CBA8);
  if (v8)
  {
    return sub_100006DEC(&v7, a1);
  }

  sub_10000A414(&v7, &unk_10002C570, &qword_10001CBA8);
  sub_100007468(&v7);
  sub_100006728(&v7, v8);
  sub_100006688(&qword_10002C490, &qword_10001CAE0);
  result = sub_10000ED74();
  if (v6)
  {
    sub_100006DEC(&v5, a1);
    sub_100006824(&v7);
    sub_100006D18(a1, &v7);
    swift_beginAccess();
    sub_10000A474(&v7, v1 + v3, &unk_10002C570, &qword_10001CBA8);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000076B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler____lazy_storage___searchService;
  swift_beginAccess();
  sub_10000A3AC(v1 + v3, &v7, &qword_10002C560, &qword_10001CB98);
  if (v8)
  {
    return sub_100006DEC(&v7, a1);
  }

  sub_10000A414(&v7, &qword_10002C560, &qword_10001CB98);
  sub_100007468(&v7);
  sub_100006728(&v7, v8);
  sub_100006688(&qword_10002C568, &qword_10001CBA0);
  result = sub_10000ED74();
  if (v6)
  {
    sub_100006DEC(&v5, a1);
    sub_100006824(&v7);
    sub_100006D18(a1, &v7);
    swift_beginAccess();
    sub_10000A474(&v7, v1 + v3, &qword_10002C560, &qword_10001CB98);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100007800()
{
  v1 = OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler____lazy_storage___configurationManager;
  v2 = *(v0 + OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler____lazy_storage___configurationManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler____lazy_storage___configurationManager);
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = v0;
  sub_100007468(v9);
  sub_100006728(v9, v9[3]);
  sub_1000066E0(0, &qword_10002C278, FCConfigurationManager_ptr);
  result = sub_10000ED64();
  if (result)
  {
    v6 = result;
    sub_100006824(v9);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100007984()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007AA8(uint64_t a1, uint64_t a2)
{
  sub_100007568(v5);
  sub_100006728(v5, v5[3]);
  type metadata accessor for FollowingTagsService();
  v3 = sub_10000B1A4(a2);
  sub_100006824(v5);
  return v3;
}

id sub_100007B44(unint64_t a1, unint64_t a2)
{
  v3 = sub_100009820(a1);
  if (v3)
  {
    v4 = v3;
    sub_10000F174();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10000F1A4();
    }

    sub_10000F1B4();
  }

  v5 = sub_100009A10(a2);
  if (v5)
  {
    v6 = v5;
    sub_10000F174();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10000F1A4();
    }

    sub_10000F1B4();
  }

  v7 = objc_allocWithZone(INObjectCollection);
  sub_100006688(&qword_10002C540, &qword_10001CB80);
  isa = sub_10000F184().super.isa;

  v9 = [v7 initWithSections:isa];

  return v9;
}

void sub_100007CB0(uint64_t a1, void (*a2)(id, void))
{
  v3 = objc_allocWithZone(INObjectCollection);
  type metadata accessor for Tag();
  isa = sub_10000F184().super.isa;
  v5 = [v3 initWithItems:isa];

  v6 = v5;
  a2(v5, 0);
}

uint64_t sub_100007D60()
{
  sub_1000076B4(v4);
  sub_100006728(v4, v4[3]);
  sub_10000EF54();
  v0 = sub_100007800();
  sub_1000066E0(0, &qword_10002C278, FCConfigurationManager_ptr);
  sub_10000F1F4();

  v1 = sub_10000EE04();
  v2 = sub_10000EDF4();

  sub_100006824(v4);
  return v2;
}

uint64_t sub_100007E48(uint64_t a1, void *a2, void (*a3)(id, void), uint64_t a4)
{
  v7 = sub_10000EF24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = _swiftEmptyArrayStorage;
  v12 = sub_10000EEF4();
  v59 = v8;
  v60 = v7;
  v57 = a4;
  v58 = a3;
  if (v12)
  {
    swift_unknownObjectRetain();
    v13 = NSSNewsWidgetIntentsTopHitHeaderName();
    if (v13)
    {
      v14 = v13;
      sub_10000F154();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    sub_100006688(&qword_10002C548, &qword_10001CB88);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10001CB00;
    swift_getObjectType();
    *(v17 + 32) = sub_10000BDA4();
    if (v16)
    {
      v18 = sub_10000F144();
    }

    else
    {
      v18 = 0;
    }

    v19 = objc_allocWithZone(INObjectSection);
    type metadata accessor for Tag();
    isa = sub_10000F184().super.isa;

    v21 = [v19 initWithTitle:v18 items:isa];

    v22 = v21;
    sub_10000F174();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v53 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10000F1A4();
    }

    sub_10000F1B4();

    swift_unknownObjectRelease();
    v62 = &_swiftEmptySetSingleton;
    v23 = [swift_unknownObjectRetain() identifier];
    v24 = sub_10000F154();
    v26 = v25;

    sub_100008A60(&v61, v24, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = &_swiftEmptySetSingleton;
  }

  result = [a2 respondsToSelector:"deprecatedSportsTopicTagIds"];
  if ((result & 1) == 0)
  {
    goto LABEL_40;
  }

  v28 = [a2 deprecatedSportsTopicTagIds];
  if (v28)
  {
    v29 = v28;
    v30 = sub_10000F194();
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v31 = sub_100009C30(v30);

  sub_100008468(v31);
  sub_10000EF14();

  v32 = sub_10000EF04();
  v33 = v32;
  v34 = v32 >> 62;
  if (!(v32 >> 62))
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_37:

LABEL_38:
    v49 = objc_allocWithZone(INObjectCollection);
    sub_100006688(&qword_10002C540, &qword_10001CB80);
    v50 = sub_10000F184().super.isa;

    v51 = [v49 initWithSections:v50];

    v52 = v51;
    v58(v51, 0);

    swift_unknownObjectRelease();
    return (*(v59 + 8))(v11, v60);
  }

  if (!sub_10000F2C4())
  {
    goto LABEL_37;
  }

LABEL_18:
  v35 = NSSNewsWidgetIntentsTopicsHeaderName();
  if (v35)
  {
    v36 = v35;
    sub_10000F154();
    v38 = v37;

    v39 = v33 & 0xFFFFFFFFFFFFFF8;
    if (!v34)
    {
      goto LABEL_20;
    }

LABEL_30:
    v40 = sub_10000F2C4();
    if (v40)
    {
      goto LABEL_21;
    }

LABEL_31:

    if (v38)
    {
LABEL_28:
      v44 = sub_10000F144();

LABEL_33:
      v45 = objc_allocWithZone(INObjectSection);
      type metadata accessor for Tag();
      v46 = sub_10000F184().super.isa;

      v47 = [v45 initWithTitle:v44 items:v46];

      v48 = v47;
      sub_10000F174();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10000F1A4();
      }

      sub_10000F1B4();

      goto LABEL_38;
    }

LABEL_32:
    v44 = 0;
    goto LABEL_33;
  }

  v38 = 0;
  v39 = v33 & 0xFFFFFFFFFFFFFF8;
  if (v34)
  {
    goto LABEL_30;
  }

LABEL_20:
  v40 = *(v39 + 16);
  if (!v40)
  {
    goto LABEL_31;
  }

LABEL_21:
  v61 = _swiftEmptyArrayStorage;
  result = sub_10000F274();
  if ((v40 & 0x8000000000000000) == 0)
  {
    v56 = v11;
    v41 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        sub_10000F234();
      }

      else
      {
        v43 = *(v33 + 8 * v41 + 32);
        swift_unknownObjectRetain();
      }

      ++v41;
      swift_getObjectType();
      sub_10000BDA4();
      swift_unknownObjectRelease();
      sub_10000F254();
      v42 = v61[2];
      sub_10000F284();
      sub_10000F294();
      sub_10000F264();
    }

    while (v40 != v41);

    v11 = v56;
    if (v38)
    {
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100008468(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100008A60(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_100008640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10000ECA4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1000086D0(int a1, int a2, int a3, void *aBlock, uint64_t (*a5)(void), uint64_t *a6)
{
  v8 = _Block_copy(aBlock);
  v9 = [objc_allocWithZone(a5(0)) init];
  v10 = *a6;
  swift_beginAccess();
  *&v9[v10] = 2;
  [v9 setUserActivity:0];
  v8[2](v8, v9);
  _Block_release(v8);
}

uint64_t sub_100008784()
{
  sub_100007568(v2);
  sub_100006728(v2, v2[3]);
  type metadata accessor for FollowingTagsService();
  v0 = sub_10000B1A4(&off_100020B90);
  sub_100006824(v2);
  return v0;
}

uint64_t sub_100008820(unint64_t *a1)
{
  v1 = a1[1];
  v14 = *a1;

  sub_10000B7B4(v2);
  if (!(v14 >> 62))
  {
    v3 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    v11 = sub_100006688(&qword_10002C530, &unk_10001CB68);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    return sub_10000EE44();
  }

  v3 = sub_10000F2C4();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = sub_10000F274();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        sub_10000F234();
      }

      else
      {
        v10 = *(v14 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      v6 = [objc_allocWithZone(type metadata accessor for TagIntent()) init];
      swift_getObjectType();
      v7 = v6;
      v8 = sub_10000BDA4();
      [v7 setTag:v8];

      swift_unknownObjectRelease();
      sub_10000F254();
      v9 = _swiftEmptyArrayStorage[2];
      sub_10000F284();
      sub_10000F294();
      sub_10000F264();
    }

    while (v3 != v5);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100008A60(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10000F354();
  sub_10000F164();
  v9 = sub_10000F374();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10000F2E4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100008E10(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100008BB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100006688(&unk_10002C550, &qword_10001CB90);
  result = sub_10000F224();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10000F354();
      sub_10000F164();
      result = sub_10000F374();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100008E10(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100008BB0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100008F90();
      goto LABEL_16;
    }

    sub_1000090EC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10000F354();
  sub_10000F164();
  result = sub_10000F374();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10000F2E4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10000F304();
  __break(1u);
  return result;
}

void *sub_100008F90()
{
  v1 = v0;
  sub_100006688(&unk_10002C550, &qword_10001CB90);
  v2 = *v0;
  v3 = sub_10000F214();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1000090EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100006688(&unk_10002C550, &qword_10001CB90);
  result = sub_10000F224();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10000F354();

      sub_10000F164();
      result = sub_10000F374();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t (*sub_100009324(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_10000F234();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1000093A4;
  }

  __break(1u);
  return result;
}

void sub_1000093AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000EF44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  if (!a2)
  {
    goto LABEL_6;
  }

  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    sub_10000EF34();
    v17 = sub_10000ED54();
    (*(v10 + 16))(v13, v15, v9);
    v18 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    (*(v10 + 32))(v19 + v18, v13, v9);
    v20 = v4;
    sub_100006688(&qword_10002C538, &qword_10001CB78);
    sub_10000EE64();

    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10000A318;
    *(v22 + 24) = v21;

    v23 = sub_10000EE04();
    sub_10000EE24();

    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;

    v25 = sub_10000EE04();
    sub_10000EE34();

    (*(v10 + 8))(v15, v9);
  }

  else
  {
LABEL_6:
    v26 = sub_10000ED54();
    v27 = swift_allocObject();
    *(v27 + 16) = v4;
    *(v27 + 24) = &off_100020B68;
    v28 = v4;
    sub_100006688(&qword_10002C518, &qword_10001CB50);
    sub_10000EE64();

    v29 = swift_allocObject();
    *(v29 + 16) = a3;
    *(v29 + 24) = a4;

    v30 = sub_10000EE04();
    sub_10000EE24();

    v31 = swift_allocObject();
    *(v31 + 16) = a3;
    *(v31 + 24) = a4;

    v34 = sub_10000EE04();
    sub_10000EE34();

    v32 = v34;
  }
}

uint64_t sub_100009820(unint64_t a1)
{
  v2 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!sub_10000F2C4())
  {
    return 0;
  }

LABEL_3:
  v3 = NSSNewsWidgetIntentsFollowingHeaderName();
  if (v3)
  {
    v4 = v3;
    sub_10000F154();
    v6 = v5;

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v2)
    {
LABEL_5:
      v8 = *(v7 + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  v8 = sub_10000F2C4();
LABEL_8:
  if (!v8)
  {
LABEL_15:
    if (v6)
    {
      v13 = sub_10000F144();
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_allocWithZone(INObjectSection);
    type metadata accessor for Tag();
    isa = sub_10000F184().super.isa;

    v16 = [v14 initWithTitle:v13 items:isa];

    return v16;
  }

  result = sub_10000F274();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_10000F234();
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      ++v10;
      sub_100007274();
      swift_unknownObjectRelease();
      sub_10000F254();
      v11 = _swiftEmptyArrayStorage[2];
      sub_10000F284();
      sub_10000F294();
      sub_10000F264();
    }

    while (v8 != v10);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100009A10(unint64_t a1)
{
  v2 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!sub_10000F2C4())
  {
    return 0;
  }

LABEL_3:
  if ([objc_opt_self() progressivePersonalization] == 2)
  {
    v3 = NSSNewsWidgetIntentsSuggestedBySiriHeaderName();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = 0;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v3 = NSSNewsWidgetIntentsSuggestedByNewsHeaderName();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_5:
  v4 = v3;
  sub_10000F154();
  v6 = v5;

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_6:
    v8 = *(v7 + 16);
    goto LABEL_10;
  }

LABEL_9:
  v8 = sub_10000F2C4();
LABEL_10:
  if (!v8)
  {
LABEL_17:
    if (v6)
    {
      v13 = sub_10000F144();
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_allocWithZone(INObjectSection);
    type metadata accessor for Tag();
    isa = sub_10000F184().super.isa;

    v16 = [v14 initWithTitle:v13 items:isa];

    return v16;
  }

  result = sub_10000F274();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_10000F234();
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      ++v10;
      sub_100007274();
      swift_unknownObjectRelease();
      sub_10000F254();
      v11 = _swiftEmptyArrayStorage[2];
      sub_10000F284();
      sub_10000F294();
      sub_10000F264();
    }

    while (v8 != v10);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100009C30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10000F1C4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100008A60(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_100009CC8()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedAccount];
  v3 = [v2 dynamicSupportedContentLanguage];

  if (v3 == 1)
  {
    if (qword_10002B950 != -1)
    {
      swift_once();
    }

    v4 = &qword_10002B958;
  }

  else
  {
    if (qword_10002B940 != -1)
    {
      swift_once();
    }

    v4 = &qword_10002B948;
  }

  v5 = *v4;
  v6 = objc_allocWithZone(type metadata accessor for TagIntent());
  v7 = v5;
  v8 = [v6 init];
  [v8 setTag:v7];

  sub_100006688(&qword_10002C500, &unk_10001CB40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10001CB10;
  v10 = [v8 description];
  v11 = sub_10000F154();
  v13 = v12;

  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10000A018();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_1000066E0(0, &qword_10002C510, OS_os_log_ptr);
  v14 = sub_10000F204();
  sub_10000F1D4();
  sub_10000EEC4();

  sub_10000F154();
  v15 = v8;
  v16 = sub_10000ED54();
  *(swift_allocObject() + 16) = v1;
  v17 = v1;
  sub_100006688(&qword_10002C518, &qword_10001CB50);
  sub_10000EE64();

  v18 = sub_10000EE04();
  sub_100006688(&qword_10002C520, &qword_10001CB58);
  sub_10000EE14();

  v19 = sub_100006688(&qword_10002C528, &qword_10001CB60);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_10000EEE4();
  v22 = sub_10000EED4();
  v23 = [v22 tag];

  return v23;
}

unint64_t sub_10000A018()
{
  result = qword_10002C508;
  if (!qword_10002C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C508);
  }

  return result;
}

uint64_t sub_10000A06C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A0C0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A100()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A15C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000A194(unint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = sub_100007B44(*a1, a1[1]);
  v3(v4, 0);
}

uint64_t sub_10000A1EC()
{
  v1 = sub_10000EF44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A2B0()
{
  v1 = *(*(sub_10000EF44() - 8) + 80);
  v2 = *(v0 + 16);
  return sub_100007D60();
}

uint64_t sub_10000A320(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_100006688(&qword_10002C538, &qword_10001CB78);
  return v4(a1, *(a1 + *(v5 + 48)));
}

uint64_t sub_10000A37C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t sub_10000A3AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006688(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A414(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006688(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006688(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

Swift::Int sub_10000A4F4()
{
  sub_10000F354();
  sub_10000F364(0);
  return sub_10000F374();
}

Swift::Int sub_10000A560()
{
  sub_10000F354();
  sub_10000F364(0);
  return sub_10000F374();
}

void sub_10000A5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_10000A738(a6);
  isa = sub_10000F184().super.isa;

  sub_10000AA74();
  v14 = sub_10000F1E4();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = sub_10000AA3C;
  v15[5] = v12;
  v17[4] = sub_10000AB00;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000A8E0;
  v17[3] = &unk_100020E18;
  v16 = _Block_copy(v17);

  [a5 fetchTagsForTagIDs:isa qualityOfService:25 callbackQueue:v14 completionHandler:v16];
  _Block_release(v16);
}

void *sub_10000A738(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_10000B558(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000B558((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_10000AB78(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10000A838(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(void))
{
  if (a1)
  {
    return a5();
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    sub_10000AB24();
    v7 = swift_allocError();
  }

  swift_errorRetain();
  a3(v7);

  return _swift_errorRelease(v7);
}

uint64_t sub_10000A8E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100006688(&qword_10002C5A0, &qword_10001CD50);
    v4 = sub_10000F134();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_10000A990()
{
  v5 = *v0;
  v1 = sub_100006688(&qword_10002C590, &unk_10001CBF0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_10000EE54();
}

uint64_t sub_10000AA04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AA3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

unint64_t sub_10000AA74()
{
  result = qword_10002C598;
  if (!qword_10002C598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002C598);
  }

  return result;
}

uint64_t sub_10000AAC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000AB24()
{
  result = qword_10002C5A8;
  if (!qword_10002C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5A8);
  }

  return result;
}

_OWORD *sub_10000AB78(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t _s6ErrorsOwet(unsigned int *a1, int a2)
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

_WORD *_s6ErrorsOwst(_WORD *result, int a2, int a3)
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

unint64_t sub_10000AC78()
{
  result = qword_10002C5B0;
  if (!qword_10002C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5B0);
  }

  return result;
}

uint64_t sub_10000ACF0(uint64_t result, void *a2)
{
  v2 = *result;
  v27 = *(result + 8);
  v3 = *(*result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    v6 = &_swiftEmptyArrayStorage;
    do
    {
      v28 = v6;
      v7 = (v5 + 16 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = *(v7 - 1);
        v9 = *v7;
        v4 = v8 + 1;

        v11 = sub_10000F144();
        v12 = [v11 fc_isValidTagID];

        if (v12)
        {
          break;
        }

        v7 += 2;
        ++v8;
        if (v3 == v4)
        {
          v6 = v28;
          goto LABEL_16;
        }
      }

      v13 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10000B578(0, v28[2] + 1, 1);
        v13 = v28;
      }

      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_10000B578((v14 > 1), v15 + 1, 1);
        v13 = v28;
      }

      v13[2] = v15 + 1;
      v16 = &v13[2 * v15];
      v16[4] = v10;
      v16[5] = v9;
      v5 = v2 + 40;
      v17 = v3 - 1 == v8;
      v6 = v13;
    }

    while (!v17);
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

LABEL_16:
  v18 = sub_100006688(&qword_10002C728, &qword_10001CD40);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  sub_10000EE44();
  v21 = a2[10];
  v22 = a2[11];
  sub_100006728(a2 + 7, v21);

  sub_10000B8A4(v23);
  (*(v22 + 8))(v6, v21, v22);

  v24 = sub_10000EE04();
  v25 = sub_10000EDF4();

  return v25;
}

uint64_t sub_10000AF40(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10000AFC8(a1, a3, a4);
  sub_10000AFC8(a2, a3, a4);
  v7 = sub_100006688(&qword_10002C720, &qword_10001CD38);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_10000EE44();
}

void *sub_10000AFC8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[2];
  if (v3)
  {
    v6 = 0;
    v7 = (result + 4);
    v8 = (a3 + 32);
    while (1)
    {
      v9 = v6;
      while (1)
      {
        if (v9 >= v3)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return result;
        }

        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_19;
        }

        if (*(a2 + 16))
        {
          break;
        }

LABEL_6:
        v9 = v6;
        if (v6 == v3)
        {
          return &_swiftEmptyArrayStorage;
        }
      }

      v10 = &v7[16 * v9];
      v11 = *v10;
      v12 = v10[1];

      v13 = sub_10000BA38(v11, v12);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = *(*(a2 + 56) + 8 * v13);
      v16 = [swift_unknownObjectRetain() tagType];
      v17 = *(a3 + 16);
      v18 = v8;
      do
      {
        if (!v17)
        {
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

        v19 = *v18++;
        --v17;
      }

      while (v19 != v16);

      sub_10000F174();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10000F1A4();
      }

      result = sub_10000F1B4();
      if (v6 == v3)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

LABEL_5:

    goto LABEL_6;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10000B140()
{
  sub_100006824((v0 + 16));
  sub_100006824((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_10000B1A4(uint64_t a1)
{
  v3 = *v1;
  sub_100006688(&qword_10002C708, &unk_10001CD18);
  sub_10000EE74();

  v4 = sub_10000EE04();
  sub_100006688(&unk_10002C710, &unk_10001CD28);
  sub_10000EE14();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10000B3D0;
  *(v6 + 24) = v5;

  v7 = sub_10000EE04();
  sub_100006688(&qword_10002C518, &qword_10001CB50);
  v8 = sub_10000EE14();

  return v8;
}

uint64_t sub_10000B320()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100006728(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_10000B398()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B3D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B410(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

char *sub_10000B44C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006688(&unk_10002C730, &qword_10001CD48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000B558(char *a1, int64_t a2, char a3)
{
  result = sub_10000B598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000B578(char *a1, int64_t a2, char a3)
{
  result = sub_10000B6A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000B598(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006688(qword_10002C750, &unk_10001CD60);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10000B6A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006688(&unk_10002C730, &qword_10001CD48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000B7B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10000F2C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_10000F2C4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10000B998(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10000BB6C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10000B8A4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000B44C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000B998(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_10000F2C4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_10000F244();
  *v1 = result;
  return result;
}

unint64_t sub_10000BA38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000F354();
  sub_10000F164();
  v6 = sub_10000F374();

  return sub_10000BAB0(a1, a2, v6);
}

unint64_t sub_10000BAB0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000F2E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000BB6C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10000F2C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10000F2C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000BCF8();
          for (i = 0; i != v6; ++i)
          {
            sub_100006688(&qword_10002C740, &qword_10001CD58);
            v9 = sub_100009324(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006688(&qword_10002C5A0, &qword_10001CD50);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10000BCF8()
{
  result = qword_10002C748;
  if (!qword_10002C748)
  {
    sub_10000BD5C(&qword_10002C740, &qword_10001CD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C748);
  }

  return result;
}

uint64_t sub_10000BD5C(uint64_t *a1, uint64_t *a2)
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

id sub_10000BDA4()
{
  type metadata accessor for Tag();
  v1 = [v0 identifier];
  sub_10000F154();

  sub_10000BF78();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_10000F144();

  v4 = sub_10000F144();

  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  v6 = [v0 groupTitleColor];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 hex];

    if (!v8)
    {
      sub_10000F154();
      v8 = sub_10000F144();
    }
  }

  else
  {
    v8 = 0;
  }

  [v5 setNameColorLight:v8];

  v9 = [v0 groupDarkStyleTitleColor];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 hex];

    if (!v11)
    {
      sub_10000F154();
      v11 = sub_10000F144();
    }
  }

  else
  {
    v11 = 0;
  }

  [v5 setNameColorDark:v11];

  return v5;
}

uint64_t sub_10000BF78()
{
  v1 = [v0 nameCompact];
  if (!v1)
  {
    v1 = [v0 name];
  }

  v2 = v1;
  v3 = sub_10000F154();

  return v3;
}

void sub_10000BFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10000C464;
  *(v9 + 24) = v8;
  v11[4] = sub_10000C49C;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000C358;
  v11[3] = &unk_100020F90;
  v10 = _Block_copy(v11);

  [a5 peekWithAccessor:v10];
  _Block_release(v10);
}

void sub_10000C0FC(void *a1, void (*a2)(void *, void *), uint64_t a3)
{
  v6 = [a1 autoFavoriteTagIDs];
  if (v6)
  {
    v7 = v6;
    v28 = sub_10000F194();
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  isUniquelyReferenced_nonNull_native = [a1 rankedAllSubscribedTagIDs];
  v25 = a3;
  v26 = a2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = isUniquelyReferenced_nonNull_native;
    v10 = sub_10000F194();

    v11 = v10[2];
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_19:
    v27 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v10 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage[2];
  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_6:
  v12 = 0;
  v13 = v10 + 5;
  v23 = v11 - 1;
  v27 = _swiftEmptyArrayStorage;
  v24 = v10 + 5;
  do
  {
    v14 = &v13[2 * v12];
    v15 = v12;
    while (1)
    {
      if (v15 >= v10[2])
      {
        __break(1u);
        return;
      }

      v16 = *(v14 - 1);
      v17 = *v14;
      v12 = v15 + 1;
      v29[0] = v16;
      v29[1] = v17;
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      v22[2] = v29;

      if ((sub_10000C4BC(sub_10000C568, v22, v28) & 1) == 0)
      {
        break;
      }

      v14 += 2;
      ++v15;
      if (v11 == v12)
      {
        goto LABEL_20;
      }
    }

    v18 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_10000B578(0, v18[2] + 1, 1);
      v18 = v30;
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10000B578((v19 > 1), v20 + 1, 1);
      v18 = v30;
    }

    v18[2] = v20 + 1;
    v27 = v18;
    v21 = &v18[2 * v20];
    v21[4] = v16;
    v21[5] = v17;
    v13 = v24;
  }

  while (v23 != v15);
LABEL_20:

  v26(v27, v28);
}

uint64_t sub_10000C358(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000C3B8()
{
  v5 = *v0;
  v1 = sub_100006688(&qword_10002C728, &qword_10001CD40);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_10000EE54();
}

uint64_t sub_10000C42C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C464(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_10000C4A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C4BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10000C568(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000F2E4() & 1;
  }
}

uint64_t sub_10000C5C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10000C608(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000C614(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000C65C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *TagIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id TagIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id TagIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TagIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10000F144();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id TagIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_10000F144();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for TagIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id TagIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000F144();

  v8 = sub_10000F144();

  if (a5)
  {
    v9.super.isa = sub_10000F124().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id TagIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000F144();

  v8 = sub_10000F144();

  if (a5)
  {
    v9.super.isa = sub_10000F124().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for TagIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_10000CD30()
{
  v1 = *v0;
  sub_10000F354();
  sub_10000F364(v1);
  return sub_10000F374();
}

Swift::Int sub_10000CDA4()
{
  v1 = *v0;
  sub_10000F354();
  sub_10000F364(v1);
  return sub_10000F374();
}

unint64_t sub_10000CDE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10000D4D8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TagIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *TagIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id TagIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TagIntentResponse.init()()
{
  *&v0[OBJC_IVAR___TagIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id Tag.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id TagIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___TagIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TagIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id TagIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___TagIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10000D284(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___TagIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for TagIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id TagIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_10000F124().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id TagIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___TagIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_10000F124().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_10000D4A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10000D4D8(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10000D510()
{
  result = qword_10002C7E8;
  if (!qword_10002C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7E8);
  }

  return result;
}

uint64_t sub_10000D564@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TagIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10000D5BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TagIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

char *TodayIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id TodayIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id TodayIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TodayIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_10000F144();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for TodayIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id TodayIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000F144();

  v8 = sub_10000F144();

  if (a5)
  {
    v9.super.isa = sub_10000F124().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for TodayIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

uint64_t TodayIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *TodayIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id TodayIntentResponse.init()()
{
  *&v0[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id TodayIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TodayIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10000DEB8(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for TodayIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id TodayIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_10000F124().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_10000E050(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10000E0B0()
{
  result = qword_10002C848;
  if (!qword_10002C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C848);
  }

  return result;
}

uint64_t sub_10000E104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TodayIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10000E15C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TodayIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id Tag.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_10000F144();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10000F144();

  if (a6)
  {
    v10 = sub_10000F144();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id Tag.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_10000F144();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10000F144();

  if (a6)
  {
    v10 = sub_10000F144();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for Tag();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id Tag.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Tag();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static TagResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TagResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static TagResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10000E6E0();

    sub_10000F2B4();
  }

  else
  {

    sub_10000F2F4();
    sub_10000E6E0();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10000E6E0();
  isa = sub_10000F184().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___TagResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_10000E6E0()
{
  result = qword_10002C8C8;
  if (!qword_10002C8C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002C8C8);
  }

  return result;
}

id static TagResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TagResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id TagResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_10000F124().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id TagResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_10000F124().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TagResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_10000EC6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}