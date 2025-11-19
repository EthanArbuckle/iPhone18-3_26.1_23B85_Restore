unint64_t sub_23A68ECD0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v77 - v5;
  v7 = type metadata accessor for DiscoveryRotatedView();
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v77 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v77 - v23;
  result = [v1 view];
  if (!result)
  {
    goto LABEL_39;
  }

  v26 = result;
  v27 = [result subviews];

  sub_23A691180(0, &qword_27DF9CAD0, 0x277D75D18);
  v28 = sub_23A6DF734();

  if (v28 >> 62)
  {
    v29 = sub_23A6DFB54();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v29)
  {

    goto LABEL_15;
  }

  v30 = __OFSUB__(v29, 1);
  result = v29 - 1;
  if (v30)
  {
    __break(1u);
    goto LABEL_36;
  }

  if ((v28 & 0xC000000000000001) != 0)
  {
LABEL_36:
    v31 = MEMORY[0x23EE89F80](result, v28);
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (result >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v31 = *(v28 + 8 * result + 32);
LABEL_10:
  v32 = v31;

  if ([v32 tag] == 123456)
  {
    v33 = sub_23A6DCE38();
    sub_23A646D48(v33, v24, &qword_27DF9D240, qword_23A6E1D30);
    v34 = sub_23A6DECC4();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v24, 1, v34) == 1)
    {

      v36 = v24;
      return sub_23A646DB0(v36, &qword_27DF9D240, qword_23A6E1D30);
    }

    v71 = sub_23A6DECA4();
    v72 = sub_23A6DF874();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_23A63D000, v71, v72, "presentRotatedView - view is already being presented", v73, 2u);
      MEMORY[0x23EE8A960](v73, -1, -1);
    }

    return (*(v35 + 8))(v24, v34);
  }

LABEL_15:
  sub_23A6DEC54();
  v37 = sub_23A6DF674();
  v39 = v38;

  v40 = swift_allocObject();
  *(v40 + 16) = v1;
  v41 = v1;
  sub_23A6BB448();
  sub_23A6BB4AC(v37, v39, sub_23A6911E0, v40, v6, v15);
  sub_23A6912C0(v15, v12, type metadata accessor for DiscoveryRotatedView);
  v42 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAE8, &qword_23A6E25E0));
  v43 = sub_23A6DF264();
  v44 = [v43 &selRef_setMDMAppAttribute_withValue_forBundleID_];

  if (v44)
  {
    [v44 setTag_];
    [v44 setAccessibilityViewIsModal_];
    result = [v41 &selRef_setMDMAppAttribute_withValue_forBundleID_];
    if (result)
    {
      v45 = result;
      [result addSubview_];

      [v44 setTranslatesAutoresizingMaskIntoConstraints_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAD8, &qword_23A6E25D8);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_23A6E23D0;
      v47 = [v44 centerXAnchor];
      result = [v41 &selRef_setMDMAppAttribute_withValue_forBundleID_];
      if (result)
      {
        v48 = result;
        v49 = [result centerXAnchor];

        v50 = [v47 constraintEqualToAnchor_];
        *(v46 + 32) = v50;
        v51 = [v44 centerYAnchor];
        result = [v41 &selRef_setMDMAppAttribute_withValue_forBundleID_];
        if (result)
        {
          v52 = result;
          v53 = [result centerYAnchor];

          v54 = [v51 constraintEqualToAnchor_];
          *(v46 + 40) = v54;
          v55 = [v44 widthAnchor];
          result = [v41 &selRef_setMDMAppAttribute_withValue_forBundleID_];
          if (result)
          {
            v56 = result;
            v57 = [result widthAnchor];

            v58 = [v55 constraintEqualToAnchor_];
            *(v46 + 48) = v58;
            v59 = [v44 heightAnchor];
            result = [v41 &selRef_setMDMAppAttribute_withValue_forBundleID_];
            if (result)
            {
              v60 = result;
              v61 = objc_opt_self();
              v62 = [v60 heightAnchor];

              v63 = [v59 constraintEqualToAnchor_];
              *(v46 + 56) = v63;
              sub_23A691180(0, &qword_27DF9CAE0, 0x277CCAAD0);
              v64 = sub_23A6DF724();

              [v61 activateConstraints_];

              result = [v41 &selRef_setMDMAppAttribute_withValue_forBundleID_];
              if (result)
              {
                v65 = result;
                v66 = [objc_opt_self() systemBackgroundColor];
                [v65 _setBackgroundColor_];

                result = [v41 &selRef_setMDMAppAttribute_withValue_forBundleID_];
                if (result)
                {
                  v67 = result;
                  [result layoutIfNeeded];

                  return sub_23A691328(v15, type metadata accessor for DiscoveryRotatedView);
                }

                goto LABEL_46;
              }

LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              return result;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v68 = sub_23A6DCE38();
  sub_23A646D48(v68, v21, &qword_27DF9D240, qword_23A6E1D30);
  v69 = sub_23A6DECC4();
  v70 = *(v69 - 8);
  if ((*(v70 + 48))(v21, 1, v69) == 1)
  {
    sub_23A691328(v15, type metadata accessor for DiscoveryRotatedView);
    v36 = v21;
    return sub_23A646DB0(v36, &qword_27DF9D240, qword_23A6E1D30);
  }

  v74 = sub_23A6DECA4();
  v75 = sub_23A6DF8A4();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_23A63D000, v74, v75, "presentRotatedView - unable to present the view", v76, 2u);
    MEMORY[0x23EE8A960](v76, -1, -1);
  }

  sub_23A691328(v15, type metadata accessor for DiscoveryRotatedView);
  return (*(v70 + 8))(v21, v69);
}

uint64_t sub_23A68F6F0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_23A6DF9D4();
    v5 = v4;
    v6 = sub_23A6DFA24();
    v8 = v7;
    v9 = MEMORY[0x23EE89ED0](v3, v5, v6, v7);
    sub_23A6913F4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_23A6913F4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_23A6DF9B4();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_23A690464(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_23A6913F4(v3, v5, v2 != 0);
  return v13;
}

id sub_23A68F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed] = 0;
  v4[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet] = 0;
  v8 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v10 = &v4[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_rotatedViewTag] = 123456;
  if (a2)
  {
    v11 = sub_23A6DF614();

    if (a4)
    {
LABEL_3:
      v12 = sub_23A6DF614();

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithItemIdentifier_referrerIdentifier_, v11, v12);

  if (v13)
  {
  }

  return v13;
}

id sub_23A68FA60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed] = 0;
  v5[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet] = 0;
  v10 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler];
  *v12 = 0;
  v12[1] = 0;
  *&v5[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_rotatedViewTag] = 123456;
  if (a3)
  {
    v13 = sub_23A6DF614();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithArticleLayout_referrerIdentifier_cardSize_, a1, v13, a4);

  if (v14)
  {
  }

  return v14;
}

id sub_23A68FC20(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed] = 0;
  v3[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet] = 0;
  v7 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler];
  *v9 = 0;
  v9[1] = 0;
  *&v3[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_rotatedViewTag] = 123456;
  if (a2)
  {
    v10 = sub_23A6DF614();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_23A68FDAC(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed] = 0;
  v1[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet] = 0;
  v4 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_rotatedViewTag] = 123456;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_23A68FEDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA98, &qword_23A6E2470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_23A68FF4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB40, &qword_23A6E26C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_23A690080()
{
  sub_23A6902BC(319, &qword_27DF9CAA0, &qword_27DF9CA68, qword_23A6E23F0, MEMORY[0x277D43B10]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23A6901A4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A6901DC()
{
  sub_23A6902BC(319, &qword_27DF9CAA8, &qword_27DF9CA90, &qword_23A6E2468, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23A6902BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23A690330()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23A690358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6903A0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23A647234;

  return sub_23A68BA0C(v8, v9, v10, v2, v3, v4, v5, v7);
}

void sub_23A690464(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EE89F00](a1, a2, v7);
      sub_23A691180(0, &qword_27DF9CA78, 0x277D75940);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_23A691180(0, &qword_27DF9CA78, 0x277D75940);
    if (sub_23A6DF9F4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_23A6DFA04();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_23A6DF8F4();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_23A6DF904();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

NSObject *sub_23A690688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a3;
  v90 = a4;
  v95[4] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = (&v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v87 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v87 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v91 = &v87 - v19;
  v20 = sub_23A6DE1D4();
  v93 = *(v20 - 8);
  v21 = *(v93 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v87 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v94 = &v87 - v31;
  v32 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v33 = sub_23A6DF614();
  v34 = [v32 initWithPath_];

  if (v34)
  {
    v35 = sub_23A6DF614();
    v36 = sub_23A6DF614();
    v8 = [v34 URLForResource:v35 withExtension:v36];

    if (v8)
    {
      sub_23A6DE1A4();

      v37 = v93;
      v8 = v94;
      v38 = v20;
      (*(v93 + 32))(v94, v28, v20);
      v39 = v92;
      v40 = sub_23A6DE1F4();
      if (v39)
      {

        v42 = sub_23A6DCE38();
        sub_23A646D48(v42, v16, &qword_27DF9D240, qword_23A6E1D30);
        v43 = sub_23A6DECC4();
        v44 = *(v43 - 8);
        if ((*(v44 + 48))(v16, 1, v43) == 1)
        {
          sub_23A646DB0(v16, &qword_27DF9D240, qword_23A6E1D30);
        }

        else
        {
          (*(v37 + 16))(v24, v94, v38);
          v66 = sub_23A6DECA4();
          v8 = v38;
          v67 = sub_23A6DF884();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v91 = v68;
            v92 = swift_slowAlloc();
            v95[0] = v92;
            *v68 = 136315138;
            v69 = v8;
            v88 = v8;
            v90 = sub_23A6DE154();
            v71 = v70;
            (*(v93 + 8))(v24, v69);
            v72 = sub_23A657E78(v90, v71, v95);

            v8 = v91;
            *(v91 + 4) = v72;
            _os_log_impl(&dword_23A63D000, v66, v67, "articleLayout - no layout content in %s", v8, 0xCu);
            v73 = v92;
            __swift_destroy_boxed_opaque_existential_1Tm(v92);
            MEMORY[0x23EE8A960](v73, -1, -1);
            v37 = v93;
            MEMORY[0x23EE8A960](v8, -1, -1);

            v38 = v88;
          }

          else
          {

            (*(v37 + 8))(v24, v8);
            v38 = v8;
          }

          (*(v44 + 8))(v16, v43);
        }

        sub_23A691B48();
        swift_allocError();
        *v77 = 1;
        swift_willThrow();
LABEL_35:

        (*(v37 + 8))(v94, v38);
        goto LABEL_36;
      }

      v55 = v41;
      v56 = v40;
      v57 = objc_opt_self();
      v92 = v56;
      v58 = sub_23A6DE214();
      v95[0] = 0;
      v8 = [v57 JSONObjectWithData:v58 options:0 error:v95];

      if (v8)
      {
        v59 = v95[0];
        sub_23A6DF994();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB08, &qword_23A6E2680);
        v60 = swift_dynamicCast();
        v61 = v91;
        if (v60)
        {
          v62 = objc_allocWithZone(MEMORY[0x277D37E70]);
          v63 = sub_23A6DF594();

          v8 = [v62 initWithDictionary_];

          v37 = v93;
          if (v8)
          {
            v64 = sub_23A6DF614();
            [v8 setItemIdentifier:v64];

            v65 = v34;
            [v8 localizeWithBundle:v65];
            sub_23A691B9C(v92, v55);

            (*(v37 + 8))(v94, v38);
            goto LABEL_36;
          }
        }

        else
        {
          v37 = v93;
        }
      }

      else
      {
        v8 = v95[0];
        v78 = sub_23A6DE124();

        swift_willThrow();
        v61 = v91;
      }

      v79 = sub_23A6DCE38();
      sub_23A646D48(v79, v61, &qword_27DF9D240, qword_23A6E1D30);
      v80 = sub_23A6DECC4();
      v81 = *(v80 - 8);
      if ((*(v81 + 48))(v61, 1, v80) == 1)
      {
        sub_23A646DB0(v61, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v8 = sub_23A6DECA4();
        v82 = sub_23A6DF884();
        if (os_log_type_enabled(v8, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_23A63D000, v8, v82, "articleLayout - invalid layout content", v83, 2u);
          MEMORY[0x23EE8A960](v83, -1, -1);
        }

        (*(v81 + 8))(v61, v80);
        v37 = v93;
      }

      sub_23A691B48();
      swift_allocError();
      *v84 = 1;
      swift_willThrow();
      sub_23A691B9C(v92, v55);
      goto LABEL_35;
    }

    v48 = sub_23A6DCE38();
    sub_23A646D48(v48, v12, &qword_27DF9D240, qword_23A6E1D30);
    v49 = sub_23A6DECC4();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v12, 1, v49) == 1)
    {
      sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v8 = sub_23A6DECA4();
      v74 = sub_23A6DF884();
      if (os_log_type_enabled(v8, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_23A63D000, v8, v74, "articleLayout - no layout present", v75, 2u);
        MEMORY[0x23EE8A960](v75, -1, -1);
      }

      (*(v50 + 8))(v12, v49);
    }

    sub_23A691B48();
    swift_allocError();
    *v76 = 1;
    swift_willThrow();
  }

  else
  {
    v45 = sub_23A6DCE38();
    sub_23A646D48(v45, v8, &qword_27DF9D240, qword_23A6E1D30);
    v46 = sub_23A6DECC4();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v8, 1, v46) == 1)
    {
      sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v51 = sub_23A6DECA4();
      v52 = sub_23A6DF884();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_23A63D000, v51, v52, "articleLayout - invalid path", v53, 2u);
        MEMORY[0x23EE8A960](v53, -1, -1);
      }

      (*(v47 + 8))(v8, v46);
    }

    sub_23A691B48();
    swift_allocError();
    *v54 = 1;
    swift_willThrow();
  }

LABEL_36:
  v85 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_23A691180(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23A6911E0()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v5[4] = sub_23A691388;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_23A672F1C;
  v5[3] = &block_descriptor_48;
  v3 = _Block_copy(v5);
  v4 = v1;

  [v4 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

uint64_t sub_23A6912C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A691328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23A691388()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);

    sub_23A677CB0(v2);
  }
}

uint64_t sub_23A6913F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23A691410()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10) - 8);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0 + ((*(v2 + 80) + 88) & ~*(v2 + 80));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_23A647234;

  return sub_23A685F08(v11, v12, v13, v3, v4, v5, v6, v7);
}

uint64_t sub_23A69152C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10) - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];

  return sub_23A68AC5C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_23A6915A4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10) - 8);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0 + ((*(v2 + 80) + 88) & ~*(v2 + 80));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_23A647234;

  return sub_23A686950(v11, v12, v13, v3, v4, v5, v6, v7);
}

uint64_t sub_23A6916C8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A68AA00(v3, v4, v5, v2);
}

uint64_t sub_23A69175C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A647234;

  return sub_23A68A748(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_23A69180C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[10];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23A647234;

  return sub_23A68A5A0(v7, v8, v9, v2, v3, v4, v5);
}

uint64_t sub_23A6918CC()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A647234;

  return sub_23A68A41C(v6, v7, v8, v2, v3, v5, v4);
}

double PKUIScreenTypeGetSize(unint64_t a1)
{
  v1 = &unk_23A6E26F0 + 8 * a1;
  if (a1 >= 0x14)
  {
    v1 = (MEMORY[0x277CBF3A8] + 8);
  }

  return *v1;
}

uint64_t sub_23A6919A4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23A647234;

  return sub_23A689E8C(v4, v5, v7, v8, v9, v2, v3, v0 + 48, v6);
}

uint64_t objectdestroy_73Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_23A691AB4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A68A33C(v3, v4, v5, v2);
}

unint64_t sub_23A691B48()
{
  result = qword_27DF9CB00;
  if (!qword_27DF9CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB00);
  }

  return result;
}

uint64_t sub_23A691B9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroy_83Tm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[5];
  swift_unknownObjectRelease();
  v6 = v1[7];

  v7 = v1[9];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23A691C54()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A647234;

  return sub_23A68AE04(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_23A691D04()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB18, &qword_23A6E26A0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A647140;

  return sub_23A684868(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_23A691E00()
{
  result = qword_27DF9CB30;
  if (!qword_27DF9CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9CB28, &qword_23A6E26C0);
    sub_23A690358(&qword_27DF9CB38, MEMORY[0x277D43778]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB30);
  }

  return result;
}

uint64_t objectdestroy_118Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 32);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23A691FC0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB48, &qword_23A6E26D0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A647234;

  return sub_23A683300(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_23A6920D8(char a1)
{
  result = 0x726F6D654D727073;
  switch(a1)
  {
    case 1:
    case 23:
    case 43:
    case 46:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
    case 42:
    case 50:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x4970696B53727073;
      break;
    case 5:
    case 34:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x4D49556C61636F6CLL;
      break;
    case 7:
      result = 0x6F46726564616572;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x474D4D6563726F66;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x4C79636176697270;
      break;
    case 12:
      result = 0x4149556563726F66;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x6E41656C62616E65;
      break;
    case 16:
    case 33:
    case 39:
      v3 = 5;
      goto LABEL_33;
    case 17:
    case 27:
    case 28:
    case 51:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x6556534F6B636F6DLL;
      break;
    case 19:
      result = 0x6F676F4C6B636F6DLL;
      break;
    case 20:
      result = 0x4E424D6B636F6DLL;
      break;
    case 21:
      result = 0x43434D6B636F6DLL;
      break;
    case 22:
      result = 0x6E756F436B636F6DLL;
      break;
    case 24:
    case 40:
      result = 0xD000000000000019;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
    case 37:
      result = 0xD000000000000013;
      break;
    case 29:
      result = 0xD00000000000001CLL;
      break;
    case 30:
      result = 0xD000000000000020;
      break;
    case 31:
      result = 0x6378454244666173;
      break;
    case 32:
      result = 0x726F434244666173;
      break;
    case 35:
      result = 0x447061546B636F6DLL;
      break;
    case 36:
      result = 0xD000000000000012;
      break;
    case 38:
      result = 0x504F434A6B636F6DLL;
      break;
    case 41:
      result = 0xD000000000000012;
      break;
    case 44:
      result = 0x54656C6261736964;
      break;
    case 45:
      result = 0x616C6544656E6F64;
      break;
    case 47:
    case 48:
      v3 = 9;
LABEL_33:
      result = v3 | 0xD000000000000012;
      break;
    case 49:
      result = 0xD00000000000001ALL;
      break;
    case 52:
      result = 0xD000000000000012;
      break;
    case 53:
      result = 0xD000000000000012;
      break;
    case 54:
      result = 0x73726556534F656DLL;
      break;
    case 55:
      result = 0x656369766544656DLL;
      break;
    case 56:
      result = 0x4E49506563726F66;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_23A6926A4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23A6920D8(*a1);
  v5 = v4;
  if (v3 == sub_23A6920D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23A6DFC04();
  }

  return v8 & 1;
}

uint64_t sub_23A69272C()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6920D8(v1);
  sub_23A6DF684();

  return sub_23A6DFD14();
}

uint64_t sub_23A692790()
{
  sub_23A6920D8(*v0);
  sub_23A6DF684();
}

uint64_t sub_23A6927E4()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6920D8(v1);
  sub_23A6DF684();

  return sub_23A6DFD14();
}

uint64_t sub_23A692844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A6929BC();
  *a2 = result;
  return result;
}

unint64_t sub_23A692874@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23A6920D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23A6928A0()
{
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A692904()
{
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A692950@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23A6DFB94();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_23A6929BC()
{
  v0 = sub_23A6DFC24();

  if (v0 >= 0x39)
  {
    return 57;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23A692A14()
{
  result = qword_27DF9CB58;
  if (!qword_27DF9CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB58);
  }

  return result;
}

unint64_t sub_23A692A6C()
{
  result = qword_27DF9CB60;
  if (!qword_27DF9CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonPrefKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC8)
  {
    goto LABEL_17;
  }

  if (a2 + 56 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 56) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 56;
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

      return (*a1 | (v4 << 8)) - 56;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 56;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x39;
  v8 = v6 - 57;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonPrefKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 56 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 56) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC8)
  {
    v4 = 0;
  }

  if (a2 > 0xC7)
  {
    v5 = ((a2 - 200) >> 8) + 1;
    *result = a2 + 56;
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
    *result = a2 + 56;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t VASRequest.localizedVASType.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_23A692C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v10 - v7;
  sub_23A646D48(a1, &v10 - v7, &qword_27DF9C7B0, &qword_23A6E11D0);
  return (*(**a2 + 112))(v8);
}

uint64_t sub_23A692D68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage;
  swift_beginAccess();
  return sub_23A646D48(v1 + v3, a1, &qword_27DF9C7B0, &qword_23A6E11D0);
}

uint64_t sub_23A692DD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage;
  swift_beginAccess();
  sub_23A6473B8(a1, v1 + v3);
  return swift_endAccess();
}

char *VASRequest.__allocating_init(vasMerchants:localizedVASType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage;
  v11 = sub_23A6DE324();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  return v9;
}

char *VASRequest.init(vasMerchants:localizedVASType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage;
  v8 = sub_23A6DE324();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  *(v3 + 4) = a3;
  return v3;
}

uint64_t VASRequest.Merchant.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VASRequest.Merchant.localizedName.getter()
{
  v1 = (v0 + *(type metadata accessor for VASRequest.Merchant(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t VASRequest.Merchant.localizedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VASRequest.Merchant(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t VASRequest.Merchant.init(id:url:shouldSendURLOnly:localizedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v9 = a2;
  *a6 = a1;
  a6[1] = a2;
  v12 = type metadata accessor for VASRequest.Merchant(0);
  result = sub_23A6931E4(a3, a6 + v12[5]);
  *(a6 + v12[6]) = 0;
  if (a5)
  {
    v9 = a5;
  }

  else
  {

    a4 = a1;
  }

  v14 = (a6 + v12[7]);
  *v14 = a4;
  v14[1] = v9;
  return result;
}

uint64_t sub_23A6931E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VASRequest.Merchant.init(id:url:localizedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = a2;
  *a6 = a1;
  a6[1] = a2;
  v12 = type metadata accessor for VASRequest.Merchant(0);
  result = sub_23A6931E4(a3, a6 + v12[5]);
  *(a6 + v12[6]) = 0;
  if (a5)
  {
    v9 = a5;
  }

  else
  {

    a4 = a1;
  }

  v14 = (a6 + v12[7]);
  *v14 = a4;
  v14[1] = v9;
  return result;
}

uint64_t VASRequest.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_23A693324(v0 + OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage);
  return v0;
}

uint64_t sub_23A693324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VASRequest.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_23A693324(v0 + OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_23A693428()
{
  sub_23A693654(319, &qword_27DF9C7C0, MEMORY[0x277CC9740]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23A6935AC()
{
  sub_23A693654(319, &qword_27DF9CB70, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A693654(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23A6DF954();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t VASReadResult.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

ProximityReader::VASReadResult __swiftcall VASReadResult.init(id:entries:)(Swift::String id, Swift::OpaquePointer entries)
{
  *v2 = id;
  *(v2 + 16) = entries;
  result.id = id;
  result.entries = entries;
  return result;
}

uint64_t VASReadResult.ReadEntry.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VASReadResult.ReadEntry.customerVASData.getter()
{
  v1 = *(v0 + 16);
  sub_23A693750(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_23A693750(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23A693764(a1, a2);
  }

  return a1;
}

uint64_t sub_23A693764(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

ProximityReader::VASReadResult::ReadEntry::Status_optional __swiftcall VASReadResult.ReadEntry.Status.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 27263)
  {
    if (rawValue > 27391)
    {
      if (rawValue == 27392)
      {
        *v1 = 3;
        return rawValue;
      }

      if (rawValue == 36864)
      {
        *v1 = 0;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 27264)
      {
        *v1 = 6;
        return rawValue;
      }

      if (rawValue == 27267)
      {
        *v1 = 1;
        return rawValue;
      }
    }

LABEL_20:
    *v1 = 8;
    return rawValue;
  }

  if (rawValue > 26367)
  {
    if (rawValue == 26368)
    {
      *v1 = 4;
      return rawValue;
    }

    if (rawValue == 27012)
    {
      *v1 = 5;
      return rawValue;
    }

    goto LABEL_20;
  }

  if (rawValue == 25223)
  {
    *v1 = 2;
    return rawValue;
  }

  if (rawValue != 25408)
  {
    goto LABEL_20;
  }

  *v1 = 7;
  return rawValue;
}

uint64_t sub_23A6938E4()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](qword_23A6E2BF0[v1]);
  return sub_23A6DFD14();
}

uint64_t sub_23A69396C()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](qword_23A6E2BF0[v1]);
  return sub_23A6DFD14();
}

uint64_t sub_23A6939D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

unint64_t sub_23A6939F0()
{
  result = qword_27DF9CB78;
  if (!qword_27DF9CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB78);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A693A58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23A693AA0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A693B34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_23A693B7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VASReadResult.ReadEntry.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VASReadResult.ReadEntry.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PaymentCardReaderSession.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t PaymentCardReaderSession.Event.name.getter()
{
  v1 = *v0;
  v2 = 0x726F467964616572;
  v3 = 0x636E614364616572;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6574656C706D6F63;
  if (v1 != 3)
  {
    v4 = 0x7972746572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574654464726163;
  if (v1 != 1)
  {
    v5 = 0x614365766F6D6572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t PaymentCardReaderSession.Event.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t PaymentCardReaderSession.ReadError.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 0xD000000000000028;
    }

    else
    {
      v7 = *v0;
      switch(v1)
      {
        case 1uLL:
        case 0x10uLL:
          return 0xD000000000000046;
        case 2uLL:
          return 0xD000000000000043;
        case 3uLL:
        case 4uLL:
        case 6uLL:
          return 0xD000000000000037;
        case 5uLL:
          return 0xD00000000000004BLL;
        case 7uLL:
          return 0xD000000000000041;
        case 8uLL:
          return 0xD000000000000045;
        case 9uLL:
          return 0xD000000000000028;
        case 0xAuLL:
          v8 = 19;
          goto LABEL_44;
        case 0xBuLL:
          return 0xD000000000000066;
        case 0xDuLL:
        case 0x1CuLL:
          return 0xD00000000000002CLL;
        case 0xEuLL:
          return 0xD00000000000001ELL;
        case 0xFuLL:
          return 0xD000000000000033;
        case 0x11uLL:
          return 0xD000000000000028;
        case 0x13uLL:
          return 0xD000000000000031;
        case 0x14uLL:
          return 0xD00000000000002ALL;
        case 0x15uLL:
          return 0xD000000000000029;
        case 0x16uLL:
          v8 = 5;
          goto LABEL_44;
        case 0x17uLL:
          v8 = 18;
          goto LABEL_44;
        case 0x18uLL:
          return 0xD000000000000052;
        case 0x19uLL:
          return 0xD000000000000048;
        case 0x1AuLL:
          v8 = 17;
          goto LABEL_44;
        case 0x1BuLL:
          v8 = 22;
LABEL_44:
          result = v8 | 0xD000000000000028;
          break;
        case 0x1DuLL:
          result = 0xD000000000000042;
          break;
        case 0x1EuLL:
          result = 0xD000000000000040;
          break;
        default:
          result = 0xD00000000000002ELL;
          break;
      }
    }
  }

  else
  {
    v2 = *(v0 + 8);
    if (*(v0 + 16))
    {

      sub_23A6DFA84();

      v9 = 0xD00000000000002ALL;
      if (v2)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0xD000000000000012;
      }

      if (v2)
      {
        v6 = v2;
      }

      else
      {
        v6 = 0x800000023A6EA580;
      }

      v4 = v6;
    }

    else
    {
      if (!v2)
      {
        return 0xD00000000000005CLL;
      }

      v9 = 0xD000000000000030;
      MEMORY[0x23EE89BB0](v1, v2);

      v3 = 46;
      v4 = 0xE100000000000000;
    }

    MEMORY[0x23EE89BB0](v3, v4);

    return v9;
  }

  return result;
}

uint64_t PaymentCardReaderSession.ReadError.errorName.getter()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 0x6E776F6E6B6E75;
    }

    else
    {
      result = 0x41746F4E64616572;
      switch(*v0)
      {
        case 1:
          result = 0xD000000000000017;
          break;
        case 2:
        case 0x1ALL:
          result = 0xD00000000000001CLL;
          break;
        case 3:
        case 6:
        case 0x1DLL:
          result = 0xD000000000000012;
          break;
        case 4:
          result = 0x7265646165526F6ELL;
          break;
        case 5:
          result = 0xD000000000000014;
          break;
        case 7:
          result = 0xD000000000000019;
          break;
        case 8:
          result = 0xD000000000000020;
          break;
        case 9:
        case 0x13:
          result = 0xD000000000000011;
          break;
        case 0xALL:
          result = 0x636E614364616572;
          break;
        case 0xBLL:
          result = 0x4164696C61766E69;
          break;
        case 0xCLL:
          result = 0xD000000000000013;
          break;
        case 0xDLL:
          result = 0xD000000000000013;
          break;
        case 0xELL:
          result = 0x626173694463666ELL;
          break;
        case 0xFLL:
          result = 0xD000000000000018;
          break;
        case 0x10:
        case 0x1ELL:
          result = 0xD000000000000010;
          break;
        case 0x11:
          result = 0x6461655264726163;
          break;
        case 0x12:
          result = 0x4664616552736176;
          break;
        case 0x14:
          result = 0xD000000000000013;
          break;
        case 0x15:
          result = 0x7972746E456E6970;
          break;
        case 0x16:
          result = 0x6E656B6F546E6970;
          break;
        case 0x17:
          result = 0x7972746E456E6970;
          break;
        case 0x18:
          result = 0x65636E61436E6970;
          break;
        case 0x19:
          result = 0x6C41746F4E6E6970;
          break;
        case 0x1BLL:
          result = 0xD00000000000001DLL;
          break;
        case 0x1CLL:
          result = 0xD00000000000001ALL;
          break;
        default:
          return result;
      }
    }
  }

  else if (*(v0 + 16))
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000013;
  }

  return result;
}

uint64_t PaymentCardReaderSession.PINToken.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_23A6947F8(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v31 = a4;
  v29 = a2;
  v30 = a3;
  v6 = sub_23A6DE2F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 48);
  v13 = *(v4 + 52);
  v14 = swift_allocObject();
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 9);
  sub_23A6DE2E4();
  v18 = sub_23A6DE2B4();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v11, v6);
  *(v14 + 16) = v18;
  *(v14 + 24) = v20;
  sub_23A6DE2E4();
  v22 = sub_23A6DE2B4();
  v24 = v23;
  v21(v11, v6);
  *(v14 + 32) = v22;
  *(v14 + 40) = v24;
  v25 = v14 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_configuredCountryCode;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v14 + 48) = v15;
  *(v14 + 56) = v16;
  *(v14 + 57) = v17;
  sub_23A648EB0(v29, v14 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_currentOSVersionDeprecationDate);
  v26 = v14 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_configuredCountryCode;
  *v26 = v30;
  *(v26 + 8) = v31 & 1;
  return v14;
}

uint64_t sub_23A69499C(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v29 = a4;
  v27 = a2;
  v28 = a3;
  v7 = sub_23A6DE2F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 9);
  sub_23A6DE2E4();
  v16 = sub_23A6DE2B4();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v12, v7);
  *(v5 + 16) = v16;
  *(v5 + 24) = v18;
  sub_23A6DE2E4();
  v20 = sub_23A6DE2B4();
  v22 = v21;
  v19(v12, v7);
  *(v5 + 32) = v20;
  *(v5 + 40) = v22;
  v23 = v5 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_configuredCountryCode;
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v5 + 48) = v13;
  *(v5 + 56) = v14;
  *(v5 + 57) = v15;
  sub_23A648EB0(v27, v5 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_currentOSVersionDeprecationDate);
  v24 = v5 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_configuredCountryCode;
  *v24 = v28;
  *(v24 + 8) = v29 & 1;
  return v5;
}

void *PaymentCardReaderSession.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = sub_23A6DCDF0();
  sub_23A646D48(v7, v6, &qword_27DF9D240, qword_23A6E1D30);
  v8 = sub_23A6DECC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v1, 0x74696E696564, 0xE600000000000000, v10, v11);

    (*(v9 + 8))(v6, v8);
  }

  v12 = v1[3];

  v13 = v1[5];

  v14 = v1[6];

  sub_23A646DB0(v1 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_currentOSVersionDeprecationDate, &qword_27DF9C7A8, &qword_23A6E12A0);
  return v1;
}

uint64_t PaymentCardReaderSession.__deallocating_deinit()
{
  PaymentCardReaderSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23A694D24()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A694DC0, 0, 0);
}

uint64_t sub_23A694DC0()
{
  v1 = v0[3];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[3];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[3], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[2];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0x65526C65636E6163, 0xEC00000029286461, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[2];
  v11 = sub_23A6587D8();
  v12 = *v11;
  v0[4] = *v11;
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  v15 = *(*v12 + 656);

  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[5] = v17;
  *v17 = v0;
  v17[1] = sub_23A695004;

  return v19(v13, v14);
}

uint64_t sub_23A695004(char a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  v5[6] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A695160, 0, 0);
  }

  else
  {
    v7 = v5[3];
    v6 = v5[4];

    v8 = v5[1];

    return v8(a1 & 1);
  }
}

uint64_t sub_23A695160()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3(0);
}

uint64_t sub_23A6951D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A695270, 0, 0);
}

uint64_t sub_23A695270()
{
  v1 = v0[5];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000013, 0x800000023A6EAD70, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = *(*v0[4] + 168);
  v17 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_23A6954A4;
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  return (v17)(v15, v13, 0, 0);
}

uint64_t sub_23A6954A4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23A6955B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB80, &unk_23A6E6DC0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A695690, 0, 0);
}

uint64_t sub_23A695690()
{
  v32 = v0;
  v1 = v0[15];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[15];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[15], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[13];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000020, 0x800000023A6EAD90, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[10];
  type metadata accessor for TransactionValidator();
  sub_23A6B4330(v10);
  v11 = sub_23A6B4DAC(*(v0[10] + 48));
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[10];
  sub_23A6DE884();
  sub_23A69836C(v14, v12, type metadata accessor for PaymentCardTransactionRequest);
  v15 = type metadata accessor for PaymentCardTransactionRequest();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  v31[0] = 4;
  v16 = sub_23A6DB918();
  v17 = sub_23A6DB91C();
  v18 = sub_23A6DB928();
  v19 = sub_23A6DB930(0, v12, v16, v11, 0, v17, v18, v31);
  v0[16] = v19;
  v20 = sub_23A6587D8();
  v21 = *v20;
  v0[17] = *v20;
  v22 = *(v13 + 32);
  v23 = *(v13 + 40);
  v24 = *(*v21 + 664);

  v30 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[18] = v26;
  *v26 = v0;
  v26[1] = sub_23A695A34;
  v27 = v0[11];
  v28 = v0[12];

  return v30(v22, v23, v19, v27, v28);
}

uint64_t sub_23A695A34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v8 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = sub_23A695C98;
  }

  else
  {
    v6 = v3[17];

    v5 = sub_23A695B50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A695B50()
{
  v22 = v0;
  v1 = *(v0 + 152);
  sub_23A6DA494(v18);
  v3 = v18[0];
  v2 = v18[1];
  v4 = v20;
  *(v0 + 16) = v19;
  *(v0 + 32) = v4;
  *(v0 + 48) = v21[0];
  *(v0 + 61) = *(v21 + 13);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  if (v2)
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 72);

    *v9 = v3;
    *(v9 + 8) = v2;
    v10 = *(v0 + 16);
    v11 = *(v0 + 32);
    v12 = *(v0 + 48);
    *(v9 + 61) = *(v0 + 61);
    *(v9 + 32) = v11;
    *(v9 + 48) = v12;
    *(v9 + 16) = v10;
  }

  else
  {
    sub_23A6763DC();
    swift_allocError();
    *v14 = xmmword_23A6E1CB0;
    *(v14 + 16) = 3;
    swift_willThrow();

    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_23A695C98()
{
  v2 = v0[16];
  v1 = v0[17];

  v3 = v0[20];
  v5 = v0[14];
  v4 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23A695D10(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A695DB0, 0, 0);
}

uint64_t sub_23A695DB0()
{
  v1 = v0[5];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000013, 0x800000023A6EAD70, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = *(*v0[4] + 184);
  v17 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_23A69945C;
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  return (v17)(v15, v13, 0, 0);
}

uint64_t sub_23A695FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = *(*(type metadata accessor for PaymentCardVerificationRequest() - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB88, qword_23A6E2C70) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB90, &unk_23A6E46F0) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A696130, 0, 0);
}

uint64_t sub_23A696130()
{
  v1 = v0[18];
  v46 = sub_23A6DCDF0();
  sub_23A646D48(v46, v1, &qword_27DF9D240, qword_23A6E1D30);
  v2 = sub_23A6DECC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[18];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[18], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[13];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000020, 0x800000023A6EAD90, v8, v9);

    (*(v3 + 8))(v6, v2);
  }

  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[10];
  sub_23A6DE7E4();
  v13 = *v12;
  v14 = v12[1];
  v15 = sub_23A6DE314();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_23A6DE7D4();
  sub_23A646DB0(v11, &qword_27DF9CB88, qword_23A6E2C70);
  v16 = sub_23A6DE644();
  v17 = (*(*(v16 - 8) + 48))(v10, 1, v16);
  sub_23A646DB0(v10, &qword_27DF9CB90, &unk_23A6E46F0);
  if (v17 == 1)
  {
    v18 = v0[17];
    sub_23A646D48(v46, v18, &qword_27DF9D240, qword_23A6E1D30);
    if (v4(v18, 1, v2) == 1)
    {
      sub_23A646DB0(v0[17], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v33 = v0[17];
      v34 = sub_23A6DECA4();
      v35 = sub_23A6DF884();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_23A63D000, v34, v35, "PaymentCardVerificationRequest - invalidCurrencyCode", v36, 2u);
        MEMORY[0x23EE8A960](v36, -1, -1);
      }

      v37 = v0[17];

      (*(v3 + 8))(v37, v2);
    }

    sub_23A6763DC();
    swift_allocError();
    *v38 = xmmword_23A6E2C30;
    *(v38 + 16) = 3;
    swift_willThrow();
    v40 = v0[17];
    v39 = v0[18];
    v42 = v0[15];
    v41 = v0[16];
    v43 = v0[14];

    v44 = v0[1];

    return v44();
  }

  else
  {
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[10];
    sub_23A6DE884();
    sub_23A69836C(v21, v19, type metadata accessor for PaymentCardVerificationRequest);
    v22 = sub_23A6DC70C(v19);
    v0[19] = v22;
    v23 = sub_23A6587D8();
    v24 = *v23;
    v0[20] = *v23;
    v25 = *(v20 + 32);
    v26 = *(v20 + 40);
    v27 = *(*v24 + 664);

    v45 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    v0[21] = v29;
    *v29 = v0;
    v29[1] = sub_23A696664;
    v30 = v0[11];
    v31 = v0[12];

    return v45(v25, v26, v22, v30, v31);
  }
}

uint64_t sub_23A696664(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v8 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = sub_23A696914;
  }

  else
  {
    v6 = v3[20];

    v5 = sub_23A696780;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A696780()
{
  v28 = v0;
  v1 = *(v0 + 176);
  sub_23A6DA494(v24);
  v3 = v24[0];
  v2 = v24[1];
  v4 = v26;
  *(v0 + 16) = v25;
  *(v0 + 32) = v4;
  *(v0 + 48) = v27[0];
  *(v0 + 61) = *(v27 + 13);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  if (v2)
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v23 = *(v0 + 112);
    v11 = *(v0 + 72);

    *v11 = v3;
    *(v11 + 8) = v2;
    v12 = *(v0 + 16);
    v13 = *(v0 + 32);
    v14 = *(v0 + 48);
    *(v11 + 61) = *(v0 + 61);
    *(v11 + 32) = v13;
    *(v11 + 48) = v14;
    *(v11 + 16) = v12;
  }

  else
  {
    sub_23A6763DC();
    swift_allocError();
    *v16 = xmmword_23A6E1CB0;
    *(v16 + 16) = 3;
    swift_willThrow();

    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v21 = *(v0 + 112);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_23A696914()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = v0[23];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_23A6969BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A696A5C, 0, 0);
}

uint64_t sub_23A696A5C()
{
  v1 = v0[5];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0x2853415664616572, 0xEB00000000293A5FLL, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = *(*v0[4] + 200);
  v17 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_23A69945C;
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  return (v17)(v15, v13, 0, 0);
}

uint64_t sub_23A696C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB80, &unk_23A6E6DC0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A696D68, 0, 0);
}

uint64_t sub_23A696D68()
{
  v33 = v0;
  v1 = v0[8];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[8];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[8], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[6];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000018, 0x800000023A6EADC0, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[6];
  v11 = v0[3];
  type metadata accessor for TransactionValidator();
  v12 = sub_23A6B5230(v11, *(v10 + 48));
  v0[9] = v12;
  v13 = v12;
  v15 = v0[6];
  v14 = v0[7];
  sub_23A6DE884();
  v16 = type metadata accessor for PaymentCardTransactionRequest();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v32[0] = 4;

  v17 = sub_23A6DB918();
  v18 = sub_23A6DB91C();
  v19 = sub_23A6DB91C();
  v20 = sub_23A6DB930(1, v14, v17, v18, v13, v19, 2, v32);
  v0[10] = v20;
  v21 = sub_23A6587D8();
  v22 = *v21;
  v0[11] = *v21;
  v23 = *(v15 + 32);
  v24 = *(v15 + 40);
  v25 = *(*v22 + 664);

  v31 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  v0[12] = v27;
  *v27 = v0;
  v27[1] = sub_23A6970F0;
  v28 = v0[4];
  v29 = v0[5];

  return v31(v23, v24, v20, v28, v29);
}

uint64_t sub_23A6970F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_23A6972C0;
  }

  else
  {
    v8 = *(v4 + 88);

    *(v4 + 112) = a1;
    v7 = sub_23A697220;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23A697220()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  sub_23A6DAC24(v0[2]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23A6972C0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = v0[13];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A697344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 72) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6973EC, 0, 0);
}

uint64_t sub_23A6973EC()
{
  v1 = *(v0 + 56);
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 56);
  if (v5 == 1)
  {
    sub_23A646DB0(*(v0 + 56), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD00000000000002ELL, 0x800000023A6EADE0, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = *(**(v0 + 48) + 216);
  v20 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 64) = v12;
  *v12 = v0;
  v12[1] = sub_23A697628;
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v0 + 72);
  v16 = *(v0 + 24);
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);

  return (v20)(v18, v16, v17, v13, v15, 0, 0);
}

uint64_t sub_23A697628()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23A697738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a6;
  *(v8 + 85) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB80, &unk_23A6E6DC0) - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A69781C, 0, 0);
}

uint64_t sub_23A69781C()
{
  v34 = v0;
  v1 = *(v0 + 152);
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 152);
  if (v5 == 1)
  {
    sub_23A646DB0(*(v0 + 152), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = *(v0 + 136);
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD00000000000003BLL, 0x800000023A6EAE10, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = *(v0 + 104);
  type metadata accessor for TransactionValidator();
  sub_23A6B4330(v10);
  v11 = sub_23A6B4DAC(*(*(v0 + 104) + 48));
  v12 = sub_23A6B5230(*(v0 + 112), *(*(v0 + 136) + 48));
  *(v0 + 160) = v12;
  v13 = v12;
  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v16 = *(v0 + 85);
  v17 = *(v0 + 104);
  sub_23A6DE884();
  sub_23A69836C(v17, v14, type metadata accessor for PaymentCardTransactionRequest);
  v18 = type metadata accessor for PaymentCardTransactionRequest();
  (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  v33[0] = 4;

  v19 = sub_23A6DB918();
  v20 = sub_23A6DB91C();
  v21 = sub_23A6DB930(2, v14, v19, v11, v13, v20, v16, v33);
  *(v0 + 168) = v21;
  v22 = sub_23A6587D8();
  v23 = *v22;
  *(v0 + 176) = *v22;
  v24 = *(v15 + 32);
  v25 = *(v15 + 40);
  v26 = *(*v23 + 664);

  v32 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  *(v0 + 184) = v28;
  *v28 = v0;
  v28[1] = sub_23A697BE8;
  v29 = *(v0 + 120);
  v30 = *(v0 + 128);

  return v32(v24, v25, v21, v29, v30);
}

uint64_t sub_23A697BE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_23A697DFC;
  }

  else
  {
    v8 = *(v4 + 176);
    *(v4 + 200) = a1;

    v7 = sub_23A697D18;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23A697D18()
{
  v17 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  sub_23A6DA494(v0 + 16);
  sub_23A6DAC24(&v15);

  v8 = v15;
  v9 = v16;
  *v7 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  v12 = *(v0 + 64);
  *(v7 + 61) = *(v0 + 77);
  *(v7 + 32) = v11;
  *(v7 + 48) = v12;
  *(v7 + 16) = v10;
  *v6 = v8;
  *(v6 + 8) = v9;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_23A697DFC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  v4 = v0[24];
  v6 = v0[18];
  v5 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A697E80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  v5[8] = v8;
  v5[9] = v9;
  v5[10] = v10;

  return MEMORY[0x2822009F8](sub_23A697F2C, 0, 0);
}

uint64_t sub_23A697F2C()
{
  v1 = v0[8];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[8];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[8], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[7];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD00000000000002ALL, 0x800000023A6EAE50, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[7];
  v13 = sub_23A6587D8();
  v14 = *v13;
  v0[11] = *v13;
  v15 = *(v12 + 32);
  v16 = *(v12 + 40);
  v0[2] = v11;
  v0[3] = v10;
  v17 = *(*v14 + 680);

  v24 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[12] = v19;
  *v19 = v0;
  v19[1] = sub_23A6981A4;
  v20 = v0[5];
  v21 = v0[6];
  v22 = v0[4];

  return (v24)(v22, v15, v16, v0 + 2, v20, v21);
}

uint64_t sub_23A6981A4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  v4[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A698308, 0, 0);
  }

  else
  {
    v5 = v4[8];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_23A698308()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_23A69836C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23A6983D8()
{
  result = qword_27DF9CB98;
  if (!qword_27DF9CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB98);
  }

  return result;
}

unint64_t sub_23A698430()
{
  result = qword_27DF9CBA0;
  if (!qword_27DF9CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBA0);
  }

  return result;
}

uint64_t type metadata accessor for PaymentCardReaderSession()
{
  result = qword_27DF9F8E0;
  if (!qword_27DF9F8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A6984D8()
{
  sub_23A649120();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PaymentCardReaderSession.cancelRead()()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A64D9F4;

  return v6();
}

uint64_t dispatch thunk of PaymentCardReaderSession.readPaymentCard(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23A647234;

  return v10(a1, a2);
}

{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23A647234;

  return v10(a1, a2);
}

uint64_t dispatch thunk of PaymentCardReaderSession.readPaymentCard(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 168);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23A647234;

  return v14(a1, a2, a3, a4);
}

{
  v10 = *(*v4 + 184);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23A647234;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PaymentCardReaderSession.readVAS(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23A647234;

  return v10(a1, a2);
}

uint64_t dispatch thunk of PaymentCardReaderSession.readVAS(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 200);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23A647234;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PaymentCardReaderSession.readPaymentCard(_:vasRequest:stopOnVASResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 208);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_23A647234;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PaymentCardReaderSession.readPaymentCard(_:vasRequest:stopOnVASResult:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 216);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_23A647140;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of PaymentCardReaderSession.capturePIN(using:cardReaderTransactionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 224);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23A647234;

  return v14(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for PaymentCardReaderSession.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentCardReaderSession.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ProximityReader011PaymentCardB7SessionC9ReadErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A699384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23A6993CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_23A699410(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t static MobileDocumentReader.isSupported.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v19 - v5;
  type metadata accessor for IdentityReaderActor();
  v7 = sub_23A65115C();
  v8 = sub_23A6DCDF0();
  sub_23A69A270(v8, v6);
  v9 = sub_23A6DECC4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_23A69A2E0(v6);
  }

  else
  {
    v11 = sub_23A6DECA4();
    v12 = sub_23A6DF874();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v1;
      v20 = v14;
      *v13 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBA8, &qword_23A6E3058);
      v15 = sub_23A6DF634();
      v17 = sub_23A657E78(v15, v16, &v20);

      *(v13 + 4) = v17;
      *(v13 + 12) = 1024;
      *(v13 + 14) = v7 & 1;
      _os_log_impl(&dword_23A63D000, v11, v12, "%s - isSupported result: %{BOOL}d", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x23EE8A960](v14, -1, -1);
      MEMORY[0x23EE8A960](v13, -1, -1);
    }

    (*(v10 + 8))(v6, v9);
  }

  return v7 & 1;
}

uint64_t MobileDocumentReader.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v13 - v3;
  v5 = swift_allocObject();
  v6 = sub_23A6DCDF0();
  sub_23A69A270(v6, v4);
  v7 = sub_23A6DECC4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_23A69A2E0(v4);
  }

  else
  {

    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v5, 0x292874696E69, 0xE600000000000000, v10, v11);

    (*(v8 + 8))(v4, v7);
  }

  return v5;
}

uint64_t MobileDocumentReader.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v14 - v5;
  v7 = sub_23A6DCDF0();
  sub_23A69A270(v7, v6);
  v8 = sub_23A6DECC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_23A69A2E0(v6);
  }

  else
  {

    v10 = sub_23A6507C0();
    v11 = sub_23A6DCFB0();
    sub_23A6DCFBC(v10 & 1, v1, 0x292874696E69, 0xE600000000000000, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  return v1;
}

uint64_t MobileDocumentReader.configuration.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6999F0, 0, 0);
}

uint64_t sub_23A6999F0()
{
  v1 = v0[4];
  v2 = sub_23A6DCDF0();
  sub_23A69A270(v2, v1);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[4];
  if (v5 == 1)
  {
    sub_23A69A2E0(v0[4]);
  }

  else
  {
    v7 = v0[3];
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v7, 0x72756769666E6F63, 0xED00006E6F697461, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v11 = sub_23A6509F0();
  v12 = *v11;
  v0[5] = *v11;
  v13 = *(*v12 + 136);

  v18 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[6] = v15;
  *v15 = v0;
  v15[1] = sub_23A699C18;
  v16 = v0[2];

  return v18(v16);
}

uint64_t sub_23A699C18()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_23A646BD0;
  }

  else
  {
    v3 = sub_23A699D2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A699D2C()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t MobileDocumentReader.prepare(using:)(_OWORD *a1)
{
  *(v2 + 16) = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = *a1;

  return MEMORY[0x2822009F8](sub_23A699E40, 0, 0);
}

uint64_t sub_23A699E40()
{
  v1 = v0[3];
  v2 = sub_23A6DCDF0();
  sub_23A69A270(v2, v1);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_23A69A2E0(v0[3]);
  }

  else
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = sub_23A6507C0();
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(v7 & 1, v6, 0x2865726170657270, 0xEF293A676E697375, v8, v9);

    (*(v4 + 8))(v5, v3);
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = sub_23A6509F0();
  v13 = *v12;
  v0[6] = *v12;
  if (!v10)
  {
    v11 = 0;
  }

  v14 = *(*v13 + 152);

  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_23A69A078;
  v17 = v0[5];

  return v19(v11, v17);
}

uint64_t sub_23A69A078(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  v5[8] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A69A1E0, 0, 0);
  }

  else
  {
    v7 = v5[5];
    v6 = v5[6];
    v8 = v5[3];

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_23A69A1E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t sub_23A69A270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A69A2E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDocumentReader.Configuration.readerInstanceIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static MobileDocumentReader.Configuration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23A6DFC04();
  }
}

uint64_t MobileDocumentReader.Configuration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23A6DF684();
}

uint64_t MobileDocumentReader.Configuration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A69A44C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_23A69A458()
{
  result = qword_27DF9CBB0;
  if (!qword_27DF9CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBB0);
  }

  return result;
}

uint64_t MobileDocumentReader.Token.tokenString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReader.Token.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MobileDocumentReader.Token.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23A6DFC04();
  }
}

uint64_t MobileDocumentReader.Token.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23A6DF684();
}

uint64_t MobileDocumentReader.Token.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

unint64_t sub_23A69A57C()
{
  result = qword_27DF9CBB8;
  if (!qword_27DF9CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBB8);
  }

  return result;
}

uint64_t MobileDocumentReaderError.errorDescription.getter()
{
  v1 = *v0;
  sub_23A6DEC54();
  v2 = sub_23A6DF674();

  return v2;
}

uint64_t MobileDocumentReaderError.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A69A7EC()
{
  result = qword_27DF9CBC0;
  if (!qword_27DF9CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentReaderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobileDocumentReaderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23A69A998(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MobileDocumentReaderSession.requestDocument<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A69AA7C, 0, 0);
}

uint64_t sub_23A69AA7C()
{
  v1 = v0[7];
  v2 = sub_23A6DCDF0();
  sub_23A69A270(v2, v1);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[7];
  if (v5 == 1)
  {
    sub_23A69A2E0(v0[7]);
  }

  else
  {
    v7 = v0[6];
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v7, 0xD000000000000013, 0x800000023A6EB1F0, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[6];
  v12 = sub_23A6509F0();
  v13 = *v12;
  v0[8] = *v12;
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v16 = *(*v13 + 160);

  v24 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[9] = v18;
  *v18 = v0;
  v18[1] = sub_23A69ACB0;
  v19 = v0[4];
  v20 = v0[5];
  v21 = v0[2];
  v22 = v0[3];

  return v24(v21, v22, v14, v15, v19, v20);
}

uint64_t sub_23A69ACB0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A69ADF8, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_23A69ADF8()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t MobileDocumentReaderSession.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MobileDocumentReaderSession.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t MobileDocumentAnyOfDataRequest.addRequest(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDDataRequest.Element();
  v221 = *(v2 - 8);
  v3 = *(v221 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v219 = &v213 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v220 = &v213 - v8;
  v9 = type metadata accessor for MobileNationalIDCardDataRequest.Element();
  v227 = *(v9 - 8);
  v10 = v227[8];
  MEMORY[0x28223BE20](v9 - 8, v11);
  v225 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v226 = &v213 - v15;
  v16 = type metadata accessor for MobileNationalIDCardDataRequest();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v217 = &v213 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v213 - v22;
  v24 = sub_23A6DE8C4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v213 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_23A6DE9B4();
  v228 = *(v231 - 8);
  v30 = *(v228 + 64);
  MEMORY[0x28223BE20](v231, v31);
  v223 = (&v213 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33, v34);
  v224 = &v213 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v213 - v38;
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v213 - v42;
  MEMORY[0x28223BE20](v44, v45);
  v230 = (&v213 - v46);
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v213 - v49;
  v51 = type metadata accessor for MobileDriversLicenseDataRequest.Element();
  v229 = *(v51 - 8);
  v52 = v229[8];
  MEMORY[0x28223BE20](v51 - 8, v53);
  v222 = &v213 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v213 - v57;
  sub_23A675890(a1, v235);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBC8, &qword_23A6E3380);
  if (swift_dynamicCast())
  {
    v214 = v29;
    v215 = v25;
    v216 = v24;
    v59 = v233;
    v226 = v234;
    v60 = sub_23A69EA14(MEMORY[0x277D84F90]);
    v61 = v59[2];
    v227 = v59;
    v225 = v61;
    if (v61)
    {
      v62 = 0;
      v224 = v59 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
      v63 = (v228 + 16);
      v223 = (v228 + 8);
      do
      {
        if (v62 >= v59[2])
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        sub_23A69EC4C(v224 + v229[9] * v62, v58, type metadata accessor for MobileDriversLicenseDataRequest.Element);
        v64 = *v63;
        (*v63)(v50, v58, v231);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v232 = v60;
        v67 = sub_23A69CEA0(v50);
        v68 = v60[2];
        v69 = (v66 & 1) == 0;
        v70 = v68 + v69;
        if (__OFADD__(v68, v69))
        {
          goto LABEL_102;
        }

        v71 = v66;
        if (v60[3] >= v70)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v60 = v232;
            if (v66)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_23A69DDB4();
            v60 = v232;
            if (v71)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_23A69D350(v70, isUniquelyReferenced_nonNull_native);
          v72 = sub_23A69CEA0(v50);
          if ((v71 & 1) != (v73 & 1))
          {
            goto LABEL_119;
          }

          v67 = v72;
          v60 = v232;
          if (v71)
          {
LABEL_4:
            *(v60[7] + v67) = 1;
            (*v223)(v50, v231);
            sub_23A69ECB4(v58, type metadata accessor for MobileDriversLicenseDataRequest.Element);
            goto LABEL_5;
          }
        }

        v60[(v67 >> 6) + 8] |= 1 << v67;
        v74 = v228;
        v75 = v231;
        v64((v60[6] + *(v228 + 72) * v67), v50, v231);
        *(v60[7] + v67) = 1;
        (*(v74 + 8))(v50, v75);
        sub_23A69ECB4(v58, type metadata accessor for MobileDriversLicenseDataRequest.Element);
        v76 = v60[2];
        v77 = __OFADD__(v76, 1);
        v78 = v76 + 1;
        if (v77)
        {
          goto LABEL_107;
        }

        v60[2] = v78;
LABEL_5:
        ++v62;
        v59 = v227;
      }

      while (v225 != v62);
    }

    v102 = v226;
    v103 = *(v226 + 16);
    if (v103)
    {
      v104 = 0;
      v225 = v226 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
      v105 = (v228 + 16);
      v106 = (v228 + 8);
      v107 = v222;
      while (1)
      {
        if (v104 >= *(v102 + 16))
        {
          goto LABEL_103;
        }

        sub_23A69EC4C(v225 + v229[9] * v104, v107, type metadata accessor for MobileDriversLicenseDataRequest.Element);
        v108 = *v105;
        v109 = v230;
        (*v105)(v230, v107, v231);
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v232 = v60;
        v111 = sub_23A69CEA0(v109);
        v113 = v60[2];
        v114 = (v112 & 1) == 0;
        v77 = __OFADD__(v113, v114);
        v115 = v113 + v114;
        if (v77)
        {
          goto LABEL_104;
        }

        v116 = v112;
        if (v60[3] < v115)
        {
          break;
        }

        if (v110)
        {
          goto LABEL_44;
        }

        v125 = v111;
        sub_23A69DDB4();
        v111 = v125;
        v60 = v232;
        if (v116)
        {
LABEL_36:
          *(v60[7] + v111) = 0;
          (*v106)(v230, v231);
          sub_23A69ECB4(v107, type metadata accessor for MobileDriversLicenseDataRequest.Element);
          goto LABEL_37;
        }

LABEL_45:
        v60[(v111 >> 6) + 8] |= 1 << v111;
        v118 = v228;
        v119 = v111;
        v121 = v230;
        v120 = v231;
        v108(v60[6] + *(v228 + 72) * v111, v230, v231);
        *(v60[7] + v119) = 0;
        v122 = v121;
        v107 = v222;
        (*(v118 + 8))(v122, v120);
        sub_23A69ECB4(v107, type metadata accessor for MobileDriversLicenseDataRequest.Element);
        v123 = v60[2];
        v77 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v77)
        {
          goto LABEL_110;
        }

        v60[2] = v124;
LABEL_37:
        ++v104;
        v102 = v226;
        if (v103 == v104)
        {
          goto LABEL_82;
        }
      }

      sub_23A69D350(v115, v110);
      v111 = sub_23A69CEA0(v230);
      if ((v116 & 1) != (v117 & 1))
      {
        goto LABEL_119;
      }

LABEL_44:
      v60 = v232;
      if (v116)
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }

LABEL_82:

    v178 = v215;
    v179 = v214;
    v180 = v216;
    (*(v215 + 104))(v214, *MEMORY[0x277D43920], v216);

    v181 = v218;
    v182 = *v218;
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v232 = *v181;
    *v181 = 0x8000000000000000;
    sub_23A69D710(v60, v179, v183);
    (*(v178 + 8))(v179, v180);
    goto LABEL_83;
  }

  if (swift_dynamicCast())
  {
    v79 = v16;
    v214 = v29;
    v215 = v25;
    v216 = v24;
    v80 = v217;
    sub_23A69EBE8(v23, v217);
    v81 = sub_23A69EA14(MEMORY[0x277D84F90]);
    v82 = v79;
    v83 = v81;
    v222 = v82;
    v84 = *(v80 + *(v82 + 5));
    v229 = *(v84 + 16);
    if (v229)
    {
      v85 = 0;
      v224 = v84 + ((*(v227 + 80) + 32) & ~*(v227 + 80));
      v230 = (v228 + 16);
      v223 = (v228 + 8);
      while (1)
      {
        if (v85 >= *(v84 + 16))
        {
          goto LABEL_105;
        }

        v86 = v226;
        sub_23A69EC4C(v224 + v227[9] * v85, v226, type metadata accessor for MobileNationalIDCardDataRequest.Element);
        v87 = *v230;
        (*v230)(v43, v86, v231);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v233 = v83;
        v89 = sub_23A69CEA0(v43);
        v91 = v83[2];
        v92 = (v90 & 1) == 0;
        v77 = __OFADD__(v91, v92);
        v93 = v91 + v92;
        if (v77)
        {
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
          goto LABEL_112;
        }

        v94 = v90;
        if (v83[3] < v93)
        {
          break;
        }

        if (v88)
        {
          goto LABEL_29;
        }

        v101 = v89;
        sub_23A69DDB4();
        v89 = v101;
        v83 = v233;
        if (v94)
        {
LABEL_21:
          *(v83[7] + v89) = 1;
          (*v223)(v43, v231);
          sub_23A69ECB4(v226, type metadata accessor for MobileNationalIDCardDataRequest.Element);
          goto LABEL_22;
        }

LABEL_30:
        v83[(v89 >> 6) + 8] |= 1 << v89;
        v96 = v228;
        v97 = v89;
        v98 = v231;
        v87(v83[6] + *(v228 + 72) * v89, v43, v231);
        *(v83[7] + v97) = 1;
        (*(v96 + 8))(v43, v98);
        sub_23A69ECB4(v226, type metadata accessor for MobileNationalIDCardDataRequest.Element);
        v99 = v83[2];
        v77 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v77)
        {
          goto LABEL_113;
        }

        v83[2] = v100;
LABEL_22:
        if (v229 == ++v85)
        {
          goto LABEL_66;
        }
      }

      sub_23A69D350(v93, v88);
      v89 = sub_23A69CEA0(v43);
      if ((v94 & 1) != (v95 & 1))
      {
        goto LABEL_119;
      }

LABEL_29:
      v83 = v233;
      if (v94)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

LABEL_66:
    v150 = *(v217 + *(v222 + 6));
    v230 = *(v150 + 16);
    if (v230)
    {
      v151 = 0;
      v229 = (v150 + ((*(v227 + 80) + 32) & ~*(v227 + 80)));
      v152 = (v228 + 16);
      v153 = (v228 + 8);
      while (1)
      {
        if (v151 >= *(v150 + 16))
        {
          goto LABEL_108;
        }

        v154 = v225;
        sub_23A69EC4C(v229 + v227[9] * v151, v225, type metadata accessor for MobileNationalIDCardDataRequest.Element);
        v155 = *v152;
        (*v152)(v39, v154, v231);
        v156 = swift_isUniquelyReferenced_nonNull_native();
        v233 = v83;
        v157 = sub_23A69CEA0(v39);
        v159 = v83[2];
        v160 = (v158 & 1) == 0;
        v77 = __OFADD__(v159, v160);
        v161 = v159 + v160;
        if (v77)
        {
          goto LABEL_109;
        }

        v162 = v158;
        if (v83[3] < v161)
        {
          break;
        }

        if (v156)
        {
          goto LABEL_76;
        }

        v169 = v157;
        sub_23A69DDB4();
        v157 = v169;
        v83 = v233;
        if (v162)
        {
LABEL_68:
          *(v83[7] + v157) = 0;
          (*v153)(v39, v231);
          sub_23A69ECB4(v225, type metadata accessor for MobileNationalIDCardDataRequest.Element);
          goto LABEL_69;
        }

LABEL_77:
        v83[(v157 >> 6) + 8] |= 1 << v157;
        v164 = v228;
        v165 = v157;
        v166 = v231;
        v155((v83[6] + *(v228 + 72) * v157), v39, v231);
        *(v83[7] + v165) = 0;
        (*(v164 + 8))(v39, v166);
        sub_23A69ECB4(v225, type metadata accessor for MobileNationalIDCardDataRequest.Element);
        v167 = v83[2];
        v77 = __OFADD__(v167, 1);
        v168 = v167 + 1;
        if (v77)
        {
          goto LABEL_116;
        }

        v83[2] = v168;
LABEL_69:
        if (v230 == ++v151)
        {
          goto LABEL_81;
        }
      }

      sub_23A69D350(v161, v156);
      v157 = sub_23A69CEA0(v39);
      if ((v162 & 1) != (v163 & 1))
      {
        goto LABEL_119;
      }

LABEL_76:
      v83 = v233;
      if (v162)
      {
        goto LABEL_68;
      }

      goto LABEL_77;
    }

LABEL_81:
    v170 = sub_23A6DE314();
    v171 = v214;
    v172 = v217;
    (*(*(v170 - 8) + 16))(v214, v217, v170);
    v173 = v215;
    v174 = v216;
    (*(v215 + 104))(v171, *MEMORY[0x277D43928], v216);

    v175 = v218;
    v176 = *v218;
    v177 = swift_isUniquelyReferenced_nonNull_native();
    v233 = *v175;
    *v175 = 0x8000000000000000;
    sub_23A69D710(v83, v171, v177);
    (*(v173 + 8))(v171, v174);
    *v175 = v233;
    sub_23A69ECB4(v172, type metadata accessor for MobileNationalIDCardDataRequest);

    return __swift_destroy_boxed_opaque_existential_1Tm(v235);
  }

  if (!swift_dynamicCast())
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v235);
  }

  v214 = v29;
  v215 = v25;
  v216 = v24;
  v126 = v233;
  v226 = v234;
  v127 = sub_23A69EA14(MEMORY[0x277D84F90]);
  v128 = v126[2];
  v229 = v126;
  if (!v128)
  {
LABEL_85:
    v185 = v226;
    v186 = *(v226 + 16);
    if (!v186)
    {
LABEL_100:

      v208 = v215;
      v209 = v214;
      v210 = v216;
      (*(v215 + 104))(v214, *MEMORY[0x277D43930], v216);

      v181 = v218;
      v211 = *v218;
      v212 = swift_isUniquelyReferenced_nonNull_native();
      v232 = *v181;
      *v181 = 0x8000000000000000;
      sub_23A69D710(v127, v209, v212);
      (*(v208 + 8))(v209, v210);
LABEL_83:

      *v181 = v232;
      return __swift_destroy_boxed_opaque_existential_1Tm(v235);
    }

    v187 = 0;
    v230 = (v226 + ((*(v221 + 80) + 32) & ~*(v221 + 80)));
    v188 = (v228 + 16);
    v189 = (v228 + 8);
    while (1)
    {
      if (v187 >= *(v185 + 16))
      {
        goto LABEL_114;
      }

      v190 = v219;
      sub_23A69EC4C(v230 + *(v221 + 72) * v187, v219, type metadata accessor for MobilePhotoIDDataRequest.Element);
      v191 = *v188;
      v192 = v223;
      (*v188)(v223, v190, v231);
      v193 = swift_isUniquelyReferenced_nonNull_native();
      v232 = v127;
      v194 = sub_23A69CEA0(v192);
      v196 = v127[2];
      v197 = (v195 & 1) == 0;
      v77 = __OFADD__(v196, v197);
      v198 = v196 + v197;
      if (v77)
      {
        goto LABEL_115;
      }

      v199 = v195;
      if (v127[3] < v198)
      {
        break;
      }

      if (v193)
      {
        goto LABEL_95;
      }

      v207 = v194;
      sub_23A69DDB4();
      v194 = v207;
      v127 = v232;
      if (v199)
      {
LABEL_87:
        *(v127[7] + v194) = 0;
        (*v189)(v223, v231);
        sub_23A69ECB4(v219, type metadata accessor for MobilePhotoIDDataRequest.Element);
        goto LABEL_88;
      }

LABEL_96:
      v127[(v194 >> 6) + 8] |= 1 << v194;
      v201 = v228;
      v202 = v194;
      v203 = v223;
      v204 = v231;
      v191((v127[6] + *(v228 + 72) * v194), v223, v231);
      *(v127[7] + v202) = 0;
      (*(v201 + 8))(v203, v204);
      sub_23A69ECB4(v219, type metadata accessor for MobilePhotoIDDataRequest.Element);
      v205 = v127[2];
      v77 = __OFADD__(v205, 1);
      v206 = v205 + 1;
      if (v77)
      {
        goto LABEL_118;
      }

      v127[2] = v206;
      v185 = v226;
LABEL_88:
      if (v186 == ++v187)
      {
        goto LABEL_100;
      }
    }

    sub_23A69D350(v198, v193);
    v194 = sub_23A69CEA0(v223);
    if ((v199 & 1) != (v200 & 1))
    {
      goto LABEL_119;
    }

LABEL_95:
    v127 = v232;
    if (v199)
    {
      goto LABEL_87;
    }

    goto LABEL_96;
  }

  v129 = 0;
  v130 = v126 + ((*(v221 + 80) + 32) & ~*(v221 + 80));
  v230 = (v228 + 16);
  v227 = (v228 + 8);
  while (1)
  {
    if (v129 >= v229[2])
    {
      goto LABEL_111;
    }

    v131 = v220;
    sub_23A69EC4C(v130 + *(v221 + 72) * v129, v220, type metadata accessor for MobilePhotoIDDataRequest.Element);
    v132 = *v230;
    v133 = v224;
    (*v230)(v224, v131, v231);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v232 = v127;
    v135 = sub_23A69CEA0(v133);
    v137 = v127[2];
    v138 = (v136 & 1) == 0;
    v77 = __OFADD__(v137, v138);
    v139 = v137 + v138;
    if (v77)
    {
      break;
    }

    v140 = v136;
    if (v127[3] < v139)
    {
      sub_23A69D350(v139, v134);
      v135 = sub_23A69CEA0(v224);
      if ((v140 & 1) != (v141 & 1))
      {
        goto LABEL_119;
      }

LABEL_61:
      v127 = v232;
      if (v140)
      {
        goto LABEL_53;
      }

      goto LABEL_62;
    }

    if (v134)
    {
      goto LABEL_61;
    }

    v149 = v135;
    sub_23A69DDB4();
    v135 = v149;
    v127 = v232;
    if (v140)
    {
LABEL_53:
      *(v127[7] + v135) = 1;
      (*v227)(v224, v231);
      sub_23A69ECB4(v220, type metadata accessor for MobilePhotoIDDataRequest.Element);
      goto LABEL_54;
    }

LABEL_62:
    v142 = v130;
    v127[(v135 >> 6) + 8] |= 1 << v135;
    v143 = v228;
    v144 = v135;
    v145 = v224;
    v146 = v231;
    v132(v127[6] + *(v228 + 72) * v135, v224, v231);
    *(v127[7] + v144) = 1;
    (*(v143 + 8))(v145, v146);
    sub_23A69ECB4(v220, type metadata accessor for MobilePhotoIDDataRequest.Element);
    v147 = v127[2];
    v77 = __OFADD__(v147, 1);
    v148 = v147 + 1;
    if (v77)
    {
      goto LABEL_117;
    }

    v127[2] = v148;
    v130 = v142;
LABEL_54:
    if (v128 == ++v129)
    {
      goto LABEL_85;
    }
  }

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
  result = sub_23A6DFC54();
  __break(1u);
  return result;
}

void sub_23A69C3F0(uint64_t a1, uint64_t a2)
{
  v63 = sub_23A6DE8C4();
  v58 = *(v63 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v63, v5);
  v59 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v57 = v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF0, &unk_23A6E6190);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v60 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v15);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v56 = v53 - v16;
    v18 = 0;
    v54 = a1;
    v21 = *(a1 + 64);
    v20 = a1 + 64;
    v19 = v21;
    v22 = 1 << *(v20 - 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v19;
    v25 = (v22 + 63) >> 6;
    v53[0] = v20;
    v53[1] = v58 + 16;
    v61 = (v58 + 32);
    v55 = (v58 + 8);
    while (v24)
    {
      v62 = (v24 - 1) & v24;
      v26 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
      v31 = v54;
      v32 = v57;
      v33 = v58;
      v34 = v63;
      (*(v58 + 16))(v57, *(v54 + 48) + *(v58 + 72) * v26, v63, v17);
      v35 = *(*(v31 + 56) + 8 * v26);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
      v37 = *(v36 + 48);
      v38 = *(v33 + 32);
      v39 = v60;
      v38(v60, v32, v34);
      *(v39 + v37) = v35;
      (*(*(v36 - 8) + 56))(v39, 0, 1, v36);

LABEL_17:
      v40 = v56;
      sub_23A69EED0(v39, v56, &qword_27DF9CBF0, &unk_23A6E6190);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
        return;
      }

      v42 = *(v41 + 48);
      v43 = v59;
      v44 = v63;
      (*v61)(v59, v40, v63);
      v45 = *(v40 + v42);
      v46 = sub_23A69CDCC(v43);
      LOBYTE(v42) = v47;
      (*v55)(v43, v44);
      if ((v42 & 1) == 0)
      {

        return;
      }

      v48 = *(*(a2 + 56) + 8 * v46);

      sub_23A69C87C(v49, v45);
      v51 = v50;

      v24 = v62;
      if ((v51 & 1) == 0)
      {
        return;
      }
    }

    if (v25 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v25;
    }

    v28 = v27 - 1;
    while (1)
    {
      v29 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v29 >= v25)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
        v39 = v60;
        (*(*(v52 - 8) + 56))(v60, 1, 1, v52);
        v62 = 0;
        v18 = v28;
        goto LABEL_17;
      }

      v30 = *(v53[0] + 8 * v29);
      ++v18;
      if (v30)
      {
        v62 = (v30 - 1) & v30;
        v26 = __clz(__rbit64(v30)) | (v29 << 6);
        v18 = v29;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_23A69C87C(uint64_t a1, uint64_t a2)
{
  v60 = sub_23A6DE9B4();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v60, v5);
  v56 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v54 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBE8, &unk_23A6E3450);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v17 = MEMORY[0x28223BE20](v13, v14);
  v18 = v50 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v53 = v16;
    v19 = 0;
    v51 = a1;
    v22 = *(a1 + 64);
    v21 = a1 + 64;
    v20 = v22;
    v23 = 1 << *(v21 - 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v20;
    v26 = (v23 + 63) >> 6;
    v50[0] = v21;
    v50[1] = v55 + 16;
    v57 = v50 - v15;
    v58 = (v55 + 32);
    v52 = (v55 + 8);
    while (v25)
    {
      v59 = (v25 - 1) & v25;
      v27 = __clz(__rbit64(v25)) | (v19 << 6);
LABEL_16:
      v32 = v51;
      v33 = v54;
      v34 = v55;
      v35 = v60;
      (*(v55 + 16))(v54, *(v51 + 48) + *(v55 + 72) * v27, v60, v17);
      v36 = *(*(v32 + 56) + v27);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
      v38 = *(v37 + 48);
      v39 = *(v34 + 32);
      v40 = v53;
      v39(v53, v33, v35);
      *(v40 + v38) = v36;
      (*(*(v37 - 8) + 56))(v40, 0, 1, v37);
      v18 = v57;
LABEL_17:
      sub_23A69EED0(v40, v18, &qword_27DF9CBE8, &unk_23A6E3450);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
      if ((*(*(v41 - 8) + 48))(v18, 1, v41) != 1)
      {
        v42 = *(v41 + 48);
        v43 = v56;
        v44 = v60;
        (*v58)(v56, v18, v60);
        v45 = v18[v42];
        v46 = sub_23A69CEA0(v43);
        LOBYTE(v42) = v47;
        (*v52)(v43, v44);
        if (v42)
        {
          v48 = v45 == *(*(a2 + 56) + v46);
          v18 = v57;
          v25 = v59;
          if (v48)
          {
            continue;
          }
        }
      }

      return;
    }

    if (v26 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v26;
    }

    v29 = v28 - 1;
    while (1)
    {
      v30 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v30 >= v26)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
        v40 = v53;
        (*(*(v49 - 8) + 56))(v53, 1, 1, v49);
        v59 = 0;
        v19 = v29;
        goto LABEL_17;
      }

      v31 = *(v50[0] + 8 * v30);
      ++v19;
      if (v31)
      {
        v59 = (v31 - 1) & v31;
        v27 = __clz(__rbit64(v31)) | (v30 << 6);
        v19 = v30;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t MobileDocumentAnyOfDataRequest.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A69E024(v3, v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A69CD2C()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A69E024(v3, v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A69CD7C()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A69E024(v3, v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A69CDCC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23A6DE8C4();
  v5 = MEMORY[0x277D43938];
  sub_23A69EF38(&qword_27DF9CC00, MEMORY[0x277D43938]);
  v6 = sub_23A6DF5D4();
  return sub_23A69D994(a1, v6, MEMORY[0x277D43938], &qword_27DF9CC18, v5, MEMORY[0x277D43948]);
}

unint64_t sub_23A69CEA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23A6DE9B4();
  v5 = MEMORY[0x277D43AE8];
  sub_23A69EF38(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  v6 = sub_23A6DF5D4();
  return sub_23A69D994(a1, v6, MEMORY[0x277D43AE8], &qword_27DF9CC30, v5, MEMORY[0x277D43AF8]);
}

uint64_t sub_23A69CF74(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23A6DE8C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC28, &qword_23A6E61B0);
  v44 = a2;
  result = sub_23A6DFB74();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v12;
    v43 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      v30 = *(v15 + 40);
      sub_23A69EF38(&qword_27DF9CC00, MEMORY[0x277D43938]);
      result = sub_23A6DF5D4();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v47 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v12 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_23A69D350(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23A6DE9B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC20, &unk_23A6E3470);
  v45 = a2;
  result = sub_23A6DFB74();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v41 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v42 = (v7 + 16);
    v43 = v7;
    v46 = (v7 + 32);
    v22 = result + 64;
    v44 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_17:
      v28 = v24 | (v16 << 6);
      v47 = v25;
      v29 = *(v7 + 72);
      v30 = *(v12 + 48) + v29 * v28;
      if (v45)
      {
        (*v46)(v48, v30, v6);
      }

      else
      {
        (*v42)(v48, v30, v6);
      }

      v31 = *(*(v12 + 56) + v28);
      v32 = *(v15 + 40);
      sub_23A69EF38(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
      result = sub_23A6DF5D4();
      v33 = -1 << *(v15 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v35);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v46)(*(v15 + 48) + v29 * v23, v48, v6);
      *(*(v15 + 56) + v23) = v31;
      ++*(v15 + 16);
      v7 = v43;
      v12 = v44;
      v20 = v47;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_23A69D710(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23A6DE8C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_23A69CDCC(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_23A69DB34();
      goto LABEL_7;
    }

    sub_23A69CF74(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_23A69CDCC(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_23A69D8DC(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_23A6DFC54();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_23A69D8DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23A6DE8C4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_23A69D994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v24[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v24 - v13;
  v25 = v6;
  v15 = -1 << *(v6 + 32);
  v16 = a2 & ~v15;
  v24[0] = v6 + 64;
  if ((*(v6 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v14, *(v25 + 48) + v21 * v16, v8, v12);
      sub_23A69EF38(v26, v27);
      v22 = sub_23A6DF604();
      (*(v19 - 8))(v14, v8);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v24[0] + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return v16;
}

char *sub_23A69DB34()
{
  v1 = v0;
  v35 = sub_23A6DE8C4();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC28, &qword_23A6E61B0);
  v5 = *v0;
  v6 = sub_23A6DFB64();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
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

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
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

char *sub_23A69DDB4()
{
  v1 = v0;
  v33 = sub_23A6DE9B4();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v33, v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC20, &unk_23A6E3470);
  v5 = *v0;
  v6 = sub_23A6DFB64();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + v20);
        v26 = v34;
        result = (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + v20) = v25;
        v15 = v36;
      }

      while (v36);
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

        v1 = v28;
        v7 = v34;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
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

uint64_t sub_23A69E024(__int128 *a1, uint64_t a2)
{
  v98 = a1;
  v113 = sub_23A6DE9B4();
  v3 = *(v113 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v113, v5);
  v110 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v106 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBE8, &unk_23A6E3450);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v87 - v17;
  v19 = sub_23A6DE8C4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v96 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v91 = &v87 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF0, &unk_23A6E6190);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v97 = &v87 - v34;
  v35 = *(a2 + 64);
  v89 = a2 + 64;
  v36 = 1 << *(a2 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & v35;
  v88 = (v36 + 63) >> 6;
  v90 = v20 + 16;
  v102 = (v20 + 32);
  v92 = v20;
  v95 = (v20 + 8);
  v104 = v3 + 16;
  v112 = (v3 + 32);
  v107 = v3;
  v109 = (v3 + 8);
  v93 = a2;

  v40 = 0;
  v41 = 0;
  v105 = v18;
  v99 = v31;
  v111 = v14;
  v94 = v19;
  while (1)
  {
    v103 = v40;
    if (!v38)
    {
      break;
    }

    v42 = v41;
LABEL_15:
    v101 = (v38 - 1) & v38;
    v45 = __clz(__rbit64(v38)) | (v42 << 6);
    v46 = v93;
    v47 = v92;
    v48 = v91;
    (*(v92 + 16))(v91, *(v93 + 48) + *(v92 + 72) * v45, v19);
    v49 = *(*(v46 + 56) + 8 * v45);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
    v51 = *(v50 + 48);
    v52 = *(v47 + 32);
    v31 = v99;
    v52(v99, v48, v19);
    *&v31[v51] = v49;
    (*(*(v50 - 8) + 56))(v31, 0, 1, v50);

    v44 = v42;
LABEL_16:
    v53 = v97;
    sub_23A69EED0(v31, v97, &qword_27DF9CBF0, &unk_23A6E6190);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
    if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
    {
      goto LABEL_36;
    }

    v100 = v44;
    v55 = *(v54 + 48);
    v56 = v96;
    (*v102)(v96, v53, v19);
    v57 = *(v53 + v55);
    v58 = v98[3];
    v122 = v98[2];
    v123 = v58;
    v124 = *(v98 + 8);
    v59 = v98[1];
    v120 = *v98;
    v121 = v59;
    sub_23A69EF38(&qword_27DF9CC00, MEMORY[0x277D43938]);
    sub_23A6DF5E4();
    (*v95)(v56, v19);
    v60 = v57 + 64;
    v61 = 1 << *(v57 + 32);
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    else
    {
      v62 = -1;
    }

    v63 = v62 & *(v57 + 64);
    v64 = (v61 + 63) >> 6;
    v108 = v57;

    v65 = 0;
    v114 = 0;
    if (!v63)
    {
LABEL_22:
      if (v64 <= v65 + 1)
      {
        v67 = v65 + 1;
      }

      else
      {
        v67 = v64;
      }

      v68 = v67 - 1;
      v69 = v111;
      while (1)
      {
        v66 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v66 >= v64)
        {
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
          (*(*(v85 - 8) + 56))(v69, 1, 1, v85);
          v63 = 0;
          goto LABEL_30;
        }

        v63 = *(v60 + 8 * v66);
        ++v65;
        if (v63)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_36:

      return MEMORY[0x23EE8A1E0](v103);
    }

    while (1)
    {
      v66 = v65;
LABEL_29:
      v70 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      v71 = v70 | (v66 << 6);
      v72 = v108;
      v73 = v107;
      v74 = v106;
      v75 = v113;
      (*(v107 + 16))(v106, *(v108 + 48) + *(v107 + 72) * v71, v113);
      LOBYTE(v72) = *(*(v72 + 56) + v71);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
      v77 = *(v76 + 48);
      v78 = *(v73 + 32);
      v69 = v111;
      v78(v111, v74, v75);
      *(v69 + v77) = v72;
      (*(*(v76 - 8) + 56))(v69, 0, 1, v76);
      v68 = v66;
      v18 = v105;
LABEL_30:
      sub_23A69EED0(v69, v18, &qword_27DF9CBE8, &unk_23A6E3450);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
      if ((*(*(v79 - 8) + 48))(v18, 1, v79) == 1)
      {
        break;
      }

      v80 = *(v79 + 48);
      v81 = v110;
      v82 = v113;
      (*v112)(v110, v18, v113);
      v83 = v18[v80];
      v117 = v122;
      v118 = v123;
      v119 = v124;
      v115 = v120;
      v116 = v121;
      sub_23A69EF38(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
      sub_23A6DF5E4();
      (*v109)(v81, v82);
      sub_23A6DFD04();
      v84 = sub_23A6DFD14();
      v65 = v68;
      v114 ^= v84;
      if (!v63)
      {
        goto LABEL_22;
      }
    }

    MEMORY[0x23EE8A1E0](v114);

    result = sub_23A6DFD14();
    v40 = result ^ v103;
    v41 = v100;
    v19 = v94;
    v31 = v99;
    v38 = v101;
  }

  if (v88 <= v41 + 1)
  {
    v43 = v41 + 1;
  }

  else
  {
    v43 = v88;
  }

  v44 = v43 - 1;
  while (1)
  {
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v42 >= v88)
    {
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
      (*(*(v86 - 8) + 56))(v31, 1, 1, v86);
      v101 = 0;
      goto LABEL_16;
    }

    v38 = *(v89 + 8 * v42);
    ++v41;
    if (v38)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23A69EA14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC38, &qword_23A6E3480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC20, &unk_23A6E3470);
    v9 = sub_23A6DFB84();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_23A69EF80(v11, v7);
      result = sub_23A69CEA0(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_23A6DE9B4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + v15) = v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23A69EBE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDataRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A69EC4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A69ECB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A69ED5C(uint64_t a1)
{
  result = sub_23A69ED84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A69ED84()
{
  result = qword_27DF9CBD8;
  if (!qword_27DF9CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBD8);
  }

  return result;
}

unint64_t sub_23A69EDDC()
{
  result = qword_27DF9CBE0;
  if (!qword_27DF9CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBE0);
  }

  return result;
}

uint64_t sub_23A69EE3C(uint64_t *a1, int a2)
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

uint64_t sub_23A69EE84(uint64_t result, int a2, int a3)
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

uint64_t sub_23A69EED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A69EF38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A69EF80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC38, &qword_23A6E3480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A69EFF0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobileDocumentAnyOfDataRequest.Response.documentResponse.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A69EFF0(v2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v18 = type metadata accessor for MobileDriversLicenseDataRequest.Response();
    v10 = sub_23A69F258(&qword_27DF9CC50, type metadata accessor for MobileDriversLicenseDataRequest.Response);
    v11 = type metadata accessor for MobileDriversLicenseDataRequest.Response;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18 = type metadata accessor for MobileNationalIDCardDataRequest.Response();
    v10 = sub_23A69F258(&qword_27DF9CC48, type metadata accessor for MobileNationalIDCardDataRequest.Response);
    v11 = type metadata accessor for MobileNationalIDCardDataRequest.Response;
LABEL_5:
    v12 = v11;
    v19 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    sub_23A69F2A0(v8, boxed_opaque_existential_1, v12);
    return sub_23A63F73C(&v17, a1);
  }

  a1[3] = type metadata accessor for MobilePhotoIDDataRequest.Response();
  a1[4] = sub_23A69F258(&qword_27DF9CC40, type metadata accessor for MobilePhotoIDDataRequest.Response);
  v15 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_23A69F2A0(v8, v15, type metadata accessor for MobilePhotoIDDataRequest.Response);
}

uint64_t sub_23A69F258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A69F2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15ProximityReader30MobileDocumentAnyOfDataRequestV8ResponseV4hash4intoys6HasherVz_tF_0()
{
  v1 = type metadata accessor for MobilePhotoIDDataRequest.Response();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileNationalIDCardDataRequest.Response();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MobileDriversLicenseDataRequest.Response();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A69EFF0(v0, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23A69F2A0(v20, v10, type metadata accessor for MobileNationalIDCardDataRequest.Response);
      MEMORY[0x23EE8A1E0](1);
      sub_23A69F258(&qword_27DF9CC60, type metadata accessor for MobileNationalIDCardDataRequest.Response);
      sub_23A6DF5E4();
      v22 = v10;
      v23 = type metadata accessor for MobileNationalIDCardDataRequest.Response;
    }

    else
    {
      sub_23A69F2A0(v20, v5, type metadata accessor for MobilePhotoIDDataRequest.Response);
      MEMORY[0x23EE8A1E0](2);
      sub_23A69F258(&qword_27DF9CC58, type metadata accessor for MobilePhotoIDDataRequest.Response);
      sub_23A6DF5E4();
      v22 = v5;
      v23 = type metadata accessor for MobilePhotoIDDataRequest.Response;
    }
  }

  else
  {
    sub_23A69F2A0(v20, v15, type metadata accessor for MobileDriversLicenseDataRequest.Response);
    MEMORY[0x23EE8A1E0](0);
    sub_23A69F258(&qword_27DF9CC68, type metadata accessor for MobileDriversLicenseDataRequest.Response);
    sub_23A6DF5E4();
    v22 = v15;
    v23 = type metadata accessor for MobileDriversLicenseDataRequest.Response;
  }

  return sub_23A69FACC(v22, v23);
}

uint64_t sub_23A69F660()
{
  sub_23A6DFCE4();
  _s15ProximityReader30MobileDocumentAnyOfDataRequestV8ResponseV4hash4intoys6HasherVz_tF_0();
  return sub_23A6DFD14();
}

uint64_t sub_23A69F6A8()
{
  sub_23A6DFCE4();
  _s15ProximityReader30MobileDocumentAnyOfDataRequestV8ResponseV4hash4intoys6HasherVz_tF_0();
  return sub_23A6DFD14();
}

uint64_t _s15ProximityReader30MobileDocumentAnyOfDataRequestV8ResponseV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = type metadata accessor for MobilePhotoIDDataRequest.Response();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileNationalIDCardDataRequest.Response();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MobileDriversLicenseDataRequest.Response();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v46 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v46 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC80, &qword_23A6E3578);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = &v46 - v34;
  v37 = *(v36 + 56);
  sub_23A69EFF0(a1, &v46 - v34);
  sub_23A69EFF0(v47, &v35[v37]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23A69EFF0(v35, v26);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = type metadata accessor for MobileNationalIDCardDataRequest.Response;
        sub_23A69F2A0(&v35[v37], v12, type metadata accessor for MobileNationalIDCardDataRequest.Response);
        v40 = static MobileNationalIDCardDataRequest.Response.== infix(_:_:)();
        sub_23A69FACC(v12, type metadata accessor for MobileNationalIDCardDataRequest.Response);
        v41 = v26;
LABEL_13:
        v44 = v39;
        goto LABEL_14;
      }

      v42 = type metadata accessor for MobileNationalIDCardDataRequest.Response;
      v43 = v26;
    }

    else
    {
      sub_23A69EFF0(v35, v22);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_23A69F2A0(&v35[v37], v7, type metadata accessor for MobilePhotoIDDataRequest.Response);
        v40 = static MobilePhotoIDDataRequest.Response.== infix(_:_:)(v22, v7);
        sub_23A69FACC(v7, type metadata accessor for MobilePhotoIDDataRequest.Response);
        v41 = v22;
        v44 = type metadata accessor for MobilePhotoIDDataRequest.Response;
LABEL_14:
        sub_23A69FACC(v41, v44);
        sub_23A69FACC(v35, _s14descr284D50EA1O8ResponseV15InternalStorageOMa);
        return v40 & 1;
      }

      v42 = type metadata accessor for MobilePhotoIDDataRequest.Response;
      v43 = v22;
    }
  }

  else
  {
    sub_23A69EFF0(v35, v30);
    if (!swift_getEnumCaseMultiPayload())
    {
      v39 = type metadata accessor for MobileDriversLicenseDataRequest.Response;
      sub_23A69F2A0(&v35[v37], v17, type metadata accessor for MobileDriversLicenseDataRequest.Response);
      v40 = static MobileDriversLicenseDataRequest.Response.== infix(_:_:)(v30, v17);
      sub_23A69FACC(v17, type metadata accessor for MobileDriversLicenseDataRequest.Response);
      v41 = v30;
      goto LABEL_13;
    }

    v42 = type metadata accessor for MobileDriversLicenseDataRequest.Response;
    v43 = v30;
  }

  sub_23A69FACC(v43, v42);
  sub_23A69FCF8(v35);
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_23A69FACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A69FC04()
{
  result = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23A69FC70()
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MobileNationalIDCardDataRequest.Response();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MobilePhotoIDDataRequest.Response();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23A69FCF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC80, &qword_23A6E3578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDriversLicenseDataRequest.retainedElements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MobileDriversLicenseDataRequest.nonRetainedElements.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MobileDriversLicenseDataRequest.init(retainedElements:nonRetainedElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MobileDriversLicenseDataRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A69FE80(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A69FE80(v2, v3);
}

uint64_t sub_23A69FE80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Element();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_23A6A0258(v16, v13);
        sub_23A6A0258(v17, v8);
        sub_23A6A0C30(&qword_27DF9CCA8, type metadata accessor for MobileDriversLicenseDataRequest.Element);
        v19 = sub_23A6DF604();
        sub_23A6A02BC(v8);
        sub_23A6A02BC(v13);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileDriversLicenseDataRequest.hash(into:)()
{
  v1 = type metadata accessor for MobileDriversLicenseDataRequest.Element();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v15 = *(v21 + 72);
    do
    {
      sub_23A6A0258(v14, v10);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v12 + 16));
  v17 = *(v12 + 16);
  if (v17)
  {
    v18 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v19 = *(v21 + 72);
    do
    {
      sub_23A6A0258(v18, v5);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6A02BC(v5);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_23A6A0258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6A02BC(uint64_t a1)
{
  v2 = type metadata accessor for MobileDriversLicenseDataRequest.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDriversLicenseDataRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobileDriversLicenseDataRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    do
    {
      sub_23A6A0258(v14, v10);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_23A6A0258(v17, v6);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v6);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6A0538()
{
  v1 = type metadata accessor for MobileDriversLicenseDataRequest.Element();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v15 = *(v21 + 72);
    do
    {
      sub_23A6A0258(v14, v10);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v12 + 16));
  v17 = *(v12 + 16);
  if (v17)
  {
    v18 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v19 = *(v21 + 72);
    do
    {
      sub_23A6A0258(v18, v5);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6A02BC(v5);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_23A6A074C()
{
  v1 = type metadata accessor for MobileDriversLicenseDataRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    do
    {
      sub_23A6A0258(v14, v10);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_23A6A0258(v17, v6);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v6);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6A096C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A69FE80(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A69FE80(v2, v3);
}

uint64_t static MobileDocumentRequest<>.driversLicenseData(retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

unint64_t sub_23A6A0A4C(uint64_t a1)
{
  result = sub_23A6A0A74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6A0A74()
{
  result = qword_27DF9CC90;
  if (!qword_27DF9CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CC90);
  }

  return result;
}

unint64_t sub_23A6A0ACC()
{
  result = qword_27DF9CC98;
  if (!qword_27DF9CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CC98);
  }

  return result;
}

unint64_t sub_23A6A0B20(uint64_t a1)
{
  result = sub_23A6A0B48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6A0B48()
{
  result = qword_27DF9CCA0;
  if (!qword_27DF9CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CCA0);
  }

  return result;
}

uint64_t sub_23A6A0B9C(uint64_t *a1, int a2)
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

uint64_t sub_23A6A0BE4(uint64_t result, int a2, int a3)
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

uint64_t sub_23A6A0C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for MobileDriversLicenseDataRequest.Element()
{
  result = qword_27DFA05F0;
  if (!qword_27DFA05F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6A1100(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDriversLicenseDataRequest.Element();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6A11C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileDriversLicenseDataRequest.Element();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6A0258(v6, a3);
}

uint64_t static MobileDriversLicenseDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileDriversLicenseDataRequest.Element.hash(into:)()
{
  sub_23A6DE9B4();
  sub_23A6A1580(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6A1580(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A13A8()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6A1580(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A1430()
{
  sub_23A6DE9B4();
  sub_23A6A1580(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6A14B4()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6A1580(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A1580(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6A15F4()
{
  result = sub_23A6DE9B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23A6A16D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobileDriversLicenseDataRequest.Response.hash(into:)()
{
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  sub_23A6A1B30(&qword_27DF9CCB0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDataRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  sub_23A6A1B30(&qword_27DF9CCB0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A184C()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  sub_23A6A1B30(&qword_27DF9CCB0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A18D4()
{
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  sub_23A6A1B30(&qword_27DF9CCB0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6A1958()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  sub_23A6A1B30(&qword_27DF9CCB0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A19DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MobileDriversLicenseDataRequest.Response()
{
  result = qword_27DFA0780;
  if (!qword_27DFA0780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6A1AD8(uint64_t a1)
{
  result = sub_23A6A1B30(&qword_27DF9CC68, type metadata accessor for MobileDriversLicenseDataRequest.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6A1B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6A1BA0()
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.portraitData.getter()
{
  v1 = v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements() + 20);
  v2 = *v1;
  sub_23A693750(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements()
{
  result = qword_27DFA0890;
  if (!qword_27DFA0890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.ageAtLeastElements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements() + 24));
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.age.getter()
{
  v1 = (v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.sex.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.address.getter()
{
  v1 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  result = 0;
  v3 = (v0 + *(v1 + 40));
  if (v3[1] != 1)
  {
    v4 = *v3;
    v5 = v3[1];
    v6 = *(v3 + 1);
    v7 = *(v3 + 2);
    v8 = *(v3 + 3);
    v9 = *(v3 + 4);
    return sub_23A6C64E8();
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.eyeColor.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.hairColor.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.issuingAuthority.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements() + 68));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_23A6A1FA8(v4, v5);
}

uint64_t sub_23A6A1FA8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.drivingPrivileges.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements() + 72));
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.aamvaDrivingPrivileges.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements() + 76));
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.documentNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.documentDHSComplianceStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  *a1 = *(v1 + *(result + 92));
  return result;
}

unint64_t sub_23A6A216C(unint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 56) + v12);
    result = sub_23A649270(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
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

uint64_t sub_23A6A2274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_23A6A5C74(v16, v13, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
        sub_23A6A5C74(v17, v8, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
        sub_23A6A65A0(&qword_27DF9CE60, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
        v19 = sub_23A6DF604();
        sub_23A6A5CDC(v8, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
        sub_23A6A5CDC(v13, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_23A6A246C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_23A6A5C74(v16, v13, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
        sub_23A6A5C74(v17, v8, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
        sub_23A6A65A0(&qword_27DF9CE58, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
        v19 = sub_23A6DF604();
        sub_23A6A5CDC(v8, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
        sub_23A6A5CDC(v13, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.hash(into:)(uint64_t a1)
{
  v2 = v1;
  *&v126 = a1;
  v121 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  v108 = *(v121 - 8);
  v3 = *(v108 + 64);
  MEMORY[0x28223BE20](v121, v4);
  v118 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege();
  v107 = *(v119 - 8);
  v6 = *(v107 + 64);
  MEMORY[0x28223BE20](v119, v7);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE8, &qword_23A6E37B8);
  v113 = *(v10 - 8);
  v114 = v10;
  v11 = *(v113 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v106 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE0, &qword_23A6E37B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v112 = &v104 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCF0, &qword_23A6E37C0);
  v19 = *(v18 - 8);
  v110 = v18;
  v111 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v105 = &v104 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCD8, &qword_23A6E37A8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v109 = &v104 - v26;
  v27 = sub_23A6DE0A4();
  v123 = *(v27 - 8);
  v124 = v27;
  v28 = *(v123 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v122 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v120 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v117 = &v104 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v104 - v40;
  v42 = sub_23A6DE0F4();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v104 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8, v50);
  v52 = &v104 - v51;
  v125 = v2;
  sub_23A646D48(v2, &v104 - v51, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((*(v43 + 48))(v52, 1, v42) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v43 + 32))(v47, v52, v42);
    sub_23A6DFD04();
    sub_23A6A65A0(&qword_27DF9CCF8, MEMORY[0x277CC8E50]);
    sub_23A6DF5E4();
    (*(v43 + 8))(v47, v42);
  }

  v53 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  v54 = v125;
  v55 = (v125 + v53[5]);
  if (v55[1] >> 60 == 15)
  {
    v56 = v126;
    sub_23A6DFD04();
  }

  else
  {
    v57 = *v55;
    v56 = v126;
    sub_23A6DFD04();
    sub_23A6DE244();
  }

  v58 = v123;
  sub_23A6A3D10(v56, *(v54 + v53[6]));
  v59 = (v54 + v53[7]);
  if (*(v59 + 8) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v60 = *v59;
    sub_23A6DFD04();
    MEMORY[0x23EE8A1E0](v60);
  }

  v61 = v124;
  sub_23A646D48(v54 + v53[8], v41, &qword_27DF9CCC8, &qword_23A6E3C40);
  v115 = *(v58 + 48);
  v116 = v58 + 48;
  if (v115(v41, 1, v61) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v62 = v122;
    (*(v58 + 32))(v122, v41, v61);
    sub_23A6DFD04();
    sub_23A6A65A0(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v58 + 8))(v62, v61);
  }

  if (*(v54 + v53[9]) == 5)
  {
    sub_23A6DFD04();
  }

  else
  {
    LOBYTE(v137) = *(v54 + v53[9]);
    sub_23A6DFD04();
    sub_23A6A5A20();
    sub_23A6DF5E4();
  }

  v63 = (v54 + v53[10]);
  v64 = *v63;
  v65 = v63[1];
  v66 = *(v63 + 2);
  v141 = *(v63 + 1);
  v142 = v66;
  v67 = *(v63 + 4);
  v143 = *(v63 + 3);
  v144 = v67;
  if (v65 == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v68 = *(v63 + 2);
    v128 = *(v63 + 1);
    v129 = v68;
    v69 = *(v63 + 4);
    v130 = *(v63 + 3);
    v131 = v69;
    *&v127 = v64;
    *(&v127 + 1) = v65;
    sub_23A6DFD04();
    v132[0] = v64;
    v132[1] = v65;
    v133 = v141;
    v134 = v142;
    v135 = v143;
    v136 = v144;
    sub_23A6A5A74(v132, &v137);
    sub_23A6A5AD0();
    sub_23A6DF5E4();
    *&v138[16] = v129;
    v139 = v130;
    v140 = v131;
    v137 = v127;
    *v138 = v128;
    sub_23A6A5B24(&v137);
  }

  v71 = v113;
  v70 = v114;
  v72 = v109;
  v73 = v110;
  sub_23A646D48(v54 + v53[11], v109, &qword_27DF9CCD8, &qword_23A6E37A8);
  v74 = v111;
  if ((*(v111 + 48))(v72, 1, v73) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v75 = v105;
    (*(v74 + 32))(v105, v72, v73);
    sub_23A6DFD04();
    sub_23A6A64B0(&qword_27DF9CD18, &qword_27DF9CCF0, &qword_23A6E37C0);
    sub_23A6DF5E4();
    (*(v74 + 8))(v75, v73);
  }

  v76 = v112;
  sub_23A646D48(v54 + v53[12], v112, &qword_27DF9CCE0, &qword_23A6E37B0);
  if ((*(v71 + 48))(v76, 1, v70) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v77 = v106;
    (*(v71 + 32))(v106, v76, v70);
    sub_23A6DFD04();
    sub_23A6A64B0(&qword_27DF9CD20, &qword_27DF9CCE8, &qword_23A6E37B8);
    sub_23A6DF5E4();
    (*(v71 + 8))(v77, v70);
  }

  if (*(v54 + v53[13]) == 10)
  {
    sub_23A6DFD04();
  }

  else
  {
    LOBYTE(v137) = *(v54 + v53[13]);
    sub_23A6DFD04();
    sub_23A6A5B78();
    sub_23A6DF5E4();
  }

  if (*(v54 + v53[14]) == 10)
  {
    sub_23A6DFD04();
  }

  else
  {
    LOBYTE(v137) = *(v54 + v53[14]);
    sub_23A6DFD04();
    sub_23A6A5BCC();
    sub_23A6DF5E4();
  }

  if (*(v54 + v53[15]) != 2)
  {
    sub_23A6DFD04();
  }

  sub_23A6DFD04();
  if (*(v54 + v53[16]) != 2)
  {
    sub_23A6DFD04();
  }

  sub_23A6DFD04();
  v78 = v54 + v53[17];
  v79 = *(v78 + 8);
  if (v79 == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v80 = *(v78 + 40);
    v81 = *(v78 + 16);
    *&v137 = *v78;
    *(&v137 + 1) = v79;
    *v138 = v81;
    v126 = *(v78 + 24);
    *&v138[8] = v126;
    *&v138[24] = v80;
    sub_23A6DFD04();
    sub_23A6A5C20();

    sub_23A6DF5E4();
  }

  *&v126 = v53;
  v82 = *(v54 + v53[18]);
  MEMORY[0x23EE8A1E0](*(v82 + 16));
  v83 = *(v82 + 16);
  if (v83)
  {
    v84 = v82 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v85 = *(v107 + 72);
    do
    {
      sub_23A6A5C74(v84, v9, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
      sub_23A6A65A0(&qword_27DF9CD40, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
      sub_23A6DF5E4();
      sub_23A6A5CDC(v9, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
      v84 += v85;
      --v83;
    }

    while (v83);
  }

  v86 = *(v125 + *(v126 + 76));
  MEMORY[0x23EE8A1E0](*(v86 + 16));
  v87 = *(v86 + 16);
  v88 = v118;
  if (v87)
  {
    v89 = v86 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v90 = *(v108 + 72);
    do
    {
      sub_23A6A5C74(v89, v88, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
      sub_23A6A65A0(&qword_27DF9CD48, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
      sub_23A6DF5E4();
      sub_23A6A5CDC(v88, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
      v89 += v90;
      --v87;
    }

    while (v87);
  }

  v92 = v125;
  v91 = v126;
  v93 = (v125 + *(v126 + 80));
  if (v93[1])
  {
    v94 = *v93;
    sub_23A6DFD04();
    sub_23A6DF684();
  }

  else
  {
    sub_23A6DFD04();
  }

  v95 = v123;
  v96 = v115;
  v97 = v117;
  sub_23A646D48(v92 + v91[21], v117, &qword_27DF9CCC8, &qword_23A6E3C40);
  v98 = v124;
  if (v96(v97, 1, v124) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v99 = v122;
    (*(v95 + 32))(v122, v97, v98);
    sub_23A6DFD04();
    sub_23A6A65A0(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v95 + 8))(v99, v98);
  }

  v100 = v120;
  sub_23A646D48(v92 + v91[22], v120, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v96(v100, 1, v98) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v101 = v122;
    (*(v95 + 32))(v122, v100, v98);
    sub_23A6DFD04();
    sub_23A6A65A0(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v95 + 8))(v101, v98);
  }

  v102 = *(v92 + v91[23]);
  if (v102 == 2)
  {
    return sub_23A6DFD04();
  }

  LOBYTE(v137) = v102 & 1;
  sub_23A6DFD04();
  sub_23A6A5D3C();
  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.hashValue.getter()
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6A3670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, char *a13, char *a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24)
{
  v30 = *a8;
  v42 = *a13;
  v43 = *a14;
  v44 = *(a17 + 40);
  v45 = *(a17 + 32);
  v46 = *a24;
  sub_23A69EED0(a1, a9, &qword_27DF9CCC0, &unk_23A6E3790);
  v31 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  v32 = (a9 + v31[5]);
  *v32 = a2;
  v32[1] = a3;
  *(a9 + v31[6]) = a4;
  v33 = a9 + v31[7];
  *v33 = a5;
  *(v33 + 8) = a6 & 1;
  sub_23A69EED0(a7, a9 + v31[8], &qword_27DF9CCC8, &qword_23A6E3C40);
  *(a9 + v31[9]) = v30;
  v34 = (a9 + v31[10]);
  v35 = a10[3];
  v34[2] = a10[2];
  v34[3] = v35;
  v34[4] = a10[4];
  v36 = a10[1];
  *v34 = *a10;
  v34[1] = v36;
  sub_23A69EED0(a11, a9 + v31[11], &qword_27DF9CCD8, &qword_23A6E37A8);
  sub_23A69EED0(a12, a9 + v31[12], &qword_27DF9CCE0, &qword_23A6E37B0);
  *(a9 + v31[13]) = v42;
  *(a9 + v31[14]) = v43;
  *(a9 + v31[15]) = a15;
  *(a9 + v31[16]) = a16;
  v37 = a9 + v31[17];
  v38 = *(a17 + 16);
  *v37 = *a17;
  *(v37 + 16) = v38;
  *(v37 + 32) = v45;
  *(v37 + 40) = v44;
  *(a9 + v31[18]) = a18;
  *(a9 + v31[19]) = a19;
  v39 = (a9 + v31[20]);
  *v39 = a20;
  v39[1] = a21;
  sub_23A69EED0(a22, a9 + v31[21], &qword_27DF9CCC8, &qword_23A6E3C40);
  result = sub_23A69EED0(a23, a9 + v31[22], &qword_27DF9CCC8, &qword_23A6E3C40);
  *(a9 + v31[23]) = v46;
  return result;
}

uint64_t sub_23A6A38D0()
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6A3914()
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6A3950@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_23A6DE074();
    if (v10)
    {
      v11 = sub_23A6DE094();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_23A6DE084();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_23A6DE074();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23A6DE094();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23A6DE084();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23A6A3B80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_23A6A3E30(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_23A691B9C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_23A6A3950(v14, a3, a4, &v13);
  v10 = v4;
  sub_23A691B9C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_23A6A3D10(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  for (i = (v7 + 63) >> 6; v9; v4 ^= result)
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9)) | (v11 << 6);
    v13 = *(*(a2 + 56) + v12);
    v9 &= v9 - 1;
    v16 = *(v3 + 32);
    v17 = *(v3 + 48);
    v18 = *(v3 + 64);
    v14 = *v3;
    v15 = *(v3 + 16);
    MEMORY[0x23EE8A1E0](*(*(a2 + 48) + 8 * v12));
    sub_23A6DFD04();
    result = sub_23A6DFD14();
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x23EE8A1E0](v4);
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A6A3E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_23A6DE074();
  v11 = result;
  if (result)
  {
    result = sub_23A6DE094();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_23A6DE084();
  sub_23A6A3950(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_23A6A3EE8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_23A693764(a3, a4);
          return sub_23A6A3B80(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v234 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE8, &qword_23A6E37B8);
  v219 = *(v3 - 8);
  v220 = v3;
  v4 = *(v219 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v215 = &v209 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE0, &qword_23A6E37B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v216 = &v209 - v10;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDE0, &qword_23A6E38E8);
  v11 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218, v12);
  v226 = (&v209 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCF0, &qword_23A6E37C0);
  v224 = *(v14 - 8);
  v225 = v14;
  v15 = *(v224 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v217 = &v209 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCD8, &qword_23A6E37A8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v221 = &v209 - v21;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDE8, &unk_23A6E38F0);
  v22 = *(*(v222 - 8) + 64);
  MEMORY[0x28223BE20](v222, v23);
  v223 = &v209 - v24;
  v25 = sub_23A6DE0A4();
  v26 = *(v25 - 8);
  v230 = v25;
  v231 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v227 = &v209 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v211 = &v209 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v212 = &v209 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v228 = &v209 - v39;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF0, &qword_23A6E3DA0);
  v40 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229, v41);
  v213 = &v209 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v214 = &v209 - v45;
  MEMORY[0x28223BE20](v46, v47);
  v232 = (&v209 - v48);
  v49 = sub_23A6DE0F4();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49, v52);
  v54 = &v209 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8, v57);
  v59 = &v209 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF8, &qword_23A6E3900);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8, v62);
  v64 = (&v209 - v63);
  v66 = *(v65 + 56);
  v233 = a1;
  sub_23A646D48(a1, &v209 - v63, &qword_27DF9CCC0, &unk_23A6E3790);
  sub_23A646D48(v234, v64 + v66, &qword_27DF9CCC0, &unk_23A6E3790);
  v67 = *(v50 + 48);
  if (v67(v64, 1, v49) == 1)
  {
    if (v67(v64 + v66, 1, v49) == 1)
    {
      sub_23A646DB0(v64, &qword_27DF9CCC0, &unk_23A6E3790);
      goto LABEL_9;
    }

LABEL_6:
    v68 = &qword_27DF9CDF8;
    v69 = &qword_23A6E3900;
LABEL_7:
    sub_23A646DB0(v64, v68, v69);
    return 0;
  }

  sub_23A646D48(v64, v59, &qword_27DF9CCC0, &unk_23A6E3790);
  if (v67(v64 + v66, 1, v49) == 1)
  {
    (*(v50 + 8))(v59, v49);
    goto LABEL_6;
  }

  (*(v50 + 32))(v54, v64 + v66, v49);
  sub_23A6A65A0(&qword_27DF9CE50, MEMORY[0x277CC8E50]);
  v70 = sub_23A6DF604();
  v71 = *(v50 + 8);
  v71(v54, v49);
  v71(v59, v49);
  sub_23A646DB0(v64, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v72 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  v73 = v72[5];
  v75 = v233;
  v74 = v234;
  v77 = *(v233 + v73);
  v76 = *(v233 + v73 + 8);
  v78 = (v234 + v73);
  v80 = *v78;
  v79 = v78[1];
  if (v76 >> 60 == 15)
  {
    if (v79 >> 60 == 15)
    {
      sub_23A693750(v77, v76);
      sub_23A693750(v80, v79);
      sub_23A6A62F8(v77, v76);
      goto LABEL_15;
    }

LABEL_13:
    sub_23A693750(v77, v76);
    sub_23A693750(v80, v79);
    sub_23A6A62F8(v77, v76);
    sub_23A6A62F8(v80, v79);
    return 0;
  }

  if (v79 >> 60 == 15)
  {
    goto LABEL_13;
  }

  sub_23A693750(v77, v76);
  sub_23A693750(v80, v79);
  v81 = sub_23A6A3EE8(v77, v76, v80, v79);
  sub_23A6A62F8(v80, v79);
  sub_23A6A62F8(v77, v76);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if ((sub_23A6A216C(*(v75 + v72[6]), *(v74 + v72[6])) & 1) == 0)
  {
    return 0;
  }

  v82 = v72[7];
  v83 = (v75 + v82);
  v84 = *(v75 + v82 + 8);
  v85 = (v74 + v82);
  v86 = *(v74 + v82 + 8);
  if (v84)
  {
    v64 = v232;
    if (!v86)
    {
      return 0;
    }
  }

  else
  {
    if (*v83 != *v85)
    {
      LOBYTE(v86) = 1;
    }

    v64 = v232;
    if (v86)
    {
      return 0;
    }
  }

  v88 = v72[8];
  v89 = *(v229 + 48);
  sub_23A646D48(v75 + v88, v64, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(v74 + v88, v64 + v89, &qword_27DF9CCC8, &qword_23A6E3C40);
  v90 = v230;
  v92 = v231 + 48;
  v91 = *(v231 + 48);
  if (v91(v64, 1, v230) == 1)
  {
    if (v91(v64 + v89, 1, v90) == 1)
    {
      v209 = v92;
      v210 = v91;
      sub_23A646DB0(v64, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v93 = v228;
  sub_23A646D48(v64, v228, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v91(v64 + v89, 1, v90) == 1)
  {
    (*(v231 + 8))(v93, v90);
LABEL_28:
    v68 = &qword_27DF9CDF0;
    v69 = &qword_23A6E3DA0;
    goto LABEL_7;
  }

  v209 = v92;
  v210 = v91;
  v94 = v231;
  v95 = v64 + v89;
  v96 = v227;
  (*(v231 + 32))(v227, v95, v90);
  sub_23A6A65A0(&qword_27DF9CE10, MEMORY[0x277CC8990]);
  v97 = v72;
  v98 = v90;
  v99 = sub_23A6DF604();
  v100 = *(v94 + 8);
  v100(v96, v98);
  v101 = v98;
  v72 = v97;
  v100(v93, v101);
  sub_23A646DB0(v232, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v99 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v102 = v72[9];
  v103 = *(v75 + v102);
  v104 = *(v74 + v102);
  if (v103 == 5)
  {
    if (v104 != 5)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v247) = v103;
    if (v104 == 5)
    {
      return 0;
    }

    LOBYTE(v269[0]) = v104;
    sub_23A6A654C();
    if ((sub_23A6DF604() & 1) == 0)
    {
      return 0;
    }
  }

  v105 = (v75 + v72[10]);
  v106 = v105[1];
  v107 = v105[3];
  v266 = v105[2];
  v267 = v107;
  v108 = v105[3];
  v268 = v105[4];
  v109 = v105[1];
  v265[0] = *v105;
  v265[1] = v109;
  v232 = v72;
  v110 = (v74 + v72[10]);
  v111 = v110[3];
  v272 = v110[4];
  v112 = v110[3];
  v113 = v110[1];
  v270 = v110[2];
  v271 = v112;
  v114 = v110[1];
  v269[0] = *v110;
  v269[1] = v114;
  v261 = v106;
  v262 = v266;
  v115 = v105[4];
  v263 = v108;
  v264 = v115;
  v116 = v110[4];
  v259 = v111;
  v260 = v116;
  v117 = v265[0];
  v118 = v269[0];
  v257 = v113;
  v258 = v270;
  if (*(&v265[0] + 1) == 1)
  {
    if (*(&v269[0] + 1) == 1)
    {
      *&v247 = *&v265[0];
      *(&v247 + 1) = 1;
      v119 = v105[2];
      v248 = v105[1];
      v249 = v119;
      v120 = v105[4];
      v250 = v105[3];
      v251 = v120;
      sub_23A646D48(v265, &v242, &qword_27DF9CCD0, &qword_23A6E37A0);
      sub_23A646D48(v269, &v242, &qword_27DF9CCD0, &qword_23A6E37A0);
      sub_23A646DB0(&v247, &qword_27DF9CCD0, &qword_23A6E37A0);
      goto LABEL_43;
    }

    sub_23A646D48(v265, &v247, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(v269, &v247, &qword_27DF9CCD0, &qword_23A6E37A0);
LABEL_41:
    v247 = v117;
    v248 = v261;
    v249 = v262;
    v250 = v263;
    v251 = v264;
    v252 = v118;
    v253 = v257;
    v254 = v258;
    v255 = v259;
    v256 = v260;
    sub_23A646DB0(&v247, &qword_27DF9CE00, &qword_23A6E3908);
    return 0;
  }

  v247 = v265[0];
  v121 = v105[2];
  v248 = v105[1];
  v249 = v121;
  v122 = v105[4];
  v250 = v105[3];
  v251 = v122;
  v244 = v121;
  v245 = v250;
  v246 = v122;
  v242 = v265[0];
  v243 = v248;
  if (*(&v269[0] + 1) == 1)
  {
    v239 = v249;
    v240 = v250;
    v241 = v251;
    v237 = v247;
    v238 = v248;
    sub_23A646D48(v265, v236, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(v269, v236, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(&v247, v236, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A6A5B24(&v237);
    goto LABEL_41;
  }

  v123 = v110[2];
  v238 = v110[1];
  v239 = v123;
  v124 = v110[4];
  v240 = v110[3];
  v241 = v124;
  v237 = v269[0];
  sub_23A646D48(v265, v236, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A646D48(v269, v236, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A646D48(&v247, v236, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A6A64F8();
  v125 = sub_23A6DF604();
  v235[2] = v239;
  v235[3] = v240;
  v235[4] = v241;
  v235[0] = v237;
  v235[1] = v238;
  sub_23A6A5B24(v235);
  v236[2] = v244;
  v236[3] = v245;
  v236[4] = v246;
  v236[0] = v242;
  v236[1] = v243;
  sub_23A6A5B24(v236);
  v237 = v117;
  v238 = v261;
  v239 = v262;
  v240 = v263;
  v241 = v264;
  sub_23A646DB0(&v237, &qword_27DF9CCD0, &qword_23A6E37A0);
  if ((v125 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v126 = v232[11];
  v127 = v223;
  v128 = *(v222 + 48);
  sub_23A646D48(v75 + v126, v223, &qword_27DF9CCD8, &qword_23A6E37A8);
  v129 = v234;
  sub_23A646D48(v234 + v126, v127 + v128, &qword_27DF9CCD8, &qword_23A6E37A8);
  v131 = v224;
  v130 = v225;
  v132 = *(v224 + 48);
  if (v132(v127, 1, v225) == 1)
  {
    v133 = v132(v127 + v128, 1, v130);
    v64 = v226;
    if (v133 == 1)
    {
      sub_23A646DB0(v127, &qword_27DF9CCD8, &qword_23A6E37A8);
      goto LABEL_50;
    }

LABEL_48:
    sub_23A646DB0(v127, &qword_27DF9CDE8, &unk_23A6E38F0);
    return 0;
  }

  v134 = v221;
  sub_23A646D48(v127, v221, &qword_27DF9CCD8, &qword_23A6E37A8);
  v135 = v132(v127 + v128, 1, v130);
  v136 = v226;
  if (v135 == 1)
  {
    (*(v131 + 8))(v134, v130);
    goto LABEL_48;
  }

  v137 = v127 + v128;
  v138 = v217;
  (*(v131 + 32))(v217, v137, v130);
  sub_23A6A64B0(&qword_27DF9CE38, &qword_27DF9CCF0, &qword_23A6E37C0);
  v139 = sub_23A6DF604();
  v140 = *(v131 + 8);
  v140(v138, v130);
  v140(v134, v130);
  sub_23A646DB0(v127, &qword_27DF9CCD8, &qword_23A6E37A8);
  v64 = v136;
  v129 = v234;
  if ((v139 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v141 = v232[12];
  v142 = *(v218 + 48);
  sub_23A646D48(v75 + v141, v64, &qword_27DF9CCE0, &qword_23A6E37B0);
  sub_23A646D48(v129 + v141, v64 + v142, &qword_27DF9CCE0, &qword_23A6E37B0);
  v144 = v219;
  v143 = v220;
  v145 = *(v219 + 48);
  if (v145(v64, 1, v220) == 1)
  {
    if (v145(v64 + v142, 1, v143) == 1)
    {
      sub_23A646DB0(v64, &qword_27DF9CCE0, &qword_23A6E37B0);
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v146 = v216;
  sub_23A646D48(v64, v216, &qword_27DF9CCE0, &qword_23A6E37B0);
  if (v145(v64 + v142, 1, v143) == 1)
  {
    (*(v144 + 8))(v146, v143);
LABEL_55:
    v68 = &qword_27DF9CDE0;
    v69 = &qword_23A6E38E8;
    goto LABEL_7;
  }

  v147 = v64 + v142;
  v148 = v215;
  (*(v144 + 32))(v215, v147, v143);
  sub_23A6A64B0(&qword_27DF9CE30, &qword_27DF9CCE8, &qword_23A6E37B8);
  v149 = sub_23A6DF604();
  v150 = *(v144 + 8);
  v150(v148, v143);
  v150(v146, v143);
  sub_23A646DB0(v64, &qword_27DF9CCE0, &qword_23A6E37B0);
  if ((v149 & 1) == 0)
  {
    return 0;
  }

LABEL_57:
  v151 = v232[13];
  v152 = *(v75 + v151);
  v153 = *(v129 + v151);
  if (v152 == 10)
  {
    if (v153 != 10)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v247) = v152;
    if (v153 == 10)
    {
      return 0;
    }

    LOBYTE(v242) = v153;
    sub_23A6A645C();
    if ((sub_23A6DF604() & 1) == 0)
    {
      return 0;
    }
  }

  v154 = v232[14];
  v155 = *(v75 + v154);
  v156 = *(v129 + v154);
  if (v155 == 10)
  {
    if (v156 != 10)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v247) = v155;
    if (v156 == 10)
    {
      return 0;
    }

    LOBYTE(v242) = v156;
    sub_23A6A6408();
    if ((sub_23A6DF604() & 1) == 0)
    {
      return 0;
    }
  }

  v157 = v232[15];
  v158 = *(v233 + v157);
  v159 = *(v234 + v157);
  if (v158 == 2)
  {
    if (v159 != 2)
    {
      return 0;
    }
  }

  else if (v159 == 2 || ((v159 ^ v158) & 1) != 0)
  {
    return 0;
  }

  v160 = v232[16];
  v161 = *(v233 + v160);
  v162 = *(v234 + v160);
  if (v161 == 2)
  {
    if (v162 != 2)
    {
      return 0;
    }
  }

  else if (v162 == 2 || ((v162 ^ v161) & 1) != 0)
  {
    return 0;
  }

  v163 = v232[17];
  v164 = *(v233 + v163);
  v165 = *(v233 + v163 + 8);
  v167 = *(v233 + v163 + 16);
  v166 = *(v233 + v163 + 24);
  v169 = *(v233 + v163 + 32);
  v168 = *(v233 + v163 + 40);
  v170 = (v234 + v163);
  v172 = *v170;
  v171 = v170[1];
  v174 = v170[2];
  v173 = v170[3];
  v176 = v170[4];
  v175 = v170[5];
  v225 = v173;
  v226 = v176;
  v228 = v175;
  if (v165 == 1)
  {
    sub_23A6A1FA8(v164, 1);
    if (v171 == 1)
    {
      sub_23A6A1FA8(v172, 1);
      sub_23A6A630C(v164, 1);
      goto LABEL_85;
    }

    sub_23A6A1FA8(v172, v171);
LABEL_83:
    sub_23A6A630C(v164, v165);
    sub_23A6A630C(v172, v171);
    return 0;
  }

  *&v247 = v164;
  *(&v247 + 1) = v165;
  *&v248 = v167;
  *(&v248 + 1) = v166;
  *&v249 = v169;
  *(&v249 + 1) = v168;
  if (v171 == 1)
  {
    v222 = v164;
    v223 = v167;
    v224 = v169;
    sub_23A6A1FA8(v164, v165);
    sub_23A6A1FA8(v172, 1);
    sub_23A6A1FA8(v222, v165);

    goto LABEL_83;
  }

  *&v242 = v172;
  *(&v242 + 1) = v171;
  v221 = v174;
  *&v243 = v174;
  *(&v243 + 1) = v225;
  *&v244 = v226;
  *(&v244 + 1) = v228;
  sub_23A6A1FA8(v164, v165);
  sub_23A6A1FA8(v172, v171);
  sub_23A6A1FA8(v164, v165);
  sub_23A6A63B4();
  v177 = sub_23A6DF604();

  sub_23A6A630C(v164, v165);
  if ((v177 & 1) == 0)
  {
    return 0;
  }

LABEL_85:
  if ((sub_23A6A2274(*(v233 + v232[18]), *(v234 + v232[18])) & 1) == 0 || (sub_23A6A246C(*(v233 + v232[19]), *(v234 + v232[19])) & 1) == 0)
  {
    return 0;
  }

  v178 = v232[20];
  v179 = (v233 + v178);
  v180 = *(v233 + v178 + 8);
  v181 = (v234 + v178);
  v182 = v181[1];
  if (v180)
  {
    if (!v182 || (*v179 != *v181 || v180 != v182) && (sub_23A6DFC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v182)
  {
    return 0;
  }

  v183 = v232[21];
  v184 = *(v229 + 48);
  v185 = v214;
  sub_23A646D48(v233 + v183, v214, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(v234 + v183, v185 + v184, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v210(v185, 1, v230) == 1)
  {
    if (v210(v214 + v184, 1, v230) == 1)
    {
      sub_23A646DB0(v214, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_101;
    }

LABEL_99:
    sub_23A646DB0(v214, &qword_27DF9CDF0, &qword_23A6E3DA0);
    return 0;
  }

  v186 = v214;
  sub_23A646D48(v214, v212, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v210(v186 + v184, 1, v230) == 1)
  {
    (*(v231 + 8))(v212, v230);
    goto LABEL_99;
  }

  v188 = v230;
  v187 = v231;
  v189 = v214;
  v190 = v227;
  (*(v231 + 32))(v227, v214 + v184, v230);
  sub_23A6A65A0(&qword_27DF9CE10, MEMORY[0x277CC8990]);
  v191 = v212;
  v192 = sub_23A6DF604();
  v193 = *(v187 + 8);
  v193(v190, v188);
  v193(v191, v188);
  sub_23A646DB0(v189, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v192 & 1) == 0)
  {
    return 0;
  }

LABEL_101:
  v194 = v232[22];
  v195 = *(v229 + 48);
  v196 = v213;
  sub_23A646D48(v233 + v194, v213, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(v234 + v194, v196 + v195, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v210(v196, 1, v230) == 1)
  {
    if (v210(v213 + v195, 1, v230) == 1)
    {
      sub_23A646DB0(v213, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_108;
    }

LABEL_106:
    sub_23A646DB0(v213, &qword_27DF9CDF0, &qword_23A6E3DA0);
    return 0;
  }

  v197 = v213;
  sub_23A646D48(v213, v211, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v210(v197 + v195, 1, v230) == 1)
  {
    (*(v231 + 8))(v211, v230);
    goto LABEL_106;
  }

  v198 = v230;
  v199 = v231;
  v200 = v213;
  v201 = v213 + v195;
  v202 = v227;
  (*(v231 + 32))(v227, v201, v230);
  sub_23A6A65A0(&qword_27DF9CE10, MEMORY[0x277CC8990]);
  v203 = v211;
  v204 = sub_23A6DF604();
  v205 = *(v199 + 8);
  v205(v202, v198);
  v205(v203, v198);
  sub_23A646DB0(v200, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v204 & 1) == 0)
  {
    return 0;
  }

LABEL_108:
  v206 = v232[23];
  v207 = *(v233 + v206);
  v208 = *(v234 + v206);
  if (v207 != 2)
  {
    LOBYTE(v247) = v207;
    if (v208 != 2)
    {
      LOBYTE(v242) = v208 & 1;
      sub_23A6A6360();
      if (sub_23A6DF604())
      {
        return 1;
      }
    }

    return 0;
  }

  return v208 == 2;
}