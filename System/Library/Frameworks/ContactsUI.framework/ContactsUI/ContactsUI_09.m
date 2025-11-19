uint64_t sub_199B7170C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_199B717A4(char a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_199B71854()
{
  v1 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  swift_beginAccess();
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer);
  if (*(v0 + v1) == 1)
  {
    if (v2)
    {
      v3 = v2;
      [v3 timeOffset];
      v5 = v4;
      LODWORD(v4) = 1.0;
      [v3 setSpeed_];
      [v3 setTimeOffset_];
      [v3 setBeginTime_];
      [v3 convertTime:0 fromLayer:CACurrentMediaTime()];
      [v3 setBeginTime_];
LABEL_6:
    }
  }

  else if (v2)
  {
    v3 = v2;
    [v3 convertTime:0 fromLayer:CACurrentMediaTime()];
    v8 = v7;
    [v3 setSpeed_];
    [v3 setTimeOffset_];
    goto LABEL_6;
  }

  *(v0 + v1) = (*(v0 + v1) & 1) == 0;
}

id sub_199B719E8()
{
  v0 = sub_199DF71BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v21[-v7];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v21[-v11];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_199B72134();
  v15 = sub_199DF9F5C();

  v16 = sub_199DF9F5C();
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (v17)
  {
    sub_199DF719C();

    (*(v1 + 32))(v12, v8, v0);
    sub_199A7A02C(0, &qword_1EAF70FF8);
    (*(v1 + 16))(v4, v12, v0);
    v18 = sub_199DF9F8C();
    v17 = sub_199B71C48(v4, v18, v19, 0);
    (*(v1 + 8))(v12, v0);
  }

  return v17;
}

id sub_199B71C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_199DF718C();
  v7 = sub_199DF9F5C();

  if (a4)
  {
    v8 = sub_199DF9E8C();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_199DF71BC();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_199DF717C();

    swift_willThrow();
    v15 = sub_199DF71BC();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

id sub_199B71E10(void *a1)
{
  v2 = [a1 rootLayer];
  if (!v2)
  {
    return v2;
  }

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  [result bounds];
  v6 = v5;

  [v2 bounds];
  v8 = v7;
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  v10 = v6 / v8;
  [result bounds];
  v12 = v11;

  [v2 bounds];
  if (v10 > v12 / v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12 / v13;
  }

  v15 = [objc_opt_self() mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v45.origin.x = v17;
  v45.origin.y = v19;
  v45.size.width = v21;
  v45.size.height = v23;
  Width = CGRectGetWidth(v45);
  if (qword_1EAF719B0 != -1)
  {
    v39 = Width;
    swift_once();
    Width = v39;
  }

  v25 = Width - (*&qword_1EAF86E40 + 20.0 + *&qword_1EAF86E40 + 20.0);
  [v2 bounds];
  if (v14 >= v25 / v26)
  {
    v27 = v25 / v26;
  }

  else
  {
    v27 = v14;
  }

  [v2 transform];
  CATransform3DMakeScale(&b, v27, v27, 1.0);
  a = v44;
  CATransform3DConcat(&v41, &a, &b);
  [v2 setTransform_];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_18;
  }

  v28 = result;
  [result bounds];
  v30 = v29;

  [v2 bounds];
  v32 = v31;
  result = [v1 view];
  if (result)
  {
    v33 = result;
    v34 = (v30 - v32) * 0.5;
    [result bounds];
    v36 = v35;

    [v2 bounds];
    v38 = (v36 - v37) * 0.5;
    [v2 transform];
    CATransform3DMakeTranslation(&v41, v34, v38, 1.0);
    b = a;
    CATransform3DConcat(&v40, &b, &v41);
    [v2 setTransform_];
    return v2;
  }

LABEL_19:
  __break(1u);
  return result;
}

id sub_199B72134()
{
  v1 = sub_199B72200();
  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = [result effectiveUserInterfaceLayoutDirection];

    v5 = 0xD000000000000022;
    v6 = 0xD000000000000025;
    if (v4 == 1)
    {
      v6 = 0xD000000000000029;
      v5 = 0xD000000000000026;
    }

    if (v1)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_199B72200()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3)
    {
      v4 = v3;
      [v4 bounds];
      Width = CGRectGetWidth(v18);
      [v4 bounds];
      v6 = Width / CGRectGetHeight(v19);
      [v4 bounds];
      Height = CGRectGetHeight(v20);
      [v4 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v21.origin.x = v9;
      v21.origin.y = v11;
      v21.size.width = v13;
      v21.size.height = v15;
      v16 = CGRectGetWidth(v21);

      v17 = Height / v16;
      if (Height / v16 >= v6)
      {
        v17 = v6;
      }

      return (v17 > 0.5);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_199B72318(void *a1)
{
  v3 = sub_199DF9F5C();
  v4 = [a1 publishedObjectWithName_];

  if (v4)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010);
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource + 8))
      {
        [v15 setContents_];
      }
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080);
  }

  v5 = sub_199DF9F5C();
  v6 = [a1 publishedObjectWithName_];

  if (v6)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010);
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource + 16))
      {
        [v15 setContents_];
      }
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080);
  }

  v7 = sub_199DF9F5C();
  v8 = [a1 publishedObjectWithName_];

  if (v8)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010);
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource + 24))
      {
        [v15 setContents_];
      }
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080);
  }

  v9 = sub_199DF9F5C();
  v10 = [a1 publishedObjectWithName_];

  if (v10)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010);
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource + 32))
      {
        [v15 setContents_];
      }
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080);
  }

  v11 = sub_199DF9F5C();
  v12 = [a1 publishedObjectWithName_];

  if (v12)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010);
    if (swift_dynamicCast())
    {
      [v15 setBackgroundColor_];
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080);
  }

  v13 = sub_199DF9F5C();
  v14 = [a1 publishedObjectWithName_];

  if (v14)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010);
    if (swift_dynamicCast())
    {
      [v15 setBackgroundColor_];
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080);
  }
}

id CNPosterOnboardingSettingsAnimationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_199DF9F5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CNPosterOnboardingSettingsAnimationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNPosterOnboardingSettingsAnimationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_199B72BCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_199AA7314;

  return sub_199B70D74(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_199B72CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_199B72D88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B72E2C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CNAvatarPosterPairViewModel();
  result = sub_199DF83BC();
  *a1 = result;
  return result;
}

uint64_t sub_199B72E8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_199DFA87C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_199A9C55C(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x19A8F8520](0, a1);
    result = sub_199DF9F6C();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_199DF9F6C();
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_199B73038(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_199DFA79C();
    v4 = (a1 + 32);
    type metadata accessor for CNActionType(0);
    sub_199AD6AFC();
    do
    {
      v5 = *v4++;
      v6 = v5;
      swift_dynamicCast();
      sub_199DFA77C();
      sub_199DFA7AC();
      sub_199DFA7BC();
      sub_199DFA78C();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id sub_199B7311C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(CNContactInlineActionsViewController) init];
  [v5 setDisplaysTitles_];
  [v5 setDisplaysUnavailableActionTypes_];
  [v5 setViewStyle_];
  LODWORD(a2) = [objc_msgSend(objc_opt_self() sharedAnalyzer)];
  swift_unknownObjectRelease();
  v6 = objc_opt_self();
  v7 = &selRef_allSupportedActionTypesForBlockedContact;
  if (!a2)
  {
    v7 = &selRef_allSupportedActionTypes;
  }

  v8 = [v6 *v7];
  type metadata accessor for CNActionType(0);
  v9 = sub_199DFA0CC();

  v10 = sub_199B73038(v9);

  sub_199B72E8C(v10);

  v11 = sub_199DFA0BC();

  [v5 setSupportedActionTypes_];

  return v5;
}

void sub_199B73358()
{
  sub_199B73380();
  sub_199DF90BC();
  __break(1u);
}

unint64_t sub_199B73380()
{
  result = qword_1EAF75E08;
  if (!qword_1EAF75E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75E08);
  }

  return result;
}

uint64_t sub_199B733D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);
    sub_199DF81AC();
    v17 = sub_199AEF9E8(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_199B73510()
{
  result = [objc_allocWithZone(type metadata accessor for CNWallpaperConfigurationGenerator()) init];
  qword_1EAF718E8 = result;
  return result;
}

id CNWallpaperConfigurationGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static CNWallpaperConfigurationGenerator.shared.getter()
{
  if (qword_1EAF718E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAF718E8;

  return v1;
}

void sub_199B7362C(void *a1, void (*a2)(void))
{
  v3 = sub_199B77548(a1);
  a2();
}

void sub_199B73680(void *a1, int a2, void (*a3)(void *), int a4, void *a5, int a6, uint64_t a7, unint64_t a8, id a9)
{
  v40 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v33 = a5;
    v34 = a3;
    v16 = [a9 poseConfigurationData];
    if (v16)
    {
      v17 = v16;
      v18 = sub_199DF71FC();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xF000000000000000;
    }

    v21 = [a9 poseHasBody];
    v22 = [a1 HEICRepresentation];
    v23 = sub_199DF71FC();
    v25 = v24;

    sub_199AA7630(a7, a8);
    v26 = UIColor.avatarColorDescription.getter();
    sub_199A9EF20(0, 0xF000000000000000);
    sub_199A9EF20(0, 0xF000000000000000);
    sub_199A9EF20(0, 0xF000000000000000);
    *&v36 = v26;
    *(&v36 + 1) = a7;
    *&v37 = a8;
    *(&v37 + 1) = v18;
    *&v38 = v20;
    BYTE8(v38) = v21;
    *&v39 = v23;
    *(&v39 + 1) = v25;
    v35[0] = v36;
    v35[1] = v37;
    v35[2] = v38;
    v35[3] = v39;
    sub_199B75DA4(v35);
    v27 = sub_199DF9E8C();

    *&v35[0] = 0;
    v28 = [v33 storeUserInfo:v27 error:v35];

    if (v28)
    {
      v29 = *&v35[0];
    }

    else
    {
      v30 = *&v35[0];
      v31 = sub_199DF717C();

      swift_willThrow();
      sub_199DFA31C();
      v32 = CNUILogPosters();
      sub_199DF7FEC();
    }

    v34(v33);
    sub_199B60960(&v36);
  }

  else
  {
    a3(a5);
  }
}

uint64_t sub_199B73940(void *a1)
{
  v1 = sub_199B73ABC(a1);
  sub_199A7A02C(0, &unk_1EAF75580);
  v2 = sub_199B2B2CC(v1);

  return v2;
}

id sub_199B73ABC(void *a1)
{
  v2 = sub_199B760E0(1, a1, *(v1 + OBJC_IVAR____TtC10ContactsUI33CNWallpaperConfigurationGenerator_cleanStatePosterBackgroundColor), 0, 0, 2);
  v3 = objc_opt_self();
  v4 = sub_199DF9F5C();
  v5 = [v3 finalizedConfiguration:v2 forExtensionIdentifier:v4];

  if (v5)
  {

    return v5;
  }

  return v2;
}

uint64_t sub_199B73B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v58[1] = *MEMORY[0x1E69E9840];
  v4 = sub_199DF7E9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DC0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v56 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v56 - v19;
  (*(v5 + 56))(v56 - v19, 1, 1, v4);
  v21 = objc_opt_self();
  v22 = sub_199DF71DC();
  v58[0] = 0;
  v23 = [v21 unarchiveCNConfigurationFromData:v22 error:v58];

  v24 = v58[0];
  if (!v23)
  {
    v32 = v58[0];
    v33 = sub_199DF717C();

    swift_willThrow();
    v34 = v33;
LABEL_7:

    goto LABEL_9;
  }

  v58[0] = 0;
  v25 = v24;
  v26 = [v23 loadUserInfoWithError_];
  v27 = v58[0];
  if (!v26)
  {
    v35 = v58[0];
    v36 = sub_199DF717C();

    swift_willThrow();
    v37 = sub_199DFA30C();
    v38 = CNUILogPosters();
    if (!os_log_type_enabled(v38, v37))
    {

      goto LABEL_9;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    v41 = v36;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v42;
    *v40 = v42;
    _os_log_impl(&dword_199A75000, v38, v37, "Poster could not be decoded as a monogram: %@", v39, 0xCu);
    sub_199A79A04(v40, &unk_1EAF73A90);
    MEMORY[0x19A8FA1A0](v40, -1, -1);
    MEMORY[0x19A8FA1A0](v39, -1, -1);

    v34 = v36;
    goto LABEL_7;
  }

  v56[1] = v3;
  v28 = v8;
  v29 = v26;
  v30 = sub_199DF9E9C();
  v31 = v27;

  sub_199B7419C(v30, v17);
  sub_199A79A04(v20, &qword_1EAF75DC0);

  sub_199B744F0(v17, v20);
  sub_199B74560(v20, v13);
  v45 = (*(v5 + 48))(v13, 1, v4);
  if (v45 == 1)
  {
    sub_199A79A04(v20, &qword_1EAF75DC0);
    v43 = 0;
    v20 = v13;
    goto LABEL_10;
  }

  v46 = v28;
  (*(v5 + 32))(v28, v13, v4);
  v47 = [objc_opt_self() stringFromContact:v57 style:1002];
  if (v47)
  {
    v48 = v47;
    v49 = sub_199DF9F8C();
    v51 = v50;

    if (v49 == sub_199DF7E8C() && v51 == v52)
    {

LABEL_18:
      v54 = sub_199DFA4BC();
      v55 = sub_199DF7E7C();
      v43 = sub_199B733D4(v54, v55);

      (*(v5 + 8))(v46, v4);
      goto LABEL_10;
    }

    v53 = sub_199DFA99C();

    if (v53)
    {
      goto LABEL_18;
    }
  }

  (*(v5 + 8))(v46, v4);
LABEL_9:
  v43 = 0;
LABEL_10:
  sub_199A79A04(v20, &qword_1EAF75DC0);
  return v43 & 1;
}

uint64_t sub_199B7419C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_199DF7E9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF703C();
  swift_allocObject();
  sub_199DF702C();
  v18 = sub_199DF9F8C();
  v19 = v10;
  sub_199DFA6CC();
  if (!*(a1 + 16) || (v11 = sub_199B4AA08(v20), (v12 & 1) == 0))
  {

    sub_199B4BC9C(v20);
LABEL_7:
    v16 = 1;
    return (*(v6 + 56))(a2, v16, 1, v5);
  }

  sub_199A9DA04(*(a1 + 56) + 32 * v11, v21);
  sub_199B4BC9C(v20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v13 = v18;
  v14 = v19;
  sub_199B7772C(&qword_1EAF75DD8);
  sub_199DF701C();
  sub_199A9EF34(v13, v14);

  if (v2)
  {
    return result;
  }

  (*(v6 + 32))(a2, v9, v5);
  v16 = 0;
  return (*(v6 + 56))(a2, v16, 1, v5);
}

id CNWallpaperConfigurationGenerator.init()()
{
  v1 = OBJC_IVAR____TtC10ContactsUI33CNWallpaperConfigurationGenerator_cleanStatePosterBackgroundColor;
  *&v0[v1] = [objc_opt_self() systemDarkGrayColor];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CNWallpaperConfigurationGenerator();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CNWallpaperConfigurationGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNWallpaperConfigurationGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B744F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B74560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B74674(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75648);
  result = sub_199DFA8AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_199B429C0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_199B4BC40(v23, &v36);
        sub_199A9DA04(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_199DFA6AC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_199B429C0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_199B7492C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E30);
  v30 = a2;
  result = sub_199DFA8AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
        sub_199DF81AC();
      }

      sub_199DFAA7C();
      sub_199DF9FEC();

      result = sub_199DFAABC();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_199B74CB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75690);
  v38 = a2;
  result = sub_199DFA8AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v40 = *v24;
      v41 = *v22;
      v27 = v24[2];
      v26 = v24[3];
      if ((v38 & 1) == 0)
      {
        sub_199DF81AC();
        sub_199DF81AC();
        sub_199A9A57C(v27);
      }

      sub_199DFAA7C();
      sub_199DF9FEC();
      result = sub_199DFAABC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      v12 = v39;
      *v17 = v40;
      v17[1] = v25;
      v17[2] = v27;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_199B74F8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75658);
  result = sub_199DFA8AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_199DFAA6C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_199B751F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75680);
  v30 = a2;
  result = sub_199DFA8AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_199DF81AC();
      }

      sub_199DFAA7C();
      MEMORY[0x19A8F8860](v20);
      result = sub_199DFAABC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_199B75480(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_199B4AA08(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_199B757A8();
      goto LABEL_7;
    }

    sub_199B74674(v13, a3 & 1);
    v19 = sub_199B4AA08(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_199B4BC40(a2, v21);
      return sub_199B7572C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_199DFA9FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_199B429C0(a1, v17);
}

unint64_t sub_199B755CC(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_199B4AB64(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_199B751F0(v14, a3 & 1);
      result = sub_199B4AB64(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_199DFA9FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_199B75C58(&qword_1EAF75680);
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_199B7572C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_199B429C0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_199B757A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75648);
  v2 = *v0;
  v3 = sub_199DFA89C();
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
        v18 = 40 * v17;
        sub_199B4BC40(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_199A9DA04(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_199B429C0(v22, (*(v4 + 56) + v17));
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

void *sub_199B75960()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75690);
  v2 = *v0;
  v3 = sub_199DFA89C();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;
        sub_199DF81AC();
        sub_199DF81AC();
        result = sub_199A9A57C(v25);
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

void *sub_199B75AF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75658);
  v2 = *v0;
  v3 = sub_199DFA89C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_199B75C58(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_199DFA89C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = sub_199DF81AC();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_199B75DA4(_OWORD *a1)
{
  v3 = sub_199B4B130(MEMORY[0x1E69E7CC0]);
  sub_199DF707C();
  swift_allocObject();
  sub_199DF706C();
  sub_199DF704C();
  v4 = a1[1];
  v15[0] = *a1;
  v15[1] = v4;
  v5 = a1[3];
  v15[2] = a1[2];
  v15[3] = v5;
  sub_199B75F0C();
  v6 = sub_199DF705C();
  if (v1)
  {
  }

  else
  {
    v9 = v6;
    v10 = v7;
    sub_199DF9F8C();
    sub_199DFA6CC();
    v14 = MEMORY[0x1E6969080];
    *&v13 = v9;
    *(&v13 + 1) = v10;
    sub_199B429C0(&v13, v12);
    sub_199AA7630(v9, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_199B75480(v12, v15, isUniquelyReferenced_nonNull_native);

    sub_199A9EF34(v9, v10);
    sub_199B4BC9C(v15);
    return v3;
  }
}

unint64_t sub_199B75F0C()
{
  result = qword_1EAF71A28;
  if (!qword_1EAF71A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71A28);
  }

  return result;
}

uint64_t sub_199B75F60()
{
  v1 = sub_199B4B130(MEMORY[0x1E69E7CC0]);
  sub_199DF707C();
  swift_allocObject();
  sub_199DF706C();
  sub_199DF704C();
  sub_199DF7E9C();
  sub_199B7772C(&unk_1EAF71480);
  v2 = sub_199DF705C();
  if (v0)
  {
  }

  else
  {
    v5 = v2;
    v6 = v3;
    sub_199DF9F8C();
    sub_199DFA6CC();
    v10 = MEMORY[0x1E6969080];
    *&v9 = v5;
    *(&v9 + 1) = v6;
    sub_199B429C0(&v9, v8);
    sub_199AA7630(v5, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_199B75480(v8, v11, isUniquelyReferenced_nonNull_native);

    sub_199A9EF34(v5, v6);
    sub_199B4BC9C(v11);
    return v1;
  }
}

uint64_t sub_199B760E0(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v135 = a4;
  v143 = a2;
  v154 = *MEMORY[0x1E69E9840];
  v140 = sub_199DF71BC();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v10);
  v12 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_199DF7ECC();
  v142 = *(v141 - 8);
  v14 = MEMORY[0x1EEE9AC00](v141, v13);
  v136 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v137 = &v132 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E18);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v134 = &v132 - v20;
  v21 = sub_199DF7E9C();
  v138 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v132 - v28;
  MEMORY[0x1EEE9AC00](v27, v30);
  v133 = &v132 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E20);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v36 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v132 - v38;
  v145 = [objc_allocWithZone(CNPRSMutablePosterConfiguration) init];
  v144 = sub_199B4B130(MEMORY[0x1E69E7CC0]);
  if (a1)
  {
    if (a1 != 1)
    {
      v50 = [objc_allocWithZone(MEMORY[0x1E69C07E8]) initWithConfigurationType_];
      [v50 setOptions_];
      if (a5)
      {
        v51 = objc_allocWithZone(MEMORY[0x1E69C0808]);
        v52 = sub_199DF9F5C();
        v53 = [v51 initWithAssetUUID_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_199E37DF0;
        *(v54 + 32) = v53;
        sub_199A7A02C(0, &qword_1EAF75E28);
        v55 = v53;
        v56 = sub_199DFA0BC();

        [v50 setMedia_];
      }

      v57 = [v50 userInfo];
      if (v57)
      {
        v58 = v57;
        v59 = sub_199DF9E9C();
      }

      else
      {
        v59 = sub_199B4B130(MEMORY[0x1E69E7CC0]);
      }

      *&v147 = 0xD000000000000025;
      *(&v147 + 1) = 0x8000000199E49EC0;
      sub_199DFA6CC();
      if (a6 == 2 || (a6 & 1) == 0)
      {
        v70 = [objc_opt_self() unifiedMeContactMonitor];
        v69 = [v70 isMeContact_];
      }

      else
      {
        v69 = 1;
      }

      *(&v148 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v147) = v69;
      sub_199B429C0(&v147, &v153);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146 = v59;
      sub_199B75480(&v153, v151, isUniquelyReferenced_nonNull_native);
      sub_199B4BC9C(v151);
      v72 = sub_199DF9E8C();

      [v50 setUserInfo_];

      v49 = v145;
      v73 = [v145 assetDirectory];
      sub_199DF719C();

      v74 = sub_199DF718C();
      (*(v139 + 8))(v12, v140);
      *v151 = 0;
      LODWORD(v72) = [v50 saveToURL:v74 error:v151];

      if (v72)
      {
        v75 = *v151;
      }

      else
      {
        v76 = *v151;
        v77 = sub_199DF717C();

        swift_willThrow();
        sub_199DFA31C();
        v78 = CNUILogPosters();
        sub_199DF7FEC();
      }

      goto LABEL_59;
    }

    v140 = v21;
    v40 = objc_opt_self();
    v41 = [v40 currentEnvironment];
    v42 = [v41 featureFlags];

    LODWORD(v41) = [v42 isFeatureEnabled_];
    swift_unknownObjectRelease();
    if (v41)
    {
      v43 = [v40 currentEnvironment];
      v44 = [v43 featureFlags];

      LODWORD(v43) = [v44 isFeatureEnabled_];
      swift_unknownObjectRelease();
      if (v43)
      {
        v45 = v143;
        sub_199DF7EFC();
        v46 = [objc_opt_self() stringFromContact:v45 style:1002];
        if (v46)
        {
          v47 = v46;
          sub_199DF9F8C();
        }

        v49 = v145;
        v113 = sub_199DF7F0C();
        v114 = *(v113 + 16);
        if (!v114)
        {

          v117 = sub_199DF7F1C();
          v121 = v134;
          (*(*(v117 - 8) + 56))(v134, 1, 1, v117);
LABEL_55:
          sub_199DF7F1C();
          result = (*(*(v117 - 8) + 48))(v121, 1, v117);
          if (result != 1)
          {
            v122 = v133;
            sub_199DF7E6C();
            sub_199B75F60();
            (*(v138 + 8))(v122, v140);

            goto LABEL_59;
          }

LABEL_71:
          __break(1u);
          return result;
        }

        v115 = sub_199B7C158(v114);
        if ((v115 & 0x8000000000000000) == 0)
        {
          v116 = v115;
          if (v115 < *(v113 + 16))
          {
            v117 = sub_199DF7F1C();
            v118 = *(v117 - 8);
            v119 = v118;
            v120 = v113 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v118 + 72) * v116;
            v121 = v134;
            (*(v118 + 16))(v134, v120, v117);

            (*(v119 + 56))(v121, 0, 1, v117);
            goto LABEL_55;
          }

LABEL_68:
          __break(1u);
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }
    }

    if (a3)
    {
      v60 = [a3 colorWithAlphaComponent_];
      v61 = v137;
      sub_199DF7EAC();
      v49 = v145;
      v62 = v141;
      v63 = v142;
      goto LABEL_45;
    }

    v79 = sub_199DF7EDC();
    v80 = *(v79 + 16);
    v49 = v145;
    v62 = v141;
    v63 = v142;
    if (!v80)
    {

      (*(v63 + 56))(v36, 1, 1, v62);
LABEL_43:
      result = (*(v63 + 48))(v36, 1, v62);
      if (result != 1)
      {
        v61 = v137;
        (*(v63 + 32))();
LABEL_45:
        v106 = v143;
        v107 = sub_199DF7EFC();
        v108 = [objc_opt_self() stringFromContact:v106 style:1002];
        if (v108)
        {
          v109 = v108;
          sub_199DF9F8C();

          if (v107)
          {
            v110 = v142;
            (*(v142 + 16))(v136, v61, v62);
            sub_199DF7E5C();
            sub_199B75F60();
            v111 = (v138 + 8);

            (*v111)(v29, v140);
            (*(v110 + 8))(v61, v62);
            goto LABEL_59;
          }

          v63 = v142;
        }

        (*(v63 + 16))(v136, v61, v62);
        sub_199DF7E5C();
        sub_199B75F60();
        v112 = (v138 + 8);

        (*v112)(v25, v140);
        (*(v63 + 8))(v61, v62);
        goto LABEL_59;
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v81 = sub_199B7C158(v80);
    if ((v81 & 0x8000000000000000) == 0)
    {
      if (v81 < *(v79 + 16))
      {
        (*(v63 + 16))(v36, v79 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v81, v62);

        (*(v63 + 56))(v36, 0, 1, v62);
        goto LABEL_43;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a3)
  {
    v48 = [a3 colorWithAlphaComponent_];
    v49 = v145;
    goto LABEL_34;
  }

  v64 = sub_199DF7EDC();
  v65 = *(v64 + 16);
  v49 = v145;
  if (!v65)
  {

    v68 = v142;
    v67 = v141;
    (*(v142 + 56))(v39, 1, 1, v141);
    goto LABEL_32;
  }

  v66 = sub_199B7C158(v65);
  v67 = v141;
  v68 = v142;
  if ((v66 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (v66 >= *(v64 + 16))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  (*(v142 + 16))(v39, v64 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v66, v141);

  (*(v68 + 56))(v39, 0, 1, v67);
LABEL_32:
  result = (*(v68 + 48))(v39, 1, v67);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_70;
  }

  v48 = sub_199DF7EBC();
  (*(v68 + 8))(v39, v67);
LABEL_34:
  v83 = [v143 memojiMetadata];
  if (v83)
  {
    v84 = v83;
    v85 = sub_199DF71FC();
    v87 = v86;

    v88 = objc_opt_self();
    v89 = sub_199DF71DC();
    v90 = [v88 memojiMetadataFromData_];

    if (v90)
    {
      v91 = [v90 avatarRecordData];
      if (v91)
      {
        v142 = v87;
        v143 = v48;
        v92 = v91;
        v93 = sub_199DF71FC();
        v95 = v94;

        v96 = [objc_opt_self() imageDataFromMetadata_];
        v97 = sub_199DF71FC();
        v99 = v98;

        v100 = [v90 poseConfigurationData];
        if (v100)
        {
          v101 = v100;
          v141 = sub_199DF71FC();
          v103 = v102;
        }

        else
        {
          v141 = 0;
          v103 = 0xF000000000000000;
        }

        v123 = [v90 poseHasBody];
        sub_199AA7630(v97, v99);
        v124 = v143;
        sub_199AA7630(v93, v95);
        v125 = UIColor.avatarColorDescription.getter();

        sub_199A9EF20(0, 0xF000000000000000);
        sub_199A9EF20(0, 0xF000000000000000);
        sub_199A9EF20(0, 0xF000000000000000);
        *v151 = v125;
        *&v151[8] = v93;
        *&v151[16] = v95;
        *&v151[24] = v141;
        *&v151[32] = v103;
        v151[40] = v123;
        *&v152 = v97;
        *(&v152 + 1) = v99;
        v147 = *v151;
        v148 = *&v151[16];
        v149 = *&v151[32];
        v150 = v152;
        sub_199B75DA4(&v147);

        sub_199A9EF34(v85, v142);

        sub_199A9EF34(v93, v95);
        sub_199A9EF34(v97, v99);
        sub_199B60960(v151);
        v49 = v145;
        goto LABEL_59;
      }
    }

    sub_199A9EF34(v85, v87);
  }

  v104 = v48;
  v105 = UIColor.avatarColorDescription.getter();

  sub_199A9EF20(0, 0xF000000000000000);
  sub_199A9EF20(0, 0xF000000000000000);
  sub_199A9EF20(0, 0xF000000000000000);
  *v151 = v105;
  *&v151[8] = xmmword_199E3FAE0;
  *&v151[24] = xmmword_199E3FAE0;
  v151[40] = 0;
  v152 = xmmword_199E3FAE0;
  v147 = *v151;
  v148 = *&v151[16];
  v149 = *&v151[32];
  v150 = xmmword_199E3FAE0;
  sub_199B75DA4(&v147);

  sub_199B60960(v151);
LABEL_59:
  v126 = sub_199DF9E8C();

  *v151 = 0;
  v127 = [v49 storeUserInfo:v126 error:v151];

  if (v127)
  {
    v128 = *v151;
  }

  else
  {
    v129 = *v151;
    v130 = sub_199DF717C();

    swift_willThrow();
    sub_199DFA31C();
    v131 = CNUILogPosters();
    sub_199DF7FEC();
  }

  return v49;
}

id sub_199B77548(void *a1)
{
  v1 = objc_opt_self();
  v2 = sub_199DF9F5C();

  v3 = [v1 finalizedConfiguration:a1 forExtensionIdentifier:v2];

  if (v3)
  {
    return v3;
  }

  return a1;
}

id sub_199B77644(void *a1)
{
  v2 = [a1 memojiMetadata];
  if (v2)
  {
    v3 = v2;
    v4 = sub_199DF71FC();
    v6 = v5;

    sub_199A9EF34(v4, v6);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_199B760E0(v7, a1, 0, 0, 0, 2);
  v9 = [a1 memojiMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = sub_199DF71FC();
    v13 = v12;

    sub_199A9EF34(v11, v13);
  }

  v14 = sub_199B77548(v8);

  return v14;
}

uint64_t sub_199B7772C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_199DF7E9C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_199B77770(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_199B77CB4()
{
  v1 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199B77D68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199B77DC0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CNPosterPreviewViewWrapper.__allocating_init(with:contact:editingState:delegate:windowScene:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E70);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - v18;
  v20 = objc_allocWithZone(v6);
  swift_unknownObjectRetain();
  v21 = a1;
  v22 = a2;
  sub_199B780A0(v21, v22, a3, v19);
  KeyPath = swift_getKeyPath();
  v24 = &v19[*(v12 + 44)];
  *v24 = KeyPath;
  v24[1] = a5;
  sub_199AAD408(v19, v15, &qword_1EAF75E70);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E78));
  v26 = a5;
  *&v20[OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController] = sub_199DF8DFC();
  v29.receiver = v20;
  v29.super_class = v6;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  swift_unknownObjectRelease();

  sub_199A79A04(v19, &qword_1EAF75E70);
  return v27;
}

id CNPosterPreviewViewWrapper.init(with:contact:editingState:delegate:windowScene:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_199B7C894(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v8;
}

void sub_199B780A0(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  swift_unknownObjectWeakInit();
  sub_199DF983C();
  v8 = *(&v62 + 1);
  *(a4 + 24) = v62;
  *(a4 + 32) = v8;
  sub_199DF983C();
  v9 = *(&v62 + 1);
  *(a4 + 40) = v62;
  *(a4 + 48) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF740A0);
  sub_199DF983C();
  v10 = *(&v62 + 1);
  v11 = v62;
  *(a4 + 56) = v62;
  *(a4 + 64) = v10;
  sub_199DF983C();
  *(a4 + 72) = v62;
  *(a4 + 120) = 0;
  v63 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748);
  sub_199DF983C();
  *(a4 + 128) = v62;
  v12 = type metadata accessor for CNPosterPreviewView();
  v13 = *(v12 + 64);
  *(a4 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  swift_storeEnumTagMultiPayload();
  v14 = a4 + *(v12 + 68);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *a4 = a2;
  *(a4 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v15 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID + 8];
  *(a4 + 88) = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID];
  *(a4 + 96) = v15;
  v16 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_backgroundColor];
  v17 = a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_isEditingSNaP];
  *(a4 + 104) = v16;
  *(a4 + 112) = v17;
  v18 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText + 8];
  if (!v18)
  {
    v25 = v16;
    sub_199DF81AC();
    goto LABEL_22;
  }

  v61 = v11;
  v19 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText];
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = v16;
    v22 = a2;
    sub_199DF81AC();
    if (a3 != 1)
    {
      sub_199DF81AC();
LABEL_12:
      [v22 mutableCopy];
      sub_199DFA66C();
      swift_unknownObjectRelease();
      sub_199A7A02C(0, &qword_1EAF710A0);
      swift_dynamicCast();
      v28 = [objc_opt_self() nameOrderForContact_];

      sub_199DF81AC();
      v30 = sub_199B2F7B0(1, v19, v18, v29);
      v32 = v31;
      v34 = v33;
      v36 = v35;

      MEMORY[0x19A8F7DB0](v30, v32, v34, v36);

      v37 = sub_199DF9F5C();

      v38 = &selRef_setGivenName_;
      if (v28 != 1)
      {
        v38 = &selRef_setFamilyName_;
      }

      [v63 *v38];

      if (sub_199DF9FFC() < 2)
      {

        *(a4 + 120) = v63;
      }

      else
      {
        v39 = sub_199DFA01C();
        v40 = sub_199B788F4(v39, v19, v18);
        v42 = v41;
        v44 = v43;
        v46 = v45;

        MEMORY[0x19A8F7DB0](v40, v42, v44, v46);

        v47 = sub_199DF9F5C();

        if (v28 == 1)
        {
          [v63 setFamilyName_];
        }

        else
        {
          [v63 setGivenName_];
        }

        *(a4 + 120) = v63;
      }

      goto LABEL_21;
    }

    sub_199DF81AC();
    v23 = [v22 imageType];
    if (v23)
    {
      v24 = v23;
      sub_199DF9F8C();
    }

    v27 = sub_199B7C744();

    if (v27 == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v26 = v16;
    sub_199DF81AC();
  }

LABEL_21:
  v11 = v61;
LABEL_22:
  v48 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterConfiguration];
  if (v48)
  {
    v49 = v48;

    swift_unknownObjectRelease();

    *(a4 + 56) = v48;
LABEL_24:
    *(a4 + 64) = 0;
    return;
  }

  v50 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData + 8];
  if (v50 >> 60 == 15)
  {
    goto LABEL_26;
  }

  v51 = v11;
  v52 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData];
  v53 = v50 >> 62;
  if ((v50 >> 62) > 1)
  {
    if (v53 != 2)
    {
LABEL_34:
      swift_unknownObjectRelease();
      sub_199A9EF20(v52, v50);

      return;
    }

    if (*(v52 + 16) != *(v52 + 24))
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (v53)
  {
    if (v52 != v52 >> 32)
    {
LABEL_36:
      sub_199AFF43C(*&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData], *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData + 8]);
      goto LABEL_37;
    }

LABEL_26:

    swift_unknownObjectRelease();
    return;
  }

  if ((v50 & 0xFF000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_37:
  v54 = objc_opt_self();
  v55 = sub_199DF71DC();
  *&v62 = 0;
  v56 = [v54 unarchiveCNConfigurationFromData:v55 error:&v62];

  v57 = v62;
  if (v56)
  {
    sub_199A9EF20(v52, v50);

    swift_unknownObjectRelease();

    *(a4 + 56) = v56;
    goto LABEL_24;
  }

  v58 = v57;
  v59 = sub_199DF717C();

  swift_willThrow();
  sub_199DFA31C();
  v60 = CNUILogPosters();
  sub_199DF7FEC();
  sub_199A9EF20(v52, v50);

  swift_unknownObjectRelease();
}

id CNPosterPreviewViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_199B788AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_199B788F4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x1EEE69100]();
}

void sub_199B78940()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 bounds];
  v6 = v5;

  if (v6 >= v3)
  {
    *&v7 = v3;
  }

  else
  {
    *&v7 = v6;
  }

  qword_1EAF75E38 = v7;
}

void sub_199B789E0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 bounds];
  v6 = v5;

  if (v3 > v6)
  {
    *&v7 = v3;
  }

  else
  {
    *&v7 = v6;
  }

  qword_1EAF75E40 = v7;
}

float64x2_t sub_199B78A80()
{
  if (qword_1EAF71F48 != -1)
  {
    swift_once();
  }

  *&v0.f64[0] = qword_1EAF75E38;
  if (qword_1EAF71F50 != -1)
  {
    v2 = qword_1EAF75E38;
    swift_once();
    *&v0.f64[0] = v2;
  }

  *&v0.f64[1] = qword_1EAF75E40;
  result = vmulq_f64(v0, vdupq_n_s64(0x3FE199999999999AuLL));
  xmmword_1EAF75E48 = result;
  return result;
}

uint64_t sub_199B78B38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for CNPosterPreviewView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v68 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v63 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75EF0);
  v75 = *(v71 - 8);
  v69 = v75[8];
  MEMORY[0x1EEE9AC00](v71, v12);
  v70 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = v63 - v70;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75EF8);
  MEMORY[0x1EEE9AC00](v73, v14);
  v67 = v63 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F00);
  MEMORY[0x1EEE9AC00](v66, v16);
  v18 = v63 - v17;
  *v18 = sub_199DF8D4C();
  *(v18 + 1) = 0x4028000000000000;
  v18[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F08);
  sub_199DF913C();
  v77 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F10);
  sub_199AA0B90(&qword_1EAF75F18, &qword_1EAF75F10);
  sub_199DF854C();
  v19 = *(a1 + 32);
  LOBYTE(v80) = *(a1 + 24);
  v81 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF986C();
  v63[1] = v78;
  v64 = v79;
  v74 = a1;
  v20 = v11;
  v65 = v11;
  sub_199B7CFBC(a1, v11);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v63[2] = v7;
  v22 = swift_allocObject();
  sub_199B7DD94(v20, v22 + v21, type metadata accessor for CNPosterPreviewView);
  v23 = v68;
  sub_199B7CFBC(a1, v68);
  v24 = swift_allocObject();
  sub_199B7DD94(v23, v24 + v21, type metadata accessor for CNPosterPreviewView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F20);
  v68 = MEMORY[0x1E6981870];
  sub_199AA0B90(&qword_1EAF75F28, &qword_1EAF75F00);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F30);
  v26 = sub_199B7D09C();
  *&v78 = v25;
  *(&v78 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v67;
  sub_199DF94FC();

  sub_199A79A04(v18, &qword_1EAF75F00);
  v28 = v74;
  v29 = v65;
  sub_199B7CFBC(v74, v65);
  v30 = swift_allocObject();
  sub_199B7DD94(v29, v30 + v21, type metadata accessor for CNPosterPreviewView);
  v31 = (v27 + *(v73 + 36));
  *v31 = sub_199B7D180;
  v31[1] = v30;
  v31[2] = 0;
  v31[3] = 0;
  v32 = v28;
  v78 = *(v28 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40);
  sub_199DF984C();
  v33 = v80;
  *&v78 = v80;
  sub_199B7CFBC(v32, v29);
  v34 = swift_allocObject();
  sub_199B7DD94(v29, v34 + v21, type metadata accessor for CNPosterPreviewView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF740A0);
  sub_199B7D218();
  sub_199B58098();
  sub_199DF962C();

  sub_199A79A04(v27, &qword_1EAF75EF8);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F50);
  v67 = *(v73 - 8);
  v35 = v67;
  v36 = *(v67 + 8);
  MEMORY[0x1EEE9AC00](v73, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F58);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v63 - v40;
  *v41 = sub_199DF8D4C();
  *(v41 + 1) = 0x4028000000000000;
  v41[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F60);
  sub_199B7A694(v74, &v41[*(v42 + 44)]);
  sub_199DF915C();
  sub_199AA0B90(&qword_1EAF75F68, &qword_1EAF75F58);
  sub_199DF94AC();
  v43 = sub_199A79A04(v41, &qword_1EAF75F58);
  v45 = MEMORY[0x1EEE9AC00](v43, v44);
  v46 = v71;
  v47 = v63 - v70;
  v48 = v75[2];
  v49 = v48(v63 - v70, v76, v71, v45);
  v51 = MEMORY[0x1EEE9AC00](v49, v50);
  v52 = *(v35 + 2);
  v53 = v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52(v53, v53, v73, v51);
  v54 = v72;
  *v72 = 0;
  *(v54 + 8) = 1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F70);
  (v48)(v54 + v55[12], v47, v46);
  v56 = v54 + v55[16];
  *v56 = 0;
  v56[8] = 1;
  v57 = v54 + v55[20];
  v58 = v73;
  (v52)(v57, v53, v73);
  v59 = *(v67 + 1);
  v60 = v58;
  v59(v53, v58);
  v61 = v75[1];
  v61(v76, v46);
  v59(v53, v60);
  return (v61)(v47, v46);
}

void sub_199B7942C()
{
  LOBYTE(v1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF985C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40);
  sub_199DF984C();
  if (v1)
  {
  }

  LOBYTE(v1) = v1 != 0;
  sub_199DF985C();
  sub_199DF984C();
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong previewViewDidCreateWithPosterConfiguration_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_199B79554@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v20 = type metadata accessor for CNExistingWallpaperEditorView(0);
  MEMORY[0x1EEE9AC00](v20, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F30);
  MEMORY[0x1EEE9AC00](v21, v6);
  v8 = &v19 - v7;
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  *&v23 = v10;
  *(&v23 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40);
  sub_199DF984C();
  v11 = v25;
  if (!v25)
  {
    v23 = *(v2 + 72);
    sub_199DF984C();
    v11 = v25;
    if (!v25)
    {
      sub_199DFA31C();
      v11 = CNUILogPosters();
      sub_199DF7FEC();
    }
  }

  v25 = v10;
  v26 = v9;
  sub_199DF986C();
  v12 = v23;
  v13 = v24;
  *&v23 = v10;
  *(&v23 + 1) = v9;
  sub_199DF984C();
  v14 = v25;
  if (v25 || (v23 = *(v2 + 72), result = sub_199DF984C(), (v14 = v25) != 0))
  {
    v16 = *v2;
    *&v5[*(v20 + 28)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72318);
    swift_storeEnumTagMultiPayload();
    *v5 = v12;
    *(v5 + 2) = v13;
    *(v5 + 3) = v14;
    *(v5 + 4) = v16;
    v17 = v16;
    v18 = sub_199DF916C();
    sub_199B7DD94(v5, v8, type metadata accessor for CNExistingWallpaperEditorView);
    v8[*(v21 + 36)] = v18;
    sub_199B7D09C();
    sub_199DF967C();
    return sub_199A79A04(v8, &qword_1EAF75F30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_199B797F0(uint64_t a1)
{
  v2 = type metadata accessor for CNPosterPreviewView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - v10;
  sub_199B79A04();
  v12 = sub_199AC3DD4(*(a1 + *(v3 + 76)), *(a1 + *(v3 + 76) + 8));
  if (v12)
  {
    v13 = v12;
    v14 = sub_199DFA1BC();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    sub_199B7CFBC(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_199DFA17C();
    v15 = v13;
    v16 = sub_199DFA16C();
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    *(v19 + 16) = v16;
    *(v19 + 24) = v20;
    sub_199B7DD94(v7, v19 + v17, type metadata accessor for CNPosterPreviewView);
    *(v19 + v18) = v15;
    sub_199AE5E60(0, 0, v11, &unk_199E42BC8, v19);
  }
}

void sub_199B79A04()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E20);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v101 - v4;
  v6 = type metadata accessor for CNPosterPreviewView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v101 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v101 - v16;
  v19 = sub_199AC3DD4(*(v1 + *(v18 + 76)), *(v1 + *(v18 + 76) + 8));
  if (v19)
  {
    v20 = v19;
    v110 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    aBlock = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40);
    sub_199DF984C();
    v21 = v116;
    if (v116)
    {
      v22 = objc_opt_self();
      v23 = *v0;
      sub_199B7CFBC(v1, v17);
      v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v25 = swift_allocObject();
      sub_199B7DD94(v17, v25 + v24, type metadata accessor for CNPosterPreviewView);
      v114 = sub_199B7DEC8;
      v115 = v25;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v112 = sub_199B77770;
      v113 = &block_descriptor_57;
      v26 = _Block_copy(&aBlock);
      v27 = v21;

      [v22 incomingCallSnapshotForConfiguration:v27 contact:v23 includingCallButtons:1 windowScene:v20 completionBlock:v26];

      _Block_release(v26);
      return;
    }

    if (qword_1EAF718E0 != -1)
    {
      swift_once();
    }

    v28 = qword_1EAF718E8;
    if (*(v0 + 8) == 1)
    {
      v29 = [*v0 imageType];
      if (v29)
      {
        v30 = v29;
        sub_199DF9F8C();
      }

      v31 = sub_199B7C744();

      v32 = *(v1 + 120);
      if (!v32)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v31 = 1;
      v32 = *(v0 + 120);
      if (!v32)
      {
LABEL_12:
        v109 = *v1;
LABEL_13:
        v33 = *(v1 + 88);
        v34 = *(v1 + 104);
        v107 = *(v1 + 96);
        v108 = v33;
        LODWORD(v106) = *(v1 + 112);
        sub_199B7CFBC(v1, v13);
        v35 = v110;
        sub_199B7CFBC(v13, v110);
        v36 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v37 = (v8 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
        v38 = swift_allocObject();
        v39 = v38 + v36;
        v40 = v38;
        sub_199B7DD94(v13, v39, type metadata accessor for CNPosterPreviewView);
        *(v40 + v37) = v20;
        v41 = swift_allocObject();
        *(v41 + 16) = sub_199B7D764;
        *(v41 + 24) = v40;
        *(v41 + 32) = v28;
        *(v41 + 40) = v31;
        if (v31)
        {
          v42 = v32;
          v43 = v28;

          v44 = v20;
          v45 = v109;
          v46 = sub_199B760E0(v31, v109, v34, v108, v107, v106);
          v47 = sub_199B77548(v46);
          sub_199B7AE78(v47, v35, v44);

          v48 = v35;
LABEL_38:
          sub_199B7D810(v48);
          return;
        }

        v49 = v34;
        v50 = objc_allocWithZone(CNPRSMutablePosterConfiguration);
        v51 = v32;
        v52 = v28;

        v53 = v20;
        v54 = [v50 init];
        v55 = v109;
        v56 = [v109 memojiMetadata];
        if (!v56)
        {

LABEL_37:
          v48 = v110;
          goto LABEL_38;
        }

        v106 = v52;
        v107 = v54;
        v108 = v53;
        v57 = v56;
        v58 = sub_199DF71FC();
        v60 = v59;

        v61 = objc_opt_self();
        v62 = sub_199DF71DC();
        v63 = [v61 memojiMetadataFromData_];

        if (v63)
        {
          v105 = v58;
          v64 = [v63 avatarRecordData];
          if (v64)
          {
            v65 = v64;
            v102 = sub_199DF71FC();
            v67 = v66;

            v103 = v60;
            v104 = v40;
            if (v49)
            {
              v68 = [v49 colorWithAlphaComponent_];
LABEL_30:
              v78 = objc_opt_self();
              v79 = [v78 mainScreen];
              [v79 bounds];
              v81 = v80;

              v82 = [v78 mainScreen];
              [v82 bounds];
              v84 = v83;

              if (v84 < v81)
              {
                v81 = v84;
              }

              v85 = [v78 mainScreen];
              [v85 bounds];
              v87 = v86;

              v88 = [v78 mainScreen];
              [v88 bounds];
              v90 = v89;

              if (v87 > v90)
              {
                v91 = v87;
              }

              else
              {
                v91 = v90;
              }

              v92 = v91 * 0.45;
              v101 = objc_opt_self();
              v93 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v94 = swift_allocObject();
              v94[2] = v93;
              v94[3] = sub_199B7D800;
              v95 = v107;
              v94[4] = v41;
              v94[5] = v95;
              v96 = v102;
              v94[6] = v68;
              v94[7] = v96;
              v94[8] = v67;
              v94[9] = v63;
              v114 = sub_199B7D86C;
              v115 = v94;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              v112 = sub_199B6406C;
              v113 = &block_descriptor_17;
              v97 = _Block_copy(&aBlock);
              v98 = v63;

              v99 = v95;
              v100 = v68;
              sub_199AA7630(v96, v67);

              [v101 imageFromMetadata:v98 size:v97 completionHandler:{v81, v92}];

              _Block_release(v97);

              sub_199A9EF34(v96, v67);
              v69 = v105;
              v70 = v103;
              goto LABEL_36;
            }

            v71 = sub_199DF7EDC();
            v72 = *(v71 + 16);
            if (v72)
            {
              v73 = sub_199B7C158(v72);
              if ((v73 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else
              {
                v74 = v73;
                if (v73 < *(v71 + 16))
                {
                  v75 = sub_199DF7ECC();
                  v76 = *(v75 - 8);
                  (*(v76 + 16))(v5, v71 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v74, v75);

                  (*(v76 + 56))(v5, 0, 1, v75);
                  goto LABEL_28;
                }
              }

              __break(1u);
              goto LABEL_42;
            }

            v75 = sub_199DF7ECC();
            (*(*(v75 - 8) + 56))(v5, 1, 1, v75);
LABEL_28:
            sub_199DF7ECC();
            v77 = *(v75 - 8);
            if ((*(v77 + 48))(v5, 1, v75) != 1)
            {
              v68 = sub_199DF7EBC();
              (*(v77 + 8))(v5, v75);
              goto LABEL_30;
            }

LABEL_42:
            sub_199B7D810(v110);
            __break(1u);
            return;
          }

          v69 = v105;
          v70 = v60;
        }

        else
        {

          v69 = v58;
          v70 = v60;
        }

LABEL_36:
        sub_199A9EF34(v69, v70);
        goto LABEL_37;
      }
    }

    v109 = v32;
    goto LABEL_13;
  }
}

void sub_199B7A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CNPosterPreviewView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v23 - v12;
  sub_199B79A04();
  v14 = sub_199AC3DD4(*(a3 + *(v5 + 76)), *(a3 + *(v5 + 76) + 8));
  if (v14)
  {
    v15 = v14;
    v16 = sub_199DFA1BC();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_199B7CFBC(a3, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_199DFA17C();
    v17 = v15;
    v18 = sub_199DFA16C();
    v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    *(v21 + 16) = v18;
    *(v21 + 24) = v22;
    sub_199B7DD94(v9, v21 + v19, type metadata accessor for CNPosterPreviewView);
    *(v21 + v20) = v17;
    sub_199AE5E60(0, 0, v13, &unk_199E42BB8, v21);
  }
}

uint64_t sub_199B7A694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for CNPosterPreviewView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v66 = v6;
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F78);
  v9 = v8 - 8;
  v67 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v68 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v58 - v68;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F80);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v58 - v16;
  sub_199B7CFBC(a1, v7);
  v65 = *(v4 + 80);
  v18 = (v65 + 16) & ~v65;
  v63 = v18;
  v19 = swift_allocObject();
  v64 = type metadata accessor for CNPosterPreviewView;
  sub_199B7DD94(v7, v19 + v18, type metadata accessor for CNPosterPreviewView);
  v70 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F88);
  sub_199B7D3C8();
  sub_199DF989C();
  v21 = sub_199DF904C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  sub_199B7D4D8();
  sub_199AD576C();
  v61 = v12;
  sub_199DF944C();
  (*(v22 + 8))(v25, v21);
  (*(v14 + 8))(v17, v13);
  LOBYTE(v13) = sub_199B7AD30();
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = (v13 & 1) == 0;
  v28 = &v12[*(v9 + 44)];
  *v28 = KeyPath;
  v28[1] = sub_199B7D530;
  v28[2] = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75FB0);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29, v32);
  v59 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v58 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v58 - v40;
  v42 = v20;
  v43 = v62;
  sub_199B7CFBC(v42, v62);
  v44 = v63;
  v45 = swift_allocObject();
  sub_199B7DD94(v43, v45 + v44, v64);
  sub_199DF989C();
  if (sub_199B7ADC4())
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 0.0;
  }

  (*(v38 + 32))(v36, v41, v37);
  *&v36[*(v30 + 44)] = v46;
  v47 = v59;
  v48 = sub_199B7D5D4(v36, v59);
  MEMORY[0x1EEE9AC00](v48, v49);
  v50 = &v58 - v68;
  v51 = v61;
  v52 = sub_199A99C0C(v61, &v58 - v68);
  MEMORY[0x1EEE9AC00](v52, v53);
  v54 = &v58 - v60;
  sub_199AAD408(v47, &v58 - v60, &qword_1EAF75FB0);
  v55 = v69;
  sub_199A99C0C(v50, v69);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75FB8);
  sub_199AAD408(v54, v55 + *(v56 + 48), &qword_1EAF75FB0);
  sub_199A79A04(v47, &qword_1EAF75FB0);
  sub_199A79A04(v51, &qword_1EAF75F78);
  sub_199A79A04(v54, &qword_1EAF75FB0);
  return sub_199A79A04(v50, &qword_1EAF75F78);
}

uint64_t sub_199B7AD30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40);
  sub_199DF984C();
  if (v1)
  {

    return 1;
  }

  else
  {
    sub_199DF984C();
    return 0;
  }
}

uint64_t sub_199B7ADC4()
{
  if (*(v0 + 8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40);
    sub_199DF984C();
    if (v3)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
      sub_199DF984C();
      v1 = v3 ^ 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_199B7AE78(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CNPosterPreviewView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  aBlock = *(a2 + 72);
  v21 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40);
  sub_199DF985C();
  v11 = objc_opt_self();
  v12 = *a2;
  sub_199B7CFBC(a2, &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_199B7DD94(&aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CNPosterPreviewView);
  v19 = sub_199B7DA44;
  v20 = v14;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v17 = sub_199B77770;
  v18 = &block_descriptor_63;
  v15 = _Block_copy(&aBlock);

  [v11 incomingCallSnapshotForConfiguration:v10 contact:v12 includingCallButtons:1 windowScene:a3 completionBlock:v15];
  _Block_release(v15);
}

uint64_t sub_199B7B06C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75940);
  return sub_199DF985C();
}

uint64_t sub_199B7B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_199DF886C();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = sub_199DFA17C();
  v5[18] = sub_199DFA16C();
  v8 = sub_199DFA12C();
  v5[19] = v8;
  v5[20] = v7;

  return MEMORY[0x1EEE6DFA0](sub_199B7B1C8, v8, v7);
}

uint64_t sub_199B7B1C8()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[11];
  type metadata accessor for CNPosterOnboardingSettingsAnimationFactory();
  swift_initStaticObject();
  v6 = *v5;
  type metadata accessor for CNPosterPreviewView();
  sub_199AC3B48(v1);
  (*(v3 + 104))(v2, *MEMORY[0x1E697E7D8], v4);
  v7 = sub_199DF885C();
  v8 = *(v3 + 8);
  v8(v2, v4);
  v8(v1, v4);
  v0[21] = sub_199DFA16C();
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_199B7B344;
  v10 = v0[12];

  return sub_199AA3D98((v0 + 2), v6, v7 & 1, v10, 0);
}

uint64_t sub_199B7B344()
{
  v1 = *v0;

  *(v1 + 56) = *(v1 + 24);
  sub_199A79A04(v1 + 56, &qword_1EAF72750);
  *(v1 + 64) = *(v1 + 32);
  sub_199A79A04(v1 + 64, &qword_1EAF72750);
  *(v1 + 72) = *(v1 + 40);
  sub_199A79A04(v1 + 72, &qword_1EAF72750);
  *(v1 + 80) = *(v1 + 48);
  sub_199A79A04(v1 + 80, &qword_1EAF72750);
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B7B560, v3, v2);
}

uint64_t sub_199B7B560()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_199B7B5C4, v1, v2);
}

uint64_t sub_199B7B5C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199B7B638()
{
  if (*(v0 + 8) != 1 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40), sub_199DF984C(), v3) && (v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750), sub_199DF984C(), (v3 & 1) != 0))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40);
      sub_199DF984C();
      [v2 previewViewDidFinishWithPosterConfiguration_];

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_199DF984C();
    if (v3)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
      return sub_199DF985C();
    }

    else
    {
      return sub_199DF984C();
    }
  }

  return result;
}

uint64_t sub_199B7B7C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF8CFC();
  v19 = 1;
  sub_199B7B950(v16);
  v29 = v16[9];
  v30 = v16[10];
  v31[0] = v17[0];
  *(v31 + 9) = *(v17 + 9);
  v26 = v16[6];
  v27 = v16[7];
  v28 = v16[8];
  v22 = v16[2];
  v23 = v16[3];
  v24 = v16[4];
  v25 = v16[5];
  v20 = v16[0];
  v21 = v16[1];
  v3 = sub_199DF918C();
  result = sub_199DF84FC();
  *&v18[151] = v29;
  *&v18[167] = v30;
  *&v18[183] = v31[0];
  *&v18[199] = v31[1];
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[119] = v27;
  *&v18[135] = v28;
  *&v18[23] = v21;
  *&v18[39] = v22;
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[7] = v20;
  v5 = *&v18[176];
  *(a1 + 177) = *&v18[160];
  *(a1 + 193) = v5;
  *(a1 + 209) = *&v18[192];
  v6 = *&v18[112];
  *(a1 + 113) = *&v18[96];
  *(a1 + 129) = v6;
  v7 = *&v18[144];
  *(a1 + 145) = *&v18[128];
  *(a1 + 161) = v7;
  v8 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v8;
  v9 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v9;
  v10 = *&v18[16];
  *(a1 + 17) = *v18;
  v11 = v19;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 224) = *&v18[207];
  *(a1 + 33) = v10;
  *(a1 + 232) = v3;
  *(a1 + 240) = v12;
  *(a1 + 248) = v13;
  *(a1 + 256) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = 0;
  return result;
}

uint64_t sub_199B7B950@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75940);
  sub_199DF986C();
  if (qword_1EAF71F58 != -1)
  {
    swift_once();
  }

  sub_199DF9B5C();
  sub_199DF863C();
  *&v13[6] = v14;
  *&v13[22] = v15;
  *&v13[38] = v16;
  v2 = sub_199DF9B8C();
  sub_199DF984C();
  v3 = sub_199DF919C();
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 bounds];

  v6 = [v4 mainScreen];
  [v6 bounds];

  result = sub_199DF84FC();
  *a1 = v14;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v15;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 136) = *(&v16 + 1);
  *(a1 + 144) = v2;
  *(a1 + 122) = *&v13[32];
  *(a1 + 106) = *&v13[16];
  *(a1 + 90) = *v13;
  *(a1 + 152) = v12;
  *(a1 + 160) = v3;
  *(a1 + 168) = v8;
  *(a1 + 176) = v9;
  *(a1 + 184) = v10;
  *(a1 + 192) = v11;
  *(a1 + 200) = 0;
  return result;
}

__n128 sub_199B7BB68@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B7ADC4();
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v31 = v7;
  *(&v31 + 1) = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  v14 = v13;
  sub_199DF930C();
  v15 = sub_199DF939C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_199ACE3E8(v10, v12, v14 & 1);

  sub_199DF9B5C();
  sub_199DF863C();
  v41 = v19 & 1;
  sub_199DF9B5C();
  sub_199DF897C();
  v22 = v39;
  *(a1 + 32) = v38;
  *(a1 + 48) = v22;
  result = v40;
  v24 = v35;
  v25 = v36;
  v26 = v33;
  *(a1 + 128) = v34;
  *(a1 + 144) = v24;
  v27 = v37;
  *(a1 + 160) = v25;
  *(a1 + 176) = v27;
  v28 = v31;
  v29 = v32;
  *(a1 + 64) = result;
  *(a1 + 80) = v28;
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 96) = v29;
  *(a1 + 112) = v26;
  return result;
}

void *sub_199B7BDE0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result previewViewDidSelectUseDifferentPoster];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_199B7BE38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v26[2] = v7;
  v26[3] = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  LOBYTE(v7) = v13;
  sub_199DF91EC();
  v14 = sub_199DF939C();
  v16 = v15;
  v18 = v17;

  sub_199ACE3E8(v10, v12, v7 & 1);

  sub_199DF925C();
  v19 = sub_199DF932C();
  v21 = v20;
  LOBYTE(v7) = v22;
  v24 = v23;
  sub_199ACE3E8(v14, v16, v18 & 1);

  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_199B7C018@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_199DF8D4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75EE0);
  sub_199B78B38(v1, (a1 + *(v3 + 44)));
  v4 = sub_199DF918C();
  sub_199DF84FC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75EE8);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_199B7C0EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_199DF8BFC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_199B7C158(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x19A8FA1C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x19A8FA1C0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_199B7C1E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for CNPosterPreviewViewConfiguration();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData] = xmmword_199E3FAE0;
  *&v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterConfiguration] = 0;
  v14 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_displayName];
  *v14 = a4;
  v14[1] = a5;
  v15 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID];
  *v15 = a1;
  v15[1] = a2;
  *&v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_backgroundColor] = a3;
  v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_isEditingSNaP] = a6;
  v16 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText];
  *v16 = 0;
  v16[1] = 0;
  v19.receiver = v13;
  v19.super_class = v12;
  sub_199DF81AC();
  sub_199DF81AC();
  v17 = a3;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_199B7C2D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for CNPosterPreviewViewConfiguration();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData] = xmmword_199E3FAE0;
  *&v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterConfiguration] = 0;
  v18 = &v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_displayName];
  *v18 = a4;
  v18[1] = a5;
  v19 = &v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID];
  *v19 = a1;
  v19[1] = a2;
  *&v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_backgroundColor] = a3;
  v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_isEditingSNaP] = a6;
  v20 = &v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText];
  *v20 = a7;
  v20[1] = a8;
  v23.receiver = v17;
  v23.super_class = v16;
  sub_199DF81AC();
  sub_199DF81AC();
  v21 = a3;
  sub_199DF81AC();
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_199B7C3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CNPosterPreviewViewConfiguration();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData] = xmmword_199E3FAE0;
  swift_unknownObjectRetain();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = 0;
  }

  *&v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterConfiguration] = v7;
  v8 = &v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_displayName];
  *v8 = a2;
  v8[1] = a3;
  v9 = &v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID];
  *v9 = 0;
  v9[1] = 0;
  *&v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_backgroundColor] = 0;
  v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_isEditingSNaP] = 0;
  v10 = &v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText];
  *v10 = 0;
  v10[1] = 0;
  v12.receiver = v6;
  v12.super_class = v5;
  sub_199DF81AC();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_199B7C4EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  v9 = sub_199DF71DC();
  v28[0] = 0;
  v10 = [v8 unarchiveCNConfigurationFromData:v9 error:v28];

  v11 = v28[0];
  if (v10)
  {
    v12 = type metadata accessor for CNPosterPreviewViewConfiguration();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData];
    *v14 = a1;
    v14[1] = a2;
    v15 = v10;
    v16 = v11;
    v17 = v15;
  }

  else
  {
    v18 = v28[0];
    v19 = sub_199DF717C();

    swift_willThrow();
    sub_199DFA31C();
    v20 = CNUILogPosters();
    sub_199DF7FEC();

    v12 = type metadata accessor for CNPosterPreviewViewConfiguration();
    v13 = objc_allocWithZone(v12);
    v10 = 0;
    v21 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData];
    *v21 = a1;
    v21[1] = a2;
  }

  *&v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterConfiguration] = v10;
  v22 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_displayName];
  *v22 = a3;
  v22[1] = a4;
  v23 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID];
  *v23 = 0;
  v23[1] = 0;
  *&v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_backgroundColor] = 0;
  v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_isEditingSNaP] = 0;
  v24 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText];
  *v24 = 0;
  v24[1] = 0;
  sub_199AA7630(a1, a2);
  type metadata accessor for CNPosterPreviewViewConfiguration();
  v27.receiver = v13;
  v27.super_class = v12;
  sub_199DF81AC();
  v25 = objc_msgSendSuper2(&v27, sel_init);

  swift_unknownObjectRelease();
  return v25;
}

uint64_t sub_199B7C744()
{
  v1 = [*v0 imageType];
  if (!v1)
  {
    sub_199DF9F8C();
    goto LABEL_15;
  }

  v2 = v1;
  v3 = sub_199DF9F8C();
  v5 = v4;

  v6 = sub_199DF9F8C();
  if (!v5)
  {
LABEL_15:

    sub_199DF9F8C();

    return 1;
  }

  if (v6 == v3 && v5 == v7)
  {

    goto LABEL_18;
  }

  v9 = sub_199DFA99C();

  if (v9)
  {
LABEL_18:

    return 2;
  }

  if (sub_199DF9F8C() == v3 && v5 == v10)
  {

    return 0;
  }

  v12 = sub_199DFA99C();

  result = 0;
  if ((v12 & 1) == 0)
  {
    return 1;
  }

  return result;
}

id sub_199B7C894(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E70);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  swift_unknownObjectRetain();
  sub_199B780A0(a1, a2, a3, v19);
  KeyPath = swift_getKeyPath();
  v21 = &v19[*(v12 + 44)];
  *v21 = KeyPath;
  v21[1] = a5;
  sub_199AAD408(v19, v15, &qword_1EAF75E70);
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E78));
  v23 = a5;
  *&v6[OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController] = sub_199DF8DFC();
  v24 = type metadata accessor for CNPosterPreviewViewWrapper();
  v27.receiver = v6;
  v27.super_class = v24;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  sub_199A79A04(v19, &qword_1EAF75E70);
  return v25;
}

uint64_t type metadata accessor for CNPosterPreviewView()
{
  result = qword_1EAF75EA8;
  if (!qword_1EAF75EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199B7CC2C()
{
  sub_199A7A02C(319, &qword_1ED615BF0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CNMeCardSharingSettingsEditingState(319);
    if (v1 <= 0x3F)
    {
      sub_199B7CE8C(319, &qword_1EAF711C0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_199B7CF34(319, &qword_1EAF75EB8, &unk_1EAF740A0, &unk_199E3C3C0, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_199B7CE8C(319, &qword_1EAF75EC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_199B7CEDC(319, &qword_1EAF75EC8, &qword_1EAF71C10);
            if (v5 <= 0x3F)
            {
              sub_199B7CEDC(319, &qword_1EAF75ED0, &qword_1ED615BF0);
              if (v6 <= 0x3F)
              {
                sub_199B7CF34(319, &qword_1EAF75ED8, &qword_1EAF72748, &unk_199E3EE20, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_199B2A460();
                  if (v8 <= 0x3F)
                  {
                    sub_199B7CF34(319, &qword_1EAF713E0, &qword_1EAF72E80, &unk_199E398B0, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_199B7CE8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_199B7CEDC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_199A7A02C(255, a3);
    v4 = sub_199DFA63C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_199B7CF34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_199B7CFBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNPosterPreviewView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_199B7D09C()
{
  result = qword_1EAF75F38;
  if (!qword_1EAF75F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F30);
    sub_199B7D128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75F38);
  }

  return result;
}

unint64_t sub_199B7D128()
{
  result = qword_1EAF740B8;
  if (!qword_1EAF740B8)
  {
    type metadata accessor for CNExistingWallpaperEditorView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF740B8);
  }

  return result;
}

void sub_199B7D198(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CNPosterPreviewView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_199B7A480(a1, a2, v6);
}

unint64_t sub_199B7D218()
{
  result = qword_1EAF75F48;
  if (!qword_1EAF75F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F20);
    sub_199AA0B90(&qword_1EAF75F28, &qword_1EAF75F00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F30);
    sub_199B7D09C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75F48);
  }

  return result;
}

unint64_t sub_199B7D3C8()
{
  result = qword_1EAF75F90;
  if (!qword_1EAF75F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F88);
    sub_199B7D454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75F90);
  }

  return result;
}

unint64_t sub_199B7D454()
{
  result = qword_1EAF75F98;
  if (!qword_1EAF75F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75F98);
  }

  return result;
}

unint64_t sub_199B7D4D8()
{
  result = qword_1EAF75FA8;
  if (!qword_1EAF75FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75FA8);
  }

  return result;
}

uint64_t sub_199B7D560(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CNPosterPreviewView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_199B7D5D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B7D644(uint64_t a1)
{
  v4 = *(type metadata accessor for CNPosterPreviewView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_199AA7688;

  return sub_199B7B0C4(a1, v6, v7, v1 + v5, v8);
}

void sub_199B7D764(void *a1)
{
  v3 = *(type metadata accessor for CNPosterPreviewView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_199B7AE78(a1, v1 + v4, v5);
}

uint64_t sub_199B7D810(uint64_t a1)
{
  v2 = type metadata accessor for CNPosterPreviewView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for CNPosterPreviewView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  MEMORY[0x19A8FA290](v0 + v3 + 16);

  v6 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF886C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_199AC6288(*(v5 + *(v1 + 68)), *(v5 + *(v1 + 68) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_36Tm()
{
  v1 = type metadata accessor for CNPosterPreviewView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  MEMORY[0x19A8FA290](v0 + v3 + 16);

  v6 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF886C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_199AC6288(*(v5 + *(v1 + 68)), *(v5 + *(v1 + 68) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v2 | 7);
}

uint64_t sub_199B7DC74(uint64_t a1)
{
  v4 = *(type metadata accessor for CNPosterPreviewView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_199AA7314;

  return sub_199B7B0C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_199B7DD94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_199B7DDFC()
{
  result = qword_1EAF75FC0;
  if (!qword_1EAF75FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75EE8);
    sub_199AA0B90(&qword_1EAF75FC8, &unk_1EAF75FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75FC0);
  }

  return result;
}

uint64_t sub_199B7DECC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_199DF9F8C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, v8);
}

id sub_199B7DF64(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAD0]) init];
  [v4 setSourceType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF760A0);
  sub_199DF911C();
  [v4 setDelegate_];

  return v4;
}

uint64_t sub_199B7E008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B7EC0C(v3, v6);
  v7 = type metadata accessor for CNPhotoPickerCoordinator(0);
  v8 = objc_allocWithZone(v7);
  sub_199B7EC0C(v6, v8 + OBJC_IVAR____TtC10ContactsUI24CNPhotoPickerCoordinator_picker);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_199B7EC70(v6);
  *a3 = v9;
  return result;
}

void sub_199B7E1DC()
{
  sub_199B7ECCC(&qword_1EAF760A8, type metadata accessor for CNWallpaperPhotoPickerView);
  sub_199DF90BC();
  __break(1u);
}

uint64_t sub_199B7E234(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for CNWallpaperPhotoPickerView(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC10ContactsUI24CNPhotoPickerCoordinator_picker;
  sub_199B7EC0C(a1 + OBJC_IVAR____TtC10ContactsUI24CNPhotoPickerCoordinator_picker, v9);
  v11 = v9[1];
  v12 = v9[2];
  v29 = *v9;
  v30 = v11;
  v31 = v12;
  v33 = a2;
  v13 = v12;
  v14 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF760B0);
  sub_199DF997C();
  sub_199B7EC70(v9);

  sub_199B7EC0C(a1 + v10, v9);
  swift_beginAccess();
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v17 = v9[4];
  v18 = v9[5];
  v19 = v9[6];
  v29 = v9[3];
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v28[1] = v15;
  v28[2] = v16;
  sub_199DF81AC();
  sub_199DF81AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF760B8);
  sub_199DF997C();
  sub_199B7EC70(v9);

  sub_199B7EC0C(a1 + v10, v9);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v28 - v22;
  sub_199AC3500(v28 - v22);
  sub_199B7EC70(v9);
  v24 = sub_199DF892C();
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  MEMORY[0x19A8F7740](v20, v26);
  sub_199DF891C();
  sub_199DF997C();
  return sub_199AFFE24(v23);
}

uint64_t sub_199B7E4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_199DF9DFC();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_199DF9E1C();
  v15 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_199DF81AC();

  sub_199A7A02C(0, &qword_1EAF71D20);
  v19 = sub_199DFA39C();
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  aBlock[4] = sub_199B12788;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_20;
  v21 = _Block_copy(aBlock);

  sub_199DF9E0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_199B7ECCC(&qword_1EAF71CE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
  sub_199ABC0BC();
  sub_199DFA68C();
  MEMORY[0x19A8F8190](0, v18, v14, v21);
  _Block_release(v21);

  (*(v25 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v24);
}

id sub_199B7E8D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNPhotoPickerCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B7E944()
{
  result = type metadata accessor for CNWallpaperPhotoPickerView(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_199B7EA1C()
{
  sub_199B7EB60(319, &unk_1EAF76070, &qword_1EAF72748, &unk_199E3EE20, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_199B7EB60(319, &unk_1EAF76080, &qword_1EAF72310, &unk_199E37190, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_199B7EB60(319, &qword_1EAF76090, &qword_1EAF740B0, &unk_199E3A9B0, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SourceType(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199B7EB60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_199B7EC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNWallpaperPhotoPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B7EC70(uint64_t a1)
{
  v2 = type metadata accessor for CNWallpaperPhotoPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199B7ECCC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_199B7ED14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = sub_199B4BCF0(*MEMORY[0x1E69DDE10]);
    if (v5)
    {
      sub_199A9DA04(*(a1 + 56) + 32 * v4, aBlock);
      sub_199A7A02C(0, qword_1EAF738C0);
      if (swift_dynamicCast())
      {
        v6 = aBlock[6];
        v7 = swift_allocObject();
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        v8 = swift_allocObject();
        v8[2] = v2;
        v8[3] = v6;
        v8[4] = v7;
        v9 = &v2[OBJC_IVAR____TtC10ContactsUI24CNPhotoPickerCoordinator_picker];
        if (*&v9[*(type metadata accessor for CNWallpaperPhotoPickerView(0) + 28)] == 1)
        {
          v10 = objc_opt_self();
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = sub_199B7EF64;
          v11[4] = v8;
          aBlock[4] = sub_199B7EF70;
          aBlock[5] = v11;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_199B7DECC;
          aBlock[3] = &block_descriptor_18;
          v12 = _Block_copy(aBlock);
          swift_retain_n();
          v13 = v2;
          v14 = v6;

          [v10 createAssetFromImage:v14 completionHandler:v12];

          _Block_release(v12);
        }

        else
        {

          v15 = v2;
          v16 = v6;
          sub_199B7E234(v15, v16, v7);
        }
      }
    }
  }
}

void sub_199B7EFB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t GroupVisualizerType.rawValue.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x4F495443454C4553;
    }

    if (a1 == 3)
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x53474E4954544553;
    }

    if (a1 == 1)
    {
      return 0x4452414F424E4FLL;
    }
  }

  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

uint64_t sub_199B7F0EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      v5 = 0x4F495443454C4553;
      v4 = 0xE90000000000004ELL;
      if (v3 <= 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_27;
      }

      v5 = 0xD000000000000010;
      v4 = 0x8000000199E4A2B0;
      if (v3 <= 1)
      {
        goto LABEL_15;
      }
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_27;
    }

    v4 = 0xE700000000000000;
    v5 = 0x4452414F424E4FLL;
    if (v3 <= 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x53474E4954544553;
    if (v3 <= 1)
    {
LABEL_15:
      if (!v3)
      {
        v6 = 0xE800000000000000;
        if (v5 != 0x53474E4954544553)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      if (v3 == 1)
      {
        v6 = 0xE700000000000000;
        if (v5 != 0x4452414F424E4FLL)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  if (v3 == 2)
  {
    v6 = 0xE90000000000004ELL;
    if (v5 != 0x4F495443454C4553)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v3 == 3)
  {
    v6 = 0x8000000199E4A2B0;
    if (v5 != 0xD000000000000010)
    {
      goto LABEL_25;
    }

LABEL_23:
    if (v4 == v6)
    {
      v7 = 1;
LABEL_26:

      return v7 & 1;
    }

LABEL_25:
    v7 = sub_199DFA99C();
    goto LABEL_26;
  }

LABEL_27:
  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

uint64_t sub_199B7F2BC()
{
  v1 = *v0;
  sub_199DFAA7C();
  if (v1 > 1)
  {
    if (v1 == 2 || v1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!v1 || v1 == 1)
  {
LABEL_9:
    sub_199DF9FEC();

    return sub_199DFAABC();
  }

  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

uint64_t sub_199B7F3B8()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1 || v1 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    result = sub_199DFA9CC();
    __break(1u);
    return result;
  }

  if (v1 != 2 && v1 != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_199DF9FEC();
}

uint64_t sub_199B7F4A4()
{
  v1 = *v0;
  sub_199DFAA7C();
  if (v1 > 1)
  {
    if (v1 == 2 || v1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!v1 || v1 == 1)
  {
LABEL_9:
    sub_199DF9FEC();

    return sub_199DFAABC();
  }

  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

uint64_t sub_199B7F59C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_199B834EC(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_199B7F5D4@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*v1 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0xE90000000000004ELL;
      v4 = 0x4F495443454C4553;
      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v3 = 0x8000000199E4A2B0;
      v4 = 0xD000000000000010;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0xE800000000000000;
      v4 = 0x53474E4954544553;
LABEL_10:
      *a1 = v4;
      a1[1] = v3;
      return result;
    }

    if (v2 == 1)
    {
      v3 = 0xE700000000000000;
      v4 = 0x4452414F424E4FLL;
      goto LABEL_10;
    }
  }

  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

id CNContactGroupVisualizerViewWrapper.init(type:contacts:limitContactsCount:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    if (a2 >> 62)
    {
      v17 = a2;
      v6 = sub_199DFA87C();
      a2 = v17;
    }

    else
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = a1;
    v20 = a2;
    v21 = v6;
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF760F8));
    *&v4[OBJC_IVAR____TtC10ContactsUI35CNContactGroupVisualizerViewWrapper_hostingController] = sub_199DF8DFC();
    goto LABEL_17;
  }

  v19 = a1;
  v20 = sub_199B83678(a3 & ~(a3 >> 63), a3 >> 63);
  v21 = v8;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF760F8));
  sub_199DF81AC();
  v10 = sub_199DF8DFC();
  v11 = OBJC_IVAR____TtC10ContactsUI35CNContactGroupVisualizerViewWrapper_hostingController;
  *&v3[OBJC_IVAR____TtC10ContactsUI35CNContactGroupVisualizerViewWrapper_hostingController] = v10;
  if (a1 <= 1)
  {
    if (a1 && a1 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (a1 == 2)
  {
LABEL_11:
    v12 = sub_199DFA99C();

    if ((v12 & 1) == 0)
    {

LABEL_17:
      v18.receiver = v4;
      v18.super_class = type metadata accessor for CNContactGroupVisualizerViewWrapper();
      return objc_msgSendSuper2(&v18, sel_init);
    }

    goto LABEL_15;
  }

  if (a1 != 3)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = [*&v3[v11] view];
  if (v13)
  {
    v14 = v13;

    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    goto LABEL_17;
  }

  __break(1u);
LABEL_20:
  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

id CNContactGroupVisualizerViewWrapper.__allocating_init(type:contacts:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  if (a2)
  {
    v7 = v6;
    sub_199A7DDB0();
    v8 = sub_199DFA0BC();

    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 initWithType:a1 contacts:v8 limitContactsCount:-1];

  return v9;
}

id CNContactGroupVisualizerViewWrapper.init(type:contacts:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_199A7DDB0();
    v4 = sub_199DFA0BC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithType:a1 contacts:v4 limitContactsCount:-1];

  return v5;
}

uint64_t sub_199B7FB60(void *a1, _BYTE *a2, void *a3, uint64_t *a4, id a5, void *a6, void *a7)
{
  if (![a1 imageDataAvailable])
  {
    if (__OFADD__(*a6, 1))
    {
      goto LABEL_16;
    }

    ++*a6;
    a5 = a1;
    MEMORY[0x19A8F7E80]();
    if (*((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  a1;
  MEMORY[0x19A8F7E80]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    result = sub_199DFA10C();
    v15 = *a4 + 1;
    if (__OFADD__(*a4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_199DFA0EC();
LABEL_8:
      result = sub_199DFA10C();
    }

    else
    {
      *a4 = v15;
      if (v15 == a5)
      {
        *a2 = 1;
      }
    }

    if (!__OFADD__(*a4, *a6))
    {
      break;
    }

    __break(1u);
LABEL_14:
    sub_199DFA0EC();
  }

  if (*a4 + *a6 >= 125)
  {
    *a2 = 1;
  }

  return result;
}

id CNContactGroupVisualizerViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNContactGroupVisualizerViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactGroupVisualizerViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B7FD9C()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF760C0);
  __swift_project_value_buffer(v0, qword_1EAF760C0);
  return sub_199DF803C();
}

uint64_t sub_199B7FE1C()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF760D8);
  v1 = __swift_project_value_buffer(v0, qword_1EAF760D8);
  if (qword_1EAF71F60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EAF760C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_199B7FEE4()
{

  return swift_deallocClassInstance();
}

id sub_199B7FF1C(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76328);
  sub_199DF900C();
  v4 = *(v7 + 16);

  v5 = [v4 view];

  sub_199B84594(a1, v3);
  return v5;
}

void sub_199B7FFC4(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactAvatarView.Coordinator();
  v2 = swift_allocObject();
  v3 = [objc_opt_self() defaultSettings];
  v4 = [objc_allocWithZone(CNAvatarViewController) initWithSettings_];

  *(v2 + 16) = v4;
  *a1 = v2;
}

void sub_199B80104()
{
  sub_199B853C0();
  sub_199DF8EAC();
  __break(1u);
}

double sub_199B8012C@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_199DF9B5C();
  v10 = v9;
  sub_199B80358(a1, a2, &v33, a4);
  v28 = v41;
  v29 = v42;
  v30[0] = v43[0];
  *(v30 + 9) = *(v43 + 9);
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v31[8] = v41;
  v31[9] = v42;
  v32[0] = v43[0];
  *(v32 + 9) = *(v43 + 9);
  v31[4] = v37;
  v31[5] = v38;
  v31[6] = v39;
  v31[7] = v40;
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  sub_199AAD408(&v20, v18, &qword_1EAF762E8);
  sub_199A79A04(v31, &qword_1EAF762E8);
  v41 = v28;
  v42 = v29;
  v43[0] = v30[0];
  *(v43 + 9) = *(v30 + 9);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  sub_199DF9B6C();
  sub_199DF863C();
  *&v19[7] = v18[0];
  *&v19[23] = v18[1];
  *&v19[39] = v18[2];
  v11 = v42;
  *(a3 + 144) = v41;
  *(a3 + 160) = v11;
  *(a3 + 176) = v43[0];
  *(a3 + 185) = *(v43 + 9);
  v12 = v38;
  *(a3 + 80) = v37;
  *(a3 + 96) = v12;
  v13 = v40;
  *(a3 + 112) = v39;
  *(a3 + 128) = v13;
  v14 = v34;
  *(a3 + 16) = v33;
  *(a3 + 32) = v14;
  v15 = v36;
  *(a3 + 48) = v35;
  *(a3 + 64) = v15;
  v16 = *&v19[16];
  *(a3 + 201) = *v19;
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 217) = v16;
  result = *&v19[32];
  *(a3 + 233) = *&v19[32];
  *(a3 + 248) = *&v19[47];
  return result;
}

uint64_t sub_199B80358@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  if (a2)
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v6 = 0.0;
    v31 = 1;
  }

  else
  {
    v8 = a1;
    sub_199DF9B5C();
    sub_199DF863C();
    v36 = v73;
    v37 = v71;
    v34 = v76;
    v35 = v75;
    v6 = a4 * 0.25;
    LOBYTE(v59[0]) = v72;
    LOBYTE(v52) = v74;
    v31 = a1;
    v32 = v72;
    v33 = v74;
  }

  v9 = a1;
  sub_199DF9B5C();
  sub_199DF863C();
  v10 = v77;
  v11 = v78;
  v12 = v79;
  v13 = v80;
  v15 = v81;
  v14 = v82;
  v16 = sub_199DF916C();
  sub_199DF84FC();
  LOBYTE(v38[0]) = 0;
  *&v45 = v31;
  *(&v45 + 1) = v37;
  *&v46 = v32;
  *(&v46 + 1) = v36;
  *&v47 = v33;
  *(&v47 + 1) = v35;
  *&v48 = v34;
  *(&v48 + 1) = v6;
  v49 = 0;
  v50 = 0;
  v51 = v6;
  v39 = v45;
  v40 = v46;
  *v44 = v6;
  v42 = v48;
  v43 = 0u;
  v41 = v47;
  *&v52 = a1;
  *(&v52 + 1) = v77;
  LOBYTE(v53) = v78;
  *(&v53 + 1) = v79;
  LOBYTE(v54) = v80;
  *(&v54 + 1) = v81;
  *&v55 = v82;
  BYTE8(v55) = v16;
  *&v56 = v17;
  *(&v56 + 1) = v18;
  *&v57 = v19;
  *(&v57 + 1) = v20;
  v58 = 0;
  *&v44[40] = v54;
  *&v44[24] = v53;
  *&v44[8] = v52;
  v44[104] = 0;
  *&v44[88] = v57;
  *&v44[72] = v56;
  *&v44[56] = v55;
  v21 = v45;
  v22 = v46;
  v23 = v48;
  a3[2] = v47;
  a3[3] = v23;
  *a3 = v21;
  a3[1] = v22;
  v24 = v43;
  v25 = *v44;
  v26 = *&v44[32];
  a3[6] = *&v44[16];
  a3[7] = v26;
  a3[4] = v24;
  a3[5] = v25;
  v27 = *&v44[48];
  v28 = *&v44[64];
  v29 = *&v44[80];
  *(a3 + 169) = *&v44[89];
  a3[9] = v28;
  a3[10] = v29;
  a3[8] = v27;
  v59[0] = a1;
  v59[1] = v10;
  v60 = v11;
  v61 = v12;
  v62 = v13;
  v63 = v15;
  v64 = v14;
  v65 = v16;
  v66 = v17;
  v67 = v18;
  v68 = v19;
  v69 = v20;
  v70 = 0;
  sub_199AAD408(&v45, v38, &qword_1EAF762F0);
  sub_199AAD408(&v52, v38, &qword_1EAF762F8);
  sub_199A79A04(v59, &qword_1EAF762F8);
  v38[0] = v31;
  v38[1] = v37;
  v38[2] = v32;
  v38[3] = v36;
  v38[4] = v33;
  v38[5] = v35;
  v38[6] = v34;
  *&v38[7] = v6;
  v38[8] = 0;
  v38[9] = 0;
  *&v38[10] = v6;
  return sub_199A79A04(v38, &qword_1EAF762F0);
}

uint64_t sub_199B80674(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_199DF9A7C();
      v5 = sub_199DFA0FC();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_199DF9A7C();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

void sub_199B807D0(uint64_t a1@<X8>)
{
  v3 = sub_199DF8F6C();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  if ((v7 * v8) >> 64 == (v7 * v8) >> 63)
  {
    v9 = *(v1 + 48);
    if ((*(v1 + 64) & 1) == 0 || !__OFSUB__(v7 * v8, 1))
    {
      v38[1] = v6;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76280);
      v41 = v38;
      v10 = *(v40 - 8);
      v39 = a1;
      v11 = v10;
      MEMORY[0x1EEE9AC00](v40, v12);
      v14 = v38 - v13;
      v15 = sub_199DF9A7C();
      MEMORY[0x1EEE9AC00](v15 - 8, v16);
      v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = sub_199DF9A6C();
      v21 = MEMORY[0x1EEE9AC00](v19, v20);
      v23 = (v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      *v23 = v9;
      v23[1] = 0x7FF0000000000000;
      (*(v24 + 104))(v23, *MEMORY[0x1E697D738], v21);
      sub_199DF9A8C();
      v25 = sub_199B80674(v18, v8);
      MEMORY[0x1EEE9AC00](v25, v26);
      sub_199DF8D4C();
      v42 = 0;
      sub_199B84C64(&qword_1EAF74760, MEMORY[0x1E697FCB0]);
      sub_199DFAB2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76288);
      sub_199B84CB4();
      sub_199DF9BCC();
      v27 = sub_199DF917C();
      sub_199DF84FC();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = v39;
      (*(v11 + 32))(v39, v14, v40);
      v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF762A8) + 36);
      *v37 = v27;
      *(v37 + 8) = v29;
      *(v37 + 16) = v31;
      *(v37 + 24) = v33;
      *(v37 + 32) = v35;
      *(v37 + 40) = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_199B80BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF762A0);
  v91 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v75 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74640);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76248);
  v87 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v92 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v93 = &v75 - v20;
  v21 = *a1;
  v22 = *a1 >> 62;
  if (v22)
  {
    result = sub_199DFA87C();
    if (result)
    {
LABEL_3:
      if (a2 < 0)
      {
        __break(1u);
      }

      else
      {
        v89 = v13;
        if (result >= a2)
        {
          v24 = a2;
        }

        else
        {
          v24 = result;
        }

        if (result < 0)
        {
          v24 = a2;
        }

        if (a2)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if (v22)
        {
          result = sub_199DFA87C();
          if (result < 0)
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return result;
          }

          result = sub_199DFA87C();
        }

        else
        {
          result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result >= v25)
        {
          v90 = v9;
          if ((v21 & 0xC000000000000001) != 0 && v25)
          {
            sub_199A7DDB0();
            sub_199DF81AC();
            v26 = 0;
            do
            {
              v27 = v26 + 1;
              sub_199DFA73C();
              v26 = v27;
            }

            while (v25 != v27);
          }

          else
          {
            sub_199DF81AC();
          }

          v84 = v14;
          if (v22)
          {
            sub_199B84F54(a1);
            v29 = sub_199DFA88C();
          }

          else
          {
            v28 = 0;
            v29 = v21 & 0xFFFFFFFFFFFFFF8;
            v30 = (v21 & 0xFFFFFFFFFFFFFF8) + 32;
            v31 = (2 * v25) | 1;
          }

          *&v94 = v29;
          *(&v94 + 1) = v30;
          *&v95 = v28;
          *(&v95 + 1) = v31;
          swift_getKeyPath();
          v32 = swift_allocObject();
          v33 = *(a1 + 48);
          *(v32 + 48) = *(a1 + 32);
          *(v32 + 64) = v33;
          *(v32 + 80) = *(a1 + 64);
          v34 = *(a1 + 16);
          *(v32 + 16) = *a1;
          *(v32 + 32) = v34;
          sub_199B84D80(a1, &v101);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76268);
          sub_199AA0B90(&qword_1EAF76270, &qword_1EAF76268);
          sub_199B84C64(&qword_1EAF76278, sub_199A7DDB0);
          sub_199B84C10();
          sub_199DF99EC();
          v35 = *(a1 + 64);
          v86 = a3;
          v85 = v6;
          if ((v35 & 1) == 0)
          {
            v78 = 0;
            v83 = 0;
            v82 = 0;
            KeyPath = 0;
            v56 = 0;
            v89 = 0;
            v80 = 0;
            v88 = 0;
            v79 = 0;
            v54 = 0;
            v55 = 0;
            goto LABEL_30;
          }

          v36 = *(a1 + 40);
          result = v36 - a2;
          if (!__OFSUB__(v36, a2))
          {
            v101 = sub_199B84E28(result);
            v102 = v37;
            sub_199A9C458();
            v38 = sub_199DF93CC();
            v40 = v39;
            v42 = v41;
            sub_199DF96DC();
            v43 = sub_199DF933C();
            v45 = v44;
            v47 = v46;

            sub_199ACE3E8(v38, v40, v42 & 1);

            v48 = sub_199DF922C();
            v49 = v89;
            (*(*(v48 - 8) + 56))(v89, 1, 1, v48);
            sub_199DF928C();
            sub_199A79A04(v49, &unk_1EAF74640);
            v78 = sub_199DF939C();
            v83 = v50;
            v52 = v51;
            v82 = v53;

            sub_199ACE3E8(v43, v45, v47 & 1);
            v54 = 1;

            KeyPath = swift_getKeyPath();
            v89 = swift_getKeyPath();
            LOBYTE(v101) = v52 & 1;
            LOBYTE(v94) = 0;
            v55 = v52 & 1;
            v80 = swift_getKeyPath();
            v88 = swift_getKeyPath();
            v79 = 0x3FDCCCCCCCCCCCCDLL;
            v56 = 2;
LABEL_30:
            v75 = v55;
            v77 = 0;
            v57 = v87;
            v58 = *(v87 + 16);
            v59 = v92;
            v60 = v84;
            v58(v92, v93, v84);
            v61 = v90;
            v58(v90, v59, v60);
            v62 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF762B8) + 48);
            v63 = v78;
            *&v94 = v78;
            v64 = v83;
            *(&v94 + 1) = v83;
            *&v95 = v55;
            v65 = v82;
            *(&v95 + 1) = v82;
            v66 = KeyPath;
            *&v96 = KeyPath;
            v76 = v56;
            *(&v96 + 1) = v56;
            *&v97 = 0;
            *(&v97 + 1) = v89;
            *&v98 = v54;
            v67 = v80;
            *(&v98 + 1) = v80;
            *&v99 = v54;
            v68 = v79;
            *(&v99 + 1) = v88;
            v100 = v79;
            *(v62 + 96) = v79;
            v69 = v95;
            *v62 = v94;
            *(v62 + 16) = v69;
            v70 = v97;
            *(v62 + 32) = v96;
            *(v62 + 48) = v70;
            v71 = v99;
            *(v62 + 64) = v98;
            *(v62 + 80) = v71;
            sub_199AAD408(&v94, &v101, &qword_1EAF762C0);
            v72 = *(v57 + 8);
            v72(v93, v60);
            v101 = v63;
            v102 = v64;
            v103 = v75;
            v104 = v65;
            v105 = v66;
            v106 = v76;
            v107 = v77;
            v108 = v89;
            v109 = v54;
            v110 = v67;
            v111 = v54;
            v112 = v88;
            v113 = v68;
            sub_199A79A04(&v101, &qword_1EAF762C0);
            v72(v92, v60);
            v73 = v86;
            sub_199B84DB8(v90, v86);
            return (*(v91 + 56))(v73, 0, 1, v85);
          }

          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v74 = *(v91 + 56);

  return v74(a3, 1, 1, v6, v19);
}

uint64_t sub_199B8150C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[0] = a1;
  v42 = a2;
  v39 = sub_199DF8F6C();
  MEMORY[0x1EEE9AC00](v39, v2);
  v38[1] = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF76220);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v38 - v6;
  v8 = sub_199DF9A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_199DF9A6C();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = xmmword_199E42D90;
  (*(v17 + 104))(v16, *MEMORY[0x1E697D738]);
  sub_199DF9A8C();
  v18 = sub_199DFA0FC();
  *(v18 + 16) = 7;
  v19 = v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v20 = *(v9 + 16);
  v20(v19, v12, v8);
  v21 = *(v9 + 72);
  v20(v19 + v21, v12, v8);
  v20(v19 + 2 * v21, v12, v8);
  v20(v19 + 3 * v21, v12, v8);
  v20(v19 + 4 * v21, v12, v8);
  v20(v19 + 5 * v21, v12, v8);
  v22 = v19 + 6 * v21;
  v23 = v7;
  (*(v9 + 32))(v22, v12, v8);
  v43 = v38[0];
  v44 = 28;
  sub_199DF8D4C();
  v45 = 0;
  sub_199B84C64(&qword_1EAF74760, MEMORY[0x1E697FCB0]);
  sub_199DFAB2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76230);
  sub_199B84B08();
  sub_199DF9BCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  LOBYTE(v8) = sub_199DF917C();
  *(inited + 32) = v8;
  v25 = sub_199DF91BC();
  *(inited + 33) = v25;
  v26 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v8)
  {
    v26 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v25)
  {
    v26 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v42;
  (*(v40 + 32))(v42, v23, v41);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76260);
  v37 = v35 + *(result + 36);
  *v37 = v26;
  *(v37 + 8) = v28;
  *(v37 + 16) = v30;
  *(v37 + 24) = v32;
  *(v37 + 32) = v34;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_199B81A40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76248);
  v9 = MEMORY[0x1EEE9AC00](v6, v7);
  v11 = &v23 - v10;
  v12 = a1 >> 62;
  if (a1 >> 62)
  {
    v24 = v8;
    result = sub_199DFA87C();
    v8 = v24;
    if (result)
    {
LABEL_3:
      if (a2 < 0)
      {
        __break(1u);
      }

      else
      {
        if (result >= a2)
        {
          v14 = a2;
        }

        else
        {
          v14 = result;
        }

        if (result < 0)
        {
          v14 = a2;
        }

        if (a2)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v24 = v8;
        if (v12)
        {
          result = sub_199DFA87C();
          if (result < 0)
          {
LABEL_32:
            __break(1u);
            return result;
          }

          result = sub_199DFA87C();
        }

        else
        {
          result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result >= v15)
        {
          if ((a1 & 0xC000000000000001) != 0 && v15)
          {
            sub_199A7DDB0();
            sub_199DF81AC();
            v16 = 0;
            do
            {
              v17 = v16 + 1;
              sub_199DFA73C();
              v16 = v17;
            }

            while (v15 != v17);
            if (!v12)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_199DF81AC();
            if (!v12)
            {
LABEL_22:
              v18 = 0;
              v19 = a1 & 0xFFFFFFFFFFFFFF8;
              v20 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
              v21 = (2 * v15) | 1;
LABEL_25:
              v25 = v19;
              v26 = v20;
              v27 = v18;
              v28 = v21;
              swift_getKeyPath();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76268);
              sub_199AA0B90(&qword_1EAF76270, &qword_1EAF76268);
              sub_199B84C64(&qword_1EAF76278, sub_199A7DDB0);
              sub_199B84C10();
              sub_199DF99EC();
              (*(v24 + 32))(a3, v11, v6);
              return (*(v24 + 56))(a3, 0, 1, v6);
            }
          }

          v19 = sub_199DFA88C();
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v22 = *(v8 + 56);

  return v22(a3, 1, 1, v6, v9);
}

id sub_199B81D8C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  *(a2 + 8) = xmmword_199E42DA0;
  *(a2 + 24) = 1;
  return v2;
}

uint64_t sub_199B81DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76118);
  MEMORY[0x1EEE9AC00](v36, v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76120);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - v13;
  v37 = a4;
  v35 = v15;
  if (a1 <= 1)
  {
    if (!a1)
    {

LABEL_10:
      v17 = sub_199DF8D4C();
      v41[0] = 1;
      sub_199B825B0(a2, a3, v43);
      memcpy(v38, v43, sizeof(v38));
      memcpy(v39, v43, sizeof(v39));
      sub_199AAD408(v38, v42, &qword_1EAF76198);
      sub_199A79A04(v39, &qword_1EAF76198);
      memcpy(v43 + 7, v38, 0x138uLL);
      v40[0] = v17;
      LOBYTE(v40[1]) = v41[0];
      memcpy(&v40[1] + 1, v43, 0x13FuLL);
      memcpy(v43, v40, 0x150uLL);
      sub_199B8458C(v43);
      memcpy(v41, v43, sizeof(v41));
      sub_199AAD408(v40, v42, &qword_1EAF76158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76168);
      sub_199AA0B90(&qword_1EAF76150, &qword_1EAF76158);
      sub_199AA0B90(&qword_1EAF76160, &qword_1EAF76168);
      sub_199DF8EDC();
      memcpy(v14, v42, 0x151uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76140);
      sub_199B84330();
      sub_199B84410();
      sub_199DF8EDC();
      return sub_199A79A04(v40, &qword_1EAF76158);
    }

    if (a1 == 1)
    {
      goto LABEL_9;
    }

LABEL_16:
    v43[0] = a1;
    result = sub_199DFA9CC();
    __break(1u);
    return result;
  }

  if (a1 != 2 && a1 != 3)
  {
    goto LABEL_16;
  }

LABEL_9:
  v16 = sub_199DFA99C();

  if (v16)
  {
    goto LABEL_10;
  }

  if (a1 == 3)
  {

LABEL_14:
    v20 = sub_199DF8D4C();
    v39[0] = 1;
    sub_199DF81AC();
    v21 = sub_199DF916C();
    sub_199DF9B5C();
    sub_199DF897C();
    v38[0] = 0;
    *(&v44[3] + 7) = v40[3];
    *(&v44[4] + 7) = v40[4];
    *(&v44[5] + 7) = v40[5];
    *(&v44[6] + 7) = v40[6];
    *(v44 + 7) = v40[0];
    *(&v44[1] + 7) = v40[1];
    *(&v44[2] + 7) = v40[2];
    v43[0] = v20;
    v43[1] = 0;
    LOBYTE(v43[2]) = v39[0];
    v43[3] = a2;
    LOBYTE(v43[4]) = v21;
    *&v43[5] = xmmword_199E42DB0;
    *&v43[7] = xmmword_199E42DC0;
    LOBYTE(v43[9]) = 0;
    *(&v43[15] + 1) = v44[3];
    *(&v43[13] + 1) = v44[2];
    *(&v43[11] + 1) = v44[1];
    *(&v43[9] + 1) = v44[0];
    v43[23] = *(&v40[6] + 1);
    *(&v43[21] + 1) = v44[6];
    *(&v43[19] + 1) = v44[5];
    *(&v43[17] + 1) = v44[4];
    sub_199B84580(v43);
    memcpy(v41, v43, sizeof(v41));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76168);
    sub_199AA0B90(&qword_1EAF76150, &qword_1EAF76158);
    sub_199AA0B90(&qword_1EAF76160, &qword_1EAF76168);
    sub_199DF8EDC();
    memcpy(v14, v42, 0x151uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76140);
    sub_199B84330();
    sub_199B84410();
    return sub_199DF8EDC();
  }

  v19 = sub_199DFA99C();

  if (v19)
  {
    goto LABEL_14;
  }

  *v10 = sub_199DF8D4C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76128);
  sub_199B82AB8(a1, a2, a3, &v10[*(v22 + 44)]);
  v23 = sub_199DF917C();
  sub_199DF84FC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76130) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = &v10[*(v36 + 36)];
  sub_199DF9A9C();
  v34 = sub_199DF916C();
  v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76138) + 36)] = v34;
  sub_199AAD408(v10, v14, &qword_1EAF76118);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76140);
  sub_199B84330();
  sub_199B84410();
  sub_199DF8EDC();
  return sub_199A79A04(v10, &qword_1EAF76118);
}

uint64_t sub_199B825B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_199B846A0(a2, v49);
  v5 = v49[0];
  v6 = v49[1];
  v7 = v49[2];
  v8 = v49[3];
  v9 = v49[4];
  v10 = v50;
  sub_199DF81AC();
  v11 = sub_199DF916C();
  sub_199B828A0(a2, &v37);
  sub_199DF9B6C();
  sub_199DF897C();
  *&v27 = a1;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = 1;
  *(&v28 + 1) = v5;
  *&v29 = v6;
  *(&v29 + 1) = v7;
  *&v30 = v8;
  *(&v30 + 1) = v9;
  LOBYTE(v31) = v10;
  BYTE8(v31) = v11;
  v32 = xmmword_199E42DB0;
  v33 = xmmword_199E42DB0;
  *&__src[64] = v31;
  *&__src[80] = xmmword_199E42DB0;
  *&__src[96] = xmmword_199E42DB0;
  *__src = v27;
  *&__src[16] = v28;
  *&__src[32] = v29;
  *&__src[48] = v30;
  v35[2] = v39;
  v35[3] = v40;
  v35[0] = v37;
  v35[1] = v38;
  v35[6] = v43;
  v35[7] = v44;
  v35[4] = v41;
  v35[5] = v42;
  v35[10] = v47;
  v35[11] = v48;
  v35[8] = v45;
  v35[9] = v46;
  *&__src[264] = v46;
  *&__src[280] = v47;
  *&__src[296] = v48;
  *&__src[248] = v45;
  *&__src[184] = v41;
  *&__src[200] = v42;
  *&__src[216] = v43;
  *&__src[232] = v44;
  v34 = 0;
  __src[112] = 0;
  *&__src[120] = v37;
  *&__src[136] = v38;
  *&__src[152] = v39;
  *&__src[168] = v40;
  memcpy(a3, __src, 0x138uLL);
  v36[9] = v46;
  v36[10] = v47;
  v36[11] = v48;
  v36[4] = v41;
  v36[5] = v42;
  v36[6] = v43;
  v36[7] = v44;
  v36[8] = v45;
  v36[0] = v37;
  v36[1] = v38;
  v36[2] = v39;
  v36[3] = v40;
  sub_199AAD408(&v27, v14, &qword_1EAF761A0);
  sub_199AAD408(v35, v14, &qword_1EAF761A8);
  sub_199A79A04(v36, &qword_1EAF761A8);
  v14[0] = a1;
  v14[1] = v7;
  v15 = 1;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = xmmword_199E42DB0;
  v24 = xmmword_199E42DB0;
  v25 = 0;
  return sub_199A79A04(v14, &qword_1EAF761A0);
}

double sub_199B828A0@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_199DF9F4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B0);
  inited = swift_initStackObject();
  v10 = MEMORY[0x1E69E6530];
  v11 = MEMORY[0x1E69E65A8];
  *(inited + 16) = xmmword_199E37D40;
  *(inited + 56) = v10;
  *(inited + 64) = v11;
  *(inited + 32) = a1;
  v12 = inited + 32;
  v13 = sub_199AA8A84(v8, inited);
  v15 = v14;
  swift_setDeallocating();
  sub_199A79A04(v12, &qword_1EAF72790);
  (*(v5 + 8))(v8, v4);
  v28[2] = v13;
  v28[3] = v15;
  sub_199A9C458();
  v16 = sub_199DF93CC();
  v18 = v17;
  LOBYTE(v8) = v19;
  v20 = sub_199DF938C();
  v22 = v21;
  LOBYTE(v5) = v23;
  v25 = v24;
  sub_199ACE3E8(v16, v18, v8 & 1);

  v26 = sub_199DF916C();
  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = v26;
  *(a2 + 40) = xmmword_199E42DB0;
  result = 10.0;
  *(a2 + 56) = xmmword_199E42DC0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_199B82AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B8) - 8;
  MEMORY[0x1EEE9AC00](v51, v8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - v12;
  v53 = a3;
  sub_199B846A0(a3, v57);
  v49 = v57[1];
  v50 = v57[0];
  v48 = v57[2];
  v14 = v57[3];
  v15 = v57[4];
  v47 = v58;
  v54 = a2;
  sub_199DF81AC();
  v55 = sub_199DF916C();
  LOBYTE(v70) = 0;
  sub_199DF9B5C();
  sub_199DF863C();
  *&v56[7] = v59;
  *&v56[23] = v60;
  *&v56[39] = v61;
  sub_199B82F24(a1, a3, &v70);
  v16 = v70;
  v17 = v71;
  LOBYTE(a3) = v72;
  v18 = v73;
  KeyPath = swift_getKeyPath();
  v70 = v16;
  v71 = v17;
  v72 = a3;
  v73 = v18;
  v74 = KeyPath;
  LOBYTE(v75) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761C0);
  sub_199B847E8();
  sub_199DF965C();
  sub_199ACE3E8(v16, v17, a3);

  v20 = sub_199DF92FC();
  v21 = swift_getKeyPath();
  v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761E0) + 36)];
  *v22 = v21;
  v22[1] = v20;
  v23 = swift_getKeyPath();
  v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761E8) + 36)];
  *v24 = v23;
  v24[8] = 1;
  v25 = swift_getKeyPath();
  v26 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761F0) + 36)];
  *v26 = v25;
  v26[1] = 0x3FDCCCCCCCCCCCCDLL;
  LOBYTE(v25) = sub_199DF917C();
  sub_199DF84FC();
  v27 = &v13[*(v51 + 44)];
  *v27 = v25;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = v52;
  sub_199AAD408(v13, v52, &qword_1EAF761B8);
  *&v62 = v54;
  *(&v62 + 1) = v53;
  LOBYTE(v63) = 0;
  v34 = v49;
  v33 = v50;
  *(&v63 + 1) = v50;
  *&v64 = v49;
  v35 = v48;
  *(&v64 + 1) = v48;
  *&v65 = v14;
  *(&v65 + 1) = v15;
  LOBYTE(v21) = v47;
  LOBYTE(v66) = v47;
  BYTE8(v66) = v55;
  v51 = xmmword_199E42DD0;
  v46 = xmmword_199E42DE0;
  v67 = xmmword_199E42DD0;
  v68 = xmmword_199E42DE0;
  v69[0] = 0;
  *&v69[17] = *&v56[16];
  *&v69[1] = *v56;
  *&v69[33] = *&v56[32];
  v36 = *&v56[47];
  *&v69[48] = *&v56[47];
  *(a4 + 64) = v66;
  *(a4 + 80) = xmmword_199E42DD0;
  v37 = v62;
  v38 = v63;
  v39 = v65;
  *(a4 + 32) = v64;
  *(a4 + 48) = v39;
  *a4 = v37;
  *(a4 + 16) = v38;
  v40 = v68;
  v41 = *v69;
  v42 = *&v69[16];
  v43 = *&v69[32];
  *(a4 + 160) = v36;
  *(a4 + 128) = v42;
  *(a4 + 144) = v43;
  *(a4 + 96) = v40;
  *(a4 + 112) = v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761F8);
  sub_199AAD408(v32, a4 + *(v44 + 48), &qword_1EAF761B8);
  sub_199AAD408(&v62, &v70, &unk_1EAF76200);
  sub_199A79A04(v13, &qword_1EAF761B8);
  sub_199A79A04(v32, &qword_1EAF761B8);
  v70 = v54;
  v71 = v53;
  v72 = 0;
  v73 = v33;
  v74 = v34;
  v75 = v35;
  v76 = v14;
  v77 = v15;
  v78 = v21;
  v79 = v55;
  v80 = v51;
  v81 = v46;
  v82 = 0;
  v83 = *v56;
  v84 = *&v56[16];
  *v85 = *&v56[32];
  *&v85[15] = *&v56[47];
  return sub_199A79A04(&v70, &unk_1EAF76200);
}

uint64_t sub_199B82F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_199DF9F4C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_9:
      sub_199DFA99C();

      goto LABEL_10;
    }

    if (a1 == 1)
    {

LABEL_10:
      sub_199DF9EEC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B0);
      inited = swift_initStackObject();
      v12 = MEMORY[0x1E69E6530];
      v13 = MEMORY[0x1E69E65A8];
      *(inited + 16) = xmmword_199E37D40;
      *(inited + 56) = v12;
      *(inited + 64) = v13;
      *(inited + 32) = a2;
      v14 = inited + 32;
      v15 = sub_199AA8A84(v10, inited);
      v17 = v16;
      swift_setDeallocating();
      sub_199A79A04(v14, &qword_1EAF72790);
      v18 = *(v7 + 8);
      v18(v10, v6);
      sub_199DF9EEC();
      v19 = sub_199AA8A84(v10, MEMORY[0x1E69E7CC0]);
      v21 = v20;
      v18(v10, v6);
      v35 = v15;
      v36 = v17;
      sub_199DF81AC();
      MEMORY[0x19A8F7E00](v19, v21);

      sub_199A9C458();
      v22 = sub_199DF93CC();
      v24 = v23;
      LOBYTE(v17) = v25;
      sub_199DF96DC();
      v26 = sub_199DF933C();
      v28 = v27;
      v30 = v29;
      v32 = v31;

      sub_199ACE3E8(v22, v24, v17 & 1);

      *a3 = v26;
      *(a3 + 8) = v28;
      *(a3 + 16) = v30 & 1;
      *(a3 + 24) = v32;
      return result;
    }
  }

  v35 = a1;
  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

void sub_199B832B4()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x19A8FA1C0](&v20, 8);
      v5 = (v20 * v1) >> 64;
      if (v1 > v20 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v20 * v1)
        {
          do
          {
            v20 = 0;
            MEMORY[0x19A8FA1C0](&v20, 8);
          }

          while (v6 > v20 * v1);
          v5 = (v20 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v7);
        v11 = *(v8 + 32 + 8 * v3);
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_199B3CC44(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v14 = v8 + 8 * v3;
        v15 = *(v14 + 32);
        *(v14 + 32) = v12;

        sub_199DFA78C();
        v16 = *v0;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = sub_199B3CC44(v16);
          *v0 = v16;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        sub_199DFA78C();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_199B83458(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_199DFA87C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_199AB3368(v3, 0);
  sub_199B48C50((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_199B834EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53474E4954544553 && a2 == 0xE800000000000000;
  if (v4 || (sub_199DFA99C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4452414F424E4FLL && a2 == 0xE700000000000000 || (sub_199DFA99C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F495443454C4553 && a2 == 0xE90000000000004ELL || (sub_199DFA99C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000199E4A2B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_199DFA99C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_199B83678(uint64_t a1, unsigned int a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() currentEnvironment];
  v5 = [v4 contactStore];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_199E39130;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v7 = [objc_opt_self() descriptorForRequiredKeysWithThreeDTouchEnabled_];
  v8 = *MEMORY[0x1E695C270];
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790);
  v11 = sub_199DFA0BC();

  v12 = [v9 initWithKeysToFetch_];

  [v12 setUnifyResults_];
  v13 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_199DFA0BC();
  v16 = [v13 initWithKeysToFetch_];

  [v16 setUnifyResults:1];
  aBlock[0] = 0;
  v76 = v16;
  v17 = [v5 contactCountForFetchRequest:v16 error:aBlock];
  v18 = aBlock[0];
  v77 = v5;
  if (!v17)
  {
    v39 = aBlock[0];
    v40 = sub_199DF717C();

    swift_willThrow();
    v41 = 0;
    v20 = v12;
LABEL_26:
    if (qword_1EAF71F68 != -1)
    {
      swift_once();
    }

    v42 = sub_199DF804C();
    __swift_project_value_buffer(v42, qword_1EAF760D8);
    v43 = v40;
    v44 = sub_199DF802C();
    v45 = sub_199DFA31C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock[0] = v47;
      *v46 = 136315138;
      swift_getErrorValue();
      v48 = sub_199DFAA0C();
      v50 = v20;
      v51 = sub_199A9BE90(v48, v49, aBlock);

      *(v46 + 4) = v51;
      v20 = v50;
      _os_log_impl(&dword_199A75000, v44, v45, "Fetched contacts: failed with %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x19A8FA1A0](v47, -1, -1);
      MEMORY[0x19A8FA1A0](v46, -1, -1);
    }

    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_199E37DF0;
    *(v52 + 32) = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];

    sub_199A9A5FC(v41);
    return v52;
  }

  v19 = v17;
  v74 = a2;
  v80 = 0;
  v81 = 0;
  if (a2)
  {
    v20 = 54;
  }

  else
  {
    v20 = a1;
  }

  v78 = v14;
  v79 = v14;
  v21 = swift_allocObject();
  v21[2] = &v79;
  v21[3] = &v81;
  v21[4] = v20;
  v21[5] = &v80;
  v21[6] = &v78;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_199B8491C;
  *(v22 + 24) = v21;
  aBlock[4] = sub_199B8492C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199B7EFB4;
  aBlock[3] = &block_descriptor_19;
  v23 = _Block_copy(aBlock);
  v24 = v18;

  aBlock[0] = 0;
  v25 = [v5 enumerateContactsWithFetchRequest:v12 error:aBlock usingBlock:v23];
  _Block_release(v23);
  v26 = aBlock[0];
  v27 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_61;
  }

  v20 = v12;
  if (!v25)
  {
    v40 = sub_199DF717C();

    swift_willThrow();

    v41 = sub_199B8491C;
    goto LABEL_26;
  }

  isEscapingClosureAtFileLocation = v74;
  if (v81 > 53)
  {
    goto LABEL_42;
  }

  if (!(v78 >> 62))
  {
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_10;
  }

LABEL_61:
  if (sub_199DFA87C() < 1)
  {
    goto LABEL_42;
  }

LABEL_10:
  v29 = (54 - v81);
  if (__OFSUB__(54, v81))
  {
    __break(1u);
  }

  else if (!(v78 >> 62))
  {
    v30 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v30 - 1;
    if (!__OFSUB__(v30, 1))
    {
      goto LABEL_13;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v73 = sub_199DFA87C();
  v31 = v73 - 1;
  if (__OFSUB__(v73, 1))
  {
    goto LABEL_66;
  }

LABEL_13:
  if (v31 >= v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = v31;
  }

  if (v32 < 1)
  {
LABEL_42:
    v59 = sub_199DF81AC();
    aBlock[0] = sub_199B83458(v59);
    sub_199B832B4();
    v79 = aBlock[0];

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (qword_1EAF71F68 != -1)
      {
        swift_once();
      }

      v63 = sub_199DF804C();
      __swift_project_value_buffer(v63, qword_1EAF760D8);
      v64 = v19;
      v65 = sub_199DF802C();
      v66 = sub_199DFA33C();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 134218498;
        swift_beginAccess();
        if (v79 >> 62)
        {
          v69 = sub_199DFA87C();
        }

        else
        {
          v69 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v67 + 4) = v69;
        *(v67 + 12) = 2112;
        *(v67 + 14) = v64;
        *v68 = v19;
        *(v67 + 22) = 2048;
        *(v67 + 24) = a1;
        v70 = v64;
        _os_log_impl(&dword_199A75000, v65, v66, "Fetched %ld contacts out of %@. Overriding total contacts count to %ld", v67, 0x20u);
        sub_199A79A04(v68, &unk_1EAF73A90);
        MEMORY[0x19A8FA1A0](v68, -1, -1);
        MEMORY[0x19A8FA1A0](v67, -1, -1);
        v64 = v65;
        v71 = v20;
        v20 = v76;
        v65 = v77;
      }

      else
      {
        v70 = v76;
        v71 = v77;
      }

      swift_beginAccess();
      v52 = v79;
      sub_199DF81AC();
      goto LABEL_58;
    }

    if (qword_1EAF71F68 != -1)
    {
      swift_once();
    }

    v60 = sub_199DF804C();
    __swift_project_value_buffer(v60, qword_1EAF760D8);
    isEscapingClosureAtFileLocation = v19;
    v26 = sub_199DF802C();
    LOBYTE(v12) = sub_199DFA33C();

    if (!os_log_type_enabled(v26, v12))
    {
LABEL_49:

      swift_beginAccess();
      v52 = v79;
      sub_199DF81AC();
      [isEscapingClosureAtFileLocation integerValue];

LABEL_58:

      return v52;
    }

    a1 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *a1 = 134218242;
    swift_beginAccess();
    if (!(v79 >> 62))
    {
      v61 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_48:
      *(a1 + 4) = v61;
      *(a1 + 12) = 2112;
      *(a1 + 14) = isEscapingClosureAtFileLocation;
      *v29 = v19;
      v62 = isEscapingClosureAtFileLocation;
      _os_log_impl(&dword_199A75000, v26, v12, "Fetched %ld contacts out of %@", a1, 0x16u);
      sub_199A79A04(v29, &unk_1EAF73A90);
      MEMORY[0x19A8FA1A0](v29, -1, -1);
      MEMORY[0x19A8FA1A0](a1, -1, -1);
      goto LABEL_49;
    }

LABEL_67:
    v61 = sub_199DFA87C();
    goto LABEL_48;
  }

  v75 = v20;
  v33 = v78;
  v34 = v78 >> 62;
  if (!(v78 >> 62))
  {
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) > v32)
    {
      goto LABEL_19;
    }

    goto LABEL_71;
  }

  result = sub_199DFA87C();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_199DFA87C() > v32)
    {
LABEL_19:
      if ((v33 & 0xC000000000000001) != 0)
      {
        sub_199A7DDB0();
        sub_199DF81AC();
        v35 = 0;
        do
        {
          v36 = v35 + 1;
          sub_199DFA73C();
          v35 = v36;
        }

        while (v32 + 1 != v36);
        v37 = v32 + 1;
        if (!v34)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_199DF81AC();
        v37 = v32 + 1;
        if (!v34)
        {
LABEL_23:
          v12 = 0;
          v33 &= 0xFFFFFFFFFFFFFF8uLL;
          v38 = v33 + 32;
          v22 = (2 * v37) | 1;
          goto LABEL_34;
        }
      }

      v33 = sub_199DFA88C();
      v12 = v53;
      v22 = v54;
      v20 = v75;
      if ((v54 & 1) == 0)
      {
LABEL_33:
        sub_199B2F69C(v33, v38, v12, v22);
        v56 = v55;
        LOBYTE(isEscapingClosureAtFileLocation) = v74;
        goto LABEL_40;
      }

LABEL_34:
      v32 = v38;
      sub_199DFA9BC();
      swift_unknownObjectRetain_n();
      v57 = swift_dynamicCastClass();
      if (!v57)
      {
        swift_unknownObjectRelease();
        v57 = MEMORY[0x1E69E7CC0];
      }

      v58 = *(v57 + 16);

      if (!__OFSUB__(v22 >> 1, v12))
      {
        if (v58 == (v22 >> 1) - v12)
        {
          v56 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v20 = v75;
          LOBYTE(isEscapingClosureAtFileLocation) = v74;
          if (v56)
          {
LABEL_41:
            sub_199B43898(v56);
            goto LABEL_42;
          }

          v56 = MEMORY[0x1E69E7CC0];
LABEL_40:
          swift_unknownObjectRelease();
          goto LABEL_41;
        }

        goto LABEL_73;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      swift_unknownObjectRelease();
      v38 = v32;
      v20 = v75;
      goto LABEL_33;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  __break(1u);
  return result;
}

unint64_t sub_199B84250()
{
  result = qword_1EAF76108;
  if (!qword_1EAF76108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76108);
  }

  return result;
}

unint64_t sub_199B84330()
{
  result = qword_1EAF76148;
  if (!qword_1EAF76148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76140);
    sub_199AA0B90(&qword_1EAF76150, &qword_1EAF76158);
    sub_199AA0B90(&qword_1EAF76160, &qword_1EAF76168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76148);
  }

  return result;
}

unint64_t sub_199B84410()
{
  result = qword_1EAF76170;
  if (!qword_1EAF76170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76118);
    sub_199B844C8();
    sub_199AA0B90(&qword_1EAF76190, &qword_1EAF76138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76170);
  }

  return result;
}

unint64_t sub_199B844C8()
{
  result = qword_1EAF76178;
  if (!qword_1EAF76178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76130);
    sub_199AA0B90(&qword_1EAF76180, &qword_1EAF76188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76178);
  }

  return result;
}

void sub_199B84594(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76328);
  sub_199DF900C();
  v3 = *(v8 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_199E37DF0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = [objc_opt_self() emptyContact];
  }

  *(v4 + 32) = v5;
  sub_199A7DDB0();
  v6 = a2;
  v7 = sub_199DFA0BC();

  [v3 setContacts_];
}

double sub_199B846A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  if ((a1 - 1) >= 6)
  {
    if ((a1 - 10) > 0xFFFFFFFFFFFFFFFCLL)
    {
      v3 = 3;
      v4 = 3;
    }

    else if ((a1 - 13) > 0xFFFFFFFFFFFFFFFCLL)
    {
      v4 = 3;
      v3 = 4;
    }

    else if ((a1 - 17) > 0xFFFFFFFFFFFFFFFBLL)
    {
      v3 = 4;
      v4 = 4;
    }

    else if ((a1 - 21) > 0xFFFFFFFFFFFFFFFBLL)
    {
      v4 = 4;
      v3 = 5;
    }

    else
    {
      v5 = a1 - 26;
      v4 = 5;
      v6 = a1 - 31;
      v7 = 5;
      v8 = 8;
      if ((a1 - 49) < 0xFFFFFFFFFFFFFFFALL)
      {
        v8 = 9;
      }

      if ((a1 - 43) <= 0xFFFFFFFFFFFFFFF9)
      {
        v9 = v8;
      }

      else
      {
        v9 = 7;
      }

      if ((a1 - 37) <= 0xFFFFFFFFFFFFFFF9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 6;
      }

      v11 = __CFADD__(v6, 6);
      if (v6 <= 0xFFFFFFFFFFFFFFFALL)
      {
        v12 = v10;
      }

      else
      {
        v12 = 6;
      }

      if (a1 == 25 || !v11)
      {
        v7 = 6;
      }

      v13 = __CFADD__(v5, 6);
      if (v5 <= 0xFFFFFFFFFFFFFFFALL)
      {
        v3 = v12;
      }

      else
      {
        v3 = 5;
      }

      if (a1 == 20 || !v13)
      {
        v4 = v7;
      }
    }
  }

  else
  {
    v3 = qword_199E43518[v2];
    v4 = qword_199E43548[v2];
  }

  v14 = 0xE0u / v4;
  if (0xE0u / v3 < v14)
  {
    v14 = 0xE0u / v3;
  }

  if (v14 <= 0x1C)
  {
    v14 = 28;
  }

  result = v14;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = a1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v14 * 0.03;
  *(a2 + 40) = a1 > 54;
  return result;
}

unint64_t sub_199B847E8()
{
  result = qword_1EAF761C8;
  if (!qword_1EAF761C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF761C0);
    sub_199B848A0();
    sub_199AA0B90(&qword_1EAF742B0, &qword_1EAF742B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF761C8);
  }

  return result;
}

unint64_t sub_199B848A0()
{
  result = qword_1EAF761D0;
  if (!qword_1EAF761D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF761D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF761D0);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_199B84990(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_199B849D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199B84A3C()
{
  result = qword_1EAF76210;
  if (!qword_1EAF76210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76218);
    sub_199B84330();
    sub_199B84410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76210);
  }

  return result;
}

unint64_t sub_199B84B08()
{
  result = qword_1EAF76238;
  if (!qword_1EAF76238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76230);
    sub_199B84B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76238);
  }

  return result;
}

unint64_t sub_199B84B8C()
{
  result = qword_1EAF76240;
  if (!qword_1EAF76240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76248);
    sub_199B84C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76240);
  }

  return result;
}

unint64_t sub_199B84C10()
{
  result = qword_1EAF76250;
  if (!qword_1EAF76250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76250);
  }

  return result;
}

uint64_t sub_199B84C64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_199B84CB4()
{
  result = qword_1EAF76290;
  if (!qword_1EAF76290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76288);
    sub_199AA0B90(&qword_1EAF76298, &qword_1EAF762A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76290);
  }

  return result;
}

id sub_199B84D64@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 32);
  *a2 = v3;
  *(a2 + 8) = *(v2 + 64);
  *(a2 + 24) = v4;
  return v3;
}

uint64_t sub_199B84DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF762A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B84E28(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v2 setNumberStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v4 = [v2 stringFromNumber_];

  if (!v4)
  {
    v5 = sub_199DFA96C();
    v7 = v9;
    if (a1 <= 999)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 2603;
    goto LABEL_6;
  }

  v5 = sub_199DF9F8C();
  v7 = v6;

  if (a1 > 999)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 43;
LABEL_6:
  v11 = v8;
  MEMORY[0x19A8F7E00](v5, v7);

  return v11;
}

uint64_t sub_199B84F94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_199B84FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_199B85048()
{
  result = qword_1EAF762C8;
  if (!qword_1EAF762C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76260);
    sub_199B85190(&qword_1EAF762D0, &unk_1EAF76220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF762C8);
  }

  return result;
}

unint64_t sub_199B850EC()
{
  result = qword_1EAF762D8;
  if (!qword_1EAF762D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF762A8);
    sub_199B85190(&qword_1EAF762E0, &qword_1EAF76280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF762D8);
  }

  return result;
}

uint64_t sub_199B85190(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_199B851F4(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_199B85250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

unint64_t sub_199B852B0()
{
  result = qword_1EAF76300;
  if (!qword_1EAF76300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76308);
    sub_199AA0B90(&qword_1EAF76310, &qword_1EAF76318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76300);
  }

  return result;
}

unint64_t sub_199B8536C()
{
  result = qword_1EAF76320;
  if (!qword_1EAF76320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76320);
  }

  return result;
}

unint64_t sub_199B853C0()
{
  result = qword_1EAF76330;
  if (!qword_1EAF76330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76330);
  }

  return result;
}

unint64_t sub_199B85414(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_199B755CC(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_199B4AB64(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_199B75C44();
        v11 = v13;
      }

      result = sub_199B896F0(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_199B854D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763E0);
  __swift_allocate_value_buffer(v0, qword_1EAF71638);
  __swift_project_value_buffer(v0, qword_1EAF71638);
  return sub_199DF831C();
}

uint64_t sub_199B85544()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76398);
  __swift_allocate_value_buffer(v0, qword_1EAF71610);
  __swift_project_value_buffer(v0, qword_1EAF71610);
  return sub_199DF836C();
}

uint64_t sub_199B855F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40);
  __swift_allocate_value_buffer(v0, qword_1EAF715E8);
  __swift_project_value_buffer(v0, qword_1EAF715E8);
  return sub_199DF836C();
}

uint64_t sub_199B856A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40);
  __swift_allocate_value_buffer(v0, qword_1EAF715A0);
  __swift_project_value_buffer(v0, qword_1EAF715A0);
  return sub_199DF836C();
}

uint64_t sub_199B85758()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76390);
  __swift_allocate_value_buffer(v0, qword_1EAF715C8);
  __swift_project_value_buffer(v0, qword_1EAF715C8);
  return sub_199DF836C();
}

uint64_t sub_199B85814@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76420);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76428);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v13 - v10;
  sub_199AA0B90(&qword_1EAF71510, &qword_1EAF76428);
  sub_199DF715C();
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_199DF714C();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76430);
  a1[4] = sub_199B8AD80();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_199AA0B90(&qword_1EAF71570, &qword_1EAF76420);
  sub_199DF711C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_199B85A78@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E50);
  a1[4] = sub_199AA0B90(&qword_1EAF71508, &qword_1EAF72E50);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_199AA0B90(&qword_1EAF71500, &qword_1EAF72E50);
  return sub_199DF715C();
}

uint64_t sub_199B85B44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v20 = sub_199DF713C();
  v3 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763E8);
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  sub_199AA0B90(&qword_1EAF714F0, &qword_1EAF76410);
  sub_199DF715C();
  v22 = 30;
  sub_199DF714C();
  v16 = v20;
  (*(v3 + 104))(v6, *MEMORY[0x1E6968C38], v20);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76418);
  a2[4] = sub_199B8AC44();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_199AA0B90(&qword_1EAF71558, &qword_1EAF763E8);
  v17 = v21;
  sub_199DF712C();
  (*(v3 + 8))(v6, v16);
  (*(v7 + 8))(v10, v17);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_199B85E6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a1;
  v36 = a2;
  v34 = sub_199DF713C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763E8);
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763F0);
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763F8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76400);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v30 - v20;
  sub_199AA0B90(&qword_1EAF71528, &qword_1EAF76400);
  sub_199DF715C();
  swift_getKeyPath();
  sub_199DF710C();

  (*(v18 + 8))(v21, v17);
  swift_getKeyPath();
  sub_199AA0B90(&qword_1EAF71550, &qword_1EAF763F8);
  sub_199DF710C();

  (*(v13 + 8))(v16, v12);
  v39 = 1;
  sub_199DF714C();
  v23 = v31;
  v22 = v32;
  v24 = v34;
  (*(v32 + 104))(v31, *MEMORY[0x1E6968C40], v34);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76408);
  v26 = v36;
  v36[3] = v25;
  v26[4] = sub_199B8AA94();
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_199AA0B90(&qword_1EAF71540, &qword_1EAF763F0);
  sub_199AA0B90(&qword_1EAF71558, &qword_1EAF763E8);
  v27 = v33;
  v28 = v37;
  sub_199DF712C();
  (*(v22 + 8))(v23, v24);
  (*(v38 + 8))(v8, v28);
  return (*(v35 + 8))(v11, v27);
}

uint64_t sub_199B863EC()
{
  v0 = objc_opt_self();
  v1 = sub_199DF9F5C();
  v2 = [v0 cnui:v1 imageNamed:?];

  return sub_199DF97BC();
}

uint64_t sub_199B86468()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v19 - v3;
  v5 = sub_199DF821C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF822C();
  v10 = MEMORY[0x1E6982AB8];
  MEMORY[0x19A8F5FC0](v9, v5, MEMORY[0x1E6982AB8]);
  (*(v6 + 8))(v9, v5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763D8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  v19 = v5;
  v20 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x19A8F5FE0](v4, v0, OpaqueTypeConformance2);
  v19 = v0;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = sub_199DF81FC();
  (*(v12 + 8))(v15, v11);
  (*(v1 + 8))(v4, v0);
  return v17;
}

uint64_t sub_199B86704()
{
  if (qword_1EAF715C0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76390);
  __swift_project_value_buffer(v0, qword_1EAF715C8);
  swift_beginAccess();
  sub_199DF834C();
  swift_endAccess();
  sub_199A9C458();
  return sub_199DF93CC();
}

id CNTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static CNTipsHelper.shared.getter()
{
  if (qword_1EAF71BF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAF71C00;

  return v1;
}

void *sub_199B86878()
{
  v1 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_199B86924(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199B8697C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_199B86A5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763A0);
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763A8);
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  v0[21] = sub_199B8A904();
  sub_199DF810C();
  v0[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763B0);
  swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763B8);
  swift_task_alloc();
  MEMORY[0x19A8F85E0](v2);
  sub_199AA0B90(&qword_1EAF710F8, &qword_1EAF763B8);
  sub_199DFA21C();

  sub_199DFA82C();
  (*(v3 + 8))(v4, v2);
  sub_199DFA83C();

  swift_beginAccess();

  return MEMORY[0x1EEE6DFA0](sub_199B86D2C, 0, 0);
}

uint64_t sub_199B86D2C()
{
  v1 = sub_199DF833C();
  v0[23] = v1;
  v0[24] = *(v1 - 8);
  v0[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763C0);
  v2 = swift_task_alloc();
  v0[26] = v2;
  v0[27] = sub_199DFA81C();
  sub_199AA0B90(&qword_1EAF71100, &qword_1EAF763B0);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_199B86EC4;

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_199B86EC4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_199B871B4;
  }

  else
  {
    (*(v2 + 216))();
    v3 = sub_199B86FEC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_199B86FEC()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_199B8A974(v1);

    return MEMORY[0x1EEE6DFA0](sub_199B875F0, 0, 0);
  }

  else
  {
    (*(v3 + 32))(v0[25], v1, v2);

    v4 = sub_199DFA82C();
    v0[29] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[30] = v6;
    *v6 = v0;
    v6[1] = sub_199B87224;
    v7 = v0[25];

    return (v9)(v0 + 39, v7);
  }
}

uint64_t sub_199B871B4()
{
  (*(v0 + 216))();
}

uint64_t sub_199B87224()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);

  (*(v3 + 8))(v2, v4);
  *(v1 + 313) = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_199B873A8, 0, 0);
}

uint64_t sub_199B873A8()
{

  return MEMORY[0x1EEE6DFA0](sub_199B87410, 0, 0);
}

uint64_t sub_199B87410()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 248) = Strong;
  if (Strong)
  {
    if (*(v0 + 313) == 1)
    {
      v2 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
      v3 = Strong;
      swift_beginAccess();
      Strong = v3;
      if (!*&v3[v2])
      {
        v4 = *&v3[OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller];
        *(v0 + 264) = v4;
        if (!v4)
        {

          v14 = sub_199B86D2C;
          v15 = 0;
          v16 = 0;
          goto LABEL_9;
        }

        v5 = *(v0 + 168);
        *(v0 + 40) = &type metadata for SiriTip;
        *(v0 + 48) = v5;
        *(v0 + 272) = sub_199DFA17C();
        v6 = v4;
        *(v0 + 280) = sub_199DFA16C();
        v7 = sub_199DFA12C();
        v9 = v8;
        v10 = sub_199B8766C;
LABEL_8:
        v14 = v10;
        v15 = v7;
        v16 = v9;
LABEL_9:

        return MEMORY[0x1EEE6DFA0](v14, v15, v16);
      }
    }

    else
    {
      v11 = *&Strong[OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller];
      *(v0 + 256) = v11;
      if (v11)
      {
        sub_199DFA17C();
        v12 = v11;
        *(v0 + 304) = sub_199DFA16C();
        v7 = sub_199DFA12C();
        v9 = v13;
        v10 = sub_199B87888;
        goto LABEL_8;
      }
    }
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_199B875F0()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_199B8766C()
{

  objc_allocWithZone(sub_199DF816C());
  *(v0 + 288) = sub_199DF817C();

  return MEMORY[0x1EEE6DFA0](sub_199B8770C, 0, 0);
}

uint64_t sub_199B8770C()
{
  *(v0 + 296) = sub_199DFA16C();
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B87798, v2, v1);
}

uint64_t sub_199B87798()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);

  [v2 setTipView_];

  return MEMORY[0x1EEE6DFA0](sub_199B87820, 0, 0);
}

uint64_t sub_199B87820()
{

  return MEMORY[0x1EEE6DFA0](sub_199B86D2C, 0, 0);
}

uint64_t sub_199B87888()
{
  v1 = *(v0 + 256);

  [v1 setTipView_];

  return MEMORY[0x1EEE6DFA0](sub_199B8790C, 0, 0);
}

uint64_t sub_199B8790C()
{
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199B87990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 184) = a4;
  v5 = swift_task_alloc();
  *(v4 + 192) = v5;
  *v5 = v4;
  v5[1] = sub_199B87A2C;

  return MEMORY[0x1EEE6DA60](2000000000);
}

uint64_t sub_199B87A2C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_199B87B5C, 0, 0);
  }
}

uint64_t sub_199B87B5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller), v0[25] = v2, v3 = Strong, v4 = v2, v3, v2))
  {
    v0[26] = sub_199DFA17C();
    v0[27] = sub_199DFA16C();
    v6 = sub_199DFA12C();

    return MEMORY[0x1EEE6DFA0](sub_199B87C6C, v6, v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_199B87C6C()
{
  v1 = *(v0 + 200);

  *(v0 + 258) = [v1 validateSiriEnabled];

  return MEMORY[0x1EEE6DFA0](sub_199B87CEC, 0, 0);
}

uint64_t sub_199B87CEC()
{
  if (qword_1EAF715E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 258);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40);
  *(v0 + 224) = v2;
  __swift_project_value_buffer(v2, qword_1EAF715E8);
  *(v0 + 256) = v1;
  swift_beginAccess();
  sub_199DF835C();
  swift_endAccess();
  *(v0 + 232) = sub_199DFA16C();
  v4 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B87E0C, v4, v3);
}

uint64_t sub_199B87E0C()
{
  v1 = *(v0 + 200);

  *(v0 + 259) = [v1 validateSiriLanguage];

  return MEMORY[0x1EEE6DFA0](sub_199B87E8C, 0, 0);
}

uint64_t sub_199B87E8C()
{
  if (qword_1EAF71598 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 259);
  __swift_project_value_buffer(*(v0 + 224), qword_1EAF715A0);
  *(v0 + 257) = v1;
  swift_beginAccess();
  sub_199DF835C();
  swift_endAccess();
  *(v0 + 240) = sub_199DFA16C();
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B87F98, v3, v2);
}

uint64_t sub_199B87F98()
{
  v1 = *(v0 + 200);

  *(v0 + 248) = [v1 getRecentCallCountAndSpeakableName];

  return MEMORY[0x1EEE6DFA0](sub_199B88020, 0, 0);
}

uint64_t sub_199B88020()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = [v1 speakableName];
    v3 = sub_199DF9F8C();
    v5 = v4;

    if (qword_1EAF715C0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 248);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76390);
    __swift_project_value_buffer(v7, qword_1EAF715C8);
    *(v0 + 160) = v3;
    *(v0 + 168) = v5;
    swift_beginAccess();
    sub_199DF835C();
    swift_endAccess();
    v8 = [v6 callCount];
    if (qword_1EAF71608 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 248);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76398);
    __swift_project_value_buffer(v10, qword_1EAF71610);
    *(v0 + 176) = v8;
    swift_beginAccess();
    sub_199DF835C();
    swift_endAccess();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_199B8A5F0();
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_199B8821C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_199AA7314;

  return sub_199B87990(a1, v4, v5, v6);
}

uint64_t sub_199B882D0(uint64_t a1, uint64_t a2)
{
  qword_1EAF71BB0 = a1;
  qword_1EAF71BB8 = a2;
  sub_199DF81AC();
}

uint64_t sub_199B88318(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_entries;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (*(v6 + 16) && (v7 = sub_199B4AB64(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    sub_199DF81AC();
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + v5);
    *(a1 + v5) = 0x8000000000000000;
    v9 = MEMORY[0x1E69E7CC0];
    sub_199B755CC(MEMORY[0x1E69E7CC0], v4, isUniquelyReferenced_nonNull_native);
    *(a1 + v5) = v20;
    swift_endAccess();
  }

  sub_199B89D00(a2, v18);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_199AB2D80(0, *(v9 + 2) + 1, 1, v9);
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_199AB2D80((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[56 * v12];
  v14 = v18[0];
  v15 = v18[1];
  v16 = v18[2];
  *(v13 + 10) = v19;
  *(v13 + 3) = v15;
  *(v13 + 4) = v16;
  *(v13 + 2) = v14;
}

uint64_t CNTipHeaderView.displaysBottomSeparator.getter()
{
  v1 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  return *(v0 + v1);
}

void CNTipHeaderView.displaysBottomSeparator.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_199B88C80();
}

uint64_t (*CNTipHeaderView.displaysBottomSeparator.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_199B886D8;
}

void *sub_199B8873C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_199B88804(void *a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_199B892B4();
}

void sub_199B8886C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_199B892B4();
}

uint64_t (*sub_199B888D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_199B88934;
}

uint64_t sub_199B8894C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

char *CNTipHeaderView.init(frame:separatorInset:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v17 = &v8[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_separatorEdgeInset];
  v18 = *(MEMORY[0x1E69DDCE0] + 16);
  *v17 = *MEMORY[0x1E69DDCE0];
  v17[1] = v18;
  *&v8[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_bottomSeparatorView] = 0;
  v8[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator] = 0;
  *&v8[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView] = 0;
  v27.receiver = v8;
  v27.super_class = type metadata accessor for CNTipHeaderView();
  v19 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  [v19 setLayoutMargins_];
  v20 = &v19[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_separatorEdgeInset];
  *v20 = a5;
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a8;
  v21 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  v22 = *&v19[v21];
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 tertiarySystemFillColor];
    [v24 setBackgroundColor_];
  }

  sub_199B892B4();
  sub_199B88FF4();

  return v19;
}

void sub_199B88C80()
{
  v1 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_bottomSeparatorView;
  v2 = *&v0[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_bottomSeparatorView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
    *&v0[v1] = 0;

    v4 = *&v0[v1];
    if (v4)
    {
LABEL_9:
      v13 = v4;
      [v0 addSubview_];
      v14 = [objc_opt_self() mainScreen];
      [v14 scale];
      v16 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_199E38F10;
      v18 = [v13 leadingAnchor];
      v19 = [v0 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:*&v0[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_separatorEdgeInset + 8]];

      *(v17 + 32) = v20;
      v21 = [v13 heightAnchor];
      v22 = [v21 constraintEqualToConstant_];

      *(v17 + 40) = v22;
      v23 = [v13 widthAnchor];
      v24 = [v0 widthAnchor];
      v25 = [v23 constraintEqualToAnchor_];

      *(v17 + 48) = v25;
      v26 = [v0 bottomAnchor];
      v27 = [v13 bottomAnchor];
      v28 = [v26 constraintEqualToAnchor_];

      *(v17 + 56) = v28;
      sub_199AF1984();
      v29 = sub_199DFA0BC();

      [v0 addConstraints_];

      return;
    }
  }

  v5 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  if (v0[v5] != 1)
  {
LABEL_8:
    v4 = *&v0[v1];
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = *&v0[v1];
  *&v0[v1] = v6;
  v8 = v6;

  if (v8)
  {
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v9 = *&v0[v1];
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 separatorColor];
    [v11 setBackgroundColor_];

    goto LABEL_8;
  }
}

void sub_199B88FF4()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x1E69DDC48];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_199B89CF0;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_199B891C0;
  v5[3] = &block_descriptor_20;
  v3 = _Block_copy(v5);

  v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

void sub_199B89120()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
    swift_beginAccess();
    v3 = [*&v1[v2] superview];
    if (v3)
    {

      [*&v1[v2] removeFromSuperview];
    }

    sub_199B892B4();
  }
}

uint64_t sub_199B891C0(uint64_t a1)
{
  v2 = sub_199DF6F1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_199DF6F0C();

  v7(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_199B892B4()
{
  v1 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 superview];
    if (!v4)
    {
      [v0 addSubview_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_199E38F10;
      v6 = [v3 leadingAnchor];
      v7 = [v0 layoutMarginsGuide];
      v8 = [v7 leadingAnchor];

      v9 = [v6 constraintEqualToAnchor_];
      *(v5 + 32) = v9;
      v10 = [v3 topAnchor];
      v11 = [v0 layoutMarginsGuide];
      v12 = [v11 topAnchor];

      v13 = [v10 constraintEqualToAnchor_];
      *(v5 + 40) = v13;
      v14 = [v3 trailingAnchor];
      v15 = [v0 layoutMarginsGuide];
      v16 = [v15 trailingAnchor];

      v17 = [v14 constraintEqualToAnchor_];
      *(v5 + 48) = v17;
      v18 = [v0 layoutMarginsGuide];
      v19 = [v18 bottomAnchor];

      v20 = [v3 bottomAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      *(v5 + 56) = v21;
      sub_199AF1984();
      v4 = sub_199DFA0BC();

      [v0 addConstraints_];
    }
  }
}

id CNTipHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_199B8966C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_199B896F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_199DFA69C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_199DFAA7C();
      MEMORY[0x19A8F8860](v9);
      result = sub_199DFAABC();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_199B89884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_199AA7314;

  return sub_199B86A3C(a1, a2, a3, a5);
}

id keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t sub_199B89BE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_199B89C2C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_199B89C9C()
{
  result = qword_1EAF71C08;
  if (!qword_1EAF71C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71C08);
  }

  return result;
}

uint64_t sub_199B89D68()
{
  v0 = sub_199DF82EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v4 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (qword_1EAF715C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76390);
  v6 = __swift_project_value_buffer(v5, qword_1EAF715C8);
  v7 = swift_beginAccess();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  (*(v11 + 16))(v50 - v10, v6, v5, v9);
  sub_199DF830C();
  v50[2] = sub_199DF819C();
  v12 = *(v1 + 8);
  v52 = v1 + 8;
  v53 = v12;
  v13 = v12(v50 - v4, v0);
  v50[0] = v50;
  MEMORY[0x1EEE9AC00](v13, v14);
  v51 = v0;
  if (qword_1EAF715E0 != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40);
  v16 = __swift_project_value_buffer(v15, qword_1EAF715E8);
  v17 = swift_beginAccess();
  v18 = *(v15 - 8);
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v22 = *(v18 + 16);
  v22(v50 - v19, v16, v15, v21);
  sub_199DF830C();
  v50[1] = sub_199DF819C();
  v23 = v53(v50 - v4, v51);
  v50[0] = v50;
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (qword_1EAF71598 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_1EAF715A0);
  v27 = swift_beginAccess();
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v22(v50 - v19, v26, v15, v29);
  sub_199DF830C();
  sub_199DF819C();
  v30 = v51;
  v31 = v53(v50 - v25, v51);
  MEMORY[0x1EEE9AC00](v31, v32);
  if (qword_1EAF71608 != -1)
  {
    swift_once();
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76398);
  v34 = __swift_project_value_buffer(v33, qword_1EAF71610);
  v35 = swift_beginAccess();
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  (*(v39 + 16))(v50 - v38, v34, v33, v37);
  sub_199DF830C();
  sub_199DF819C();
  v40 = v53(v50 - v25, v30);
  MEMORY[0x1EEE9AC00](v40, v41);
  v42 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAF71630 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763E0);
  v44 = __swift_project_value_buffer(v43, qword_1EAF71638);
  v45 = MEMORY[0x1EEE9AC00](v44, v44);
  (*(v47 + 16))(v50 - v46, v45);
  sub_199DF81DC();
  sub_199B8AA50(&qword_1EAF71470);
  sub_199B8AA50(&qword_1EAF71478);
  sub_199DF82FC();
  sub_199DF819C();
  v53(v42, v30);
  sub_199DF81AC();

  sub_199DF81BC();

  sub_199DF81BC();

  sub_199DF81BC();

  v48 = sub_199DF81BC();

  return v48;
}