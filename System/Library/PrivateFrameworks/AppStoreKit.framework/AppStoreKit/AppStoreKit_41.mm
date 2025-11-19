uint64_t type metadata accessor for EngagementToggleAction()
{
  result = qword_1EE1EC760;
  if (!qword_1EE1EC760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EngagementToggleAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t EngagementToggleAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t RedownloadConfiguration.init(metrics:alignment:theme:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 4);
  v8 = *a3;
  v9 = a3[1];
  v11 = *(a3 + 1);
  v10 = *(a3 + 2);
  sub_1E16C8F24(a1, a4);
  v12 = type metadata accessor for RedownloadConfiguration();
  v13 = a4 + v12[5];
  *v13 = *a2;
  *(v13 + 4) = v7;
  *(a4 + v12[6]) = v8 == 5;
  if ((v9 - 7) < 2)
  {
    goto LABEL_2;
  }

  if (v9 == 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        sub_1E139D53C(v11, v10);
        if (v8 == 6)
        {
          goto LABEL_3;
        }

LABEL_34:
        result = sub_1E16FC920(a1, type metadata accessor for OfferButtonMetrics);
        v14 = 0;
        goto LABEL_17;
      }

LABEL_2:
      sub_1E139D53C(v11, v10);
LABEL_3:
      if (qword_1EE1DDC78 != -1)
      {
        swift_once();
      }

      v14 = qword_1EE1DDC80;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v8 != 3)
  {
    if (v9 > 12)
    {
      if (v9 == 13)
      {
        goto LABEL_12;
      }

      if (v9 == 14)
      {
        goto LABEL_2;
      }

      if (v9 == 15 && v8 != 4)
      {
        if (qword_1EE1DDC78 != -1)
        {
          swift_once();
        }

        v15 = qword_1EE1DDC80;
        goto LABEL_15;
      }
    }

    else if (v9)
    {
      if (v9 == 6)
      {
        v19 = &type metadata for Feature;
        v20 = sub_1E1309EB0();
        v18[0] = 17;
        v17 = sub_1E1AF056C();
        __swift_destroy_boxed_opaque_existential_1(v18);
        if (v17)
        {
          if (qword_1EE1E3260 != -1)
          {
            swift_once();
          }

          v15 = qword_1EE1E3268;
          goto LABEL_15;
        }
      }
    }

    else if (v8 == 6)
    {
      goto LABEL_12;
    }

    sub_1E139D53C(v11, v10);
    goto LABEL_34;
  }

LABEL_12:
  if (qword_1EE1DDC90 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE1DDC98;
LABEL_15:
  v14 = v15;
  sub_1E139D53C(v11, v10);
LABEL_16:
  result = sub_1E16FC920(a1, type metadata accessor for OfferButtonMetrics);
LABEL_17:
  *(a4 + v12[7]) = v14;
  return result;
}

uint64_t type metadata accessor for RedownloadConfiguration()
{
  result = qword_1EE1D9930;
  if (!qword_1EE1D9930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL RedownloadConfiguration.isEqual(to:with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-v4 - 8];
  v6 = type metadata accessor for RedownloadConfiguration();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if ((v10 & 1) == 0)
  {
    v11(v5, 1, 1, v6);
    sub_1E16FC854(v5);
    return 0;
  }

  v11(v5, 0, 1, v6);
  sub_1E16FC8BC(v5, v9);
  if (!sub_1E16CAD94(*(v1 + v6[5]) | (*(v1 + v6[5] + 2) << 16), *&v9[v6[5]] | (*&v9[v6[5] + 2] << 16)) || *(v1 + v6[6]) != v9[v6[6]])
  {
    goto LABEL_4;
  }

  v13 = v6[7];
  v14 = *(v1 + v13);
  v15 = *&v9[v13];
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_4:
    sub_1E16FC920(v9, type metadata accessor for RedownloadConfiguration);
    return 0;
  }

  if (!v15)
  {
    goto LABEL_4;
  }

  sub_1E1355E88();
  v16 = v15;
  v17 = v14;
  v18 = sub_1E1AF6D0C();

  if ((v18 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_13:
  v19 = OfferButtonMetrics.isEqual(to:with:)(v9);
  sub_1E16FC920(v9, type metadata accessor for RedownloadConfiguration);
  return (v19 & 1) != 0;
}

uint64_t RedownloadConfiguration.apply<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v35 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  (*(a3 + 80))(a2, a3, v11);
  swift_getAssociatedConformanceWitness();
  sub_1E1AF118C();
  (*(v10 + 8))(v13, v9);
  v14 = a2;
  v15 = (*(a3 + 72))(a2, a3);
  [v15 setHidden_];

  v16 = (*(a3 + 64))(a2, a3);
  [v16 setHidden_];

  v37 = *(a3 + 96);
  v17 = a1;
  v37(v14, a3);
  v36 = type metadata accessor for OfferButtonMetrics();
  v18 = v41;
  v19 = v41 + *(v36 + 32);
  v20 = *v19;
  v38 = *(v19 + 8);
  v39 = v20;
  v21 = v20();
  v22 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v21, v22, AssociatedConformanceWitness);
  v24 = v6 + 8;
  v25 = *(v6 + 8);
  v35 = v24;
  v25(v8, v22);
  v37(v14, a3);
  v26 = *(v18 + *(v36 + 48));
  v27 = *(AssociatedConformanceWitness + 88);
  v28 = v26;
  v27(v26, v22, AssociatedConformanceWitness);
  v25(v8, v22);
  v43 = &type metadata for Feature;
  v44 = sub_1E1309EB0();
  v42[0] = 17;
  LOBYTE(v26) = sub_1E1AF056C();
  v29 = __swift_destroy_boxed_opaque_existential_1(v42);
  if (v26)
  {
    v29 = (*(a3 + 168))(0, v14, a3);
  }

  v30 = (v39)(v29);
  (*(a3 + 208))(v30, v14, a3);
  v31._object = 0x80000001E1B71ED0;
  v31._countAndFlagsBits = 0xD000000000000028;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v33 = localizedString(_:comment:)(v31, v32);
  (*(a3 + 232))(v33._countAndFlagsBits, v33._object, v14, a3);
  return _s11AppStoreKit23RedownloadConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(v17, v14, a3);
}

uint64_t _s11AppStoreKit23RedownloadConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for RedownloadConfiguration();
  if (*(v3 + *(v16 + 24)) == 1)
  {
    (*(a3 + 96))(a2, a3);
    if (qword_1ECEB11C0 != -1)
    {
      swift_once();
    }

    v17 = qword_1ECEB95D8;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v7 + 8))(v15, AssociatedTypeWitness);
  }

  v19 = v16;
  v20 = (*(a3 + 104))(a2, a3);
  v21 = *(a3 + 96);
  if (v20)
  {
    v21(a2, a3);
    v22 = *(v3 + *(v19 + 28));
    v23 = v22;
    if (v22 || (result = (*(a3 + 112))(a2, a3), (v23 = result) != 0))
    {
      v25 = v22;
      v26 = sub_1E1AF6C7C();

      v27 = swift_getAssociatedConformanceWitness();
      (*(v27 + 56))(v26, AssociatedTypeWitness, v27);

      v15 = v12;
      return (*(v7 + 8))(v15, AssociatedTypeWitness);
    }

    __break(1u);
  }

  else
  {
    v21(a2, a3);
    v28 = *(v3 + *(v19 + 28));
    v29 = v28;
    if (v28 || (result = (*(a3 + 112))(a2, a3), (v29 = result) != 0))
    {
      v30 = swift_getAssociatedConformanceWitness();
      v31 = *(v30 + 56);
      v32 = v28;
      v31(v29, AssociatedTypeWitness, v30);

      v15 = v9;
      return (*(v7 + 8))(v15, AssociatedTypeWitness);
    }
  }

  __break(1u);
  return result;
}

int8x8_t static RedownloadConfiguration.alignment(whenUsing:in:)@<D0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>, uint8x8_t a4@<D0>)
{
  a4.i32[0] = *a2;
  v11 = vmovl_u8(a4).u64[0];
  LOBYTE(v5) = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = [a1 traitCollection];
  v8 = sub_1E1AF697C();

  if (v8)
  {
    v9 = vmovn_s32(vshlq_u32(vdupq_n_s32(0x10200u), vnegq_s32(vshll_n_u16(v11, 3uLL))));
    v5 = 0x10200u >> (8 * v5);
    if (v6)
    {
      if (v6 == 1)
      {
        LOBYTE(v6) = 2;
      }

      else
      {
        LOBYTE(v6) = 1;
      }
    }
  }

  else
  {
    v9 = v11;
  }

  result = vuzp1_s8(v9, v9);
  *a3 = result.i32[0];
  *(a3 + 4) = v5;
  *(a3 + 5) = v6;
  return result;
}

void RedownloadConfiguration.size(in:)(void *a1)
{
  v2 = v1;
  type metadata accessor for RedownloadConfiguration();
  v4 = [a1 traitCollection];
  sub_1E16CAD98(&v7);

  LODWORD(v4) = v7;
  v5 = type metadata accessor for OfferButtonMetrics();
  if (v4 == 1)
  {
    v6 = (*(v2 + *(v5 + 32)))();
    [v6 size];
  }
}

uint64_t sub_1E16FC854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E16FC8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedownloadConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16FC920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E16FC980(void *a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v63 - v22;
  v68 = *(a3 + 96);
  v69 = a3 + 96;
  v68(a2, a3, v21);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v26 = *(v17 + 8);
  v67 = v17 + 8;
  v26(v23, AssociatedTypeWitness);
  if (v25)
  {
    [v25 size];
  }

  v27 = v8 + *(type metadata accessor for RedownloadConfiguration() + 20);
  v28 = *(v27 + 4);
  LODWORD(v73[0]) = *v27;
  WORD2(v73[0]) = v28;
  v30 = [a1 traitCollection];
  sub_1E16CAD98(v73);

  v31 = LOBYTE(v73[0]);
  v71 = &type metadata for Feature;
  v72 = sub_1E1309EB0();
  LOBYTE(v70) = 17;
  LOBYTE(v30) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(&v70);
  if (v30)
  {
    v32 = *(v8 + *(type metadata accessor for OfferButtonMetrics() + 52) + 8);
    v64 = *&a7;
    v65 = a5;
    v63 = a6;
    if (v31)
    {
      if (v31 == 1)
      {
        v33 = v26;
        v74.origin.x = a4;
        v74.origin.y = a5;
        v74.size.width = a6;
        v74.size.height = a7;
        v34 = CGRectGetMidY(v74) + v32 * -0.5;
        v35 = 0.0;
      }

      else
      {
        v33 = v26;
        v80.origin.x = a4;
        v80.origin.y = a5;
        v80.size.width = a6;
        v80.size.height = a7;
        v35 = CGRectGetMaxX(v80) - v32;
        v81.origin.x = a4;
        v81.origin.y = a5;
        v81.size.width = a6;
        v81.size.height = a7;
        v34 = CGRectGetMidY(v81) + v32 * -0.5;
      }
    }

    else
    {
      v33 = v26;
      v76.origin.x = a4;
      v76.origin.y = a5;
      v76.size.width = a6;
      v76.size.height = a7;
      MidX = CGRectGetMidX(v76);
      v77.origin.y = a5;
      v35 = MidX - v32 * 0.5;
      v77.origin.x = a4;
      v77.size.width = a6;
      v77.size.height = a7;
      v34 = CGRectGetMidY(v77) - v32 * 0.5;
    }

    v48 = floor(v35);
    v49 = floor(v34);
    v50 = (*(a3 + 192))(a2, a3);
    [v50 setFrame_];

    (v68)(a2, a3);
    v82.origin.x = v48;
    v82.origin.y = v49;
    v82.size.width = v32;
    v82.size.height = v32;
    CGRectGetWidth(v82);
    v83.origin.x = v48;
    v83.origin.y = v49;
    v83.size.width = v32;
    v83.size.height = v32;
    CGRectGetHeight(v83);
    swift_getAssociatedConformanceWitness();
    sub_1E1AF116C();
    v33(v19, AssociatedTypeWitness);
    v51 = *(a3 + 72);
    v52 = v51(a2, a3);
    v53 = [a1 traitCollection];
    [v53 layoutDirection];

    sub_1E1AF6B2C();
    [v52 setFrame_];

    v46 = (*(a3 + 64))(a2, a3);
    v47 = v51(a2, a3);
  }

  else
  {
    v66 = v8;
    if (v31)
    {
      if (v31 != 1)
      {
        v75.origin.x = a4;
        v75.origin.y = a5;
        v75.size.width = a6;
        v75.size.height = a7;
        CGRectGetMaxX(v75);
      }
    }

    else
    {
      v78.origin.x = a4;
      v78.origin.y = a5;
      v78.size.width = a6;
      v78.size.height = a7;
      CGRectGetMidX(v78);
    }

    v79.origin.x = a4;
    v79.origin.y = a5;
    v79.size.width = a6;
    v79.size.height = a7;
    CGRectGetMidY(v79);
    (v68)(a2, a3);
    v64 = swift_getAssociatedConformanceWitness();
    sub_1E1AF116C();
    v26(v19, AssociatedTypeWitness);
    v65 = *(a3 + 72);
    v37 = (*&v65)(a2, a3);
    (v68)(a2, a3);
    sub_1E1AF115C();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v26(v19, AssociatedTypeWitness);
    [v37 setFrame_];

    v46 = (*(a3 + 64))(a2, a3);
    v47 = (*&v65)(a2, a3);
  }

  [v47 frame];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  [v46 setFrame_];
  return _s11AppStoreKit23RedownloadConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(a1, a2, a3);
}

void sub_1E16FD0F8()
{
  type metadata accessor for OfferButtonMetrics();
  if (v0 <= 0x3F)
  {
    sub_1E16FD19C();
    if (v1 <= 0x3F)
    {
      sub_1E16FD1F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E16FD19C()
{
  if (!qword_1EE1D97B8)
  {
    sub_1E148BF48();
    v0 = type metadata accessor for AccessibilityConditional();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D97B8);
    }
  }
}

void sub_1E16FD1F8()
{
  if (!qword_1EE1D22C8)
  {
    sub_1E1355E88();
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D22C8);
    }
  }
}

uint64_t BootstrapView.init(bootstrap:contentBuilder:working:failed:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v34 = a7;
  v35 = a8;
  v33 = a6;
  v32 = a11;
  v31[0] = a12;
  v31[1] = a13;
  v21 = sub_1E1AF0C5C();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a12;
  v37 = a13;
  v38 = a14;
  v39 = a15;
  v24 = type metadata accessor for BootstrapView();
  sub_1E1AF0C4C();
  sub_1E16FD3F4(v23);
  swift_unknownObjectWeakInit();
  result = sub_1E16FD4EC(a1, a9);
  v26 = (a9 + v24[17]);
  *v26 = a2;
  v26[1] = a3;
  v27 = (a9 + v24[18]);
  *v27 = a4;
  v27[1] = a5;
  v28 = (a9 + v24[19]);
  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  v30 = a9 + v24[20];
  *v30 = v35;
  *(v30 + 8) = a10;
  *(v30 + 16) = v32;
  return result;
}

uint64_t sub_1E16FD3F4(uint64_t a1)
{
  v2 = sub_1E1AF0C5C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1E1AF2BEC();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1E16FD4EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bootstrap();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BootstrapView.init<>(bootstrap:contentBuilder:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a4;
  v17 = type metadata accessor for Bootstrap();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E16FD690(a1, v19);
  v20 = sub_1E16FD734();
  v21 = sub_1E16FD788();
  *&v24 = &type metadata for DefaultBootstrapErrorView;
  *(&v24 + 1) = a8;
  *&v23 = a7;
  *(&v23 + 1) = &type metadata for DefaultBootstrapLoadingView;
  BootstrapView.init(bootstrap:contentBuilder:working:failed:isBootstrapping:)(v19, a2, a3, nullsub_5, 0, sub_1E16FD6F4, 0, v26, a9, a5, a6, v23, v24, v20, v21);
  return sub_1E16FD7DC(a1);
}

uint64_t sub_1E16FD690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bootstrap();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16FD6F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v4 = a1;
}

unint64_t sub_1E16FD734()
{
  result = qword_1ECEB7FD0;
  if (!qword_1ECEB7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7FD0);
  }

  return result;
}

unint64_t sub_1E16FD788()
{
  result = qword_1ECEB7FD8;
  if (!qword_1ECEB7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7FD8);
  }

  return result;
}

uint64_t sub_1E16FD7DC(uint64_t a1)
{
  v2 = type metadata accessor for Bootstrap();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DefaultBootstrapErrorView.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t BootstrapView.init<A>(bootstrap:tabsInfoProvider:customDependencies:appContentView:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v28 = a7;
  v29 = a8;
  v26 = a9;
  v27 = a10;
  v18 = type metadata accessor for Bootstrap();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E16FD690(a1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = a11;
  *(v21 + 24) = a12;
  v22 = *(a2 + 16);
  *(v21 + 32) = *a2;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a2 + 32);
  *(v21 + 80) = *(a2 + 48);
  *(v21 + 88) = a3;
  *(v21 + 96) = a4;
  *(v21 + 104) = a5;
  *(v21 + 112) = a6;
  v23 = type metadata accessor for AppView();
  WitnessTable = swift_getWitnessTable();
  BootstrapView.init<>(bootstrap:contentBuilder:isBootstrapping:)(v20, sub_1E16FDB90, v21, v28, v29, v27, v23, WitnessTable, v26);
  return sub_1E16FD7DC(a1);
}

uint64_t sub_1E16FD9AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X8>)
{
  v8 = a1[1];
  v9 = a1[2];
  *&v24 = *a1;
  *(&v24 + 1) = v8;
  *&v25 = v9;
  v10 = *(a2 + 16);
  v31 = *a2;
  v32 = v10;
  v33 = *(a2 + 32);
  *&v34 = *(a2 + 48);
  AppView.init(bootstrapResult:tabsInfoProvider:customDependencies:content:)(&v24, &v31, a3, a4, a5, a6, &v38);
  v11 = type metadata accessor for AppView();
  swift_getWitnessTable();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v24, &v38, v11);
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v31 = v38;
  v32 = v39;
  v33 = v40;
  v34 = v41;

  sub_1E170113C(a2, &v17);
  v14 = *(v12 + 8);

  v14(&v31, v11);
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v13(a7, &v17, v11);
  v42 = v21;
  v43 = v22;
  v44 = v23;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  return (v14)(&v38, v11);
}

uint64_t BootstrapView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v85 = sub_1E1AF649C();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(a1 - 8);
  v5 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v64 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v64 - v13;
  sub_1E1AF21EC();
  v96 = *(a1 + 16);
  v14 = v96;
  v15 = sub_1E1AF229C();
  v89 = *(a1 + 40);
  v16 = v89;
  v82 = sub_1E1700064(&qword_1ECEB74A0, MEMORY[0x1E697C028]);
  v107 = v16;
  v108 = v82;
  v81 = MEMORY[0x1E697E858];
  v73 = v15;
  WitnessTable = swift_getWitnessTable();
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v101 = &type metadata for BootstrapResult;
  v102 = v15;
  v104 = WitnessTable;
  v105 = v17;
  v19 = v17;
  v106 = v18;
  v20 = v18;
  v21.i64[0] = v14;
  v92 = v21;
  v98 = *(a1 + 24);
  v103 = v98;
  v75 = sub_1E1AF0D9C();
  v80 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v64 - v22;
  v79 = sub_1E1AF229C();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v64 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8);
  v26 = v2;
  sub_1E1AF2C1C();
  v27 = v97;
  v28 = *(v97 + 16);
  v93 = v97 + 16;
  v94 = v28;
  v28(v11, v2, a1);
  v95 = *(v27 + 80);
  v29 = v27;
  v30 = (v95 + 64) & ~v95;
  v31 = swift_allocObject();
  v69 = v31;
  *&v32 = vdupq_laneq_s64(v98, 1).u64[0];
  v33 = v89;
  *(&v32 + 1) = v89;
  *(v31 + 16) = vzip1q_s64(v92, v98);
  *(v31 + 32) = v32;
  v67 = v19;
  *(v31 + 48) = v19;
  *(v31 + 56) = v20;
  v87 = v20;
  v34 = *(v29 + 32);
  v97 = v29 + 32;
  v92.i64[0] = v34;
  v91 = a1;
  v34(v31 + v30, v11, a1);
  v35 = v11;
  v68 = v11;
  v88 = v26;
  v94(v11, v26, a1);
  v66 = v5;
  v36 = swift_allocObject();
  v37 = v96;
  *(v36 + 16) = v96;
  *(v36 + 24) = v98;
  *(v36 + 40) = v33;
  *(v36 + 48) = v19;
  *(v36 + 56) = v20;
  v38 = v91;
  (v92.i64[0])(v36 + v30, v35, v91);
  v39 = v94;
  v94(v90, v26, v38);
  v65 = v30;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v98;
  v41 = v67;
  *(v40 + 40) = v33;
  *(v40 + 48) = v41;
  *(v40 + 56) = v87;
  v42 = v91;
  v43 = v92.i64[0];
  (v92.i64[0])(v40 + v30, v90, v91);
  v44 = v77;
  v39(v77, v88, v42);
  v45 = v65;
  v46 = swift_allocObject();
  *(v46 + 16) = v96;
  *(v46 + 24) = v98;
  *(v46 + 40) = v33;
  *(v46 + 48) = v41;
  v47 = v87;
  *(v46 + 56) = v87;
  v48 = v44;
  v49 = v91;
  v43(v46 + v45, v48, v91);
  v50 = v47;
  v51 = v71;
  sub_1E1AF0DAC();
  v52 = v68;
  v94(v68, v88, v49);
  v53 = swift_allocObject();
  *(v53 + 16) = v96;
  *(v53 + 24) = v98;
  *(v53 + 40) = v89;
  *(v53 + 48) = v41;
  *(v53 + 56) = v50;
  (v92.i64[0])(v53 + v45, v52, v49);
  v54 = v75;
  v55 = swift_getWitnessTable();
  v56 = v83;
  sub_1E1AF645C();
  v57 = v74;
  sub_1E1AF2A3C();

  (*(v84 + 8))(v56, v85);
  (*(v80 + 8))(v51, v54);
  v99 = v55;
  v100 = v82;
  v58 = v79;
  swift_getWitnessTable();
  v59 = v78;
  v60 = *(v78 + 16);
  v61 = v76;
  v60(v76, v57, v58);
  v62 = *(v59 + 8);
  v62(v57, v58);
  v60(v86, v61, v58);
  return (v62)(v61, v58);
}

uint64_t sub_1E16FE538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  sub_1E1AF644C();
  v8[16] = sub_1E1AF643C();
  v10 = sub_1E1AF63CC();
  v8[17] = v10;
  v8[18] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E16FE5DC, v10, v9);
}

uint64_t sub_1E16FE5DC()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  v2 = *(v0 + 112);
  *(v0 + 32) = v1;
  *(v0 + 48) = v2;
  type metadata accessor for BootstrapView();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_1E16FE6AC;
  v5 = *(v0 + 64);

  return Bootstrap.run(rootViewController:)(v5, Strong);
}

uint64_t sub_1E16FE6AC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1E16FE82C;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1E16FE7C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E16FE7C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E16FE82C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E16FE89C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  v3[5] = v8;
  v3[6] = v9;
  v3[7] = v10;
  v11 = *(type metadata accessor for BootstrapView() - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  v3[8] = v13;
  *v13 = v3;
  v13[1] = sub_1E1378044;

  return sub_1E16FE538(a1, v1 + v12, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E16FE9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v22[0] = v12;
  v22[1] = v13;
  v22[2] = v14;
  v22[3] = v15;
  v22[4] = v16;
  v22[5] = v17;
  v18 = type metadata accessor for BootstrapView();
  (*(a1 + *(v18 + 72)))();
  v19 = *(v6 + 16);
  v19(v11, v8, a2);
  v20 = *(v6 + 8);
  v20(v8, a2);
  v19(a3, v11, a2);
  return (v20)(v11, a2);
}

uint64_t sub_1E16FEB34@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for BootstrapView() - 8);
  v5 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_1E16FE9CC(v5, v3, a1);
}

uint64_t sub_1E16FEBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v45 = a6;
  v46 = a8;
  v47 = a2;
  v48 = a3;
  v49 = a1;
  v50 = a9;
  v43 = a11;
  v44 = a5;
  v42 = a10;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v54 = a8;
  v55 = a10;
  v56 = a11;
  v13 = type metadata accessor for BootstrapView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v40 - v16;
  v18 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v40 - v24;
  v27 = (a4 + *(v26 + 76));
  v28 = *v27;
  v40[1] = v27[1];
  v41 = v28;
  (*(v14 + 16))(v17, a4, v13, v23);
  v29 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v30 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v45;
  *(v31 + 2) = v44;
  *(v31 + 3) = v32;
  v33 = v46;
  *(v31 + 4) = a7;
  *(v31 + 5) = v33;
  v34 = v43;
  *(v31 + 6) = v42;
  *(v31 + 7) = v34;
  (*(v14 + 32))(&v31[v29], v17, v13);
  v35 = &v31[v30];
  v36 = v48;
  *v35 = v47;
  *(v35 + 1) = v36;

  v41(v49, sub_1E170105C, v31);

  v37 = *(v18 + 16);
  v37(v25, v21, a7);
  v38 = *(v18 + 8);
  v38(v21, a7);
  v37(v50, v25, a7);
  return (v38)(v25, a7);
}

uint64_t sub_1E16FEEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v13 = v4[6];
  v12 = v4[7];
  v14 = *(type metadata accessor for BootstrapView() - 8);
  return sub_1E16FEBF8(a1, a2, a3, v4 + ((*(v14 + 80) + 64) & ~*(v14 + 80)), v8, v9, v10, v11, a4, v13, v12);
}

uint64_t sub_1E16FEF80(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_1E1AF0C5C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  type metadata accessor for BootstrapView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8);
  sub_1E1AF2BFC();
  sub_1E1AF0C3C();
  v4 = sub_1E1AF2C0C();
  return a2(v4);
}

uint64_t sub_1E16FF090@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v52 = a7;
  v53 = a8;
  v49 = a6;
  v50 = a5;
  v51 = a4;
  v48 = a2;
  v46 = a1;
  v58 = a9;
  v15 = sub_1E1AF649C();
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v61 = a3;
  *(&v61 + 1) = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  v17 = type metadata accessor for BootstrapView();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  v54 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF21EC();
  v24 = sub_1E1AF229C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v45 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v47 = &v45 - v28;
  v29 = *(v46 + 2);
  v30 = v48;
  v31 = *(v48 + *(v17 + 68));
  v61 = *v46;
  v62 = v29;
  v31(&v61);
  (*(v18 + 16))(v20, v30, v17);
  v32 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v33 = swift_allocObject();
  v34 = v50;
  v35 = v51;
  *(v33 + 2) = a3;
  *(v33 + 3) = v35;
  v36 = v49;
  *(v33 + 4) = v34;
  *(v33 + 5) = v36;
  v37 = v53;
  *(v33 + 6) = v52;
  *(v33 + 7) = v37;
  (*(v18 + 32))(&v33[v32], v20, v17);
  v38 = v55;
  sub_1E1AF645C();
  v39 = v45;
  sub_1E1AF2A3C();

  (*(v56 + 8))(v38, v57);
  (*(v54 + 8))(v23, a3);
  v40 = sub_1E1700064(&qword_1ECEB74A0, MEMORY[0x1E697C028]);
  v59 = v36;
  v60 = v40;
  swift_getWitnessTable();
  v41 = *(v25 + 16);
  v42 = v47;
  v41(v47, v39, v24);
  v43 = *(v25 + 8);
  v43(v39, v24);
  v41(v58, v42, v24);
  return (v43)(v42, v24);
}

uint64_t sub_1E16FF518@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for BootstrapView() - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_1E16FF090(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_1E16FF5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  sub_1E1AF644C();
  v7[15] = sub_1E1AF643C();
  v9 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E16FF690, v9, v8);
}

uint64_t sub_1E16FF690()
{
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v3 = *(v0 + 104);

  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  type metadata accessor for BootstrapView();
  sub_1E16FDBA4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E16FF730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[2] = a2;
  v7[14] = a1;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[7] = a7;
  v8 = type metadata accessor for BootstrapView();
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v7[23] = *(v9 + 64);
  v7[24] = swift_task_alloc();
  sub_1E1AF644C();
  v7[25] = sub_1E1AF643C();
  v11 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E16FF850, v11, v10);
}

uint64_t sub_1E16FF850()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v4 = *(v0 + 112);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);
  v11 = *(v0 + 152);

  sub_1E16FDBA4();
  v5 = [objc_opt_self() sharedCoordinator];
  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 1) = v13;
  *(v7 + 2) = v12;
  *(v7 + 3) = v11;
  (*(v2 + 32))(&v7[v6], v1, v3);
  *(v0 + 96) = sub_1E1700BA4;
  *(v0 + 104) = v7;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1E1302D64;
  *(v0 + 88) = &block_descriptor_55;
  v8 = _Block_copy((v0 + 64));

  [v5 registerAppBootstrapHandler_];
  _Block_release(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E16FFA28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for BootstrapView() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_1E170119C;

  return sub_1E16FF730(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1E16FFB44()
{
  v0 = sub_1E1AF0C5C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  if (qword_1ECEB0FD8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1ECEF46E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  type metadata accessor for BootstrapView();
  sub_1E16FDBA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8);
  sub_1E1AF2BFC();
  sub_1E1AF0C3C();
  return sub_1E1AF2C0C();
}

uint64_t BootstrapView.with(rootViewController:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2, v2, a1);

  return swift_unknownObjectWeakAssign();
}

uint64_t DefaultBootstrapLoadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = sub_1E1AF25EC();
  v1 = *(v10[0] - 8);
  MEMORY[0x1EEE9AC00](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FF8);
  sub_1E1302CD4(&qword_1ECEB8000, &qword_1ECEB7FF8);
  sub_1E1AF22AC();
  sub_1E1AF25DC();
  sub_1E1302CD4(&qword_1ECEB8008, &qword_1ECEB7FF0);
  sub_1E1700064(&qword_1ECEB8010, MEMORY[0x1E697C938]);
  v8 = v10[0];
  sub_1E1AF296C();
  (*(v1 + 8))(v3, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E1700064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E17000AC@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = sub_1E1AF25EC();
  v1 = *(v10[0] - 8);
  MEMORY[0x1EEE9AC00](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FF8);
  sub_1E1302CD4(&qword_1ECEB8000, &qword_1ECEB7FF8);
  sub_1E1AF22AC();
  sub_1E1AF25DC();
  sub_1E1302CD4(&qword_1ECEB8008, &qword_1ECEB7FF0);
  sub_1E1700064(&qword_1ECEB8010, MEMORY[0x1E697C938]);
  v8 = v10[0];
  sub_1E1AF296C();
  (*(v1 + 8))(v3, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t DefaultBootstrapErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_1E1AF25EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8018);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v10 = *(v1 + 2);
  v13 = *v1;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8020);
  sub_1E1302CD4(&qword_1ECEB8028, &qword_1ECEB8020);
  sub_1E1AF22AC();
  sub_1E1AF25DC();
  sub_1E1302CD4(qword_1ECEB8030, &qword_1ECEB8018);
  sub_1E1700064(&qword_1ECEB8010, MEMORY[0x1E697C938]);
  sub_1E1AF296C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E1700624@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_1E1AF25EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8018);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v10 = *(v1 + 2);
  v13 = *v1;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8020);
  sub_1E1302CD4(&qword_1ECEB8028, &qword_1ECEB8020);
  sub_1E1AF22AC();
  sub_1E1AF25DC();
  sub_1E1302CD4(qword_1ECEB8030, &qword_1ECEB8018);
  sub_1E1700064(&qword_1ECEB8010, MEMORY[0x1E697C938]);
  sub_1E1AF296C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1E17008AC()
{
  type metadata accessor for Bootstrap();
  if (v0 <= 0x3F)
  {
    sub_1E1300784();
    if (v1 <= 0x3F)
    {
      sub_1E170099C();
      if (v2 <= 0x3F)
      {
        sub_1E17009EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E170099C()
{
  if (!qword_1ECEB80B8)
  {
    v0 = sub_1E1AF2C9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB80B8);
    }
  }
}

void sub_1E17009EC()
{
  if (!qword_1ECEB80C0)
  {
    sub_1E1AF0C5C();
    v0 = sub_1E1AF2C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB80C0);
    }
  }
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE010navigationC5StyleyQrqd__AA010NavigationcE0Rd__lFQOyAA0F5StackVyAA0F4PathV011_JetEngine_aB007LoadingC0VyAA4TextVGG_AA0gfcE0VQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_1E1AF25EC();
  sub_1E1302CD4(a4, a2);
  sub_1E1700064(&qword_1ECEB8010, MEMORY[0x1E697C938]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E1700B44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1;

  return MEMORY[0x1EEE5F740](v1, v2, v3);
}

uint64_t sub_1E1700BA4()
{
  type metadata accessor for BootstrapView();

  return sub_1E16FFB44();
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = type metadata accessor for BootstrapView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(type metadata accessor for Bootstrap() + 20);
  v4 = type metadata accessor for ASKBootstrapV2(0);
  v5 = v4[5];
  v6 = sub_1E1AF537C();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v3 + v4[7]);
  v7 = v3 + v4[8];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v3 + v4[9]))
  {
  }

  v8 = v4[13];
  v9 = sub_1E1AEFCCC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v4[14];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v12 = v2 + *(v1 + 84);
  v13 = sub_1E1AF0C5C();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8);

  MEMORY[0x1E6901750](v2 + *(v1 + 88));
  return swift_deallocObject();
}

uint64_t sub_1E1700F40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for BootstrapView() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_1E1378044;

  return sub_1E16FF5EC(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1E170105C()
{
  v1 = *(type metadata accessor for BootstrapView() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  return sub_1E16FEF80(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

__n128 AppView.init(bootstrapResult:tabsInfoProvider:customDependencies:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  v7 = *(a2 + 16);
  *(a7 + 24) = *a2;
  v8 = *(a2 + 48);
  *(a7 + 16) = *(a1 + 16);
  *(a7 + 40) = v7;
  result = *(a2 + 32);
  *(a7 + 56) = result;
  *(a7 + 72) = v8;
  *(a7 + 80) = a3;
  *(a7 + 88) = a4;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  return result;
}

uint64_t AppView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = sub_1E1AF0C2C();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for AppView.LoadedView();
  v9 = sub_1E1AF0BFC();
  v10 = sub_1E1AF0BDC();
  v41 = v8;
  WitnessTable = swift_getWitnessTable();
  v40 = WitnessTable;
  v12 = sub_1E170361C(&qword_1ECEB80D0, MEMORY[0x1E69E3A58]);
  v13 = sub_1E170361C(qword_1ECEB80D8, MEMORY[0x1E69E3A48]);
  *&v44 = v8;
  *(&v44 + 1) = v9;
  *&v45 = v10;
  *(&v45 + 1) = WitnessTable;
  *&v46 = v12;
  *(&v46 + 1) = v13;
  v14 = sub_1E1AF0C1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = v2[5];
  v48 = v2[4];
  v49 = v21;
  v50 = v2[6];
  v22 = v2[1];
  v44 = *v2;
  v45 = v22;
  v23 = v2[3];
  v46 = v2[2];
  v47 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9480);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E1B02CC0;
  *(v24 + 32) = sub_1E1AF539C();
  v25 = v38;
  *v38 = v24;
  (*(v4 + 104))(v25, *MEMORY[0x1E69E3A68], v39);
  v26 = swift_allocObject();
  *(v26 + 16) = v6;
  *(v26 + 24) = v7;
  v27 = v49;
  *(v26 + 96) = v48;
  *(v26 + 112) = v27;
  *(v26 + 128) = v50;
  v28 = v45;
  *(v26 + 32) = v44;
  *(v26 + 48) = v28;
  v29 = v47;
  *(v26 + 64) = v46;
  *(v26 + 80) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v6;
  *(v30 + 24) = v7;
  v31 = v49;
  *(v30 + 96) = v48;
  *(v30 + 112) = v31;
  *(v30 + 128) = v50;
  v32 = v45;
  *(v30 + 32) = v44;
  *(v30 + 48) = v32;
  v33 = v47;
  *(v30 + 64) = v46;
  *(v30 + 80) = v33;
  v34 = *(*(a1 - 8) + 16);
  v34(v43, &v44, a1);
  v34(v43, &v44, a1);
  sub_1E1AF20CC();
  sub_1E1701CBC(v25, sub_1E1701834, v26, sub_1E1701B2C, v30, v17);
  swift_getWitnessTable();
  sub_1E1701198(v17);
  v35 = *(v15 + 8);
  v35(v17, v14);
  sub_1E1701198(v20);
  return (v35)(v20, v14);
}

uint64_t sub_1E170165C(void (**a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF361C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FlowAuthorityProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = *(a1 + 5);
  *(v10 + 96) = *(a1 + 4);
  *(v10 + 112) = v11;
  *(v10 + 128) = *(a1 + 6);
  v12 = *(a1 + 1);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  v13 = *(a1 + 3);
  *(v10 + 64) = *(a1 + 2);
  *(v10 + 80) = v13;
  v14 = type metadata accessor for AppView();
  (*(*(v14 - 8) + 16))(v18, a1, v14);
  v15 = sub_1E1AF35EC();
  a1[10](v15);
  sub_1E1AF41CC();
  v16 = sub_1E1AF41EC();

  (*(v7 + 8))(v9, v6);
  return v16;
}

uint64_t sub_1E1701840@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11[0] = *(a1 + 24);
  v3 = *(a1 + 56);
  v11[1] = *(a1 + 40);
  v11[2] = v3;
  v12 = *(a1 + 72);
  v4 = *(a1 + 40);
  v9[0] = *(a1 + 24);
  v9[1] = v4;
  v9[2] = *(a1 + 56);
  v10 = *(a1 + 72);
  sub_1E1AF421C();
  sub_1E170113C(v11, v8);
  v5 = sub_1E1AF41FC();
  type metadata accessor for FlowAuthorityProvider();
  swift_allocObject();
  v6 = sub_1E1AB56A8(v9, v5);

  *a2 = v6;
  return result;
}

uint64_t sub_1E1701900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18 = a1;
  v19 = a3;
  v21 = a4;
  v6 = type metadata accessor for AppView.LoadedView();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1E1701B38(a2, a1, &v22);
  v12 = *(a2 + 104);
  v17 = *(a2 + 96);
  v13 = *(a2 + 8);
  type metadata accessor for FlowAuthorityProvider();

  sub_1E1AF416C();
  sub_1E1701BA8(&v22, v17, v12, v13, v8);

  swift_getWitnessTable();
  sub_1E1701198(v8);
  v14 = *(v20 + 8);
  v14(v8, v6);
  sub_1E1701198(v11);
  return (v14)(v11, v6);
}

uint64_t sub_1E1701B38@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v5 = v9;
  *a3 = v8;
  *(a3 + 16) = v5;
  sub_1E17039D0(&v8, v7);

  *a3 = a2;
  return result;
}

uint64_t sub_1E1701BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  v7 = type metadata accessor for AppView.LoadedView();
  sub_1E170361C(&qword_1ECEB8228, type metadata accessor for FlowAuthorityProvider);
  sub_1E1AF2CDC();
  v8 = *(v7 + 48);
  *(a5 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8220);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E1701CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12[1] = a5;
  v12[2] = a4;
  v12[4] = a2;
  v12[5] = a3;
  v12[3] = a6;
  v7 = sub_1E1AF0C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(v8 + 16))(v10, a1, v7);
  sub_1E1AF20CC();
  sub_1E1AF0BFC();
  sub_1E1AF0BDC();
  sub_1E170361C(&qword_1ECEB80D0, MEMORY[0x1E69E3A58]);
  sub_1E170361C(qword_1ECEB80D8, MEMORY[0x1E69E3A48]);
  sub_1E1AF0C0C();
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_1E1701F0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8160);
  sub_1E1AF2CCC();
  swift_getKeyPath();
  sub_1E170361C(&qword_1ECEB8228, type metadata accessor for FlowAuthorityProvider);
  sub_1E1AF04EC();

  swift_beginAccess();
  sub_1E134E724(v2[0] + 16, v2);

  v0 = sub_1E1702014();
  sub_1E134B88C(v2);
  return v0;
}

uint64_t sub_1E1702014()
{
  sub_1E134E724(v0, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  NavigationTab.init(rawValue:)(v11);
  if (LOBYTE(v12[0]) <= 4u)
  {
    v1 = 0xE500000000000000;
    v2 = 0x7265666E69;
    v3 = 0xE500000000000000;
    v4 = 0x7961646F74;
    v5 = 0xE400000000000000;
    v6 = 1936748641;
    if (LOBYTE(v12[0]) != 3)
    {
      v6 = 0x73656D6167;
      v5 = 0xE500000000000000;
    }

    if (LOBYTE(v12[0]) != 2)
    {
      v4 = v6;
      v3 = v5;
    }

    if (LOBYTE(v12[0]))
    {
      v2 = 0x64657463656C6573;
      v1 = 0xE800000000000000;
    }

    if (LOBYTE(v12[0]) <= 1u)
    {
      v7 = v2;
    }

    else
    {
      v7 = v4;
    }

    if (LOBYTE(v12[0]) <= 1u)
    {
      v8 = v1;
    }

    else
    {
      v8 = v3;
    }

    goto LABEL_24;
  }

  if (LOBYTE(v12[0]) <= 6u)
  {
    v7 = 0x686372616573;
    if (LOBYTE(v12[0]) == 5)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0x73657461647075;
      v8 = 0xE700000000000000;
    }

    goto LABEL_24;
  }

  if (LOBYTE(v12[0]) == 7)
  {
    v8 = 0xE600000000000000;
    v7 = 0x656461637261;
    goto LABEL_24;
  }

  if (LOBYTE(v12[0]) != 8)
  {
    return 0;
  }

  v8 = 0xE700000000000000;
  v7 = 0x676E6964616F6CLL;
LABEL_24:
  v12[0] = v7;
  v12[1] = v8;
  sub_1E13B8AA4();
  v10 = sub_1E1AF6DDC();

  return v10;
}

uint64_t sub_1E17021C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = sub_1E1AF6A6C();
  v94 = v3;
  v104 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v103 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(a1 - 8);
  v108 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(a1 + 16);
  v79 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF229C();
  v99 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(a1 + 24);
  v110 = &v73 - v11;
  v111 = v10;
  v120 = v10;
  v121 = MEMORY[0x1E69805D0];
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x1E69E69B8];
  v114 = v9;
  v115 = MEMORY[0x1E69E69B8];
  v80 = v9;
  v14 = MEMORY[0x1E69E69C8];
  v116 = WitnessTable;
  v117 = MEMORY[0x1E69E69C8];
  v81 = WitnessTable;
  v15 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = OpaqueTypeMetadata2;
  v102 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v109 = &v73 - v17;
  v18 = sub_1E170361C(&qword_1ECEB8208, MEMORY[0x1E6969F20]);
  v95 = v18;
  v114 = v9;
  v115 = v13;
  v116 = WitnessTable;
  v117 = v14;
  v96 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = v3;
  v115 = OpaqueTypeMetadata2;
  v116 = v18;
  v117 = OpaqueTypeConformance2;
  v19 = sub_1E1AF22FC();
  v100 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v73 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8210);
  v85 = v19;
  v21 = sub_1E1AF229C();
  v91 = v21;
  v101 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v73 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB5D40);
  v90 = v23;
  v24 = swift_getWitnessTable();
  v83 = v24;
  v25 = sub_1E1703534();
  v118 = v24;
  v119 = v25;
  v26 = swift_getWitnessTable();
  v89 = v26;
  v88 = sub_1E16610B0();
  v114 = v21;
  v115 = v23;
  v116 = v26;
  v117 = v88;
  v97 = swift_getOpaqueTypeMetadata2();
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v82 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v86 = &v73 - v29;
  v30 = v112;
  v31 = v112[3];
  v32 = v112[1];
  v33 = v112[2];
  v114 = *v112;
  v115 = v32;
  v116 = v33;

  v34 = v77;
  v31(&v114);

  v35 = v113;
  v36 = *(v113 + 16);
  v76 = v113 + 16;
  v106 = v36;
  v37 = v78;
  v36(v78, v30, a1);
  v75 = *(v35 + 80);
  v38 = (v75 + 32) & ~v75;
  v39 = swift_allocObject();
  v40 = v107;
  v41 = v111;
  *(v39 + 16) = v107;
  *(v39 + 24) = v41;
  v74 = *(v35 + 32);
  v113 = v35 + 32;
  v42 = v37;
  v74(v39 + v38, v37, a1);
  sub_1E1AF2A5C();

  (*(v79 + 8))(v34, v40);
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8160);
  v44 = v112;
  sub_1E1AF2CCC();
  v45 = v114;
  swift_getKeyPath();
  v114 = v45;
  sub_1E170361C(&qword_1ECEB8228, type metadata accessor for FlowAuthorityProvider);
  sub_1E1AF04EC();

  swift_beginAccess();
  sub_1E134E724(v45 + 16, &v114);

  v73 = v43;
  v106(v42, v44, v43);
  v46 = swift_allocObject();
  v47 = v111;
  *(v46 + 16) = v40;
  *(v46 + 24) = v47;
  v48 = v74;
  v74(v46 + v38, v42, v43);
  v49 = v110;
  v50 = v80;
  sub_1E1AF2A6C();

  sub_1E134B88C(&v114);
  (*(v99 + 8))(v49, v50);
  v51 = [objc_opt_self() defaultCenter];
  v52 = v103;
  sub_1E1AF6A7C();

  v53 = v73;
  v106(v42, v112, v73);
  v54 = swift_allocObject();
  v55 = v111;
  *(v54 + 16) = v107;
  *(v54 + 24) = v55;
  v48(v54 + v38, v42, v53);
  v56 = v84;
  v57 = v92;
  v58 = v94;
  v59 = v109;
  sub_1E1AF2A9C();

  (*(v104 + 8))(v52, v58);
  (*(v102 + 8))(v59, v57);
  swift_getKeyPath();
  v114 = sub_1E1701F0C();
  v115 = v60;
  v61 = v87;
  v62 = v85;
  sub_1E1AF29AC();

  (*(v100 + 8))(v56, v62);
  v114 = sub_1E1701F0C();
  v115 = v63;
  v64 = v82;
  v65 = v91;
  v66 = v90;
  v67 = v89;
  v68 = v88;
  sub_1E1AF2A6C();

  (*(v101 + 8))(v61, v65);
  v114 = v65;
  v115 = v66;
  v116 = v67;
  v117 = v68;
  swift_getOpaqueTypeConformance2();
  v69 = v86;
  v70 = v97;
  sub_1E1701198(v64);
  v71 = *(v98 + 8);
  v71(v64, v70);
  sub_1E1701198(v69);
  return (v71)(v69, v70);
}

void sub_1E1702E14()
{
  type metadata accessor for AppView.LoadedView();
  type metadata accessor for CommerceDialogHandler();

  sub_1E1AF413C();

  if (v0)
  {
    CommerceDialogHandler.isActive.setter(1);
  }
}

void sub_1E1702E88()
{
  v0 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for AppView.LoadedView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8160);
  sub_1E1AF2CCC();
  swift_getKeyPath();
  sub_1E170361C(&qword_1ECEB8228, type metadata accessor for FlowAuthorityProvider);
  sub_1E1AF04EC();

  swift_beginAccess();
  sub_1E134E724(*&v2[0] + 16, v1);

  if (swift_dynamicCast())
  {
    sub_1E1AF6F6C();
  }

  else
  {
    memset(v2, 0, sizeof(v2));
    v3 = 0;
  }

  sub_1E1720488(v2);
}

uint64_t sub_1E1703018(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E1AF3F6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 40);
  sub_1E163CA70();
  sub_1E1AF3F5C();
  v8 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v4 + 40))(v7 + v8, v6, v3);
  return swift_endAccess();
}

uint64_t sub_1E170311C(uint64_t result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
    if (qword_1EE1F3430 != -1)
    {
      result = swift_once();
    }

    v4 = off_1EE1F3438;
    v7[0] = v3;
    v7[1] = v2;
    MEMORY[0x1EEE9AC00](result);
    v6[2] = v7;
    v5 = sub_1E14F2168(sub_1E14A937C, v6, &unk_1F5C2D960);
    result = swift_arrayDestroy();
    if ((v5 & 1) == 0)
    {
      v4[2] = v3;
      v4[3] = v2;
    }
  }

  return result;
}

uint64_t sub_1E170322C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1E170328C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1E17032D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E1703348()
{
  sub_1E1300784();
  if (v0 <= 0x3F)
  {
    type metadata accessor for JSFreshnessWatchdog(319);
    if (v1 <= 0x3F)
    {
      sub_1E1703434();
      if (v2 <= 0x3F)
      {
        sub_1E170348C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E1703434()
{
  if (!qword_1ECEB81F0)
  {
    type metadata accessor for FlowAuthorityProvider();
    v0 = sub_1E1AF2CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB81F0);
    }
  }
}

void sub_1E170348C()
{
  if (!qword_1ECEB81F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8200);
    v0 = sub_1E1AF20BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB81F8);
    }
  }
}

unint64_t sub_1E1703534()
{
  result = qword_1ECEB8218;
  if (!qword_1ECEB8218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8218);
  }

  return result;
}

void sub_1E1703598()
{
  type metadata accessor for AppView.LoadedView();

  sub_1E1702E14();
}

uint64_t sub_1E170361C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E1703664()
{
  type metadata accessor for AppView.LoadedView();

  sub_1E1702E88();
}

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for AppView.LoadedView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));

  v3 = v1[13];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8160);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E1AF0CCC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E17038E0(uint64_t a1)
{
  v3 = *(type metadata accessor for AppView.LoadedView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1E1703018(a1, v4);
}

uint64_t sub_1E1703970(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;

  return MEMORY[0x1EEE5F6A8](a1, a2, a3);
}

uint64_t BootstrapResult.objectGraph.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BootstrapResult.metricsPipelineTransformer.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t BootstrapResult.init(objectGraph:freshnessWatchdog:metricsPipelineTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Bootstrap.run(rootViewController:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_1E1AEFE6C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  sub_1E1AF644C();
  v3[19] = sub_1E1AF643C();
  v6 = sub_1E1AF63CC();
  v3[20] = v6;
  v3[21] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E1703BFC, v6, v5);
}

uint64_t sub_1E1703BFC()
{
  if (qword_1ECEB0FD8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  *(v0 + 176) = v1;
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_1ECEF46E8);
  *(v0 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v2 = *(sub_1E1AF38EC() - 8);
  *(v0 + 200) = *(v2 + 72);
  *(v0 + 232) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_1E1703DC8;
  v4 = *(v0 + 112);

  return sub_1E1704738(v4);
}

uint64_t sub_1E1703DC8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1E1703F84;
  }

  else
  {
    v4[28] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1E1703EF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E1703EF0()
{
  v1 = v0[28];
  v2 = v0[13];

  sub_1E1704B08(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E1703F84()
{

  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v1 = v0[6];
  v2 = v0[7];
  v0[5] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v1, v2);
  sub_1E1AF38BC();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  if (qword_1EE1F9658 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE1F9660;
  [qword_1EE1F9660 lock];
  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  v5 = off_1EE1E1910;
  if (off_1EE1E1910)
  {
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[16];

    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v10 = v9;
    (*(v7 + 8))(v6, v8);
    swift_beginAccess();
    v5[20] = v10;
    *(v5 + 168) = 0;
  }

  [v4 unlock];
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E17041F8()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF46E8);
  __swift_project_value_buffer(v4, qword_1ECEF46E8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

double Bootstrap.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:objectGraphName:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v63 = a7;
  v64 = a8;
  v66 = a5;
  v67 = a6;
  v69 = a3;
  v57 = a15;
  v68 = a14;
  v61 = a12;
  v62 = a13;
  v58 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v52 - v20;
  v22 = sub_1E1AF537C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2[1];
  v56 = *a2;
  v55 = v26;
  v54 = *(a2 + 16);
  v53 = *a4;
  v27 = type metadata accessor for Bootstrap();
  v28 = *(v27 + 24);
  type metadata accessor for RenderPipelineDiagnostics.Recorder();
  swift_allocObject();
  *(a9 + v28) = RenderPipelineDiagnostics.Recorder.init()();
  v29 = *(v23 + 16);
  v59 = a1;
  v29(v25, a1, v22);
  sub_1E1300B24(v69, v72);
  v60 = v21;
  v30 = v21;
  v31 = v57;
  sub_1E134FD1C(v68, v30, &unk_1ECEB4B60);
  sub_1E134FD1C(v31, v70, &qword_1ECEB8230);
  v32 = *(v27 + 20);
  v65 = a9;
  v33 = a9 + v32;
  v34 = type metadata accessor for ASKBootstrapV2(0);
  v35 = &v33[v34[8]];
  *(v35 + 4) = 0;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v36 = &v33[v34[9]];
  *v36 = 0;
  v36[1] = 0;
  v29(&v33[v34[5]], v25, v22);
  v37 = v58;
  v38 = &v33[v34[6]];
  v39 = v55;
  *v38 = v56;
  *(v38 + 1) = v39;
  v38[16] = v54;
  *v33 = v53;
  sub_1E1300B24(v72, &v33[v34[7]]);
  v40 = [objc_opt_self() currentProcess];
  if (v37)
  {
    v41 = sub_1E1AF5DBC();
    [v40 setTreatmentNamespace_];
  }

  sub_1E1308058(v31, &qword_1ECEB8230);
  sub_1E1308058(v68, &unk_1ECEB4B60);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v42 = *(v23 + 8);
  v42(v59, v22);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v42(v25, v22);
  *&v33[v34[10]] = v40;
  v43 = &v33[v34[11]];
  v44 = v62;
  *v43 = v61;
  v43[1] = v44;
  v45 = &v33[v34[12]];
  v46 = v64;
  *v45 = v63;
  v45[1] = v46;
  sub_1E137F600(v60, &v33[v34[13]], &unk_1ECEB4B60);
  v47 = &v33[v34[14]];
  result = *v70;
  v49 = v70[1];
  *v47 = v70[0];
  *(v47 + 1) = v49;
  *(v47 + 4) = v71;
  v50 = v65;
  v51 = v67;
  *v65 = v66;
  v50[1] = v51;
  return result;
}

uint64_t sub_1E1704738(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E1704758, 0, 0);
}

uint64_t sub_1E1704758()
{
  type metadata accessor for Bootstrap();
  *(v0 + 80) = ASKBootstrapV2.start()();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9460);
  v2 = sub_1E1302CD4(&qword_1ECEB8250, &unk_1ECEB9460);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1E170486C;

  return MEMORY[0x1EEE176B8](v0 + 56, v1, v2);
}

uint64_t sub_1E170486C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 104) = *(v2 + 56);

    return MEMORY[0x1EEE6DFA0](sub_1E17049D0, 0, 0);
  }
}

uint64_t sub_1E17049D0()
{
  v1 = v0[12];

  sub_1E1AF419C();
  v2 = sub_1E1706714();
  sub_1E17051B0(v0 + 2);
  if (v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[8];
    v6 = sub_1E1706834(v0[13], (v0 + 2), v2, v5);
    sub_1E17074FC(v5);

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_1E1704B08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v3 = sub_1E1AF539C();
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF430C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF4F3C();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E1AF436C();
  v41 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E1707738();
  if (qword_1ECEB0FD8 != -1)
  {
    swift_once();
  }

  v12 = sub_1E1AF591C();
  __swift_project_value_buffer(v12, qword_1ECEF46E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  v13 = swift_allocObject();
  v35 = xmmword_1E1B02CC0;
  *(v13 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  type metadata accessor for DiagnosticsReporter();
  sub_1E1AF416C();
  v14 = type metadata accessor for Bootstrap();
  DiagnosticsReporter.flushRecorder(_:)(*(v37 + *(v14 + 24)));

  sub_1E1707B04();
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v36 = v11;
  v37 = v47;
  sub_1E1AF55EC();
  static PendingAppLaunch.didFinishLaunch(postEventUsing:topic:)(v11, 0xD000000000000011, 0x80000001E1B5AD20);
  v15 = v42;
  sub_1E1AF416C();
  sub_1E1AF4DFC();
  sub_1E1AF416C();
  v34 = v48;
  v16 = v39;
  sub_1E1AF416C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8248);
  v17 = swift_allocObject();
  *(v17 + 16) = v35;
  sub_1E1AF416C();
  v18 = swift_allocObject();
  (*(v38 + 32))(v18 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v5, v3);
  *(v18 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = 0;
  v19 = v18 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E1707E64;
  *(v20 + 24) = v18;
  *(v17 + 32) = sub_1E1543638;
  *(v17 + 40) = v20;
  type metadata accessor for MetricsPipelineTransformer(0);
  v21 = swift_allocObject();
  v22 = v16;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x1E69E7CC0];
  *(v21 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  v23 = v21 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState;
  v24 = v43;
  v25 = *(v43 + 16);
  v38 = a1;
  v26 = v15;
  v25(v21 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState, v15, v8);
  v27 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v28 = v44;
  (*(v44 + 16))(v23 + v27[6], v22, v6);
  *(v23 + v27[5]) = v34;
  *(v23 + v27[7]) = MEMORY[0x1E69E7CC0];
  *(v23 + v27[8]) = v17;

  (*(v28 + 8))(v22, v6);
  (*(v24 + 8))(v26, v8);
  (*(v41 + 8))(v36, v46);
  v29 = OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v21 + v29) = MEMORY[0x1E69E7CC0];

  v30 = v45;
  v31 = v40;
  *v45 = v38;
  v30[1] = v31;
  v30[2] = v21;
}

uint64_t sub_1E17051B0@<X0>(uint64_t *a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8270);
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v37 - v3;
  v5 = sub_1E1AF4D9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = v37 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v51 = v37 - v17;
  v18 = type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  v47 = v18;
  sub_1E1AF55EC();
  v55 = v54[0];
  type metadata accessor for DeepLinkWithReferrerIntent();
  sub_1E1707F80(&qword_1ECEB8278, type metadata accessor for DeepLinkWithReferrerIntent);
  sub_1E1AF51CC();
  if (v1)
  {
  }

  sub_1E1AF4D8C();
  sub_1E1302CD4(&qword_1ECEB8280, &qword_1ECEB8270);
  v44 = 0;
  sub_1E1AF4D4C();
  v20 = v12;
  v39 = v12;
  v21 = *(v6 + 8);
  v21(v20, v5);
  v22 = v6 + 8;
  (*(v46 + 8))(v4, v2);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8288);
  v42 = *(v6 + 72);
  v41 = *(v6 + 80);
  v23 = (v41 + 32) & ~v41;
  v24 = swift_allocObject();
  v25 = *(v6 + 16);
  v45 = v25;
  v25((v24 + v23), v15, v5);
  v46 = v6 + 16;
  v38 = v15;
  sub_1E1AF4D8C();
  v26 = v39;
  v25(v39, v24 + v23, v5);
  swift_setDeallocating();
  v21((v24 + v23), v5);
  swift_deallocClassInstance();
  sub_1E1AF4D7C();
  v27 = v26;
  v21(v26, v5);
  v21(v38, v5);
  v37[1] = v22;
  v28 = v50;
  sub_1E1AF4D8C();
  sub_1E1707F2C();
  v29 = v49;
  sub_1E1AF4D4C();
  v21(v28, v5);
  v30 = swift_allocObject();
  v31 = v45;
  v45((v30 + v23), v29, v5);
  sub_1E1AF4D8C();
  v31(v28, v30 + v23, v5);
  swift_setDeallocating();
  v21((v30 + v23), v5);
  swift_deallocClassInstance();
  sub_1E1AF4D7C();
  v40 = v21;
  v21(v28, v5);
  v21(v29, v5);
  v53[3] = v47;
  v53[4] = sub_1E1707F80(&qword_1ECEB8298, type metadata accessor for JSIntentDispatcher);
  v53[0] = v55;
  v54[3] = v5;
  v54[4] = MEMORY[0x1E69AB358];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v54);
  v33 = v45;
  v45(boxed_opaque_existential_0, v27, v5);
  sub_1E134FD1C(v53, v52, &qword_1ECEB82A0);

  sub_1E1AF4D5C();
  v34 = v40;
  v40(v27, v5);
  sub_1E1308058(v53, &qword_1ECEB82A0);
  v35 = v48;
  v48[3] = v5;
  v35[4] = MEMORY[0x1E69AB358];
  __swift_allocate_boxed_opaque_existential_0(v35);
  v36 = v51;
  v33();
  sub_1E134FD1C(v54, v53, &qword_1ECEB82A0);
  sub_1E1AF4D5C();

  v34(v36, v5);
  return sub_1E1308058(v54, &qword_1ECEB82A0);
}

uint64_t sub_1E1705880()
{
  v1 = v0;
  v2 = sub_1E1AF3EAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF3E9C();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB82A8);
    v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E1B02CC0;
    (*(v3 + 32))(v1 + v6, v5, v2);
  }

  return v1;
}

uint64_t sub_1E1705A04(uint64_t a1, uint64_t a2)
{
  v2[35] = a1;
  v2[36] = a2;
  v3 = sub_1E1AEFEAC();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v2[40] = swift_task_alloc();
  v4 = sub_1E1AF3E1C();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v2[45] = swift_task_alloc();
  v5 = sub_1E1AF43AC();
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1705BF8, 0, 0);
}

uint64_t sub_1E1705BF8()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  sub_1E1AF3FBC();
  v4 = sub_1E1AF43BC();
  v6 = v5;
  result = (*(v2 + 8))(v1, v3);
  if (v6)
  {
    *(v0 + 248) = v4;
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v10 = *(v0 + 336);
    v11 = *(v0 + 328);
    v39 = *(v0 + 344);
    v40 = *(v0 + 320);
    *(v0 + 256) = v6;
    sub_1E1AF6F6C();
    v12 = sub_1E1AEFCCC();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
    sub_1E1AF3DFC();
    v13 = sub_1E1AF4D1C();
    v15 = v14;
    v16 = type metadata accessor for FlowAction();
    v17 = swift_allocObject();
    *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v18 = v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0;
    v19 = (v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
    *v19 = 0;
    v19[1] = 0;
    *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 8;
    sub_1E134FD1C(v9, v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
    v20 = (v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
    *v20 = 0;
    v20[1] = 0;
    v21 = v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
    *v21 = xmmword_1E1B04490;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = 0;
    *(v21 + 40) = 0;
    *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = 0;
    *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 0;
    *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = 0;
    v22 = (v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
    *v22 = v13;
    v22[1] = v15;
    sub_1E134FD1C(v0 + 56, v0 + 96, &unk_1ECEB5670);
    (*(v10 + 16))(v39, v8, v11);
    v23 = sub_1E1AF46DC();
    (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
    v24 = (v17 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v24 = 0u;
    v24[1] = 0u;
    sub_1E134FD1C(v0 + 96, v0 + 136, &unk_1ECEB5670);
    if (*(v0 + 160))
    {
      v41 = *(v0 + 136);
      v42 = *(v0 + 152);
      v43 = *(v0 + 168);
    }

    else
    {
      v26 = *(v0 + 304);
      v25 = *(v0 + 312);
      v27 = *(v0 + 296);
      sub_1E1AEFE9C();
      v28 = sub_1E1AEFE7C();
      v30 = v29;
      (*(v26 + 8))(v25, v27);
      *(v0 + 264) = v28;
      *(v0 + 272) = v30;
      sub_1E1AF6F6C();
      sub_1E1308058(v0 + 136, &unk_1ECEB5670);
    }

    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    v33 = *(v0 + 336);
    v34 = *(v0 + 344);
    v35 = *(v0 + 320);
    v36 = *(v0 + 328);
    sub_1E1308058(v0 + 96, &unk_1ECEB5670);
    v37 = v17 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    *v37 = v41;
    *(v37 + 16) = v42;
    *(v37 + 32) = v43;
    sub_1E137F600(v35, v17 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    (*(v33 + 32))(v17 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v34, v36);

    FlowAction.setPageData(_:)(v0 + 216);

    (*(v33 + 8))(v31, v36);
    sub_1E1308058(v0 + 216, &qword_1ECEB2DF0);
    sub_1E1308058(v32, &unk_1ECEB4B60);
    sub_1E1308058(v0 + 56, &unk_1ECEB5670);
    *(v0 + 40) = v16;
    *(v0 + 48) = sub_1E1707F80(&qword_1ECEB3EB0, type metadata accessor for FlowAction);
    *(v0 + 16) = v17;
    sub_1E1300B24(v0 + 16, v0 + 176);
    sub_1E1AF55AC();
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for Bootstrap()
{
  result = qword_1ECEB8238;
  if (!qword_1ECEB8238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17061D8()
{
  result = type metadata accessor for ASKBootstrapV2(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RenderPipelineDiagnostics.Recorder();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_1E170626C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v35 = a3;
  v37 = a1;
  v38 = a2;
  ObjectType = swift_getObjectType();
  v36 = sub_1E1AF428C();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF58EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF591C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = sub_1E13006E4(0, &unk_1ECEB82B0);
  v42[4] = &protocol witness table for ASDSubscriptionEntitlements;
  v42[0] = v35;
  v41[3] = sub_1E13006E4(0, &qword_1EE1E3480);
  v41[4] = &protocol witness table for ACAccountStore;
  v41[0] = a4;
  *&a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentQueue] = 0;
  *&a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_dialogHandler] = 0;
  v18 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_observers;
  *&a5[v18] = sub_1E15A12D8(MEMORY[0x1E69E7CC0]);
  v19 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock;
  *&a5[v19] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *&a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentCallbacks] = MEMORY[0x1E69E7CC8];
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v10, qword_1EE2160F8);
  (*(v11 + 16))(v13, v20, v10);
  sub_1E1AF590C();
  v21 = v36;
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB100], v36);
  v22 = sub_1E1AF547C();
  (*(v7 + 8))(v9, v21);
  (*(v15 + 8))(v17, v14);
  v23 = &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger];
  v24 = sub_1E1AF410C();
  v25 = MEMORY[0x1E69AB0B0];
  v23[3] = v24;
  v23[4] = v25;
  *v23 = v22;
  v26 = &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId];
  v27 = v38;
  *v26 = v37;
  *(v26 + 1) = v27;
  sub_1E1300B24(v42, &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements]);
  v28 = &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
  *v28 = 0;
  v28[8] = -64;
  sub_1E1300B24(v41, &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider]);
  v40.receiver = a5;
  v40.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v40, sel_init);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 defaultCenter];
  [v32 addObserver:v31 selector:sel_entitlementsDidChange name:*MEMORY[0x1E698B470] object:0];

  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v31;
}

id sub_1E1706714()
{
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v0 = ASKBagContract.arcadeProductFamilyId.getter();
  v2 = v1;
  v3 = [objc_opt_self() sharedInstance];
  sub_1E13006E4(0, &qword_1EE1E3480);
  sub_1E1AF55EC();
  v4 = objc_allocWithZone(type metadata accessor for ArcadeSubscriptionManager());
  v5 = sub_1E170626C(v0, v2, v3, v7, v4);
  LOBYTE(v7) = 1;
  ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&v7);

  return v5;
}

uint64_t sub_1E1706834(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v90 = a4;
  v96 = a3;
  v86 = a2;
  v100 = a1;
  v92 = sub_1E1AF361C();
  v99 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1E1AF3EFC();
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF430C();
  v83 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v78 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v78 - v12;
  v13 = type metadata accessor for ArcadeSubscriptionFieldsProvider();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF4F3C();
  v97 = *(v16 - 8);
  v98 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - v19;
  v21 = sub_1E1AF436C();
  v79 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v78 - v25;
  v26 = sub_1E1AF539C();
  v89 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v85 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78 - v29;
  sub_1E1AF421C();
  v93 = v30;
  v31 = v20;
  v94 = v26;
  sub_1E1AF55EC();
  v95 = v21;
  sub_1E1AF55EC();
  sub_1E1AF42AC();
  sub_1E1AF435C();
  v32 = *(v13 + 20);
  v33 = *MEMORY[0x1E69AB4D8];
  v34 = sub_1E1AF524C();
  (*(*(v34 - 8) + 104))(&v15[v32], v33, v34);
  v35 = v96;
  *v15 = v96;
  v105[3] = v13;
  v105[4] = sub_1E1707F80(&qword_1ECEB8258, type metadata accessor for ArcadeSubscriptionFieldsProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v105);
  sub_1E1707E6C(v15, boxed_opaque_existential_0);
  v37 = qword_1EE1E3888;
  v78 = v35;
  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1E1AF51EC();
  __swift_project_value_buffer(v38, qword_1EE1E3890);
  sub_1E1AF4EFC();
  __swift_destroy_boxed_opaque_existential_1(v105);
  v39 = v81;
  sub_1E1AF416C();
  sub_1E1AF42DC();
  v40 = v83;
  v96 = v31;
  v41 = *(v83 + 8);
  v41(v39, v6);
  v42 = v82;
  sub_1E1AF42CC();
  v41(v10, v6);
  (*(v40 + 16))(v10, v42, v6);
  sub_1E1AF432C();
  v41(v42, v6);
  sub_1E1707ED0(v15);
  __swift_destroy_boxed_opaque_existential_1(&v106);
  v43 = v79;
  v44 = *(v79 + 8);
  v45 = v95;
  v83 = v79 + 8;
  v82 = v44;
  (v44)(v23, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C0);
  v46 = *(v99 + 72);
  v47 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1E1B07790;
  v81 = v47;
  v80 = v48;
  type metadata accessor for ArcadeSubscriptionManager();
  v106 = v78;
  v49 = v78;
  sub_1E1AF35FC();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for ArtworkLoaderURLSession();
  sub_1E1AF416C();
  v50 = v106;
  v51 = v23;
  v52 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v53 = sub_1E1AF5DBC();
  [v52 setName_];

  swift_allocObject();
  v54 = sub_1E1AB21A8(v52, 0, 0, v50);

  v106 = v54;
  sub_1E1AF35FC();
  type metadata accessor for UpdateStore();
  if (qword_1EE1F9770 != -1)
  {
    swift_once();
  }

  v106 = qword_1EE1F9778;
  v55 = qword_1EE1F9778;
  sub_1E1AF35FC();
  v56 = type metadata accessor for URLProtocolDelegate();
  v57 = objc_allocWithZone(v56);
  v58 = OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle;
  *&v57[OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle] = 1;
  swift_beginAccess();
  v59 = *&v57[v58];
  *&v57[v58] = 1;
  sub_1E1547120(v59);
  v104.receiver = v57;
  v104.super_class = v56;
  v106 = objc_msgSendSuper2(&v104, sel_init);
  sub_1E1AF35FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8260);
  sub_1E1300B24(v86, &v106);
  sub_1E1AF35FC();
  (*(v43 + 16))(v51, v101, v45);
  sub_1E1AF35FC();
  (*(v97 + 16))(v84, v96, v98);
  sub_1E1AF35FC();
  type metadata accessor for DiagnosticsReporter();
  sub_1E1707F80(&qword_1EE1E3B00, MEMORY[0x1E69AB038]);
  v60 = v88;
  sub_1E1AF414C();
  swift_allocObject();
  v106 = sub_1E19E4DD8(v60, 0, 0, 0, 0);
  sub_1E1AF35FC();
  v61 = v89;
  v62 = *(v89 + 16);
  v63 = v85;
  v64 = v94;
  v62(v85, v93, v94);
  v65 = type metadata accessor for CommerceDialogHandler();
  v66 = objc_allocWithZone(v65);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v67 = OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_bag;
  v62(&v66[OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_bag], v63, v64);
  (*(v61 + 56))(&v66[v67], 0, 1, v64);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v103.receiver = v66;
  v103.super_class = v65;
  v68 = objc_msgSendSuper2(&v103, sel_init);
  v69 = *(v61 + 8);
  v69(v63, v64);
  v102 = v68;
  v70 = v68;
  v71 = v91;
  sub_1E1AF35FC();
  v72 = v80;
  v74 = v80[2];
  v73 = v80[3];
  if (v74 >= v73 >> 1)
  {
    v72 = sub_1E172EF24(v73 > 1, v74 + 1, 1, v80);
  }

  v75 = v99;
  *(v72 + 16) = v74 + 1;
  (*(v75 + 32))(&v81[v72 + v74 * v46], v71, v92);
  v102 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8268);
  sub_1E1302CD4(&qword_1EE1E34F0, &qword_1ECEB8268);
  v76 = sub_1E1AF41DC();

  (*(v97 + 8))(v96, v98);
  (v82)(v101, v95);
  v69(v93, v94);
  return v76;
}

void sub_1E17074FC(void *a1)
{
  if (a1)
  {
    sub_1E13006E4(0, &qword_1EE1E3488);
    sub_1E1AF421C();
    v2 = a1;
    sub_1E1AF55EC();
    type metadata accessor for URLProtocolDelegate();
    sub_1E1AF55EC();
    v3 = OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle;
    swift_beginAccess();
    v4 = *&v7[v3];
    *&v7[v3] = a1;
    v5 = v2;
    sub_1E1547120(v4);
    [v7 setDelegate_];
  }

  else
  {
    if (qword_1ECEB0FD8 != -1)
    {
      swift_once();
    }

    v6 = sub_1E1AF591C();
    __swift_project_value_buffer(v6, qword_1ECEF46E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }
}

uint64_t sub_1E1707738()
{
  v0 = sub_1E1AF3F6C();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v30 = &v26[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = sub_1E1AF539C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26[-v10];
  sub_1E1AF421C();
  sub_1E1AF55EC();
  type metadata accessor for ASKBagContract();
  sub_1E1AF55EC();
  v12 = v35[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94A0);
  sub_1E1AF55EC();
  v13 = *(v3 + 16);
  v13(v8, v11, v2);
  v14 = *(v12 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag);
  v15 = *(v12 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy);
  v28 = *(v12 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy + 8);
  v29 = v15;
  v27 = *(v12 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy + 16);
  sub_1E1300B24(v35, v34);
  sub_1E13006E4(0, &qword_1EE1E3470);
  sub_1E1AF413C();
  v16 = v33[5];
  v13(v5, v8, v2);
  type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag, v5, v2);
  *(v17 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = v14;
  v18 = v17 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  v19 = v28;
  *v18 = v29;
  *(v18 + 8) = v19;
  *(v18 + 16) = v27;
  sub_1E1300B24(v34, v33);
  type metadata accessor for JSFreshnessWatchdog(0);
  v20 = swift_allocObject();
  v21 = sub_1E163E2E4(v17, v33, v16, v20);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v22 = *(v3 + 8);
  v22(v8, v2);
  v23 = v30;
  sub_1E1AF3F5C();

  __swift_destroy_boxed_opaque_existential_1(v35);
  v22(v11, v2);
  v24 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v31 + 40))(v21 + v24, v23, v32);
  swift_endAccess();
  return v21;
}

void sub_1E1707B04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5AF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  if (qword_1EE1E9EB0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE1E9EC0;
  if (qword_1EE1E2F28 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  (*(v7 + 8))(v9, v6);
  v11 = v19[1];
  v12 = v19[2];
  v13 = (v10 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  *v13 = v11;
  v13[1] = v12;

  sub_1E19CC304();
  v14 = objc_opt_self();
  v15 = [v14 standardUserDefaults];
  sub_1E1AEFE5C();
  v16 = sub_1E1AEFE6C();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  sub_1E17205BC(v5);

  v17 = [v14 standardUserDefaults];
  sub_1E1AF012C();
  v18 = sub_1E1AF013C();
  (*(*(v18 - 8) + 56))(v2, 0, 1, v18);
  sub_1E172080C(v2);
}

uint64_t sub_1E1707E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeSubscriptionFieldsProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1707ED0(uint64_t a1)
{
  v2 = type metadata accessor for ArcadeSubscriptionFieldsProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E1707F2C()
{
  result = qword_1ECEB8290;
  if (!qword_1ECEB8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8290);
  }

  return result;
}

uint64_t sub_1E1707F80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E1708238(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_1E1AEFCCC();
  v29 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 activityType];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    v14 = *MEMORY[0x1E69CDA78];
    *(inited + 32) = *MEMORY[0x1E69CDA78];
    v15 = *&v2[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData];
    sub_1E1307FE8(v15 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl, v6);
    if ((*(v29 + 48))(v6, 1, v7) == 1)
    {
      v16 = v14;

      sub_1E13ECBA0(v6);
    }

    else
    {
      v28 = *(v29 + 32);
      v21 = v28(v10, v6, v7);
      v30 = v12;
      MEMORY[0x1EEE9AC00](v21);
      *(&v27 - 2) = &v30;
      v22 = v14;
      v23 = sub_1E14F22C0(sub_1E1709844, (&v27 - 4), inited);

      if ((v23 & 1) == 0)
      {
        a1[3] = v7;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
        v28(boxed_opaque_existential_0, v10, v7);
        goto LABEL_11;
      }

      (*(v29 + 8))(v10, v7);
    }

    v24 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
    a1[3] = v7;
    v25 = __swift_allocate_boxed_opaque_existential_0(a1);
    (*(v29 + 16))(v25, v15 + v24, v7);
LABEL_11:

    return;
  }

  v17 = *&v2[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData];
  v18 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  a1[3] = v7;
  v19 = __swift_allocate_boxed_opaque_existential_0(a1);
  v20 = *(v29 + 16);

  v20(v19, v17 + v18, v7);
}

id sub_1E17085D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E1708754()
{
  v0 = sub_1E1AF5DFC();
  v2 = v1;
  if (v0 == sub_1E1AF5DFC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

uint64_t sub_1E17087E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v102 - v3;
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v10 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData);
  sub_1E1307FE8(v10 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl, v4);
  v11 = *(v6 + 48);
  if (v11(v4, 1, v5) == 1)
  {
    (*(v6 + 16))(v8, v10 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url, v5);
    if (v11(v4, 1, v5) != 1)
    {
      sub_1E13ECBA0(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v12 = sub_1E1AEFBEC();
  (*(v6 + 8))(v8, v5);
  [v9 setURL_];

  v13 = *(v10 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    v21 = v13 & 0x3FFFFFFFFFFFFFFFLL;
    if (v14 == 2)
    {
      v22 = *(v21 + 48);
      if (v22)
      {
        v23 = *(v22 + 48);
        if (v23)
        {
          swift_retain_n();

          v24 = v23;
          v25 = sub_1E1A6D5A4(v24);
          if (v25)
          {
            v26 = v25;
            v27 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];

LABEL_64:
            v76 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader);
            aBlock = 0uLL;

            v77 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);
            v78 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
            v79 = ArtworkItemProvider.init(artworkLoader:config:)(v76, v77);
            v80 = MEMORY[0x1E696EC68];
LABEL_68:
            v84 = [objc_allocWithZone(v80) initWithItemProvider:v79 properties:0 placeholderImage:v27];
            [v9 setImage_];

            goto LABEL_69;
          }
        }

        else
        {
          swift_retain_n();
        }

        v27 = 0;
        goto LABEL_64;
      }

LABEL_22:
      swift_retain_n();
LABEL_69:

      v85 = sub_1E1AF5DBC();

      [v9 setTitle_];

      v86 = [objc_allocWithZone(MEMORY[0x1E696EC08]) init];
      if (*(v21 + 40))
      {

        v87 = sub_1E1AF5DBC();
      }

      else
      {
        v87 = 0;
      }

      [v86 setSubtitle_];

      [v9 setSpecialization_];

      return v9;
    }

    v32 = *(v21 + 48);
    if (!v32)
    {
      goto LABEL_22;
    }

    v33 = *(v32 + 48);
    if (v33)
    {
      swift_retain_n();

      v34 = v33;
      v35 = sub_1E1A6D5A4(v34);
      if (v35)
      {
        v36 = v35;
        v27 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];

LABEL_67:
        v81 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader);
        aBlock = xmmword_1E1B2BBA0;

        v82 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);

        v83 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
        v79 = ArtworkItemProvider.init(artworkLoader:config:)(v81, v82);
        v80 = MEMORY[0x1E696EC68];
        goto LABEL_68;
      }
    }

    else
    {
      swift_retain_n();
    }

    v27 = 0;
    goto LABEL_67;
  }

  if (!v14)
  {
    v15 = *(v13 + 64);
    if (!v15)
    {
      swift_retain_n();
LABEL_58:

      v73 = sub_1E1AF5DBC();

      [v9 setTitle_];

      v74 = [objc_allocWithZone(MEMORY[0x1E696EC08]) init];
      if (*(v13 + 56))
      {

        v75 = sub_1E1AF5DBC();
      }

      else
      {
        v75 = 0;
      }

      [v74 setSubtitle_];

      [v9 setSpecialization_];

      return v9;
    }

    v16 = *(v15 + 48);
    if (v16)
    {
      swift_retain_n();

      v17 = v16;
      v18 = sub_1E1A6D5A4(v17);
      if (v18)
      {
        v19 = v18;
        v20 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];

LABEL_57:
        v68 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader);
        aBlock = xmmword_1E1B2BBA0;

        v69 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);

        v70 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
        v71 = ArtworkItemProvider.init(artworkLoader:config:)(v68, v69);
        v72 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithItemProvider:v71 properties:0 placeholderImage:v20];
        [v9 setImage_];

        goto LABEL_58;
      }
    }

    else
    {
      swift_retain_n();
    }

    v20 = 0;
    goto LABEL_57;
  }

  v28 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  v29 = objc_allocWithZone(MEMORY[0x1E696ED50]);
  swift_retain_n();
  v30 = [v29 init];
  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
  {

    v31 = sub_1E1AF5DBC();
  }

  else
  {
    v31 = 0;
  }

  [v30 setStoreFrontIdentifier_];

  v37 = sub_1E1AF5DBC();

  [v30 setStoreIdentifier_];

  v38 = sub_1E1AF5DBC();

  [v30 setName_];

  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x48))
  {

    v39 = sub_1E1AF5DBC();
  }

  else
  {
    v39 = 0;
  }

  [v30 setSubtitle_];

  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x58))
  {

    v40 = sub_1E1AF5DBC();
  }

  else
  {
    v40 = 0;
  }

  [v30 setGenre_];

  v41 = *(*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x60) + 48);
  v107 = v30;
  v108 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  if (v41)
  {
    v42 = v41;
    v43 = sub_1E1A6D5A4(v42);
    if (v43)
    {
      v44 = v43;
      v45 = [objc_allocWithZone(MEMORY[0x1E696EC78]) init];
      [v45 setType_];
      v46 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage:v44 properties:v45];

      v42 = v45;
      v28 = v108;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader);

  v49 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 100.0, 100.0);

  v111 = type metadata accessor for ArtworkItemProvider();
  v50 = objc_allocWithZone(v111);
  v51 = ArtworkItemProvider.init(artworkLoader:config:)(v48, v49);
  v52 = [objc_allocWithZone(MEMORY[0x1E696EC78]) init];
  [v52 setType_];
  v53 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithItemProvider:v51 properties:v52 placeholderImage:v47];
  [v107 setIcon_];

  v54 = *(v28 + 104);
  if (!v54)
  {
    goto LABEL_74;
  }

  if (v54 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_43;
    }

LABEL_74:
    v88 = 0;
    goto LABEL_84;
  }

  if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_74;
  }

LABEL_43:
  if ((v54 & 0xC000000000000001) != 0)
  {
    v89 = *(MEMORY[0x1E68FFD80](0, v54) + 16);

    swift_unknownObjectRelease();
    v55 = v89;
    if (v89 < 0)
    {
      goto LABEL_80;
    }

    v56 = v89;
    if ((v89 & 0x4000000000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v55)
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v56 < 0 || (v56 & 0x4000000000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v57)
  {
    while (1)
    {
      v58 = v56;
      v103 = v52;
      v104 = v51;
      v105 = v47;
      v106 = v9;
      v118 = MEMORY[0x1E69E7CC0];
      sub_1E1AF70EC();
      if ((v57 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      v56 = v55;
LABEL_81:
      v90 = v56;
      v57 = sub_1E1AF71CC();
      v56 = v90;
      if (!v57)
      {
        goto LABEL_82;
      }
    }

    v59 = 0;
    v60 = *MEMORY[0x1E6963860];
    v109 = v58 & 0xC000000000000001;
    v110 = v60;
    do
    {
      if (v109)
      {
        MEMORY[0x1E68FFD80](v59);
      }

      else
      {
      }

      ++v59;
      v61 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 300.0, 300.0);
      v62 = v111;
      v63 = objc_allocWithZone(v111);
      *&v63[OBJC_IVAR____TtC11AppStoreKit19ArtworkItemProvider_artworkLoader] = v48;
      *&v63[OBJC_IVAR____TtC11AppStoreKit19ArtworkItemProvider_artworkLoaderConfig] = v61;
      v117.receiver = v63;
      v117.super_class = v62;

      v64 = objc_msgSendSuper2(&v117, sel_init);
      v115 = sub_1E13571A0;
      v116 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v113 = sub_1E1A26138;
      v114 = &block_descriptor_56;
      v65 = _Block_copy(&aBlock);
      v66 = v64;
      v67 = v110;
      [v66 registerDataRepresentationForTypeIdentifier:v67 visibility:3 loadHandler:v65];
      _Block_release(v65);

      [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithItemProvider:v66 properties:0 placeholderImage:0];

      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
    }

    while (v57 != v59);

    v47 = v105;
    v9 = v106;
    v52 = v103;
    v51 = v104;
  }

  else
  {
LABEL_82:
  }

  sub_1E17097F8();
  v88 = sub_1E1AF620C();

  v28 = v108;
LABEL_84:
  v91 = v107;
  [v107 setScreenshots_];

  [v91 setIsMessagesOnlyApp_];
  if (*(v28 + 128))
  {

    v92 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 100.0, 100.0);
    v93 = objc_allocWithZone(v111);
    v94 = ArtworkItemProvider.init(artworkLoader:config:)(v48, v92);
    v95 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithItemProvider:v94 properties:0 placeholderImage:0];
    [v91 setMessagesAppIcon_];
  }

  v96 = *(v108 + 112);
  if (!v96)
  {
    goto LABEL_93;
  }

  if (v96 >> 62)
  {
    result = sub_1E1AF71CC();
    if (!result)
    {
      goto LABEL_93;
    }
  }

  else
  {
    result = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_93:
      v101 = v91;
      [v9 setSpecialization_];

      return v9;
    }
  }

  if ((v96 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1E68FFD80](0, v96);

    goto LABEL_92;
  }

  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_92:
    v98 = objc_allocWithZone(MEMORY[0x1E696ED10]);
    v99 = sub_1E1AEFBEC();
    v100 = [v98 initWithStreamingURL:v99 hasAudio:0];

    [v91 setPreviewVideo_];

    goto LABEL_93;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1709778()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData) + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata);
  v2 = v1 >> 62;
  v3 = 32;
  v4 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  if (v1 >> 62)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
    v3 = 48;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v1 = v4;
    v5 = 16;
  }

  return *(v1 + v5);
}

unint64_t sub_1E17097F8()
{
  result = qword_1ECEB83B0;
  if (!qword_1ECEB83B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEB83B0);
  }

  return result;
}

uint64_t DirectionalTextAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E17098F0()
{
  result = qword_1ECEB83B8;
  if (!qword_1ECEB83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB83B8);
  }

  return result;
}

uint64_t type metadata accessor for StoreViewControllerLifecycleEvent()
{
  result = qword_1EE1F8A68;
  if (!qword_1EE1F8A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17099C8()
{
  v0 = sub_1E1AF4FBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t ScreenshotsLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v25[0] = a1;
  v27 = sub_1E1AF39DC();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v9 = sub_1E1AF380C();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v26 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v12 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB83C0);
  sub_1E1AF381C();
  v29 = v4;
  v13 = *(v4 + 16);
  v14 = a2;
  v15 = a2;
  v16 = v27;
  v13(v8, v15, v27);
  sub_1E1709D64();
  sub_1E1AF464C();
  v17 = v32;
  v18 = v25[1];
  swift_beginAccess();
  *(v18 + v12) = v17;
  v19 = v16;
  v20 = v25[0];

  v21 = v26;
  (*(v30 + 16))(v26, v20, v31);
  v22 = v28;
  v13(v28, v14, v19);
  v23 = Lockup.init(deserializing:using:)(v21, v22);
  (*(v29 + 8))(v14, v19);
  (*(v30 + 8))(v20, v31);
  return v23;
}

unint64_t sub_1E1709D64()
{
  result = qword_1EE1E3520;
  if (!qword_1EE1E3520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB83C0);
    sub_1E1709DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3520);
  }

  return result;
}

unint64_t sub_1E1709DE8()
{
  result = qword_1EE1F66F8;
  if (!qword_1EE1F66F8)
  {
    type metadata accessor for Screenshots();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F66F8);
  }

  return result;
}

uint64_t ScreenshotsLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:screenshots:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v71 = a4;
  v69 = a3;
  v68 = a2;
  v86 = a25;
  v87 = a26;
  v85 = a24;
  v83 = a27;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v72 = a15;
  v70 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v30 = sub_1E1AEFEAC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v59 - v35;
  v37 = swift_allocObject();
  v38 = a1[1];
  v61 = *a1;
  v60 = v38;
  v39 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots) = 0;
  swift_beginAccess();
  *(v37 + v39) = a29;
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  sub_1E134FD1C(a28, v36, &unk_1ECEB1770);
  *(v37 + 424) = 4;
  sub_1E134FD1C(v93, &v90, &unk_1ECEB5670);
  if (*(&v91 + 1))
  {
    v40 = v91;
    *(v37 + 448) = v90;
    *(v37 + 464) = v40;
    *(v37 + 480) = v92;
  }

  else
  {
    sub_1E1AEFE9C();
    v41 = sub_1E1AEFE7C();
    v43 = v42;
    (*(v31 + 8))(v33, v30);
    v88 = v41;
    v89 = v43;
    sub_1E1AF6F6C();
    sub_1E1308058(&v90, &unk_1ECEB5670);
  }

  sub_1E134FD1C(v36, v37 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
  v44 = v60;
  *(v37 + 16) = v61;
  *(v37 + 24) = v44;
  v45 = v69;
  *(v37 + 32) = v68;
  *(v37 + 40) = v45;
  *(v37 + 48) = v71;
  *(v37 + 56) = 0;
  v46 = v65;
  *(v37 + 64) = v64;
  *(v37 + 72) = v46;
  v47 = v76;
  *(v37 + 80) = v75;
  *(v37 + 88) = v47;
  v48 = v78;
  *(v37 + 96) = v77;
  *(v37 + 104) = v48;
  v49 = v63;
  *(v37 + 112) = v62;
  *(v37 + 120) = v49;
  *(v37 + 128) = 0;
  *(v37 + 136) = 2;
  v50 = v67;
  *(v37 + 144) = v66;
  *(v37 + 152) = v50;
  v51 = v72;
  *(v37 + 192) = v70;
  *(v37 + 200) = v51;
  v52 = v74;
  *(v37 + 208) = v73;
  *(v37 + 216) = v52;
  *(v37 + 376) = 0u;
  *(v37 + 392) = 0u;
  *(v37 + 408) = 0x8000;
  *(v37 + 360) = v83;
  *(v37 + 416) = 0;
  *(v37 + 432) = MEMORY[0x1E69E7CD0];
  v53 = v82;
  *(v37 + 160) = v80;
  *(v37 + 168) = v53;
  v54 = v79;
  *(v37 + 176) = v84;
  *(v37 + 184) = v54;
  v56 = v85;
  v55 = v86;
  *(v37 + 224) = v81;
  *(v37 + 232) = v56;
  *(v37 + 240) = v55;
  *(v37 + 248) = 0;
  v57 = v87;
  *(v37 + 256) = 0;
  *(v37 + 264) = v57;
  *(v37 + 272) = 0u;
  *(v37 + 288) = 0u;
  *(v37 + 304) = 0u;
  *(v37 + 320) = 0u;
  *(v37 + 336) = 0;
  sub_1E1308058(a28, &unk_1ECEB1770);
  sub_1E1308058(v36, &unk_1ECEB1770);
  sub_1E1308058(v93, &unk_1ECEB5670);
  *(v37 + 344) = MEMORY[0x1E69E7CC0];
  *(v37 + 352) = 0;
  *(v37 + 440) = 0;
  *(v37 + 368) = 0;
  return v37;
}

uint64_t ScreenshotsLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:screenshots:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v71 = a4;
  v69 = a3;
  v68 = a2;
  v83 = a27;
  v87 = a26;
  v86 = a25;
  v85 = a24;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v72 = a15;
  v70 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v32 = sub_1E1AEFEAC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v59 - v37;
  v39 = a1[1];
  v61 = *a1;
  v60 = v39;
  v40 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots) = 0;
  swift_beginAccess();
  *(v30 + v40) = a29;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  sub_1E134FD1C(a28, v38, &unk_1ECEB1770);
  *(v30 + 424) = 4;
  sub_1E134FD1C(v96, &v90, &unk_1ECEB5670);
  if (*(&v91 + 1))
  {
    v93 = v90;
    v94 = v91;
    v95 = v92;
  }

  else
  {
    sub_1E1AEFE9C();
    v41 = sub_1E1AEFE7C();
    v43 = v42;
    (*(v33 + 8))(v35, v32);
    v88 = v41;
    v89 = v43;
    sub_1E1AF6F6C();
    sub_1E1308058(&v90, &unk_1ECEB5670);
  }

  v44 = v94;
  *(v30 + 448) = v93;
  *(v30 + 464) = v44;
  *(v30 + 480) = v95;
  sub_1E134FD1C(v38, v30 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
  v45 = v60;
  *(v30 + 16) = v61;
  *(v30 + 24) = v45;
  v46 = v69;
  *(v30 + 32) = v68;
  *(v30 + 40) = v46;
  *(v30 + 48) = v71;
  *(v30 + 56) = 0;
  v47 = v65;
  *(v30 + 64) = v64;
  *(v30 + 72) = v47;
  v48 = v76;
  *(v30 + 80) = v75;
  *(v30 + 88) = v48;
  v49 = v78;
  *(v30 + 96) = v77;
  *(v30 + 104) = v49;
  v50 = v63;
  *(v30 + 112) = v62;
  *(v30 + 120) = v50;
  *(v30 + 128) = 0;
  *(v30 + 136) = 2;
  v51 = v67;
  *(v30 + 144) = v66;
  *(v30 + 152) = v51;
  v52 = v72;
  *(v30 + 192) = v70;
  *(v30 + 200) = v52;
  v53 = v74;
  *(v30 + 208) = v73;
  *(v30 + 216) = v53;
  *(v30 + 376) = 0u;
  *(v30 + 392) = 0u;
  *(v30 + 408) = 0x8000;
  *(v30 + 360) = v83;
  *(v30 + 416) = 0;
  *(v30 + 432) = MEMORY[0x1E69E7CD0];
  v54 = v82;
  *(v30 + 160) = v80;
  *(v30 + 168) = v54;
  v55 = v79;
  *(v30 + 176) = v84;
  *(v30 + 184) = v55;
  v56 = v85;
  *(v30 + 224) = v81;
  *(v30 + 232) = v56;
  *(v30 + 240) = v86;
  *(v30 + 248) = 0;
  v57 = v87;
  *(v30 + 256) = 0;
  *(v30 + 264) = v57;
  *(v30 + 272) = 0u;
  *(v30 + 288) = 0u;
  *(v30 + 304) = 0u;
  *(v30 + 320) = 0u;
  *(v30 + 336) = 0;
  sub_1E1308058(a28, &unk_1ECEB1770);
  sub_1E1308058(v38, &unk_1ECEB1770);
  sub_1E1308058(v96, &unk_1ECEB5670);
  *(v30 + 344) = MEMORY[0x1E69E7CC0];
  *(v30 + 352) = 0;
  *(v30 + 440) = 0;
  *(v30 + 368) = 0;
  return v30;
}

uint64_t sub_1E170A868(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1E170A918(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ScreenshotsLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t ScreenshotsLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScreenshotsLockup()
{
  result = qword_1ECEB83C8;
  if (!qword_1ECEB83C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayPage.__allocating_init(shelfBasedPageContents:title:titleDetail:shortTitleDetail:longTitle:tabTitle:nextPage:onboardingCardIds:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v82 = a6;
  v83 = a7;
  v85 = a8;
  v86 = a17;
  v89 = a16;
  v87 = a18;
  v88 = a15;
  v84 = a14;
  v80 = a5;
  v81 = a12;
  v78 = a4;
  v79 = a11;
  v76 = a3;
  v77 = a10;
  v75 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v74 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v73 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v73 - v26;
  v28 = sub_1E1AF3C3C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x1E69E7CD0];
  *(v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering) = a1;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping) = a2;
  v34 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);
  v35 = v78;
  *v34 = v76;
  v34[1] = v35;
  v36 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);
  v38 = v82;
  v37 = v83;
  *v36 = v80;
  v36[1] = v38;
  v39 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);
  *v39 = v37;
  v39[1] = v85;
  v40 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);
  v41 = v77;
  *v40 = v75;
  v40[1] = v41;
  v42 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);
  v43 = v81;
  *v42 = v79;
  v42[1] = v43;
  v85 = a13;
  sub_1E134FD1C(a13, v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &qword_1ECEB2DF0);
  *(v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_onboardingCardIds) = v84;

  v45 = sub_1E170BB9C(v44);
  v46 = v28;
  v47 = v27;

  swift_beginAccess();
  *(v32 + v33) = v45;
  v48 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind);
  *v48 = 0;
  v48[1] = 0;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_dateRelevance) = MEMORY[0x1E69E7CC0];
  v49 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl);
  *v49 = 0;
  v49[1] = 0;
  v83 = v29;
  v50 = *(v29 + 16);
  v50(v31, v89, v46);
  v51 = v87;
  sub_1E134FD1C(v87, v27, &qword_1ECEB3B28);
  *(v32 + 16) = v88;
  v84 = v46;
  v50((v32 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v31, v46);
  *(v32 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v86;
  sub_1E134FD1C(v27, v24, &qword_1ECEB3B28);
  v52 = sub_1E1AF39DC();
  v53 = *(v52 - 8);
  v54 = v24;
  v55 = v24;
  v56 = *(v53 + 48);
  if (v56(v55, 1, v52) == 1)
  {
    sub_1E1308058(v51, &qword_1ECEB3B28);
    v57 = v84;
    v58 = *(v83 + 8);
    v58(v89, v84);
    sub_1E1308058(v85, &qword_1ECEB2DF0);
    sub_1E1308058(v47, &qword_1ECEB3B28);
    v58(v31, v57);
    v59 = v54;
  }

  else
  {
    v82 = v54;
    v80 = v31;
    v60 = qword_1EE1E3BC8;

    if (v60 != -1)
    {
      swift_once();
    }

    v81 = v47;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v61, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v62 = v90;
    if (v90)
    {
    }

    v63 = *(v53 + 8);
    v63(v82, v52);
    v64 = v74;
    if (!v62)
    {

      sub_1E1308058(v87, &qword_1ECEB3B28);
      v68 = v84;
      v69 = *(v83 + 8);
      v69(v89, v84);
      sub_1E1308058(v85, &qword_1ECEB2DF0);
      sub_1E1308058(v81, &qword_1ECEB3B28);
      v69(v80, v68);
      return v32;
    }

    v65 = v81;
    sub_1E134FD1C(v81, v74, &qword_1ECEB3B28);
    if (v56(v64, 1, v52) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v87, &qword_1ECEB3B28);
      v70 = v84;
      v71 = *(v83 + 8);
      v71(v89, v84);
      sub_1E1308058(v85, &qword_1ECEB2DF0);
      sub_1E1308058(v65, &qword_1ECEB3B28);
      v71(v80, v70);
      v63(v64, v52);
      return v32;
    }

    sub_1E1308058(v87, &qword_1ECEB3B28);
    v66 = v84;
    v67 = *(v83 + 8);
    v67(v89, v84);
    sub_1E1308058(v85, &qword_1ECEB2DF0);
    sub_1E1308058(v65, &qword_1ECEB3B28);
    v67(v80, v66);
    v59 = v64;
  }

  sub_1E1308058(v59, &qword_1ECEB3B28);
  return v32;
}

uint64_t TodayPage.init(shelfBasedPageContents:title:titleDetail:shortTitleDetail:longTitle:tabTitle:nextPage:onboardingCardIds:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v81 = a6;
  v82 = a7;
  v84 = a8;
  v85 = a17;
  v88 = a16;
  v86 = a18;
  v87 = a15;
  v83 = a14;
  v79 = a5;
  v80 = a12;
  v77 = a4;
  v78 = a11;
  v75 = a9;
  v76 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v74 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v74 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v74 - v29;
  v31 = sub_1E1AF3C3C();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x1E69E7CD0];
  *(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering) = a1;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping) = a2;
  v35 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);
  v36 = v77;
  *v35 = a3;
  v35[1] = v36;
  v37 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);
  v39 = v81;
  v38 = v82;
  *v37 = v79;
  v37[1] = v39;
  v40 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);
  *v40 = v38;
  v40[1] = v84;
  v41 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);
  v42 = v76;
  *v41 = v75;
  v41[1] = v42;
  v44 = v43;
  v45 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);
  v46 = v80;
  *v45 = v78;
  v45[1] = v46;
  v84 = a13;
  sub_1E134FD1C(a13, v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &qword_1ECEB2DF0);
  *(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_onboardingCardIds) = v83;

  v48 = sub_1E170BB9C(v47);
  v49 = v31;
  v50 = v30;

  swift_beginAccess();
  *(v19 + v34) = v48;

  v51 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind);
  *v51 = 0;
  v51[1] = 0;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_dateRelevance) = MEMORY[0x1E69E7CC0];
  v52 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl);
  *v52 = 0;
  v52[1] = 0;
  v82 = v44;
  v53 = *(v44 + 16);
  v53(v33, v88, v49);
  v54 = v86;
  sub_1E134FD1C(v86, v50, &qword_1ECEB3B28);
  *(v19 + 16) = v87;
  v83 = v33;
  v81 = v49;
  v53((v19 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v33, v49);
  *(v19 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v85;
  sub_1E134FD1C(v50, v27, &qword_1ECEB3B28);
  v55 = sub_1E1AF39DC();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v27, 1, v55) == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB3B28);
    v58 = v81;
    v59 = *(v82 + 8);
    v59(v88, v81);
    sub_1E1308058(v84, &qword_1ECEB2DF0);
    sub_1E1308058(v50, &qword_1ECEB3B28);
    v59(v83, v58);
    v60 = v27;
  }

  else
  {
    v80 = v27;
    v61 = qword_1EE1E3BC8;

    if (v61 != -1)
    {
      swift_once();
    }

    v79 = v50;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v62, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v63 = v89;
    if (v89)
    {
    }

    v64 = *(v56 + 8);
    v64(v80, v55);
    v65 = v74;
    if (!v63)
    {

      sub_1E1308058(v86, &qword_1ECEB3B28);
      v69 = v81;
      v70 = *(v82 + 8);
      v70(v88, v81);
      sub_1E1308058(v84, &qword_1ECEB2DF0);
      sub_1E1308058(v79, &qword_1ECEB3B28);
      v70(v83, v69);
      return v19;
    }

    v66 = v79;
    sub_1E134FD1C(v79, v74, &qword_1ECEB3B28);
    if (v57(v65, 1, v55) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v86, &qword_1ECEB3B28);
      v71 = v81;
      v72 = *(v82 + 8);
      v72(v88, v81);
      sub_1E1308058(v84, &qword_1ECEB2DF0);
      sub_1E1308058(v66, &qword_1ECEB3B28);
      v72(v83, v71);
      v64(v65, v55);
      return v19;
    }

    sub_1E1308058(v86, &qword_1ECEB3B28);
    v67 = v81;
    v68 = *(v82 + 8);
    v68(v88, v81);
    sub_1E1308058(v84, &qword_1ECEB2DF0);
    sub_1E1308058(v66, &qword_1ECEB3B28);
    v68(v83, v67);
    v60 = v65;
  }

  sub_1E1308058(v60, &qword_1ECEB3B28);
  return v19;
}

uint64_t sub_1E170BB9C(uint64_t a1)
{
  v27 = MEMORY[0x1E69E7CD0];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v16 = v5;
  v17 = v1;
  v8 = 0;
  if (v4)
  {
    while (1)
    {
LABEL_6:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = *(*(a1 + 56) + ((v7 << 9) | (8 * v9)));
      LOBYTE(v24) = *(v10 + 16);
      if (Shelf.ContentType.rawValue.getter() == 0x7261437961646F74 && v11 == 0xE900000000000064)
      {

LABEL_10:
        v13 = *(v10 + 24);
        v14 = *(v13 + 16);
        result = swift_bridgeObjectRetain_n();
        v15 = 0;
        while (1)
        {
          if (v15 == v14)
          {
            v26 = 0;
            v15 = v14;
            v24 = 0u;
            v25 = 0u;
          }

          else
          {
            if ((v15 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            if (v15 >= *(v13 + 16))
            {
              goto LABEL_28;
            }

            sub_1E1300B24(v13 + 32 + 40 * v15++, &v24);
          }

          v22[0] = v24;
          v22[1] = v25;
          v23 = v26;
          if (!*(&v25 + 1))
          {
            break;
          }

          sub_1E1361B28(v22, v21);
          sub_1E1300B24(v21, v19);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
          type metadata accessor for TodayCard();
          if ((swift_dynamicCast() & 1) == 0)
          {
            v20 = 0;
          }

          result = __swift_destroy_boxed_opaque_existential_1(v21);
          if (v20)
          {
            sub_1E1894874(&v24, *(*(v20 + 64) + 16));
          }
        }

        swift_bridgeObjectRelease_n();

        v5 = v16;
        v1 = v17;
        v8 = v7;
        if (!v4)
        {
          break;
        }
      }

      else
      {
        v12 = sub_1E1AF74AC();

        if (v12)
        {
          goto LABEL_10;
        }

        v8 = v7;
        if (!v4)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v27;
    }

    v4 = *(v1 + 8 * v7);
    ++v8;
    if (v4)
    {
      goto LABEL_6;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

char *TodayPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v149 = a2;
  v154 = a1;
  v144 = *v2;
  v3 = sub_1E1AF39DC();
  v150 = *(v3 - 8);
  v151 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v139 = v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v140 = (v123 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v147 = v123 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v135 = v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v133 = v123 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v123 - v14;
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v136 = v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v134 = v123 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v132 = v123 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v131 = v123 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v123 - v26;
  v28 = sub_1E1AF5A6C();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v129 = v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v128 = v123 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v130 = v123 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = v123 - v36;
  v38 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds;
  v141 = v2;
  *&v2[OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds] = MEMORY[0x1E69E7CD0];
  sub_1E1AF381C();
  sub_1E1AF374C();
  v39 = v28;
  v137 = v17;
  v41 = *(v17 + 8);
  v40 = v17 + 8;
  v42 = v27;
  v43 = v41;
  v44 = v16;
  v41(v42, v16);
  v142 = v29[6];
  v143 = v29 + 6;
  if (v142(v15, 1, v39) == 1)
  {
    sub_1E1308058(v15, &qword_1ECEB1F90);
    v45 = sub_1E1AF5A7C();
    sub_1E170CDB0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v46 = 0x7365766C656873;
    v47 = v144;
    v46[1] = 0xE700000000000000;
    v46[2] = v47;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x1E69AB690], v45);
    swift_willThrow();
    (*(v150 + 8))(v149, v151);
    v43(v154, v16);

    type metadata accessor for TodayPage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v141;
    v126 = v38;
    v144 = v43;
    v145 = v40;
    v138 = v44;
    v49 = v29[4];
    v125 = v29 + 4;
    v124 = v49;
    v49(v37, v15, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    v50 = swift_allocObject();
    *(v50 + 16) = MEMORY[0x1E69E7CC0];
    *&v152 = v50;
    if (qword_1EE1E3BC8 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v51, qword_1EE1E3BD0);
    v52 = v147;
    sub_1E1AF395C();

    v53 = v29[2];
    v127 = v37;
    v53(v130, v37, v39);
    v54 = *(v150 + 16);
    v146 = v39;
    v123[1] = v150 + 16;
    v123[0] = v54;
    v54(v140, v52, v151);
    type metadata accessor for Shelf();
    sub_1E170CDB0(&qword_1EE1E5488, type metadata accessor for Shelf);
    v55 = sub_1E1AF631C();
    v56 = sub_1E175EC2C(v55);
    v58 = v57;

    v59 = v48;
    *&v48[OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering] = v56;
    *&v48[OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping] = v58;
    v60 = v131;
    sub_1E1AF381C();
    v61 = sub_1E1AF37CC();
    v63 = v62;
    v64 = v138;
    v140 = v29;
    v65 = v144;
    v144(v60, v138);
    v66 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_title];
    *v66 = v61;
    v66[1] = v63;
    sub_1E1AF381C();
    v67 = sub_1E1AF37CC();
    v69 = v68;
    v65(v60, v64);
    v70 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail];
    *v70 = v67;
    v70[1] = v69;
    sub_1E1AF381C();
    v71 = sub_1E1AF37CC();
    v73 = v72;
    v65(v60, v64);
    v74 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail];
    *v74 = v71;
    v74[1] = v73;
    sub_1E1AF381C();
    v75 = sub_1E1AF37CC();
    v77 = v76;
    v65(v60, v64);
    v78 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle];
    *v78 = v75;
    v78[1] = v77;
    sub_1E1AF381C();
    v79 = sub_1E1AF37CC();
    v81 = v80;
    v65(v60, v64);
    v82 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle];
    *v82 = v79;
    v82[1] = v81;
    sub_1E1AF381C();
    sub_1E1AF37EC();
    v65(v60, v64);
    v83 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage];
    v84 = v153;
    *v83 = v152;
    *(v83 + 1) = v84;
    v85 = v132;
    sub_1E1AF381C();
    v86 = v133;
    sub_1E1AF374C();
    v65(v85, v64);
    v87 = v146;
    v88 = v142(v86, 1, v146);
    v89 = v140;
    if (v88 == 1)
    {
      sub_1E1308058(v86, &qword_1ECEB1F90);
      v90 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v91 = v128;
      v124(v128, v86, v87);
      v92 = v148;
      v90 = sub_1E1AF59FC();
      v148 = v92;
      v89[1](v91, v87);
    }

    v93 = v126;
    *&v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_onboardingCardIds] = v90;
    swift_beginAccess();

    v95 = sub_1E170BB9C(v94);

    swift_beginAccess();
    *&v93[v59] = v95;

    sub_1E1AF381C();
    v96 = sub_1E1AF37CC();
    v98 = v97;
    v99 = v144;
    v144(v60, v64);
    v100 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind];
    *v100 = v96;
    v100[1] = v98;
    v101 = v134;
    sub_1E1AF381C();
    v102 = v135;
    sub_1E1AF374C();
    v99(v101, v64);
    v103 = v146;
    if (v142(v102, 1, v146) == 1)
    {
      sub_1E1308058(v102, &qword_1ECEB1F90);
      v104 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v105 = v129;
      v124(v129, v102, v103);
      sub_1E170D184();
      v106 = v148;
      v104 = sub_1E1AF59FC();
      v148 = v106;
      v140[1](v105, v103);
    }

    v107 = v150;
    *&v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_dateRelevance] = v104;
    v108 = v154;
    sub_1E1AF381C();
    v109 = sub_1E1AF37CC();
    v111 = v110;
    v112 = v138;
    v113 = v144;
    v144(v60, v138);
    v114 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl];
    *v114 = v109;
    v114[1] = v111;
    v115 = v136;
    (*(v137 + 16))(v136, v108, v112);
    v116 = v139;
    v117 = v149;
    v118 = v151;
    (v123[0])(v139, v149, v151);
    v119 = v148;
    v120 = BasePage.init(deserializing:using:)(v115, v116);
    if (v119)
    {
      v38 = *(v107 + 8);
      (v38)(v117, v118);
      v113(v108, v112);
      (v38)(v147, v118);
    }

    else
    {
      v38 = v120;
      v121 = *(v107 + 8);
      v121(v117, v118);
      v113(v108, v112);
      v121(v147, v118);
    }

    v140[1](v127, v146);
  }

  return v38;
}

uint64_t type metadata accessor for TodayPage()
{
  result = qword_1EE1D2CA8;
  if (!qword_1EE1D2CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E170CDB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E170CDF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v27 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = sub_1E1AEFE6C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  sub_1E1AF381C();
  sub_1E1AF371C();
  v18 = *(v9 + 8);
  v28 = v8;
  v18(v13, v8);
  v31 = v15;
  v19 = *(v15 + 48);
  if (v19(v7, 1, v14) == 1)
  {
    result = sub_1E1308058(v7, &unk_1ECEBB780);
    v21 = 0;
  }

  else
  {
    (*(v31 + 32))(v17, v7, v14);
    v22 = v27;
    sub_1E1AF381C();
    v23 = v30;
    sub_1E1AF371C();
    v18(v22, v28);
    v24 = sub_1E1AEFDBC();
    if (v19(v23, 1, v14) == 1)
    {
      v25 = 0;
      v26 = v31;
    }

    else
    {
      v25 = sub_1E1AEFDBC();
      v26 = v31;
      (*(v31 + 8))(v23, v14);
    }

    v21 = [objc_allocWithZone(MEMORY[0x1E696E810]) initWithStartDate:v24 endDate:v25];

    result = (*(v26 + 8))(v17, v14);
  }

  *v32 = v21;
  return result;
}

unint64_t sub_1E170D184()
{
  result = qword_1ECEB83D8;
  if (!qword_1ECEB83D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEB83D8);
  }

  return result;
}

uint64_t TodayPage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);

  return v1;
}

uint64_t TodayPage.titleDetail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);

  return v1;
}

uint64_t TodayPage.shortTitleDetail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);

  return v1;
}

uint64_t TodayPage.longTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);

  return v1;
}

uint64_t TodayPage.tabTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);

  return v1;
}

uint64_t sub_1E170D368(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping;
  swift_beginAccess();

  v5 = sub_1E14E6CA4(v4, a1);

  *(v1 + v3) = v5;
}

uint64_t sub_1E170D3F4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v90 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v90 - v12;
  v106 = sub_1E1AF3C3C();
  v111 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v90 - v15;
  v16 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = MEMORY[0x1E69E7CC0];
  v114 = MEMORY[0x1E69E7CC0];
  v19 = *(v17 + 16);
  v20 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping;

  swift_beginAccess();
  if (!v19)
  {
    goto LABEL_14;
  }

  v21 = 0;
  v22 = v17 + 32;
  v107 = v19 - 1;
  v109 = v4;
  v108 = v17 + 32;
  do
  {
    v23 = v22 + 40 * v21;
    v24 = v21;
    while (1)
    {
      if (v24 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      sub_1E134E724(v23, v115);
      if (*(*(a1 + v20) + 16))
      {
        break;
      }

LABEL_4:
      ++v24;
      sub_1E134B88C(v115);
      v23 += 40;
      if (v19 == v24)
      {
        v4 = v109;
        goto LABEL_14;
      }
    }

    sub_1E135FCF4(v115);
    if ((v25 & 1) == 0)
    {

      goto LABEL_4;
    }

    v26 = sub_1E134B88C(v115);
    MEMORY[0x1E68FEF20](v26);
    if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v21 = v24 + 1;
    sub_1E1AF62AC();
    v18 = v114;
    v4 = v109;
    v22 = v108;
  }

  while (v107 != v24);
LABEL_14:

  v27 = sub_1E175EC2C(v18);
  v29 = v28;

  v93 = sub_1E175EF08(v27, v29, 1, v4, &protocol witness table for TodayPage);
  v31 = v30;

  v32 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);
  v33 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title + 8);
  v34 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);
  v35 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail + 8);
  v36 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail + 8);
  v96 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);
  v109 = v36;
  v37 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle + 8);
  v95 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);
  v108 = v37;
  v38 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle + 8);
  v94 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);
  v107 = v38;
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, v115, &qword_1ECEB2DF0);
  v39 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_onboardingCardIds);
  v40 = *(v2 + 16);
  v100 = v32;
  v99 = v33;
  v98 = v34;
  v97 = v35;
  if (v40)
  {
    v41 = *(a1 + 16);

    v101 = sub_1E16F6684(v41);
  }

  else
  {
    v101 = *(a1 + 16);
  }

  v43 = v111;
  v42 = v112;
  v44 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v45 = *(v43 + 16);
  v46 = v42;
  v47 = v106;
  v45(v46, v2 + v44, v106);
  v92 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
  v48 = sub_1E1AF39DC();
  v102 = *(v48 - 8);
  v49 = v110;
  (*(v102 + 56))(v110, 1, 1, v48);
  type metadata accessor for TodayPage();
  v2 = swift_allocObject();
  v50 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x1E69E7CD0];
  *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering) = v93;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping) = v31;
  v51 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);
  v52 = v99;
  *v51 = v100;
  v51[1] = v52;
  v53 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);
  v54 = v97;
  *v53 = v98;
  v53[1] = v54;
  v55 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);
  v56 = v109;
  *v55 = v96;
  v55[1] = v56;
  v57 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);
  v58 = v108;
  *v57 = v95;
  v57[1] = v58;
  v59 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);
  v60 = v107;
  *v59 = v94;
  v59[1] = v60;
  sub_1E134FD1C(v115, v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &qword_1ECEB2DF0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_onboardingCardIds) = v39;

  v62 = sub_1E170BB9C(v61);

  swift_beginAccess();
  *(v2 + v50) = v62;
  v63 = v112;
  v64 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind);
  *v64 = 0;
  v64[1] = 0;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_dateRelevance) = MEMORY[0x1E69E7CC0];
  v65 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl);
  *v65 = 0;
  v65[1] = 0;
  v66 = v105;
  v45(v105, v63, v47);
  v67 = v49;
  v68 = v104;
  sub_1E134FD1C(v67, v104, &qword_1ECEB3B28);
  *(v2 + 16) = v101;
  v45((v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v66, v47);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v92;
  v69 = v103;
  sub_1E134FD1C(v68, v103, &qword_1ECEB3B28);
  v70 = *(v102 + 48);
  v91 = v48;
  if (v70(v69, 1, v48) == 1)
  {

    sub_1E1308058(v68, &qword_1ECEB3B28);
    v71 = *(v111 + 8);
    v71(v66, v47);
    sub_1E1308058(v110, &qword_1ECEB3B28);
    v71(v63, v47);
    sub_1E1308058(v115, &qword_1ECEB2DF0);
    v72 = v69;
    v73 = &qword_1ECEB3B28;
    goto LABEL_26;
  }

  v109 = v70;
  v74 = qword_1EE1E3BC8;

  if (v74 != -1)
  {
LABEL_30:
    swift_once();
  }

  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
  __swift_project_value_buffer(v75, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
  sub_1E1AF39EC();
  v76 = v113;
  v77 = v90;
  v78 = v110;
  v79 = v104;
  v80 = v102;
  if (v113)
  {
  }

  v81 = *(v80 + 8);
  v82 = v91;
  v81(v103, v91);
  if (v76)
  {
    sub_1E134FD1C(v79, v77, &qword_1ECEB3B28);
    if (v109(v77, 1, v82) == 1)
    {

      sub_1E1308058(v79, &qword_1ECEB3B28);
      v83 = *(v111 + 8);
      v84 = v106;
      v83(v105, v106);
      sub_1E1308058(v78, &qword_1ECEB3B28);
      v83(v112, v84);
      sub_1E1308058(v115, &qword_1ECEB2DF0);
      v72 = v77;
      v73 = &qword_1ECEB3B28;
      goto LABEL_26;
    }

    sub_1E15F0974();

    sub_1E1308058(v79, &qword_1ECEB3B28);
    v88 = *(v111 + 8);
    v89 = v106;
    v88(v105, v106);
    sub_1E1308058(v78, &qword_1ECEB3B28);
    v88(v112, v89);
    sub_1E1308058(v115, &qword_1ECEB2DF0);
    v81(v77, v91);
  }

  else
  {

    sub_1E1308058(v79, &qword_1ECEB3B28);
    v85 = *(v111 + 8);
    v86 = v106;
    v85(v105, v106);
    sub_1E1308058(v78, &qword_1ECEB3B28);
    v85(v112, v86);
    v73 = &qword_1ECEB2DF0;
    v72 = v115;
LABEL_26:
    sub_1E1308058(v72, v73);
  }

  return v2;
}

uint64_t TodayPage.widgetKind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind);

  return v1;
}

uint64_t TodayPage.feedPreviewUrl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl);

  return v1;
}

uint64_t sub_1E170E0C8()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &qword_1ECEB2DF0);
}

uint64_t TodayPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &qword_1ECEB2DF0);

  return v0;
}

uint64_t TodayPage.__deallocating_deinit()
{
  TodayPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E170E40C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E170D3F4(*a1);
  *a2 = result;
  return result;
}

void *sub_1E170E630(void **a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_1E1AF576C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60[-v13];
  v15 = sub_1E1AEFE6C();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = *a3;
  v4[5] = MEMORY[0x1E69E7CC0];
  v62 = (v4 + 5);
  if (qword_1EE1F9658 != -1)
  {
    swift_once();
  }

  v70 = qword_1EE1F9660;
  [qword_1EE1F9660 lock];
  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  v17 = off_1EE1E1910;
  if (off_1EE1E1910)
  {

    v18 = v63;
    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v20 = v19;
    (*(v64 + 8))(v18, v65);
    swift_beginAccess();
    v17[16] = v20;
    *(v17 + 136) = 0;
  }

  v67 = v4;
  [v70 unlock];
  sub_1E1AF575C();
  v21 = ASKPerformanceProfileGetForCurrentDevice();
  v69 = a2;
  v22 = v14;
  if (v21)
  {
    v23 = v14;
    v24 = a1;
    v25 = v9;
    v26 = v8;
    v27 = ASKDeviceTypeGetCurrent();
    v28 = sub_1E1AF5DFC();
    v30 = v29;
    if (v28 == sub_1E1AF5DFC() && v30 == v31)
    {

      v8 = v26;
      v9 = v25;
      a1 = v24;
      v22 = v23;
    }

    else
    {
      v32 = sub_1E1AF74AC();

      v8 = v26;
      v9 = v25;
      a1 = v24;
      v22 = v23;
      if ((v32 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  sub_1E1AF574C();
LABEL_13:
  sub_1E1AF57AC();
  v33 = *a1;
  v34 = *(v9 + 16);
  v68 = v22;
  v34(v11, v22, v8);

  v35 = v33;
  sub_1E1535508();
  v36 = v66;
  v37 = sub_1E1AF578C();
  if (v36)
  {
    sub_1E14382EC();
    sub_1E1AF44CC();
    v38 = sub_1E1AF44BC();
    sub_1E14EFB84(v38, MEMORY[0x1E69AB170], 7368801);
    v39 = v67;

    swift_willThrow();

    sub_1E1712344(a1);
    (*(v9 + 8))(v68, v8);

    type metadata accessor for JSService();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v67;
    v67[2] = v37;
    if (qword_1EE1ED910 != -1)
    {
      swift_once();
    }

    [qword_1EE216A18 setValue_];
    v40 = v39[2];
    type metadata accessor for JSGarbageCollector();
    v41 = swift_allocObject();
    *(v41 + 24) = v40;
    v42 = objc_allocWithZone(MEMORY[0x1E69AB830]);

    *(v41 + 32) = [v42 init];
    sub_1E1AF3F2C();
    *(v41 + 16) = v61;
    v39[3] = v41;
    type metadata accessor for NetworkActivity();
    sub_1E1AF413C();
    v39[4] = *&v71[0];
    v43 = swift_allocObject();
    swift_weakInit();

    sub_1E154A7E8(sub_1E1712398, v43, v71);

    v44 = v62;
    swift_beginAccess();
    v45 = v39[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[5] = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_1E172E854(0, *(v45 + 2) + 1, 1, v45);
      *v44 = v45;
    }

    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    if (v48 >= v47 >> 1)
    {
      v45 = sub_1E172E854((v47 > 1), v48 + 1, 1, v45);
    }

    *(v45 + 2) = v48 + 1;
    sub_1E1301CF0(v71, &v45[32 * v48 + 32]);
    v39[5] = v45;
    swift_endAccess();
    v49 = swift_allocObject();
    swift_weakInit();

    sub_1E154A7C0(sub_1E17123B8, v49, v71);

    swift_beginAccess();
    v50 = v39[5];
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v39[5] = v50;
    if ((v51 & 1) == 0)
    {
      v50 = sub_1E172E854(0, *(v50 + 2) + 1, 1, v50);
      *v44 = v50;
    }

    v53 = *(v50 + 2);
    v52 = *(v50 + 3);
    if (v53 >= v52 >> 1)
    {
      v50 = sub_1E172E854((v52 > 1), v53 + 1, 1, v50);
    }

    *(v50 + 2) = v53 + 1;
    sub_1E1301CF0(v71, &v50[32 * v53 + 32]);
    v39[5] = v50;
    swift_endAccess();
    swift_allocObject();
    swift_weakInit();

    sub_1E1AF571C();

    v54 = *(v39[3] + 16) == 1;

    sub_1E1661520(v54);

    [v70 lock];
    v55 = off_1EE1E1910;
    if (off_1EE1E1910)
    {

      v56 = v63;
      sub_1E1AEFE5C();
      sub_1E1AEFE1C();
      v58 = v57;
      (*(v64 + 8))(v56, v65);
      swift_beginAccess();
      v55[18] = v58;
      *(v55 + 152) = 0;
    }

    [v70 unlock];

    sub_1E1712344(a1);
    (*(v9 + 8))(v68, v8);
  }

  return v39;
}

uint64_t sub_1E170EF8C(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1E1AF577C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v4 = sub_1E1661320(a2);
    sub_1E1661520(v4);
  }

  return result;
}

void sub_1E170F078(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E1AF56FC();
  sub_1E17123E0(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
  v4 = swift_allocError();
  (*(*(v3 - 8) + 16))(v5, a2, v3);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v7 = Strong;
  if (Strong)
  {
    Strong = type metadata accessor for JSService();
  }

  else
  {
    v8[1] = 0;
    v8[2] = 0;
  }

  v8[0] = v7;
  v8[3] = Strong;
  sub_1E14EE420(v4, v8);
  sub_1E1308058(v8, &qword_1ECEB2DF0);
}

uint64_t sub_1E170F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[63] = a7;
  v8[64] = v7;
  v8[61] = a5;
  v8[62] = a6;
  v8[59] = a3;
  v8[60] = a4;
  v8[57] = a1;
  v8[58] = a2;
  v8[65] = type metadata accessor for JSRequestIntentFetchError();
  v8[66] = swift_task_alloc();
  sub_1E1AF389C();
  v8[67] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[68] = AssociatedTypeWitness;
  v8[69] = *(AssociatedTypeWitness - 8);
  v8[70] = swift_task_alloc();
  v11 = sub_1E1AF409C();
  v8[71] = v11;
  v8[72] = *(v11 - 8);
  v8[73] = swift_task_alloc();
  v12 = sub_1E1AF426C();
  v8[74] = v12;
  v8[75] = *(v12 - 8);
  v8[76] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v8[77] = v13;
  v8[78] = *(v13 - 8);
  v8[79] = swift_task_alloc();
  v14 = sub_1E1AF3D0C();
  v8[80] = v14;
  v8[81] = *(v14 - 8);
  v8[82] = swift_task_alloc();
  v15 = sub_1E1AF4C2C();
  v8[83] = v15;
  v8[84] = *(v15 - 8);
  v8[85] = swift_task_alloc();
  v8[86] = *(a6 - 8);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v16 = sub_1E1AF0F7C();
  v8[89] = v16;
  v8[90] = *(v16 - 8);
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E170F588, 0, 0);
}

uint64_t sub_1E170F588()
{
  v72 = v0;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 496);
  v4 = *(v0 + 464);
  v5 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v5, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v69 = *(v2 + 16);
  v69(v1, v4, v3);
  v6 = sub_1E1AF0F8C();
  v7 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v8 = *(v0 + 704);
    v9 = *(v0 + 688);
    v10 = *(v0 + 496);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v70 = v12;
    *v11 = 136315138;
    v13 = sub_1E1AF390C();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1E1972EA0(v13, v15, &v70);

    *(v11 + 4) = v16;
    v17 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v6, v7, v17, "JSService.JSIntentDispatch", "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E6901640](v12, -1, -1);
    MEMORY[0x1E6901640](v11, -1, -1);
  }

  else
  {
    v18 = *(v0 + 704);
    v19 = *(v0 + 688);
    v20 = *(v0 + 496);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 544);
  (*(*(v0 + 720) + 16))(*(v0 + 728), *(v0 + 736), *(v0 + 712));
  sub_1E1AF0FEC();
  swift_allocObject();
  *(v0 + 744) = sub_1E1AF0FDC();
  v22 = swift_allocObject();
  *(v0 + 752) = v22;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0xE000000000000000;
  sub_1E1AF38FC();
  *(v0 + 424) = v21;
  swift_getExtendedExistentialTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB83F8);
  if (swift_dynamicCast())
  {
    sub_1E1337DC8((v0 + 64), (v0 + 16));
    sub_1E1AF4C1C();
    v23 = swift_dynamicCastClass();

    if (!v23)
    {
      sub_1E1AF422C();
    }

    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    *(v0 + 760) = *(v0 + 432);
    if (qword_1EE1E3130 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 680);
    v44 = *(v0 + 672);
    v45 = *(v0 + 656);
    v46 = *(v0 + 648);
    v47 = *(v0 + 640);
    v48 = *(v0 + 632);
    v49 = *(v0 + 624);
    v64 = *(v0 + 616);
    v67 = *(v0 + 496);
    v68 = *(v0 + 696);
    v65 = *(v0 + 664);
    v66 = *(v0 + 464);
    (*(v46 + 104))(v45, *MEMORY[0x1E69AAFD0], v47);
    sub_1E1AF52AC();
    (*(v46 + 8))(v45, v47);
    sub_1E1AF532C();
    (*(v49 + 8))(v48, v64);
    *v43 = *(v0 + 440);
    v50 = *(v44 + 104);
    v50(v43, *MEMORY[0x1E69AB2E8], v65);
    v51 = sub_1E1AF4BDC();

    v52 = *(v44 + 8);
    v52(v43, v65);
    v69(v68, v66, v67);
    if (swift_dynamicCast())
    {
      v53 = *(v0 + 680);
      v54 = *(v0 + 664);

      v50(v53, *MEMORY[0x1E69AB2E0], v54);
      v55 = sub_1E1AF4BCC();

      v52(v53, v54);
      v51 = v55;
    }

    *(v0 + 768) = v51;
    v56 = *(v0 + 512);
    sub_1E1383E78(v0 + 16, v0 + 112);
    sub_1E1AF427C();
    v57 = *(v56 + 32);
    *(v0 + 776) = v57;
    if (v57)
    {
      NetworkActivity.begin()();
    }

    *(v0 + 784) = *(*(v0 + 512) + 16);
    v58 = swift_task_alloc();
    *(v0 + 792) = v58;
    *v58 = v0;
    v58[1] = sub_1E1710104;
    v59 = *(v0 + 608);
    v60 = *(v0 + 592);
    v61 = *(v0 + 584);
    v62 = *(v0 + 488);
    v63 = MEMORY[0x1E69AB0F8];

    return MEMORY[0x1EEE17978](v61, v59, v62, v60, v63);
  }

  else
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
    sub_1E1308058(v0 + 64, &unk_1ECEB8400);
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v24 = sub_1E1AF591C();
    __swift_project_value_buffer(v24, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = sub_1E1AF390C();
    *(v0 + 304) = MEMORY[0x1E69E6158];
    *(v0 + 280) = v25;
    *(v0 + 288) = v26;
    sub_1E1AF385C();
    sub_1E1308058(v0 + 280, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD000000000000011, 0x80000001E1B72330);
    v27 = sub_1E1AF390C();
    MEMORY[0x1E68FECA0](v27);

    MEMORY[0x1E68FECA0](0xD000000000000022, 0x80000001E1B72300);
    v29 = v70;
    v28 = v71;
    *(v22 + 16) = v70;
    *(v22 + 24) = v28;
    v30 = sub_1E1AF0F8C();
    v31 = sub_1E1AF6A2C();
    if (sub_1E1AF6D6C())
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v70 = v33;
      *v32 = 136315138;

      v34 = sub_1E1972EA0(v29, v28, &v70);

      *(v32 + 4) = v34;
      v35 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v30, v31, v35, "Error", "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E6901640](v33, -1, -1);
      MEMORY[0x1E6901640](v32, -1, -1);
    }

    v36 = sub_1E1AF4C3C();
    sub_1E17123E0(&qword_1ECEB70B8, MEMORY[0x1E69AB300]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69AB2F0], v36);
    swift_willThrow();
    v38 = *(v0 + 736);
    v39 = *(v0 + 720);
    v40 = *(v0 + 712);
    sub_1E1710CFC("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

    (*(v39 + 8))(v38, v40);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1E1710104()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_1E1710938;
  }

  else
  {
    v2 = sub_1E1710218;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1E1710218()
{
  v1 = sub_1E1AF408C();
  if (*(v1 + 16))
  {
    v2 = *(v0 + 512);
    v3 = v1;
    *(v0 + 368) = type metadata accessor for JSService();
    *(v0 + 344) = v2;

    sub_1E14EE6E8(v3, v0 + 344);

    sub_1E1308058(v0 + 344, &qword_1ECEB2DF0);
  }

  else
  {
  }

  v4 = *(v0 + 800);
  sub_1E1711094(*(v0 + 584), *(v0 + 472), *(v0 + 480), *(v0 + 544), *(v0 + 560));
  if (!v4)
  {
    v22 = *(v0 + 776);
    if (v22)
    {
      v23 = *(v22 + 16);
      result = [v23 lock];
      v24 = *(v22 + 80);
      v10 = __OFSUB__(v24, 1);
      v25 = v24 - 1;
      if (v10)
      {
        goto LABEL_27;
      }

      *(v22 + 80) = v25;
      if (!v25)
      {
        swift_beginAccess();
        sub_1E1300B24(v22 + 40, v0 + 240);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 240), *(v0 + 264));
        v26 = swift_allocObject();
        v26[2] = v22;
        v26[3] = sub_1E1A8BF44;
        v26[4] = 0;

        sub_1E1AF3FAC();

        __swift_destroy_boxed_opaque_existential_1(v0 + 240);
      }

      [v23 unlock];
    }

    v27 = *(v0 + 608);
    v28 = *(v0 + 600);
    v29 = *(v0 + 592);
    v30 = *(v0 + 584);
    v31 = *(v0 + 576);
    v32 = *(v0 + 568);
    v43 = *(v0 + 560);
    v33 = *(v0 + 552);
    v34 = *(v0 + 544);
    v35 = *(v0 + 456);

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    (*(v33 + 32))(v35, v43, v34);
    sub_1E1AF413C();
    if (*(v0 + 809))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    else
    {
      sub_1E1AF573C();

      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    v40 = *(v0 + 736);
    v41 = *(v0 + 720);
    v42 = *(v0 + 712);
    sub_1E1710CFC("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

    (*(v41 + 8))(v40, v42);

    v39 = *(v0 + 8);
    goto LABEL_23;
  }

  v5 = v4;
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
  v6 = *(v0 + 776);
  if (v6)
  {
    v7 = *(v6 + 16);
    result = [v7 lock];
    v9 = *(v6 + 80);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (!v10)
    {
      *(v6 + 80) = v11;
      if (!v11)
      {
        swift_beginAccess();
        sub_1E1300B24(v6 + 40, v0 + 200);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 200), *(v0 + 224));
        v12 = swift_allocObject();
        v12[2] = v6;
        v12[3] = sub_1E1A8BF44;
        v12[4] = 0;

        sub_1E1AF3FAC();

        __swift_destroy_boxed_opaque_existential_1(v0 + 200);
      }

      [v7 unlock];
      goto LABEL_10;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

LABEL_10:
  v13 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v18 = *(v0 + 512);
  (*(v14 + 16))(v16, v13, v15);
  *(v16 + *(v17 + 20)) = v5;
  sub_1E17123E0(&qword_1EE1D8AE0, type metadata accessor for JSRequestIntentFetchError);
  v19 = swift_allocError();
  sub_1E1712428(v16, v20);
  *(v0 + 336) = type metadata accessor for JSService();
  *(v0 + 312) = v18;

  v21 = v5;
  sub_1E14EE420(v19, v0 + 312);
  sub_1E1308058(v0 + 312, &qword_1ECEB2DF0);

  swift_willThrow();

  sub_1E171248C(v16);
  (*(v14 + 8))(v13, v15);
  sub_1E1AF413C();
  if (*(v0 + 808))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    sub_1E1AF573C();

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  v36 = *(v0 + 736);
  v37 = *(v0 + 720);
  v38 = *(v0 + 712);
  sub_1E1710CFC("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

  (*(v37 + 8))(v36, v38);

  v39 = *(v0 + 8);
LABEL_23:

  return v39();
}

id sub_1E1710938()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 776);
  if (v2)
  {
    v3 = *(v2 + 16);
    result = [v3 lock];
    v5 = *(v2 + 80);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v6)
    {
      __break(1u);
      return result;
    }

    *(v2 + 80) = v7;
    if (!v7)
    {
      swift_beginAccess();
      sub_1E1300B24(v2 + 40, v0 + 200);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 200), *(v0 + 224));
      v8 = swift_allocObject();
      v8[2] = v2;
      v8[3] = sub_1E1A8BF44;
      v8[4] = 0;

      sub_1E1AF3FAC();

      __swift_destroy_boxed_opaque_existential_1(v0 + 200);
    }

    [v3 unlock];
  }

  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  v11 = *(v0 + 592);
  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v14 = *(v0 + 512);
  (*(v10 + 16))(v12, v9, v11);
  *(v12 + *(v13 + 20)) = v1;
  sub_1E17123E0(&qword_1EE1D8AE0, type metadata accessor for JSRequestIntentFetchError);
  v15 = swift_allocError();
  sub_1E1712428(v12, v16);
  *(v0 + 336) = type metadata accessor for JSService();
  *(v0 + 312) = v14;

  v17 = v1;
  sub_1E14EE420(v15, v0 + 312);
  sub_1E1308058(v0 + 312, &qword_1ECEB2DF0);

  swift_willThrow();

  sub_1E171248C(v12);
  (*(v10 + 8))(v9, v11);
  sub_1E1AF413C();
  if (*(v0 + 808))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    sub_1E1AF573C();

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  v18 = *(v0 + 736);
  v19 = *(v0 + 720);
  v20 = *(v0 + 712);
  sub_1E1710CFC("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

  (*(v19 + 8))(v18, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1E1710CFC(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v7 = sub_1E1AF0FBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1E1AF0F7C();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v14 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v14, qword_1EE1F7BE8);

  v15 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v27 = sub_1E1AF6A0C();
  result = sub_1E1AF6D6C();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((a3 & 1) == 0)
  {

    if (!v29)
    {
      __break(1u);
LABEL_7:

      return (*(v11 + 8))(v13, v28);
    }

LABEL_12:

    sub_1E1AF0FFC();

    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x1E69E93E8])
    {
      v17 = 0;
      v18 = 0;
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v19 = "%s";
      v18 = 2;
      v17 = 1;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = v18;
    *(v20 + 1) = v17;
    *(v20 + 2) = 2080;
    swift_beginAccess();
    v22 = *(a5 + 16);
    v23 = *(a5 + 24);

    v24 = sub_1E1972EA0(v22, v23, &v31);

    *(v20 + 4) = v24;
    v25 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v15, v27, v25, v29, v19, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E6901640](v21, -1, -1);
    MEMORY[0x1E6901640](v20, -1, -1);

    return (*(v11 + 8))(v13, v28);
  }

  if (v29 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {

      v29 = &v30;
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1E1711094@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a2;
  v108 = a3;
  v114 = a1;
  v99 = a5;
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1E1AF0FBC();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a4;
  v98 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AEF4EC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB83E0);
  v104 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v86 - v22;
  v23 = sub_1E1AEFE6C();
  v116 = *(v23 - 8);
  v117 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v91 = &v86 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v86 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v115 = &v86 - v30;
  v31 = sub_1E1AF0F7C();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v86 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v86 - v38;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v112 = v18;
  v113 = v13;
  v121 = v14;
  v40 = sub_1E1AF0FAC();
  v41 = __swift_project_value_buffer(v40, qword_1EE1F7BE8);
  sub_1E1AF0F6C();
  v89 = v41;
  v42 = sub_1E1AF0F8C();
  v43 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v44 = v32;
    v45 = v31;
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v42, v43, v47, "JSService.parseModel", "", v46, 2u);
    v48 = v46;
    v31 = v45;
    v32 = v44;
    MEMORY[0x1E6901640](v48, -1, -1);
  }

  v95 = v31;

  (*(v32 + 16))(v36, v39, v31);
  sub_1E1AF0FEC();
  swift_allocObject();
  v111 = sub_1E1AF0FDC();
  v49 = *(v32 + 8);
  v94 = v32 + 8;
  v90 = v49;
  v49(v39, v31);
  v50 = v102;
  sub_1E1AF406C();
  v51 = v112;
  sub_1E1AF3E5C();
  v52 = *(v104 + 8);
  v52(v50, v19);
  v53 = v115;
  sub_1E1AEF4DC();
  v54 = v121 + 8;
  v55 = *(v121 + 8);
  v55(v51, v113);
  v56 = v103;
  sub_1E1AF406C();
  v57 = v105;
  sub_1E1AF3E6C();
  v52(v56, v19);
  v58 = v118;
  v59 = v110;
  v109(v57);
  if (v59)
  {

    (*(v106 + 8))(v57, v107);
    return (*(v116 + 8))(v53, v117);
  }

  else
  {
    v109 = v55;
    v110 = 0;
    v121 = v54;
    (*(v106 + 8))(v57, v107);
    v61 = v101;
    sub_1E1AEFE5C();
    sub_1E17123E0(&qword_1EE1FADC0, MEMORY[0x1E6969530]);
    v62 = v117;
    v63 = v53;
    if (sub_1E1AF5D7C())
    {
      if (qword_1EE1D2768 != -1)
      {
        swift_once();
      }

      v121 = sub_1E1AF591C();
      v114 = __swift_project_value_buffer(v121, qword_1EE216140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      v113 = *(*(sub_1E1AF38EC() - 8) + 72);
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      sub_1E1AF388C();
      sub_1E1AF387C();
      sub_1E1AEFE1C();
      v64 = MEMORY[0x1E69E63B0];
      v120 = MEMORY[0x1E69E63B0];
      v119 = v65;
      sub_1E1AF385C();
      sub_1E1308058(&v119, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      v61 = v101;
      sub_1E1AEFE1C();
      v120 = v64;
      v119 = v66;
      sub_1E1AF385C();
      sub_1E1308058(&v119, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF54AC();

      v67 = v100;
      v68 = v98;
      v62 = v117;
      v69 = v118;
    }

    else
    {
      v70 = *(v116 + 16);
      v70(v91, v53, v62);
      v70(v92, v61, v62);
      v71 = v112;
      sub_1E1AEF4CC();
      v72 = v93;
      sub_1E1AF407C();
      v67 = v100;
      v120 = v100;
      v73 = __swift_allocate_boxed_opaque_existential_0(&v119);
      v68 = v98;
      (*(v98 + 16))(v73, v58, v67);
      sub_1E1712090(v71, v72, &v119);
      v74 = v113;
      v75 = v109;
      (v109)(v72, v113);
      v75(v71, v74);
      __swift_destroy_boxed_opaque_existential_1(&v119);
      v76 = sub_1E1AF0F8C();
      v77 = v97;
      sub_1E1AF0FCC();
      v78 = sub_1E1AF6A0C();
      if (sub_1E1AF6D6C())
      {

        v79 = v86;
        sub_1E1AF0FFC();

        v80 = v87;
        v81 = v88;
        if ((*(v87 + 88))(v79, v88) == *MEMORY[0x1E69E93E8])
        {
          v82 = "[Error] Interval already ended";
        }

        else
        {
          (*(v80 + 8))(v79, v81);
          v82 = "";
        }

        v77 = v97;
        v83 = swift_slowAlloc();
        *v83 = 0;
        v84 = sub_1E1AF0F5C();
        _os_signpost_emit_with_name_impl(&dword_1E12FC000, v76, v78, v84, "JSService.parseModel", v82, v83, 2u);
        MEMORY[0x1E6901640](v83, -1, -1);
        v62 = v117;
        v61 = v101;
      }

      v90(v77, v95);
      v63 = v115;
      v69 = v118;
    }

    v85 = *(v116 + 8);
    v85(v61, v62);
    v85(v63, v62);
    return (*(v68 + 32))(v99, v69, v67);
  }
}

uint64_t sub_1E1711D88()
{

  return swift_deallocClassInstance();
}

uint64_t IntentDispatchOptions.withGarbageCollection()()
{
  v0 = sub_1E1AF361C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF360C();
  v4 = sub_1E1AF41CC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1E1711EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 8) + **(a9 + 8));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_1E130B5DC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1E1712090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E1AEFE6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E137A5C4(a3, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB83E8);
  if (swift_dynamicCast())
  {
    sub_1E1337DC8(v23, &v25);
    v8 = v26;
    v9 = v27;
    __swift_project_boxed_opaque_existential_1Tm(&v25, v26);
    v10 = (*(v9 + 8))(v8, v9);
    if (v10)
    {
      v11 = v10;
      sub_1E1AEF4DC();
      sub_1E1AEFE1C();
      v13 = v12;
      v14 = *(v5 + 8);
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 184) = v13;
      *(v11 + 192) = 0;
      sub_1E1AEF4BC();
      sub_1E1AEFE1C();
      v16 = v15;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 200) = v16;
      *(v11 + 208) = 0;
      sub_1E1AEF4DC();
      sub_1E1AEFE1C();
      v18 = v17;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 232) = v18;
      *(v11 + 240) = 0;
      sub_1E1AEF4BC();
      sub_1E1AEFE1C();
      v20 = v19;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 248) = v20;
      *(v11 + 256) = 0;
    }

    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    return sub_1E1308058(v23, &qword_1ECEB2588);
  }
}

uint64_t sub_1E17123E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1712428(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for JSRequestIntentFetchError();
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

uint64_t sub_1E171248C(uint64_t a1)
{
  Error = type metadata accessor for JSRequestIntentFetchError();
  (*(*(Error - 8) + 8))(a1, Error);
  return a1;
}

void FamilyCircleLookupTask.init()(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v3 = [objc_allocWithZone(type metadata accessor for ArcadeAIDAAccountManagerDelegate()) init];
  v4 = objc_allocWithZone(MEMORY[0x1E698C250]);
  v5 = v3;
  v6 = [v4 initWithAccountStore_];
  [v6 setDelegate_];

  v7 = [v6 accountStore];
  v8 = [v7 aa_primaryAppleAccount];

  *a1 = v8;
  a1[1] = v6;
  a1[2] = v5;
}

uint64_t FamilyCircleLookupTask.perform()()
{
  if (*v0)
  {
    v1 = *v0;
    v2 = [v1 ams_DSID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8410);
    if (v2)
    {
      v3 = sub_1E1AF588C();
      v4 = [objc_allocWithZone(MEMORY[0x1E699C070]) init];
      [v4 setPromptUserToResolveAuthenticatonFailure_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1E1B06D70;
      *(v5 + 32) = v2;
      sub_1E13006E4(0, &qword_1EE1E31F0);
      v6 = v2;
      v7 = sub_1E1AF620C();

      [v4 setExpectedDSIDs_];

      [v4 setQualityOfService_];
      v8 = swift_allocObject();
      v8[2] = v1;
      v8[3] = v6;
      v8[4] = v3;
      v15[4] = sub_1E1712A38;
      v15[5] = v8;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1E14CC840;
      v15[3] = &block_descriptor_57;
      v9 = _Block_copy(v15);
      v10 = v1;
      v11 = v6;

      [v4 startRequestWithCompletionHandler_];
      _Block_release(v9);
    }

    else
    {
      sub_1E17128A8();
      swift_allocError();
      *v14 = 0;
      v3 = sub_1E1AF581C();
    }

    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8410);
    sub_1E17128A8();
    swift_allocError();
    *v12 = 1;
    return sub_1E1AF581C();
  }
}

unint64_t sub_1E17128A8()
{
  result = qword_1ECEB8418;
  if (!qword_1ECEB8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8418);
  }

  return result;
}

void sub_1E17128FC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  sub_1E13006E4(0, &unk_1EE1D2540);
  sub_1E1AF55CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB84B8);
  sub_1E1AF55BC();
  if (v7)
  {
    v5 = v6;
    sub_1E1AF584C();
    sub_1E1655EC0(v6);
    sub_1E1713158(v6, 1);
    sub_1E1713158(v6, 1);
  }

  else
  {
    sub_1E1AF586C();
    sub_1E1655EC0(v6);
  }
}

id sub_1E1712A44@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = [*a1 members];
  sub_1E13006E4(0, &unk_1EE1D2530);
  v7 = sub_1E1AF621C();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v17 = a2;
    v18 = a4;
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E68FFD80](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      a4 = v10;
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v12 = [v10 dsid];
      if (v12)
      {
        a2 = v12;
        sub_1E13006E4(0, &qword_1EE1E31F0);
        v13 = a3;
        v14 = sub_1E1AF6D0C();

        if (v14)
        {

          v15 = [a4 isOrganizer];

          result = (*&v15 | 0xFFFFFF80);
LABEL_14:
          a4 = v18;
          goto LABEL_19;
        }
      }

      ++v9;
      if (v11 == i)
      {

        result = [v17 aa_isFamilyEligible];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  result = [a2 aa_isFamilyEligible];
LABEL_19:
  *a4 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FamilyCircleLookupResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FamilyCircleLookupResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1E1712EE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeAIDAAccountManagerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E1712F30()
{
  result = qword_1ECEB8488;
  if (!qword_1ECEB8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8488);
  }

  return result;
}

unint64_t sub_1E1712F84(void *a1)
{
  v1 = [a1 accountStore];
  v2 = [v1 aa_primaryAppleAccount];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB84A0);
    inited = swift_initStackObject();
    v4 = MEMORY[0x1E698C218];
    *(inited + 16) = xmmword_1E1B02CC0;
    v5 = *v4;
    *(inited + 32) = v5;
    *(inited + 40) = v2;
    v6 = v5;
    v7 = sub_1E15A20B4(inited);
    swift_setDeallocating();
    sub_1E17130D4(inited + 32);
    return v7;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];

    return sub_1E15A20B4(v9);
  }
}

unint64_t sub_1E171307C()
{
  result = qword_1ECEB2178;
  if (!qword_1ECEB2178)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2178);
  }

  return result;
}

uint64_t sub_1E17130D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB84A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E1713158(id a1, char a2)
{
  if (a2)
  {
  }
}

void CrossfireReferralFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1EE1E3928 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  __swift_project_value_buffer(v2, qword_1EE1E3930);
  sub_1E1AF4ABC();
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  sub_1E16CF750(a1, (v3 == 2) | v3 & 1);
}

void sub_1E171324C(uint64_t a1)
{
  if (qword_1EE1E3928 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  __swift_project_value_buffer(v2, qword_1EE1E3930);
  sub_1E1AF4ABC();
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  sub_1E16CF750(a1, (v3 == 2) | v3 & 1);
}

uint64_t MetricsActivityFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MetricsActivityFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v28 = a1;
  if (qword_1EE1F3430 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v2 = sub_1E16CF4BC();
    if (qword_1EE1E39B8 != -1)
    {
      swift_once();
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v3, qword_1EE1E39C0);
    v4 = MEMORY[0x1E69E6158];
    sub_1E1AF4ABC();
    if (*(&v26 + 1))
    {
      *(&v27[0] + 1) = v4;
      sub_1E1301CF0(&v26, &v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v22[0] = v2;
      sub_1E159827C(&v23, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
      v2 = *&v22[0];
    }

    v6 = 0;
    v21 = v2;
    v7 = v2 + 64;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 64);
    v11 = (v8 + 63) >> 6;
    if (v10)
    {
      break;
    }

LABEL_10:
    if (v11 <= v6 + 1)
    {
      v13 = v6 + 1;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        v10 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_18;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  while (1)
  {
    v12 = v6;
LABEL_17:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v21 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1E137A5C4(*(v21 + 56) + 32 * v16, v22);
    *&v23 = v19;
    *(&v23 + 1) = v18;
    sub_1E1301CF0(v22, &v24);

    v14 = v12;
LABEL_18:
    v26 = v23;
    v27[0] = v24;
    v27[1] = v25;
    if (!*(&v23 + 1))
    {
      break;
    }

    sub_1E1301CF0(v27, &v23);
    __swift_mutable_project_boxed_opaque_existential_1(v28, *(v28 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(&v23);

    if (v1)
    {
      break;
    }

    v6 = v14;
    if (!v10)
    {
      goto LABEL_10;
    }
  }
}

uint64_t _s11AppStoreKit29MetricsActivityFieldsProviderVACycfC_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69AB4D8];
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void CrossfireReferralCandidateFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v2 = off_1EE1F3438;
  swift_beginAccess();
  if (v2[19] != 2 && (*(v2 + 233) & 1) != 0)
  {
    sub_1E16CF750(a1, 1);
  }
}

AppStoreKit::AccountLinksIntent __swiftcall AccountLinksIntent.init()()
{
  *v0 = 0xD000000000000012;
  v0[1] = 0x80000001E1B2C330;
  return result;
}

uint64_t AccountLinksIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall AccountLinksIntent.makeValue(in:)(JSContext in)
{
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E1713958()
{
  result = qword_1ECEB84C0;
  if (!qword_1ECEB84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB84C0);
  }

  return result;
}

unint64_t sub_1E17139B4()
{
  result = qword_1ECEB84C8;
  if (!qword_1ECEB84C8)
  {
    type metadata accessor for AccountLinks();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB84C8);
  }

  return result;
}

id sub_1E1713A0C(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t SponsoredSearchRequestData.iAdId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsoredSearchRequestData.sponsoredSearchRequestData.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SponsoredSearchRequestData.routingInfo.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SponsoredSearchRequestData.canaryId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall SponsoredSearchRequestData.init(iAdId:sponsoredSearchRequestData:routingInfo:canaryId:)(AppStoreKit::SponsoredSearchRequestData *__return_ptr retstr, Swift::String_optional iAdId, Swift::String sponsoredSearchRequestData, Swift::String routingInfo, Swift::String_optional canaryId)
{
  retstr->iAdId = iAdId;
  retstr->sponsoredSearchRequestData = sponsoredSearchRequestData;
  retstr->routingInfo = routingInfo;
  retstr->canaryId = canaryId;
}

unint64_t SponsoredSearchRequestData.searchRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];

  v12 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
  sub_1E1386A38(v1, v2, 0x6449644169, 0xE500000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v3, v4, 0x626F6C4261746164, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v5, v6, 0x6974756F52644169, 0xEE006F666E49676ELL, v10);
  sub_1E1386A38(v7, v8, 0x7972616E6163, 0xE600000000000000);
  return v12;
}

void *sub_1E1713C98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1E1545A54(*(a1 + 16), 0);
  v4 = sub_1E1546A64(&v6, v3 + 4, v2, a1);
  sub_1E1337ECC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E1713D28()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v4, v0);
  qword_1EE1F87E8 = sub_1E1AF591C();
  unk_1EE1F87F0 = MEMORY[0x1E69AB668];
  __swift_allocate_boxed_opaque_existential_0(qword_1EE1F87D0);
  return sub_1E1AF590C();
}

void *AppStoreEngagementManager.__allocating_init(objectGraph:subscriptionManager:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  type metadata accessor for AppStoreEngagementRegistry();
  v4[4] = 0;
  v4[5] = 0;
  swift_allocObject();
  v4[2] = sub_1E14A90FC();
  v4[3] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;

  v6 = a2;

  AppStoreEngagementManager.refreshBadgeIdentifiers(completion:)(sub_1E17140EC, v5);

  return v4;
}

void *AppStoreEngagementManager.init(objectGraph:subscriptionManager:)(uint64_t a1, void *a2)
{
  type metadata accessor for AppStoreEngagementRegistry();
  v2[4] = 0;
  v2[5] = 0;
  swift_allocObject();
  v2[2] = sub_1E14A90FC();
  v2[3] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v2;

  v6 = a2;

  AppStoreEngagementManager.refreshBadgeIdentifiers(completion:)(sub_1E1716D48, v5);

  return v2;
}

uint64_t sub_1E171400C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock);

  [v5 lock];
  sub_1E15F6384(a2, sub_1E1716D14, v4, a1);
  [v5 unlock];
}

void sub_1E17140F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v14 = *a1;
  v15 = v2;
  v11 = v3;
  v12 = v4;
  if ((static ArcadeState.== infix(_:_:)(&v14, &v11) & 1) == 0)
  {
    if (v4 <= 0x3F)
    {
      if (v3 == 1)
      {
        if (v2 <= 0x3F && v1 == 1)
        {
LABEL_9:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v13 = 4;
            v6 = swift_allocObject();
            swift_beginAccess();
            swift_weakLoadStrong();
            swift_weakInit();

            v7 = sub_1E1716D5C;
            v8 = &v13;
LABEL_21:
            AppStoreEngagementManager.recordEngagement(event:resultHandler:)(v8, v7, v6);

            sub_1E1361A60(v1, v2);
            sub_1E1361A60(v3, v4);

            return;
          }

          goto LABEL_23;
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          LOBYTE(v14) = 3;
          v5 = swift_allocObject();
          swift_beginAccess();
          swift_weakLoadStrong();
          swift_weakInit();

          AppStoreEngagementManager.recordEngagement(event:resultHandler:)(&v14, sub_1E1716D5C, v5);
        }
      }

      sub_1E1361A40(v1, v2);
      goto LABEL_9;
    }

    if ((v4 & 0xC0) == 0x80)
    {
      if ((v2 & 0xC0) == 0x40)
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v10 = 2;
          v6 = swift_allocObject();
          swift_beginAccess();
          swift_weakLoadStrong();
          swift_weakInit();
          sub_1E1361A40(v1, v2);
          sub_1E1361A40(v3, v4);

          v9 = sub_1E1716D1C;
LABEL_20:
          v7 = v9;
          v8 = &v10;
          goto LABEL_21;
        }
      }

      else
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v10 = 5;
          v6 = swift_allocObject();
          swift_beginAccess();
          swift_weakLoadStrong();
          swift_weakInit();
          sub_1E1361A40(v1, v2);
          sub_1E1361A40(v3, v4);

          v9 = sub_1E1716D5C;
          goto LABEL_20;
        }
      }

      sub_1E1361A40(v1, v2);
      sub_1E1361A40(v3, v4);
LABEL_23:
      sub_1E1361A60(v1, v2);
      sub_1E1361A60(v3, v4);
      return;
    }

    sub_1E1361A40(v1, v2);
    sub_1E1361A40(v3, v4);
    sub_1E1361A60(v1, v2);

    sub_1E1361A60(v3, v4);
  }
}

uint64_t AppStoreEngagementManager.recordEngagement(event:resultHandler:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *a1;
  type metadata accessor for JSIntentDispatcher();
  v8 = v3[3];
  sub_1E1AF421C();
  sub_1E1AF55EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  sub_1E1AF690C();
  v9 = v15[0];
  v15[0] = 0xD000000000000015;
  v15[1] = 0x80000001E1B723E0;
  v16 = v7;
  v17 = v9;
  v18 = sub_1E14A939C();
  sub_1E136A540(v15, v8, "AppStoreKit/AppStoreEngagementManager.swift", 43, 2);
  sub_1E17169FC(v15);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v6;
  v11 = sub_1E1361A80();

  v12 = sub_1E1AF68EC();
  v14[3] = v11;
  v14[4] = MEMORY[0x1E69AB720];
  v14[0] = v12;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1E17146F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = result;
      swift_beginAccess();
      v3 = *(v2 + 32);
      if (v3)
      {

        sub_1E1300E34(v3);

        v3(v1);
        sub_1E1300EA8(v3);
      }
    }
  }

  return result;
}

void AppStoreEngagementManager.refreshBadgeIdentifiers(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = [objc_opt_self() defaultService];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = v6;
  v11[4] = sub_1E1716A5C;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1715B2C;
  v11[3] = &block_descriptor_58;
  v10 = _Block_copy(v11);
  sub_1E1300E34(a1);

  [v7 allHardwareOfferMetricsWithReplyHandler_];
  _Block_release(v10);
}

uint64_t sub_1E1714940@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E14D3A8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E17149D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E14D3A84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_1E1300E34(v3);
  return sub_1E1300EA8(v8);
}

uint64_t AppStoreEngagementManager.rootActionHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_1E1300E34(v1);
  return v1;
}

uint64_t AppStoreEngagementManager.rootActionHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1E1300EA8(v5);
}

uint64_t AppStoreEngagementManager.properties.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  sub_1E1AF690C();
  return v1;
}

void *AppStoreEngagementManager.previouslyDisabledProperties.getter()
{
  v0 = sub_1E14A939C();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1E1545A54(*(v0 + 16), 0);
  v4 = sub_1E1546A64(&v6, v3 + 4, v2, v1);
  sub_1E1337ECC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E1714C8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v63[1] = a5;
  v75 = sub_1E1AF320C();
  v9 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E1AF324C();
  v11 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  if (a2)
  {
    v78 = a3;
    v79 = v11;
    v11 = v9;
    v13 = a2;
    if (qword_1EE1F87C8 != -1)
    {
LABEL_57:
      swift_once();
    }

    v77 = unk_1EE1F87F0;
    v76 = __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v15 = v80;
    v14 = v81;
    *(&v90 + 1) = v81;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v89);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v15, v14);
    sub_1E1AF38BC();
    sub_1E13E44F8(&v89);
    sub_1E1AF54AC();

    a1 = v68;
    v9 = v11;
    v11 = v79;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v79 = result;
  if (!result)
  {
    goto LABEL_52;
  }

  if (!a1)
  {

LABEL_52:
    if (a4)
    {
      return a4(result);
    }

    return result;
  }

  v63[0] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  sub_1E1AF690C();
  v18 = 0;
  v20 = (v89 + 64);
  v19 = *(v89 + 64);
  v66 = v89;
  v21 = 1 << *(v89 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  a2 = v22 & v19;
  a4 = ((v21 + 63) >> 6);
  v77 = &v87;
  v63[2] = "led badge identifier,";
  v70 = (v11 + 8);
  v71 = (v9 + 8);
  v69 = xmmword_1E1B02CD0;
  v64 = a4;
  v65 = (v89 + 64);
  while (1)
  {
    if (!a2)
    {
      if (a4 <= v18 + 1)
      {
        v25 = (v18 + 1);
      }

      else
      {
        v25 = a4;
      }

      v26 = v25 - 1;
      while (1)
      {
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v24 >= a4)
        {
          a2 = 0;
          v87 = 0u;
          v88 = 0u;
          v18 = v26;
          aBlock = 0u;
          goto LABEL_22;
        }

        a2 = *&v20[8 * v24];
        ++v18;
        if (a2)
        {
          v18 = v24;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v24 = v18;
LABEL_21:
    v27 = __clz(__rbit64(a2));
    a2 &= a2 - 1;
    v28 = v27 | (v24 << 6);
    v29 = (*(v66 + 6) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    sub_1E137A5C4(*(v66 + 7) + 32 * v28, v85);
    *&aBlock = v31;
    *(&aBlock + 1) = v30;
    sub_1E1301CF0(v85, v77);

LABEL_22:
    v89 = aBlock;
    v90 = v87;
    v91 = v88;
    v32 = *(&aBlock + 1);
    if (!*(&aBlock + 1))
    {
      break;
    }

    v33 = v89;
    if (*(a1 + 16) && (v34 = sub_1E13018F8(v89, *(&v89 + 1)), (v35 & 1) != 0))
    {
      v23 = v34;

      sub_1E137A5C4(*(a1 + 56) + 32 * v23, &aBlock);
      sub_1E13E44F8(&aBlock);
    }

    else
    {
      v78 = v33;
      aBlock = 0u;
      v87 = 0u;
      sub_1E13E44F8(&aBlock);
      if (qword_1EE1F87C8 != -1)
      {
        swift_once();
      }

      v76 = unk_1EE1F87F0;
      __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v69;
      sub_1E1AF382C();
      *(&v87 + 1) = MEMORY[0x1E69E6158];
      *&aBlock = v78;
      *(&aBlock + 1) = v32;
      v36 = v78;

      sub_1E1AF38BC();
      sub_1E13E44F8(&aBlock);
      sub_1E1AF548C();

      v37 = *(v79 + 2);
      v76 = *(v37 + 16);
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = v36;
      v38[4] = v32;
      *&v88 = sub_1E14A9370;
      *(&v88 + 1) = v38;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v87 = sub_1E1302D64;
      *(&v87 + 1) = &block_descriptor_49_0;
      v67 = _Block_copy(&aBlock);
      swift_retain_n();

      v39 = v72;
      sub_1E1AF322C();
      *&v85[0] = MEMORY[0x1E69E7CC0];
      sub_1E139D5D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FE650();
      v41 = v74;
      v40 = v75;
      sub_1E1AF6EEC();
      v11 = v67;
      MEMORY[0x1E68FF640](0, v39, v41, v67);
      _Block_release(v11);
      (*v71)(v41, v40);
      (*v70)(v39, v73);

      sub_1E17158E0(v78, v32, 0);

      a1 = v68;
      a4 = v64;
      v20 = v65;
    }

    __swift_destroy_boxed_opaque_existential_1(&v90);
  }

  a4 = 0;
  a2 = a1 + 64;
  v42 = 1 << *(a1 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(a1 + 64);
  v11 = ((v42 + 63) >> 6);
  v76 = &v87;
  v65 = "fferIDs failed, reason:";
  v66 = v11;
  v67 = a2;
  if (!v44)
  {
LABEL_33:
    if (v11 <= (a4 + 1))
    {
      v46 = a4 + 1;
    }

    else
    {
      v46 = v11;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      if (v45 >= v11)
      {
        v44 = 0;
        v87 = 0u;
        v88 = 0u;
        a4 = v47;
        aBlock = 0u;
        goto LABEL_42;
      }

      v44 = *(a2 + 8 * v45);
      a4 = (a4 + 1);
      if (v44)
      {
        a4 = v45;
        goto LABEL_41;
      }
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  while (1)
  {
    v45 = a4;
LABEL_41:
    v48 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v49 = v48 | (v45 << 6);
    v50 = (*(v68 + 48) + 16 * v49);
    v52 = *v50;
    v51 = v50[1];
    sub_1E137A5C4(*(v68 + 56) + 32 * v49, v85);
    *&aBlock = v52;
    *(&aBlock + 1) = v51;
    sub_1E1301CF0(v85, v76);

LABEL_42:
    v89 = aBlock;
    v90 = v87;
    v91 = v88;
    v53 = *(&aBlock + 1);
    if (!*(&aBlock + 1))
    {
      break;
    }

    v78 = v89;
    sub_1E1301CF0(&v90, v85);
    if (qword_1EE1F87C8 != -1)
    {
      swift_once();
    }

    v77 = unk_1EE1F87F0;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = v69;
    sub_1E1AF382C();
    *(&v87 + 1) = MEMORY[0x1E69E6158];
    v54 = v78;
    *&aBlock = v78;
    *(&aBlock + 1) = v53;

    sub_1E1AF38BC();
    sub_1E13E44F8(&aBlock);
    sub_1E1AF548C();

    sub_1E137A5C4(v85, v84);
    v55 = *(v79 + 2);
    v77 = *(v55 + 16);
    sub_1E13BFF54(v84, v83);
    v56 = swift_allocObject();
    v57 = v83[1];
    *(v56 + 40) = v83[0];
    *(v56 + 16) = v55;
    *(v56 + 24) = v54;
    *(v56 + 32) = v53;
    *(v56 + 56) = v57;
    *&v88 = sub_1E14A9360;
    *(&v88 + 1) = v56;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v87 = sub_1E1302D64;
    *(&v87 + 1) = &block_descriptor_43_1;
    v58 = _Block_copy(&aBlock);

    v59 = v72;
    sub_1E1AF322C();
    v82 = MEMORY[0x1E69E7CC0];
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v61 = v74;
    v60 = v75;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v59, v61, v58);
    _Block_release(v58);
    (*v71)(v61, v60);
    (*v70)(v59, v73);

    sub_1E17158E0(v78, v53, 1);

    sub_1E13E44F8(v84);
    __swift_destroy_boxed_opaque_existential_1(v85);
    v11 = v66;
    a2 = v67;
    if (!v44)
    {
      goto LABEL_33;
    }
  }

  if (v63[0])
  {
    (v63[0])(v62);
  }
}

uint64_t sub_1E17158E0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  type metadata accessor for JSIntentDispatcher();
  v8 = v3[3];
  sub_1E1AF421C();
  sub_1E1AF55EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  sub_1E1AF690C();
  v9 = v17[0];
  v17[0] = 0xD000000000000012;
  v17[1] = 0x80000001E1B724C0;
  v17[2] = a1;
  v17[3] = a2;
  v18 = a3;
  v19 = v9;
  v20 = sub_1E14A939C();

  sub_1E136A704(v17, v8, "AppStoreKit/AppStoreEngagementManager.swift", 43, 2);
  sub_1E1716CA8(v17);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v11[5] = v7;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v7;
  v13 = sub_1E1361A80();
  swift_bridgeObjectRetain_n();
  v14 = sub_1E1AF68EC();
  v16[3] = v13;
  v16[4] = MEMORY[0x1E69AB720];
  v16[0] = v14;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1E1715B2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1E1AF5C7C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1E1715BD8(uint64_t a1, void (*a2)(uint64_t))
{
  if (*(*a1 + 16))
  {

    a2(v3);
  }

  else
  {
    if (qword_1EE1F87C8 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    return (a2)(0);
  }
}

Swift::Void __swiftcall AppStoreEngagementManager.setIdentifier(_:isEnabled:)(Swift::String _, Swift::Bool isEnabled)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  sub_1E1716A68(_._countAndFlagsBits, _._object, isEnabled);
  memset(v5, 0, sizeof(v5));
  if (isEnabled)
  {
    sub_1E14A8844(countAndFlagsBits, object, v5);
  }

  else
  {
    sub_1E14A8C00(countAndFlagsBits, object, 1);
  }

  sub_1E17158E0(countAndFlagsBits, object, isEnabled);
  sub_1E13E44F8(v5);
}

uint64_t sub_1E1715E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = result;
      swift_beginAccess();
      v6 = *(v5 + 32);
      if (v6)
      {

        sub_1E1300E34(v6);

        v6(v3);
        sub_1E1300EA8(v6);
      }
    }
  }

  else
  {
    if (qword_1EE1F87C8 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v9[3] = MEMORY[0x1E69E6158];
    v9[0] = a2;
    v9[1] = a3;

    sub_1E1AF38BC();
    sub_1E13E44F8(v9);
    sub_1E1AF548C();
  }

  return result;
}

uint64_t sub_1E1716038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE1F87C8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v9 = MEMORY[0x1E69E6158];
  v8[0] = a2;
  v8[1] = a3;

  sub_1E1AF38BC();
  sub_1E13E44F8(v8);
  sub_1E1AF382C();
  swift_getErrorValue();
  v9 = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E13E44F8(v8);
  sub_1E1AF54AC();
}

uint64_t AppStoreEngagementManager.deinit()
{

  sub_1E1300EA8(*(v0 + 32));
  return v0;
}

uint64_t AppStoreEngagementManager.__deallocating_deinit()
{

  sub_1E1300EA8(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1E1716334()
{
  if (qword_1EE1F87C8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v3[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E13E44F8(v3);
  sub_1E1AF54AC();
}

void sub_1E17164EC(char a1, void *a2)
{
  if (qword_1EE1F87C8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v8 = MEMORY[0x1E69E6370];
  LOBYTE(v7[0]) = a1 & 1;
  sub_1E1AF38BC();
  sub_1E13E44F8(v7);
  sub_1E1AF548C();

  if (a2)
  {
    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    v2 = a2;
    sub_1E1AF382C();
    swift_getErrorValue();
    v8 = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_0);
    sub_1E1AF38BC();
    sub_1E13E44F8(v7);
    sub_1E1AF54AC();
  }
}

void sub_1E1716774(char a1, void *a2)
{
  if (qword_1EE1F87C8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v8 = MEMORY[0x1E69E6370];
  LOBYTE(v7[0]) = a1 & 1;
  sub_1E1AF38BC();
  sub_1E13E44F8(v7);
  sub_1E1AF548C();

  if (a2)
  {
    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    v2 = a2;
    sub_1E1AF382C();
    swift_getErrorValue();
    v8 = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_0);
    sub_1E1AF38BC();
    sub_1E13E44F8(v7);
    sub_1E1AF54AC();
  }
}

void sub_1E1716A68(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() defaultService];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1E1AF620C();

  if (a3)
  {
    v15 = sub_1E17164EC;
    v16 = 0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1E16D4010;
    v14 = &block_descriptor_36_0;
    v9 = _Block_copy(&v11);

    v10 = &selRef_addHardwareOfferIDs_replyHandler_;
  }

  else
  {
    v15 = sub_1E1716774;
    v16 = 0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1E16D4010;
    v14 = &block_descriptor_33_1;
    v9 = _Block_copy(&v11);

    v10 = &selRef_removeHardwareOfferIDs_replyHandler_;
  }

  [v6 *v10];

  _Block_release(v9);
}

uint64_t GuidedSearchQuery.init(searchTerm:selectedTokens:optimizationTerm:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t GuidedSearchQuery.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = 0xEA00000000006D72;
  sub_1E1AF381C();
  v39 = sub_1E1AF37CC();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v15, v7);
  if (v18)
  {
    v42 = v18;
    v43 = a1;
    v16 = 0xEE00736E656B6F54;
    sub_1E1AF381C();
    sub_1E1AF374C();
    v19(v12, v7);
    v20 = sub_1E1AF5A6C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v6, 1, v20) == 1)
    {

      sub_1E14352B8(v6);
LABEL_9:
      v22 = v43;
      v23 = 0x64657463656C6573;
      goto LABEL_10;
    }

    v24 = sub_1E1AF5A0C();
    (*(v21 + 8))(v6, v20);
    if (!v24)
    {

      goto LABEL_9;
    }

    v38 = v24;
    v23 = 0xD000000000000010;
    v16 = 0x80000001E1B72780;
    v25 = v41;
    v22 = v43;
    sub_1E1AF381C();
    v26 = sub_1E1AF37CC();
    v28 = v27;
    v19(v25, v7);
    if (v28)
    {
      v29 = sub_1E13C4BB8(v38);

      v30 = sub_1E1AF39DC();
      (*(*(v30 - 8) + 8))(v44, v30);
      result = (v19)(v22, v7);
      v32 = v40;
      v33 = v42;
      *v40 = v39;
      v32[1] = v33;
      v32[2] = v29;
      v32[3] = v26;
      v32[4] = v28;
      return result;
    }
  }

  else
  {
    v22 = a1;
    v23 = 0x6554686372616573;
  }

LABEL_10:
  v34 = sub_1E1AF5A7C();
  sub_1E1380704();
  swift_allocError();
  *v35 = v23;
  v35[1] = v16;
  v35[2] = &type metadata for GuidedSearchQuery;
  (*(*(v34 - 8) + 104))(v35, *MEMORY[0x1E69AB690], v34);
  swift_willThrow();
  v36 = sub_1E1AF39DC();
  (*(*(v36 - 8) + 8))(v44, v36);
  return (v19)(v22, v7);
}

uint64_t GuidedSearchQuery.searchTerm.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GuidedSearchQuery.optimizationTerm.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void static ViewControllerContainment.remove(_:)(void *a1)
{
  if (a1)
  {
    v3 = a1;
    [v3 willMoveToParentViewController_];
    v1 = [v3 view];
    if (v1)
    {
      v2 = v1;
      [v1 removeFromSuperview];

      [v3 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void static ViewControllerContainment.add(_:to:frame:)(void *a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v15 = a1;
  if ([a2 isViewLoaded])
  {
    [a2 addChildViewController_];
    if ((*(a3 + 32) & 1) == 0)
    {
      v5 = *a3;
      v6 = *(a3 + 8);
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);
      v9 = [v15 view];
      if (!v9)
      {
        goto LABEL_15;
      }

      v10 = v9;
      [v9 setFrame_];
    }

    v11 = [a2 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v15 view];
      if (v13)
      {
        v14 = v13;
        [v12 addSubview_];

        [v15 didMoveToParentViewController_];
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

LABEL_9:
}

uint64_t FramedVideo.__allocating_init(id:video:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_video) = a2;
  if (a2)
  {
  }

  else
  {
    v18 = 0;
  }

  *(v17 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_artwork) = v18;
  sub_1E134FD1C(a1, v34, &unk_1ECEB5670);
  sub_1E134FD1C(a8, v17 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics, &unk_1ECEB1770);
  sub_1E134FD1C(v34, &v31, &unk_1ECEB5670);
  if (*(&v32 + 1))
  {
    v19 = v32;
    *(v17 + 48) = v31;
    *(v17 + 64) = v19;
    *(v17 + 80) = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v22 = v21;
    (*(v14 + 8))(v16, v13);
    v29 = v20;
    v30 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v31, &unk_1ECEB5670);
  }

  sub_1E1308058(a8, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v34, &unk_1ECEB5670);
  *(v17 + 17) = a3 & 1;
  *(v17 + 16) = a4 & 1;
  v23 = v27;
  *(v17 + 24) = v26;
  *(v17 + 32) = v23;
  *(v17 + 40) = v28;
  return v17;
}

uint64_t FramedVideo.init(id:video:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v29 = a4;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v28[-v19];
  *(v9 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_video) = a2;
  if (a2)
  {
  }

  else
  {
    v21 = 0;
  }

  *(v9 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_artwork) = v21;
  sub_1E134FD1C(a1, v41, &unk_1ECEB5670);
  sub_1E134FD1C(a8, v20, &unk_1ECEB1770);
  sub_1E134FD1C(v41, &v35, &unk_1ECEB5670);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v33 = v22;
    v34 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  sub_1E1308058(a8, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v41, &unk_1ECEB5670);
  v25 = v39;
  *(v9 + 48) = v38;
  *(v9 + 64) = v25;
  *(v9 + 80) = v40;
  sub_1E134B7C8(v20, v9 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics);
  *(v9 + 17) = a3 & 1;
  *(v9 + 16) = v29 & 1;
  v26 = v31;
  *(v9 + 24) = v30;
  *(v9 + 32) = v26;
  *(v9 + 40) = v32;
  return v9;
}

uint64_t FramedVideo.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v27 = sub_1E1AF380C();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  type metadata accessor for Video();
  v33 = a1;
  sub_1E1AF381C();
  v30 = v5;
  v31 = v4;
  v14 = *(v5 + 16);
  v32 = a2;
  v26 = v14;
  v14(v9, a2, v4);
  sub_1E1717D54();
  sub_1E1AF464C();
  v15 = v28;
  v16 = v34;
  *(v28 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_video) = v34;
  if (v16)
  {
  }

  else
  {
    v17 = 0;
  }

  *(v15 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_artwork) = v17;
  v18 = v33;
  v19 = v27;
  (*(v10 + 16))(v12, v33, v27);
  v20 = v29;
  v21 = v31;
  v22 = v32;
  v26(v29, v32, v31);
  v23 = FramedMedia.init(deserializing:using:)(v12, v20);
  (*(v30 + 8))(v22, v21);
  (*(v10 + 8))(v18, v19);
  return v23;
}

unint64_t sub_1E1717D54()
{
  result = qword_1EE1E52D0;
  if (!qword_1EE1E52D0)
  {
    type metadata accessor for Video();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E52D0);
  }

  return result;
}

uint64_t sub_1E1717DFC()
{
}

uint64_t FramedVideo.deinit()
{

  sub_1E134B88C(v0 + 48);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t FramedVideo.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 48);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FramedVideo()
{
  result = qword_1EE1F7590;
  if (!qword_1EE1F7590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccessibilityParagraph.__allocating_init(id:text:actions:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = swift_allocObject();
  v12 = v11 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_segue;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  sub_1E134FD1C(a1, &v19, &unk_1ECEB5670);
  if (*(&v20 + 1))
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v13 = sub_1E1AEFE7C();
    v15 = v14;
    (*(v8 + 8))(v10, v7);
    v18[1] = v13;
    v18[2] = v15;
    sub_1E1AF6F6C();
    sub_1E1308058(&v19, &unk_1ECEB5670);
  }

  v16 = v23;
  *(v11 + 16) = v22;
  *(v11 + 32) = v16;
  *(v11 + 48) = v24;
  sub_1E1308058(a1, &unk_1ECEB5670);
  *(v11 + 56) = a2;
  sub_1E134B7C8(a4, v11 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_impressionMetrics);
  return v11;
}

uint64_t AccessibilityParagraph.init(id:text:actions:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1E1AEFEAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = v5 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_segue;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  sub_1E134FD1C(a1, &v20, &unk_1ECEB5670);
  if (*(&v21 + 1))
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v10 + 8))(v12, v9);
    v19[1] = v14;
    v19[2] = v16;
    sub_1E1AF6F6C();
    sub_1E1308058(&v20, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v17 = v24;
  *(v5 + 16) = v23;
  *(v5 + 32) = v17;
  *(v5 + 48) = v25;
  *(v5 + 56) = a2;
  sub_1E134B7C8(a4, v5 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_impressionMetrics);
  return v5;
}

uint64_t AccessibilityParagraph.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v68 = sub_1E1AEFEAC();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = &v64 - v6;
  v70 = sub_1E1AF5A6C();
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1E1AF39DC();
  v8 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v83 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v81 = sub_1E1AF380C();
  v90 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v71 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v80 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v77 = v8;
  v22 = *(v8 + 16);
  v73 = v12;
  v23 = v12;
  v24 = v74;
  v22(v23, a2, v74);
  v78 = v21;
  sub_1E1AF464C();
  v25 = v83;
  v76 = a2;
  v26 = a2;
  v27 = v24;
  v22(v83, v26, v24);
  type metadata accessor for LinkableText();
  v28 = 0xE400000000000000;
  v82 = a1;
  sub_1E1AF381C();
  v22(v73, v25, v27);
  sub_1E171907C(&qword_1EE1F5FA0, type metadata accessor for LinkableText);
  sub_1E1AF464C();
  if (v89[0])
  {
    v73 = v89[0];
    v29 = v69;
    sub_1E1AF381C();
    v30 = v79;
    sub_1E1AF374C();
    v31 = *(v90 + 8);
    v32 = v81;
    v90 += 8;
    v31(v29, v81);
    v33 = v70;
    if ((*(v72 + 48))(v30, 1, v70) == 1)
    {
      v34 = v32;
      sub_1E1308058(v79, &qword_1ECEB1F90);
    }

    else
    {
      v38 = v72;
      v39 = v65;
      (*(v72 + 32))(v65, v79, v33);
      v40 = type metadata accessor for Action();
      MEMORY[0x1EEE9AC00](v40);
      v41 = v83;
      *(&v64 - 2) = v42;
      *(&v64 - 1) = v41;
      sub_1E1AF59FC();

      v34 = v81;
      (*(v38 + 8))(v39, v33);
    }

    v43 = v71;
    sub_1E1AF381C();
    v44 = sub_1E1AF37CC();
    if (v45)
    {
      *&v86 = v44;
      *(&v86 + 1) = v45;
      sub_1E1AF6F6C();
      v46 = v43;
      v47 = v34;
    }

    else
    {
      v48 = v66;
      sub_1E1AEFE9C();
      v49 = sub_1E1AEFE7C();
      v51 = v50;
      (*(v67 + 8))(v48, v68);
      *&v86 = v49;
      *(&v86 + 1) = v51;
      sub_1E1AF6F6C();
      v46 = v43;
      v47 = v81;
    }

    v31(v46, v47);
    v53 = v77;
    v52 = v78;
    sub_1E134FD1C(v78, v80, &unk_1ECEB1770);
    v28 = swift_allocObject();
    v54 = v28 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_segue;
    *v54 = 0u;
    *(v54 + 16) = 0u;
    *(v54 + 32) = 0;
    sub_1E134FD1C(v89, &v86, &unk_1ECEB5670);
    v55 = v83;
    if (*(&v87 + 1))
    {
      v56 = v87;
      *(v28 + 16) = v86;
      *(v28 + 32) = v56;
      *(v28 + 48) = v88;
    }

    else
    {
      v57 = v66;
      sub_1E1AEFE9C();
      v58 = sub_1E1AEFE7C();
      v60 = v59;
      v61 = v57;
      v52 = v78;
      (*(v67 + 8))(v61, v68);
      v84 = v58;
      v85 = v60;
      v55 = v83;
      sub_1E1AF6F6C();
      sub_1E1308058(&v86, &unk_1ECEB5670);
    }

    v62 = *(v53 + 8);
    v62(v76, v27);
    v31(v82, v81);
    sub_1E1308058(v89, &unk_1ECEB5670);
    sub_1E1308058(v52, &unk_1ECEB1770);
    *(v28 + 56) = v73;
    sub_1E134B7C8(v80, v28 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_impressionMetrics);
    v62(v55, v27);
  }

  else
  {
    v35 = sub_1E1AF5A7C();
    sub_1E171907C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v36 = 1954047348;
    v36[1] = 0xE400000000000000;
    v36[2] = v75;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    v37 = *(v77 + 8);
    v37(v76, v27);
    (*(v90 + 8))(v82, v81);
    sub_1E1308058(v78, &unk_1ECEB1770);
    v37(v83, v27);
  }

  return v28;
}