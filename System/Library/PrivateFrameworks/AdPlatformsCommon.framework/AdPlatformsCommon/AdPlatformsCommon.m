uint64_t sub_1BAFC57E4()
{
  qword_1EDD51990 = objc_alloc_init(APControllerRequesterCoordinator);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BAFC58FC(uint64_t a1)
{
  v2 = sub_1BB014278();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_1BB014258();

  v9(v7);

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_1BAFC59F8()
{
  sub_1BB014DA8();
  sub_1BAFC5BB4(0, &qword_1EDD4FFC0, 0x1E69E9BF8);
  v0 = sub_1BB014E68();
  sub_1BAFD86D0(&qword_1EBC3B098, &qword_1BB018850);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BB0187E0;
  v2 = sub_1BB014268();
  *(v1 + 56) = sub_1BAFC5BB4(0, &qword_1EDD4E168, 0x1E696AEC0);
  *(v1 + 64) = sub_1BAFC5BFC();
  *(v1 + 32) = v2;
  sub_1BB0148B8();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 32);

      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BAFC5BB4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1BAFC5BFC()
{
  result = qword_1EDD4E160;
  if (!qword_1EDD4E160)
  {
    sub_1BAFC5BB4(255, &qword_1EDD4E168, 0x1E696AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4E160);
  }

  return result;
}

Swift::Void __swiftcall RotatingIdentifierProvider.notificationReceived()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___APRotatingIdentifierProvider_lock);
  sub_1BB014438();
  sub_1BB014DA8();
  sub_1BAFC5D64();
  v3 = sub_1BB014E68();
  sub_1BB0148B8();

  v4 = OBJC_IVAR___APRotatingIdentifierProvider_identiferCache;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = MEMORY[0x1E69E7CC8];

  sub_1BB014448();
}

unint64_t sub_1BAFC5D64()
{
  result = qword_1EDD4FFC0;
  if (!qword_1EDD4FFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD4FFC0);
  }

  return result;
}

void sub_1BAFC5DB0()
{
  if (!qword_1EDD50638)
  {
    sub_1BB0145F8();
    v0 = sub_1BB014E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD50638);
    }
  }
}

void sub_1BAFC5E08(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1BAFD9DF0(a3, a4);
    v5 = sub_1BB014E98();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for ClientEvent()
{
  result = qword_1EDD50628;
  if (!qword_1EDD50628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAFC5EEC()
{
  sub_1BAFC5DB0();
  if (v0 <= 0x3F)
  {
    sub_1BAFC5E08(319, qword_1EDD50660, &unk_1EBC3BA68, &qword_1BB01D450);
    if (v1 <= 0x3F)
    {
      sub_1BAFC5E08(319, &unk_1EDD50640, &unk_1EBC3BA78, &qword_1BB01D458);
      if (v2 <= 0x3F)
      {
        sub_1BAFC5E08(319, &unk_1EDD50650, &unk_1EBC3BA88, &qword_1BB01D460);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t JourneyOrderVendor.init(clock:)(uint64_t a1)
{
  type metadata accessor for IncrementingTimeFrame();
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  v3 = swift_allocObject();
  *(v3 + 16) = 0x2540BE3FFLL;
  *(v1 + 104) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 112) = v4;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1BAFC6108(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BB014398();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BB0149A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v67 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v67 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v67 - v27;
  if (a1 > 1409)
  {
    if (a1 > 1999)
    {
      if ((a1 - 2000) < 5)
      {
        goto LABEL_20;
      }

      goto LABEL_52;
    }

    if ((a1 - 1600) < 0xA)
    {
      goto LABEL_36;
    }

    if ((a1 - 1410) < 2)
    {
      goto LABEL_20;
    }

    if (a1 != 1412)
    {
      goto LABEL_52;
    }

LABEL_40:
    sub_1BAFC7608(&v70);
    if (!v71)
    {
      sub_1BAFF42A8(&v68);
      if (v69)
      {
        sub_1BAFC6D0C(&v68, v72);
      }

      else
      {
        sub_1BAFC77FC(v72);
        if (v69)
        {
          sub_1BAFC7274(&v68);
        }
      }

      goto LABEL_38;
    }

    goto LABEL_41;
  }

  if (a1 > 1400)
  {
    if (a1 <= 1404)
    {
      if (a1 <= 1402)
      {
        if (a1 == 1401)
        {
          sub_1BAFF42A8(&v70);
          if (!v71)
          {
            goto LABEL_37;
          }

          goto LABEL_41;
        }

LABEL_36:
        sub_1BAFC7608(&v70);
        if (!v71)
        {
LABEL_37:
          sub_1BAFC77FC(v72);
LABEL_38:
          if (v71)
          {
            sub_1BAFC7274(&v70);
          }

          goto LABEL_42;
        }

LABEL_41:
        sub_1BAFC6D0C(&v70, v72);
LABEL_42:
        v45 = v73;
        v46 = v74;
        v47 = sub_1BAFC6AB4(v72, v73);
        v48 = sub_1BAFC72DC(v47, v45, v46);
LABEL_43:
        v33 = v48;
        sub_1BAFC6A68(v72);
        return v33;
      }

      if (a1 != 1403)
      {
        goto LABEL_36;
      }
    }

    else if ((a1 - 1405) >= 3)
    {
      if (a1 == 1408)
      {
        goto LABEL_36;
      }

      if (a1 == 1409)
      {
        sub_1BAFC7608(&v70);
        if (v71)
        {
          sub_1BAFC6D0C(&v70, v72);
        }

        else
        {
          sub_1BAFC77FC(v72);
          if (v71)
          {
            sub_1BAFC7274(&v70);
          }
        }

        v65 = v73;
        v66 = v74;
        sub_1BAFC6AB4(v72, v73);
        v48 = (v66[2])(v65, v66);
        goto LABEL_43;
      }

LABEL_52:
      v61 = v26;
      sub_1BB014978();
      v62 = sub_1BB014988();
      v63 = sub_1BB014DB8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 134349056;
        *(v64 + 4) = a1;
        _os_log_impl(&dword_1BAFC4000, v62, v63, "Journey order: unknown metric %{public}ld", v64, 0xCu);
        MEMORY[0x1BFB07C70](v64, -1, -1);
      }

      (*(v11 + 8))(v16, v61);
      return -1;
    }

    goto LABEL_40;
  }

  if (a1 > 1003)
  {
    if ((a1 - 1200) >= 4)
    {
      v33 = 0;
      if (a1 == 1004)
      {
        return v33;
      }

      if (a1 != 1400)
      {
        goto LABEL_52;
      }

      v34 = v26;
      sub_1BB014978();
      v35 = sub_1BB014988();
      v36 = sub_1BB014DA8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1BAFC4000, v35, v36, "Journey order: creating created time frame", v37, 2u);
        MEMORY[0x1BFB07C70](v37, -1, -1);
      }

      (*(v11 + 8))(v24, v34);
      v38 = *(v2 + 16);
      v39 = [v38 now];
      sub_1BB014358();

      v40 = type metadata accessor for RelativeTimeFrame();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      v43 = swift_allocObject();
      *(v43 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder) = 0;
      (*(v5 + 32))(v43 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_referenceTime, v9, v4);
      *(v43 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_clock) = v38;
      v73 = v40;
      v74 = &off_1F390D4B8;
      v72[0] = v43;
      swift_beginAccess();
      swift_unknownObjectRetain();
      v44 = v2 + 64;
      goto LABEL_50;
    }

    goto LABEL_36;
  }

  if (a1 <= 1001)
  {
    if (a1 != 1000)
    {
      if (a1 != 1001)
      {
        goto LABEL_52;
      }

LABEL_20:
      v29 = v26;
      sub_1BB014978();
      v30 = sub_1BB014988();
      v31 = sub_1BB014DB8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134349056;
        *(v32 + 4) = a1;
        _os_log_impl(&dword_1BAFC4000, v30, v31, "Journey order: unsupported metric %{public}ld", v32, 0xCu);
        MEMORY[0x1BFB07C70](v32, -1, -1);
      }

      (*(v11 + 8))(v20, v29);
      return -1;
    }

    v50 = v26;
    sub_1BB014978();
    v51 = sub_1BB014988();
    v52 = sub_1BB014DA8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1BAFC4000, v51, v52, "Journey order: creating received time frame", v53, 2u);
      MEMORY[0x1BFB07C70](v53, -1, -1);
    }

    (*(v11 + 8))(v28, v50);
    v54 = *(v2 + 16);
    v55 = [v54 now];
    sub_1BB014358();

    v56 = type metadata accessor for RelativeTimeFrame();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    v59 = swift_allocObject();
    *(v59 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder) = 0;
    (*(v5 + 32))(v59 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_referenceTime, v9, v4);
    *(v59 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_clock) = v54;
    v73 = v56;
    v74 = &off_1F390D4B8;
    v72[0] = v59;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v44 = v2 + 24;
LABEL_50:
    sub_1BAFC69EC(v72, v44);
    swift_endAccess();
    return 0;
  }

  if (a1 != 1002)
  {
    goto LABEL_20;
  }

  v60 = *(v2 + 104);
  return sub_1BAFC73D4();
}

uint64_t type metadata accessor for RelativeTimeFrame()
{
  result = qword_1EDD50440;
  if (!qword_1EDD50440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAFC6944()
{
  result = sub_1BB014398();
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

uint64_t sub_1BAFC69EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B570, &qword_1BB01A850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFC6A68(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1BAFC6AB4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BAFC6B68(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3 + 16;
  v9 = *(*v3 + 80);
  v10 = *(*v3 + 88);
  v11 = type metadata accessor for StoredFeatureFlag();
  sub_1BAFC6DB4(a1, &v21);
  v12 = type metadata accessor for KeyValueFFIFSource();
  v13 = swift_allocObject();
  sub_1BAFC6D0C(&v21, v13 + 16);
  sub_1BAFC6DB4(a2, &v21);
  v14 = type metadata accessor for FFIFFeatureAbilitySource();
  v15 = swift_allocObject();
  v15[5] = v12;
  v15[6] = &protocol witness table for KeyValueFFIFSource;
  v15[2] = v13;
  sub_1BAFC6D0C(&v21, (v15 + 7));
  v16 = type metadata accessor for OverrideFeatureAbilitySource();
  v17 = swift_allocObject();
  v17[5] = v14;
  v17[6] = &protocol witness table for FFIFFeatureAbilitySource;
  v17[2] = v15;
  v22 = v16;
  WitnessTable = &protocol witness table for OverrideFeatureAbilitySource;
  *&v21 = v17;
  sub_1BAFC6DB4(a3, v20);
  v18 = StoredFeatureFlag.__allocating_init(source:fallback:)(&v21, v20);
  v22 = v11;
  WitnessTable = swift_getWitnessTable();
  *&v21 = v18;
  sub_1BAFC6A68(a2);
  sub_1BAFC6A68(a1);
  sub_1BAFC6D0C(&v21, v8);
  return v4;
}

uint64_t sub_1BAFC6D0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t FeatureFlagOverride.init(overrideStorage:cohortCandidateStorage:fallback:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BAFC6B68(a1, a2, a3);
  sub_1BAFC6A68(a3);
  return v4;
}

uint64_t sub_1BAFC6DB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t StoredFeatureFlag.__allocating_init(source:fallback:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BAFC6D0C(a1, v4 + 16);
  sub_1BAFC6D0C(a2, v4 + 56);
  return v4;
}

double sub_1BAFC6EE0()
{
  type metadata accessor for BugFindingFeatureFlag();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  off_1EDD500D8 = v0;
  return result;
}

uint64_t static LegacyFeatureFlags.setLegacyFeatureFlags(_:)(uint64_t a1)
{
  if (qword_1EDD500D0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = off_1EDD500D8;
  sub_1BAFC6DB4(a1, &v7);
  swift_beginAccess();
  v2 = *(&v8 + 1);
  if (!*(v1 + 5))
  {
    if (*(&v8 + 1))
    {
      goto LABEL_5;
    }

LABEL_7:
    v3 = v9;
    v4 = v8;
    *(v1 + 1) = v7;
    *(v1 + 2) = v4;
    *(v1 + 6) = v3;
    return swift_endAccess();
  }

  sub_1BAFC6A68(v1 + 2);
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1BAFC6D0C(&v7, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_1BAFC7048(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1BAFC7068(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PolicyRule(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

void sub_1BAFC7214(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1BAFC7274(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B570, &qword_1BB01A850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAFC72DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = (*(a3 + 8))(a2, a3);
  (*(v5 + 8))(v8, a2);
  return v9;
}

uint64_t sub_1BAFC73D4()
{
  v0 = sub_1BB0149A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BAFC7964();
  sub_1BB014978();
  v7 = sub_1BB014988();
  v8 = sub_1BB014DA8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v6;
    _os_log_impl(&dword_1BAFC4000, v7, v8, "Journey order: incrementing next: %ld", v9, 0xCu);
    MEMORY[0x1BFB07C70](v9, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  return v6;
}

void sub_1BAFC7558(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for APMetricPurposeType(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BAFC7608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BB0149A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  swift_beginAccess();
  sub_1BAFC778C(v2 + 24, v16);
  v10 = v17;
  sub_1BAFC7274(v16);
  if (v10)
  {
    sub_1BB014978();
    v11 = sub_1BB014988();
    v12 = sub_1BB014DA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BAFC4000, v11, v12, "Journey order: using received time frame", v13, 2u);
      MEMORY[0x1BFB07C70](v13, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }

  return sub_1BAFC778C(v2 + 24, a1);
}

uint64_t sub_1BAFC778C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B570, &qword_1BB01A850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFC77FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BB0149A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB014978();
  v10 = sub_1BB014988();
  v11 = sub_1BB014DA8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BAFC4000, v10, v11, "Journey order: using fallback time frame", v12, 2u);
    MEMORY[0x1BFB07C70](v12, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v13 = *(v2 + 112);
  a1[3] = type metadata accessor for IncrementingTimeFrame();
  a1[4] = &off_1F390D4A0;
  *a1 = v13;
}

uint64_t sub_1BAFC7964()
{
  v1 = v0;
  v2 = sub_1BB0149A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v22 - v11;
  v13 = *(v1 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v15;
    if (v15 < 0)
    {
      sub_1BB014978();

      v16 = sub_1BB014988();
      v17 = sub_1BB014DB8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134349056;
        *(v18 + 4) = *(v1 + 16);

        _os_log_impl(&dword_1BAFC4000, v16, v17, "Journey order: IncrementingTimeFrame lastOrder < 0; %{public}ld", v18, 0xCu);
        MEMORY[0x1BFB07C70](v18, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v12, v2);
    }

    sub_1BB014978();

    v19 = sub_1BB014988();
    v20 = sub_1BB014DA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = *(v1 + 16);

      _os_log_impl(&dword_1BAFC4000, v19, v20, "Journey order: incrementing neighboring: %ld", v21, 0xCu);
      MEMORY[0x1BFB07C70](v21, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v8, v2);
    return *(v1 + 16);
  }

  return result;
}

uint64_t sub_1BAFC7C18()
{
  qword_1EDD51880 = objc_alloc_init(APRequestCoordinator);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t FeatureFlagOverride.isEnabled(for:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  sub_1BAFC6AB4(v1 + 2, v3);
  return (*(v4 + 24))(a1, v3, v4) & 1;
}

uint64_t sub_1BAFC7D78()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = v0[6];
  sub_1BAFC6AB4(v0 + 2, v2);
  (*(*(v1 + 88) + 8))(v6, *(v1 + 80));
  v4 = (*(v3 + 8))(v6[0], v6[1], v2, v3);

  return v4;
}

uint64_t AdFeature.definition.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v3 = 0x30506163646FLL;
    result = 0;
    v10 = v2 == 1;
    if (v2 != 1)
    {
      v3 = 0x31506163646FLL;
    }

    v7 = v2 == 0;
    v8 = !v7 && v10;
    if (v7)
    {
      v3 = 0xD000000000000011;
      v4 = 0x80000001BB0217D0;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    v3 = 0x3356706C73;
    v4 = 0xE700000000000000;
    if (v2 == 5)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v3 = 0x4B41417377656ELL;
    }

    v5 = 0x317530506163646FLL;
    v6 = 0x80000001BB0204F0;
    if (v2 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    v7 = 0;
    v8 = 0;
    if (*v1 <= 4u)
    {
      v3 = v5;
      v4 = v6;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 17) = v8;
  *(a1 + 18) = v7;
  return result;
}

uint64_t sub_1BAFC7F84(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  sub_1BAFC6AB4((*v2 + 16), v5);
  MEMORY[0x1BFB06D20](a1, a2);
  v7 = (*(v6 + 8))(0x656469727265766FLL, 0xE90000000000005FLL, v5, v6);

  return v7;
}

uint64_t FFIFFeatureAbilitySource.abilityFor(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v3[5];
  v7 = v3[6];
  sub_1BAFC6AB4(v3 + 2, v6);
  (*(v7 + 8))(&v16, a1, a2, v6, v7);
  v8 = v18;
  if (v18 == 255)
  {
    return 2;
  }

  v9 = v16;
  if (v18)
  {

    return sub_1BAFD7D18();
  }

  v11 = v17;
  v12 = 0x64656C6261736964;
  v13 = 0xE800000000000000;
  if (v16 == 0x64656C6261736964 && v17 == 0xE800000000000000)
  {
LABEL_13:
    sub_1BAFD83F0(v12, v13, v8);
    return 0;
  }

  if (sub_1BB015118())
  {
    v12 = v9;
    v13 = v11;
    goto LABEL_13;
  }

  if (v9 == 0x64656C62616E65 && v11 == 0xE700000000000000)
  {
    sub_1BAFD83F0(0x64656C62616E65, 0xE700000000000000, v8);
    return 1;
  }

  else
  {
    v15 = sub_1BB015118();
    sub_1BAFD83F0(v9, v11, v8);
    if (v15)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BAFC81E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  sub_1BAFC6AB4((*v1 + 16), *(*v1 + 40));
  result = sub_1BB014548();
  v7 = v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v9 = v3[6];
    sub_1BAFC6AB4(v3 + 2, v3[5]);
    result = sub_1BB014538();
    if (v10)
    {
      result = 0;
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1BAFC82A4()
{
  v1 = v0[6];
  v2 = *v0;
  sub_1BAFC6AB4(v0 + 2, v0[5]);
  if (sub_1BB014608())
  {
    (*(*(v2 + 88) + 8))(&v5, *(v2 + 80));
    v3 = v7;
  }

  else
  {
    (*(*(v2 + 88) + 8))(&v5, *(v2 + 80));
    v3 = v6;
  }

  return v3;
}

uint64_t DefaultFeatureFlag.isEnabled(for:)()
{
  v0 = sub_1BAFC82A4() & 1;

  return MEMORY[0x1EEDE9258](v0);
}

uint64_t StoredFeatureFlag.isEnabled(for:)(uint64_t a1)
{
  v3 = sub_1BAFC7D78();
  if (v3 == 2)
  {
    v4 = v1[10];
    v5 = v1[11];
    sub_1BAFC6AB4(v1 + 7, v4);
    return (*(v5 + 24))(a1, v4, v5) & 1;
  }

  else
  {
    v7 = v3 & 1;

    return MEMORY[0x1EEDE9258](v7);
  }
}

void *sub_1BAFC8638@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BAFC8668()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAFC86A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BAFC86F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BAFC8928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BAFC89D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BB014398();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BAFC8A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BAFC8B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BB014398();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BAFC8BC8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAFC8C00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAFC8C40()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAFC8C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BAFC8DC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BAFC8EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BAFC9008(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BAFC9148@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBC3B4C0;
  return result;
}

uint64_t sub_1BAFC9194(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBC3B4C0 = v1;
  return result;
}

uint64_t sub_1BAFC9238()
{
  v1 = sub_1BB014398();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

uint64_t sub_1BAFC9484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1BAFD86D0(&qword_1EBC3B5C0, &unk_1BB01ACF8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BAFC9580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1BAFD86D0(&qword_1EBC3B5C0, &unk_1BB01ACF8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BAFC9688()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BAFC96D8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1BAFC971C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAFC975C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_1BAFC97A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 120) = v2;
  return result;
}

uint64_t sub_1BAFC97E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BAFC990C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BAFC9A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BAFC9B54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BAFC9C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BAFC9D9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BAFC9EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BAFC9FE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BAFCA108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BAFCA22C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BAFCA350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BAFCA474(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BAFCA598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BAFCA6BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BAFCA7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BAFCA904(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BB014398();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BB0143E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BAFCAA28(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1BAFD86D0(&qword_1EBC3BA40, &qword_1BB01D3A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1BAFD86D0(&qword_1EBC3BA48, &qword_1BB01D3A8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = sub_1BAFD86D0(&qword_1EBC3BA50, &unk_1BB01D3B0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_1BAFD86D0(&unk_1EBC3BA58, &qword_1BB01D3C0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1BAFCAC0C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_1BAFD86D0(&qword_1EBC3BA40, &qword_1BB01D3A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1BAFD86D0(&qword_1EBC3BA48, &qword_1BB01D3A8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = sub_1BAFD86D0(&qword_1EBC3BA50, &unk_1BB01D3B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = sub_1BAFD86D0(&unk_1EBC3BA58, &qword_1BB01D3C0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BAFCADF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1BAFCAE40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

void sub_1BAFCE720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAFCE738(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAFCE750(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v12 = objc_msgSend_identifier(v5, v6, v7, v8, v9, v10, v11);
  *a3 = objc_msgSend_isEqual_(v12, v13, *(a1 + 32), v14, v15, v16, v17);

  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v5;
}

uint64_t sub_1BAFCEEA0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1BAFCF304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAFCF324(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAFCF33C(double a1, double a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a4, @"Received error from proxyURL. %@", a6, a7, a1, a2, a4);
  APSimulateCrash();
}

void sub_1BAFCF5DC(double a1, double a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a4, @"Received error from proxyURL. %@", a6, a7, a1, a2, a4);
  APSimulateCrash();
}

void sub_1BAFCFD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAFCFDC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_handleCompletionOfRequest_(WeakRetained, v2, *(a1 + 32), v3, v4, v5, v6);
}

void sub_1BAFCFF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAFCFFA8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend_handleCompletionOfRequest_(WeakRetained, v3, *(a1 + 32), v4, v5, v6, v7);
}

void sub_1BAFD3558()
{
  v0 = qword_1EDD509F8;
  qword_1EDD509F8 = @"adprivacyd";
}

void sub_1BAFD35B4()
{
  v0 = qword_1EDD509E8;
  qword_1EDD509E8 = @"1";
}

void sub_1BAFD3858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BAFD3884(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_BOOLValue(a2, v5, v6, v7, v8, v10, v11);
  }

  else
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v16 = 138412546;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v9;
      v14 = v17;
      _os_log_impl(&dword_1BAFC4000, v12, OS_LOG_TYPE_DEFAULT, "%@: Unable to get the 'disablePromotedContentDaemonSubsequentAdsFetch' value from the bag. Error: %{public}@", &v16, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1BAFD3A68(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = v6;
  if (!a2 || v6)
  {
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      v20 = 138412546;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = v13;
      v18 = v21;
      _os_log_impl(&dword_1BAFC4000, v16, OS_LOG_TYPE_DEFAULT, "%@: Unable to get the 'disablePromotedContentDaemonSubsequentAdsFetch' value from the bag. Error: %{public}@", &v20, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v14 = objc_msgSend_BOOLValue(a2, v7, v8, v9, v10, v11, v12);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v14, v13, v15);

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1BAFD3C58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a4;
  if (a2)
  {
    objc_msgSend_BOOLValue(a2, v6, v7, v8, v9, v10, v11);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1BAFD49FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAFD4A1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAFD4A34(double a1, double a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a4, @"Received error from proxyURL. %@", a6, a7, a1, a2, a4);
  APSimulateCrash();
}

void sub_1BAFD4C94(double a1, double a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a4, @"Received error during prewarming. %@", a6, a7, a1, a2, a4);
  APSimulateCrash();
}

void sub_1BAFD4F58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  _Block_object_dispose((v2 - 128), 8);
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1BAFD4F8C(uint64_t a1, const char *a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = ++*(*(*(a1 + 40) + 8) + 24);
  if (v8 >= 2)
  {
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Received unexpected N: %ld responses from XPC.", a6, a7, a3, a4, v8);
    CreateDiagnosticReport();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend__removeBox_(WeakRetained, v11, *(a1 + 32), v12, v13, v14, v15);

  v22 = objc_msgSend_completionHandler(*(a1 + 32), v16, v17, v18, v19, v20, v21);
  v22[2](v22, 0);
}

void sub_1BAFD5200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAFD5228(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__removeBox_(WeakRetained, v8, *(a1 + 32), v9, v10, v11, v12);

  v19 = objc_msgSend_completionHandler(*(a1 + 32), v13, v14, v15, v16, v17, v18);
  v19[2](v19, v6, v5);
}

void sub_1BAFD5420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAFD5444(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__removeBox_(WeakRetained, v5, *(a1 + 32), v6, v7, v8, v9);

  v16 = objc_msgSend_completionHandler(*(a1 + 32), v10, v11, v12, v13, v14, v15);
  v16[2](v16, v3);
}

void sub_1BAFD6EC8(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = APLogForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v5;
      v9 = "Received error from signatureForData. %{public}@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1BAFC4000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    v9 = "Received response from signatureForData.";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BAFD7104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAFD711C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAFD7134(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_1BAFC4000, v3, OS_LOG_TYPE_ERROR, "Received error from signatureForData. %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1BAFD71E4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1BAFC4000, v7, OS_LOG_TYPE_ERROR, "Received error from signatureForData. %{public}@", &v11, 0xCu);
    }
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1BAFD739C(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = APLogForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v5;
      v9 = "Received error from signatureForData. %{public}@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1BAFC4000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    v9 = "Received response from signatureForData.";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t *FFIFFeatureAbilitySource.__allocating_init(ffifSource:candidateSource:)(uint64_t *a1, __int128 *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_1BAFD7BD4(a1, v5);
  v8 = sub_1BAFD82F4(v7, a2, v2, v5, v6);
  sub_1BAFC6A68(a1);
  return v8;
}

uint64_t sub_1BAFD7BD4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *FFIFFeatureAbilitySource.init(ffifSource:candidateSource:)(uint64_t *a1, __int128 *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_1BAFD7BD4(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_1BAFD8274(v10, a2, v2, v5, v6);
  sub_1BAFC6A68(a1);
  return v12;
}

uint64_t sub_1BAFD7D18()
{
  v1 = sub_1BB014558();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BB0146B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BAFD86D0(&qword_1EBC3AFC8, &unk_1BB018700);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v25 - v20;
  sub_1BB0146C8();
  sub_1BAFD8718(v21, v18);
  if ((*(v8 + 48))(v18, 1, v7) == 1)
  {
    sub_1BAFD8788(v21);
    return 2;
  }

  else
  {
    (*(v8 + 32))(v12, v18, v7);
    v23 = v0[11];
    sub_1BAFC6AB4(v0 + 7, v0[10]);
    sub_1BB014618();
    v24 = sub_1BB0146A8();
    (*(v2 + 8))(v6, v1);
    (*(v8 + 8))(v12, v7);
    sub_1BAFD8788(v21);
    return v24 & 1;
  }
}

uint64_t FFIFFeatureAbilitySource.deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));
  return v0;
}

uint64_t FFIFFeatureAbilitySource.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFD800C()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

uint64_t sub_1BAFD8080()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

BOOL sub_1BAFD8100(void *a1, uint64_t *a2)
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

void *sub_1BAFD8130@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1BAFD815C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1BAFD8234@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1BAFD8698(a1);

  *a2 = v3;
  return result;
}

uint64_t *sub_1BAFD8274(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  v9 = sub_1BAFD87F0(a3 + 2);
  (*(*(a4 - 8) + 32))(v9, a1, a4);
  sub_1BAFC6D0C(a2, (a3 + 7));
  return a3;
}

uint64_t *sub_1BAFD82F4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  return sub_1BAFD8274(v12, a2, v13, a4, a5);
}

uint64_t sub_1BAFD83F0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BAFD8408(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BAFD8408(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1BAFD848C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAFD84AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1BAFD8578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAFD8698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1BAFD86D0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1BAFD8718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3AFC8, &unk_1BB018700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFD8788(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3AFC8, &unk_1BB018700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1BAFD87F0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t KeyValueFFIFSource.__allocating_init(keyValueSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BAFC6D0C(a1, v2 + 16);
  return v2;
}

uint64_t KeyValueFFIFSource.ffifFor(name:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[6];
  sub_1BAFC6AB4(v1 + 2, v1[5]);
  result = sub_1BB014548();
  v6 = v5;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v8 = v1[6];
    sub_1BAFC6AB4(v1 + 2, v1[5]);
    result = sub_1BB014538();
    if (v9)
    {
      result = 0;
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t KeyValueFFIFSource.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFD8A44()
{
  v1 = 0x644974656B637542;
  v2 = type metadata accessor for IdentifierData();
  v123 = *(v2 - 8);
  v124 = v2;
  v3 = *(v123 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v107 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v106 = (&v105 - v9);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v118 = (&v105 - v12);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v105 - v14;
  v16 = sub_1BAFD86D0(&qword_1EBC3B090, &qword_1BB018848);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v126 = (&v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = (&v105 - v22);
  sub_1BB014DA8();
  v24 = sub_1BAFC5D64();
  v115 = "com.apple.adplatforms";
  v116 = "telemetryDelivery";
  v114 = 0xD000000000000011;
  v117 = v24;
  v25 = sub_1BB014E68();
  v113 = sub_1BAFD86D0(&qword_1EBC3B098, &qword_1BB018850);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BB0187D0;
  v27 = *(v0 + 16);
  v125 = v23;
  if (v27 == 2)
  {
    v29 = 0xE800000000000000;
  }

  else
  {
    if (v27 == 1)
    {
      v28 = "RotatedAnonymousId";
    }

    else
    {
      if (v27)
      {
LABEL_59:
        v129.value._countAndFlagsBits = v27;
        result = sub_1BB015138();
        __break(1u);
        return result;
      }

      v28 = "AnonymousSessionId";
    }

    v29 = (v28 - 32) | 0x8000000000000000;
    v1 = 0xD000000000000012;
  }

  v30 = MEMORY[0x1E69E6158];
  *(v26 + 56) = MEMORY[0x1E69E6158];
  v31 = v26;
  v32 = sub_1BAFD9D38();
  v33 = MEMORY[0x1E69E6530];
  v34 = MEMORY[0x1E69E65A8];
  v31[4] = v1;
  v31[5] = v29;
  v31[12] = v33;
  v31[13] = v34;
  v35 = v122;
  v37 = v122[3];
  v36 = v122[4];
  v31[8] = v32;
  v31[9] = v37;
  v38 = v35[5];
  v31[17] = v30;
  v31[18] = v32;
  v112 = v32;
  v31[14] = v36;
  v31[15] = v38;

  sub_1BB0148B8();

  v120 = sub_1BAFD95A0();
  if (v120)
  {
    v39 = v35[24];
    v40 = v35[25];
    sub_1BAFC6AB4(v35 + 21, v39);
    v41 = (*(v40 + 8))(v39, v40);
    if (v41)
    {
      v42 = v41;
      v129.value._countAndFlagsBits = v41;
      sub_1BAFD86D0(&qword_1EBC3B0A0, &qword_1BB018858);
      sub_1BAFD9D8C();
      if (sub_1BB014D68())
      {
        v43 = 0;
        countAndFlagsBits = MEMORY[0x1E69E7CC0];
        v129.value._countAndFlagsBits = MEMORY[0x1E69E7CC0];
        v119 = v42;
        v44 = *(v42 + 64);
        v108 = v42 + 64;
        v45 = 1 << *(v42 + 32);
        v46 = -1;
        if (v45 < 64)
        {
          v46 = ~(-1 << v45);
        }

        v47 = v46 & v44;
        v48 = (v45 + 63) >> 6;
        v49 = &unk_1BB018860;
        v109 = xmmword_1BB0187E0;
        v50 = v118;
        v51 = v126;
        v121 = v48;
        v110 = v15;
LABEL_16:
        v52 = v43;
        if (v47)
        {
          while (2)
          {
            v53 = v52;
LABEL_24:
            v55 = __clz(__rbit64(v47));
            v47 &= v47 - 1;
            v56 = v55 | (v53 << 6);
            v57 = (*(v119 + 48) + 16 * v56);
            v59 = *v57;
            v58 = v57[1];
            sub_1BAFD9E38(*(v119 + 56) + *(v123 + 72) * v56, v15);
            v60 = sub_1BAFD86D0(&qword_1EBC3B0A8, v49);
            v61 = *(v60 + 48);
            v62 = v126;
            *v126 = v59;
            v62[1] = v58;
            v51 = v62;
            v27 = v15;
            sub_1BAFD9E9C(v15, v62 + v61);
            (*(*(v60 - 8) + 56))(v51, 0, 1, v60);

            v127 = v53;
LABEL_25:
            v63 = v49;
            v64 = v125;
            sub_1BAFD9F00(v51, v125);
            v65 = v63;
            v66 = sub_1BAFD86D0(&qword_1EBC3B0A8, v63);
            if ((*(*(v66 - 8) + 48))(v64, 1, v66) == 1)
            {

              return countAndFlagsBits;
            }

            v67 = *v64;
            v68 = v64[1];
            sub_1BAFD9E9C(v64 + *(v66 + 48), v50);
            v69 = *(v50 + *(v124 + 28));
            v70 = *(v69 + 16);
            v71 = (v69 + 32);
            v49 = v65;
            v15 = v27;
            while (v70)
            {
              v72 = *v71++;
              --v70;
              if (v72 == v37)
              {
                v74 = v120;
                if (*(v120 + 16))
                {
                  v75 = sub_1BAFDCCAC(v67, v68);
                  v77 = v76;

                  if ((v77 & 1) == 0)
                  {
                    goto LABEL_38;
                  }

                  v78 = *(v74 + 56) + *(v123 + 72) * v75;
                  v79 = v107;
                  sub_1BAFD9E38(v78, v107);
                  v80 = v106;
                  sub_1BAFD9E9C(v79, v106);
                  v81 = v122;
                  v82 = v122[14];
                  v83 = v122[15];
                  sub_1BAFC6AB4(v122 + 11, v82);
                  if ((*(v83 + 8))(v80, v50, v81 + 26, v82, v83))
                  {
                    sub_1BAFD9F70(v80);
                    goto LABEL_38;
                  }

                  sub_1BB014DA8();
                  v90 = sub_1BB014E68();
                  v91 = swift_allocObject();
                  *(v91 + 16) = v109;
                  v92 = IdentifierData.description.getter();
                  v93 = v112;
                  *(v91 + 56) = MEMORY[0x1E69E6158];
                  *(v91 + 64) = v93;
                  *(v91 + 32) = v92;
                  *(v91 + 40) = v94;
                  sub_1BB0148B8();

                  sub_1BAFD9970(v80);
                  MEMORY[0x1BFB06D80]();
                  if (*((v129.value._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129.value._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v95 = *((v129.value._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_1BB014C98();
                  }

                  sub_1BB014CC8();
                  sub_1BAFD9F70(v80);
LABEL_15:
                  v50 = v118;
                  v15 = v110;
                  sub_1BAFD9F70(v118);
                  countAndFlagsBits = v129.value._countAndFlagsBits;
                  v51 = v126;
                  v43 = v127;
                  v48 = v121;
                  goto LABEL_16;
                }

LABEL_38:
                if (sub_1BAFD9B5C(v50))
                {
                  sub_1BB014DA8();
                  v84 = sub_1BB014E68();
                  v85 = swift_allocObject();
                  *(v85 + 16) = v109;
                  v86 = IdentifierData.description.getter();
                  v87 = v112;
                  *(v85 + 56) = MEMORY[0x1E69E6158];
                  *(v85 + 64) = v87;
                  *(v85 + 32) = v86;
                  *(v85 + 40) = v88;
                  sub_1BB0148B8();

                  sub_1BAFD9970(v50);
                  MEMORY[0x1BFB06D80]();
                  if (*((v129.value._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129.value._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v89 = *((v129.value._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_1BB014C98();
                  }

                  sub_1BB014CC8();
                  goto LABEL_15;
                }

                LOBYTE(v128) = 12;
                v101 = IdentifierData.description.getter();
                v103 = v102;
                v104.value._countAndFlagsBits = v101;
                v104.value._object = v103;
                idmanagerError(errorType:description:)(&v128, v104);

                sub_1BAFD9F70(v50);
                return MEMORY[0x1E69E7CC0];
              }
            }

            sub_1BAFD9F70(v50);

            v52 = v127;
            v48 = v121;
            if (v47)
            {
              continue;
            }

            break;
          }
        }

        if (v48 <= v52 + 1)
        {
          v54 = v52 + 1;
        }

        else
        {
          v54 = v48;
        }

        while (1)
        {
          v53 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          if (v53 >= v48)
          {
            v127 = v54 - 1;
            v27 = v15;
            v73 = sub_1BAFD86D0(&qword_1EBC3B0A8, v49);
            (*(*(v73 - 8) + 56))(v51, 1, 1, v73);
            v47 = 0;
            goto LABEL_25;
          }

          v47 = *(v108 + 8 * v53);
          ++v52;
          if (v47)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_59;
      }
    }

    v130 = 11;
    v129.value._countAndFlagsBits = 0;
    v129.value._object = 0xE000000000000000;
    sub_1BB014F58();

    v129.value._countAndFlagsBits = 0x203A65707974;
    v129.value._object = 0xE600000000000000;
    v97 = 0x644974656B637542;
    if (v27 != 2)
    {
      if (v27 == 1)
      {
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    v98 = 0xE800000000000000;
  }

  else
  {
    v130 = 10;
    v129.value._countAndFlagsBits = 0;
    v129.value._object = 0xE000000000000000;
    sub_1BB014F58();

    v129.value._countAndFlagsBits = 0x203A65707974;
    v129.value._object = 0xE600000000000000;
    if (v27 != 2)
    {
      if (v27 == 1)
      {
LABEL_50:
        v96 = "RotatedAnonymousId";
        goto LABEL_51;
      }

LABEL_46:
      v96 = "AnonymousSessionId";
LABEL_51:
      v98 = (v96 - 32) | 0x8000000000000000;
      v97 = 0xD000000000000012;
      goto LABEL_55;
    }

    v98 = 0xE800000000000000;
    v97 = 0x644974656B637542;
  }

LABEL_55:
  MEMORY[0x1BFB06D20](v97, v98);

  MEMORY[0x1BFB06D20](0x3A656372756F7320, 0xE900000000000020);
  v128 = v37;
  v100 = sub_1BB0150F8();
  MEMORY[0x1BFB06D20](v100);

  MEMORY[0x1BFB06D20](0x737365636F727020, 0xEC000000203A6449);
  MEMORY[0x1BFB06D20](v36, v38);
  idmanagerError(errorType:description:)(&v130, v129);

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BAFD95A0()
{
  v1 = type metadata accessor for IdentifierData();
  v46 = *(v1 - 8);
  v2 = *(v46 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v43 - v8;
  v10 = sub_1BAFC6AB4(v0 + 6, v0[9]);
  v12 = v0[2];
  v11 = v0[3];
  v13 = *v10;
  v14 = sub_1BAFEFFE0(v12, v11);
  v15 = v14;
  if (v16)
  {
    v17 = v14;
    sub_1BB014DB8();
    sub_1BAFC5D64();
    v18 = sub_1BB014E68();
    sub_1BAFD86D0(&qword_1EBC3B098, &qword_1BB018850);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BB0187E0;
    v48 = v17;
    sub_1BAFD9FCC();
    v20 = sub_1BB015168();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1BAFD9D38();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_1BB0148B8();

    return 0;
  }

  v45 = *(v14 + 16);
  if (!v45)
  {
    sub_1BAFDA020(v14, 0);
    return MEMORY[0x1E69E7CC8];
  }

  v24 = 0;
  v44 = &v9[*(v1 + 32)];
  v43 = v14 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
  v23 = MEMORY[0x1E69E7CC8];
  while (v24 < *(v15 + 16))
  {
    v25 = *(v46 + 72);
    sub_1BAFD9E38(v43 + v25 * v24, v9);
    v27 = *v44;
    v26 = v44[1];
    v28 = v6;
    sub_1BAFD9E38(v9, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v23;
    v30 = sub_1BAFDCCAC(v27, v26);
    v32 = v23[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_21;
    }

    v36 = v31;
    if (v23[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = v30;
        sub_1BAFDBC08();
        v30 = v41;
      }
    }

    else
    {
      sub_1BAFDA824(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_1BAFDCCAC(v27, v26);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_23;
      }
    }

    v6 = v28;
    v23 = v47;
    if (v36)
    {
      sub_1BAFDA02C(v28, v47[7] + v30 * v25);
    }

    else
    {
      v47[(v30 >> 6) + 8] |= 1 << v30;
      v38 = (v23[6] + 16 * v30);
      *v38 = v27;
      v38[1] = v26;
      sub_1BAFD9E9C(v28, v23[7] + v30 * v25);
      v39 = v23[2];
      v34 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v34)
      {
        goto LABEL_22;
      }

      v23[2] = v40;
    }

    ++v24;
    sub_1BAFD9F70(v9);
    if (v45 == v24)
    {
      sub_1BAFDA020(v15, 0);
      return v23;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1BB015158();
  __break(1u);
  return result;
}

id sub_1BAFD9970(uint64_t *a1)
{
  v2 = v1;
  v28 = sub_1BB014398();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v28, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v11 = v2[2];
  v10 = v2[3];
  v25 = *a1;
  v26 = v11;
  v27 = v10;
  v12 = v2[19];
  v13 = v2[20];
  sub_1BAFC6AB4(v2 + 16, v12);
  v14 = *(v13 + 8);

  v14(a1, v12, v13);
  v15 = v2[4];
  v16 = v2[5];
  v17 = type metadata accessor for RotatingIdentifier();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR___APRotatingIdentifier_value];
  v20 = v26;
  *v19 = v25;
  *(v19 + 1) = v9;
  *&v18[OBJC_IVAR___APRotatingIdentifier_type] = v20;
  v21 = v28;
  *&v18[OBJC_IVAR___APRotatingIdentifier_source] = v27;
  (*(v4 + 16))(&v18[OBJC_IVAR___APRotatingIdentifier_expirationDate], v8, v21);
  v22 = &v18[OBJC_IVAR___APRotatingIdentifier_processId];
  *v22 = v15;
  *(v22 + 1) = v16;
  v29.receiver = v18;
  v29.super_class = v17;

  v23 = objc_msgSendSuper2(&v29, sel_init);
  (*(v4 + 8))(v8, v21);
  return v23;
}

BOOL sub_1BAFD9B5C(uint64_t *a1)
{
  v3 = *sub_1BAFC6AB4((v1 + 48), *(v1 + 72));
  v4 = sub_1BAFEF32C(a1);
  if (v4 != 10)
  {
    sub_1BB014DB8();
    sub_1BAFC5D64();
    v5 = sub_1BB014E68();
    sub_1BAFD86D0(&qword_1EBC3B098, &qword_1BB018850);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BB0187E0;
    sub_1BAFD9FCC();
    v7 = sub_1BB015168();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1BAFD9D38();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_1BB0148B8();
  }

  return v4 == 10;
}

uint64_t sub_1BAFD9CB4()
{
  v1 = v0[5];

  sub_1BAFC6A68(v0 + 6);
  sub_1BAFC6A68(v0 + 11);
  sub_1BAFC6A68(v0 + 16);
  sub_1BAFC6A68(v0 + 21);
  sub_1BAFC6A68(v0 + 26);

  return swift_deallocClassInstance();
}

unint64_t sub_1BAFD9D38()
{
  result = qword_1EDD4E1E0;
  if (!qword_1EDD4E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4E1E0);
  }

  return result;
}

unint64_t sub_1BAFD9D8C()
{
  result = qword_1EDD4E1D8;
  if (!qword_1EDD4E1D8)
  {
    sub_1BAFD9DF0(&qword_1EBC3B0A0, &qword_1BB018858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4E1D8);
  }

  return result;
}

uint64_t sub_1BAFD9DF0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1BAFD9E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifierData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFD9E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifierData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFD9F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B090, &qword_1BB018848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFD9F70(uint64_t a1)
{
  v2 = type metadata accessor for IdentifierData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BAFD9FCC()
{
  result = qword_1EBC3B0B0;
  if (!qword_1EBC3B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B0B0);
  }

  return result;
}

uint64_t sub_1BAFDA020(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1BAFDA02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifierData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFDA090()
{
  v1 = v0;
  v2 = sub_1BB014398();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB0143E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v94 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IdentifierData();
  v92 = *(v13 - 8);
  v93 = v13;
  v14 = *(v92 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v95 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v79 - v19);
  v21 = v0[5];
  v22 = v0[6];
  sub_1BAFC6AB4(v0 + 2, v21);
  v23 = (*(v22 + 8))(v21, v22);
  if (!*(v23 + 16) || (v24 = sub_1BAFDCCAC(0xD000000000000013, 0x80000001BB01F500), (v25 & 1) == 0))
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_1BAFDB9B0(*(v23 + 56) + 32 * v24, v98);

  sub_1BAFD86D0(&qword_1EBC3B0C0, &unk_1BB0188C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    LOBYTE(v98[0]) = 9;
    idmanagerError(errorType:description:)(v98, 0);
    return 0;
  }

  v26 = v96;
  v86 = *(v96 + 16);
  if (!v86)
  {
    v28 = MEMORY[0x1E69E7CC8];
LABEL_31:

    return v28;
  }

  v27 = 0;
  v84 = (v9 + 8);
  v85 = v8;
  v28 = MEMORY[0x1E69E7CC8];
  v83 = (v3 + 8);
  v81 = v7;
  v82 = v2;
  v80 = v96;
  while (v27 < *(v26 + 16))
  {
    v31 = *(v26 + 8 * v27 + 32);
    if (!*(v31 + 16))
    {
      goto LABEL_36;
    }

    v32 = *(v26 + 8 * v27 + 32);

    v33 = sub_1BAFDCCAC(5002324, 0xE300000000000000);
    if ((v34 & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_1BAFDB9B0(*(v31 + 56) + 32 * v33, v98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    if (!*(v31 + 16))
    {
      goto LABEL_35;
    }

    v91 = v27;
    v35 = sub_1BAFDCCAC(0x73656372756F73, 0xE700000000000000);
    if ((v36 & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_1BAFDB9B0(*(v31 + 56) + 32 * v35, v98);
    sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v37 = v96;
    if (!*(v31 + 16) || (v38 = sub_1BAFDCCAC(0x63617073656D616ELL, 0xE900000000000065), (v39 & 1) == 0))
    {

LABEL_35:

LABEL_36:

      goto LABEL_6;
    }

    sub_1BAFDB9B0(*(v31 + 56) + 32 * v38, v98);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v40 = v97;
    v90 = v96;
    v41 = v94;
    sub_1BB0143D8();
    v42 = sub_1BB0143A8();
    v88 = v43;
    v89 = v42;
    (*v84)(v41, v85);
    sub_1BB014388();
    v87 = v37;
    v44 = v93;
    v45 = v20 + v93[5];
    sub_1BB014378();
    (*v83)(v7, v2);
    v46 = v20 + v44[6];
    sub_1BB014388();
    v47 = v1[10];
    v48 = v1[11];
    sub_1BAFC6AB4(v1 + 7, v47);
    v49 = *(v48 + 8);

    v50 = v49(v47, v48);
    v52 = v51;
    v53 = sub_1BAFC6AB4(v1 + 12, v1[15]);
    v55 = *v53;
    v54 = v53[1];
    v56 = v53[2];
    v57 = v53[3];
    v58 = sub_1BAFE8520();
    v59 = v88;
    *v20 = v89;
    v20[1] = v59;
    *(v20 + v44[7]) = v87;
    v60 = (v20 + v44[8]);
    v61 = v90;
    *v60 = v90;
    v60[1] = v40;
    v62 = v44[9];
    v63 = v61;
    v64 = v20 + v62;
    *v64 = v50;
    *(v64 + 1) = v52;
    *(v64 + 2) = v58;
    *(v64 + 3) = v65;
    v64[32] = 1;
    sub_1BAFD9E38(v20, v95);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = v28;
    v67 = sub_1BAFDCCAC(v63, v40);
    v69 = v28[2];
    v70 = (v68 & 1) == 0;
    v71 = __OFADD__(v69, v70);
    v72 = v69 + v70;
    if (v71)
    {
      goto LABEL_38;
    }

    v73 = v68;
    if (v28[3] >= v72)
    {
      v7 = v81;
      v2 = v82;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = v67;
        sub_1BAFDBC08();
        v67 = v78;
      }
    }

    else
    {
      sub_1BAFDA824(v72, isUniquelyReferenced_nonNull_native);
      v67 = sub_1BAFDCCAC(v63, v40);
      v7 = v81;
      v2 = v82;
      if ((v73 & 1) != (v74 & 1))
      {
        goto LABEL_40;
      }
    }

    v26 = v80;
    if (v73)
    {
      v30 = v67;

      v28 = v98[0];
      sub_1BAFDA02C(v95, *(v98[0] + 56) + *(v92 + 72) * v30);
    }

    else
    {
      v28 = v98[0];
      *(v98[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
      v75 = (v28[6] + 16 * v67);
      *v75 = v63;
      v75[1] = v40;
      sub_1BAFD9E9C(v95, v28[7] + *(v92 + 72) * v67);
      v76 = v28[2];
      v71 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v71)
      {
        goto LABEL_39;
      }

      v28[2] = v77;
    }

    v27 = v91 + 1;
    sub_1BAFD9F70(v20);
    if (v86 == v27)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1BB015158();
  __break(1u);
  return result;
}

uint64_t sub_1BAFDA794()
{
  sub_1BAFC6A68(v0 + 2);
  sub_1BAFC6A68(v0 + 7);
  sub_1BAFC6A68(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFDA824(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for IdentifierData();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_1BAFD86D0(&qword_1EBC3B0D0, &qword_1BB0188D0);
  v45 = a2;
  result = sub_1BB015028();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        sub_1BAFD9E9C(v32, v46);
      }

      else
      {
        sub_1BAFD9E38(v32, v46);
      }

      v33 = *(v13 + 40);
      sub_1BB0151B8();
      sub_1BB014BD8();
      result = sub_1BB0151F8();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = sub_1BAFD9E9C(v46, *(v13 + 56) + v31 * v21);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1BAFDAB60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1BAFD86D0(&qword_1EBC3B0F0, &unk_1BB0188F0);
  v36 = a2;
  result = sub_1BB015028();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1BAFDC53C(v25, v37);
      }

      else
      {
        sub_1BAFDB9B0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1BB0151B8();
      sub_1BB014BD8();
      result = sub_1BB0151F8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1BAFDC53C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1BAFDAE40(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1BAFD86D0(a3, a4);
  v40 = a2;
  result = sub_1BB015028();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];

        swift_unknownObjectRetain();
      }

      v29 = *(v10 + 40);
      sub_1BB0151B8();
      sub_1BB014BD8();
      result = sub_1BB0151F8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1BAFDB0E0(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = sub_1BB0144A8();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v50, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_1BAFD86D0(&qword_1EBC3B0E8, &qword_1BB01D820);
  v47 = a2;
  result = sub_1BB015028();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v6 + 16);
    v45 = v10;
    v46 = v6;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v46 + 72);
      v32 = v27 + v31 * v26;
      if (v47)
      {
        (*v48)(v49, v32, v50);
      }

      else
      {
        (*v44)(v49, v32, v50);
      }

      v33 = *(v13 + 40);
      sub_1BB0151B8();
      sub_1BB014BD8();
      result = sub_1BB0151F8();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v48)(*(v13 + 56) + v31 * v21, v49, v50);
      ++*(v13 + 16);
      v10 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1BAFDB460(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1BAFD86D0(&qword_1EBC3B0E0, &unk_1BB0188E0);
  v38 = a2;
  result = sub_1BB015028();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1BB0151B8();
      sub_1BB014BD8();
      result = sub_1BB0151F8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BAFDB708(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1BAFD86D0(&qword_1EBC3B0D8, &qword_1BB0188D8);
  v38 = a2;
  result = sub_1BB015028();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1BB0151B8();
      sub_1BB014BD8();
      result = sub_1BB0151F8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BAFDB9B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BAFDBA0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for IdentifierData();
  result = sub_1BAFD9E9C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_1BAFDBAA4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BAFDC53C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1BAFDBB10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1BB0144A8();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1BAFDBBC0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_1BAFDBC08()
{
  v1 = v0;
  v2 = type metadata accessor for IdentifierData();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAFD86D0(&qword_1EBC3B0D0, &qword_1BB0188D0);
  v6 = *v0;
  v7 = sub_1BB015018();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_1BAFD9E38(*(v6 + 56) + v28, v32);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_1BAFD9E9C(v27, *(v29 + 56) + v28);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1BAFDBE38()
{
  v1 = v0;
  sub_1BAFD86D0(&qword_1EBC3B0F0, &unk_1BB0188F0);
  v2 = *v0;
  v3 = sub_1BB015018();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1BAFDB9B0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BAFDC53C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_1BAFDBFDC()
{
  v1 = v0;
  v37 = sub_1BB0144A8();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAFD86D0(&qword_1EBC3B0E8, &qword_1BB01D820);
  v5 = *v0;
  v6 = sub_1BB015018();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1BAFDC25C()
{
  v1 = v0;
  sub_1BAFD86D0(&qword_1EBC3B0E0, &unk_1BB0188E0);
  v2 = *v0;
  v3 = sub_1BB015018();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1BAFDC3CC()
{
  v1 = v0;
  sub_1BAFD86D0(&qword_1EBC3B0D8, &qword_1BB0188D8);
  v2 = *v0;
  v3 = sub_1BB015018();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

_OWORD *sub_1BAFDC53C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BAFDC570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for IdentifierData() + 20);
  v5 = sub_1BB014398();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_1BAFDC5F0()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t DefaultStorefrontIDCountryCodeLUTDataSource.lookupTable()()
{
  v0 = sub_1BB013AC0(&unk_1F390A758);
  sub_1BAFD86D0(&qword_1EBC3B170, &qword_1BB018980);
  swift_arrayDestroy();
  return v0;
}

unint64_t sub_1BAFDC6D4()
{
  v0 = sub_1BB013AC0(&unk_1F390A758);
  sub_1BAFD86D0(&qword_1EBC3B170, &qword_1BB018980);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1BAFDC7A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1BAFC6AB4(a3, a3[3]);

  return sub_1BAFDC7EC(a1, a2, v5);
}

uint64_t sub_1BAFDC7EC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BB014398();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = &type metadata for RotatingIdentifierTelemetryDelivery;
  v41 = &off_1F390D430;
  v39[0] = a3;
  v12 = type metadata accessor for IdentifierData();
  v13 = v12[9];
  v14 = (a1 + v13);
  if (*(a1 + v13 + 32) == 1 && (v15 = a2 + v13, *(v15 + 32) == 1))
  {
    v16 = v14[2];
    v17 = v14[3];
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *v14 == *v15 && v14[1] == *(v15 + 8);
    if (!v20 && (sub_1BB015118() & 1) == 0)
    {
      v30 = sub_1BAFC6AB4(v39, &type metadata for RotatingIdentifierTelemetryDelivery);
      v31 = v12[6];
      v32 = *v30;
      v33 = a3;
      v26 = 1;
      sub_1BAFF3160(1, 2, a1 + v31, v32);
      goto LABEL_18;
    }

    v21 = v16 == v18 && v17 == v19;
    if (!v21 && (sub_1BB015118() & 1) == 0)
    {
      v34 = sub_1BAFC6AB4(v39, &type metadata for RotatingIdentifierTelemetryDelivery);
      v35 = v12[6];
      v36 = *v34;
      v37 = a3;
      sub_1BAFF3160(1, 3, a1 + v35, v36);
      v26 = 1;
      goto LABEL_18;
    }

    v22 = a3;
  }

  else
  {
    v23 = a3;
    v24 = sub_1BB014B38();
    APSimulateCrash();
  }

  v25 = v12[5];
  sub_1BB014388();
  LOBYTE(v25) = sub_1BB014348();
  (*(v7 + 8))(v11, v6);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v27 = sub_1BAFC6AB4(v39, v40);
    v28 = v12[6];
    v26 = 1;
    sub_1BAFF3160(1, 0, a1 + v28, *v27);
  }

LABEL_18:
  sub_1BAFC6A68(v39);
  return v26;
}

uint64_t LUTStorefrontIDCountryCodeConverter.__allocating_init(dataSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BAFC6D0C(a1, v2 + 16);
  return v2;
}

uint64_t LUTStorefrontIDCountryCodeConverter.countryCodeFor(storefrontID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2[5];
  v7 = v2[6];
  sub_1BAFC6AB4(v2 + 2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  if (*(v8 + 16) && (v9 = sub_1BAFDCD14(v4, v5, sub_1BAFDCD98), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 16 * v9);
    v12 = *v11;
    v13 = v11[1];

    return MEMORY[0x1EEDE9068](v12, v13);
  }

  else
  {

    v14 = sub_1BB0144A8();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t LUTStorefrontIDCountryCodeConverter.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFDCD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_1BB0151B8();
  sub_1BB014BD8();
  v7 = sub_1BB0151F8();

  return a3(a1, a2, v7);
}

unint64_t sub_1BAFDCD98(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1BB015118())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t VisibleUAEProperties.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB018AE0;
  *(inited + 32) = 0x746E6563726570;
  v8 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 120) = v8;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v2;

  v9 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = v9;
  sub_1BAFDD7A4(v6, sub_1BAFDD758, 0, isUniquelyReferenced_nonNull_native, v16);

  v11 = v16[0];
  if (v3 != 2)
  {
    v17 = MEMORY[0x1E69E6370];
    LOBYTE(v16[0]) = v3 & 1;
    sub_1BAFDC53C(v16, v15);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAFDD1F8(v15, 0x657370616C6C6F63, 0xE900000000000064, v12);
  }

  if ((v5 & 1) == 0)
  {
    v17 = MEMORY[0x1E69E63B0];
    v16[0] = v4;
    sub_1BAFDC53C(v16, v15);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAFDD1F8(v15, 0x765F6C6C6F726373, 0xEF797469636F6C65, v13);
  }

  return v11;
}

uint64_t sub_1BAFDD094(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1BAFDCCAC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1BAFDBC08();
      goto LABEL_7;
    }

    sub_1BAFDA824(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_1BAFDCCAC(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1BB015158();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for IdentifierData() - 8) + 72) * v12;

    return sub_1BAFDA02C(a1, v20);
  }

LABEL_13:
  sub_1BAFDBA0C(v12, a2, a3, a1, v18);
}

_OWORD *sub_1BAFDD1F8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BAFDCCAC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BAFDBE38();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BAFDAB60(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1BAFDCCAC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1BB015158();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1BAFC6A68(v23);

    return sub_1BAFDC53C(a1, v23);
  }

  else
  {
    sub_1BAFDBAA4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1BAFDD348(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1BAFDCCAC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1BAFDBFDC();
      goto LABEL_7;
    }

    sub_1BAFDB0E0(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1BAFDCCAC(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1BB015158();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1BB0144A8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1BAFDBB10(v12, a2, a3, a1, v18);
}

uint64_t sub_1BAFDD4C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BAFDCCAC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BAFDC25C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BAFDB460(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1BAFDCCAC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1BB015158();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1BAFDBBC0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1BAFDD610(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BAFDCCAC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BAFDC3CC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BAFDB708(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1BAFDCCAC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1BB015158();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1BAFDBBC0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1BAFDD758@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1BAFDB9B0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_1BAFDD7A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_1BAFE58D0(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_1BAFDC53C(v49, v47);
  v14 = *a5;
  result = sub_1BAFDCCAC(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_1BAFDAB60(v20, a4 & 1);
    v22 = *a5;
    result = sub_1BAFDCCAC(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1BB015158();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_1BAFDBE38();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_1BAFDB9B0(*(*a5 + 56) + 32 * result, v46);
    sub_1BAFC6A68(v47);

    v26 = *(v24 + 56);
    sub_1BAFC6A68((v26 + v25));
    sub_1BAFDC53C(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_1BAFDC53C(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_1BAFE58D0(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_1BAFDC53C(v49, v47);
        v35 = *a5;
        result = sub_1BAFDCCAC(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_1BAFDAB60(v39, 1);
          v40 = *a5;
          result = sub_1BAFDCCAC(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_1BAFDB9B0(*(*a5 + 56) + 32 * result, v46);
          sub_1BAFC6A68(v47);

          v34 = *(v32 + 56);
          sub_1BAFC6A68((v34 + v33));
          sub_1BAFDC53C(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_1BAFDC53C(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_1BAFE58D0(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_1BAFDDB98();
  }

LABEL_27:
  __break(1u);
  return result;
}

__n128 sub_1BAFDDAE0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1BAFDDAF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAFDDB3C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t InteractedUAEProperties.init(type:xPosition:yPosition:additionalProperties:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  *(a7 + 40) = a6;
  return result;
}

uint64_t InteractedUAEProperties.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187E0;
  *(inited + 32) = 1701869940;
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1;

  v8 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFDDD84(inited + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = v8;
  sub_1BAFDD7A4(v6, sub_1BAFDD758, 0, isUniquelyReferenced_nonNull_native, v16);

  v10 = v16[0];
  v11 = MEMORY[0x1E69E63B0];
  if ((v3 & 1) == 0)
  {
    v17 = MEMORY[0x1E69E63B0];
    v16[0] = v2;
    sub_1BAFDC53C(v16, v15);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAFDD1F8(v15, 0x697469736F705F78, 0xEA00000000006E6FLL, v12);
  }

  if ((v5 & 1) == 0)
  {
    v17 = v11;
    v16[0] = v4;
    sub_1BAFDC53C(v16, v15);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAFDD1F8(v15, 0x697469736F705F79, 0xEA00000000006E6FLL, v13);
  }

  return v10;
}

uint64_t sub_1BAFDDD84(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UnloadedUAEProperties.init(count:code:additionalProperties:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = result;
  a4[2] = a3;
  return result;
}

uint64_t UnloadedUAEProperties.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB018AE0;
  *(inited + 32) = 1701080931;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1;
  *(inited + 72) = v5;
  *(inited + 80) = 0x746E756F63;
  *(inited + 120) = v5;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v2;

  v6 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v6;
  sub_1BAFDD7A4(v3, sub_1BAFDD758, 0, isUniquelyReferenced_nonNull_native, &v9);

  return v9;
}

uint64_t sub_1BAFDDF3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB018AE0;
  *(inited + 32) = 1701080931;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1;
  *(inited + 72) = v5;
  *(inited + 80) = 0x746E756F63;
  *(inited + 120) = v5;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v2;

  v6 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v6;
  sub_1BAFDD7A4(v3, sub_1BAFDD758, 0, isUniquelyReferenced_nonNull_native, &v9);

  return v9;
}

__n128 sub_1BAFDE070(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BAFDE084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BAFDE0CC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

AdPlatformsCommon::ReceivedUAEProperties __swiftcall ReceivedUAEProperties.init(elapsed:requestId:additionalProperties:)(Swift::Int elapsed, Swift::String_optional requestId, Swift::OpaquePointer additionalProperties)
{
  *v3 = elapsed;
  *(v3 + 8) = requestId;
  *(v3 + 24) = additionalProperties;
  result.requestId = requestId;
  result.additionalProperties = additionalProperties;
  result.elapsed = elapsed;
  return result;
}

uint64_t ReceivedUAEProperties.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187E0;
  *(inited + 32) = 0x64657370616C65;
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v1;

  v6 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFDDD84(inited + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v12 = v6;
  sub_1BAFDD7A4(v4, sub_1BAFDD758, 0, isUniquelyReferenced_nonNull_native, &v12);

  v8 = v12;
  if (v3)
  {
    v13 = MEMORY[0x1E69E6158];
    *&v12 = v2;
    *(&v12 + 1) = v3;
    sub_1BAFDC53C(&v12, v11);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAFDD1F8(v11, 0x5F74736575716572, 0xEA00000000006469, v9);
  }

  return v8;
}

__n128 sub_1BAFDE29C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BAFDE2A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BAFDE2F0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t LeftAdDestinationUAEProperties.init(returnTime:configVersion:additionalProperties:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t LeftAdDestinationUAEProperties.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB018AE0;
  *(inited + 32) = 0x745F6E7275746572;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xEB00000000656D69;
  *(inited + 48) = v1;
  *(inited + 72) = v5;
  strcpy((inited + 80), "config_version");
  *(inited + 120) = v5;
  *(inited + 95) = -18;
  *(inited + 96) = v2;

  v6 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v6;
  sub_1BAFDD7A4(v3, sub_1BAFDD758, 0, isUniquelyReferenced_nonNull_native, &v9);

  return v9;
}

uint64_t sub_1BAFDE4A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB018AE0;
  *(inited + 32) = 0x745F6E7275746572;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xEB00000000656D69;
  *(inited + 48) = v1;
  *(inited + 72) = v5;
  strcpy((inited + 80), "config_version");
  *(inited + 120) = v5;
  *(inited + 95) = -18;
  *(inited + 96) = v2;

  v6 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v6;
  sub_1BAFDD7A4(v3, sub_1BAFDD758, 0, isUniquelyReferenced_nonNull_native, &v9);

  return v9;
}

AdPlatformsCommon::OffScreenUAEProperties __swiftcall OffScreenUAEProperties.init(collapsed:additionalProperties:)(Swift::Bool_optional collapsed, Swift::OpaquePointer additionalProperties)
{
  *v2 = collapsed;
  *(v2 + 8) = additionalProperties;
  result.additionalProperties = additionalProperties;
  result.collapsed = collapsed;
  return result;
}

uint64_t OffScreenUAEProperties.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  if (v1 == 2)
  {
    v3 = *(v0 + 1);
  }

  else
  {
    v8 = MEMORY[0x1E69E6370];
    LOBYTE(v7) = v1 & 1;
    sub_1BAFDC53C(&v7, v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAFDD1F8(v6, 0x657370616C6C6F63, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
  }

  return v2;
}

__n128 sub_1BAFDE6B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BAFDE6C0(uint64_t a1, int a2)
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

uint64_t sub_1BAFDE708(uint64_t result, int a2, int a3)
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

uint64_t sub_1BAFDE770()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BB014B38();
}

_BYTE *PlacedUAEProperties.init(container:type:format:missedOpportunityReason:duplicatePosition:additionalProperties:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  *a9 = *result;
  *(a9 + 1) = v9;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5 & 1;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7 & 1;
  *(a9 + 48) = a8;
  return result;
}

uint64_t PlacedUAEProperties.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v0[24];
  v17 = *(v0 + 4);
  v6 = v0[40];
  v7 = *(v0 + 6);
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187D0;
  *(inited + 32) = 0x656E6961746E6F63;
  v9 = v1 + 6050;
  v10 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 1701869940;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = *&asc_1BB018F08[8 * v2];
  *(inited + 120) = v10;
  *(inited + 128) = 0x74616D726F66;
  *(inited + 168) = v10;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = v3;

  v11 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[0] = v11;
  sub_1BAFDD7A4(v7, sub_1BAFDD758, 0, isUniquelyReferenced_nonNull_native, v19);

  v13 = v19[0];
  if ((v5 & 1) == 0)
  {
    v20 = v10;
    v19[0] = v4;
    sub_1BAFDC53C(v19, v18);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAFDD1F8(v18, 0x6E6F73616572, 0xE600000000000000, v14);
  }

  if ((v6 & 1) == 0)
  {
    v20 = v10;
    v19[0] = v17;
    sub_1BAFDC53C(v19, v18);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAFDD1F8(v18, 0x746163696C707564, 0xE900000000000065, v15);
  }

  return v13;
}

__n128 sub_1BAFDEA1C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BAFDEA38(uint64_t a1, int a2)
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

uint64_t sub_1BAFDEA80(uint64_t result, int a2, int a3)
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

AdPlatformsCommon::OnScreenUAEProperties __swiftcall OnScreenUAEProperties.init(collapsed:additionalProperties:)(Swift::Bool_optional collapsed, Swift::OpaquePointer additionalProperties)
{
  *v2 = collapsed;
  *(v2 + 8) = additionalProperties;
  result.additionalProperties = additionalProperties;
  result.collapsed = collapsed;
  return result;
}

uint64_t OnScreenUAEProperties.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  if (v1 == 2)
  {
    v3 = *(v0 + 1);
  }

  else
  {
    v8 = MEMORY[0x1E69E6370];
    LOBYTE(v7) = v1 & 1;
    sub_1BAFDC53C(&v7, v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAFDD1F8(v6, 0x657370616C6C6F63, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
  }

  return v2;
}

uint64_t DictionaryStorageMedium.__allocating_init(storage:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1BAFD86D0(qword_1EBC3B188, &qword_1BB018FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t DictionaryStorageMedium.init(storage:)(uint64_t a1)
{
  sub_1BAFD86D0(qword_1EBC3B188, &qword_1BB018FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

Swift::OpaquePointer_optional __swiftcall DictionaryStorageMedium.get(key:)(Swift::String key)
{
  v2 = *v1;
  v3 = v1[3];
  v10 = key;
  v4 = *(v2 + 80);
  sub_1BB014CE8();
  v12 = sub_1BB014E98();
  v13 = sub_1BAFDEDFC;
  v14 = &v9;
  v5 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_1BAFDF264();
  os_unfair_lock_unlock((v3 + v6));
  v8 = v11;
  result.value._rawValue = v8;
  result.is_nil = v7;
  return result;
}

uint64_t sub_1BAFDED30(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = a1[2];
  v4 = *(v2 + 80);
  sub_1BB014CE8();

  sub_1BB014AB8();

  return swift_endAccess();
}

uint64_t sub_1BAFDEDFC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1BAFDED30(*(v0 + 16));
}

Swift::Void __swiftcall DictionaryStorageMedium.set(key:value:)(Swift::String key, Swift::OpaquePointer value)
{
  v3 = *(v2 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAFDF184();
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1BAFDEE88(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 80);
  sub_1BB014CE8();
  sub_1BB014AA8();

  sub_1BB014AC8();
  return swift_endAccess();
}

uint64_t sub_1BAFDEF5C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_1BAFDEE88(*(v0 + 16));
}

Swift::Void __swiftcall DictionaryStorageMedium.drop(key:)(Swift::String key)
{
  v2 = *(v1 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAFDF28C();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BAFDEFE8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 80);
  sub_1BB014CE8();
  sub_1BB014AA8();

  sub_1BB014AC8();
  return swift_endAccess();
}

uint64_t DictionaryStorageMedium.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DictionaryStorageMedium.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFDF184()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BAFDF1AC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1BAFDEFE8(*(v0 + 16));
}

uint64_t sub_1BAFDF264()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t RotationNotificationListener.notificationDelegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t RotationNotificationListener.notificationDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*RotationNotificationListener.notificationDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1BAFDF408;
}

uint64_t RotationNotificationListener.__allocating_init()()
{
  v0 = swift_allocObject();
  RotationNotificationListener.init()();
  return v0;
}

uint64_t RotationNotificationListener.init()()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x1E69861F0];
  v4 = *(v0 + 16);
  aBlock[4] = sub_1BAFC59F0;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAFC58FC;
  aBlock[3] = &unk_1F390C898;
  v5 = _Block_copy(aBlock);
  v6 = v4;

  v7 = [v2 addObserverForName:v3 object:0 suspensionBehavior:2 queue:v6 usingBlock:v5];
  _Block_release(v5);

  sub_1BB014EB8();
  swift_unknownObjectRelease();

  swift_beginAccess();
  sub_1BAFDF634(aBlock, v0 + 40);
  swift_endAccess();
  return v0;
}

uint64_t sub_1BAFDF61C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAFDF634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&unk_1EBC3B3F0, &qword_1BB019060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RotationNotificationListener.deinit()
{
  swift_beginAccess();
  sub_1BAFDF794(v0 + 40, &v3);
  if (v4)
  {
    sub_1BAFDC53C(&v3, v5);
    v1 = [objc_opt_self() defaultCenter];
    sub_1BAFC6AB4(v5, v6);
    [v1 removeObserver_];

    swift_unknownObjectRelease();
    sub_1BAFC6A68(v5);
  }

  else
  {
    sub_1BAFDF804(&v3);
  }

  sub_1BAFDF86C(v0 + 24);
  sub_1BAFDF804(v0 + 40);
  return v0;
}

uint64_t sub_1BAFDF794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&unk_1EBC3B3F0, &qword_1BB019060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFDF804(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&unk_1EBC3B3F0, &qword_1BB019060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RotationNotificationListener.__deallocating_deinit()
{
  swift_beginAccess();
  sub_1BAFDF794(v0 + 40, &v3);
  if (v4)
  {
    sub_1BAFDC53C(&v3, v5);
    v1 = [objc_opt_self() defaultCenter];
    sub_1BAFC6AB4(v5, v6);
    [v1 removeObserver_];

    swift_unknownObjectRelease();
    sub_1BAFC6A68(v5);
  }

  else
  {
    sub_1BAFDF804(&v3);
  }

  sub_1BAFDF86C(v0 + 24);
  sub_1BAFDF804(v0 + 40);
  return swift_deallocClassInstance();
}

uint64_t sub_1BAFDF990()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 32);
  return result;
}

uint64_t sub_1BAFDF9D8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1BAFDFA3C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_1BAFDFBF8;
}

void sub_1BAFDFAD4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t BirthYearAgeSource.__allocating_init(birthYearSource:clock:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = 1875;
  sub_1BAFC6D0C(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t BirthYearAgeSource.init(birthYearSource:clock:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 64) = 1875;
  sub_1BAFC6D0C(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

Swift::Int_optional __swiftcall BirthYearAgeSource.age()()
{
  v1 = sub_1BB014688();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[5];
  v8 = v0[6];
  sub_1BAFC6AB4(v0 + 2, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = 0;
  v12 = v11 | (v9 < 1875);
  if (v11 & 1 | (v9 < 1875))
  {
    goto LABEL_4;
  }

  v13 = v0[7];
  swift_getObjectType();
  sub_1BB014E48();
  v14 = sub_1BB014678();
  v10 = (*(v2 + 8))(v6, v1);
  v16 = v14 - v9;
  if (__OFSUB__(v14, v9))
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

LABEL_4:
  v15 = v12 & 1;
LABEL_7:
  result.value = v10;
  result.is_nil = v15;
  return result;
}

uint64_t BirthYearAgeSource.deinit()
{
  sub_1BAFC6A68((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BirthYearAgeSource.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t RotatingIdentifierXPCRequester.__allocating_init()()
{
  v0 = swift_allocObject();
  RotatingIdentifierXPCRequester.init()();
  return v0;
}

void *RotatingIdentifierXPCRequester.init()()
{
  v1 = v0;
  v2 = sub_1BB0149D8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v22[1] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = sub_1BB014DF8();
  v6 = *(v22[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v22[0], v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BB014DE8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v14 = sub_1BB014A68();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v0[3] = 0xD000000000000031;
  v0[4] = 0x80000001BB01F860;
  v0[5] = 0;
  sub_1BAFC5BB4(0, &qword_1EDD4FFD0, 0x1E69E9610);
  sub_1BB014A58();
  v22[7] = MEMORY[0x1E69E7CC0];
  sub_1BAFE0C90(&qword_1EDD4FFD8, MEMORY[0x1E69E8030]);
  sub_1BAFD86D0(&qword_1EBC3B210, &unk_1BB019170);
  sub_1BAFE025C();
  sub_1BB014ED8();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8090], v22[0]);
  v17 = sub_1BB014E18();
  v1[2] = v17;
  sub_1BB014A08();
  v18 = v17;
  sub_1BB0149C8();
  v19 = sub_1BB0149B8();
  v20 = v1[5];
  v1[5] = v19;

  return v1;
}

unint64_t sub_1BAFE025C()
{
  result = qword_1EDD4FFE0;
  if (!qword_1EDD4FFE0)
  {
    sub_1BAFD9DF0(&qword_1EBC3B210, &unk_1BB019170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4FFE0);
  }

  return result;
}

uint64_t RotatingIdentifierXPCRequester.deinit()
{
  if (*(v0 + 40))
  {

    sub_1BB0149E8();
  }

  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t RotatingIdentifierXPCRequester.__deallocating_deinit()
{
  if (*(v0 + 40))
  {

    sub_1BB0149E8();
  }

  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t RotatingIdentifierXPCRequester.getIdentifiers(type:)(uint64_t a1)
{
  v49 = a1;
  v2 = sub_1BB014F98();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v41 - v9;
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v41 - v12;
  v14 = sub_1BB014A18();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v48 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = sub_1BB014A38();
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v29 = v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + 40);
  if (!v30)
  {
    LOBYTE(v50[0]) = 14;
    idmanagerError(errorType:description:)(v50, 0);
    return MEMORY[0x1E69E7CC0];
  }

  v42 = v27;
  v43 = v26;
  v44 = v13;
  v47 = v15;

  v31 = sub_1BB014DA8();
  sub_1BAFC5BB4(0, &qword_1EDD4FFC0, 0x1E69E9BF8);
  v32 = sub_1BB014E68();
  v33 = os_log_type_enabled(v32, v31);
  v41[2] = v10;
  if (v33)
  {
    v41[0] = v2;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50[0] = v35;
    *v34 = 136315138;
    v41[1] = v30;
    if (v49 == 2)
    {
      v37 = 0xE800000000000000;
      v38 = 0x644974656B637542;
    }

    else
    {
      if (v49 == 1)
      {
        v36 = "RotatedAnonymousId";
      }

      else
      {
        if (v49)
        {
          v50[3] = v49;
          result = sub_1BB015138();
          __break(1u);
          return result;
        }

        v36 = "AnonymousSessionId";
      }

      v37 = (v36 - 32) | 0x8000000000000000;
      v38 = 0xD000000000000012;
    }

    v39 = sub_1BB01313C(v38, v37, v50);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_1BAFC4000, v32, v31, "[RotatingIdentifierXPCRequester] Request identifiers for type: %s.", v34, 0xCu);
    sub_1BAFC6A68(v35);
    MEMORY[0x1BFB07C70](v35, -1, -1);
    MEMORY[0x1BFB07C70](v34, -1, -1);
  }

  else
  {
  }

  v50[0] = v49;
  sub_1BAFE0B88();
  sub_1BB0149F8();
  sub_1BAFD86D0(&qword_1EBC3B220, &qword_1BB019180);
  sub_1BAFE0BDC();
  sub_1BB014A28();
  (*(v42 + 8))(v29, v43);

  return v50[0];
}

unint64_t sub_1BAFE0B88()
{
  result = qword_1EDD4F800[0];
  if (!qword_1EDD4F800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4F800);
  }

  return result;
}

unint64_t sub_1BAFE0BDC()
{
  result = qword_1EDD4E1C8;
  if (!qword_1EDD4E1C8)
  {
    sub_1BAFD9DF0(&qword_1EBC3B220, &qword_1BB019180);
    sub_1BAFE0C90(&qword_1EDD4F360, type metadata accessor for RotatingIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4E1C8);
  }

  return result;
}

uint64_t sub_1BAFE0C90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LoggingUAECollector.__allocating_init(collector:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BAFC6D0C(a1, v2 + 16);
  return v2;
}

uint64_t LoggingUAECollector.collect<A>(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = *v3;
  v64 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v60 = AssociatedTypeWitness;
  v8 = *(v59 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v58 = &v53[-v11];
  v12 = *(a2 - 8);
  v13 = v12[8];
  v15 = MEMORY[0x1EEE9AC00](v10, v14);
  v17 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v53[-v19];
  v21 = sub_1BB0149A8();
  v63 = *(v21 - 8);
  v22 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v53[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BB014978();
  v26 = v12[2];
  v26(v20, a1, a2);
  v61 = a1;
  v26(v17, a1, a2);

  v62 = v25;
  v27 = sub_1BB014988();
  v28 = sub_1BB014DC8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v56 = v21;
    v30 = v29;
    v55 = swift_slowAlloc();
    v65 = v4;
    v66 = v55;
    *v30 = 136446978;

    v31 = sub_1BB014B88();
    v57 = v27;
    v33 = sub_1BB01313C(v31, v32, &v66);
    v34 = v64;
    v54 = v28;
    v35 = v33;

    *(v30 + 4) = v35;
    *(v30 + 12) = 2050;
    *(v30 + 14) = (*(v34 + 32))(a2, v34);
    *(v30 + 22) = 2082;
    v36 = (*(v34 + 40))(a2, v34);
    v38 = v37;
    v39 = v12[1];
    v39(v20, a2);
    v40 = sub_1BB01313C(v36, v38, &v66);

    *(v30 + 24) = v40;
    *(v30 + 32) = 2082;
    v41 = v58;
    (*(v34 + 104))(a2, v34);
    v42 = v60;
    swift_getAssociatedConformanceWitness();
    sub_1BB014658();
    (*(v59 + 8))(v41, v42);
    v39(v17, a2);
    v43 = sub_1BB014A98();
    v45 = v44;

    v46 = sub_1BB01313C(v43, v45, &v66);

    *(v30 + 34) = v46;
    v47 = v57;
    _os_log_impl(&dword_1BAFC4000, v57, v54, "[%{public}s] Collecting event %{public}ld with handle %{public}s and properties %{public}s", v30, 0x2Au);
    v48 = v55;
    swift_arrayDestroy();
    MEMORY[0x1BFB07C70](v48, -1, -1);
    MEMORY[0x1BFB07C70](v30, -1, -1);

    (*(v63 + 8))(v62, v56);
  }

  else
  {
    v49 = v12[1];
    v49(v17, a2);

    v49(v20, a2);
    (*(v63 + 8))(v62, v21);
  }

  v50 = v4[5];
  v51 = v4[6];
  sub_1BAFC6AB4(v4 + 2, v50);
  return (v51[1].isa)(v61, a2, v64, v50, v51);
}

uint64_t LoggingUAECollector.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t UnfilledReasonInternal.description.getter(uint64_t a1)
{
  if (a1 <= 204)
  {
    if (a1 <= 201)
    {
      if (a1 == 200)
      {
        return 0x726F727245206F4ELL;
      }

      else if (a1 == 201)
      {
        return 0xD00000000000001DLL;
      }

      else
      {
LABEL_36:
        result = sub_1BB015138();
        __break(1u);
      }
    }

    else if (a1 == 202)
    {
      return 0xD000000000000019;
    }

    else if (a1 == 203)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0x78452074696D694CLL;
    }
  }

  else
  {
    switch(a1)
    {
      case 1000:
        return 0xD000000000000014;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1024:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_36;
      case 1010:
        return 0x206B726F7774654ELL;
      case 1020:
      case 1027:
        return 0xD00000000000001CLL;
      case 1021:
        return 0xD00000000000001DLL;
      case 1022:
      case 1023:
      case 1056:
        return 0xD000000000000023;
      case 1025:
        return 0x6920736461206F4ELL;
      case 1026:
      case 1029:
        goto LABEL_21;
      case 1028:
      case 1031:
        return 0xD00000000000002CLL;
      case 1030:
        return 0xD000000000000018;
      case 1049:
        return 0xD000000000000019;
      case 1050:
        return 0xD000000000000013;
      case 1051:
        return 0xD000000000000012;
      case 1052:
        goto LABEL_34;
      case 1053:
        return 0xD000000000000016;
      case 1054:
        return 0xD00000000000001ALL;
      case 1055:
        return 0xD000000000000015;
      case 1057:
        return 0x7373696D20414C53;
      case 1058:
        return 0xD00000000000001BLL;
      case 1059:
        return 0x7661206461206F4ELL;
      default:
        if (a1 == 205)
        {
LABEL_21:
          result = 0xD00000000000001ELL;
        }

        else
        {
          if (a1 != 206)
          {
            goto LABEL_36;
          }

LABEL_34:
          result = 0xD000000000000022;
        }

        break;
    }
  }

  return result;
}

uint64_t UnfilledReasonInternal.fulfillOrder.getter(uint64_t a1)
{
  if (a1 <= 204)
  {
    if (a1 <= 201)
    {
      if (a1 == 200)
      {
        return 0;
      }

      else if (a1 == 201)
      {
        return 4;
      }

      else
      {
LABEL_40:
        result = sub_1BB015138();
        __break(1u);
      }
    }

    else if (a1 == 202)
    {
      return 3;
    }

    else if (a1 == 203)
    {
      return 2;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 1000:
        return 10;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1024:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_40;
      case 1010:
        return 5;
      case 1020:
        return 7;
      case 1021:
        return 8;
      case 1022:
      case 1023:
        return 9;
      case 1025:
        return 28;
      case 1026:
        return 34;
      case 1027:
        return 35;
      case 1028:
        return 36;
      case 1029:
        return 31;
      case 1030:
        return 37;
      case 1031:
        return 38;
      case 1049:
        return 20;
      case 1050:
        return 21;
      case 1051:
        return 22;
      case 1052:
        return 23;
      case 1053:
        return 24;
      case 1054:
        return 25;
      case 1055:
        return 26;
      case 1056:
        return 27;
      case 1057:
        return 30;
      case 1058:
        return 32;
      case 1059:
        return 33;
      default:
        if (a1 == 206)
        {
          return 29;
        }

        if (a1 != 205)
        {
          goto LABEL_40;
        }

        result = 1;
        break;
    }
  }

  return result;
}

uint64_t sub_1BAFE1950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BAFE1A3C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BAFE1A3C(uint64_t result)
{
  if (((result - 1000) > 0x3B || ((1 << (result + 24)) & 0xFFE0000FEF00401) == 0) && (result - 200) >= 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BAFE1A88()
{
  result = qword_1EBC3B228;
  if (!qword_1EBC3B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B228);
  }

  return result;
}

unint64_t sub_1BAFE1AEC()
{
  result = qword_1EBC3B230;
  if (!qword_1EBC3B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B230);
  }

  return result;
}

uint64_t UnloadReason.init(rawValue:)(uint64_t result)
{
  if ((result - 9104) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BAFE1B60()
{
  result = qword_1EBC3B238;
  if (!qword_1EBC3B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B238);
  }

  return result;
}

uint64_t *sub_1BAFE1BB4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 9104;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t static MetricPropertyReason.reasonFromUnfilled(reason:)(uint64_t a1)
{
  if (a1 > 1048)
  {
    if (a1 > 1051)
    {
      if ((a1 - 1053) < 2)
      {
        return 9014;
      }

      if ((a1 - 1055) >= 2)
      {
        if (a1 == 1052)
        {
          return 9013;
        }

        return 0;
      }

      return 9016;
    }

    else if (a1 == 1049)
    {
      return 9017;
    }

    else if (a1 == 1050)
    {
      return 9011;
    }

    else
    {
      return 9012;
    }
  }

  result = 9008;
  if (a1 > 204)
  {
    if (a1 > 1028)
    {
      if (a1 == 1029)
      {
        return result;
      }

      if (a1 != 1030)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == 205)
      {
        return 9010;
      }

      if (a1 != 206)
      {
        return 0;
      }
    }

    return 9018;
  }

  if (a1 > 202)
  {
    if (a1 == 203)
    {
      return 9007;
    }

    else
    {
      return 9009;
    }
  }

  else if (a1 != 201)
  {
    if (a1 == 202)
    {
      return 9006;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BAFE1D48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BAFE1E2C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BAFE1E2C(uint64_t result)
{
  if ((result - 9019) < 0xFFFFFFFFFFFFFFEELL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BAFE1E48()
{
  result = qword_1EDD4EF80;
  if (!qword_1EDD4EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4EF80);
  }

  return result;
}

unint64_t sub_1BAFE1E9C()
{
  result = qword_1EBC3B240;
  if (!qword_1EBC3B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B240);
  }

  return result;
}

uint64_t UnusedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 9203) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BAFE1F10()
{
  result = qword_1EBC3B248;
  if (!qword_1EBC3B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B248);
  }

  return result;
}

uint64_t *sub_1BAFE1F64@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 9203;
  v4 = __CFADD__(v3, 2);
  v5 = v3 < 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t UAECollector.__allocating_init(receiver:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t UAECollector.init(receiver:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1BAFE2D08(a1, v1);
}

void UAECollector.collect<A>(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BB0149A8();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BB014398();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v18 = &v39 - v17;
  (*(a3 + 104))(a2, a3);
  swift_getAssociatedConformanceWitness();
  v19 = sub_1BB014658();
  (*(v14 + 8))(v18, AssociatedTypeWitness);
  v50 = sub_1BAFE269C(v19);

  v20 = (*(a3 + 112))(a2, a3);
  v49 = sub_1BAFE29C0(v20);

  v51 = (*(a3 + 48))(a2, a3);
  v48 = (*(a3 + 32))(a2, a3);
  (*(a3 + 40))(a2, a3);
  (*(a3 + 64))(a2, a3);
  v22 = v21;
  (*(a3 + 96))(a2, a3);
  v46 = (*(a3 + 80))(a2, a3);
  v47 = sub_1BB014B38();

  if (v22)
  {
    v23 = sub_1BB014B38();
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_allocWithZone(MEMORY[0x1E69861A8]);
  v25 = sub_1BB014C68();

  sub_1BAFD86D0(&qword_1EBC3B250, &unk_1BB019628);
  v26 = sub_1BB014A78();

  sub_1BAFD86D0(&qword_1EBC3B258, &qword_1BB019638);
  v27 = sub_1BB014A78();

  v28 = v47;
  v29 = [v24 initWithPurpose:v51 metric:v48 contentIdentifier:0 contextIdentifier:0 handle:v47 secondaryHandle:v23 branch:v25 properties:v26 internalProperties:v27 relayData:0 environment:0 order:v46 options:0];

  if (v29)
  {
    v30 = (*(a3 + 56))(a2, a3);
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v30))
    {
      [v29 setSource_];
      [v29 setOptions_];
      (*(a3 + 88))(a2, a3);
      if (v31)
      {
        v32 = sub_1BB014B38();
      }

      else
      {
        v32 = 0;
      }

      [v29 setTrace_];

      v37 = v42;
      (*(a3 + 120))(a2, a3);
      v38 = sub_1BB014338();
      (*(v43 + 8))(v37, v44);
      [v29 setTimestamp_];

      [*(v45 + 16) receivedMetric_];
      return;
    }

    __break(1u);
    return;
  }

  v33 = v39;
  sub_1BB014978();
  v34 = sub_1BB014988();
  v35 = sub_1BB014DB8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1BAFC4000, v34, v35, "Unable to generate APMetric from CanonicalUAE!", v36, 2u);
    MEMORY[0x1BFB07C70](v36, -1, -1);
  }

  (*(v40 + 8))(v33, v41);
}

uint64_t sub_1BAFE269C(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v42 = result;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v9 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1BAFDB9B0(*(v1 + 56) + 32 * v12, v40);
      *&v39 = v15;
      *(&v39 + 1) = v14;
      v36 = v39;
      v37 = v40[0];
      v38 = v40[1];
      sub_1BAFDB9B0(&v37, &v34);

      sub_1BAFD86D0(&qword_1EBC3B268, &qword_1BB019690);
      if (swift_dynamicCast())
      {
        break;
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      sub_1BAFE2D64(&v31, &unk_1EBC3B270, qword_1BB019698);
      result = sub_1BAFE2D64(&v36, &qword_1EBC3B260, &unk_1BB0199C0);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v16 = *(&v32 + 1);
    v17 = v33;
    sub_1BAFC6AB4(&v31, *(&v32 + 1));
    v18 = (*(v17 + 8))(v16, v17);
    sub_1BAFC6A68(&v31);
    v35[0] = v37;
    v35[1] = v38;
    v34 = v36;
    v19 = *(v2 + 16);
    if (*(v2 + 24) <= v19)
    {
      sub_1BAFDAE2C(v19 + 1, 1);
      v2 = v41;
    }

    v20 = v34;
    v21 = *(v2 + 40);
    sub_1BB0151B8();
    sub_1BB014BD8();
    result = sub_1BB0151F8();
    v22 = v2 + 64;
    v23 = -1 << *(v2 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v2 + 64 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v22 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v2 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v2 + 48) + 16 * v26) = v20;
    *(*(v2 + 56) + 8 * v26) = v18;
    ++*(v2 + 16);
    result = sub_1BAFC6A68(v35);
    v1 = v42;
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BAFE29C0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1BAFDB9B0(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_1BAFDB9B0(&v35, v31);

    sub_1BAFD86D0(&qword_1EBC3B258, &qword_1BB019638);
    if (swift_dynamicCast())
    {
      v16 = v32;
      if (!v32)
      {
        goto LABEL_17;
      }

      v33[0] = v35;
      v33[1] = v36;
      v32 = v34;
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {
        sub_1BAFDAE18(v17 + 1, 1);
        v2 = v39;
      }

      v18 = v32;
      v19 = *(v2 + 40);
      sub_1BB0151B8();
      v40 = *(&v18 + 1);
      sub_1BB014BD8();
      result = sub_1BB0151F8();
      v20 = v2 + 64;
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v29 = (*(v2 + 48) + 16 * v24);
      v30 = v40;
      *v29 = v18;
      v29[1] = v30;
      *(*(v2 + 56) + 8 * v24) = v16;
      ++*(v2 + 16);
      result = sub_1BAFC6A68(v33);
    }

    else
    {
      *&v32 = 0;
LABEL_17:
      result = sub_1BAFE2D64(&v34, &qword_1EBC3B260, &unk_1BB0199C0);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t UAECollector.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t UAECollector.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFE2D64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BAFD86D0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t IdentifierData.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IdentifierData();
  v3 = v0 + v2[9];
  v5 = *v3;
  v4 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = v3[32];
  if (v8)
  {
    if (v8 != 1)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_1BB014F58();
      MEMORY[0x1BFB06D20](0xD00000000000001CLL, 0x80000001BB01FDE0);
      v13 = sub_1BB0150F8();
      MEMORY[0x1BFB06D20](v13);

      MEMORY[0x1BFB06D20](0xD000000000000016, 0x80000001BB01FE00);
      v11 = v4;
      v12 = v6;
      goto LABEL_7;
    }

    sub_1BB014F58();

    v20 = 0xD000000000000015;
    v21 = 0x80000001BB01FE40;
    MEMORY[0x1BFB06D20](v5, v4);
    v9 = 0x746174536170202CLL;
    v10 = 0xEC000000203A7375;
  }

  else
  {
    sub_1BB014F58();

    v20 = 0xD000000000000017;
    v21 = 0x80000001BB01FE60;
    MEMORY[0x1BFB06D20](v5, v4);
    v9 = 0x495344736D61202CLL;
    v10 = 0xEB00000000203A44;
  }

  MEMORY[0x1BFB06D20](v9, v10);
  v11 = v6;
  v12 = v7;
LABEL_7:
  MEMORY[0x1BFB06D20](v11, v12);
  sub_1BB014F58();
  MEMORY[0x1BFB06D20](0xD000000000000017, 0x80000001BB01FE20);
  MEMORY[0x1BFB06D20](*v0, v0[1]);
  MEMORY[0x1BFB06D20](0x617269707865202CLL, 0xEE00203A6E6F6974);
  v14 = v2[5];
  sub_1BB014398();
  sub_1BAFE31B4();
  v15 = sub_1BB0150F8();
  MEMORY[0x1BFB06D20](v15);

  MEMORY[0x1BFB06D20](0x657461657263202CLL, 0xEB00000000203A64);
  v16 = v1 + v2[6];
  v17 = sub_1BB0150F8();
  MEMORY[0x1BFB06D20](v17);

  MEMORY[0x1BFB06D20](0x656372756F73202CLL, 0xEB00000000203A73);
  v18 = MEMORY[0x1BFB06DB0](*(v1 + v2[7]), MEMORY[0x1E69E6530]);
  MEMORY[0x1BFB06D20](v18);

  MEMORY[0x1BFB06D20](8236, 0xE200000000000000);
  MEMORY[0x1BFB06D20](v20, v21);

  MEMORY[0x1BFB06D20](0x7073656D616E202CLL, 0xED0000203A656361);
  MEMORY[0x1BFB06D20](*(v1 + v2[8]), *(v1 + v2[8] + 8));
  return 0;
}

uint64_t type metadata accessor for IdentifierData()
{
  result = qword_1EDD4F898;
  if (!qword_1EDD4F898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BAFE31B4()
{
  result = qword_1EDD4FF58;
  if (!qword_1EDD4FF58)
  {
    sub_1BB014398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4FF58);
  }

  return result;
}

uint64_t sub_1BAFE320C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BAFE3C60(v5, v7) & 1;
}

uint64_t sub_1BAFE325C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAFE32C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BAFE3C4C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1BB0150E8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1BB014CB8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1BAFE33F4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1BAFE33F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1BAFE3B34(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1BAFE3940((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BAFE3B48(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1BAFE3B48((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1BAFE3940((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1BAFE3940(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_1BAFE3B48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAFD86D0(&qword_1EBC3B280, &qword_1BB019808);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1BAFE3C60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  if (!v8)
  {
    if (!*(a2 + 32))
    {
      v12 = *(a2 + 16);
      v13 = *(a2 + 24);
      v14 = v4 == *a2 && v5 == *(a2 + 8);
      if (v14 || (sub_1BB015118() & 1) != 0)
      {
        if (v6 != v12 || v7 != v13)
        {
          goto LABEL_29;
        }

        return 1;
      }
    }

    return 0;
  }

  if (v8 == 1)
  {
    if (*(a2 + 32) == 1)
    {
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
      v11 = v4 == *a2 && v5 == *(a2 + 8);
      if (v11 || (sub_1BB015118() & 1) != 0)
      {
        if (v6 != v9 || v7 != v10)
        {
          goto LABEL_29;
        }

        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 32) != 2 || v4 != *a2)
  {
    return 0;
  }

  if (v5 == *(a2 + 8) && v6 == *(a2 + 16))
  {
    return 1;
  }

LABEL_29:

  return sub_1BB015118();
}

uint64_t _s17AdPlatformsCommon14IdentifierDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1BB014418();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BB014428();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1 == *a2 && a1[1] == a2[1];
  if (!v16 && (sub_1BB015118() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1BB014408();
  v45 = type metadata accessor for IdentifierData();
  v46 = v10;
  v17 = v45[5];
  v18 = v5[13];
  v43 = *MEMORY[0x1E6969A98];
  v42 = v18;
  v18(v9);
  v44 = a1;
  v19 = sub_1BB0143F8();
  v20 = v5[1];
  v20(v9, v4);
  v23 = *(v11 + 8);
  v22 = v11 + 8;
  v21 = v23;
  v23(v15, v46);
  if (v19)
  {
    goto LABEL_11;
  }

  v24 = v15;
  v39 = v21;
  v40 = v20;
  v41 = v22;
  v25 = v44;
  v26 = v45;
  v27 = v45[9];
  v49 = *(v44 + v27 + 32);
  v28 = *(v44 + v27 + 16);
  v48[0] = *(v44 + v27);
  v48[1] = v28;
  v29 = a2 + v27;
  v51 = v29[32];
  v30 = *(v29 + 1);
  v50[0] = *v29;
  v50[1] = v30;
  if (v49 != v51)
  {
    goto LABEL_11;
  }

  v31 = v24;
  sub_1BB014408();
  v32 = v26[6];
  v42(v9, v43, v4);
  v33 = sub_1BB0143F8();
  v40(v9, v4);
  v39(v31, v46);
  if (v33)
  {
    goto LABEL_11;
  }

  v34 = v45;
  v47 = *(v25 + v45[7]);

  sub_1BAFE32C0(&v47);
  v35 = v47;
  v47 = *(a2 + v34[7]);

  sub_1BAFE32C0(&v47);
  v36 = sub_1BAFE325C(v35, v47);

  if (v36)
  {
    v37 = sub_1BAFE3C60(v48, v50);
  }

  else
  {
LABEL_11:
    v37 = 0;
  }

  return v37 & 1;
}

void sub_1BAFE4114()
{
  sub_1BB014398();
  if (v0 <= 0x3F)
  {
    sub_1BAFE41B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}