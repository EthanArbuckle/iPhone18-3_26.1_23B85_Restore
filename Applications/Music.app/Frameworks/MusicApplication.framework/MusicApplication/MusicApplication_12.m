id sub_10C858(void *a1)
{
  v13 = 0;
  result = [a1 results];
  if (!result)
  {
    goto LABEL_8;
  }

  v3 = result;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = &v13 + 1;
  v4[4] = &v13;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_112A1C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_5794C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_151;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 enumerateItemsUsingBlock:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v9 = HIBYTE(v13);
  v10 = v13;

  if (v10)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return (v11 | v9);
}

void sub_10C9F4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, BOOL *a5, _BYTE *a6)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = [v9 innermostModelObject];
    swift_unknownObjectRelease();
    v13 = v10;
    v11 = sub_10AC20(v10);

    *a5 = v11 == 0;
    v12 = *a6;
    if (v12 == 1)
    {
      *a6 = 1;
    }

    else
    {
      LOBYTE(v12) = sub_10E28C() == 2;
      *a6 = v12;
      LOBYTE(v12) = v12 | *a5;
    }

    *a3 = v12 & 1;
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10CB1C(void *a1, void *a2, id (*a3)())
{
  v4 = v3;
  if (!a1)
  {
    v8 = 0;
    v36 = 0;
    if (!a2)
    {
LABEL_22:
      v10 = 0;
      goto LABEL_23;
    }

LABEL_10:
    v11 = a2;
    v12 = sub_10C858(v11);
    if (v12 > 0xFFu || a1 && (v13 = v12, v14 = sub_10E28C(), LOBYTE(v12) = v13, v14 == 2))
    {
      v8 = 1;
    }

    LOBYTE(v36) = v8 & 1;
    HIBYTE(v36) = (v8 | v12) & 1;

    v10 = 0;
    a3 = 0;
    if (HIBYTE(v36))
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v8 = sub_10CFD4();
  if (a2)
  {
    goto LABEL_10;
  }

  v9 = a1;
  LOBYTE(v36) = (sub_10E28C() == 2) | v8 & 1;
  if (v36 || ((objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass())) && a3 - 3 >= 2)
  {
    HIBYTE(v36) = 1;

    a3 = 0;
LABEL_8:
    v10 = 0;
LABEL_26:
    sub_17654(v10);
    sub_17654(a3);
    return 1;
  }

  HIBYTE(v36) = a3 == 0;

  if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_22;
    }
  }

  v15 = objc_opt_self();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = v4;
  v16[4] = &v36 + 1;
  v16[5] = &v36;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1129C4;
  *(v17 + 24) = v16;
  v34 = sub_36C08;
  v35 = v17;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1822E0;
  v33 = &block_descriptor_122;
  v18 = _Block_copy(&aBlock);
  v19 = v9;
  v20 = v4;

  [v15 performWithoutEnforcement:v18];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v10 = sub_1129C4;
  if ((v36 & 0x100) != 0)
  {
    a3 = 0;
    goto LABEL_26;
  }

LABEL_23:
  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = &v36 + 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_11296C;
  *(v25 + 24) = v24;
  v34 = sub_36C08;
  v35 = v25;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1822E0;
  v33 = &block_descriptor_112;
  v26 = _Block_copy(&aBlock);
  v27 = a1;

  [v23 performWithoutEnforcement:v26];
  _Block_release(v26);
  v28 = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIBYTE(v36) == 1)
  {
    a3 = sub_11296C;
    goto LABEL_26;
  }

  v29 = v36;
  sub_17654(v10);
  sub_17654(sub_11296C);
  return v29;
}

uint64_t sub_10CFD4()
{
  v1 = [v0 identifiers];
  v2 = [v1 personalizedStore];
  if (v2)
  {
    v3 = [v2 cloudID];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  v13 = 0;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v1;
  v5[4] = &v13;
  v5[5] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1129D0;
  *(v6 + 24) = v5;
  aBlock[4] = sub_36C08;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_132;
  v7 = _Block_copy(aBlock);
  v8 = v0;
  v9 = v1;

  [v4 performWithoutEnforcement:v7];

  _Block_release(v7);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

void sub_10D1B4(uint64_t a1, uint64_t a2, BOOL *a3, unsigned __int8 *a4)
{
  if (a1)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 representativeSong];
      if (v7)
      {
        v8 = v7;
        v9 = v7;
        v10 = sub_10AC20(v8);

        *a3 = v10 == 0;
      }

      if ((*a4 & 1) == 0)
      {
        v11 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
        MPModelObject.bestIdentifier(for:)(*v11, 1u);
        v13 = v12 != 0;

LABEL_10:
        *a4 = v13;
        return;
      }
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (!v14)
      {
        return;
      }

      if ((*a4 & 1) == 0)
      {
        v15 = v14;
        v16 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
        MPModelObject.bestIdentifier(for:)(*v16, 1u);
        if (v17)
        {

          v13 = 1;
        }

        else
        {
          v13 = [v15 isOwner];
        }

        goto LABEL_10;
      }
    }

    v13 = 1;
    goto LABEL_10;
  }
}

id sub_10D2F8(id result, _BYTE *a2)
{
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result isArtistUploadedContent];
      *a2 = result;
    }
  }

  return result;
}

void sub_10D350(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v11 - 8);
  v13 = &aBlock[-1] - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a1)
    {
      if (qword_DE69F0 != -1)
      {
        swift_once();
      }

      v16 = sub_AB4BC0();
      __swift_project_value_buffer(v16, qword_E71320);
      v17 = sub_AB4BA0();
      v18 = sub_AB9F50();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "ModelPlayabilityController - handleDeterminedStatus - Fetching subscription status", v19, 2u);
      }

      v20 = [objc_opt_self() sharedStatusController];
      sub_15F28(a4, v31);
      v21 = swift_allocObject();
      v21[2] = v15;
      v21[3] = a3;
      sub_17704(v31, (v21 + 4));
      v21[16] = a5;
      v21[17] = a6;
      aBlock[4] = sub_11150C;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_35;
      v22 = _Block_copy(aBlock);
      v23 = a3;
      v24 = v15;
      sub_307CC(a5);

      [v20 getSubscriptionStatusWithCompletionHandler:v22];
      _Block_release(v22);
    }

    else
    {
      v25 = sub_AB9990();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      sub_15F28(a4, v31);
      sub_AB9940();
      v26 = a3;
      v20 = v15;
      sub_307CC(a5);
      v27 = sub_AB9930();
      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = &protocol witness table for MainActor;
      v28[4] = v20;
      v28[5] = a3;
      sub_17704(v31, (v28 + 6));
      v28[18] = a5;
      v28[19] = a6;
      sub_DBDC8(0, 0, v13, &unk_AFE838, v28);
    }
  }
}

uint64_t sub_10D6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_AB9940();
  v8[7] = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_10D75C, v10, v9);
}

uint64_t sub_10D75C()
{
  v1 = sub_10AC20(*(v0 + 24));
  if (v1)
  {
    if (v1 == 7)
    {
      sub_1101F4(*(v0 + 24), *(v0 + 32));
    }

    v2 = 0;
    v3 = *(v0 + 40);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v2 = 1;
    v3 = *(v0 + 40);
    if (v3)
    {
LABEL_5:
      v3(v2);
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_10D800(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_AB9990();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_15F28(a5, v36);
  sub_AB9940();
  v17 = a4;
  v18 = a3;
  sub_307CC(a6);
  v19 = sub_AB9930();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  v20[5] = a4;
  sub_17704(v36, (v20 + 6));
  v20[18] = a6;
  v20[19] = a7;
  sub_DBDC8(0, 0, v15, &unk_AFE840, v20);

  if (qword_DE69F0 != -1)
  {
    swift_once();
  }

  v21 = sub_AB4BC0();
  __swift_project_value_buffer(v21, qword_E71320);
  v22 = a1;
  v23 = v18;
  v24 = sub_AB4BA0();
  v25 = sub_AB9F50();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v26 = 136446466;
    static ApplicationCapabilities.shared.getter(v36);
    sub_70C54(v36);
    if (BYTE8(v36[0]))
    {
      v27 = 1702195828;
    }

    else
    {
      v27 = 0x65736C6166;
    }

    if (BYTE8(v36[0]))
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = sub_425E68(v27, v28, &v35);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    v34 = a1;
    v30 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF05E8);
    v31 = sub_AB9350();
    v33 = sub_425E68(v31, v32, &v35);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_0, v24, v25, "ModelPlayabilityController - handleDeterminedStatus - Subscription status fetched - hasSubscriptionFullCatalogPlaybackCapability=%{public}s - status=%{public}s", v26, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10DB34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_DE69F0 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, qword_E71320);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "ModelPlayabilityController - handleAccountRequiredStatus - Requesting", v9, 2u);
  }

  v3[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_shouldSkipSubscriptionFetch] = 1;
  if (qword_DE6D60 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = v3;

  sub_49FDA4(3, sub_112928, v10);
}

uint64_t sub_10DCC8(unsigned __int8 a1, uint64_t a2, _BYTE *a3, uint64_t (*a4)(uint64_t))
{
  v7 = (a2 == 0) & a1;
  sub_13C80(0, &qword_DF0600);
  v8 = static ICUserIdentityStore.activeAccountDSID.getter();
  v9 = v7;
  if (v8)
  {

    v9 = 1;
  }

  a3[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_hasActiveAccount] = v9;
  a3[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_shouldSkipSubscriptionFetch] = 0;
  if (qword_DE69F0 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_E71320);
  v11 = a3;
  v12 = sub_AB4BA0();
  v13 = sub_AB9F50();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 67109378;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0608);
    v16 = sub_AB9350();
    v18 = sub_425E68(v16, v17, &v20);

    *(v14 + 10) = v18;
    _os_log_impl(&dword_0, v12, v13, "ModelPlayabilityController - handleAccountRequiredStatus - Requested - success=%{BOOL}d - hasActiveAccount=%{public}s", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  return a4(v7);
}

uint64_t sub_10DEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_10DF60, v6, v5);
}

uint64_t sub_10DF60()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_DE6830 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_E70E40 object:*(v0 + 16) userInfo:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10E194(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = [objc_opt_self() standardUserDefaults];
  [v3 setPrefersSpatialDownloads:1];

  return a2();
}

unint64_t sub_10E234()
{
  result = qword_DF05E0;
  if (!qword_DF05E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF05E0);
  }

  return result;
}

uint64_t sub_10E28C()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1129DC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_142;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_10E3FC(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    result = [v3 keepLocalManagedStatus];
LABEL_7:
    *a2 = result;
    return result;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {
    result = [result anyObject];
    if (result)
    {
      v5 = result;
      v6 = sub_10E28C();

      result = v6;
    }

    goto LABEL_7;
  }

  return result;
}

void sub_10E540(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v7 = [a2 universalStore];
    if (v7)
    {
      v8 = [v7 purchasedAdamID];
      swift_unknownObjectRelease();
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else if (!a4)
    {
      v8 = 0;
LABEL_10:
      LOBYTE(v9) = v8 != 0;
      goto LABEL_11;
    }

LABEL_8:
    LOBYTE(v9) = 1;
LABEL_11:
    *a3 = v9 & 1;
    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    if (a4)
    {
      goto LABEL_8;
    }

    v11 = [v10 representativeSong];
    if (v11)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    if (!a4)
    {
      v9 = [v13 type] == &dword_0 + 1;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v12 = [v14 innermostModelObject];
    goto LABEL_22;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v11 = [v15 anyObject];
    if (v11)
    {
LABEL_16:
      v12 = v11;
LABEL_22:
      LOBYTE(v9) = sub_10CFD4();

      goto LABEL_11;
    }

LABEL_25:
    LOBYTE(v9) = 0;
    goto LABEL_11;
  }
}

void sub_10E728(unsigned __int8 *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 innermostModelObject];
    }

    else
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
        goto LABEL_13;
      }

      v8 = [v12 anyObject];
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v5 = v10;
      goto LABEL_7;
    }

LABEL_13:
    v11 = 2;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = a2;
LABEL_7:
  v11 = [v5 isExplicitSong];

LABEL_8:
  *a1 = v11;
}

uint64_t sub_10E82C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DF04F8);
  __swift_project_value_buffer(v0, qword_DF04F8);
  return static Logger.music(_:)();
}

void *sub_10E890(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_10E928(uint64_t a1, uint64_t a2)
{

  return sub_10EA08(a1, a2, sub_10EBE4, sub_10EBE4);
}

void *sub_10E998(uint64_t a1, uint64_t a2)
{

  return sub_10EA08(a1, a2, sub_10F038, sub_10F038);
}

void *sub_10EA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_10E890(v15, v10, a2, a1, a4);
  }

  return v13;
}

Swift::Int sub_10EBE4(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = result;
  v42 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v23 = 0;
    v24 = 1 << *(a3 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a3 + 56);
    v27 = (v24 + 63) >> 6;
    v28 = a4 + 56;
    v41 = 0;
    do
    {
LABEL_44:
      if (v26)
      {
        v29 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
      }

      else
      {
        v30 = v23;
        do
        {
          v23 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          if (v23 >= v27)
          {
LABEL_78:

            return sub_1CA530(v40, a2, v41, a3);
          }

          v31 = *(a3 + 56 + 8 * v23);
          ++v30;
        }

        while (!v31);
        v29 = __clz(__rbit64(v31));
        v26 = (v31 - 1) & v31;
      }

      v32 = v29 | (v23 << 6);
      v33 = *(*(a3 + 48) + v32);
      sub_ABB5C0();
      v34 = v33 - 3;
      if ((v33 - 3) >= 6)
      {
        sub_ABB5D0(6uLL);
        v34 = v33;
      }

      sub_ABB5D0(v34);
      result = sub_ABB610();
      v35 = -1 << *(v42 + 32);
      v36 = result & ~v35;
    }

    while (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0);
    v37 = ~v35;
    while (1)
    {
      v38 = *(*(v42 + 48) + v36);
      if (v38 > 5)
      {
        switch(v38)
        {
          case 6u:
            if (v33 == 6)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
          case 7u:
            if (v33 == 7)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
          case 8u:
            if (v33 == 8)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
        }
      }

      else
      {
        switch(v38)
        {
          case 3u:
            if (v33 == 3)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
          case 4u:
            if (v33 == 4)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
          case 5u:
            if (v33 == 5)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
        }
      }

      if ((v33 - 9) <= 0xF9u && v38 == v33)
      {
LABEL_76:
        *(v40 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        if (!__OFADD__(v41, 1))
        {
          ++v41;
          goto LABEL_44;
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_56:
      v36 = (v36 + 1) & v37;
      if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }

  v5 = 0;
  v6 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a3 + 56;
  v41 = 0;
  do
  {
LABEL_6:
    if (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
    }

    else
    {
      v13 = v5;
      do
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_80;
        }

        if (v5 >= v10)
        {
          goto LABEL_78;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
      }

      while (!v14);
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
    }

    v15 = *(*(a4 + 48) + (v12 | (v5 << 6)));
    sub_ABB5C0();
    v16 = v15 - 3;
    if ((v15 - 3) >= 6)
    {
      sub_ABB5D0(6uLL);
      v16 = v15;
    }

    sub_ABB5D0(v16);
    result = sub_ABB610();
    v17 = -1 << *(a3 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    a4 = v42;
  }

  while (((1 << v18) & *(v11 + 8 * (v18 >> 6))) == 0);
  v21 = ~v17;
  while (1)
  {
    v22 = *(*(a3 + 48) + v18);
    if (v22 > 5)
    {
      break;
    }

    switch(v22)
    {
      case 3u:
        if (v15 == 3)
        {
          goto LABEL_38;
        }

        break;
      case 4u:
        if (v15 == 4)
        {
          goto LABEL_38;
        }

        break;
      case 5u:
        if (v15 == 5)
        {
          goto LABEL_38;
        }

        break;
      default:
        goto LABEL_32;
    }

LABEL_18:
    v18 = (v18 + 1) & v21;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if ((*(v11 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_6;
    }
  }

  switch(v22)
  {
    case 6u:
      if (v15 == 6)
      {
        goto LABEL_38;
      }

      goto LABEL_18;
    case 7u:
      if (v15 == 7)
      {
        goto LABEL_38;
      }

      goto LABEL_18;
    case 8u:
      if (v15 == 8)
      {
        goto LABEL_38;
      }

      goto LABEL_18;
  }

LABEL_32:
  if ((v15 - 9) > 0xF9u || v22 != v15)
  {
    goto LABEL_18;
  }

LABEL_38:
  v40[v19] |= v20;
  if (!__OFADD__(v41, 1))
  {
    ++v41;
    goto LABEL_6;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_10F038(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_ABB5C0();

      sub_AB93F0();
      v26 = sub_ABB610();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_ABB3C0() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1CB5FC(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_ABB5C0();

      sub_AB93F0();
      v39 = sub_ABB610();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_ABB3C0() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_10F414()
{
  sub_13C80(0, &unk_DE8EB0);
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_AF4EC0;
    *(v0 + 32) = sub_AB92A0();
    *(v0 + 40) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF8820;
    *(inited + 32) = sub_AB92A0();
    *(inited + 40) = v3;
    if (qword_DE6840 != -1)
    {
      swift_once();
    }

    v4 = qword_DF04E0;
    *(inited + 48) = qword_DF04E0;
    *(inited + 56) = sub_AB92A0();
    *(inited + 64) = v5;
    v6 = qword_DE6850;
    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = qword_DF04F0;
    *(inited + 72) = qword_DF04F0;
    *(inited + 80) = sub_AB92A0();
    *(inited + 88) = v9;
    v10 = qword_DE6848;
    v11 = v8;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_DF04E8;
    *(inited + 96) = qword_DF04E8;
    v13 = v12;
    sub_96EA4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
LABEL_20:
    swift_arrayDestroy();
    v27 = objc_allocWithZone(MPPropertySet);
    isa = sub_AB9740().super.isa;

    sub_13C80(0, &qword_DEA550);
    v29 = sub_AB8FD0().super.isa;

    v30 = [v27 initWithProperties:isa relationships:v29];

    return v30;
  }

  sub_13C80(0, &unk_DE9C00);
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_AF4EC0;
    *(v14 + 32) = sub_AB92A0();
    *(v14 + 40) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_AF85F0;
    *(v16 + 32) = sub_AB92A0();
    *(v16 + 40) = v17;
    if (qword_DE6840 != -1)
    {
      swift_once();
    }

    v18 = qword_DF04E0;
    *(v16 + 48) = qword_DF04E0;
LABEL_17:
    *(v16 + 56) = sub_AB92A0();
    *(v16 + 64) = v22;
    v23 = qword_DE6850;
    v24 = v18;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = qword_DF04F0;
    *(v16 + 72) = qword_DF04F0;
    v26 = v25;
    sub_96EA4(v16);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
    goto LABEL_20;
  }

  sub_13C80(0, &unk_E03780);
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_AF4EC0;
    *(v19 + 32) = sub_AB92A0();
    *(v19 + 40) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_AF85F0;
    *(v16 + 32) = sub_AB92A0();
    *(v16 + 40) = v21;
    if (qword_DE6840 != -1)
    {
      swift_once();
    }

    v18 = qword_DF04E0;
    *(v16 + 48) = qword_DF04E0;
    goto LABEL_17;
  }

  v32 = [objc_opt_self() emptyPropertySet];

  return v32;
}

void sub_10F978()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.playbackController.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_425E68(0xD000000000000039, 0x8000000000B515C0, &v10);
    _os_log_impl(&dword_0, v5, v6, "Unexpected call to %s in legacy Music.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  (*(v1 + 8))(v3, v0);
}

id sub_10FB2C(uint64_t a1, void *a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  if (!a1)
  {
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
      }
    }

    goto LABEL_19;
  }

  v7 = v6;
  if (!a2 || (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_16:
    [v7 hasVideo];
LABEL_19:
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    goto LABEL_20;
  }

  v9 = v8;
  v10 = MPModelPropertyAlbumPreorder;
  v11 = a2;
  if (![v9 hasLoadedValueForKey:v10] || !objc_msgSend(v9, "isPreorder"))
  {

    goto LABEL_16;
  }

  [v7 hasVideo];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();

LABEL_20:
  v12 = sub_AB9260();

  v13 = [objc_opt_self() alertControllerWithTitle:0 message:v12 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v14 = sub_AB9260();

  v15 = [objc_opt_self() actionWithTitle:v14 style:0 handler:0];

  [v13 addAction:v15];
  return v13;
}

void sub_10FFD8()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v2 = sub_AB9260();

  v3 = [objc_opt_self() alertControllerWithTitle:v2 message:0 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v4 = sub_AB9260();

  v5 = [objc_opt_self() actionWithTitle:v4 style:0 handler:0];

  [v3 addAction:v5];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v3, 1, 1, 0, 0);
  UIViewController.dismiss(after:)(480.0);
}

void sub_1101F4(void *a1, uint64_t a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = [objc_opt_self() sharedController];
  v7 = [v6 isSubscriptionAvailable];

  if (v7)
  {
    if (qword_DE69F0 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E71320);
    v9 = a1;
    v10 = sub_AB4BA0();
    v11 = sub_AB9F50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31[0] = v13;
      *v12 = 136446210;
      if (a1)
      {
        v14 = sub_27ECD0(&off_CEFD20);
        v15 = MPModelObject.humanDescription(including:)(v14);
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v32[0] = v15;
      v32[1] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
      v23 = sub_AB9350();
      v25 = sub_425E68(v23, v24, v31);

      *(v12 + 4) = v25;
      _os_log_impl(&dword_0, v10, v11, "ModelPlayabilityController will display upsell- handleSubscriptionRequiredStatus received - model=%{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    sub_15F28(a2, v32);
    v26 = *JSBridge.shared.unsafeMutableAddressor();
    sub_1116A8(v32, v31);
    v27 = swift_allocObject();
    *(v27 + 16) = 5;
    *(v27 + 24) = a1;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 1;
    sub_111814(v31, v27 + 64);
    *(v27 + 160) = 0;
    *(v27 + 168) = 0;
    v28 = *&stru_B8.segname[(swift_isaMask & *v26) + 16];
    v29 = v9;
    v30 = v26;
    v28(sub_111884, v27);
    sub_111898(v32);
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v18 = sub_AB9260();

    v19 = sub_AB9260();

    v20 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v21 = sub_AB9260();

    v22 = [objc_opt_self() actionWithTitle:v21 style:0 handler:0];

    [v20 addAction:v22];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v20, 1, 1, 0, 0);
  }
}

id sub_110714(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  result = [a1 results];
  if (result)
  {
    v2 = result;
    v3 = [result itemsInSectionAtIndex:0];

    v4 = sub_AB9760();
    v5 = sub_12DAB0(v4);

    if (v5)
    {
      if (v5 >> 62)
      {
LABEL_23:
        v17 = sub_ABB060();
      }

      else
      {
        v17 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      }

      v6 = 0;
      v16 = v19;
      while (1)
      {
        v7 = v17 == v6;
        if (v17 == v6)
        {
          break;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_3602FC(v6, v5);
        }

        else
        {
          if (v6 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_21;
          }

          v8 = *(v5 + 8 * v6 + 32);
        }

        v9 = v8;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v20 = 2;
        v10 = objc_opt_self();
        v11 = swift_allocObject();
        *(v11 + 16) = &v20;
        *(v11 + 24) = v9;
        v12 = swift_allocObject();
        *(v12 + 16) = sub_111AF0;
        *(v12 + 24) = v11;
        v19[2] = sub_2D4D0;
        v19[3] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v19[0] = sub_1822E0;
        v19[1] = &block_descriptor_86;
        v13 = _Block_copy(aBlock);
        v14 = v9;

        [v10 performWithoutEnforcement:{v13, v16}];

        _Block_release(v13);
        LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

        if (v10)
        {
          goto LABEL_22;
        }

        v15 = v20;

        if (v15 != 2)
        {
          ++v6;
          if (v15)
          {
            continue;
          }
        }

        break;
      }

      return v7;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1109D4(id a1, void *a2, id (*a3)(), char a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v51 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  if (!a1)
  {
    v16 = 0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        v16 = swift_dynamicCastObjCClass() != 0;
        if ((a4 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }
  }

  v16 = 1;
  if (a4)
  {
LABEL_6:
    a3 = sub_10AC20(a1);
  }

LABEL_7:
  if (!a2)
  {
    goto LABEL_16;
  }

  v17 = [a2 results];
  if (!v17)
  {
    __break(1u);
    goto LABEL_104;
  }

  v18 = v17;
  v19 = [v17 firstSection];

  if (!v19)
  {
LABEL_16:
    v52 = 0;
    if (!a1)
    {
      goto LABEL_18;
    }

LABEL_17:
    if (v16)
    {
      goto LABEL_18;
    }

    if (a3 == (&dword_4 + 3))
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      v27 = a1;
      if (v26)
      {
        v28 = v27;
        if (([v26 hasVideo] & 1) == 0 && v52)
        {
          v50 = v52;
          if (![v26 isExplicitSong] || (ExplicitRestrictionsController.shared.unsafeMutableAddressor(), , v29 = ExplicitRestrictionsController.explicitContentIsAllowed.getter(), , v29))
          {
            v30 = sub_10AC20(v26);
            v31 = sub_10CB1C(v26, 0, v30);
            static ApplicationCapabilities.shared.getter(v53);
            v32 = v54;
            if (sub_472A84(5, v54))
            {
              v33 = sub_472A84(0, v32);
              sub_70C54(v53);
              if (v30 == (&dword_4 + 3))
              {
                v30 = ((v33 & 1) != 0 ? 1 : 7);
                if (v31)
                {
LABEL_97:

                  goto LABEL_98;
                }
              }
            }

            else
            {
              sub_70C54(v53);
            }

            if (v30 == (&dword_0 + 1) && a6)
            {
              a6(2);
            }

            goto LABEL_97;
          }

LABEL_102:
          sub_10F978();

          v24 = v50;
          goto LABEL_26;
        }
      }

LABEL_98:
      sub_1101F4(a1, v51);
      goto LABEL_99;
    }

    v37 = a1;
    if (a3 <= 3)
    {
      if (a3 <= 1)
      {
        if (a3)
        {
          if (a3 != (&dword_0 + 1))
          {
            goto LABEL_104;
          }

          goto LABEL_98;
        }

        if (a6)
        {
          a6(1);

          goto LABEL_25;
        }

        goto LABEL_88;
      }

      if (a3 == (&dword_0 + 2))
      {
        v50 = v52;
        goto LABEL_102;
      }

      static Alert.cellularRestrictedAlert(model:)(a1, v53);
    }

    else
    {
      if (a3 > 5)
      {
        if (a3 == (&dword_4 + 2))
        {
          v46 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_15F28(v51, v53);
          v47 = swift_allocObject();
          v47[2] = v46;
          v47[3] = a1;
          sub_17704(v53, (v47 + 4));
          v47[16] = a6;
          v47[17] = a7;
          a1 = v37;

          sub_307CC(a6);
          sub_10DB34(sub_112C18, v47);

LABEL_99:

          goto LABEL_100;
        }

        if (a3 == &dword_8)
        {
          v38 = sub_AB9990();
          (*(*(v38 - 8) + 56))(v15, 1, 1, v38);
          sub_15F28(v51, v53);
          sub_AB9940();
          v39 = sub_AB9930();
          v40 = swift_allocObject();
          *(v40 + 16) = v39;
          *(v40 + 24) = &protocol witness table for MainActor;
          sub_17704(v53, v40 + 32);
          sub_DBDC8(0, 0, v15, &unk_AFE858, v40);

LABEL_85:

          goto LABEL_100;
        }

        if (a3 != (&dword_8 + 1))
        {
          goto LABEL_104;
        }

        sub_10FFD8();
LABEL_88:

        goto LABEL_25;
      }

      if (a3 != &dword_4)
      {
        v49 = sub_10FB2C(a1, v52);
        PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v49, 1, 1, 0, 0);
        UIViewController.dismiss(after:)(480.0);

        goto LABEL_25;
      }

      static Alert.networkUnavailableAlert(model:traitCollection:)(a1, 0, v53);
    }

    v48 = Alert.uiAlertController.getter();
    sub_111904(v53);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v48, 1, 1, 0, 0);
    UIViewController.dismiss(after:)(480.0);

    goto LABEL_85;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v52 = v20;
  if (a1)
  {
    goto LABEL_17;
  }

LABEL_18:
  v21 = sub_10CB1C(a1, a2, a3);
  ExplicitRestrictionsController.shared.unsafeMutableAddressor();

  v22 = ExplicitRestrictionsController.explicitContentIsAllowed.getter();

  if (!v22)
  {
    v23 = sub_110714(a2);
    if (v23)
    {
      a3 = (&dword_0 + 2);
    }

    v21 &= v23 ^ 1;
  }

  if (a6)
  {
    a6(v21 & 1);
  }

  if (v21)
  {
    goto LABEL_25;
  }

  v25 = v52;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == (&dword_4 + 1))
      {
        v41 = sub_10FB2C(a1, v52);
        PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v41, 1, 1, 0, 0);
        UIViewController.dismiss(after:)(480.0);

        goto LABEL_25;
      }

      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_15F28(v51, v53);
      v44 = swift_allocObject();
      v44[2] = v43;
      v44[3] = a1;
      sub_17704(v53, (v44 + 4));
      v44[16] = a6;
      v44[17] = a7;
      v45 = a1;
      sub_307CC(a6);

      sub_10DB34(sub_111994, v44);
    }

    else
    {
      if (a3 == (&dword_4 + 3))
      {
LABEL_76:
        sub_1101F4(a1, v51);
        goto LABEL_25;
      }

      if (a3 != &dword_8)
      {
        if (a3 == (&dword_8 + 1))
        {
          sub_10FFD8();
          goto LABEL_25;
        }

        goto LABEL_104;
      }

      v34 = sub_AB9990();
      (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
      sub_15F28(v51, v53);
      sub_AB9940();
      v35 = sub_AB9930();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = &protocol witness table for MainActor;
      sub_17704(v53, v36 + 32);
      sub_DBDC8(0, 0, v15, &unk_AF79B0, v36);
    }

LABEL_100:

    return;
  }

  if (a3 > 1)
  {
    if (a3 != (&dword_0 + 2))
    {
      if (a3 == (&dword_0 + 3))
      {
        static Alert.cellularRestrictedAlert(model:)(a1, v53);
      }

      else
      {
        static Alert.networkUnavailableAlert(model:traitCollection:)(a1, 0, v53);
      }

      v42 = Alert.uiAlertController.getter();
      sub_111904(v53);
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v42, 1, 1, 0, 0);
      UIViewController.dismiss(after:)(480.0);

      goto LABEL_100;
    }

    sub_10F978();
LABEL_25:
    v24 = v52;
LABEL_26:

    return;
  }

  if (a3)
  {
    if (a3 == (&dword_0 + 1))
    {
      goto LABEL_76;
    }

LABEL_104:
    *&v53[0] = a3;
    sub_ABB450();
    __break(1u);
    return;
  }

  if (a6)
  {
    (a6)(1, v52);
    goto LABEL_25;
  }
}

unint64_t sub_11138C(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1113A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[18];
  v9 = v1[19];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17CF8;

  return sub_10D6BC(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_111478()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1115D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[18];
  v9 = v1[19];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17BD0;

  return sub_10D6BC(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_1116A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_111718()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1117C4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1 & 1);
  }

  if (*(v0 + 128) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v2 = *(v0 + 112);
    if (v2 != 255)
    {
      sub_17774(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v2);
    }

    if (*(v0 + 128))
    {
    }

    if (*(v0 + 144))
    {
    }
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

void sub_1117C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_111814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_111898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_111958()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_66Tm()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_111AB8()
{

  return swift_deallocObject();
}

void sub_111AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v7 = sub_AB9260();

  v8 = sub_AB9260();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = sub_AB9260();

  v24 = sub_1128E0;
  v25 = v10;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1546C;
  v23 = &block_descriptor_93;
  v12 = _Block_copy(&aBlock);

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v11 style:0 handler:v12];
  _Block_release(v12);

  [v9 addAction:v14];
  [v9 setPreferredAction:v14];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  v16 = sub_AB9260();

  v24 = sub_70638;
  v25 = v15;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1546C;
  v23 = &block_descriptor_99;
  v17 = _Block_copy(&aBlock);

  v18 = [v13 actionWithTitle:v16 style:1 handler:v17];
  _Block_release(v17);

  [v9 addAction:v18];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v9, 1, 1, 0, 0);
  v19 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.hasSeenDolbyDownloadConflictAlert.setter();
}

id sub_111FD0(void *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  LOBYTE(v75[0]) = 1;
  v10 = sub_80D7C();
  v11 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v10);
  if ((v11 & 1) == 0)
  {
    return (a4)(v11);
  }

  v12 = [objc_opt_self() standardUserDefaults];
  v13 = NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter();

  if (v13)
  {
    return (a4)(v11);
  }

  sub_1116A8(a3, v75);
  if (v76 == 1)
  {
    v11 = sub_111898(v75);
    return (a4)(v11);
  }

  sub_17704(v75, v74);
  static ApplicationCapabilities.shared.getter(v75);
  sub_70C54(v75);
  if (BYTE1(v75[0]) & 1) == 0 || (v14 = objc_opt_self(), v15 = [v14 standardUserDefaults], v16 = objc_msgSend(v15, "prefersSpatialDownloads"), v15, (v16) || (v17 = objc_msgSend(v14, "standardUserDefaults"), v18 = objc_msgSend(v17, "spatialAudioPreference"), v17, v18 != &dword_0 + 1) && v18 != &dword_0 + 2 || (v20 = a1[3], v19 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v20), !sub_161E74(v20, *(v19 + 8))))
  {
    v11 = sub_1611C(v74);
    return (a4)(v11);
  }

  result = [a2 results];
  if (!result)
  {
LABEL_104:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = [result allItems];

  v24 = sub_AB9760();
  v25 = sub_12DAC8(v24);
  if (!v25)
  {
    sub_1611C(v74);

    return (a4)(v11);
  }

  v26 = v25;

  v27 = v26 & 0xFFFFFFFFFFFFFF8;
  v67 = a4;
  v68 = v26 & 0xFFFFFFFFFFFFFF8;
  v72 = a5;
  if (v26 >> 62)
  {
    goto LABEL_94;
  }

  v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  if (!v28)
  {
LABEL_85:
    sub_1611C(v74);

    return (a4)(v11);
  }

  v64 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  while (2)
  {
    v29 = 0;
    v65 = v26;
    v69 = v26 + 32;
    v70 = v26 & 0xC000000000000001;
    v71 = v28;
    while (v70)
    {
      v30 = sub_3603D0(v29, v65);
      v31 = __OFADD__(v29++, 1);
      if (v31)
      {
        goto LABEL_90;
      }

LABEL_23:
      v73 = v30;
      v32 = sub_162538();
      sub_112854();
      v33 = sub_AB9B70();
      v34 = v32;
      v35 = *(v32 + 2);
      if (v35)
      {
        v36 = 0;
        v37 = v34 + 32;
        while (1)
        {
          v39 = v33 + 56;
          while (1)
          {
            v40 = v37[v36];
            sub_ABB5C0();
            v41 = v40 - 3;
            if ((v40 - 3) >= 6)
            {
              sub_ABB5D0(6uLL);
              v41 = v40;
            }

            sub_ABB5D0(v41);
            ++v36;
            v42 = sub_ABB610();
            v43 = -1 << *(v33 + 32);
            v44 = v42 & ~v43;
            if (((*(v39 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
              break;
            }

            v45 = ~v43;
            while (1)
            {
              v46 = *(*(v33 + 48) + v44);
              if (v46 > 5)
              {
                break;
              }

              switch(v46)
              {
                case 3u:
                  if (v40 == 3)
                  {
                    goto LABEL_52;
                  }

                  break;
                case 4u:
                  if (v40 == 4)
                  {
                    goto LABEL_52;
                  }

                  break;
                case 5u:
                  if (v40 == 5)
                  {
                    goto LABEL_52;
                  }

                  break;
                default:
                  goto LABEL_46;
              }

LABEL_32:
              v44 = (v44 + 1) & v45;
              if (((*(v39 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            switch(v46)
            {
              case 6u:
                if (v40 == 6)
                {
                  goto LABEL_52;
                }

                goto LABEL_32;
              case 7u:
                if (v40 == 7)
                {
                  goto LABEL_52;
                }

                goto LABEL_32;
              case 8u:
                if (v40 == 8)
                {
                  goto LABEL_52;
                }

                goto LABEL_32;
            }

LABEL_46:
            if ((v40 - 9) > 0xF9u || v46 != v40)
            {
              goto LABEL_32;
            }

LABEL_52:
            if (v36 == v35)
            {
LABEL_53:

              a4 = v67;
              v27 = v68;
              goto LABEL_55;
            }
          }

LABEL_25:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_218B8(v40, v44, isUniquelyReferenced_nonNull_native);
          if (v36 == v35)
          {
            goto LABEL_53;
          }
        }
      }

LABEL_55:
      v47 = v72;
      if (qword_DE68D0 != -1)
      {
        swift_once();
      }

      v26 = *(sub_10EA08(qword_E71068, v33, sub_10EBE4, sub_10EBE4) + 2);

      if (v26)
      {
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
      }

      else
      {
      }

      v28 = v71;
      if (v29 == v71)
      {
        v26 = 0;
        v48 = v65;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
        {
          goto LABEL_102;
        }

LABEL_63:
        if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
        {
          v49 = _swiftEmptyArrayStorage[2];
          goto LABEL_65;
        }

        goto LABEL_102;
      }
    }

    if (v29 >= *(v27 + 16))
    {
      goto LABEL_91;
    }

    v30 = *(v69 + 8 * v29);
    v31 = __OFADD__(v29++, 1);
    if (!v31)
    {
      goto LABEL_23;
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    v64 = sub_ABB060();
    if (v64 <= 0)
    {
      goto LABEL_85;
    }

    v66 = v26;
    v28 = sub_ABB060();
    if (v28)
    {
      a4 = v67;
      v27 = v68;
      continue;
    }

    break;
  }

  v26 = 1;
  a4 = v67;
  v47 = v72;
  v48 = v66;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_102:
  v49 = sub_ABB060();
LABEL_65:

  if (v49 != v64)
  {
    goto LABEL_85;
  }

  if ((v26 & 1) == 0)
  {
    v50 = 0;
    v51 = v48;
    v52 = v48 & 0xC000000000000001;
    while (1)
    {
      if (v52)
      {
        v53 = sub_3603D0(v50, v51);
      }

      else
      {
        if (v50 >= *(v68 + 16))
        {
          goto LABEL_93;
        }

        v53 = *(v51 + 8 * v50 + 32);
      }

      v54 = v53;
      v55 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_92;
      }

      type metadata accessor for LibraryAddKeepLocalStatusObserver();
      swift_allocObject();
      v56 = v54;
      v57 = sub_259C34();
      v58 = v57[9];
      v57[9] = v54;
      v59 = v56;

      sub_25A2AC(0);

      v26 = v57[15];

      if ((v26 & 0xFE) == 0xF8)
      {
        __break(1u);
        goto LABEL_104;
      }

      if ((v26 & 0xFE) == 0x7A)
      {
        goto LABEL_74;
      }

      if (v26 >> 1 != 62)
      {
        goto LABEL_74;
      }

      v60 = [v59 localFileAsset];
      if (!v60)
      {
        goto LABEL_74;
      }

      v61 = v60;
      v62 = sub_16286C();
      v63 = sub_2F34EC(v62);

      if (qword_DE68D0 != -1)
      {
        swift_once();
      }

      v26 = *(sub_10EA08(qword_E71068, v63, sub_10EBE4, sub_10EBE4) + 2);

      if (v26)
      {
LABEL_74:
      }

      else
      {
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
      }

      ++v50;
      if (v55 == v28)
      {
        v47 = v72;
        break;
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (sub_ABB060() <= 0)
    {
      goto LABEL_99;
    }

LABEL_89:
    sub_111AF8(v74, a4, v47);
  }

  else
  {
    if (_swiftEmptyArrayStorage[2] > 0)
    {
      goto LABEL_89;
    }

LABEL_99:
    a4();
  }

  sub_1611C(v74);
}

unint64_t sub_112854()
{
  result = qword_DFDE60;
  if (!qword_DFDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFDE60);
  }

  return result;
}

uint64_t sub_1128A8()
{

  return swift_deallocObject();
}

uint64_t sub_1128E8()
{

  return swift_deallocObject();
}

uint64_t sub_112934()
{

  return swift_deallocObject();
}

uint64_t sub_112984()
{

  return swift_deallocObject();
}

uint64_t sub_1129E4()
{

  return swift_deallocObject();
}

uint64_t sub_112A28()
{

  return swift_deallocObject();
}

uint64_t sub_112A78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_112AB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_10DEC8(a1, v4, v5, v6);
}

void sub_112C24(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if (!v4)
  {
    return;
  }

  v23 = v4;
  v5 = (*(a2 + 8))(a1, a2);
  if (v5)
  {
    v22 = v5;
    if ([v5 enableSetNeedsDisplay])
    {
      v6 = (*(a2 + 24))(a1, a2);
      if (v6)
      {
        v7 = *(a2 + 32);
        v8 = v6;
        v9 = v6;
        LOBYTE(v7) = v7(a1, a2);
        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = a1;
        *(v11 + 24) = a2;
        v12 = v7 & 1;
        *(v11 + 32) = v7 & 1;
        *(v11 + 40) = v10;
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        *(v14 + 16) = a1;
        *(v14 + 24) = a2;
        *(v14 + 32) = v8;
        *(v14 + 40) = 1;
        *(v14 + 48) = v22;
        *(v14 + 56) = v12;
        *(v14 + 64) = v13;
        v15 = v9;
        v16 = v22;

        sub_379490(v8, 1, sub_114FE0, v11, sub_115038, v14);

        return;
      }

      v18 = v23;
      v19 = &v23[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource];
      v20 = v23[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8];
      if (v20 != 255)
      {
        v21 = *v19;
        *v19 = 0;
        v19[8] = -1;
        v22 = v22;
        sub_3EB30(v21, v20);
        [v22 setNeedsDisplay];

        v18 = v22;
      }
    }

    else
    {
      v18 = v23;
    }

    v17 = v22;
  }

  else
  {
    v17 = v23;
  }
}

uint64_t sub_112F24(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 1) != 0 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      (*(a5 + 56))(a4, a5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_112FB0(char a1, uint64_t a2, void *a3, int a4, id a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    if (qword_DE6AE8 != -1)
    {
      swift_once();
    }

    v10 = sub_AB4BC0();
    __swift_project_value_buffer(v10, qword_E71608);
    v11 = a3;
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v12 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_37B8E0(a3);
      v16 = sub_425E68(v14, v15, aBlock);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_ABB520();
      v19 = sub_425E68(v17, v18, aBlock);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_0, oslog, v12, "Error loading %s: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else if (a1)
  {
    [a5 setNeedsDisplay];
    if ((a6 & 1) == 0)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        (*(a9 + 40))(1, a8, a9);
        swift_unknownObjectRelease();
      }

      v23 = [objc_opt_self() sharedApplication];
      v24 = swift_allocObject();
      v24[2] = a8;
      v24[3] = a9;
      v24[4] = a7;
      aBlock[4] = sub_1150AC;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_36;
      v25 = _Block_copy(aBlock);

      [v23 _performBlockAfterCATransactionCommits:v25];
      _Block_release(v25);
    }
  }
}

uint64_t sub_113300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a3 + 64))(a2, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_113380()
{
  if (qword_DE67C0 != -1)
  {
    swift_once();
  }

  v0 = xmmword_E70D50;
  if (!xmmword_E70D50)
  {
    return 0;
  }

  v1 = *(&xmmword_E70D70 + 1);
  v2 = xmmword_E70D70;
  v4 = qword_E70D60;
  v3 = unk_E70D68;
  v5 = *(&xmmword_E70D50 + 1);
  v15 = xmmword_E70D50;
  v16 = qword_E70D60;
  v17 = unk_E70D68;
  v18 = xmmword_E70D70;
  v6 = objc_allocWithZone(MTKView);
  sub_1152CC(v0, v5, v4, v3, v2, v1);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v3;
  v8 = v1;
  v9 = [v6 init];
  [v9 setDevice:v0];
  [v9 setColorPixelFormat:v2];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  [v9 setPaused:1];
  [v9 setEnableSetNeedsDisplay:1];
  [v9 setPresentsWithTransaction:1];
  v10 = objc_allocWithZone(type metadata accessor for MaterialRenderer());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = v7;
  v12 = v8;
  v13 = sub_378F04(&v15);
  [v9 setDelegate:v13];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

id sub_1135A8(uint64_t a1)
{
  v16 = a1;
  v14 = sub_ABA140();
  v1 = *(v14 - 8);
  __chkstk_darwin(v14);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_ABA100();
  __chkstk_darwin(v4);
  v5 = sub_AB7C50();
  __chkstk_darwin(v5 - 8);
  v13 = OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_outputAccessQueue;
  v12 = sub_13C80(0, &qword_DE8ED0);
  sub_AB7C30();
  v18 = _swiftEmptyArrayStorage;
  sub_11533C(&qword_DED790, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270);
  sub_809E0(&qword_DED7A0, &qword_E01270);
  sub_ABABB0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v6 = sub_ABA180();
  v7 = v15;
  v8 = v16;
  *&v15[v13] = v6;
  *&v7[OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_collectionView] = v8;
  v9 = v7;
  v10 = type metadata accessor for CollectionViewMaterialRendererVideoCoordinator();
  v17.receiver = v9;
  v17.super_class = v10;
  return objc_msgSendSuper2(&v17, "init");
}

void sub_113844(void *a1)
{
  v3 = sub_AB7C10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*DeviceCapabilities.supportsMotionBlur.unsafeMutableAddressor() == 1)
  {
    swift_getObjectType();
    v11 = swift_conformsToProtocol2();
    if (v11)
    {
      if (a1)
      {
        v12 = v11;
        v29 = v8;
        v30 = v4;
        v31 = v1;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 16);
        v32 = a1;
        v15 = v14(ObjectType, v12);
        if (v15)
        {
          v16 = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_AF85F0;
          *(inited + 32) = sub_AB92A0();
          *(inited + 40) = v18;
          *(inited + 72) = &type metadata for UInt32;
          *(inited + 48) = 1111970369;
          *(inited + 80) = sub_AB92A0();
          *(inited + 88) = v19;
          *(inited + 120) = &type metadata for Bool;
          *(inited + 96) = 1;
          v20 = sub_97420(inited);
          v28[1] = v20;
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
          swift_arrayDestroy();
          sub_3E8DA4(v20);
          v21 = objc_allocWithZone(AVPlayerItemVideoOutput);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F8);
          isa = sub_AB8FD0().super.isa;

          v23 = [v21 initWithPixelBufferAttributes:isa];

          [v23 requestNotificationOfMediaDataChangeWithAdvanceInterval:0.0];
          v28[0] = *&v31[OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_outputAccessQueue];
          [v23 setDelegate:v28[0] queue:?];
          v24 = swift_allocObject();
          *(v24 + 16) = v16;
          *(v24 + 24) = v23;
          aBlock[4] = sub_1152C4;
          aBlock[5] = v24;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B5EB4;
          aBlock[3] = &block_descriptor_41;
          v25 = _Block_copy(aBlock);
          v31 = v16;
          v26 = v23;
          sub_AB7C30();
          v33 = _swiftEmptyArrayStorage;
          sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
          sub_809E0(&qword_DF06D0, &unk_DE9C30);
          sub_ABABB0();
          sub_ABA160();

          (*(v30 + 8))(v6, v3);
          (*(v29 + 8))(v10, v7);
          _Block_release(v25);
        }

        else
        {
          v27 = v32;
        }
      }
    }
  }
}

void sub_113D94(void *a1, uint64_t a2)
{
  v3 = [a1 currentItem];
  if (v3)
  {
    v4 = v3;
    [v3 addOutput:a2];
  }
}

void sub_113E0C(void *a1)
{
  v2 = v1;
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB7CC0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v2[OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_outputAccessQueue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = sub_AB7CF0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      sub_13C80(0, &qword_DE8ED0);
      v19 = a1;
      v26 = sub_ABA150();
      v20 = swift_allocObject();
      *(v20 + 16) = v2;
      *(v20 + 24) = v18;
      aBlock[4] = sub_1151EC;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_35;
      v21 = _Block_copy(aBlock);
      v22 = v19;
      v23 = v2;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_809E0(&qword_DF06D0, &unk_DE9C30);
      sub_ABABB0();
      v24 = v26;
      sub_ABA160();

      (*(v5 + 8))(v7, v4);
      (*(v27 + 8))(v10, v28);
      _Block_release(v21);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_114200(uint64_t a1, void *a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_collectionView);
  v14 = [v13 indexPathsForVisibleItems];
  result = sub_AB9760();
  v16 = result;
  v39 = *(result + 16);
  if (v39)
  {
    v31 = v14;
    v32 = v12;
    v33 = v5;
    v34 = a1;
    v17 = 0;
    v38 = v7 + 16;
    v35 = v6;
    while (v17 < *(v16 + 16))
    {
      (*(v7 + 16))(v10, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v6);
      isa = sub_AB3770().super.isa;
      v19 = [v13 cellForItemAtIndexPath:isa];

      if (v19)
      {
        ObjectType = swift_getObjectType();
        v21 = swift_conformsToProtocol2();
        if (v21)
        {
          v22 = (*(v21 + 16))(ObjectType, v21);

          if (v22)
          {
            v23 = [v22 currentItem];

            if (v23)
            {
              v24 = v13;
              v25 = [v23 outputs];
              sub_13C80(0, &unk_DF06E0);
              v26 = sub_AB9760();

              v37 = &v30;
              v40 = v36;
              __chkstk_darwin(v27);
              *(&v30 - 2) = &v40;
              v28 = sub_1B3BF4(sub_1151F4, (&v30 - 4), v26);

              if (v28)
              {
                v5 = v33;
                v6 = v35;
                (*(v7 + 32))(v33, v10, v35);
                v29 = 0;
                goto LABEL_13;
              }

              v13 = v24;
              v6 = v35;
            }
          }
        }

        else
        {
        }
      }

      ++v17;
      result = (*(v7 + 8))(v10, v6);
      if (v39 == v17)
      {
        v29 = 1;
        v5 = v33;
LABEL_13:
        v14 = v31;
        v12 = v32;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = 1;
LABEL_15:
    (*(v7 + 56))(v5, v29, 1, v6);

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_11525C(v5);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      sub_1146C8(v36);
      return (*(v7 + 8))(v12, v6);
    }
  }

  return result;
}

void sub_1146C8(void *a1)
{
  [a1 itemTimeForHostTime:CACurrentMediaTime()];
  if ([a1 hasNewPixelBufferForItemTime:v13])
  {
    v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_collectionView);
    isa = sub_AB3770().super.isa;
    v5 = [v3 cellForItemAtIndexPath:isa];

    if (v5)
    {
      swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      if (v6)
      {
        v7 = v6;
        v8 = [objc_opt_self() sharedApplication];
        v9 = swift_allocObject();
        v9[2] = a1;
        v9[3] = v5;
        v9[4] = v7;
        v13[4] = sub_115110;
        v13[5] = v9;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1107296256;
        v13[2] = sub_1B5EB4;
        v13[3] = &block_descriptor_20;
        v10 = _Block_copy(v13);
        v11 = a1;
        v12 = v5;

        [v8 _performBlockAfterCATransactionCommits:v10];
        _Block_release(v10);

        v5 = v8;
      }
    }
  }
}

uint64_t sub_114898(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  result = (*(*(a3 + 8) + 16))(ObjectType);
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 24) = a3;
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = 0;
    *(v9 + 32) = v8;
    v10 = a1;

    sub_379490(a1, 0, 0, 0, sub_115194, v9);
  }

  return result;
}

void sub_1149B4(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_DE6AE8 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E71608);
    swift_errorRetain();
    v9 = a3;
    v10 = sub_AB4BA0();
    v11 = sub_AB9F30();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_37B8E0(a3);
      v15 = sub_425E68(v13, v14, aBlock);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v16 = sub_ABB520();
      v18 = sub_425E68(v16, v17, aBlock);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_0, v10, v11, "Error loading %s: %s", v12, 0x16u);
      swift_arrayDestroy();
    }
  }

  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(a5 + 24);
      ObjectType = swift_getObjectType();
      v21 = (*(*(v19 + 8) + 8))(ObjectType);
      swift_unknownObjectRelease();
      if (v21)
      {
        [v21 setNeedsDisplay];
      }
    }

    v22 = [objc_opt_self() sharedApplication];
    aBlock[4] = sub_1151A4;
    aBlock[5] = a5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_29_0;
    v23 = _Block_copy(aBlock);

    [v22 _performBlockAfterCATransactionCommits:v23];
    _Block_release(v23);
  }
}

uint64_t sub_114CC4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v4 = (*(*(v2 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
    if (v4)
    {
      if (*DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor())
      {
        v5 = 30;
      }

      else
      {
        v5 = 15;
      }

      [v4 setPreferredFramesPerSecond:v5];
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a1 + 24);
    v7 = swift_getObjectType();
    v8 = (*(*(v6 + 8) + 8))(v7);
    swift_unknownObjectRelease();
    if (v8)
    {
      [v8 setPaused:0];
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(a1 + 24);
    v10 = swift_getObjectType();
    v11 = (*(*(v9 + 8) + 8))(v10);
    swift_unknownObjectRelease();
    if (v11)
    {
      [v11 setEnableSetNeedsDisplay:0];
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(a1 + 24);
    v14 = swift_getObjectType();
    (*(*(v13 + 8) + 64))(v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_114ECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewMaterialRendererVideoCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_114F70()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_114FA8()
{

  return swift_deallocObject();
}

uint64_t sub_114FF0()
{

  return swift_deallocObject();
}

uint64_t sub_115074()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1150D0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_11511C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_115154()
{

  return swift_deallocObject();
}

uint64_t sub_1151AC()
{

  return swift_deallocObject();
}

uint64_t sub_11525C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1152CC(id result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (result)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v7 = a4;

    return a6;
  }

  return result;
}

uint64_t sub_11533C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1153A8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_subtitle];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText];
  *v12 = 0;
  *(v12 + 1) = 0;
  v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_layoutStyle] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonStyle] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_artworkStyle] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_onCloseButtonTouch];
  *v13 = UIScreen.Dimensions.size.getter;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_networkArtworkCatalog] = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController;
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  *&v4[v14] = sub_49F63C(1, 0, 0);
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents];
  if (qword_DE6860 != -1)
  {
    swift_once();
  }

  v84[2] = xmmword_DF0720;
  v84[3] = *&qword_DF0730;
  v84[4] = xmmword_DF0740;
  v84[0] = xmmword_DF0700;
  v84[1] = *algn_DF0710;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v16 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v84);
  sub_2F118(v84, v83);
  v17 = qword_DE6868;

  if (v17 != -1)
  {
    swift_once();
  }

  v83[2] = xmmword_DF0770;
  v83[3] = *&qword_DF0780;
  v83[4] = xmmword_DF0790;
  v83[0] = xmmword_DF0750;
  v83[1] = unk_DF0760;
  swift_allocObject();
  v18 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF7C50;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  *v15 = v16;
  *(v15 + 1) = v18;
  *(v15 + 2) = v19;
  v15[24] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___closeButton] = 0;
  v20 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView;
  sub_2F118(v83, &v80);

  *&v5[v20] = sub_117AB0();
  v79.receiver = v5;
  v79.super_class = type metadata accessor for SocialPersonVerticalCell();
  v21 = objc_msgSendSuper2(&v79, "initWithFrame:", a1, a2, a3, a4);
  sub_117330(1);
  v22 = [v21 layer];
  [v22 setAllowsGroupOpacity:0];

  v23 = [v21 layer];
  [v23 setAllowsGroupBlending:0];

  v24 = &v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v24 = 0x4030000000000000;
  type metadata accessor for UIEdgeInsets(0);
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = 0;
  v25 = &v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v26 = *&v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
  v80 = *&v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v81 = v26;
  if (sub_AB38D0())
  {
    v27 = *(v24 + 1);
    *v25 = *v24;
    *(v25 + 1) = v27;
    sub_35D498();
    [v21 setNeedsLayout];
  }

  v28 = vdupq_n_s64(0x4056000000000000uLL);
  *&v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkImageSize] = v28;
  v29 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v30 = *&v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v31 = *(v30 + 80);
  v32 = *(v30 + 88);
  *(v30 + 80) = v28;
  sub_75614(v31, v32);
  v78 = v29;
  v33 = *&v21[v29];
  v34 = (v33 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment);
  v35 = *(v33 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment + 16);
  *v34 = 0;
  v34[1] = 0;
  v34[2] = 0;
  if (v35)
  {
    v36 = *(v33 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v36)
    {

      v37 = sub_307CC(v36);
      v36(v37);
      sub_17654(v36);
    }
  }

  v38 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v39 = *v38;
  v40 = v38[1];
  v41 = v38[2];
  v42 = v38[3];
  v43 = v38[4];
  v44 = v38[5];
  v76 = v44;
  v77 = v43;
  v45 = &v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v74 = *(v45 + 1);
  v75 = *v45;
  v72 = *(v45 + 3);
  v73 = *(v45 + 2);
  *v45 = v39;
  *(v45 + 1) = v40;
  *(v45 + 2) = v41;
  *(v45 + 3) = v42;
  *(v45 + 4) = v43;
  *(v45 + 5) = v44;
  v46 = v39;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v46;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  sub_2F1C8(v75, v74, v73, v72);
  v54 = *&v21[v78];
  v55 = *(v54 + 168);
  v80 = *(v54 + 152);
  v81 = v55;
  v82 = *(v54 + 184);
  *(v54 + 152) = v39;
  *(v54 + 160) = v40;
  *(v54 + 168) = v41;
  *(v54 + 176) = v42;
  *(v54 + 184) = v77;
  *(v54 + 192) = v76;
  v56 = v50;
  v57 = v51;
  v58 = v52;
  v59 = v53;
  v60 = v56;
  v61 = v57;
  v62 = v58;
  v63 = v59;
  sub_75948(&v80);
  sub_B2A40(&v80);

  v64 = objc_opt_self();

  sub_75F8C([v64 tertiarySystemBackgroundColor]);

  v65 = sub_117564();
  [v21 addSubview:v65];

  [v21 sendSubviewToBack:*&v21[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView]];
  sub_117824();
  v67 = v66;
  [v21 addSubview:v66];

  v68 = *&v21[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController];
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v70 = *(v68 + 72);
  *(v68 + 72) = sub_118BE0;
  *(v68 + 80) = v69;

  sub_17654(v70);

  return v21;
}

void sub_115AD0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong _isInAWindow])
    {
      [v1 setNeedsLayout];
      v2 = objc_opt_self();
      v3 = swift_allocObject();
      *(v3 + 16) = v1;
      aBlock[4] = sub_B2B20;
      aBlock[5] = v3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_37;
      v4 = _Block_copy(aBlock);
      v5 = v1;

      [v2 animateWithDuration:2 delay:v4 options:0 animations:0.2 completion:0.0];

      _Block_release(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_115C6C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {

    v9 = String.trim()();

    v10 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents;
    swift_beginAccess();
    v11 = *&v2[v10];
    swift_beginAccess();
    v11[7] = v9;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

uint64_t sub_115DA8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 1);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

uint64_t sub_115EE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText];
  result = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText + 8];
  *v5 = a1;
  *(v5 + 1) = a2;
  if (v7)
  {
    if (a2)
    {
      v8 = result == a1 && v7 == a2;
      if (v8 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  v9 = sub_117274();
  if (*(v5 + 1))
  {
    v10 = *v5;
    v11 = *(v5 + 1);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = &v9[OBJC_IVAR____TtC16MusicApplication12SocialButton_title];
  v13 = *&v9[OBJC_IVAR____TtC16MusicApplication12SocialButton_title];
  v14 = *&v9[OBJC_IVAR____TtC16MusicApplication12SocialButton_title + 8];
  *v12 = v10;
  v12[1] = v11;

  sub_4EC5B8(v13, v14);

  [v3 setNeedsLayout];
LABEL_14:
}

id sub_115FF0(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_layoutStyle];
  v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_layoutStyle] = result & 1;
  if (v2 != (result & 1))
  {
    sub_117330(0);

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_11604C(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonStyle];
  v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonStyle] = result & 1;
  if (v2 != (result & 1))
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_11607C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_artworkStyle];
  v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_artworkStyle] = a1 & 1;
  if (v7 != (a1 & 1))
  {
    if (a1)
    {
      sub_ABA670();
      v8 = sub_ABA680();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      v9 = &selRef_systemGray3Color;
    }

    else
    {
      v10 = sub_ABA680();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v9 = &selRef_clearColor;
    }

    VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v6);
    v11 = [objc_opt_self() *v9];
    sub_74DD4(v11);
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1161FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_onCloseButtonTouch);
  *v3 = a1;
  v3[1] = a2;
}

void sub_116218(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_networkArtworkCatalog];
  *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_networkArtworkCatalog] = a1;
  if (a1)
  {
    v4 = v1;
    if (v3)
    {
      v9 = v3;
      sub_13C80(0, &qword_E04530);
      v5 = a1;
      v6 = v9;
      v7 = sub_ABA790();

      if (v7)
      {

        v3 = v5;
        goto LABEL_7;
      }
    }

    else
    {
      v8 = a1;
      v6 = 0;
    }

    v10 = a1;
    sub_361EF0(a1, 0x4034000000000000, 0x4034000000000000, 0);

    [v4 setNeedsLayout];
    v3 = v10;
  }

LABEL_7:
}

uint64_t sub_116334()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = v4;
  swift_retain_n();
  v7 = v2;
  sub_2E6210(v6);

  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView);
  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
  swift_retain_n();
  v12 = v8;
  sub_2E6210(v11);
}

uint64_t sub_116460(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);

  sub_116334();
}

void (*sub_11654C(uint64_t **a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = VerticalLockupCollectionViewCell.textDrawingCache.modify(v3);
  return sub_1165C0;
}

void sub_1165C0(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_116334();
  }

  free(v3);
}

void sub_11661C()
{
  v1 = v0;
  v70.receiver = v0;
  v70.super_class = type metadata accessor for SocialPersonVerticalCell();
  objc_msgSendSuper2(&v70, "layoutSubviews");
  v2 = [v0 contentView];
  v3 = &selRef__authenticateReturningError_;
  [v2 bounds];
  v5 = v4;
  v67 = v4;
  v68 = v6;
  v69 = v7;
  v66 = v8;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  [v0 effectiveUserInterfaceLayoutDirection];
  v10 = UIEdgeInsetsInsetRect_2(v5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v18 = *(v17 + 80);
  v19 = *(v17 + 88);
  *(v17 + 80) = vdupq_n_s64(0x4056000000000000uLL);
  sub_75614(v18, v19);
  sub_76368(0, 0, 1);
  v21 = v20;
  v71.origin.x = v10;
  v71.origin.y = v12;
  v71.size.width = v14;
  v71.size.height = v16;
  CGRectGetMinY(v71);
  v65 = v21;
  sub_ABA470();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_ABA490();
  if (sub_76B28(v30, v31, v32, v33))
  {
    v72.origin.x = v23;
    v72.origin.y = v25;
    v72.size.width = v27;
    v72.size.height = v29;
    MaxY = CGRectGetMaxY(v72);
    v73.origin.x = v10;
    v73.origin.y = v12;
    v73.size.width = v14;
    v73.size.height = v16;
    v16 = v16 - (MaxY - CGRectGetMinY(v73) + 0.0);
  }

  v35 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  [*&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView] sizeThatFits:{v14, v16, v65}];
  v36 = *&v1[v35];
  sub_ABA490();
  v37 = &selRef__authenticateReturningError_;
  [v36 setFrame:?];

  v38 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView;
  v39 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView];
  v40 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  v41 = *&v39[v40];
  if (*(v41 + 16))
  {
    v42 = v39;

    v43 = sub_2EBF88(0x742D676E697A6973, 0xEB00000000747865);
    if (v44)
    {
      v45 = *(*(v41 + 56) + 8 * v43);

      v47 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title];
      v46 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title + 8];
      swift_beginAccess();
      *(v45 + 112) = v47;
      *(v45 + 120) = v46;
      v3 = &selRef__authenticateReturningError_;

      sub_2EB704();
      v37 = &selRef__authenticateReturningError_;
    }

    else
    {
    }
  }

  [*&v1[v38] sizeThatFits:{v14, v16}];
  v48 = *&v1[v38];
  sub_ABA490();
  [v48 v37[262]];

  sub_117330(0);
  [*&v1[v35] frame];
  CGRectGetHeight(v74);
  [*&v1[v35] frame];
  v49 = v16 - CGRectGetHeight(v75);
  if (v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonStyle] == 1)
  {
    v50 = sub_117274();
    [v50 removeFromSuperview];

    v51 = *(*&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController] + 160);
    if (([v51 isDescendantOfView:v2] & 1) == 0)
    {
      [v2 addSubview:v51];
    }

    [v51 sizeThatFits:{v14, v49}];
    v53 = v52;
    v76.origin.x = v67;
    v76.origin.y = v69;
    v76.size.width = v68;
    v76.size.height = v66;
    CGRectGetMaxY(v76);
    sub_ABA470();
    sub_ABA490();
    [v51 v37[262]];
  }

  else
  {
    if (!*&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText + 8])
    {
      goto LABEL_16;
    }

    v54 = *(*&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController] + 160);
    [v54 removeFromSuperview];
    v55 = sub_117274();
    v56 = [v55 isDescendantOfView:v2];

    if ((v56 & 1) == 0)
    {
      [v2 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button]];
    }

    v57 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button;
    v58 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button];
    [v58 sizeThatFits:{v14, v49}];
    v60 = v59;
    v77.origin.x = v67;
    v77.origin.y = v69;
    v77.size.width = v68;
    v77.size.height = v66;
    CGRectGetMaxY(v77);
    sub_ABA470();

    v51 = *&v1[v57];
    sub_ABA490();
    v37 = &selRef__authenticateReturningError_;
    [v51 setFrame:v60];
  }

LABEL_16:
  sub_117824();
  v62 = v61;
  [v61 sizeThatFits:{v14, v49}];

  v63 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___closeButton];
  sub_ABA490();
  [v63 v37[262]];

  v64 = sub_117564();
  [v1 v3[56]];
  [v64 v37[262]];
}

id sub_116E7C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for SocialPersonVerticalCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_116F4C(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for SocialPersonVerticalCell();
  v25.receiver = v9;
  v25.super_class = v14;
  objc_msgSendSuper2(&v25, *a1);
  v24.receiver = v9;
  v24.super_class = v14;
  objc_msgSendSuper2(&v24, *a2, a3, a4, a5, a6);
  type metadata accessor for CGRect(0);
  [v9 *a1];
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = v18;
  if (sub_AB38D0())
  {
    sub_117330(0);
    v19 = sub_117564();
    [v9 *a1];
    [v19 *a2];
  }
}

id sub_117074(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for SocialPersonVerticalCell();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (a1)
  {
    v5 = [a1 preferredContentSizeCategory];
    v6 = sub_AB92A0();
    v8 = v7;
    if (v6 == sub_AB92A0() && v8 == v9)
    {

      goto LABEL_11;
    }

    v11 = sub_ABB3C0();

    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  sub_117330(0);
LABEL_11:
  v12 = [v1 traitCollection];
  v13 = [v12 horizontalSizeClass];

  if (!a1)
  {
    return [v1 setNeedsLayout];
  }

  result = [a1 horizontalSizeClass];
  if (v13 != result)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

_BYTE *sub_117274()
{
  v1 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button);
  }

  else
  {
    type metadata accessor for SocialButton();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = v4[OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize];
    v4[OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize] = 1;
    if ((v5 & 1) == 0)
    {
      sub_4ED6EC();
    }

    [v4 setEnabled:0];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_117330(char a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_layoutStyle) != 1)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

LABEL_9:
    v17 = *(v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
    v18 = v2 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents;
    swift_beginAccess();
    v19 = *(v18 + 16);
    v20 = v17;

    TextStackView.removeAll()();
    if (v19 >> 62)
    {
      v21 = sub_ABB060();
      if (v21)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v21 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      if (v21)
      {
LABEL_11:
        if (v21 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v21; ++i)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = sub_36003C(i, v19);
          }

          else
          {
            v23 = *(v19 + 8 * i + 32);
          }

          TextStackView.add(_:)(v23);
        }
      }
    }

    return;
  }

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView);
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = [v4 traitCollection];
  [v9 displayScale];
  v11 = v10;

  if (v8 <= 5.99231045e307)
  {
    v12 = v8;
  }

  else
  {
    v12 = 5.99231045e307;
  }

  sub_2E94A4(v24, 0.0, 0.0, v6, v12, v11);
  sub_3F250(v24);

  v13 = v24[7];
  v14 = v2 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents;
  swift_beginAccess();
  v15 = *(v14 + 24);
  v16 = v13 > 1;
  swift_beginAccess();
  *(v14 + 24) = v16;
  sub_117C28(v15);
  swift_endAccess();
  if (a1 & 1) != 0 || ((v16 ^ v15))
  {
    goto LABEL_9;
  }
}

id sub_117564()
{
  v1 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView);
  }

  else
  {
    v4 = sub_1175C4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1175C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11[-v1];
  v3 = [objc_allocWithZone(UIView) init];
  [v3 setUserInteractionEnabled:0];
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  UIView.shadow.getter(v11);
  sub_7FCD4(v11);
  v28 = v5;
  v29 = *&v11[8];
  v30 = v12;
  UIView.shadow.setter(&v28);
  UIView.shadow.getter(&v13);
  v25[0] = v13;
  v25[1] = 0x3FC999999999999ALL;
  v26 = v14;
  v27 = v15;
  UIView.shadow.setter(v25);
  UIView.shadow.getter(v16);
  v23[0] = v16[0];
  v23[1] = v16[1];
  v23[2] = 0x4010000000000000;
  v24 = v17;
  UIView.shadow.setter(v23);
  UIView.shadow.getter(&v18);
  v20 = v18;
  v21 = v19;
  v22 = xmmword_AFE930;
  UIView.shadow.setter(&v20);
  UIView.shadowPathIsBounds.setter(1);
  v6 = [v4 tertiarySystemBackgroundColor];
  [v3 setBackgroundColor:v6];

  v7 = UIView.Corner.medium.unsafeMutableAddressor();
  v8 = sub_ABA680();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  sub_ABA6A0();
  return v3;
}

void sub_117824()
{
  v1 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___closeButton);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = objc_opt_self();
  v4 = [v3 buttonWithType:1];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemGrayColor];
  [v6 setTintColor:v7];

  [v3 easyTouchDefaultHitRectInsets];
  [v6 setHitRectInsets:?];
  v8 = objc_opt_self();
  v9 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v10 = [v8 imageNamed:v9 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v10)
  {
    [v6 setImage:v10 forState:0];

    v11 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v12 = sub_13C80(0, &qword_E0BC00);
    v13 = v0;
    ControlEventHandling<>.on(_:handler:)(64, sub_118644, v11, v12);

    v14 = *(v0 + v1);
    *(v13 + v1) = v6;
    v6;

    v2 = 0;
LABEL_6:
    v15 = v2;
    return;
  }

  __break(1u);
}

uint64_t sub_117A48()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_onCloseButtonTouch];

  v1();
}

id sub_117AB0()
{
  type metadata accessor for TextStackView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setUserInteractionEnabled:0];
  if (qword_DE6860 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_DF0720;
  v12[3] = *&qword_DF0730;
  v12[4] = xmmword_DF0740;
  v12[0] = xmmword_DF0700;
  v12[1] = *algn_DF0710;
  v4 = xmmword_DF0700;
  v5 = *algn_DF0710;
  v6 = xmmword_DF0720;
  v7 = qword_DF0730;
  v3 = xmmword_DF0740;
  v8[0] = xmmword_DF0700;
  v8[1] = *algn_DF0710;
  v8[2] = xmmword_DF0720;
  v9 = qword_DF0730;
  v10 = 2;
  v11 = xmmword_DF0740;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v1 = TextStackView.Component.init(identifier:labelProperties:)(0x742D676E697A6973, 0xEB00000000747865, v8);
  sub_2F118(v12, v13);
  sub_2F118(v8, v13);
  TextStackView.add(_:)(v1);
  v13[0] = v4;
  v13[1] = v5;
  v13[2] = v6;
  v14 = v7;
  v15 = 2;
  v16 = v3;
  sub_2F174(v13);

  return v0;
}

uint64_t sub_117C28(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2 != (result & 1))
  {
    if (qword_DE6860 != -1)
    {
      swift_once();
    }

    v47[2] = xmmword_DF0720;
    v47[3] = *&qword_DF0730;
    v47[4] = xmmword_DF0740;
    v47[0] = xmmword_DF0700;
    v47[1] = *algn_DF0710;
    v43 = xmmword_DF0700;
    v44 = *algn_DF0710;
    v45 = xmmword_DF0720;
    v46 = qword_DF0730;
    v42 = xmmword_DF0740;
    sub_2F118(v47, v48);
    if (qword_DE6868 != -1)
    {
      swift_once();
    }

    v48[2] = xmmword_DF0770;
    v48[3] = *&qword_DF0780;
    v48[4] = xmmword_DF0790;
    v48[0] = xmmword_DF0750;
    v48[1] = unk_DF0760;
    v38 = xmmword_DF0750;
    v39 = unk_DF0760;
    v40 = xmmword_DF0770;
    v41 = qword_DF0780;
    v37 = xmmword_DF0790;
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = *v1;
    v17 = v43;
    v18 = v44;
    v19 = v45;
    *&v20 = v46;
    *(&v20 + 1) = v3;
    v21 = v42;
    swift_beginAccess();
    v7 = v5[3];
    v6 = v5[4];
    v8 = v5[6];
    v22[3] = v5[5];
    v22[4] = v8;
    v22[1] = v7;
    v22[2] = v6;
    v22[0] = v5[2];
    v9 = v42;
    v5[5] = v20;
    v5[6] = v9;
    v10 = v18;
    v5[2] = v17;
    v5[3] = v10;
    v5[4] = v19;
    sub_2F118(v48, v33);
    sub_2F118(&v17, v33);
    sub_2F174(v22);
    sub_2EB2A8();
    v11 = *(v1 + 8);
    v23 = v38;
    v24 = v39;
    v25 = v40;
    *&v26 = v41;
    *(&v26 + 1) = v4;
    v27 = v37;
    swift_beginAccess();
    v13 = v11[3];
    v12 = v11[4];
    v14 = v11[6];
    v28[3] = v11[5];
    v28[4] = v14;
    v28[1] = v13;
    v28[2] = v12;
    v28[0] = v11[2];
    v15 = v27;
    v11[5] = v26;
    v11[6] = v15;
    v16 = v24;
    v11[2] = v23;
    v11[3] = v16;
    v11[4] = v25;
    sub_2F118(&v23, v33);
    sub_2F174(v28);
    sub_2EB2A8();
    v29[0] = v38;
    v29[1] = v39;
    v29[2] = v40;
    v30 = v41;
    v31 = v4;
    v32 = v37;
    sub_2F174(v29);
    v33[0] = v43;
    v33[1] = v44;
    v33[2] = v45;
    v34 = v46;
    v35 = v3;
    v36 = v42;
    return sub_2F174(v33);
  }

  return result;
}

double sub_117EB4()
{
  sub_117EF8(&v1);
  xmmword_DF0720 = v3;
  *&qword_DF0730 = v4;
  xmmword_DF0740 = v5;
  result = *&v2;
  xmmword_DF0700 = v1;
  *algn_DF0710 = v2;
  return result;
}

double sub_117EF8@<D0>(uint64_t a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);
  v2 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF82D0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 1;
  result = 20.0;
  *(a1 + 64) = xmmword_AF7C30;
  return result;
}

double sub_117FDC()
{
  sub_118020(&v1);
  xmmword_DF0770 = v3;
  *&qword_DF0780 = v4;
  xmmword_DF0790 = v5;
  result = *&v2;
  xmmword_DF0750 = v1;
  unk_DF0760 = v2;
  return result;
}

double sub_118020@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v3 = qword_E718C8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF82D0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 2;
  result = 16.0;
  *(a1 + 64) = xmmword_AFE940;
  return result;
}

void sub_118174()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView);
}

id sub_11827C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialPersonVerticalCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SocialPersonVerticalCell()
{
  result = qword_DF07F0;
  if (!qword_DF07F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1184F8()
{
  result = qword_DF0800;
  if (!qword_DF0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF0800);
  }

  return result;
}

unint64_t sub_118550()
{
  result = qword_DF0808;
  if (!qword_DF0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF0808);
  }

  return result;
}

unint64_t sub_1185A8()
{
  result = qword_DF0810;
  if (!qword_DF0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF0810);
  }

  return result;
}

uint64_t sub_11860C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

double sub_11866C(void *a1, double a2)
{
  if (qword_DE6860 != -1)
  {
    swift_once();
  }

  v14[2] = xmmword_DF0720;
  v14[3] = *&qword_DF0730;
  v14[4] = xmmword_DF0740;
  v14[0] = xmmword_DF0700;
  v14[1] = *algn_DF0710;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v14);
  sub_2F118(v14, v13);
  v5 = qword_DE6868;

  if (v5 != -1)
  {
    swift_once();
  }

  v13[2] = xmmword_DF0770;
  v13[3] = *&qword_DF0780;
  v13[4] = xmmword_DF0790;
  v13[0] = xmmword_DF0750;
  v13[1] = unk_DF0760;
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF7C50;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  sub_2F118(v13, &v12);

  v8 = sub_2F48A4(inited, a1, 0, 0);
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  [*(sub_49F63C(1 0];
  v10 = v9;

  swift_setDeallocating();
  swift_arrayDestroy();
  return v8 + 88.0 + v10 + 16.0 + 16.0;
}

void sub_1188DC()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_artworkStyle) = 0;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_onCloseButtonTouch);
  *v5 = UIScreen.Dimensions.size.getter;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_networkArtworkCatalog) = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController;
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  *(v0 + v6) = sub_49F63C(1, 0, 0);
  v7 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents;
  if (qword_DE6860 != -1)
  {
    swift_once();
  }

  v16[2] = xmmword_DF0720;
  v16[3] = *&qword_DF0730;
  v16[4] = xmmword_DF0740;
  v16[0] = xmmword_DF0700;
  v16[1] = *algn_DF0710;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v16);
  sub_2F118(v16, v15);
  v9 = qword_DE6868;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = v1 + v7;
  v15[2] = xmmword_DF0770;
  v15[3] = *&qword_DF0780;
  v15[4] = xmmword_DF0790;
  v15[0] = xmmword_DF0750;
  v15[1] = unk_DF0760;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  *(v12 + 32) = v8;
  *(v12 + 40) = v11;
  *v10 = v8;
  *(v10 + 8) = v11;
  *(v10 + 16) = v12;
  *(v10 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___closeButton) = 0;
  v13 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView;
  sub_2F118(v15, v14);

  *(v1 + v13) = sub_117AB0();
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_118BA8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_118BE8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_118C4C()
{
  result = qword_DF0818;
  if (!qword_DF0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF0818);
  }

  return result;
}

uint64_t sub_118CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = v3 + OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_initializedProperties;
  if (*(v3 + OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_initializedProperties) == 2)
  {
    v88 = a1;
    v89 = a2;
    v85 = OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_requestedProperties;
    v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_requestedProperties);
    v8 = [v7 properties];
    v9 = sub_AB9B40();

    v10 = sub_AB92A0();
    v12 = sub_4DFDA8(v10, v11, v9);
    v14 = v13;
    v16 = v15;

    v87 = v16;
    sub_F01A0(v12, v14, v16);
    v17 = sub_AB92A0();
    v19 = sub_4DFDA8(v17, v18, v9);
    v21 = v20;
    v23 = v22;

    v86 = v23;
    sub_F01A0(v19, v21, v23);
    v24 = sub_AB92A0();
    v26 = sub_4DFDA8(v24, v25, v9);
    v28 = v27;
    v30 = v29;

    v84 = v30;
    sub_F01A0(v26, v28, v30);
    v31 = sub_AB92A0();
    v33 = sub_4DFDA8(v31, v32, v9);
    v35 = v34;
    v37 = v36;

    v83 = v37;
    sub_F01A0(v33, v35, v37);
    v38 = sub_AB92A0();
    v40 = sub_4DFDA8(v38, v39, v9);
    v42 = v41;
    v44 = v43;

    sub_F01A0(v40, v42, v44);
    v45 = sub_AB92A0();
    v47 = sub_4DFDA8(v45, v46, v9);
    v49 = v48;
    v51 = v50;

    sub_F01A0(v47, v49, v51);
    v52 = sub_AB92A0();
    v54 = sub_4DFDA8(v52, v53, v9);
    v56 = v55;
    v58 = v57;

    sub_F01A0(v54, v56, v58);
    v59 = sub_AB92A0();
    v61 = sub_4DFDA8(v59, v60, v9);
    v63 = v62;
    v65 = v64;

    v82 = v65 != -1;
    sub_F01A0(v61, v63, v65);
    v66 = *(v3 + v85);
    v67 = [v66 relationships];
    sub_119B5C();
    v68 = sub_AB8FF0();

    v69 = sub_AB92A0();
    if (*(v68 + 16))
    {
      sub_2EBF88(v69, v70);
      v72 = v71;

      v73 = v72 & 1;
    }

    else
    {

      v73 = 0;
    }

    *v6 = ((~v87 != 0) << 8) | ((~v86 != 0) << 16) | ((~v84 != 0) << 24) | ((~v83 != 0) << 32) | ((~v44 != 0) << 40) | ((~v51 != 0) << 48) | ((v58 != -1) << 56) | v73;
    *(v6 + 8) = v82;

    v5 = v88;
    v4 = v89;
  }

  v91 = 1;
  v74 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin(v74);
  v81[2] = v3;
  v81[3] = v5;
  v81[4] = v4;
  v81[5] = &v91;
  v75 = objc_allocWithZone(MusicModelLiveRadioCaseItem);
  v76 = swift_allocObject();
  *(v76 + 16) = sub_119BA8;
  *(v76 + 24) = v81;
  aBlock[4] = sub_57B84;
  aBlock[5] = v76;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_38;
  v77 = _Block_copy(aBlock);

  v78 = [v75 initWithIdentifiers:v74 block:v77];
  _Block_release(v77);

  LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

  if (v77)
  {
    __break(1u);
  }

  else
  {
    v80 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v78 personalizationStyle:v91];

    return v80;
  }

  return result;
}

void sub_119238(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = (a2 + OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_initializedProperties);
  v11 = *(a2 + OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_initializedProperties);
  if (v11 == 2)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v12 = v9;
  if (v11)
  {

    sub_4D3314(a3, a4);
    v14 = v13;
    v16 = v15;

    [v12 setContentItem:v14];
    if (v14)
    {

      *a5 = v16;
    }
  }

  v17 = *v10;
  if (*v10 == 2)
  {
    goto LABEL_51;
  }

  if ((v17 & 0x100) == 0)
  {
    goto LABEL_12;
  }

  v18 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_headerTitleText;
  swift_beginAccess();
  if (!*(v18 + 1))
  {
    v19 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_supertitleText;
    swift_beginAccess();
    if (!*(v19 + 1))
    {
      v20 = 0;
      goto LABEL_11;
    }
  }

  v20 = sub_AB9260();

LABEL_11:
  [v12 setHeaderTitleText:v20];

  v17 = *v10;
LABEL_12:
  if (v17 == 2)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  if ((v17 & 0x10000) != 0)
  {
    v21 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_headerSubtitleText;
    swift_beginAccess();
    if (*(v21 + 1))
    {

      v22 = sub_AB9260();
    }

    else
    {
      v22 = 0;
    }

    [v12 setHeaderSubtitleText:v22];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_53;
  }

  if ((v17 & 0x1000000) != 0)
  {
    v23 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_accessoryButtonTitleText;
    swift_beginAccess();
    if (*(v23 + 1))
    {

      v24 = sub_AB9260();
    }

    else
    {
      v24 = 0;
    }

    [v12 setAccessoryButtonTitleText:v24];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_54;
  }

  if ((v17 & 0x100000000) != 0)
  {
    v25 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_headlineText;
    swift_beginAccess();
    if (*(v25 + 1))
    {

      v26 = sub_AB9260();
    }

    else
    {
      v26 = 0;
    }

    [v12 setHeadlineText:v26];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_55;
  }

  if ((v17 & 0x10000000000) != 0)
  {
    v27 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_titleText;
    swift_beginAccess();
    if (*(v27 + 1))
    {

      v28 = sub_AB9260();
    }

    else
    {
      v28 = 0;
    }

    [v12 setTitleText:v28];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_56;
  }

  if ((v17 & 0x1000000000000) != 0)
  {
    v29 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_subtitleText;
    swift_beginAccess();
    if (*(v29 + 1))
    {

      v30 = sub_AB9260();
    }

    else
    {
      v30 = 0;
    }

    [v12 setSubtitleText:v30];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_57;
  }

  if ((v17 & 0x100000000000000) != 0)
  {
    v31 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_backgroundArtwork;
    swift_beginAccess();
    v32 = *(a3 + v31);
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    v45 = sub_119C50;
    v46 = v33;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_119878;
    v44 = &block_descriptor_26_0;
    v34 = _Block_copy(&aBlock);
    v35 = v32;

    [v12 setBackgroundArtworkCatalogBlock:v34];
    _Block_release(v34);

    LOBYTE(v17) = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_58;
  }

  if (v10[1])
  {
    v36 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
    swift_beginAccess();
    v37 = *(a3 + v36);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    v45 = sub_119C14;
    v46 = v38;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_119878;
    v44 = &block_descriptor_20_0;
    v39 = _Block_copy(&aBlock);
    v40 = v37;

    [v12 setVideoBackgroundArtworkCatalogBlock:v39];
    _Block_release(v39);
  }
}

id sub_119878(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_119910()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSModelLiveRadioCaseItemBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1199C4(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_initializedProperties];
  *v3 = 2;
  v3[8] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_requestedProperties] = a1;
  v4 = [a1 relationships];
  sub_119B5C();
  v5 = sub_AB8FF0();
  v6 = sub_AB92A0();
  if (*(v5 + 16) && (v8 = sub_2EBF88(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {

    v10 = [objc_opt_self() emptyPropertySet];
  }

  type metadata accessor for JSModelMediaContentItemBuilder();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[2] = v10;
  result = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v10];
  if (result)
  {
    v11[3] = result;
    *&v2[OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_contentItemBuilder] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for JSModelLiveRadioCaseItemBuilder();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_119B5C()
{
  result = qword_DEA550;
  if (!qword_DEA550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEA550);
  }

  return result;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_119BDC()
{

  return swift_deallocObject();
}

id sub_119C14()
{
  if (*(v0 + 16))
  {
    return JSVideoArtwork.artworkCatalog(defaultCropStyle:)(ICStoreArtworkInfoCropStyleSpecificRectangle);
  }

  else
  {
    return 0;
  }
}

id sub_119C50()
{
  if (*(v0 + 16))
  {
    return JSArtwork.artworkCatalog(defaultCropStyle:)(ICStoreArtworkInfoCropStyleSpecificRectangle);
  }

  else
  {
    return 0;
  }
}

char *sub_119CA0(double a1, double a2, double a3, double a4)
{
  v9 = sub_AB35C0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_AB9250();
  __chkstk_darwin(v10 - 8);
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_editDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_validationRule] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextField] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextField] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___divider] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextFieldTitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextFieldTitleLabel] = 0;
  v32.receiver = v4;
  v32.super_class = type metadata accessor for UserDetailsEditCell();
  v11 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = [objc_opt_self() whiteColor];
  [v12 setBackgroundColor:v13];

  v14 = sub_11B7F4();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v15 = sub_AB9260();

  [v14 setText:v15];

  v16 = sub_11B814();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v17 = sub_AB9260();

  [v16 setText:v17];

  [v11 addSubview:*&v11[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextFieldTitleLabel]];
  [v11 addSubview:*&v11[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextFieldTitleLabel]];
  v18 = sub_11B408();
  [v11 addSubview:v18];

  v19 = sub_11B584();
  [v11 addSubview:v19];

  v20 = sub_11B428();
  [v11 addSubview:v20];

  v21 = sub_11B644();
  [v11 addSubview:v21];

  v22 = objc_allocWithZone(NSRegularExpression);
  v23 = sub_3ED260(0x307A2D615A2D415BLL, 0xED00002B5D5F392DLL, 0);
  v24 = *&v11[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_validationRule];
  *&v11[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_validationRule] = v23;

  v25 = sub_11B428();
  v26 = [v25 text];
  if (v26)
  {
    v27 = v26;
    v28 = sub_AB92A0();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0xE000000000000000;
  }

  sub_11B9B4(v28, v30);

  return v11;
}

id sub_11A1E8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v6 = [v5 text];
  if (v6)
  {
    v7 = v6;
    sub_AB92A0();
  }

  else
  {
  }

  v8 = sub_AB9260();

  return v8;
}

void sub_11A460()
{
  v71.receiver = v0;
  v71.super_class = type metadata accessor for UserDetailsEditCell();
  objc_msgSendSuper2(&v71, "layoutSubviews");
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v67 = v2;
  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 music_inheritedLayoutInsets];
  v4 = v3;
  v6 = v5;
  [v0 bounds];
  v70 = v7;
  v68 = v8;
  v11 = UIEdgeInsetsInsetRect(v8, v9, v7, v10, v4, v6);
  v13 = v12;
  v69 = v12;
  v15 = v14;
  v17 = v16;
  v65 = v16;
  v18 = sub_11B7F4();
  [v18 frame];
  v64 = v19;
  v21 = v20;
  v23 = v22;

  v72.origin.x = v11;
  v72.origin.y = v13;
  v72.size.width = v15;
  v72.size.height = v17;
  MinX = CGRectGetMinX(v72);
  v25 = OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextFieldTitleLabel;
  [*&v0[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextFieldTitleLabel] sizeThatFits:{v21, v23}];
  v27 = v26;
  v29 = v28;
  v30 = *&v0[v25];
  v59 = v27;
  sub_ABA490();
  [v30 setFrame:?];

  v73.origin.x = MinX;
  v73.origin.y = v64;
  v73.size.width = v27;
  v73.size.height = v29;
  rect = v29;
  MaxX = CGRectGetMaxX(v73);
  v74.origin.x = MinX;
  v74.origin.y = v64;
  v74.size.width = v27;
  v74.size.height = v29;
  v31 = v15 - CGRectGetMaxX(v74);
  v32 = sub_11B814();
  [v32 frame];
  v58 = v33;
  v35 = v34;
  v37 = v36;

  v38 = OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextFieldTitleLabel;
  [*&v0[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextFieldTitleLabel] sizeThatFits:{v35, v37}];
  v56 = v40;
  v57 = v39;
  v41 = *&v0[v38];
  sub_ABA490();
  [v41 setFrame:?];

  v42 = *&qword_DF0868;
  v63 = *&qword_DF0868;
  v75.origin.x = MaxX;
  v75.origin.y = v69;
  v75.size.width = v31;
  *&v75.size.height = qword_DF0868;
  MaxY = CGRectGetMaxY(v75);
  v76.origin.x = MaxX;
  v76.origin.y = v69;
  v76.size.width = v31;
  v76.size.height = v42;
  v77.size.height = v65 - CGRectGetHeight(v76);
  v77.origin.x = MaxX;
  v77.origin.y = MaxY;
  v77.size.width = v31;
  MinY = CGRectGetMinY(v77);
  v45 = sub_11B584();
  sub_ABA490();
  [v45 setFrame:?];

  v78.origin.x = v68;
  v78.origin.y = MinY;
  v78.size.width = v70;
  v78.size.height = 1.0 / v67;
  v46 = CGRectGetMaxY(v78);
  v79.origin.x = v68;
  v79.origin.y = MinY;
  v79.size.width = v70;
  v79.size.height = 1.0 / v67;
  CGRectGetHeight(v79);
  v47 = *&qword_DF0868;
  v60 = *&qword_DF0868;
  v48 = sub_11B644();
  [v48 sizeThatFits:{v31, v47}];
  v50 = v49;
  v66 = v49;

  v80.origin.x = MaxX;
  v80.origin.y = v46;
  v80.size.width = v50;
  v80.size.height = v47;
  CGRectGetMaxX(v80);
  v81.origin.x = MaxX;
  v81.origin.y = v46;
  v81.size.width = v50;
  v81.size.height = v47;
  CGRectGetWidth(v81);
  v51 = *&v0[v25];
  sub_ABA470();
  [v51 setFrame:*&rect];

  v52 = *&v0[v38];
  sub_ABA470();
  [v52 setFrame:*&v56];

  v82.origin.x = MinX;
  v82.origin.y = v64;
  v82.size.width = v59;
  v82.size.height = rect;
  CGRectGetMaxX(v82);
  v83.origin.x = MinX;
  v83.origin.y = v58;
  v83.size.width = v57;
  v83.size.height = v56;
  CGRectGetMaxX(v83);
  v84.origin.x = MaxX;
  v84.origin.y = v69;
  v84.size.width = v31;
  v84.size.height = v63;
  CGRectGetMinX(v84);
  v85.origin.x = MaxX;
  v85.origin.y = v46;
  v85.size.width = v66;
  v85.size.height = v60;
  CGRectGetMinX(v85);
  v53 = sub_11B408();
  sub_ABA490();
  [v53 setFrame:?];

  v54 = sub_11B428();
  sub_ABA490();
  [v54 setFrame:?];

  v55 = *&v0[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel];
  sub_ABA490();
  [v55 setFrame:?];
}

id sub_11AACC()
{
  result = [objc_allocWithZone(UITextField) init];
  qword_DF0860 = result;
  return result;
}

void sub_11AB00(uint64_t a1)
{
  v29.receiver = v1;
  v29.super_class = type metadata accessor for UserDetailsEditCell();
  objc_msgSendSuper2(&v29, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_ABA310();
  v6 = sub_ABA330();

  if ((v6 & 1) == 0)
  {
    v19 = sub_11B408();
    if (qword_DE6870 != -1)
    {
      swift_once();
    }

    v20 = qword_DF0860;
    v21 = [qword_DF0860 font];
    [v19 setFont:v21];

    v22 = sub_11B428();
    v23 = [v20 font];
    [v22 setFont:v23];

    v18 = sub_11B644();
    if (qword_DE6880 != -1)
    {
      swift_once();
    }

    v16 = [qword_DF0878 font];
    [v18 setFont:v16];
    goto LABEL_15;
  }

  if (qword_DE6870 != -1)
  {
    swift_once();
  }

  v7 = [qword_DF0860 font];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() defaultMetrics];
    v10 = [v9 scaledFontForFont:v8];

    v11 = sub_11B408();
    v12 = v10;
    [v11 setFont:v12];

    v13 = sub_11B428();
    [v13 setFont:v12];
  }

  if (qword_DE6880 != -1)
  {
    swift_once();
  }

  v14 = [qword_DF0878 font];
  if (v14)
  {
    v15 = v14;
    v16 = sub_11B644();
    v17 = [objc_opt_self() defaultMetrics];
    v18 = [v17 scaledFontForFont:v15];

    [v16 setFont:v18];
LABEL_15:
  }

  v24 = [objc_opt_self() defaultMetrics];
  v25 = [v1 traitCollection];
  v26 = sub_ABA310();
  sub_AB9EF0();
  v28 = v27;

  qword_DF0868 = v28;
}

uint64_t sub_11AF74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v12 = [a1 text];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v14 = sub_AB92A0();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
LABEL_8:
    if (a4 == 32 && a5 == 0xE100000000000000 || (sub_ABB3C0() & 1) != 0)
    {
      return 0;
    }

    v18 = 1;
  }

  v20 = [a1 text];
  if (v20)
  {
    v21 = v20;
    v22 = sub_AB9260();
    v23 = [v21 stringByReplacingCharactersInRange:a2 withString:{a3, v22}];

    a4 = sub_AB92A0();
    a5 = v24;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v25 = sub_AB9420();

  if (v25)
  {
    sub_8A924();
    v26 = sub_11B428();
    v27 = sub_ABA790();

    if (v27)
    {
      if (sub_AB9420() >= 33)
      {
LABEL_26:

        return 0;
      }

      v28 = *(v6 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_validationRule);
      if (v28)
      {
        v29 = v28;
        v30 = sub_AB9420();
        v31 = sub_AB9260();
        v32 = [v29 rangeOfFirstMatchInString:v31 options:0 range:{0, v30}];
        v34 = v33;

        if (v32)
        {

          goto LABEL_26;
        }

        if (v30 != v34)
        {
          goto LABEL_26;
        }
      }
    }

    if (v18)
    {
      sub_11B9B4(a4, a5);

      v38 = v6 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_editDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = *(v38 + 8);
        ObjectType = swift_getObjectType();
        (*(v39 + 8))(v6, 0, ObjectType, v39);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    v41 = v6 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_editDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v42 = *(v41 + 8);
      v43 = swift_getObjectType();
      (*(v42 + 16))(v6, v43, v42);
      goto LABEL_30;
    }
  }

  else
  {

    v35 = v6 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_editDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(v35 + 8);
      v37 = swift_getObjectType();
      (*(v36 + 8))(v6, 1, v37, v36);
LABEL_30:
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

id sub_11B394()
{
  result = [objc_opt_self() buttonWithType:1];
  qword_DF0870 = result;
  return result;
}

id sub_11B3D4()
{
  result = [objc_allocWithZone(UILabel) init];
  qword_DF0878 = result;
  return result;
}

id sub_11B448()
{
  v1 = [objc_allocWithZone(UITextField) init];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_ABA310();
  v5 = sub_ABA330();

  if (v5)
  {
    v6 = [v1 font];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() defaultMetrics];
      v9 = [v8 scaledFontForFont:v7];

      [v1 setFont:v9];
    }
  }

  [v1 setDelegate:v0];
  return v1;
}

id sub_11B584()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___divider;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___divider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___divider);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    if (qword_DE6C70 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_E718B0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_11B644()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel];
  }

  else
  {
    v4 = sub_11B6A8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_11B6A8(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = sub_AB9260();
  [v2 setText:v3];

  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = sub_ABA310();
  v7 = sub_ABA330();

  if (v7)
  {
    v8 = [v2 font];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() defaultMetrics];
      v11 = [v10 scaledFontForFont:v9];

      [v2 setFont:v11];
    }
  }

  return v2;
}

id sub_11B834(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_11B894()
{
  v1 = [objc_allocWithZone(UILabel) init];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_ABA310();
  v5 = sub_ABA330();

  if (v5)
  {
    v6 = [v1 font];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() defaultMetrics];
      v9 = [v8 scaledFontForFont:v7];

      [v1 setFont:v9];
    }
  }

  return v1;
}

void sub_11B9B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_11B644();
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = [objc_opt_self() labelColor];
  }

  else
  {
    v6 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  v7 = v6;
  [v4 setTextColor:?];
}

id sub_11BA64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserDetailsEditCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_11BB94(void *a1)
{
  v1 = *&qword_DF0868 + *&qword_DF0868 + 1.0;
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_ABA310();
  v4 = sub_ABA330();

  if (v4)
  {
    if (qword_DE6878 != -1)
    {
      swift_once();
    }

    v5 = [qword_DF0870 titleLabel];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 font];

      if (v7)
      {
        v8 = [objc_opt_self() defaultMetrics];
        v9 = [v8 scaledFontForFont:v7];

        [v9 pointSize];
        v11 = v10;

        return v1 + v11 + 1.0;
      }
    }
  }

  return v1;
}

void sub_11BCF4()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_editDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_validationRule) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextField) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextField) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___divider) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextFieldTitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextFieldTitleLabel) = 0;
  sub_ABAFD0();
  __break(1u);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_11BDF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_11BE38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_11BEAC()
{
  v1 = *(v0 + 128);
  if (!v1)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 tokenWithImageArtworkInfo:v3];
  v5 = objc_opt_self();
  v6 = v4;
  result = [v5 sharedStoreArtworkDataSource];
  if (result)
  {
    v8 = result;
    v9 = objc_allocWithZone(MPArtworkCatalog);
    v10 = v6;
    v11 = [v9 initWithToken:v10 dataSource:v8];

    return v11;
  }

  __break(1u);
  return result;
}

id sub_11BFA8()
{
  isa = sub_AB8FD0().super.isa;
  v1 = sub_AB8FD0().super.isa;
  v2 = [(objc_class *)isa isEqualToDictionary:v1];

  return v2;
}

double sub_11C044@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v70 = 0x6449797469746E65;
  *(&v70 + 1) = 0xE800000000000000;

  sub_ABAD10();
  if (!*(a1 + 16) || (v6 = sub_2EC004(v80), (v7 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_6;
  }

  sub_808B0(*(a1 + 56) + 32 * v6, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v9 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_7;
  }

  v9 = v69[0];
  v8 = v69[1];
LABEL_7:
  v68 = v8;
  *&v70 = 0x7954797469746E65;
  *(&v70 + 1) = 0xEA00000000006570;
  sub_ABAD10();
  if (!*(a1 + 16) || (v10 = sub_2EC004(v80), (v11 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_12;
  }

  sub_808B0(*(a1 + 56) + 32 * v10, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v67 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_13;
  }

  v12 = v69[1];
  v67 = v69[0];
LABEL_13:
  v66 = v12;
  *&v70 = 1701667182;
  *(&v70 + 1) = 0xE400000000000000;
  sub_ABAD10();
  if (!*(a1 + 16) || (v13 = sub_2EC004(v80), (v14 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_18;
  }

  sub_808B0(*(a1 + 56) + 32 * v13, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v65 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_19;
  }

  v15 = v69[1];
  v65 = v69[0];
LABEL_19:
  v64 = v15;
  *&v70 = 0x656C646E6168;
  *(&v70 + 1) = 0xE600000000000000;
  sub_ABAD10();
  if (!*(a1 + 16) || (v16 = sub_2EC004(v80), (v17 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_24;
  }

  sub_808B0(*(a1 + 56) + 32 * v16, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v63 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_25;
  }

  v18 = v69[1];
  v63 = v69[0];
LABEL_25:
  v62 = v18;
  *&v70 = 7301474;
  *(&v70 + 1) = 0xE300000000000000;
  sub_ABAD10();
  if (!*(a1 + 16) || (v19 = sub_2EC004(v80), (v20 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_30;
  }

  sub_808B0(*(a1 + 56) + 32 * v19, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v61 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_31;
  }

  v21 = v69[1];
  v61 = v69[0];
LABEL_31:
  v60 = v21;
  *&v70 = 0xD000000000000016;
  *(&v70 + 1) = 0x8000000000B51FF0;
  sub_ABAD10();
  if (!*(a1 + 16) || (v22 = sub_2EC004(v80), (v23 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_36;
  }

  sub_808B0(*(a1 + 56) + 32 * v22, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v59 = 0;
    goto LABEL_37;
  }

  v59 = v69[0];
LABEL_37:
  *&v70 = 0x72616F426E4F7369;
  *(&v70 + 1) = 0xEB00000000646564;
  sub_ABAD10();
  if (!*(a1 + 16) || (v24 = sub_2EC004(v80), (v25 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_42;
  }

  sub_808B0(*(a1 + 56) + 32 * v24, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    v58 = 0;
    goto LABEL_43;
  }

  v58 = v69[0];
LABEL_43:
  *&v70 = 0x7461766972507369;
  *(&v70 + 1) = 0xE900000000000065;
  sub_ABAD10();
  if (!*(a1 + 16) || (v26 = sub_2EC004(v80), (v27 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_48;
  }

  sub_808B0(*(a1 + 56) + 32 * v26, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    v57 = 0;
    goto LABEL_49;
  }

  v57 = v69[0];
LABEL_49:
  *&v70 = 0x6966697265567369;
  *(&v70 + 1) = 0xEA00000000006465;
  sub_ABAD10();
  if (!*(a1 + 16) || (v28 = sub_2EC004(v80), (v29 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_54;
  }

  sub_808B0(*(a1 + 56) + 32 * v28, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    v56 = 0;
    goto LABEL_55;
  }

  v56 = v69[0];
LABEL_55:
  *&v70 = 0x72506C6169636F73;
  *(&v70 + 1) = 0xEF6449656C69666FLL;
  sub_ABAD10();
  if (*(a1 + 16) && (v30 = sub_2EC004(v80), (v31 & 1) != 0))
  {
    sub_808B0(*(a1 + 56) + 32 * v30, &v70);
    sub_8085C(v80);
    v32 = swift_dynamicCast();
    if (v32)
    {
      v33 = v69[0];
    }

    else
    {
      v33 = 0;
    }

    if (v32)
    {
      v34 = v69[1];
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    sub_8085C(v80);
    v33 = 0;
    v34 = 0;
  }

  v69[0] = 0x756F72676B636162;
  v69[1] = 0xEF6567616D49646ELL;
  sub_ABAD10();
  if (!*(a1 + 16) || (v35 = sub_2EC004(v80), (v36 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_69;
  }

  sub_808B0(*(a1 + 56) + 32 * v35, &v70);
  sub_8085C(v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:
    v39 = 0;
    goto LABEL_70;
  }

  v37 = objc_allocWithZone(ICStoreArtworkInfo);
  isa = sub_AB8FD0().super.isa;
  v39 = [v37 initWithArtworkResponseDictionary:isa];

LABEL_70:
  strcpy(v69, "profileImage");
  BYTE5(v69[1]) = 0;
  HIWORD(v69[1]) = -5120;
  sub_ABAD10();
  if (*(a1 + 16) && (v40 = sub_2EC004(v80), (v41 & 1) != 0))
  {
    sub_808B0(*(a1 + 56) + 32 * v40, &v70);
    sub_8085C(v80);
  }

  else
  {
    sub_8085C(v80);
    v70 = 0u;
    v71 = 0u;
  }

  if (!*(&v71 + 1))
  {
    sub_9BC10(&v70);
    goto LABEL_80;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_80:
    v45 = 0;
    goto LABEL_81;
  }

  v55 = a2;
  v42 = v69[0];
  v43 = objc_allocWithZone(ICStoreArtworkInfo);
  v44 = sub_AB8FD0().super.isa;
  v45 = [v43 initWithArtworkResponseDictionary:v44];

  v69[0] = 7107189;
  v69[1] = 0xE300000000000000;
  sub_ABAD10();
  if (*(v42 + 16) && (v46 = sub_2EC004(v80), (v47 & 1) != 0))
  {
    sub_808B0(*(v42 + 56) + 32 * v46, &v70);
    sub_8085C(v80);
  }

  else
  {
    sub_8085C(v80);
    v70 = 0u;
    v71 = 0u;
  }

  a2 = v55;

  if (*(&v71 + 1))
  {
    if (swift_dynamicCast())
    {
      v48 = v69[0];
      v49 = v69[1];
      goto LABEL_82;
    }
  }

  else
  {
    sub_9BC10(&v70);
  }

LABEL_81:
  v48 = 0;
  v49 = 0xE000000000000000;
LABEL_82:
  *&v70 = v39;
  *(&v70 + 1) = v61;
  *&v71 = v60;
  *(&v71 + 1) = v63;
  *&v72 = v62;
  *(&v72 + 1) = v9;
  *&v73 = v68;
  BYTE8(v73) = v59;
  BYTE9(v73) = v58;
  BYTE10(v73) = v57;
  BYTE11(v73) = v56;
  *&v74 = v65;
  *(&v74 + 1) = v64;
  *&v75 = v67;
  *(&v75 + 1) = v66;
  *&v76 = v33;
  *(&v76 + 1) = v34;
  *&v77 = a1;
  *(&v77 + 1) = a2;
  *&v78 = v45;
  *(&v78 + 1) = v48;
  v79 = v49;
  v80[0] = v39;
  v80[1] = v61;
  v80[2] = v60;
  v80[3] = v63;
  v80[4] = v62;
  v80[5] = v9;
  v80[6] = v68;
  v81 = v59;
  v82 = v58;
  v83 = v57;
  v84 = v56;
  v85 = v65;
  v86 = v64;
  v87 = v67;
  v88 = v66;
  v89 = v33;
  v90 = v34;
  v91 = a1;
  v92 = a2;
  v93 = v45;
  v94 = v48;
  v95 = v49;
  sub_C343C(&v70, v69);
  sub_11CB0C(v80);
  v50 = v77;
  *(a3 + 96) = v76;
  *(a3 + 112) = v50;
  *(a3 + 128) = v78;
  *(a3 + 144) = v79;
  v51 = v73;
  *(a3 + 32) = v72;
  *(a3 + 48) = v51;
  v52 = v75;
  *(a3 + 64) = v74;
  *(a3 + 80) = v52;
  result = *&v70;
  v54 = v71;
  *a3 = v70;
  *(a3 + 16) = v54;
  return result;
}

id CTRunRef.PartialRunView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id TextDrawing.View.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled] = 0;
  v9 = &v4[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext];
  sub_11F44(v20);
  v10 = v20[5];
  v9[4] = v20[4];
  v9[5] = v10;
  v11 = v20[7];
  v9[6] = v20[6];
  v9[7] = v11;
  v12 = v20[1];
  *v9 = v20[0];
  v9[1] = v12;
  v13 = v20[3];
  v9[2] = v20[2];
  v9[3] = v13;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for TextDrawing.View();
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setOpaque:0];
  [v16 setUserInteractionEnabled:0];

  return v16;
}

void TextDrawing.View.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled) = 0;
  v1 = (v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  sub_11F44(v6);
  v2 = v6[5];
  v1[4] = v6[4];
  v1[5] = v2;
  v3 = v6[7];
  v1[6] = v6[6];
  v1[7] = v3;
  v4 = v6[1];
  *v1 = v6[0];
  v1[1] = v4;
  v5 = v6[3];
  v1[2] = v6[2];
  v1[3] = v5;
  sub_ABAFD0();
  __break(1u);
}

uint64_t TextDrawing.View.text.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80);
  v15 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64);
  v16 = v1;
  v2 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112);
  v17 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96);
  v18 = v2;
  v3 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16);
  v11 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v12 = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48);
  v13 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32);
  v14 = v4;
  v19[6] = v17;
  v19[7] = v2;
  v19[4] = v15;
  v19[5] = v1;
  v19[2] = v13;
  v19[3] = v4;
  v19[0] = v11;
  v19[1] = v3;
  if (sub_11D03C(v19) == 1)
  {
    return 0;
  }

  v6 = v11;
  if (BYTE8(v12))
  {
    v7 = v12;
    sub_E1F1C(v11, *(&v11 + 1), v12, 1);
    sub_15F84(&v11, &v10, &qword_DF08F8);
    v8 = [v6 string];
    v9 = sub_AB92A0();

    sub_E1E78(v6, *(&v6 + 1), v7, 1);
    sub_12E1C(&v11, &qword_DF08F8);
    return v9;
  }

  else
  {

    return v11;
  }
}

double TextDrawing.View.textDrawingContext.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80);
  v17 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64);
  v18 = v3;
  v4 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112);
  v19 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96);
  v20 = v4;
  v5 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16);
  v13 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v14 = v5;
  v6 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48);
  v15 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32);
  v16 = v6;
  sub_15F84(&v13, &v12, &qword_DF08F8);
  v7 = v18;
  a1[4] = v17;
  a1[5] = v7;
  v8 = v20;
  a1[6] = v19;
  a1[7] = v8;
  v9 = v14;
  *a1 = v13;
  a1[1] = v9;
  result = *&v15;
  v11 = v16;
  a1[2] = v15;
  a1[3] = v11;
  return result;
}

uint64_t sub_11D03C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t TextDrawing.View.textDrawingContext.setter(__int128 *a1)
{
  v3 = a1[3];
  v4 = a1[5];
  v119 = a1[4];
  v120 = v4;
  v5 = a1[5];
  v6 = a1[7];
  v121 = a1[6];
  v122 = v6;
  v7 = a1[1];
  v115 = *a1;
  v116 = v7;
  v8 = a1[3];
  v10 = *a1;
  v9 = a1[1];
  v117 = a1[2];
  v118 = v8;
  v11 = &v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext];
  v12 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48];
  v125 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32];
  v126 = v12;
  v13 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16];
  v123 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext];
  v124 = v13;
  v14 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112];
  v129 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96];
  v130 = v14;
  v15 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80];
  v127 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64];
  v128 = v15;
  v106[3] = v3;
  v106[2] = v117;
  v106[1] = v9;
  v106[0] = v10;
  v106[7] = a1[7];
  v106[6] = v121;
  v106[5] = v5;
  v106[4] = v119;
  if (sub_11D03C(v106) != 1)
  {
    v102 = v127;
    v103 = v128;
    v104 = v129;
    v105 = v130;
    v98 = v123;
    v99 = v124;
    v100 = v125;
    v101 = v126;
    if (sub_11D03C(&v98) == 1)
    {
      v28 = *(v11 + 5);
      v69 = *(v11 + 4);
      v70 = v28;
      v29 = *(v11 + 7);
      v71 = *(v11 + 6);
      v72 = v29;
      v30 = *(v11 + 1);
      v65 = *v11;
      v66 = v30;
      v31 = *(v11 + 3);
      v67 = *(v11 + 2);
      v68 = v31;
      v32 = *a1;
      v33 = a1[1];
      v34 = a1[3];
      *(v11 + 2) = a1[2];
      *(v11 + 3) = v34;
      *v11 = v32;
      *(v11 + 1) = v33;
      v35 = a1[4];
      v36 = a1[5];
      v37 = a1[7];
      *(v11 + 6) = a1[6];
      *(v11 + 7) = v37;
      *(v11 + 4) = v35;
      *(v11 + 5) = v36;
      v83 = v117;
      v84 = v118;
      v81 = v115;
      v82 = v116;
      v87 = v121;
      v88 = v122;
      v85 = v119;
      v86 = v120;
      sub_15F84(a1, &v107, &qword_DF08F8);
      sub_109B04(&v81, &v107);
      sub_12E1C(&v65, &qword_DF08F8);
      [v1 setNeedsDisplay];
      v38 = a1;
LABEL_12:
      sub_12E1C(v38, &qword_DF08F8);
      v27 = a1;
      return sub_12E1C(v27, &qword_DF08F8);
    }

    v85 = v127;
    v86 = v128;
    v87 = v129;
    v88 = v130;
    v81 = v123;
    v82 = v124;
    v83 = v125;
    v84 = v126;
    v39 = a1[3];
    v91 = a1[2];
    v92 = v39;
    v40 = a1[1];
    v89 = *a1;
    v90 = v40;
    v41 = a1[7];
    v95 = a1[6];
    v96 = v41;
    v42 = a1[5];
    v93 = a1[4];
    v94 = v42;
    v97[3] = v126;
    v97[2] = v125;
    v97[1] = v124;
    v97[0] = v123;
    v97[7] = v130;
    v97[6] = v129;
    v97[5] = v128;
    v97[4] = v127;
    if (sub_11D03C(v97) == 1)
    {
      v69 = v93;
      v70 = v94;
      v71 = v95;
      v72 = v96;
      v65 = v89;
      v66 = v90;
      v67 = v91;
      v68 = v92;
      if (sub_11D03C(&v65) == 1)
      {
        v111 = v85;
        v112 = v86;
        v113 = v87;
        v114 = v88;
        v107 = v81;
        v108 = v82;
        v109 = v83;
        v110 = v84;
        sub_15F84(&v123, &v57, &qword_DF08F8);
        v27 = &v107;
        return sub_12E1C(v27, &qword_DF08F8);
      }
    }

    else
    {
      v61 = v93;
      v62 = v94;
      v63 = v95;
      v64 = v96;
      v57 = v89;
      v58 = v90;
      v59 = v91;
      v60 = v92;
      if (sub_11D03C(&v57) != 1)
      {
        v55[4] = v93;
        v55[5] = v94;
        v55[6] = v95;
        v55[7] = v96;
        v55[0] = v89;
        v55[1] = v90;
        v55[2] = v91;
        v55[3] = v92;
        v67 = v91;
        v68 = v92;
        v65 = v89;
        v66 = v90;
        v71 = v95;
        v72 = v96;
        v69 = v93;
        v70 = v94;
        v110 = v84;
        v109 = v83;
        v108 = v82;
        v107 = v81;
        v114 = v88;
        v113 = v87;
        v112 = v86;
        v111 = v85;
        sub_15F84(&v123, v54, &qword_DF08F8);
        sub_15F84(a1, v54, &qword_DF08F8);
        sub_15F84(&v123, v54, &qword_DF08F8);
        sub_15F84(a1, v54, &qword_DF08F8);
        v53 = _s16MusicApplication11TextDrawingV7ContextV2eeoiySbAE_AEtFZ_0(&v107, &v65);
        sub_12E1C(v55, &qword_DF08F8);
        v56[4] = v85;
        v56[5] = v86;
        v56[6] = v87;
        v56[7] = v88;
        v56[0] = v81;
        v56[1] = v82;
        v56[2] = v83;
        v56[3] = v84;
        sub_12E1C(v56, &qword_DF08F8);
        if (v53)
        {
          sub_12E1C(a1, &qword_DF08F8);
          sub_12E1C(&v123, &qword_DF08F8);
          v27 = a1;
          return sub_12E1C(v27, &qword_DF08F8);
        }

        goto LABEL_11;
      }
    }

    v77 = v93;
    v78 = v94;
    v79 = v95;
    v80 = v96;
    v73 = v89;
    v74 = v90;
    v75 = v91;
    v76 = v92;
    v69 = v85;
    v70 = v86;
    v71 = v87;
    v72 = v88;
    v65 = v81;
    v66 = v82;
    v67 = v83;
    v68 = v84;
    sub_15F84(&v123, &v107, &qword_DF08F8);
    sub_15F84(a1, &v107, &qword_DF08F8);
    sub_15F84(&v123, &v107, &qword_DF08F8);
    sub_15F84(a1, &v107, &qword_DF08F8);
    sub_12E1C(&v65, &qword_DF0900);
LABEL_11:
    v43 = *(v11 + 5);
    v61 = *(v11 + 4);
    v62 = v43;
    v44 = *(v11 + 7);
    v63 = *(v11 + 6);
    v64 = v44;
    v45 = *(v11 + 1);
    v57 = *v11;
    v58 = v45;
    v46 = *(v11 + 3);
    v59 = *(v11 + 2);
    v60 = v46;
    v47 = *a1;
    v48 = a1[1];
    v49 = a1[3];
    *(v11 + 2) = a1[2];
    *(v11 + 3) = v49;
    *v11 = v47;
    *(v11 + 1) = v48;
    v50 = a1[4];
    v51 = a1[5];
    v52 = a1[7];
    *(v11 + 6) = a1[6];
    *(v11 + 7) = v52;
    *(v11 + 4) = v50;
    *(v11 + 5) = v51;
    v83 = v117;
    v84 = v118;
    v81 = v115;
    v82 = v116;
    v87 = v121;
    v88 = v122;
    v85 = v119;
    v86 = v120;
    sub_109B04(&v81, v56);
    sub_12E1C(&v57, &qword_DF08F8);
    [v1 setNeedsDisplay];
    sub_12E1C(a1, &qword_DF08F8);
    v38 = &v123;
    goto LABEL_12;
  }

  v85 = v127;
  v86 = v128;
  v87 = v129;
  v88 = v130;
  v81 = v123;
  v82 = v124;
  v83 = v125;
  v84 = v126;
  result = sub_11D03C(&v81);
  if (result == 1)
  {
    return result;
  }

  sub_11F44(&v98);
  v17 = *(v11 + 5);
  v111 = *(v11 + 4);
  v112 = v17;
  v18 = *(v11 + 7);
  v113 = *(v11 + 6);
  v114 = v18;
  v19 = *(v11 + 1);
  v107 = *v11;
  v108 = v19;
  v20 = *(v11 + 3);
  v109 = *(v11 + 2);
  v110 = v20;
  v21 = v98;
  v22 = v99;
  v23 = v101;
  *(v11 + 2) = v100;
  *(v11 + 3) = v23;
  *v11 = v21;
  *(v11 + 1) = v22;
  v24 = v102;
  v25 = v103;
  v26 = v105;
  *(v11 + 6) = v104;
  *(v11 + 7) = v26;
  *(v11 + 4) = v24;
  *(v11 + 5) = v25;
  v67 = v125;
  v68 = v126;
  v65 = v123;
  v66 = v124;
  v71 = v129;
  v72 = v130;
  v69 = v127;
  v70 = v128;
  sub_109B04(&v65, v97);
  sub_12E1C(&v107, &qword_DF08F8);
  [v1 setNeedsDisplay];
  v27 = &v123;
  return sub_12E1C(v27, &qword_DF08F8);
}

void (*TextDrawing.View.textDrawingContext.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x308uLL);
  }

  *a1 = v3;
  *(v3 + 768) = v1;
  v4 = (v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v5 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48);
  v7 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v6 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16);
  *(v3 + 32) = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32);
  *(v3 + 48) = v5;
  *v3 = v7;
  *(v3 + 16) = v6;
  v8 = v4[7];
  v10 = v4[4];
  v9 = v4[5];
  *(v3 + 96) = v4[6];
  *(v3 + 112) = v8;
  *(v3 + 64) = v10;
  *(v3 + 80) = v9;
  v11 = v4[3];
  v13 = *v4;
  v12 = v4[1];
  *(v3 + 416) = v4[2];
  *(v3 + 432) = v11;
  *(v3 + 384) = v13;
  *(v3 + 400) = v12;
  v14 = v4[7];
  v16 = v4[4];
  v15 = v4[5];
  *(v3 + 480) = v4[6];
  *(v3 + 496) = v14;
  *(v3 + 448) = v16;
  *(v3 + 464) = v15;
  sub_15F84(v3, v3 + 512, &qword_DF08F8);
  return sub_11D834;
}

void sub_11D834(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[29];
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    sub_15F84((v2 + 8), (v2 + 40), &qword_DF08F8);
    TextDrawing.View.textDrawingContext.setter(v2 + 8);
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    sub_12E1C((v2 + 32), &qword_DF08F8);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v11 = v2[31];
    v2[22] = v2[30];
    v2[23] = v11;
    v12 = v2[25];
    v2[16] = v2[24];
    v2[17] = v12;
    v13 = v2[27];
    v2[18] = v2[26];
    v2[19] = v13;
    TextDrawing.View.textDrawingContext.setter(v2 + 16);
  }

  free(v2);
}

uint64_t TextDrawing.View.firstBaselineOffsetFromTop.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80);
  v13 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64);
  v14 = v1;
  v2 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112);
  v15 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96);
  v16 = v2;
  v3 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16);
  v9 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v10 = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48);
  v11 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32);
  v12 = v4;
  v19 = v11;
  v20 = v4;
  v17 = v9;
  v18 = v3;
  v23 = v15;
  v24 = v2;
  v21 = v13;
  v22 = v1;
  result = sub_11D03C(&v17);
  if (result != 1)
  {
    v8[4] = v21;
    v8[5] = v22;
    v8[6] = v23;
    v8[7] = v24;
    v8[0] = v17;
    v8[1] = v18;
    v8[2] = v19;
    v8[3] = v20;
    v7[2] = v11;
    v7[3] = v12;
    v7[0] = v9;
    v7[1] = v10;
    v7[6] = v15;
    v7[7] = v16;
    v7[4] = v13;
    v7[5] = v14;
    sub_109B04(v7, &v6);
    sub_11DEFC(v8);
    CGRectGetMinY(v25);
    return sub_12E1C(&v9, &qword_DF08F8);
  }

  return result;
}

uint64_t TextDrawing.View.lastBaselineOffsetFromBottom.getter()
{
  v1 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80];
  v21 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64];
  v22 = v1;
  v2 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112];
  v23 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96];
  v24 = v2;
  v3 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16];
  v17 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext];
  v18 = v3;
  v4 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48];
  v19 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32];
  v20 = v4;
  v27 = v19;
  v28 = v4;
  v25 = v17;
  v26 = v3;
  v31 = v23;
  v32 = v2;
  v29 = v21;
  v30 = v1;
  result = sub_11D03C(&v25);
  if (result != 1)
  {
    v16[4] = v29;
    v16[5] = v30;
    v16[6] = v31;
    v16[7] = v32;
    v16[0] = v25;
    v16[1] = v26;
    v16[2] = v27;
    v16[3] = v28;
    v15[2] = v19;
    v15[3] = v20;
    v15[0] = v17;
    v15[1] = v18;
    v15[6] = v23;
    v15[7] = v24;
    v15[4] = v21;
    v15[5] = v22;
    sub_109B04(v15, &v14);
    sub_11DEFC(v16);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v0 bounds];
    CGRectGetMaxY(v33);
    v34.origin.x = v7;
    v34.origin.y = v9;
    v34.size.width = v11;
    v34.size.height = v13;
    CGRectGetMaxY(v34);
    return sub_12E1C(&v17, &qword_DF08F8);
  }

  return result;
}

uint64_t TextDrawing.View.isDisabled.getter()
{
  v1 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id TextDrawing.View.isDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    v7 = 1.0;
    if (a1)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    return [v1 setAlpha:v7];
  }

  return result;
}

void (*TextDrawing.View.isDisabled.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_11DCB4;
}

void sub_11DCB4(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *(*a1 + 40);
  v6 = v3[v4];
  v3[v4] = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = 1.0;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (((v5 ^ v6) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = 1.0;
  if (v5)
  {
LABEL_7:
    UIInterfaceGetContentDisabledAlpha();
  }

LABEL_8:
  [v2[3] setAlpha:v7];
LABEL_9:

  free(v2);
}

Swift::Bool __swiftcall TextDrawing.View._shouldAnimateProperty(withKey:)(Swift::String withKey)
{
  object = withKey._object;
  countAndFlagsBits = withKey._countAndFlagsBits;
  v4 = sub_AB9260();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TextDrawing.View();
  v5 = objc_msgSendSuper2(&v8, "_shouldAnimatePropertyWithKey:", v4);

  if ((v5 & 1) != 0 || countAndFlagsBits == 0x73746E65746E6F63 && object == 0xE800000000000000)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_ABB3C0();
  }

  return v6 & 1;
}

uint64_t sub_11DEFC(uint64_t a1)
{
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v39 = 0;
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(v11 + 16))
    {

      sub_2F5AD8(NSParagraphStyleAttributeName);
      if (v21)
      {
        swift_unknownObjectRetain();
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (!v20)
        {
          swift_unknownObjectRelease();
        }

LABEL_11:
        v39 = v20;

        v19 = 0;
        if (!v20)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v20 = 0;
    goto LABEL_11;
  }

  v13 = *a1;
  v14 = *a1;
  v15 = [v14 length];
  v16 = swift_allocObject();
  *(v16 + 16) = &v39;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_11E710;
  *(v17 + 24) = v16;
  v37 = sub_109B70;
  v38 = v17;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_9B8A0;
  v36 = &block_descriptor_39;
  v18 = _Block_copy(&aBlock);

  [v14 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v15 usingBlock:{0, v18}];
  _Block_release(v18);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  sub_E1E78(v13, v12, v11, 1);
  if (v16)
  {
    __break(1u);
    goto LABEL_21;
  }

  v19 = sub_11E710;
  v20 = v39;
  if (!v39)
  {
    goto LABEL_16;
  }

LABEL_12:
  v22 = [v20 alignment];
  if (v22 > 2)
  {
    if ((v22 - 3) < 2)
    {
LABEL_16:
      sub_ABA470();
LABEL_17:
      sub_AB3A10();

      return sub_17654(v19);
    }
  }

  else
  {
    if (v22 <= 1)
    {
      goto LABEL_16;
    }

    if (v22 == &dword_0 + 2)
    {
      sub_ABA470();
      v24 = v10;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v43.origin.x = v4;
      v43.origin.y = v6;
      v43.size.width = v8;
      v43.size.height = v24;
      CGRectGetMaxX(v43);
      v44.origin.x = v26;
      v44.origin.y = v28;
      v44.size.width = v30;
      v44.size.height = v32;
      CGRectGetWidth(v44);
      goto LABEL_17;
    }
  }

LABEL_21:
  aBlock = 0;
  v34 = 0xE000000000000000;
  sub_ABAD90(24);
  v40._object = 0x8000000000B4AB80;
  v40._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v40);
  v41._countAndFlagsBits = 0x6C4174786554534ELL;
  v41._object = 0xEF746E656D6E6769;
  sub_AB94A0(v41);
  v42._countAndFlagsBits = 32;
  v42._object = 0xE100000000000000;
  sub_AB94A0(v42);
  type metadata accessor for NSTextAlignment(0);
  sub_ABAF70();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

void sub_11E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  sub_15F84(a1, v10, &unk_DE8E40);
  if (v11)
  {
    sub_11E740();
    v6 = swift_dynamicCast();
    v7 = v9;
    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    sub_12E1C(v10, &unk_DE8E40);
    v7 = 0;
  }

  v8 = *a5;
  *a5 = v7;
}

id TextDrawing.View.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextDrawing.View();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s16MusicApplication11TextDrawingV4ViewC4drawyySo6CGRectVF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80);
  v28 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64);
  v29 = v1;
  v2 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112);
  v30 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96);
  v31 = v2;
  v3 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16);
  v24 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v25 = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48);
  v26 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32);
  v27 = v4;
  v34 = v26;
  v35 = v4;
  v32 = v24;
  v33 = v3;
  v38 = v30;
  v39 = v2;
  v36 = v28;
  v37 = v1;
  result = sub_11D03C(&v32);
  if (result != 1)
  {
    v23[4] = v36;
    v23[5] = v37;
    v23[6] = v38;
    v23[7] = v39;
    v23[0] = v32;
    v23[1] = v33;
    v23[2] = v34;
    v23[3] = v35;
    v22[4] = v28;
    v22[5] = v29;
    v22[6] = v30;
    v22[7] = v31;
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v22[3] = v27;
    sub_109B04(v22, &v21);
    sub_11DEFC(v23);
    v10 = *(&v34 + 1);
    v11 = v32;
    if (BYTE8(v33))
    {
      [v32 drawWithRect:*(&v34 + 1) options:v34 context:?];
    }

    else
    {
      v13 = *(&v32 + 1);
      v12 = v33;
      v14 = v9;
      v15 = v8;
      v16 = v7;
      v17 = v6;
      v18 = v34;
      sub_E1F1C(v11, v13, v12, 0);
      v19 = sub_AB9260();
      sub_3E856C(v12);
      type metadata accessor for Key(0);
      sub_3FB3C();
      isa = sub_AB8FD0().super.isa;

      [v19 drawWithRect:v10 options:isa attributes:v18 context:{v17, v16, v15, v14}];
    }

    return sub_12E1C(&v24, &qword_DF08F8);
  }

  return result;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_11E740()
{
  result = qword_DF0930;
  if (!qword_DF0930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF0930);
  }

  return result;
}

char *sub_11E78C()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource] = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController;
  sub_121E98(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0D28);
  swift_allocObject();
  *&v1[v6] = RequestResponse.Controller.init(request:)(v44);
  v7 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v1[v7] = swift_allocObject();
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_noContentStateController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_shouldPersistArtistSelection] = 0;
  v43.receiver = v1;
  v43.super_class = type metadata accessor for ArtistListViewController(0);
  v8 = objc_msgSendSuper2(&v43, "initWithNibName:bundle:", 0, 0);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v9 = sub_AB9260();

  [v8 setTitle:v9];

  v10 = *&v8[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController];
  v11 = [v8 traitCollection];
  v12 = *&v8[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController];
  if (v12)
  {
    if (v12[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
    {
      v13 = qword_AFF018[v12[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType]];
    }

    else
    {
      v14 = v12;
      v13 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    }
  }

  else
  {
    v13 = 0;
  }

  swift_beginAccess();
  v15 = *(v10 + 128);
  v44[6] = *(v10 + 112);
  v44[7] = v15;
  v44[8] = *(v10 + 144);
  v45 = *(v10 + 160);
  v16 = *(v10 + 64);
  v44[2] = *(v10 + 48);
  v44[3] = v16;
  v17 = *(v10 + 96);
  v44[4] = *(v10 + 80);
  v44[5] = v17;
  v18 = *(v10 + 32);
  v44[0] = *(v10 + 16);
  v44[1] = v18;
  v19 = *&v44[0];
  v28 = *(v10 + 56);
  v29 = *(v10 + 72);
  v30 = *(v10 + 88);
  v26 = *(v10 + 24);
  v27 = *(v10 + 40);
  v23 = *(v10 + 105);
  v24 = *(v10 + 121);
  *v25 = *(v10 + 137);
  *&v25[15] = *(v10 + 152);
  sub_15F84(v44, &v31, &qword_DF0CE0);
  v20 = UITraitCollection.mediaLibrary.getter();

  v21.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v32 = v26;
  v39 = v23;
  v42 = 0;
  v31 = v20;
  v36 = v30;
  v37 = v21.rawValue | v13;
  v38 = 0;
  v40 = v24;
  v41[0] = *v25;
  *(v41 + 15) = *&v25[15];
  RequestResponse.Controller.request.setter(&v31);

  return v8;
}

void sub_11EBE8()
{
  v1 = v0;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CE8);
  v2 = *(v75 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v75);
  v5 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v74 = &v72 - v6;
  v7 = type metadata accessor for ArtistListViewController(0);
  v76.receiver = v0;
  v76.super_class = v7;
  objc_msgSendSuper2(&v76, "viewDidLoad");
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 systemBackgroundColor];
  [v9 setBackgroundColor:v11];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v80 = sub_12600C;
  v81 = v12;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v78 = sub_496F34;
  v79 = &block_descriptor_40;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 initWithSectionProvider:v14];
  _Block_release(v14);

  v16 = [v1 view];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = objc_allocWithZone(UICollectionView);
  v73 = v15;
  v27 = [v26 initWithFrame:v15 collectionViewLayout:{v19, v21, v23, v25}];
  [v27 setDelegate:v1];
  v28 = v27;
  [v28 setAlwaysBounceVertical:1];
  v29 = v28;
  v30 = [v10 systemBackgroundColor];
  [v29 setBackgroundColor:v30];

  [v29 setAutoresizingMask:18];
  [v29 setAllowsFocus:1];
  [v29 setRemembersLastFocusedIndexPath:1];
  [v29 setKeyboardDismissMode:1];

  type metadata accessor for ArtistListViewController.Cell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v31 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView];
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView] = v29;
  v32 = v29;

  v33 = [v1 view];
  if (!v33)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v34 = v33;
  [v33 addSubview:v32];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_13C80(0, &unk_DF0CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
  v35 = v74;
  sub_ABA030();
  v36 = v75;
  (*(v2 + 16))(v5, v35, v75);
  v37 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v38 = swift_allocObject();
  (*(v2 + 32))(v38 + v37, v5, v36);
  v39 = objc_allocWithZone(type metadata accessor for ArtistListViewController.DataSource(0));
  type metadata accessor for ModelResponseIndexBarController();
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 40) = 100;
  swift_unknownObjectWeakInit();
  *(v40 + 56) = _swiftEmptyArrayStorage;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 80) = 0;
  *(v40 + 88) = 1;
  *(v40 + 16) = v32;
  *&v39[qword_DF09E8] = v40;
  v41 = v32;

  v42 = sub_AB5200();
  v43 = *&v42[qword_DF09E8];
  v44 = *(v43 + 40);
  *(v43 + 40) = 50;
  if (v44 != 50)
  {

    sub_380968();
  }

  v45 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource];
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource] = v42;
  v46 = v42;

  v47 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v46;
  v50 = (v47 + *(*v47 + 128));
  swift_beginAccess();
  v51 = *v50;
  *v50 = sub_12619C;
  v50[1] = v49;
  v52 = v46;

  sub_17654(v51);

  v53 = [v1 view];
  if (!v53)
  {
    goto LABEL_13;
  }

  v54 = v53;
  type metadata accessor for LibraryNoContentStateController();
  swift_allocObject();
  v55 = sub_3E2914(v54);
  v56 = swift_allocObject();
  *(v56 + 16) = v41;
  v57 = v55[6];
  v55[6] = sub_1261DC;
  v55[7] = v56;
  v58 = v41;

  sub_17654(v57);

  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = v55[27];
  v55[27] = sub_1261E4;
  v55[28] = v59;

  sub_17654(v60);

  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_noContentStateController] = v55;

  v61 = sub_122184();
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = *(v61 + 88);
  *(v61 + 88) = sub_1261EC;
  *(v61 + 96) = v62;

  sub_17654(v63);

  static ApplicationCapabilities.shared.getter(&aBlock);
  sub_70C54(&aBlock);
  if (BYTE8(aBlock))
  {
    v64 = objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
    v65 = sub_4F4944(2u);
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = &v65[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
    v68 = *&v65[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
    *v67 = sub_1261F4;
    v67[1] = v66;

    sub_17654(v68);

    v69 = [v1 navigationItem];
    v70 = sub_4F46B0();
    [v69 setRightBarButtonItem:v70];

    (*(v2 + 8))(v74, v75);

    v71 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController];
    *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController] = v65;
  }

  else
  {
    (*(v2 + 8))(v74, v75);
  }
}

uint64_t sub_11F594(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  sub_125604(a2);
  v6 = v5;

  return v6;
}

uint64_t sub_11F600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CD0);
  __chkstk_darwin(v4);
  v6 = v17 - v5 + 16;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
  __chkstk_darwin(v7);
  v9 = (v17 - v8 + 16);
  sub_15F84(a3, v17 - v8 + 16, &qword_DF09B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
  }

  else
  {
    sub_36B0C(v9, v6, &qword_DF0CD0);
    v10 = SnapshotIdentifier.Lazy.object.getter(v4);
    sub_12E1C(v6, &qword_DF0CD0);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
  }

  swift_weakInit();
  v17[0] = 0x73747369747241;
  v17[1] = 0xE700000000000000;
  swift_weakAssign();

  v18[3] = _s17ListConfigurationVMa(0);
  v18[4] = sub_124E50(&qword_DF0BF0, _s17ListConfigurationVMa);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  sub_11F8D4(v10, v17, boxed_opaque_existential_0);
  sub_ABA2B0();
  swift_allocObject();
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_ABA2E0();
}

uint64_t sub_11F8D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_AB5070();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s17ListConfigurationVMa(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 2) = xmmword_AFEDA0;
  *(v13 + 3) = xmmword_AFEDB0;
  *&v13[*(v11 + 32)] = 0x4028000000000000;
  v13[*(v11 + 36)] = 0;
  sub_AB5040();
  sub_AB5010();
  (*(v7 + 8))(v9, v6);
  *v13 = a1;
  sub_125340(a2, (v13 + 8));
  v14 = a1;
  v15 = [v14 name];
  if (v15)
  {
    v16 = v15;
    v17 = sub_AB92A0();
    v19 = v18;
  }

  else
  {

    v17 = 0;
    v19 = 0;
  }

  v21 = &v13[*(v10 + 40)];
  *v21 = v17;
  v21[1] = v19;
  __chkstk_darwin(v20);
  *(&v23 - 2) = v14;
  *(&v23 - 1) = a2;
  static Artwork.with(_:)(sub_12539C, &v13[*(v10 + 28)]);

  sub_1252D8(v13, a3, _s17ListConfigurationVMa);
  sub_1253A4(a2);
  return sub_124F38(v13);
}

void sub_11FB20(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0D00);
  __chkstk_darwin(v3 - 8);
  v5 = &v58 - v4;
  v6 = _s17ListConfigurationVMa(0);
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  v12 = sub_AB4F50();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v58 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  v61 = v8;
  sub_AB4ED0();
  v21 = a2;
  v22 = sub_AB4E30();
  v68 = v22;
  v69 = &protocol witness table for UICellConfigurationState;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v67);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v60 = v21;
  v59 = v25;
  v58 = v24 + 16;
  v25(boxed_opaque_existential_0, v21, v22);
  sub_AB4F40();
  v62 = *(v13 + 8);
  v62(v16, v12);
  __swift_destroy_boxed_opaque_existential_0(v67);
  v26 = v20;
  v27 = [v26 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_18;
  }

  v28 = v27;
  [v27 music_inheritedLayoutInsets];
  v30 = v29;

  v31 = sub_AB4F10();
  *(v32 + 8) = *(v32 + 8) - v30;
  v31(v67, 0);
  v33 = *&v26[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView];
  if (!v33)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = [v34 accessoryViewAtEdge:1];
  if (v35)
  {
    v36 = v35;
    [v35 frame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
  }

  else
  {

    v38 = 0.0;
    v40 = 0.0;
    v42 = 0.0;
    v44 = 0.0;
  }

  v70.origin.x = v38;
  v70.origin.y = v40;
  v70.size.width = v42;
  v70.size.height = v44;
  Width = CGRectGetWidth(v70);
  v46 = [v26 view];

  if (!v46)
  {
    goto LABEL_19;
  }

  [v46 music_inheritedLayoutInsets];
  v48 = v47;

  if (Width <= v48)
  {
    Width = v48;
  }

  v49 = sub_AB4F10();
  *(v50 + 24) = *(v50 + 24) - Width;
  v49(v67, 0);
  (*(v13 + 16))(v11, v18, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_ABA2D0();
  sub_ABA2A0();
  if (!v68)
  {

    v62(v18, v12);
    sub_12E1C(v67, &unk_DF0D10);
    (*(v63 + 56))(v5, 1, 1, v64);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
  v51 = v64;
  v52 = swift_dynamicCast();
  v53 = v63;
  (*(v63 + 56))(v5, v52 ^ 1u, 1, v51);
  if ((*(v53 + 48))(v5, 1, v51) == 1)
  {
    v62(v18, v12);

LABEL_14:
    sub_12E1C(v5, &unk_DF0D00);
    return;
  }

  v54 = v5;
  v55 = v61;
  sub_126208(v54, v61);
  v66[3] = v22;
  v66[4] = &protocol witness table for UICellConfigurationState;
  v56 = __swift_allocate_boxed_opaque_existential_0(v66);
  v59(v56, v60, v22);
  v68 = v51;
  v69 = sub_124E50(&qword_DF0BF0, _s17ListConfigurationVMa);
  v57 = __swift_allocate_boxed_opaque_existential_0(v67);
  sub_1201C4(v66, v57);
  __swift_destroy_boxed_opaque_existential_0(v66);
  sub_ABA2B0();

  sub_124F38(v55);
  v62(v18, v12);
}

uint64_t sub_1201C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_AB5000();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB5070();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0C88);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = _s17ListConfigurationVMa(0);
  __chkstk_darwin(v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v2;
  sub_125340((v2 + 1), v38);
  sub_11F8D4(v19, v38, v18);
  sub_E8BA0(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0C90);
  v20 = sub_AB4E30();
  v21 = swift_dynamicCast();
  v22 = *(*(v20 - 8) + 56);
  v36 = v15;
  v22(v15, v21 ^ 1u, 1, v20);
  v23 = a1[3];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = sub_124F94(v24, v23);
  v18[v16[9]] = v25 & 1;
  if (v25)
  {
    *&v18[v16[8]] = 0;
  }

  sub_AB5040();
  sub_AB5060();
  v26 = *(v7 + 8);
  v26(v10, v6);
  v27 = v33;
  sub_AB5010();
  v26(v12, v6);
  (*(v34 + 40))(&v18[v16[11]], v27, v35);
  sub_13C80(0, &qword_DE6EE0);
  sub_ABA550();
  sub_AB4FE0();
  sub_AB4F90();
  sub_AB4FB0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = sub_AB4D80();
  v29 = [v28 preferredContentSizeCategory];

  LOBYTE(v28) = sub_ABA330();
  if (v28 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), v30 = sub_AB4D80(), v31 = [v30 preferredContentSizeCategory], v30, LOBYTE(v30) = sub_ABA320(), v31, (v30))
  {
    sub_AB4FB0();
  }

  sub_1252D8(v18, v37, _s17ListConfigurationVMa);
  sub_12E1C(v36, &qword_DF0C88);
  return sub_124F38(v18);
}

uint64_t sub_120660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_15F84(a3, &v10 - v5, &qword_DF09B8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_13C80(0, &unk_DF0CF0);
  v8 = sub_ABA050();
  sub_12E1C(v6, &unk_DF0CC0);
  return v8;
}

void sub_1207B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v42 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CB0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v44 = v6;
    v42 = v3;
    RequestResponse.Revision.content.getter(&v46);
    v17 = v46;
    sub_123130(v46);

    if (!*&v16[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_noContentStateController])
    {
      __break(1u);
      return;
    }

    sub_AB5250();
    v18 = sub_AB50C0();
    v19 = *(v9 + 8);
    v19(v14, v8);
    sub_3E2E84(v18 == 0);

    v20 = sub_122184();
    sub_AB5250();
    v21 = sub_AB50C0();
    v19(v14, v8);
    if (v21)
    {
      v22 = *(v20 + 64);
      *(v20 + 64) = 1;
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v26 = (*(*&v16[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController] + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
    v27 = v26[1];
    if (v27)
    {
      v28 = *v26 & 0xFFFFFFFFFFFFLL;
      if ((v27 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v27) & 0xF;
      }

      else
      {
        v29 = v28;
      }

      v30 = v29 != 0;
      v31 = *(v20 + 64);
      *(v20 + 64) = v30;
      if (v31 == v30)
      {
LABEL_6:

        if (v16[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_shouldPersistArtistSelection] != 1)
        {
LABEL_25:

          return;
        }

        v23 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
        swift_beginAccess();
        sub_15F84(&v16[v23], v5, &unk_DF0CC0);
        v24 = v45;
        if ((*(v44 + 48))(v5, 1, v45) == 1)
        {
          v25 = &unk_DF0CC0;
        }

        else
        {
          v32 = v5;
          v5 = v43;
          sub_36B0C(v32, v43, &qword_DF09B8);
          sub_AB5250();
          sub_AB50A0();
          v34 = v33;
          v19(v14, v8);
          if ((v34 & 1) == 0)
          {
            sub_122318(1);
            v40 = &qword_DF09B8;
            v41 = v5;
LABEL_24:
            sub_12E1C(v41, v40);
            goto LABEL_25;
          }

          v25 = &qword_DF09B8;
        }

        sub_12E1C(v5, v25);
        sub_AB5250();
        v35 = sub_AB50F0();
        v19(v12, v8);
        if (*(v35 + 16))
        {
          v36 = v44;
          v37 = v42;
          sub_15F84(v35 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v42, &qword_DF09B8);
          v38 = 0;
        }

        else
        {
          v38 = 1;
          v37 = v42;
          v36 = v44;
        }

        (*(v36 + 56))(v37, v38, 1, v24);

        sub_1218CC(v37, 1, 0);
        v40 = &unk_DF0CC0;
        v41 = v37;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = *(v20 + 64);
      *(v20 + 64) = 0;
      if ((v39 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_5:
    sub_430320();
    goto LABEL_6;
  }
}

uint64_t sub_120D00(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  *(inited + 32) = a2;
  v4 = a2;
  sub_118B4(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v6;
}

void sub_120D98(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = sub_122184();

  v7 = (*(v6 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v8 = v7[1];
  if (!v8)
  {

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = *v7;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v11 = v10 != 0;
LABEL_8:
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController];
    if (v14)
    {
      v15 = v14;

      sub_4F4414(v11, v32);
      if (*(&v32[0] + 1) != 1)
      {
        v17 = v34;
        v16 = v35;
        v18 = v33;
        v19 = v32[3];
        v20 = v32[2];
        v21 = v32[1];
        v22 = v32[0];
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  if (v11)
  {
    if (qword_DE6BD0 != -1)
    {
      swift_once();
    }

    v30[3] = xmmword_E717A8;
    v30[4] = xmmword_E717B8;
    v30[1] = xmmword_E71788;
    v30[2] = xmmword_E71798;
    v30[0] = xmmword_E71778;
    v16 = qword_E717C8;
    v31 = qword_E717C8;
    v17 = *(&xmmword_E717B8 + 1);
    v18 = xmmword_E717B8;
    v27 = xmmword_E71798;
    v28 = xmmword_E717A8;
    v25 = xmmword_E71778;
    v26 = xmmword_E71788;
    v23 = v30;
    v24 = &v29;
  }

  else
  {
    v17 = *(a1 + 72);
    v16 = *(a1 + 80);
    v18 = *(a1 + 64);
    v27 = *(a1 + 32);
    v28 = *(a1 + 48);
    v25 = *a1;
    v26 = *(a1 + 16);
    v24 = v30;
    v23 = a1;
  }

  sub_576EC(v23, v24);
  v22 = v25;
  v21 = v26;
  v20 = v27;
  v19 = v28;
LABEL_19:
  *a2 = v22;
  *(a2 + 16) = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v19;
  *(a2 + 64) = v18;
  *(a2 + 72) = v17;
  *(a2 + 80) = v16;
}

uint64_t sub_120F94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController);
    v6 = result;

    swift_beginAccess();
    v7 = *(v5 + 128);
    v23 = *(v5 + 112);
    v24 = v7;
    v25 = *(v5 + 144);
    v26 = *(v5 + 160);
    v8 = *(v5 + 64);
    v19 = *(v5 + 48);
    v20 = v8;
    v9 = *(v5 + 96);
    v21 = *(v5 + 80);
    v22 = v9;
    v10 = *(v5 + 32);
    v17 = *(v5 + 16);
    v18 = v10;

    sub_15F84(&v17, v11, &qword_DF0CE0);

    v11[2] = v19;
    v11[3] = v20;
    v11[4] = v21;
    v11[5] = v22;
    v11[0] = v17;
    v11[1] = v18;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v12 = a1;
    v13 = a2;
    RequestResponse.Controller.request.setter(v11);
  }

  return result;
}

void sub_1210C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController];
    v3 = [Strong traitCollection];
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController];
    if (v4)
    {
      if (v4[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
      {
        v5 = qword_AFF018[v4[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType]];
      }

      else
      {
        v6 = v4;
        v5 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
      }
    }

    else
    {
      v5 = 0;
    }

    swift_beginAccess();
    v7 = *(v2 + 128);
    v34[6] = *(v2 + 112);
    v34[7] = v7;
    v34[8] = *(v2 + 144);
    v35 = *(v2 + 160);
    v8 = *(v2 + 64);
    v34[2] = *(v2 + 48);
    v34[3] = v8;
    v9 = *(v2 + 96);
    v34[4] = *(v2 + 80);
    v34[5] = v9;
    v10 = *(v2 + 32);
    v34[0] = *(v2 + 16);
    v34[1] = v10;
    v11 = *&v34[0];
    v19 = *(v2 + 56);
    v20 = *(v2 + 72);
    v21 = *(v2 + 88);
    v17 = *(v2 + 24);
    v18 = *(v2 + 40);
    v14 = *(v2 + 105);
    v15 = *(v2 + 121);
    *v16 = *(v2 + 137);
    *&v16[15] = *(v2 + 152);
    sub_15F84(v34, &v22, &qword_DF0CE0);
    v12 = UITraitCollection.mediaLibrary.getter();

    v13.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v23 = v17;
    v30 = v14;
    v33 = 0;
    v22 = v12;
    v27 = v21;
    v28 = v13.rawValue | v5;
    v29 = 0;
    v31 = v15;
    *v32 = *v16;
    *&v32[15] = *&v16[15];
    RequestResponse.Controller.request.setter(&v22);
  }
}

id sub_12130C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ArtistListViewController(0);
  v14.receiver = v2;
  v14.super_class = v7;
  result = objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  if (v2[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_shouldPersistArtistSelection])
  {
    return RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView];
  if (v9)
  {
    v10 = v9;
    UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1 & 1);

    swift_unknownObjectRelease();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
    swift_beginAccess();
    sub_125F64(v6, &v2[v12]);
    swift_endAccess();
    return RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  __break(1u);
  return result;
}

void sub_121570(uint64_t a1)
{
  v37.receiver = v1;
  v37.super_class = type metadata accessor for ArtistListViewController(0);
  objc_msgSendSuper2(&v37, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController];
  v4 = [v1 traitCollection];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController];
  if (v5)
  {
    if (v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
    {
      v6 = qword_AFF018[v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType]];
    }

    else
    {
      v7 = v5;
      v6 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    }
  }

  else
  {
    v6 = 0;
  }

  swift_beginAccess();
  v8 = *(v3 + 128);
  v35[6] = *(v3 + 112);
  v35[7] = v8;
  v35[8] = *(v3 + 144);
  v36 = *(v3 + 160);
  v9 = *(v3 + 64);
  v35[2] = *(v3 + 48);
  v35[3] = v9;
  v10 = *(v3 + 96);
  v35[4] = *(v3 + 80);
  v35[5] = v10;
  v11 = *(v3 + 32);
  v35[0] = *(v3 + 16);
  v35[1] = v11;
  v12 = *&v35[0];
  v20 = *(v3 + 56);
  v21 = *(v3 + 72);
  v22 = *(v3 + 88);
  v18 = *(v3 + 24);
  v19 = *(v3 + 40);
  v15 = *(v3 + 105);
  v16 = *(v3 + 121);
  *v17 = *(v3 + 137);
  *&v17[15] = *(v3 + 152);
  sub_15F84(v35, &v23, &qword_DF0CE0);
  v13 = UITraitCollection.mediaLibrary.getter();

  v14.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v24 = v18;
  v31 = v15;
  v34 = 0;
  v23 = v13;
  v28 = v22;
  v29 = v14.rawValue | v6;
  v30 = 0;
  v32 = v16;
  *v33 = *v17;
  *&v33[15] = *&v17[15];
  RequestResponse.Controller.request.setter(&v23);
}

void sub_1217D0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ArtistListViewController(0);
  objc_msgSendSuper2(&v5, "music_viewInheritedLayoutInsetsDidChange");
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource];
  if (v1)
  {
    v2 = v1;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(&v4);

    v3 = v4;
    sub_123130(v4);

    sub_122318(0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1218CC(uint64_t a1, int a2, int a3)
{
  v48 = a3;
  v53 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CD0);
  __chkstk_darwin(v44);
  v43 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v46 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v47 = &v42 - v11;
  __chkstk_darwin(v10);
  v45 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0);
  v14 = __chkstk_darwin(v13 - 8);
  v50 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v49 = &v42 - v17;
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CD8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v42 - v22;
  v24 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
  swift_beginAccess();
  v25 = *(v21 + 56);
  sub_15F84(v3 + v24, v23, &unk_DF0CC0);
  v51 = a1;
  sub_15F84(a1, &v23[v25], &unk_DF0CC0);
  v26 = *(v7 + 48);
  v27 = v26(v23, 1, v6);
  v52 = v6;
  if (v27 == 1)
  {
    if (v26(&v23[v25], 1, v6) == 1)
    {
      sub_12E1C(v23, &unk_DF0CC0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_15F84(v23, v19, &unk_DF0CC0);
  if (v26(&v23[v25], 1, v6) == 1)
  {
    sub_12E1C(v19, &qword_DF09B8);
LABEL_6:
    sub_12E1C(v23, &qword_DF0CD8);
    goto LABEL_9;
  }

  v28 = v45;
  sub_36B0C(&v23[v25], v45, &qword_DF09B8);
  sub_13C80(0, &qword_DE8E78);
  v29 = static SnapshotIdentifier.== infix(_:_:)();
  sub_12E1C(v28, &qword_DF09B8);
  sub_12E1C(v19, &qword_DF09B8);
  sub_12E1C(v23, &unk_DF0CC0);
  if (v29)
  {
LABEL_8:
    if ((v48 & 1) == 0)
    {
      return;
    }
  }

LABEL_9:
  v30 = v51;
  v31 = v49;
  sub_15F84(v51, v49, &unk_DF0CC0);
  swift_beginAccess();
  sub_125F64(v31, v3 + v24);
  swift_endAccess();
  v32 = v50;
  sub_15F84(v30, v50, &unk_DF0CC0);
  if (v26(v32, 1, v52) == 1)
  {
    sub_12E1C(v32, &unk_DF0CC0);
    v33 = v53;
  }

  else
  {
    v34 = v3;
    v35 = v32;
    v36 = v47;
    sub_36B0C(v35, v47, &qword_DF09B8);
    v37 = v46;
    sub_15F84(v36, v46, &qword_DF09B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = *v37;
    }

    else
    {
      v39 = v43;
      sub_36B0C(v37, v43, &qword_DF0CD0);
      v38 = SnapshotIdentifier.Lazy.object.getter(v44);
      sub_12E1C(v39, &qword_DF0CD0);
    }

    v33 = v53;
    v40 = objc_allocWithZone(type metadata accessor for ArtistViewController());
    v41 = sub_1E2F78(v38);
    sub_728FC(v41, 0, v33 & 1, v34);
    sub_12E1C(v36, &qword_DF09B8);
  }

  sub_122318(v33 & 1);
}

id sub_121E98@<X0>(uint64_t a1@<X8>)
{
  sub_13C80(0, &qword_DE8E78);
  static MPModelArtist.defaultMusicKind.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF8820;
  *(v2 + 32) = sub_AB92A0();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_AB92A0();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_AB92A0();
  *(v2 + 72) = v5;
  isa = sub_AB9740().super.isa;
  v7 = [objc_opt_self() propertySetWithProperties:isa];

  UIScreen.Dimensions.size.getter(v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    v18 = result;
    sub_13C80(0, &qword_DE8170);
    UIView.Border.init(thickness:color:)();
    *&v27 = v19;
    *(&v27 + 1) = v20;
    LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)(v18, 0, 0, 0, 0, v10, v12, v14, &v41, v16, v22, v21 & 1, v27, 0, 1);
    v51 = v50;
    sub_12E1C(&v51, &unk_DEE6F0);
    v35 = v47;
    v36 = v48;
    v31 = v43;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v29 = v41;
    v30 = v42;
    v38[6] = v47;
    v38[7] = v48;
    v38[2] = v43;
    v38[3] = v44;
    *v37 = v49;
    v38[4] = v45;
    v38[5] = v46;
    *&v37[8] = xmmword_AFEDC0;
    v39 = v49;
    v38[0] = v41;
    v38[1] = v42;
    v40 = xmmword_AFEDC0;
    sub_15F84(&v29, v28, &qword_DF0CE0);
    result = sub_12E1C(v38, &qword_DF0CE0);
    v23 = v36;
    *(a1 + 96) = v35;
    *(a1 + 112) = v23;
    *(a1 + 128) = *v37;
    *(a1 + 144) = *&v37[16];
    v24 = v32;
    *(a1 + 32) = v31;
    *(a1 + 48) = v24;
    v25 = v34;
    *(a1 + 64) = v33;
    *(a1 + 80) = v25;
    v26 = v30;
    *a1 = v29;
    *(a1 + 16) = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}