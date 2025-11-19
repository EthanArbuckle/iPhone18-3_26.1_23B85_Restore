uint64_t sub_1B24940C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2493B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24940F0(uint64_t a1)
{
  v2 = sub_1B2494274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B249412C(uint64_t a1)
{
  v2 = sub_1B2494274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2494198(uint64_t a1)
{
  result = sub_1B2494388(&qword_1EB7CDCB0, type metadata accessor for StorefrontRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B24941F0(uint64_t a1)
{
  *(a1 + 16) = sub_1B2494388(&qword_1EB7CDCB8, type metadata accessor for StorefrontRequest);
  result = sub_1B2494388(&qword_1EB7CDCC0, type metadata accessor for StorefrontRequest);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1B2494274()
{
  result = qword_1EB7CDCD8;
  if (!qword_1EB7CDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDCD8);
  }

  return result;
}

uint64_t sub_1B24942C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorefrontRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B249432C(uint64_t a1)
{
  v2 = type metadata accessor for StorefrontRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2494388(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for StorefrontRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B24944B0()
{
  result = qword_1EB7D10E8;
  if (!qword_1EB7D10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D10E8);
  }

  return result;
}

unint64_t sub_1B2494508()
{
  result = qword_1EB7CDCC8;
  if (!qword_1EB7CDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDCC8);
  }

  return result;
}

unint64_t sub_1B2494560()
{
  result = qword_1EB7CDCD0;
  if (!qword_1EB7CDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDCD0);
  }

  return result;
}

uint64_t SKPaymentQueueClient.allowsBootstrapCellularData.getter()
{
  v1 = OBJC_IVAR___SKPaymentQueueClient_allowsBootstrapCellularData;
  OUTLINED_FUNCTION_2_21();
  return *(v0 + v1);
}

uint64_t SKPaymentQueueClient.allowsBootstrapCellularData.setter(char a1)
{
  v3 = OBJC_IVAR___SKPaymentQueueClient_allowsBootstrapCellularData;
  result = OUTLINED_FUNCTION_1_22();
  *(v1 + v3) = a1;
  return result;
}

id sub_1B2494700(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_1B256D98C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1B2494780(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1B256D9BC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t SKPaymentQueueClient.delegate.setter()
{
  OUTLINED_FUNCTION_1_22();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_1B2494930@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t SKPaymentQueueClient.environmentType.getter()
{
  v1 = OBJC_IVAR___SKPaymentQueueClient_environmentType;
  OUTLINED_FUNCTION_2_21();
  return *(v0 + v1);
}

uint64_t SKPaymentQueueClient.environmentType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SKPaymentQueueClient_environmentType;
  result = OUTLINED_FUNCTION_1_22();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SKPaymentQueueClient.hidesConfirmationDialogs.getter()
{
  v1 = OBJC_IVAR___SKPaymentQueueClient_hidesConfirmationDialogs;
  OUTLINED_FUNCTION_2_21();
  return *(v0 + v1);
}

uint64_t SKPaymentQueueClient.hidesConfirmationDialogs.setter(char a1)
{
  v3 = OBJC_IVAR___SKPaymentQueueClient_hidesConfirmationDialogs;
  result = OUTLINED_FUNCTION_1_22();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SKPaymentQueueClient.ignoresInAppPurchaseRestriction.getter()
{
  v1 = OBJC_IVAR___SKPaymentQueueClient_ignoresInAppPurchaseRestriction;
  OUTLINED_FUNCTION_2_21();
  return *(v0 + v1);
}

uint64_t SKPaymentQueueClient.ignoresInAppPurchaseRestriction.setter(char a1)
{
  v3 = OBJC_IVAR___SKPaymentQueueClient_ignoresInAppPurchaseRestriction;
  result = OUTLINED_FUNCTION_1_22();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SKPaymentQueueClient.requiresAuthenticationForPayment.getter()
{
  v1 = OBJC_IVAR___SKPaymentQueueClient_requiresAuthenticationForPayment;
  OUTLINED_FUNCTION_2_21();
  return *(v0 + v1);
}

uint64_t SKPaymentQueueClient.requiresAuthenticationForPayment.setter(char a1)
{
  v3 = OBJC_IVAR___SKPaymentQueueClient_requiresAuthenticationForPayment;
  result = OUTLINED_FUNCTION_1_22();
  *(v1 + v3) = a1;
  return result;
}

void *SKPaymentQueueClient.storeExternalVersion.getter()
{
  v1 = OBJC_IVAR___SKPaymentQueueClient_storeExternalVersion;
  OUTLINED_FUNCTION_2_21();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SKPaymentQueueClient.storeExternalVersion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SKPaymentQueueClient_storeExternalVersion;
  OUTLINED_FUNCTION_1_22();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1B2494E1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storeExternalVersion];
  *a2 = result;
  return result;
}

void *SKPaymentQueueClient.storeItemIdentifier.getter()
{
  v1 = OBJC_IVAR___SKPaymentQueueClient_storeItemIdentifier;
  OUTLINED_FUNCTION_2_21();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SKPaymentQueueClient.storeItemIdentifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SKPaymentQueueClient_storeItemIdentifier;
  OUTLINED_FUNCTION_1_22();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1B2494F6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storeItemIdentifier];
  *a2 = result;
  return result;
}

uint64_t sub_1B2494FCC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1B2495044(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_1B24950A0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_9(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B256D9BC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

void sub_1B2495100(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = sub_1B256D98C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id SKPaymentQueueClient.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v0[OBJC_IVAR___SKPaymentQueueClient_allowsBootstrapCellularData] = 0;
  OUTLINED_FUNCTION_14_9(OBJC_IVAR___SKPaymentQueueClient_bundleIdentifier);
  OUTLINED_FUNCTION_14_9(OBJC_IVAR___SKPaymentQueueClient_bundleVersion);
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___SKPaymentQueueClient_environmentType] = 0;
  v0[OBJC_IVAR___SKPaymentQueueClient_hidesConfirmationDialogs] = 0;
  v0[OBJC_IVAR___SKPaymentQueueClient_ignoresInAppPurchaseRestriction] = 0;
  OUTLINED_FUNCTION_14_9(OBJC_IVAR___SKPaymentQueueClient_productsRequestBundleIdentifier);
  OUTLINED_FUNCTION_14_9(OBJC_IVAR___SKPaymentQueueClient_receiptDirectoryPath);
  v0[OBJC_IVAR___SKPaymentQueueClient_requiresAuthenticationForPayment] = 0;
  *&v0[OBJC_IVAR___SKPaymentQueueClient_storeExternalVersion] = 0;
  *&v0[OBJC_IVAR___SKPaymentQueueClient_storeItemIdentifier] = 0;
  OUTLINED_FUNCTION_14_9(OBJC_IVAR___SKPaymentQueueClient_vendorIdentifier);
  v2.receiver = v0;
  v2.super_class = SKPaymentQueueClient;
  return objc_msgSendSuper2(&v2, sel_init);
}

void SKPaymentQueueClient.copy(with:)(void *a1@<X8>)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setAllowsBootstrapCellularData_];
  v7 = sub_1B243C57C(v3, &selRef_bundleIdentifier);
  if (v8)
  {
    sub_1B256D98C();
    v7 = OUTLINED_FUNCTION_21_7();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_15_10(v7, sel_setBundleIdentifier_);

  v9 = sub_1B243C57C(v3, &selRef_bundleVersion);
  if (v10)
  {
    sub_1B256D98C();
    v9 = OUTLINED_FUNCTION_21_7();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_15_10(v9, sel_setBundleVersion_);

  v11 = [v3 delegate];
  OUTLINED_FUNCTION_15_10(v11, sel_setDelegate_);
  swift_unknownObjectRelease();
  [v6 setEnvironmentType_];
  [v6 setHidesConfirmationDialogs_];
  [v6 setIgnoresInAppPurchaseRestriction_];
  v12 = sub_1B243C57C(v3, &selRef_productsRequestBundleIdentifier);
  if (v13)
  {
    sub_1B256D98C();
    v12 = OUTLINED_FUNCTION_21_7();
  }

  else
  {
    v11 = 0;
  }

  OUTLINED_FUNCTION_15_10(v12, sel_setProductsRequestBundleIdentifier_);

  v14 = sub_1B243C57C(v3, &selRef_receiptDirectoryPath);
  if (v15)
  {
    sub_1B256D98C();
    v14 = OUTLINED_FUNCTION_21_7();
  }

  else
  {
    v11 = 0;
  }

  OUTLINED_FUNCTION_15_10(v14, sel_setReceiptDirectoryPath_);

  [v6 setRequiresAuthenticationForPayment_];
  v16 = [v3 storeExternalVersion];
  OUTLINED_FUNCTION_15_10(v16, sel_setStoreExternalVersion_);

  v17 = [v3 storeItemIdentifier];
  OUTLINED_FUNCTION_15_10(v17, sel_setStoreItemIdentifier_);

  sub_1B243C57C(v3, &selRef_vendorIdentifier);
  if (v18)
  {
    v19 = sub_1B256D98C();
  }

  else
  {
    v19 = 0;
  }

  [v6 setVendorIdentifier_];

  a1[3] = ObjectType;
  *a1 = v6;
}

uint64_t sub_1B2495688()
{
  v1 = v0;
  v170 = *MEMORY[0x1E69E9840];
  v2 = sub_1B243C57C(v0, &selRef_productsRequestBundleIdentifier);
  if (!v3)
  {
    v2 = sub_1B243C57C(v0, &selRef_bundleIdentifier);
  }

  v4 = v2;
  v5 = v3;
  v6 = sub_1B256D9BC();
  v14 = MEMORY[0x1E69E6158];
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC8];
    v169 = MEMORY[0x1E69E6158];
    *&v167 = v4;
    *(&v167 + 1) = v5;
    OUTLINED_FUNCTION_13_10(v6, v7, v8, v9, v10, v11, v12, v13, v146, v150, v155, v159, v163, v167);
    swift_isUniquelyReferenced_nonNull_native();
    v150 = v15;
    sub_1B244A70C();

    v16 = v15;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC8];
    v17 = sub_1B2455488();
    if (v18)
    {
      v19 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      *&v155 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
      OUTLINED_FUNCTION_18_6();
      OUTLINED_FUNCTION_19_10();
      sub_1B244AA0C((*(v16 + 56) + 32 * v19), &v167);
      sub_1B256E82C();
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
    }

    sub_1B2475424(&v167);
  }

  sub_1B256D9BC();
  v20 = sub_1B243C57C(v1, &selRef_bundleVersion);
  if (v21)
  {
    OUTLINED_FUNCTION_7_15(v20, v21, v22, v23, v24, v25, v26, v27, v146, v150, v155, v159, v163, v167, v168, v169);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_5_12();
    sub_1B244A70C();
  }

  else
  {
    v28 = sub_1B2455488();
    if (v29)
    {
      v30 = v28;
      swift_isUniquelyReferenced_nonNull_native();
      *&v155 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
      OUTLINED_FUNCTION_18_6();
      OUTLINED_FUNCTION_19_10();
      sub_1B244AA0C((*(v16 + 56) + 32 * v30), &v167);
      sub_1B256E82C();
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
    }

    sub_1B2475424(&v167);
  }

  sub_1B256D9BC();
  v31 = [v1 allowsBootstrapCellularData];
  v169 = MEMORY[0x1E69E6370];
  LOBYTE(v167) = v31;
  OUTLINED_FUNCTION_13_10(v31, v32, v33, v34, v35, v36, v37, v38, v146, v150, v155, v159, v163, v167);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_5_12();
  sub_1B244A70C();

  sub_1B256D9BC();
  v39 = [v1 environmentType];
  v169 = MEMORY[0x1E69E6530];
  *&v167 = v39;
  OUTLINED_FUNCTION_13_10(v39, v40, v41, v42, v43, v44, v45, v46, v147, v151, v156, v160, v164, v167);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_5_12();
  sub_1B244A70C();

  v47 = v152;
  sub_1B256D9BC();
  OUTLINED_FUNCTION_17_8();
  v48 = [v1 storeExternalVersion];
  if (v48)
  {
    v49 = v48;
    v169 = sub_1B246063C(0, &qword_1EB7CD4F8);
    *&v167 = v49;
    OUTLINED_FUNCTION_13_10(v169, v50, v51, v52, v53, v54, v55, v56, v148, v152, v157, v161, v165, v167);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_20_7();

    v47 = v152;
  }

  else
  {
    OUTLINED_FUNCTION_12_12();
    if (v57)
    {
      OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_6_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
      OUTLINED_FUNCTION_3_19();
      v58 = OUTLINED_FUNCTION_4_12();
      OUTLINED_FUNCTION_8_13(v58, v59, v60, v61, v62, v63, v64, v65, v148, v152, v157, *(&v157 + 1), v161, v165, v167);
      OUTLINED_FUNCTION_11_12();
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
    }

    sub_1B2475424(&v167);
  }

  sub_1B256D9BC();
  OUTLINED_FUNCTION_17_8();
  v66 = [v1 storeItemIdentifier];
  if (v66)
  {
    v67 = v66;
    v169 = sub_1B246063C(0, &qword_1EB7CD4F8);
    *&v167 = v67;
    OUTLINED_FUNCTION_13_10(v169, v68, v69, v70, v71, v72, v73, v74, v148, v152, v157, v161, v165, v167);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_20_7();

    v47 = v152;
  }

  else
  {
    OUTLINED_FUNCTION_12_12();
    if (v75)
    {
      OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_6_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
      OUTLINED_FUNCTION_3_19();
      v76 = OUTLINED_FUNCTION_4_12();
      OUTLINED_FUNCTION_8_13(v76, v77, v78, v79, v80, v81, v82, v83, v148, v152, v157, *(&v157 + 1), v161, v165, v167);
      OUTLINED_FUNCTION_11_12();
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
    }

    sub_1B2475424(&v167);
  }

  sub_1B256D9BC();
  OUTLINED_FUNCTION_17_8();
  v84 = sub_1B243C57C(v1, &selRef_vendorIdentifier);
  if (v85)
  {
    OUTLINED_FUNCTION_7_15(v84, v85, v86, v87, v88, v89, v90, v91, v148, v152, v157, v161, v165, v167, v168, v169);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_20_7();

    v47 = v152;
  }

  else
  {
    OUTLINED_FUNCTION_12_12();
    if (v92)
    {
      OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_6_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
      OUTLINED_FUNCTION_3_19();
      v93 = OUTLINED_FUNCTION_4_12();
      OUTLINED_FUNCTION_8_13(v93, v94, v95, v96, v97, v98, v99, v100, v148, v152, v157, *(&v157 + 1), v161, v165, v167);
      OUTLINED_FUNCTION_11_12();
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
    }

    sub_1B2475424(&v167);
  }

  v101 = sub_1B243C57C(v1, &selRef_receiptDirectoryPath);
  if (v102)
  {
    v103 = v101;
    v104 = v102;
    sub_1B256DA3C();
    v105 = sandbox_extension_issue_file();

    if (v105 && strlen(v105) > 0)
    {
      v106 = [objc_opt_self() defaultManager];
      v107 = sub_1B256D98C();
      *&v167 = 0;
      v108 = [v106 createDirectoryAtPath:v107 withIntermediateDirectories:1 attributes:0 error:&v167];

      v109 = v167;
      if (v108)
      {
        v110 = sub_1B256D9BC();
        v169 = v14;
        *&v167 = v103;
        *(&v167 + 1) = v104;
        OUTLINED_FUNCTION_13_10(v110, v111, v112, v113, v114, v115, v116, v117, v148, v152, v157, v161, v165, v167);
        v118 = v109;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_0_26();
        sub_1B244A70C();

        v47 = v153;
        sub_1B256D9BC();
        OUTLINED_FUNCTION_17_8();
        v119 = sub_1B256D97C();
        if (v120)
        {
          OUTLINED_FUNCTION_7_15(v119, v120, v121, v122, v123, v124, v125, v126, v149, v153, v158, v162, v166, v167, v168, v169);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_0_26();
          OUTLINED_FUNCTION_20_7();

          v47 = v154;
        }

        else
        {
          OUTLINED_FUNCTION_12_12();
          if (v136)
          {
            OUTLINED_FUNCTION_22_5();
            OUTLINED_FUNCTION_6_11();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
            OUTLINED_FUNCTION_3_19();
            v137 = OUTLINED_FUNCTION_4_12();
            OUTLINED_FUNCTION_8_13(v137, v138, v139, v140, v141, v142, v143, v144, v149, v153, v158, *(&v158 + 1), v162, v166, v167);
            OUTLINED_FUNCTION_11_12();
          }

          else
          {
            OUTLINED_FUNCTION_9_14();
          }

          sub_1B2475424(&v167);
        }
      }

      else
      {
        v127 = v167;

        v128 = sub_1B256D0DC();

        swift_willThrow();
        if (qword_1ED699E80 != -1)
        {
          swift_once();
        }

        v129 = type metadata accessor for SKLogger();
        __swift_project_value_buffer(v129, qword_1ED69A108);
        *&v167 = 0;
        *(&v167 + 1) = 0xE000000000000000;
        sub_1B256E4FC();
        MEMORY[0x1B2749D50](0xD00000000000002BLL, 0x80000001B258F260);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
        sub_1B256E78C();
        v130 = v167;
        v131 = sub_1B256E0AC();

        v132 = sub_1B256D5CC();

        if (os_log_type_enabled(v132, v131))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          *&v167 = v134;
          *v133 = 136446466;
          *(v133 + 4) = sub_1B2519814(0, 0xE000000000000000, &v167);
          *(v133 + 12) = 2082;
          v135 = sub_1B2519814(v130, *(&v130 + 1), &v167);

          *(v133 + 14) = v135;
          _os_log_impl(&dword_1B23EF000, v132, v131, "%{public}s%{public}s", v133, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B274BFF0](v134, -1, -1);
          MEMORY[0x1B274BFF0](v133, -1, -1);
        }

        else
        {
        }
      }

      MEMORY[0x1B274BFF0](v105, -1, -1);
    }

    else
    {
    }
  }

  return v47;
}

uint64_t sub_1B2496048@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_1B256D3CC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = type metadata accessor for ClientOverride(0);
  v8 = v7[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
  __swift_storeEnumTagSinglePayload(a1 + v8, 1, 3, v9);
  v27 = xmmword_1B25793F0;
  *a1 = xmmword_1B25793F0;
  v10 = v7[10];
  __swift_storeEnumTagSinglePayload(a1 + v10, 1, 1, v6);
  sub_1B2443AD0(*a1, a1[1]);
  *a1 = v27;
  sub_1B247858C(v5, a1 + v10);
  v11 = sub_1B243C57C(v1, &selRef_productsRequestBundleIdentifier);
  if (!v12)
  {
    v11 = sub_1B243C57C(v1, &selRef_bundleIdentifier);
  }

  a1[2] = v11;
  a1[3] = v12;
  a1[4] = sub_1B243C57C(v1, &selRef_bundleVersion);
  a1[5] = v13;
  v14 = [v1 storeItemIdentifier];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 unsignedLongLongValue];
  }

  else
  {
    v16 = 0;
  }

  v17 = a1 + v7[9];
  *v17 = v16;
  v17[8] = v15 == 0;
  v18 = [v1 storeExternalVersion];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 unsignedLongLongValue];
  }

  else
  {
    v20 = 0;
  }

  v21 = a1 + v7[8];
  *v21 = v20;
  v21[8] = v19 == 0;
  sub_1B243C57C(v1, &selRef_vendorIdentifier);
  if (v22)
  {
    sub_1B256D37C();

    sub_1B247858C(v5, a1 + v10);
  }

  v23 = [v1 environmentType];
  sub_1B24963E4(a1 + v8);
  if (v23 == 2)
  {
    v24 = 3;
  }

  else
  {
    v24 = 1;
  }

  if (v23 == 1)
  {
    v25 = 2;
  }

  else
  {
    v25 = v24;
  }

  return __swift_storeEnumTagSinglePayload(a1 + v8, v25, 3, v9);
}

uint64_t sub_1B24963E4(uint64_t a1)
{
  v2 = type metadata accessor for ClientOverride.Server(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return sub_1B256E80C();
}

uint64_t OUTLINED_FUNCTION_4_12()
{
}

_OWORD *OUTLINED_FUNCTION_7_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  a16 = v16;
  *&a14 = a1;
  *(&a14 + 1) = a2;

  return sub_1B244AA0C(&a14, &a11);
}

_OWORD *OUTLINED_FUNCTION_8_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  v18 = (*(v15 + 56) + 32 * v16);

  return sub_1B244AA0C(v18, &a15);
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return sub_1B256E82C();
}

unint64_t OUTLINED_FUNCTION_12_12()
{

  return sub_1B2455488();
}

_OWORD *OUTLINED_FUNCTION_13_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_1B244AA0C(&a14, &a11);
}

void OUTLINED_FUNCTION_14_9(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

id OUTLINED_FUNCTION_15_10(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return sub_1B256E80C();
}

uint64_t OUTLINED_FUNCTION_19_10()
{
}

_OWORD *OUTLINED_FUNCTION_20_7()
{

  return sub_1B244A70C();
}

uint64_t OUTLINED_FUNCTION_21_7()
{
}

uint64_t OUTLINED_FUNCTION_22_5()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t sub_1B2496674()
{
  result = qword_1EB7D1160;
  if (!qword_1EB7D1160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D1168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1160);
  }

  return result;
}

uint64_t sub_1B24966D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786F62646E6173 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x67696C6674736574 && a2 == 0xEA00000000007468)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B256EB5C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B24967F4(char a1)
{
  if (!a1)
  {
    return 0x69746375646F7270;
  }

  if (a1 == 1)
  {
    return 0x786F62646E6173;
  }

  return 0x67696C6674736574;
}

uint64_t sub_1B249685C(void *a1, int a2)
{
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D11B8);
  OUTLINED_FUNCTION_1_1();
  v31 = v4;
  v32 = v3;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D11C0);
  OUTLINED_FUNCTION_1_1();
  v28 = v8;
  v29 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D11C8);
  OUTLINED_FUNCTION_1_1();
  v27 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D11D0);
  OUTLINED_FUNCTION_1_1();
  v19 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B24973CC();
  sub_1B256EDFC();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_1B2497474();
      OUTLINED_FUNCTION_5_13();
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_1B2497420();
      v24 = v30;
      OUTLINED_FUNCTION_5_13();
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_1B24974C8();
    OUTLINED_FUNCTION_5_13();
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_1B2496B78(void *a1)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1178);
  OUTLINED_FUNCTION_1_1();
  v61 = v2;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v53 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1180);
  OUTLINED_FUNCTION_1_1();
  v58 = v5;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1188);
  OUTLINED_FUNCTION_1_1();
  v57 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1190);
  OUTLINED_FUNCTION_1_1();
  v62 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  v17 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B24973CC();
  v18 = v64;
  sub_1B256EDBC();
  if (v18)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v55 = v8;
  v56 = 0;
  v19 = v63;
  v64 = a1;
  v20 = sub_1B256E9CC();
  result = sub_1B24AAC2C(v20, 0);
  v17 = v14;
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v14;
    v26 = *(v22 + v23);
    v27 = sub_1B24AAC20(v23 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v60;
    v33 = v61;
    if (v29 == v31 >> 1)
    {
      v17 = v26;
      if (v26)
      {
        v57 = v27;
        v34 = v56;
        if (v26 == 1)
        {
          v66 = 1;
          sub_1B2497474();
          v35 = v55;
          OUTLINED_FUNCTION_2_22();
          sub_1B256E92C();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v35, v32);
            v36 = OUTLINED_FUNCTION_4_13();
            v37(v36);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v64);
            return v17;
          }
        }

        else
        {
          LODWORD(v60) = v26;
          v67 = 2;
          sub_1B2497420();
          v17 = v59;
          OUTLINED_FUNCTION_2_22();
          sub_1B256E92C();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v33 + 8))(v17, v19);
            v51 = OUTLINED_FUNCTION_4_13();
            v52(v51);
            v17 = v60;
            goto LABEL_21;
          }
        }

        v47 = OUTLINED_FUNCTION_4_13();
        v48(v47);
      }

      else
      {
        v65 = 0;
        sub_1B24974C8();
        v43 = v54;
        OUTLINED_FUNCTION_2_22();
        v44 = v56;
        sub_1B256E92C();
        if (!v44)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v43, v53);
          v49 = OUTLINED_FUNCTION_3_20();
          v50(v49, v25);
          goto LABEL_21;
        }

        v45 = OUTLINED_FUNCTION_3_20();
        v46(v45, v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v25;
LABEL_10:
    v38 = sub_1B256E58C();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v40 = &type metadata for AccountType;
    sub_1B256E93C();
    sub_1B256E54C();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = OUTLINED_FUNCTION_3_20();
    v42(v41, v17);
LABEL_11:
    a1 = v64;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2497114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24966D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B249713C(uint64_t a1)
{
  v2 = sub_1B24973CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2497178(uint64_t a1)
{
  v2 = sub_1B24973CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24971B4(uint64_t a1)
{
  v2 = sub_1B24974C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24971F0(uint64_t a1)
{
  v2 = sub_1B24974C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B249722C(uint64_t a1)
{
  v2 = sub_1B2497474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2497268(uint64_t a1)
{
  v2 = sub_1B2497474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24972A4(uint64_t a1)
{
  v2 = sub_1B2497420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24972E0(uint64_t a1)
{
  v2 = sub_1B2497420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B249731C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B2496B78(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B2497378()
{
  result = qword_1EB7D1170;
  if (!qword_1EB7D1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1170);
  }

  return result;
}

unint64_t sub_1B24973CC()
{
  result = qword_1EB7D1198;
  if (!qword_1EB7D1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1198);
  }

  return result;
}

unint64_t sub_1B2497420()
{
  result = qword_1EB7D11A0;
  if (!qword_1EB7D11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D11A0);
  }

  return result;
}

unint64_t sub_1B2497474()
{
  result = qword_1EB7D11A8;
  if (!qword_1EB7D11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D11A8);
  }

  return result;
}

unint64_t sub_1B24974C8()
{
  result = qword_1EB7D11B0;
  if (!qword_1EB7D11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D11B0);
  }

  return result;
}

_BYTE *sub_1B249751C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B249762C()
{
  result = qword_1EB7D11D8;
  if (!qword_1EB7D11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D11D8);
  }

  return result;
}

unint64_t sub_1B2497684()
{
  result = qword_1EB7D11E0;
  if (!qword_1EB7D11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D11E0);
  }

  return result;
}

unint64_t sub_1B24976DC()
{
  result = qword_1EB7D11E8;
  if (!qword_1EB7D11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D11E8);
  }

  return result;
}

unint64_t sub_1B2497734()
{
  result = qword_1EB7D11F0;
  if (!qword_1EB7D11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D11F0);
  }

  return result;
}

unint64_t sub_1B249778C()
{
  result = qword_1EB7D11F8;
  if (!qword_1EB7D11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D11F8);
  }

  return result;
}

unint64_t sub_1B24977E4()
{
  result = qword_1EB7D1200;
  if (!qword_1EB7D1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1200);
  }

  return result;
}

unint64_t sub_1B249783C()
{
  result = qword_1EB7D1208;
  if (!qword_1EB7D1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1208);
  }

  return result;
}

unint64_t sub_1B2497894()
{
  result = qword_1EB7D1210;
  if (!qword_1EB7D1210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1210);
  }

  return result;
}

unint64_t sub_1B24978EC()
{
  result = qword_1EB7D1218;
  if (!qword_1EB7D1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1218);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return sub_1B256E9EC();
}

void sub_1B2497994(uint64_t a1@<X8>)
{
  sub_1B24AE0B4();
  if (v1)
  {
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0BE8);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      swift_willThrow();
      return;
    }

    if (v10)
    {
      sub_1B23F4EC8(v6, v7, v8, v9, v10);
      goto LABEL_5;
    }

    sub_1B23F4EC8(v6, v7, v8, v9, 0);

    v5 = sub_1B256D36C();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  }

  else
  {
    sub_1B256D31C();
    v4 = sub_1B256D36C();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
  }
}

uint64_t Transaction.AdvancedCommerceInfo.Offer.Reason.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static Transaction.AdvancedCommerceInfo.Item.Details.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v5 = v4;
  v7 = v6;
  v8 = *v6;
  v9 = v7[1];
  v10 = v7[2];
  v12 = v7[3];
  v11 = v7[4];
  v13 = v7[5];
  v14 = *(v7 + 4);
  v121[0] = *(v7 + 3);
  v121[1] = v14;
  v15 = *(v7 + 6);
  v121[2] = *(v7 + 5);
  v122 = v15;
  v90 = *(v7 + 28);
  v87 = *(v7 + 58);
  v84 = *(v7 + 59);
  v96 = v7[15];
  HIDWORD(v93) = *(v7 + 32);
  v16 = *v5;
  v17 = *(v5 + 8);
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  v20 = *(v5 + 32);
  v21 = *(v5 + 40);
  v22 = *(v5 + 96);
  v123[2] = *(v5 + 80);
  v124 = v22;
  v23 = *(v5 + 64);
  v123[0] = *(v5 + 48);
  v123[1] = v23;
  v75 = *(v5 + 112);
  v72 = *(v5 + 116);
  v69 = *(v5 + 118);
  v81 = *(v5 + 120);
  v24 = v8 == v16 && v9 == v17;
  HIDWORD(v78) = *(v5 + 128);
  if (!v24 && (sub_1B256EB5C() & 1) == 0)
  {
    goto LABEL_24;
  }

  v25 = v10 == v18 && v12 == v19;
  if (!v25 && (sub_1B256EB5C() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v11 != v20 || v13 != v21)
  {
    OUTLINED_FUNCTION_20_8();
    if ((sub_1B256EB5C() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v27 = *(&v122 + 1);
  v28 = *(&v124 + 1);
  if (!*(&v122 + 1))
  {
    if (!*(&v124 + 1))
    {
      OUTLINED_FUNCTION_26_4();
      v115 = v68;
      sub_1B2498F24(v121, &v108, &qword_1EB7D1220);
      sub_1B2498F24(v123, &v108, &qword_1EB7D1220);
      sub_1B243E88C(&v112, &qword_1EB7D1220);
LABEL_26:
      MEMORY[0x1B274A4F0](v90 | (v87 << 32) | (v84 << 48), v96, HIDWORD(v93), v75 | (v72 << 32) | (v69 << 48), v81, HIDWORD(v78));
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_8();
    sub_1B2498F24(v51, v52, v53);
    OUTLINED_FUNCTION_20_8();
    sub_1B2498F24(v54, v55, v56);
    goto LABEL_23;
  }

  v29 = v7[12];
  v30 = *(v7 + 4);
  v112 = *(v7 + 3);
  v113 = v30;
  v114 = *(v7 + 5);
  *&v115 = v29;
  *(&v115 + 1) = *(&v122 + 1);
  v108 = v112;
  v109 = v30;
  v110 = v114;
  v111 = v115;
  if (!*(&v124 + 1))
  {
    v104 = v112;
    v105 = v113;
    v106 = v114;
    v107 = v115;
    OUTLINED_FUNCTION_20_8();
    sub_1B2498F24(v57, v58, v59);
    OUTLINED_FUNCTION_20_8();
    sub_1B2498F24(v60, v61, v62);
    OUTLINED_FUNCTION_20_8();
    sub_1B2498F24(v63, v64, v65);
    sub_1B2497E24(&v104);
LABEL_23:
    OUTLINED_FUNCTION_26_4();
    *&v115 = v66;
    *(&v115 + 1) = v27;
    v67 = *(v5 + 64);
    v116 = *(v5 + 48);
    v117 = v67;
    v118 = *(v5 + 80);
    v119 = *(v5 + 96);
    v120 = v28;
    sub_1B243E88C(&v112, &qword_1EB7D1228);
    goto LABEL_24;
  }

  v31 = *(v5 + 64);
  v104 = *(v5 + 48);
  v105 = v31;
  v106 = *(v5 + 80);
  *&v107 = *(v5 + 96);
  *(&v107 + 1) = *(&v124 + 1);
  OUTLINED_FUNCTION_28_4(v121, v9, v16, v17, v0, v1, v2, v3, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103[0]);
  OUTLINED_FUNCTION_28_4(v123, v32, v33, v34, v35, v36, v37, v38, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103[0]);
  OUTLINED_FUNCTION_28_4(&v112, v39, v40, v41, v42, v43, v44, v45, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103[0]);
  static Transaction.AdvancedCommerceInfo.Offer.== infix(_:_:)();
  v47 = v46;
  v99 = v104;
  v100 = v105;
  v101 = v106;
  v102 = v107;
  sub_1B2497E24(&v99);
  v103[0] = v108;
  v103[1] = v109;
  v103[2] = v110;
  v103[3] = v111;
  sub_1B2497E24(v103);
  v48 = *(v7 + 4);
  v104 = *(v7 + 3);
  v105 = v48;
  v106 = *(v7 + 5);
  *&v107 = v7[12];
  *(&v107 + 1) = v27;
  OUTLINED_FUNCTION_34_1();
  sub_1B243E88C(v49, v50);
  if (v47)
  {
    goto LABEL_26;
  }

LABEL_24:
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B2497E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  OUTLINED_FUNCTION_6_12();
  sub_1B24AD990();
  if (v2)
  {
    v9 = OUTLINED_FUNCTION_4_14();
    return sub_1B24472E0(v9, v10, v11);
  }

  else
  {
    v13 = v7;
    v14 = v8;
    OUTLINED_FUNCTION_6_12();
    sub_1B24AD990();
    v16 = v15;
    v18 = v17;
    OUTLINED_FUNCTION_6_12();
    sub_1B24ADE48();
    OUTLINED_FUNCTION_6_12();
    sub_1B24ADC4C();
    OUTLINED_FUNCTION_6_12();
    sub_1B24AD990();
    v23 = v19;
    v20 = v5;
    v22 = v21;
    result = sub_1B24472E0(v20, v4, v6);
    *a2 = v23;
    *(a2 + 8) = v22;
    *(a2 + 16) = v16;
    *(a2 + 24) = v18;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
    *(a2 + 48) = v26;
    *(a2 + 64) = v27;
    *(a2 + 80) = v28;
    *(a2 + 96) = v29;
    *(a2 + 112) = v24;
    *(a2 + 128) = v25;
  }

  return result;
}

uint64_t Transaction.AdvancedCommerceInfo.Item.Details.offer.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v7[0] = v1[3];
  v7[1] = v2;
  v4 = v1[6];
  v8 = v1[5];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1B2498F24(v7, &v6, &qword_1EB7D1220);
}

uint64_t Transaction.AdvancedCommerceInfo.Item.Details.hash(into:)()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(v0 + 104);
  sub_1B256DA7C();
  OUTLINED_FUNCTION_34_1();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256ED5C();
  if (v1)
  {
    sub_1B256E28C();
    MEMORY[0x1B274AFC0]();
    MEMORY[0x1B274AFC0]();
    MEMORY[0x1B274AFC0]();
    sub_1B256DA7C();
  }

  return sub_1B256E28C();
}

uint64_t Transaction.AdvancedCommerceInfo.Item.Details.hashValue.getter()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(v0 + 104);
  sub_1B256ED3C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256ED5C();
  if (v1)
  {
    sub_1B256E28C();
    MEMORY[0x1B274AFC0]();
    MEMORY[0x1B274AFC0]();
    MEMORY[0x1B274AFC0]();
    sub_1B256DA7C();
  }

  sub_1B256E28C();
  return sub_1B256ED7C();
}

uint64_t sub_1B2498440()
{
  sub_1B256ED3C();
  Transaction.AdvancedCommerceInfo.Item.Details.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t Transaction.AdvancedCommerceInfo.Item.details.getter()
{
  memcpy(__dst, v0, 0x84uLL);
  v1 = OUTLINED_FUNCTION_22_1();
  memcpy(v1, v2, 0x84uLL);
  return sub_1B24586E4(__dst, v4);
}

void static Transaction.AdvancedCommerceInfo.Item.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33[-v12 - 8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0680);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33[-v16 - 8];
  memcpy(v35, v3, 0x84uLL);
  memcpy(v34, v3, sizeof(v34));
  memcpy(v36, v1, 0x84uLL);
  memcpy(v33, v1, sizeof(v33));
  sub_1B24586E4(v35, v38);
  sub_1B24586E4(v36, v38);
  static Transaction.AdvancedCommerceInfo.Item.Details.== infix(_:_:)();
  v19 = v18;
  memcpy(v37, v33, 0x84uLL);
  sub_1B2458740(v37);
  memcpy(v38, v34, 0x84uLL);
  sub_1B2458740(v38);
  if (v19)
  {
    v32 = v6;
    v20 = v3[17];
    v21 = v1[17];
    if (v20)
    {
      if (!v21)
      {
        goto LABEL_16;
      }

      v22 = sub_1B24526EC(v20, v21);

      if ((v22 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v21)
    {
      goto LABEL_16;
    }

    v23 = *(type metadata accessor for Transaction.AdvancedCommerceInfo.Item(0) + 24);
    v24 = *(v14 + 48);
    sub_1B2498F24(v3 + v23, v17, &qword_1EB7D0088);
    v25 = v1 + v23;
    v26 = v24;
    sub_1B2498F24(v25, &v17[v24], &qword_1EB7D0088);
    OUTLINED_FUNCTION_35_3(v17);
    if (v27)
    {
      OUTLINED_FUNCTION_35_3(&v17[v24]);
      if (v27)
      {
        sub_1B243E88C(v17, &qword_1EB7D0088);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B2498F24(v17, v13, &qword_1EB7D0088);
      OUTLINED_FUNCTION_35_3(&v17[v24]);
      if (!v27)
      {
        v28 = v32;
        (*(v32 + 32))(v10, &v17[v26], v4);
        OUTLINED_FUNCTION_0_27();
        sub_1B249B644(v29, v30);
        sub_1B256D96C();
        v31 = *(v28 + 8);
        v31(v10, v4);
        v31(v13, v4);
        sub_1B243E88C(v17, &qword_1EB7D0088);
        goto LABEL_16;
      }

      (*(v32 + 8))(v13, v4);
    }

    sub_1B243E88C(v17, &qword_1EB7D0680);
  }

LABEL_16:
  OUTLINED_FUNCTION_45();
}

void Transaction.AdvancedCommerceInfo.Item.hash(into:)()
{
  OUTLINED_FUNCTION_67();
  v35 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v22 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v21 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v23 = *(v0 + 48);
  v8 = *(v0 + 56);
  v24 = *(v0 + 64);
  v9 = *(v0 + 72);
  v25 = v8;
  v26 = v9;
  v10 = *(v0 + 88);
  v27 = *(v0 + 80);
  v28 = v10;
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v34 = *(v0 + 112);
  v32 = *(v0 + 116);
  v13 = *(v0 + 118);
  v29 = v11;
  v30 = v13;
  v33 = *(v0 + 120);
  v31 = *(v0 + 128);
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256ED5C();
  if (v12)
  {
    sub_1B256E28C();
    MEMORY[0x1B274AFC0](v26);
    MEMORY[0x1B274AFC0](v27);
    MEMORY[0x1B274AFC0](v28);
    sub_1B256DA7C();
  }

  sub_1B256E28C();
  if (*(v0 + 136))
  {
    sub_1B256ED5C();
    sub_1B24577B8();
  }

  else
  {
    sub_1B256ED5C();
  }

  v14 = type metadata accessor for Transaction.AdvancedCommerceInfo.Item(0);
  sub_1B2498F24(v0 + *(v14 + 24), v7, &qword_1EB7D0088);
  v15 = v35;
  if (__swift_getEnumTagSinglePayload(v7, 1, v35) == 1)
  {
    sub_1B256ED5C();
  }

  else
  {
    v17 = v21;
    v16 = v22;
    (*(v22 + 32))(v21, v7, v15);
    sub_1B256ED5C();
    OUTLINED_FUNCTION_0_27();
    sub_1B249B644(v18, v19);
    sub_1B256D8FC();
    (*(v16 + 8))(v17, v15);
  }

  OUTLINED_FUNCTION_45();
}

uint64_t Transaction.AdvancedCommerceInfo.Item.hashValue.getter()
{
  OUTLINED_FUNCTION_38_3();
  Transaction.AdvancedCommerceInfo.Item.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t sub_1B2498BE8()
{
  sub_1B256ED3C();
  Transaction.AdvancedCommerceInfo.Item.hash(into:)();
  return sub_1B256ED7C();
}

void Transaction.AdvancedCommerceInfo.Offer.period.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

void static Transaction.AdvancedCommerceInfo.Offer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v10 = *(v6 + 48);
  v11 = *(v6 + 56);
  if ((MEMORY[0x1B274A4F0](*v0, *(v0 + 8), *(v0 + 16), *v6, *(v6 + 8), *(v6 + 16)) & 1) != 0 && (v1 == v7 ? (v12 = v2 == v8) : (v12 = 0), v12 ? (v13 = v3 == v9) : (v13 = 0), v13 && (v4 == v10 ? (v14 = v5 == v11) : (v14 = 0), !v14)))
  {
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_45();

    sub_1B256EB5C();
  }

  else
  {
    OUTLINED_FUNCTION_45();
  }
}

uint64_t Transaction.AdvancedCommerceInfo.Offer.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_1B256E28C();
  MEMORY[0x1B274AFC0](v1);
  MEMORY[0x1B274AFC0](v2);
  MEMORY[0x1B274AFC0](v3);
  OUTLINED_FUNCTION_34_1();

  return sub_1B256DA7C();
}

uint64_t Transaction.AdvancedCommerceInfo.Offer.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_38_3();
  sub_1B256E28C();
  MEMORY[0x1B274AFC0](v1);
  MEMORY[0x1B274AFC0](v2);
  MEMORY[0x1B274AFC0](v3);
  OUTLINED_FUNCTION_34_1();
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

uint64_t sub_1B2498F24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t sub_1B2498F80()
{
  sub_1B256ED3C();
  Transaction.AdvancedCommerceInfo.Offer.hash(into:)();
  return sub_1B256ED7C();
}

void *sub_1B24990B0@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

uint64_t Transaction.AdvancedCommerceInfo.Refund.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Transaction.AdvancedCommerceInfo.Refund(0) + 24);
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t static Transaction.AdvancedCommerceInfo.Refund.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1B256EB5C() & 1) != 0)
    {
      type metadata accessor for Transaction.AdvancedCommerceInfo.Refund(0);
      if (sub_1B256D32C())
      {

        JUMPOUT(0x1B274A4F0);
      }
    }
  }

  return 0;
}

uint64_t Transaction.AdvancedCommerceInfo.Refund.hash(into:)()
{
  sub_1B256DA7C();
  sub_1B256DA7C();
  type metadata accessor for Transaction.AdvancedCommerceInfo.Refund(0);
  sub_1B256D36C();
  OUTLINED_FUNCTION_0_27();
  sub_1B249B644(v0, v1);
  sub_1B256D8FC();

  return sub_1B256E28C();
}

uint64_t Transaction.AdvancedCommerceInfo.Refund.hashValue.getter()
{
  OUTLINED_FUNCTION_38_3();
  sub_1B256DA7C();
  sub_1B256DA7C();
  type metadata accessor for Transaction.AdvancedCommerceInfo.Refund(0);
  sub_1B256D36C();
  OUTLINED_FUNCTION_0_27();
  sub_1B249B644(v0, v1);
  sub_1B256D8FC();
  sub_1B256E28C();
  return sub_1B256ED7C();
}

uint64_t sub_1B2499400()
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256D36C();
  sub_1B249B644(&qword_1EB7D0678, MEMORY[0x1E6969530]);
  sub_1B256D8FC();
  sub_1B256E28C();
  return sub_1B256ED7C();
}

__n128 Transaction.AdvancedCommerceInfo.period.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[8];
  *a1 = result;
  return result;
}

void static Transaction.AdvancedCommerceInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 22);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v64 = *(a1 + 36);
  v63 = *(a1 + 40);
  v62 = *(a1 + 42);
  v66 = *(a1 + 44);
  v65 = *(a1 + 52);
  v61 = *(a1 + 56);
  v60 = *(a1 + 64);
  v57 = *(a1 + 72);
  v56 = *(a1 + 76);
  v55 = *(a1 + 78);
  v59 = *(a1 + 80);
  v58 = *(a1 + 88);
  v45 = *(a1 + 96);
  v49 = *(a1 + 104);
  v43 = *(a1 + 112);
  v47 = *(a1 + 120);
  v41 = *(a1 + 128);
  v39 = *(a1 + 136);
  v7 = *(a2 + 16);
  v8 = *(a2 + 20);
  v9 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v10 = *(a2 + 22);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 36);
  v14 = *(a2 + 40);
  v15 = *(a2 + 42);
  v16 = *(a2 + 44);
  v17 = *(a2 + 52);
  v19 = *(a2 + 56);
  v18 = *(a2 + 64);
  v52 = *(a2 + 72);
  v51 = *(a2 + 76);
  v50 = *(a2 + 78);
  v54 = *(a2 + 80);
  v53 = *(a2 + 88);
  v44 = *(a2 + 96);
  v48 = *(a2 + 104);
  v42 = *(a2 + 112);
  v46 = *(a2 + 120);
  v40 = *(a2 + 128);
  v38 = *(a2 + 136);
  if (v9 || (v32 = *(a2 + 64), v33 = *(a2 + 24), v35 = *(a2 + 40), v36 = *(a2 + 36), v31 = *(a2 + 56), v20 = *(a1 + 24), v37 = *(a2 + 52), v21 = *(a1 + 16), v22 = *(a1 + 22), v34 = *(a2 + 42), v23 = *(a2 + 44), v24 = *(a1 + 20), v25 = *(a2 + 32), v26 = *(a2 + 22), v27 = sub_1B256EB5C(), v10 = v26, v12 = v25, v3 = v24, v16 = v23, v11 = v33, v15 = v34, v4 = v22, v14 = v35, v13 = v36, v2 = v21, v17 = v37, v5 = v20, v19 = v31, v18 = v32, (v27 & 1) != 0))
  {
    if (MEMORY[0x1B274A4F0](v2 | (v3 << 32) | (v4 << 48), v5, v6, v7 | (v8 << 32) | (v10 << 48), v11, v12) & 1) != 0 && (MEMORY[0x1B274A4F0](v64 | (v63 << 32) | (v62 << 48), v66, v65, v13 | (v14 << 32) | (v15 << 48), v16, v17))
    {
      v28 = v61 == v19 && v60 == v18;
      if (v28 || (sub_1B256EB5C()) && (MEMORY[0x1B274A4F0](v57 | (v56 << 32) | (v55 << 48), v59, v58, v52 | (v51 << 32) | (v50 << 48), v54, v53))
      {
        if (v49)
        {
          if (!v48)
          {
            return;
          }

          v29 = v45 == v44 && v49 == v48;
          if (!v29 && (sub_1B256EB5C() & 1) == 0)
          {
            return;
          }
        }

        else if (v48)
        {
          return;
        }

        if (v47)
        {
          if (!v46)
          {
            return;
          }

          v30 = v43 == v42 && v47 == v46;
          if (!v30 && (sub_1B256EB5C() & 1) == 0)
          {
            return;
          }
        }

        else if (v46)
        {
          return;
        }

        if (v41 == 4)
        {
          if (v40 != 4)
          {
            return;
          }
        }

        else if (v40 == 4 || v40 != v41 || v39 != v38)
        {
          return;
        }

        sub_1B245218C();
      }
    }
  }
}

void Transaction.AdvancedCommerceInfo.hash(into:)()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_1B256DA7C();
  sub_1B256E28C();
  sub_1B256E28C();
  sub_1B256DA7C();
  sub_1B256E28C();
  sub_1B256ED5C();
  if (v1)
  {
    sub_1B256DA7C();
  }

  sub_1B256ED5C();
  if (v3)
  {
    sub_1B256DA7C();
  }

  sub_1B256ED5C();
  if (v4 != 4)
  {
    MEMORY[0x1B274AFC0](v4);
    MEMORY[0x1B274AFC0](v2);
  }

  sub_1B2457290();
}

uint64_t Transaction.AdvancedCommerceInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_38_3();
  Transaction.AdvancedCommerceInfo.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t sub_1B2499B1C()
{
  v0 = sub_1B256E91C();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B2499B78(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 2:
      result = OUTLINED_FUNCTION_10_10();
      break;
    case 3:
      result = 0x6574616D69747365;
      break;
    case 4:
      result = 0x736D657469;
      break;
    case 5:
      result = 0x646F69726570;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x65646F43786174;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x65746152786174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B2499C90()
{
  sub_1B256ED3C();
  Transaction.AdvancedCommerceInfo.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t sub_1B2499CF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2499B1C();
  *a1 = result;
  return result;
}

uint64_t sub_1B2499D20()
{
  v1 = OUTLINED_FUNCTION_27_4();
  result = sub_1B2499B78(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1B2499D64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2499B68();
  *a1 = result;
  return result;
}

uint64_t sub_1B2499D8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2499B6C();
  *a1 = result;
  return result;
}

uint64_t sub_1B2499DB4(uint64_t a1)
{
  v2 = sub_1B249CD20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2499DF0(uint64_t a1)
{
  v2 = sub_1B249CD20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B2499E2C()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  sub_1B24ABF10();
  v18 = v2;
  v4 = v3;
  sub_1B24AC208();
  OUTLINED_FUNCTION_3_21();
  sub_1B24AC208();
  OUTLINED_FUNCTION_3_21();
  sub_1B24ABF10();
  v6 = v5;
  v17 = v7;
  OUTLINED_FUNCTION_3_21();
  sub_1B24AC208();
  OUTLINED_FUNCTION_3_21();
  sub_1B25079E8();
  v9 = v8;
  v16 = v10;
  OUTLINED_FUNCTION_3_21();
  sub_1B25079E8();
  v20 = v11;
  v15 = v12;
  OUTLINED_FUNCTION_3_21();
  v14 = sub_1B246C118();
  OUTLINED_FUNCTION_3_21();
  sub_1B24AC46C();
  OUTLINED_FUNCTION_16_13();
  v13 = v24;
  v19 = v25;
  *__src = v4;
  *&__src[8] = v18;
  *&__src[16] = v30;
  *&__src[36] = v28;
  *&__src[32] = v31;
  *&__src[52] = v29;
  *&__src[56] = v6;
  *&__src[64] = v17;
  *&__src[72] = v26;
  *&__src[88] = v27;
  *&__src[96] = v9;
  *&__src[104] = v16;
  *&__src[112] = v20;
  *&__src[120] = v15;
  *&__src[128] = v24;
  *&__src[136] = v25;
  *&__src[144] = v14;
  memcpy(__dst, __src, sizeof(__dst));
  nullsub_3(__dst);
  memcpy(v1, __dst, 0x98uLL);
  v32[0] = v4;
  v32[1] = v18;
  v33 = v30;
  v35 = v28;
  v34 = v31;
  v36 = v29;
  v37 = v6;
  v38 = v17;
  v39 = v26;
  v40 = v27;
  v41 = v9;
  v42 = v16;
  v43 = v20;
  v44 = v15;
  v45 = v13;
  v46 = v19;
  v47 = v14;
  sub_1B249C218(__src, v21);
  sub_1B249C250(v32);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B249A484()
{
  OUTLINED_FUNCTION_33_2();
  sub_1B256E91C();
  OUTLINED_FUNCTION_40_3();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B249A4F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B249A484();
  *a1 = result;
  return result;
}

uint64_t sub_1B249A520()
{
  v1 = OUTLINED_FUNCTION_27_4();
  result = sub_1B23F4A44(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1B249A550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B249A484();
  *a1 = result;
  return result;
}

uint64_t sub_1B249A578(uint64_t a1)
{
  v2 = sub_1B249CCCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B249A5B4(uint64_t a1)
{
  v2 = sub_1B249CCCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B249A5F0()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - v5 + 40;
  v7 = type metadata accessor for Transaction.AdvancedCommerceInfo.Item(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = (v10 - v9);
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v26[0] = *v1;
  v26[1] = v12;
  v27 = v13;
  v14 = OUTLINED_FUNCTION_4_14();
  sub_1B24472B8(v14, v15, v16);
  sub_1B2497E50(v26, v28);
  memcpy(v11, v28, 0x84uLL);
  OUTLINED_FUNCTION_6_12();
  v11[17] = sub_1B2507C7C(v17, v18, v19, v20);
  OUTLINED_FUNCTION_6_12();
  sub_1B2497994(v21);
  v22 = OUTLINED_FUNCTION_4_14();
  sub_1B24472E0(v22, v23, v24);
  sub_1B249C280(v6, v11 + *(v7 + 24));
  sub_1B24585C0(v11, v3, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
  sub_1B249C2F0(v11, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B249AA7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F4A88();
  *a1 = result;
  return result;
}

uint64_t sub_1B249AAAC()
{
  v1 = OUTLINED_FUNCTION_27_4();
  result = sub_1B23F4AC8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1B249AADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F4A88();
  *a1 = result;
  return result;
}

uint64_t sub_1B249AB04(uint64_t a1)
{
  v2 = sub_1B249CDC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B249AB40(uint64_t a1)
{
  v2 = sub_1B249CDC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B249ABA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F4B4C();
  *a1 = result;
  return result;
}

uint64_t sub_1B249ABD0()
{
  v1 = OUTLINED_FUNCTION_27_4();
  result = sub_1B23F4B8C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1B249AC00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F4B4C();
  *a1 = result;
  return result;
}

uint64_t sub_1B249AC28(uint64_t a1)
{
  v2 = sub_1B249CD74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B249AC64(uint64_t a1)
{
  v2 = sub_1B249CD74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B249ACA0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_13_11();
  sub_1B24AD0B4();
  v27 = v25;
  LODWORD(v28) = v26;
  OUTLINED_FUNCTION_13_11();
  sub_1B24AD2A0(v3, v4);
  v5 = v19;
  v6 = *(&v19 + 1);
  OUTLINED_FUNCTION_13_11();
  sub_1B24AD53C();
  v7 = v19;
  OUTLINED_FUNCTION_13_11();
  sub_1B24AD7AC();
  v9 = v8;
  OUTLINED_FUNCTION_29_6();
  *&v16 = v28;
  v10 = v28;
  BYTE8(v16) = v19;
  *&v17 = *(&v19 + 1);
  *(&v17 + 1) = v9;
  v18 = v19;
  v11 = v16;
  a2[2] = v17;
  a2[3] = v7;
  v12 = v27;
  v15 = v27;
  *a2 = v27;
  a2[1] = v11;
  v20 = v10;
  v19 = v12;
  v21 = v5;
  v22 = v6;
  v23 = v9;
  v24 = v7;
  sub_1B249C1D8(&v15, v14);
  return sub_1B2497E24(&v19);
}

uint64_t sub_1B249B098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F4C08();
  *a1 = result;
  return result;
}

uint64_t sub_1B249B0C8()
{
  v1 = OUTLINED_FUNCTION_27_4();
  result = sub_1B23F4C48(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1B249B0F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F4C08();
  *a1 = result;
  return result;
}

uint64_t sub_1B249B120(uint64_t a1)
{
  v2 = sub_1B249CC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B249B15C(uint64_t a1)
{
  v2 = sub_1B249CC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B249B198()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v2 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = type metadata accessor for Transaction.AdvancedCommerceInfo.Refund(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_14_10();
  sub_1B24AC958(v14, v15, v16, v17, v18);
  *v13 = v27;
  *(v13 + 1) = v28;
  OUTLINED_FUNCTION_14_10();
  sub_1B24AC978(v19, v20, v21, v22, v23);
  *(v13 + 2) = v27;
  *(v13 + 3) = v28;
  OUTLINED_FUNCTION_14_10();
  sub_1B24ACC6C();
  v24 = &v13[*(v9 + 28)];
  *v24 = v25;
  *(v24 + 4) = v26;
  OUTLINED_FUNCTION_14_10();
  sub_1B24ACE84();
  OUTLINED_FUNCTION_21_8();
  sub_1B256D31C();
  (*(v4 + 32))(&v13[*(v9 + 24)], v8, v2);
  sub_1B24585C0(v13, v1, type metadata accessor for Transaction.AdvancedCommerceInfo.Refund);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v9);
  sub_1B249C2F0(v13, type metadata accessor for Transaction.AdvancedCommerceInfo.Refund);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B249B644(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B249B6B0()
{
  result = qword_1EB7D1230;
  if (!qword_1EB7D1230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1230);
  }

  return result;
}

unint64_t sub_1B249B750()
{
  result = qword_1EB7D1240;
  if (!qword_1EB7D1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1240);
  }

  return result;
}

unint64_t sub_1B249B7A8()
{
  result = qword_1EB7D1248;
  if (!qword_1EB7D1248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1248);
  }

  return result;
}

unint64_t sub_1B249B800()
{
  result = qword_1EB7D1250;
  if (!qword_1EB7D1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1250);
  }

  return result;
}

unint64_t sub_1B249B858()
{
  result = qword_1EB7D1258;
  if (!qword_1EB7D1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1258);
  }

  return result;
}

unint64_t sub_1B249B8F8()
{
  result = qword_1EB7D1268;
  if (!qword_1EB7D1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1268);
  }

  return result;
}

uint64_t _s20AdvancedCommerceInfoVwxx()
{
}

uint64_t _s20AdvancedCommerceInfoVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v5;
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;
  v7 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v7;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t _s20AdvancedCommerceInfoVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 54) = *(a2 + 54);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 78) = *(a2 + 78);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 86) = *(a2 + 86);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t _s20AdvancedCommerceInfoVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;

  v7 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v7;

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t _s20AdvancedCommerceInfoVwet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s20AdvancedCommerceInfoVwst(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1B249BD94()
{
  sub_1B249BE28();
  if (v0 <= 0x3F)
  {
    sub_1B249BE8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B249BE28()
{
  if (!qword_1EB7D1280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D0BE0);
    v0 = sub_1B256E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7D1280);
    }
  }
}

void sub_1B249BE8C()
{
  if (!qword_1EB7CD4E0)
  {
    sub_1B256D36C();
    v0 = sub_1B256E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7CD4E0);
    }
  }
}

uint64_t _s20AdvancedCommerceInfoV5OfferVwcp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t _s20AdvancedCommerceInfoV5OfferVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t _s20AdvancedCommerceInfoV5OfferVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;

  return a1;
}

uint64_t _s20AdvancedCommerceInfoV5OfferVwet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s20AdvancedCommerceInfoV5OfferVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B249C11C()
{
  sub_1B256D36C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Decimal(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B249C280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B249C2F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *_s20AdvancedCommerceInfoV4ItemV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t _s20AdvancedCommerceInfoV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20AdvancedCommerceInfoV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B249C598(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20AdvancedCommerceInfoV4ItemV7DetailsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B249C754()
{
  result = qword_1EB7D12A0;
  if (!qword_1EB7D12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12A0);
  }

  return result;
}

unint64_t sub_1B249C7AC()
{
  result = qword_1EB7D12A8;
  if (!qword_1EB7D12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12A8);
  }

  return result;
}

unint64_t sub_1B249C804()
{
  result = qword_1EB7D12B0;
  if (!qword_1EB7D12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12B0);
  }

  return result;
}

unint64_t sub_1B249C85C()
{
  result = qword_1EB7D12B8;
  if (!qword_1EB7D12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12B8);
  }

  return result;
}

unint64_t sub_1B249C8B4()
{
  result = qword_1EB7D12C0;
  if (!qword_1EB7D12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12C0);
  }

  return result;
}

unint64_t sub_1B249C90C()
{
  result = qword_1EB7D12C8;
  if (!qword_1EB7D12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12C8);
  }

  return result;
}

unint64_t sub_1B249C964()
{
  result = qword_1EB7D12D0;
  if (!qword_1EB7D12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12D0);
  }

  return result;
}

unint64_t sub_1B249C9BC()
{
  result = qword_1EB7D12D8;
  if (!qword_1EB7D12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12D8);
  }

  return result;
}

unint64_t sub_1B249CA14()
{
  result = qword_1EB7D12E0;
  if (!qword_1EB7D12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12E0);
  }

  return result;
}

unint64_t sub_1B249CA6C()
{
  result = qword_1EB7D12E8;
  if (!qword_1EB7D12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12E8);
  }

  return result;
}

unint64_t sub_1B249CAC4()
{
  result = qword_1EB7D12F0;
  if (!qword_1EB7D12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12F0);
  }

  return result;
}

unint64_t sub_1B249CB1C()
{
  result = qword_1EB7D12F8;
  if (!qword_1EB7D12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D12F8);
  }

  return result;
}

unint64_t sub_1B249CB74()
{
  result = qword_1EB7D1300;
  if (!qword_1EB7D1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1300);
  }

  return result;
}

unint64_t sub_1B249CBCC()
{
  result = qword_1EB7D1308;
  if (!qword_1EB7D1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1308);
  }

  return result;
}

unint64_t sub_1B249CC24()
{
  result = qword_1EB7D1310;
  if (!qword_1EB7D1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1310);
  }

  return result;
}

unint64_t sub_1B249CC78()
{
  result = qword_1EB7D1318;
  if (!qword_1EB7D1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1318);
  }

  return result;
}

unint64_t sub_1B249CCCC()
{
  result = qword_1EB7D1320;
  if (!qword_1EB7D1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1320);
  }

  return result;
}

unint64_t sub_1B249CD20()
{
  result = qword_1EB7D1328;
  if (!qword_1EB7D1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1328);
  }

  return result;
}

unint64_t sub_1B249CD74()
{
  result = qword_1EB7D1330;
  if (!qword_1EB7D1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1330);
  }

  return result;
}

unint64_t sub_1B249CDC8()
{
  result = qword_1EB7D1338[0];
  if (!qword_1EB7D1338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7D1338);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_16@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return sub_1B24472E0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_21_8()
{

  return sub_1B24472E0(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_28_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return sub_1B2498F24(a1, &a27, v27);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return sub_1B24472E0(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return sub_1B256ED3C();
}

uint64_t OUTLINED_FUNCTION_40_3()
{
}

void OUTLINED_FUNCTION_41_3()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t sub_1B249D0E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7CFF40);
  v4 = sub_1B256DF3C();
  *v3 = v1;
  v3[1] = sub_1B244FC90;

  return MEMORY[0x1EEE6DB98](a1, v4);
}

uint64_t sub_1B249D1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7CFF40);
  v4 = sub_1B256DF3C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B249D29C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B249D8E0;

  return sub_1B249D0E0(a1);
}

uint64_t sub_1B249D344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1B249D418;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1B249D418()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1B249D528@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7CFF40);
  OUTLINED_FUNCTION_0_28();
  v2 = sub_1B256DF3C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  OUTLINED_FUNCTION_0_28();
  sub_1B256DF5C();
  sub_1B256DE1C();
  return sub_1B249D1DC(v4, a1);
}

uint64_t sub_1B249D614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B249D528(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1B249D698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7CFF40);
  result = a4(319, AssociatedTypeWitness, v6, MEMORY[0x1E69E7288]);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7CFF40);
  v9 = a4(0, AssociatedTypeWitness, v8, MEMORY[0x1E69E7288]);

  return __swift_getEnumTagSinglePayload(a1, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7CFF40);
  v10 = a5(0, AssociatedTypeWitness, v9, MEMORY[0x1E69E7288]);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v10);
}

uint64_t sub_1B249D90C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657373696D736964 && a2 == 0xE900000000000064;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B256EB5C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B249D9E4(char a1)
{
  if (a1)
  {
    return 0x6573616863727570;
  }

  else
  {
    return 0x657373696D736964;
  }
}

uint64_t sub_1B249DA18(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D14B0);
  OUTLINED_FUNCTION_1_1();
  v23 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D14B8);
  OUTLINED_FUNCTION_1_1();
  v21 = v11;
  v22 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_15();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D14C0);
  OUTLINED_FUNCTION_1_1();
  v15 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B249EBB4();
  v19 = v25;
  sub_1B256EDFC();
  if (v19)
  {
    v27 = 1;
    sub_1B249EC08();
    sub_1B256E9EC();
    sub_1B256EA2C();
    (*(v23 + 8))(v9, v5);
  }

  else
  {
    v26 = 0;
    sub_1B249EC5C();
    sub_1B256E9EC();
    (*(v21 + 8))(v3, v22);
  }

  return (*(v15 + 8))(v18, v13);
}

uint64_t sub_1B249DCD4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1480);
  OUTLINED_FUNCTION_1_1();
  v41 = v3;
  v42 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_15();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1488);
  OUTLINED_FUNCTION_1_1();
  v40 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1490);
  OUTLINED_FUNCTION_1_1();
  v43 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B249EBB4();
  v16 = v44;
  sub_1B256EDBC();
  if (v16)
  {
    goto LABEL_9;
  }

  v44 = v10;
  v39[2] = v1;
  v17 = sub_1B256E9CC();
  result = sub_1B24AAC2C(v17, 0);
  if (v20 == v21 >> 1)
  {
    v22 = a1;
    goto LABEL_8;
  }

  if (v20 < (v21 >> 1))
  {
    v22 = a1;
    v45 = *(v19 + v20);
    v23 = sub_1B24AAC20(v20 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      v39[1] = v23;
      if (v45)
      {
        v47 = 1;
        sub_1B249EC08();
        OUTLINED_FUNCTION_6_13();
        v15 = sub_1B256E97C();
        swift_unknownObjectRelease();
        v35 = OUTLINED_FUNCTION_5_14();
        v36(v35);
        v37 = OUTLINED_FUNCTION_2_23();
        v38(v37);
      }

      else
      {
        v46 = 0;
        sub_1B249EC5C();
        OUTLINED_FUNCTION_6_13();
        swift_unknownObjectRelease();
        (*(v40 + 8))(v44, v6);
        v33 = OUTLINED_FUNCTION_2_23();
        v34(v33);
        v15 = 0;
      }

      goto LABEL_9;
    }

LABEL_8:
    v28 = sub_1B256E58C();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v30 = &type metadata for OfferDisplayResponse.Result;
    v15 = v14;
    sub_1B256E93C();
    sub_1B256E54C();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = OUTLINED_FUNCTION_2_23();
    v32(v31);
    a1 = v22;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B249E1C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B256EB5C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B249E290(char a1)
{
  if (a1)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_1B249E2B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1458);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B249E8D4();
  sub_1B256EDFC();
  LOBYTE(v16) = 0;
  sub_1B256EA2C();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_1B249E97C();
    sub_1B256EA5C();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1B249E438(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1440);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_15();
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B249E8D4();
  sub_1B256EDBC();
  if (!v1)
  {
    v4 = sub_1B256E97C();
    sub_1B249E928();
    sub_1B256E9AC();
    v6 = OUTLINED_FUNCTION_3_15();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1B249E604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B249D90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B249E62C(uint64_t a1)
{
  v2 = sub_1B249EBB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B249E668(uint64_t a1)
{
  v2 = sub_1B249EBB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B249E6A4(uint64_t a1)
{
  v2 = sub_1B249EC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B249E6E0(uint64_t a1)
{
  v2 = sub_1B249EC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B249E71C(uint64_t a1)
{
  v2 = sub_1B249EC08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B249E758(uint64_t a1)
{
  v2 = sub_1B249EC08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B249E794@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B249DCD4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B249E7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B249E1C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B249E80C(uint64_t a1)
{
  v2 = sub_1B249E8D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B249E848(uint64_t a1)
{
  v2 = sub_1B249E8D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B249E884@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B249E438(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1B249E8D4()
{
  result = qword_1EB7D1448;
  if (!qword_1EB7D1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1448);
  }

  return result;
}

unint64_t sub_1B249E928()
{
  result = qword_1EB7D1450;
  if (!qword_1EB7D1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1450);
  }

  return result;
}

unint64_t sub_1B249E97C()
{
  result = qword_1EB7D1460;
  if (!qword_1EB7D1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1460);
  }

  return result;
}

uint64_t sub_1B249E9E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B249EA30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B249EA84(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1B249EAB0()
{
  result = qword_1EB7D1468;
  if (!qword_1EB7D1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1468);
  }

  return result;
}

unint64_t sub_1B249EB08()
{
  result = qword_1EB7D1470;
  if (!qword_1EB7D1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1470);
  }

  return result;
}

unint64_t sub_1B249EB60()
{
  result = qword_1EB7D1478;
  if (!qword_1EB7D1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1478);
  }

  return result;
}

unint64_t sub_1B249EBB4()
{
  result = qword_1EB7D1498;
  if (!qword_1EB7D1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1498);
  }

  return result;
}

unint64_t sub_1B249EC08()
{
  result = qword_1EB7D14A0;
  if (!qword_1EB7D14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D14A0);
  }

  return result;
}

unint64_t sub_1B249EC5C()
{
  result = qword_1EB7D14A8;
  if (!qword_1EB7D14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D14A8);
  }

  return result;
}

_BYTE *sub_1B249ECB0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferDisplayResponse.Result.PurchasedCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B249EE4C()
{
  result = qword_1EB7D14C8;
  if (!qword_1EB7D14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D14C8);
  }

  return result;
}

unint64_t sub_1B249EEA4()
{
  result = qword_1EB7D14D0;
  if (!qword_1EB7D14D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D14D0);
  }

  return result;
}

unint64_t sub_1B249EEFC()
{
  result = qword_1EB7D14D8;
  if (!qword_1EB7D14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D14D8);
  }

  return result;
}

unint64_t sub_1B249EF54()
{
  result = qword_1EB7D14E0;
  if (!qword_1EB7D14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D14E0);
  }

  return result;
}

unint64_t sub_1B249EFAC()
{
  result = qword_1EB7D14E8;
  if (!qword_1EB7D14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D14E8);
  }

  return result;
}

unint64_t sub_1B249F004()
{
  result = qword_1EB7D14F0;
  if (!qword_1EB7D14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D14F0);
  }

  return result;
}

unint64_t sub_1B249F05C()
{
  result = qword_1EB7D14F8;
  if (!qword_1EB7D14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D14F8);
  }

  return result;
}

unint64_t sub_1B249F0B4()
{
  result = qword_1EB7D1500;
  if (!qword_1EB7D1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1500);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return sub_1B256E92C();
}

uint64_t sub_1B249F178()
{
  v0 = sub_1B256E91C();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B249F1C4(char a1)
{
  result = 0x496D657449707061;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6449656C646E7562;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      v3 = 10;
      goto LABEL_14;
    case 9:
      result = 0x726564726F657270;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x5474706965636572;
      break;
    case 12:
      v3 = 9;
LABEL_14:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B249F360@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B249F178();
  *a1 = result;
  return result;
}

unint64_t sub_1B249F390@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B249F1C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AppTransaction.backing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_1B24472B8(v2, v3, v4);
}

void AppTransaction.jsonRepresentation.getter()
{
  OUTLINED_FUNCTION_5_15();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_1();
    MEMORY[0x1B2749CC0](v1);
    OUTLINED_FUNCTION_8_15();

    OUTLINED_FUNCTION_22_1();
    sub_1B246314C();

    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!(!v2 & v0))
    {

      OUTLINED_FUNCTION_18_1();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t AppTransaction.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  a1[1] = v2;
}

uint64_t AppTransaction.originalPurchaseDate.getter()
{
  OUTLINED_FUNCTION_9_15();
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_6_14();

  return v1(v0);
}

uint64_t AppTransaction.originalPlatform.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_9_15() + 56));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t AppTransaction.originalPlatformStringRepresentation.getter()
{
  type metadata accessor for AppTransaction();

  return OUTLINED_FUNCTION_22_1();
}

uint64_t AppTransaction.deviceVerification.getter()
{
  type metadata accessor for AppTransaction();
  v0 = OUTLINED_FUNCTION_22_1();
  sub_1B244784C(v0, v1);
  return OUTLINED_FUNCTION_22_1();
}

uint64_t AppTransaction.deviceVerificationNonce.getter()
{
  OUTLINED_FUNCTION_9_15();
  sub_1B256D3CC();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_6_14();

  return v1(v0);
}

uint64_t AppTransaction.signedDate.getter()
{
  OUTLINED_FUNCTION_9_15();
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_6_14();

  return v1(v0);
}

uint64_t static AppTransaction.shared.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1B244D2A0;

  return sub_1B249F81C(v2, 0);
}

uint64_t sub_1B249F81C(uint64_t a1, char a2)
{
  *(v2 + 248) = a2;
  *(v2 + 184) = a1;
  *(v2 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D21F0);
  *(v2 + 200) = swift_task_alloc();
  type metadata accessor for AppTransaction();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B249F8F8, 0, 0);
}

uint64_t sub_1B249F8F8()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 248);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1B249F994;
  v2 = swift_continuation_init();
  sub_1B24A043C(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B249F994()
{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v1[19];
    v1[28] = v1[18];
    v1[29] = v5;
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1B249FB04()
{
  sub_1B24A0ECC(*(v0 + 224), *(v0 + 232), *(v0 + 216));
  sub_1B24A2390(*(v0 + 216), *(v0 + 208), type metadata accessor for AppTransaction);
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_1B249FE78;

  return sub_1B24ED2C8();
}

uint64_t sub_1B249FE78()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B249FF64()
{
  v14 = v0;
  sub_1B2498F24(v0[23], v0[25], &unk_1EB7D21F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[25];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B243E88C(v0[25], &unk_1EB7D21F0);
LABEL_4:
    sub_1B24A22C0(v0[27]);

    OUTLINED_FUNCTION_7_2();

    return v4();
  }

  v3 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1520) + 48));
  sub_1B24A22C0(v2);
  if (v3)
  {
    goto LABEL_4;
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v6 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v6, qword_1ED69A108);
  v7 = sub_1B256E0AC();
  v8 = sub_1B256D5CC();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1B2519814(0, 0xE000000000000000, &v13);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1B2519814(0xD00000000000002DLL, 0x80000001B258FB70, &v13);
    _os_log_impl(&dword_1B23EF000, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B24A01C0()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1B24A024C;
  v1 = swift_continuation_init();
  sub_1B24EFF74(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1B24A024C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24A031C()
{
  sub_1B24A22C0(*(v0 + 216));

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t static AppTransaction.refresh()()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1B24A25B4;

  return sub_1B249F81C(v2, 1);
}

uint64_t sub_1B24A043C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultBroker];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v25 = sub_1B24A2370;
  v26 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1B244BD28;
  v24 = &block_descriptor_11;
  v9 = _Block_copy(&aBlock);

  v10 = [v7 storeKitServiceWithErrorHandler_];
  _Block_release(v9);

  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v25 = sub_1B24A23EC;
    v26 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1B24BAFF8;
    v24 = &block_descriptor_29;
    v12 = _Block_copy(&aBlock);

    [v10 appTransactionForClient:0 ignoreCache:a2 & 1 reply:v12];
    _Block_release(v12);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_1ED69A108);
    sub_1B24A2390(v14, v6, type metadata accessor for SKLogger);
    v15 = sub_1B256D5CC();
    v16 = sub_1B256D5EC();
    (*(*(v16 - 8) + 8))(v6, v16);
    v17 = sub_1B256E0AC();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B23EF000, v15, v17, "Failed to get XPC remote object to get app transaction", v18, 2u);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B24A2278(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
    v19 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v20 = v19;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B24A0800(void *a1)
{
  v2 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v2, qword_1ED69A108);
  sub_1B24A2390(v5, v4, type metadata accessor for SKLogger);
  v6 = a1;
  v7 = sub_1B256D5CC();
  v8 = sub_1B256D5EC();
  (*(*(v8 - 8) + 8))(v4, v8);
  v9 = sub_1B256E0AC();

  if (os_log_type_enabled(v7, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = sub_1B256D0CC();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_1B23EF000, v7, v9, "Failed in XPC service to get app transaction: %{public}@", v10, 0xCu);
    sub_1B243E88C(v11, &qword_1EB7D18E0);
    MEMORY[0x1B274BFF0](v11, -1, -1);
    MEMORY[0x1B274BFF0](v10, -1, -1);
  }

  v13 = parseError(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v14 = v13;
  return swift_continuation_throwingResumeWithError();
}

void sub_1B24A0A30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = a3;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v8, qword_1ED69A108);
    sub_1B24A2390(v12, v10, type metadata accessor for SKLogger);
    v13 = a3;
    v14 = sub_1B256D5CC();
    v15 = sub_1B256D5EC();
    (*(*(v15 - 8) + 8))(v10, v15);
    v16 = sub_1B256E0AC();

    if (os_log_type_enabled(v14, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      v19 = sub_1B256D0CC();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_1B23EF000, v14, v16, "Error getting app transaction: %{public}@", v17, 0xCu);
      sub_1B243E88C(v18, &qword_1EB7D18E0);
      MEMORY[0x1B274BFF0](v18, -1, -1);
      MEMORY[0x1B274BFF0](v17, -1, -1);
    }

    v20 = parseError(_:)(a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v21 = v20;
    swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    v22 = *(*(a4 + 64) + 40);
    *v22 = a1;
    v22[1] = a2;

    swift_continuation_throwingResume();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_1ED69A108);
    v23 = sub_1B256E0AC();
    v24 = sub_1B256D5CC();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_1B2519814(0, 0xE000000000000000, &v30);
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1B2519814(0xD000000000000024, 0x80000001B258FBC0, &v30);
      _os_log_impl(&dword_1B23EF000, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v26, -1, -1);
      MEMORY[0x1B274BFF0](v25, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B24A2278(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
    v27 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v28 = v27;

    swift_continuation_throwingResumeWithError();
  }
}

void sub_1B24A0ECC(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v6 = sub_1B256D3CC();
  v87 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v85 = &v80 - v9;
  v10 = sub_1B256D36C();
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v83 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v80 - v13;
  v14 = sub_1B256D75C();
  v89 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v97 = 46;
  *(&v97 + 1) = 0xE100000000000000;
  v95 = &v97;

  sub_1B24C3E54(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B248C788, v94, a1, a2, v17, v18, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, a1, v91, v92, v93, v94[0], v94[1], v95, v96, v97, *(&v97 + 1), v98, v99);
  v20 = v19;
  if (*(v19 + 16) == 3)
  {
    v81 = v6;
    v82 = v3;
    v88 = a2;
    v21 = 0;
    v22 = (v19 + 56);
    v23 = 1;
    while (v21 != 3)
    {
      if (v21 >= v20[2])
      {
        __break(1u);
LABEL_23:
        *(v16 + 12) = v19;
        v16[104] = v14 != 0;
        sub_1B24B2E84();
        if (v14)
        {

          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          LODWORD(v90) = 0;
LABEL_26:
          sub_1B24472E0(*(v93 + 3), *(v93 + 4), v93[40]);

          if (v61)
          {

            if (!v62)
            {
LABEL_29:
              v68 = v93;
              if (v63)
              {
                v70 = type metadata accessor for AppTransaction();
                (*(v91 + 1))(v68 + *(v70 + 52), v92);
                if (!v64)
                {
                  goto LABEL_31;
                }
              }

              else if (!v64)
              {
LABEL_31:
                if (v90)
                {
                  v69 = type metadata accessor for AppTransaction();
                  (*(v91 + 1))(v68 + *(v69 + 72), v92);
                }

                return;
              }

              v71 = type metadata accessor for AppTransaction();

              sub_1B243E88C(v68 + *(v71 + 60), &qword_1EB7D0088);
              goto LABEL_31;
            }
          }

          else if (!v62)
          {
            goto LABEL_29;
          }

          goto LABEL_29;
        }

        *(v16 + 14) = v59;
        *(v16 + 15) = v60;
        sub_1B24B39C0();
        v90 = a2;
        v65 = v86;
        sub_1B256D31C();
        v14 = type metadata accessor for AppTransaction();
        a1 = *(v91 + 4);
        a1(&v16[v14[13]], v65, v92);
        sub_1B24B2E84();
        *(v16 + 18) = v66;
        *(v16 + 19) = v67;
        sub_1B24B2E84();
        v72 = &v16[v14[14]];
        *v72 = v73;
        *(v72 + 1) = v74;
        sub_1B24B39C0();
        v21 = 0;
LABEL_39:
        sub_1B256D31C();
        v75 = v85;
        __swift_storeEnumTagSinglePayload(v85, 0, 1, v92);
        sub_1B249C280(v75, &v16[v14[15]]);
        sub_1B24B31F4();
        if (v21)
        {

          LODWORD(v90) = 0;
          v61 = 1;
          v62 = 1;
          v63 = 1;
          v64 = 1;
          goto LABEL_26;
        }

        *&v16[v14[16]] = v97;
        v16 = v84;
        sub_1B24B35B4();
LABEL_43:
        (*(v87 + 32))(&v93[v14[17]], v16, v81);
        sub_1B24B39C0();
        v76 = v83;
        sub_1B256D31C();
        a1(&v93[v14[18]], v76, v92);
        sub_1B24B2E84();
        v77 = v93;
        *(v93 + 16) = v78;
        *(v77 + 136) = v79;
        return;
      }

      if ((v23 & 1) != 0 && (v24 = *(v22 - 1), a2 = *v22, v26 = *(v22 - 3), v25 = *(v22 - 2), , MEMORY[0x1B2749CC0](v26, v25, v24, a2), sub_1B246314C(), a1 = v27, , v28 = sub_1B256D1AC(), v30 = v29, , v19 = , v30 >> 60 != 15))
      {
        v19 = sub_1B2443AD0(v28, v30);
        v23 = 1;
      }

      else
      {
        v23 = 0;
      }

      v22 += 4;
      ++v21;
    }

    if ((v23 & 1) == 0)
    {

      sub_1B24A231C();
      swift_allocError();
      *v43 = 7;
      goto LABEL_17;
    }

    v32 = v88;
    if (v20[2] < 3uLL)
    {
      __break(1u);
      goto LABEL_39;
    }

    v33 = v20[12];
    v34 = v20[13];
    v35 = v20[14];
    v36 = v20[15];

    MEMORY[0x1B2749CC0](v33, v34, v35, v36);
    a1 = v37;

    sub_1B246314C();

    v38 = sub_1B256D1AC();
    if (v39 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v40 = v38;
      v41 = v39;

      *&v97 = v40;
      *(&v97 + 1) = v41;
      sub_1B246352C();
      v42 = v82;
      sub_1B256D74C();
      if (v42)
      {

        return;
      }

      (*(v89 + 8))(v16, v14);
      v44 = v93;
      *v93 = v90;
      *(v44 + 8) = v32;
      *(v44 + 16) = v20;
      sub_1B256CE7C();
      swift_allocObject();

      sub_1B256CE6C();
      if (v20[2] < 2uLL)
      {
        __break(1u);
        goto LABEL_43;
      }

      v45 = v20[8];
      v46 = v20[9];
      v47 = v20[10];
      v48 = v20[11];

      MEMORY[0x1B2749CC0](v45, v46, v47, v48);

      sub_1B246314C();

      v49 = sub_1B256D1AC();
      if (v50 >> 60 != 15)
      {
        v51 = v49;
        v52 = v50;

        sub_1B244A000();
        sub_1B256CE5C();
        sub_1B2443AD0(v51, v52);

        a2 = *(&v97 + 1);
        v53 = v98;
        v16 = v93;
        *(v93 + 24) = v97;
        v16[40] = v53;
        sub_1B24B2B78();
        *(v16 + 6) = v54;
        v16[56] = 0;
        sub_1B24B2E84();
        *(v16 + 8) = v55;
        *(v16 + 9) = v56;
        v89 = 0;
        sub_1B24B2E84();
        *(v16 + 10) = v57;
        *(v16 + 11) = v58;
        sub_1B24B2B78();
        v14 = 0;
        goto LABEL_23;
      }
    }

    __break(1u);
    return;
  }

  sub_1B24A231C();
  swift_allocError();
  *v31 = 0;
LABEL_17:
  swift_willThrow();
}

void static AppTransaction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 16) + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  MEMORY[0x1B2749CC0](v3);
  OUTLINED_FUNCTION_8_15();

  OUTLINED_FUNCTION_22_1();
  sub_1B246314C();

  sub_1B256D1AC();
  OUTLINED_FUNCTION_35_1();
  if (!v5 & v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_15();

  v6 = *(a2 + 16);
  if (v6[2] < 2uLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6[8];
  v8 = v6[9];
  v9 = v6[10];
  v10 = v6[11];

  MEMORY[0x1B2749CC0](v7, v8, v9, v10);

  sub_1B246314C();

  sub_1B256D1AC();
  OUTLINED_FUNCTION_35_1();
  if (!(!v5 & v4))
  {
    v13 = v11;
    v14 = v12;

    v15 = OUTLINED_FUNCTION_22_1();
    MEMORY[0x1B2749490](v15);
    sub_1B2443AD0(v13, v14);
    v16 = OUTLINED_FUNCTION_22_1();
    sub_1B2443AD0(v16, v17);
    return;
  }

LABEL_9:
  __break(1u);
}

void AppTransaction.hash(into:)()
{
  OUTLINED_FUNCTION_5_15();
  if (!v0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v1 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x1B2749CC0](v1);

  OUTLINED_FUNCTION_18_1();
  sub_1B246314C();

  sub_1B256D1AC();
  OUTLINED_FUNCTION_35_1();
  if (!v4 & v0)
  {
    goto LABEL_7;
  }

  v5 = v2;
  v6 = v3;

  sub_1B256D23C();

  sub_1B2443AD0(v5, v6);
}

void AppTransaction.hashValue.getter()
{
  sub_1B256ED3C();
  OUTLINED_FUNCTION_5_15();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_1();
    MEMORY[0x1B2749CC0](v1);
    OUTLINED_FUNCTION_8_15();

    OUTLINED_FUNCTION_22_1();
    sub_1B246314C();

    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!(!v2 & v0))
    {

      sub_1B256D23C();
      v3 = OUTLINED_FUNCTION_18_1();
      sub_1B2443AD0(v3, v4);
      sub_1B256ED7C();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B24A1EF0()
{
  sub_1B256ED3C();
  v1 = *(v0 + 16);
  v2 = sub_1B24419E0();
  sub_1B246350C(1uLL, v2 & 1, v1);
  if (v2)
  {
    v3 = v1[8];
    v4 = v1[9];
    v6 = v1[10];
    v5 = v1[11];

    MEMORY[0x1B2749CC0](v3, v4, v6, v5);

    sub_1B246314C();

    result = sub_1B256D1AC();
    if (v8 >> 60 != 15)
    {
      v9 = result;
      v10 = v8;

      sub_1B256D23C();
      sub_1B2443AD0(v9, v10);
      return sub_1B256ED7C();
    }
  }

  else
  {
    result = sub_1B2512E34(1uLL, v1);
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AppTransaction.debugDescription.getter()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1B24472B8(v2, v3, v4);
  BackingValue.debugDescription.getter();
  OUTLINED_FUNCTION_8_15();
  sub_1B24472E0(v2, v3, v4);
  return OUTLINED_FUNCTION_22_1();
}

uint64_t type metadata accessor for AppTransaction()
{
  result = qword_1EB7D1510;
  if (!qword_1EB7D1510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B24A2110()
{
  sub_1B24A2228();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1B256D36C();
    if (v3 <= 0x3F)
    {
      sub_1B249BE8C();
      if (v5 > 0x3F)
      {
        return v4;
      }

      v4 = sub_1B256D3CC();
      if (v6 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1B24A2228()
{
  if (!qword_1ED699E30)
  {
    v0 = sub_1B256E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED699E30);
    }
  }
}

uint64_t sub_1B24A2278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B24A22C0(uint64_t a1)
{
  v2 = type metadata accessor for AppTransaction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B24A231C()
{
  result = qword_1EB7D1528;
  if (!qword_1EB7D1528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1528);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B24A2390(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AppTransaction.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppTransaction.Key(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B24A255C()
{
  result = qword_1EB7D1530;
  if (!qword_1EB7D1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1530);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return type metadata accessor for AppTransaction();
}

uint64_t VerificationResult.unsafePayloadValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  (*(v8 + 16))(v6 - v5);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v7);
}

uint64_t VerificationResult.payloadValue.getter()
{
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13();
  v3 = v2 - v1;
  (*(v4 + 16))(v2 - v1);
  OUTLINED_FUNCTION_22_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = OUTLINED_FUNCTION_6_15();
  }

  else
  {
    type metadata accessor for VerificationResult.VerificationError();
    OUTLINED_FUNCTION_5_16();
    v8 = *(v3 + *(swift_getTupleTypeMetadata2() + 48));
    swift_getWitnessTable();
    swift_allocError();
    *v9 = v8;
    swift_willThrow();
    v5 = OUTLINED_FUNCTION_22_1();
  }

  return v6(v5);
}

uint64_t VerificationResult.VerificationError.hashValue.getter()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

uint64_t sub_1B24A291C()
{
  sub_1B256ED3C();
  VerificationResult.VerificationError.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t static VerificationResult<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v45 = a1;
  v46 = a2;
  OUTLINED_FUNCTION_1_9();
  v47 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_5();
  v41 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v40 - v11;
  v12 = type metadata accessor for VerificationResult();
  OUTLINED_FUNCTION_1_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_0_5();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_5_16();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_9();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - v22;
  v24 = &v40 + *(v21 + 48) - v22;
  v44 = v14;
  v25 = *(v14 + 16);
  v25(&v40 - v22, v45, v12);
  v25(v24, v46, v12);
  OUTLINED_FUNCTION_6_15();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25(v18, v23, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v47;
      v27 = v41;
      (*(v47 + 32))(v41, v24, a3);
      v28 = sub_1B256D96C();
      v29 = *(v26 + 8);
      v29(v27, a3);
      v29(v18, a3);
      goto LABEL_10;
    }

    v4 = v18;
LABEL_8:
    (*(v47 + 8))(v4, a3);
    v28 = 0;
    goto LABEL_10;
  }

  v25(v4, v23, v12);
  type metadata accessor for VerificationResult.VerificationError();
  OUTLINED_FUNCTION_5_16();
  v30 = *(swift_getTupleTypeMetadata2() + 48);
  v31 = v4[v30];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_8;
  }

  v32 = v24[v30];
  v33 = v47;
  v34 = v42;
  (*(v47 + 32))(v42, v24, a3);
  v35 = sub_1B256D96C();
  v36 = *(v33 + 8);
  v36(v34, a3);
  v36(v4, a3);
  v28 = (v35 & 1) != 0 && v31 == v32;
LABEL_10:
  v37 = OUTLINED_FUNCTION_6_15();
  v38(v37);
  return v28 & 1;
}

uint64_t VerificationResult<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v7, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = OUTLINED_FUNCTION_4_16();
    v9(v8);
    MEMORY[0x1B274AFC0](1);
    OUTLINED_FUNCTION_9_16();
  }

  else
  {
    type metadata accessor for VerificationResult.VerificationError();
    OUTLINED_FUNCTION_5_16();
    v10 = v5[*(swift_getTupleTypeMetadata2() + 48)];
    v11 = OUTLINED_FUNCTION_4_16();
    v12(v11);
    MEMORY[0x1B274AFC0](0);
    OUTLINED_FUNCTION_9_16();
    MEMORY[0x1B274AFC0](v10);
  }

  v13 = OUTLINED_FUNCTION_6_15();
  return v14(v13);
}

uint64_t VerificationResult<A>.hashValue.getter(uint64_t a1)
{
  sub_1B256ED3C();
  VerificationResult<A>.hash(into:)(v3, a1);
  return sub_1B256ED7C();
}

uint64_t sub_1B24A2F9C(uint64_t a1, uint64_t a2)
{
  sub_1B256ED3C();
  VerificationResult<A>.hash(into:)(v4, a2);
  return sub_1B256ED7C();
}

uint64_t VerificationResult<A>.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v82 = *MEMORY[0x1E69E9840];
  v5 = sub_1B256D9EC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_13();
  v70 = v7 - v6;
  OUTLINED_FUNCTION_1_9();
  v73 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v74 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1538);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v69 - v13;
  v71 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1540);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v69 - v19;
  v21 = *(a1 + 16);
  OUTLINED_FUNCTION_1_9();
  v75 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_0_5();
  v26 = v24 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v69 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = OUTLINED_FUNCTION_8_16();
  v32 = type metadata accessor for Transaction(v31);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v36 = v35 - v34;
  VerificationResult.unsafePayloadValue.getter(a1, v3);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v32);
    sub_1B24A36EC(v20, v36, type metadata accessor for Transaction);
    v37 = sub_1B25318E0(*v36, *(v36 + 8), *(v36 + 16));
    v38 = v36;
    v39 = type metadata accessor for Transaction;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v32);
    sub_1B243E88C(v20, &qword_1EB7D1540);
    VerificationResult.unsafePayloadValue.getter(a1, v30);
    v40 = v71;
    v41 = v72;
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_storeEnumTagSinglePayload(v41, 1, 1, v40);
      sub_1B243E88C(v41, &qword_1EB7D1538);
      VerificationResult.unsafePayloadValue.getter(a1, v26);
      sub_1B256EB6C();
      (*(v75 + 8))(v26, v21);
      return OUTLINED_FUNCTION_22_1();
    }

    __swift_storeEnumTagSinglePayload(v41, 0, 1, v40);
    sub_1B24A36EC(v41, v17, type metadata accessor for Product.SubscriptionInfo.RenewalInfo);
    v37 = sub_1B25318E0(*v17, *(v17 + 8), *(v17 + 16));
    v38 = v17;
    v39 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo;
  }

  sub_1B24A3748(v38, v39);
  v42 = v73;
  v43 = v74;
  (*(v73 + 16))(v74, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = v75;
  if (EnumCaseMultiPayload == 1)
  {
    v45 = v42;
    v46 = a1;
  }

  else
  {
    v46 = v21;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v47 = 0x6465696669726576;
  }

  else
  {
    v47 = 0x6966697265766E75;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v48 = 0xE800000000000000;
  }

  else
  {
    v48 = 0xEA00000000006465;
  }

  (*(v45 + 8))(v43, v46);
  v49 = 0xE000000000000000;
  v76 = 0;
  v77 = 0xE000000000000000;
  if (v37[2] && (v50 = sub_1B2455488(), (v51 & 1) != 0) && (v52 = v37[7] + 24 * v50, !*(v52 + 16)))
  {
    v53 = *v52;
    v49 = *(v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  MEMORY[0x1B2749D50](v53, v49);

  MEMORY[0x1B2749D50](10272, 0xE200000000000000);
  MEMORY[0x1B2749D50](v47, v48);

  MEMORY[0x1B2749D50](41, 0xE100000000000000);
  v54 = v76;
  v55 = v77;
  swift_isUniquelyReferenced_nonNull_native();
  v76 = v37;
  sub_1B2449EC4(v54, v55, 0, 0x727574616E676973, 0xE900000000000065);
  v56 = v76;
  v57 = objc_opt_self();
  v79 = v56;
  v80 = 0;
  v81 = 5;
  BackingValue.foundation.getter(&v76);
  __swift_project_boxed_opaque_existential_1(&v76, v78);
  v58 = sub_1B256EB3C();
  __swift_destroy_boxed_opaque_existential_1(&v76);
  v76 = 0;
  v59 = [v57 dataWithJSONObject:v58 options:3 error:{&v76, v69, v70}];
  swift_unknownObjectRelease();
  v60 = v76;
  if (!v59)
  {
    v66 = v60;
    v67 = sub_1B256D0DC();

    swift_willThrow();
    goto LABEL_22;
  }

  v61 = sub_1B256D22C();
  v63 = v62;

  sub_1B256D9DC();
  sub_1B256D9CC();
  v65 = v64;
  sub_1B2443AE4(v61, v63);
  if (!v65)
  {
LABEL_22:
    sub_1B256D89C();

    return OUTLINED_FUNCTION_22_1();
  }

  return OUTLINED_FUNCTION_22_1();
}

uint64_t sub_1B24A36EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t sub_1B24A3748(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B24A3804()
{
  type metadata accessor for VerificationResult.VerificationError();
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B24A389C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 >= v4 + 1)
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v10 < 2)
    {
LABEL_23:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_23;
  }

LABEL_15:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 255;
}

void sub_1B24A39C0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 < v5 + 1)
  {
    ++v5;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1B24A3B84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B24A3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B244FC90;

  return v9(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_1B256D8FC();
}

uint64_t sub_1B24A3E1C()
{
  type metadata accessor for RuntimeIssueManager();
  v0 = swift_allocObject();
  result = sub_1B24A3F5C();
  qword_1EB7EDFB0 = v0;
  return result;
}

void sub_1B24A3E58()
{
  v1 = [objc_opt_self() defaultBroker];
  v2 = [v1 hasTransactionListener];

  if ((v2 & 1) == 0)
  {
    v3 = sub_1B256E0BC();
    v4 = *(v0 + 112);
    v5 = MEMORY[0x1E69E7CC0];

    MEMORY[0x1EEE6E7F0](v3, &dword_1B23EF000, v4, "Making a purchase without listening for transaction updates risks missing successful purchases. Create a Task to iterate Transaction.updates at launch.", 151, 2, v5);
  }
}

uint64_t sub_1B24A3F00()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B24A3F5C()
{
  swift_defaultActor_initialize();
  sub_1B24A3FC8();
  *(v0 + 112) = sub_1B256E2CC();
  return v0;
}

unint64_t sub_1B24A3FC8()
{
  result = qword_1EB7D1548;
  if (!qword_1EB7D1548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7D1548);
  }

  return result;
}

uint64_t type metadata accessor for ProductRequest()
{
  result = qword_1EB7CD758;
  if (!qword_1EB7CD758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B24A4080()
{
  sub_1B2441224();
  if (v0 <= 0x3F)
  {
    sub_1B24A41E8(319, &qword_1EB7CD5C0, sub_1B24A4194);
    if (v1 <= 0x3F)
    {
      sub_1B24A41E8(319, &qword_1EB7CD5B0, sub_1B24A4248);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B24A4194()
{
  result = qword_1EB7CD828;
  if (!qword_1EB7CD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD828);
  }

  return result;
}

void sub_1B24A41E8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1B256E00C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B24A4248()
{
  result = qword_1EB7CD810;
  if (!qword_1EB7CD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD810);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1B24A42FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B24A433C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B24A439C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C7561666544736FLL && a2 == 0xE900000000000074;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684099177 && a2 == 0xE400000000000000;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E6F685069 && a2 == 0xE600000000000000;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 6513005 && a2 == 0xE300000000000000;
        if (v8 || (sub_1B256EB5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7974696C616572 && a2 == 0xE700000000000000;
          if (v9 || (sub_1B256EB5C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 30324 && a2 == 0xE200000000000000;
            if (v10 || (sub_1B256EB5C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6863746177 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1B256EB5C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B24A45C4(char a1)
{
  result = 0x6C7561666544736FLL;
  switch(a1)
  {
    case 1:
      result = 1684099177;
      break;
    case 2:
      result = 0x656E6F685069;
      break;
    case 3:
      result = 6513005;
      break;
    case 4:
      result = 0x7974696C616572;
      break;
    case 5:
      result = 30324;
      break;
    case 6:
      result = 0x6863746177;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1B24A4670()
{
  OUTLINED_FUNCTION_25_7();
  v56 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1648);
  OUTLINED_FUNCTION_1_1();
  v54 = v5;
  v55 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_6();
  v53 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1650);
  OUTLINED_FUNCTION_1_1();
  v51 = v9;
  v52 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_6();
  v50 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1658);
  OUTLINED_FUNCTION_1_1();
  v48 = v13;
  v49 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_6();
  v47 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1660);
  OUTLINED_FUNCTION_1_1();
  v45 = v17;
  v46 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_19_6();
  v44 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1668);
  OUTLINED_FUNCTION_1_1();
  v42 = v21;
  v43 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_19_6();
  v41 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1670);
  OUTLINED_FUNCTION_1_1();
  v39 = v25;
  v40 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v37 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1678);
  OUTLINED_FUNCTION_1_1();
  v38 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_19_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1680);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_38_4(v3, v3[3]);
  sub_1B24A8F64();
  sub_1B256EDFC();
  switch(v56)
  {
    case 1:
      sub_1B24A9194();
      OUTLINED_FUNCTION_5_17();
      v34 = v39;
      v33 = v40;
      goto LABEL_9;
    case 2:
      sub_1B24A9140();
      v28 = v41;
      OUTLINED_FUNCTION_5_17();
      v34 = v42;
      v33 = v43;
      goto LABEL_9;
    case 3:
      sub_1B24A90EC();
      v28 = v44;
      OUTLINED_FUNCTION_5_17();
      v34 = v45;
      v33 = v46;
      goto LABEL_9;
    case 4:
      sub_1B24A9098();
      v28 = v47;
      OUTLINED_FUNCTION_5_17();
      v34 = v48;
      v33 = v49;
      goto LABEL_9;
    case 5:
      sub_1B24A9044();
      v28 = v50;
      OUTLINED_FUNCTION_5_17();
      v34 = v51;
      v33 = v52;
      goto LABEL_9;
    case 6:
      sub_1B24A8FF0();
      v28 = v53;
      OUTLINED_FUNCTION_5_17();
      v34 = v54;
      v33 = v55;
LABEL_9:
      (*(v34 + 8))(v28, v33);
      break;
    default:
      sub_1B24A91E8();
      OUTLINED_FUNCTION_13_0();
      (*(v38 + 8))(v0, v29);
      break;
  }

  v35 = OUTLINED_FUNCTION_47_2();
  v36(v35);
  OUTLINED_FUNCTION_24_6();
}

void sub_1B24A4BC4()
{
  OUTLINED_FUNCTION_25_7();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D15D8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_6();
  v64 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D15E0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D15E8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_6();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D15F0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D15F8);
  OUTLINED_FUNCTION_1_1();
  v61 = v11;
  v62 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_6();
  v63 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1600);
  OUTLINED_FUNCTION_1_1();
  v58 = v15;
  v59 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1608);
  OUTLINED_FUNCTION_1_1();
  v57 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31_5();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1610);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33_3();
  v22 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_38_4(v22, v23);
  sub_1B24A8F64();
  sub_1B256EDBC();
  if (!v1)
  {
    v56 = v2;
    v24 = v63;
    v25 = sub_1B256E9CC();
    sub_1B24A8FB8(v25, 0);
    v27 = v26;
    if (v29 != v28 >> 1)
    {
      OUTLINED_FUNCTION_16_14();
      OUTLINED_FUNCTION_48_2();
      if (v34 == v35)
      {
        __break(1u);
        return;
      }

      v55 = *(v33 + v31);
      sub_1B24AAB90(v31 + 1, v30, v27, v33, v31, v32);
      v37 = v36;
      v39 = v38;
      swift_unknownObjectRelease();
      if (v37 == v39 >> 1)
      {
        switch(v55)
        {
          case 1:
            sub_1B24A9194();
            v24 = v0;
            OUTLINED_FUNCTION_1_23();
            swift_unknownObjectRelease();
            v46 = v58;
            v45 = v59;
            goto LABEL_15;
          case 2:
            sub_1B24A9140();
            OUTLINED_FUNCTION_1_23();
            swift_unknownObjectRelease();
            v46 = v61;
            v45 = v62;
LABEL_15:
            (*(v46 + 8))(v24, v45);
            goto LABEL_20;
          case 3:
            sub_1B24A90EC();
            OUTLINED_FUNCTION_1_23();
            swift_unknownObjectRelease();
            v47 = OUTLINED_FUNCTION_40_4();
            v49 = v60;
            goto LABEL_19;
          case 4:
            sub_1B24A9098();
            OUTLINED_FUNCTION_1_23();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 5:
            sub_1B24A9044();
            sub_1B256E92C();
            swift_unknownObjectRelease();
            v53 = OUTLINED_FUNCTION_40_4();
            v54(v53);
            v50 = OUTLINED_FUNCTION_27_5();
            v52 = v20;
            break;
          case 6:
            sub_1B24A8FF0();
            OUTLINED_FUNCTION_1_23();
            swift_unknownObjectRelease();
LABEL_18:
            v47 = OUTLINED_FUNCTION_40_4();
LABEL_19:
            v48(v47, v49);
LABEL_20:
            v50 = OUTLINED_FUNCTION_27_5();
            v52 = v64;
            break;
          default:
            sub_1B24A91E8();
            OUTLINED_FUNCTION_10_11();
            sub_1B256E92C();
            swift_unknownObjectRelease();
            (*(v57 + 8))(v56, v17);
            v50 = OUTLINED_FUNCTION_27_5();
            v52 = v20;
            break;
        }

        v51(v50, v52);
        __swift_destroy_boxed_opaque_existential_1(v4);
        goto LABEL_10;
      }
    }

    v40 = sub_1B256E58C();
    OUTLINED_FUNCTION_5();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v42 = &type metadata for ProductRequest.Platform;
    sub_1B256E93C();
    OUTLINED_FUNCTION_14_11();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = OUTLINED_FUNCTION_28_5();
    v44(v43, v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_10:
  OUTLINED_FUNCTION_24_6();
}

uint64_t sub_1B24A53F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001B258FD50 == a2;
  if (v3 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x654D79636167656CLL && a2 == 0xEE00495041616964;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x495041616964656DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B256EB5C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B24A5510(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0x654D79636167656CLL;
  }

  return 0x495041616964656DLL;
}

void sub_1B24A5578()
{
  OUTLINED_FUNCTION_25_7();
  v16 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16E0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16E8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16F0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16F8);
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_38_4(v3, v3[3]);
  sub_1B24A938C();
  sub_1B256EDFC();
  v12 = (v10 + 8);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1B24A9434();
      OUTLINED_FUNCTION_10_11();
      sub_1B256E9EC();
      v13 = OUTLINED_FUNCTION_40_4();
    }

    else
    {
      sub_1B24A93E0();
      OUTLINED_FUNCTION_10_11();
      sub_1B256E9EC();
      v13 = OUTLINED_FUNCTION_39_3();
    }
  }

  else
  {
    sub_1B24A9488();
    OUTLINED_FUNCTION_10_11();
    sub_1B256E9EC();
    v13 = OUTLINED_FUNCTION_28_5();
    v14 = v6;
  }

  v15(v13, v14);
  (*v12)(v0, v8);
  OUTLINED_FUNCTION_24_6();
}

void sub_1B24A5870()
{
  OUTLINED_FUNCTION_25_7();
  v2 = v1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16B8);
  OUTLINED_FUNCTION_1_1();
  v44 = v3;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_6();
  v42 = v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16C0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_15();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16C8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_11();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16D0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_38_4(v2, v2[3]);
  sub_1B24A938C();
  sub_1B256EDBC();
  if (!v0)
  {
    v11 = sub_1B256E9CC();
    sub_1B24A8FB8(v11, 0);
    v13 = v12;
    v15 = v9;
    if (v16 != v14 >> 1)
    {
      OUTLINED_FUNCTION_16_14();
      OUTLINED_FUNCTION_48_2();
      if (v21 == v22)
      {
        __break(1u);
        return;
      }

      v23 = v9;
      v24 = *(v20 + v18);
      sub_1B24AAB90(v18 + 1, v17, v13, v20, v18, v19);
      v26 = v25;
      v28 = v27;
      swift_unknownObjectRelease();
      if (v26 == v28 >> 1)
      {
        if (v24)
        {
          if (v24 == 1)
          {
            sub_1B24A9434();
            OUTLINED_FUNCTION_2_22();
            sub_1B256E92C();
            swift_unknownObjectRelease();
            v29 = OUTLINED_FUNCTION_39_3();
            v30(v29, v43);
          }

          else
          {
            sub_1B24A93E0();
            OUTLINED_FUNCTION_2_22();
            sub_1B256E92C();
            swift_unknownObjectRelease();
            (*(v44 + 8))(v42, v45);
          }

          v31 = OUTLINED_FUNCTION_4_13();
          v32(v31);
        }

        else
        {
          sub_1B24A9488();
          OUTLINED_FUNCTION_2_22();
          sub_1B256E92C();
          swift_unknownObjectRelease();
          v38 = OUTLINED_FUNCTION_39_3();
          v39(v38, v7);
          v40 = OUTLINED_FUNCTION_3_20();
          v41(v40, v23);
        }

        goto LABEL_12;
      }

      v15 = v23;
    }

    sub_1B256E58C();
    OUTLINED_FUNCTION_5();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v34 = &type metadata for ProductRequest.RequestKind;
    sub_1B256E93C();
    OUTLINED_FUNCTION_14_11();
    OUTLINED_FUNCTION_35_4();
    (*(v35 + 104))(v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v36 = OUTLINED_FUNCTION_3_20();
    v37(v36, v15);
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_24_6();
}

uint64_t sub_1B24A5DA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746375646F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B258FD70 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B256EB5C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B24A5E70(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x73746375646F7270;
  }
}

uint64_t sub_1B24A5EBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 7554121 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B256EB5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1B24A5F34()
{
  OUTLINED_FUNCTION_25_7();
  v16 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1720);
  OUTLINED_FUNCTION_1_1();
  v15 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1728);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_17();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1730);
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_38_4(v3, v3[3]);
  sub_1B24A94DC();
  sub_1B256EDFC();
  if (v16)
  {
    sub_1B24A9530();
    sub_1B256E9EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
    OUTLINED_FUNCTION_21_9(&qword_1EB7CD5E8);
    sub_1B256EA5C();
    v12 = OUTLINED_FUNCTION_28_5();
    v14 = v15;
  }

  else
  {
    sub_1B24A9584();
    sub_1B256E9EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
    OUTLINED_FUNCTION_21_9(&qword_1EB7CD5E8);
    sub_1B256EA5C();
    v12 = OUTLINED_FUNCTION_40_4();
    v14 = v6;
  }

  v13(v12, v14);
  (*(v10 + 8))(v0, v8);
  OUTLINED_FUNCTION_24_6();
}

void sub_1B24A6234()
{
  OUTLINED_FUNCTION_25_7();
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1700);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1708);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1710);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34_2();
  OUTLINED_FUNCTION_38_4(v2, v2[3]);
  sub_1B24A94DC();
  sub_1B256EDBC();
  if (!v0)
  {
    v35 = v2;
    v7 = sub_1B256E9CC();
    sub_1B24A8FB8(v7, 0);
    v9 = v8;
    if (v11 != v10 >> 1)
    {
      OUTLINED_FUNCTION_16_14();
      OUTLINED_FUNCTION_48_2();
      if (v16 == v17)
      {
        __break(1u);
        return;
      }

      v18 = *(v15 + v13);
      sub_1B24AAB90(v13 + 1, v12, v9, v15, v13, v14);
      v20 = v19;
      v22 = v21;
      swift_unknownObjectRelease();
      if (v20 == v22 >> 1)
      {
        if (v18)
        {
          sub_1B24A9530();
          OUTLINED_FUNCTION_50_2();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
          OUTLINED_FUNCTION_15_12(&qword_1EB7D0910);
          sub_1B256E9AC();
          swift_unknownObjectRelease();
          v28 = OUTLINED_FUNCTION_28_5();
          v29(v28, v34);
        }

        else
        {
          sub_1B24A9584();
          OUTLINED_FUNCTION_50_2();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
          OUTLINED_FUNCTION_15_12(&qword_1EB7D0910);
          sub_1B256E9AC();
          swift_unknownObjectRelease();
          v32 = OUTLINED_FUNCTION_47_2();
          v33(v32);
        }

        v30 = OUTLINED_FUNCTION_4_17();
        v31(v30);
        __swift_destroy_boxed_opaque_existential_1(v35);
        goto LABEL_10;
      }
    }

    sub_1B256E58C();
    OUTLINED_FUNCTION_5();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v24 = &type metadata for ProductRequest.IdentifierKind;
    sub_1B256E93C();
    OUTLINED_FUNCTION_14_11();
    OUTLINED_FUNCTION_35_4();
    (*(v25 + 104))(v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v26 = OUTLINED_FUNCTION_39_3();
    v27(v26, v5);
    v2 = v35;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
  OUTLINED_FUNCTION_24_6();
}

BOOL sub_1B24A676C()
{
  v0 = sub_1B256E91C();

  return v0 != 0;
}

uint64_t sub_1B24A67D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24A439C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24A6800(uint64_t a1)
{
  v2 = sub_1B24A8F64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A683C(uint64_t a1)
{
  v2 = sub_1B24A8F64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A6878(uint64_t a1)
{
  v2 = sub_1B24A9194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A68B4(uint64_t a1)
{
  v2 = sub_1B24A9194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A68F0(uint64_t a1)
{
  v2 = sub_1B24A9140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A692C(uint64_t a1)
{
  v2 = sub_1B24A9140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A6968(uint64_t a1)
{
  v2 = sub_1B24A90EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A69A4(uint64_t a1)
{
  v2 = sub_1B24A90EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A69E0(uint64_t a1)
{
  v2 = sub_1B24A91E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6A1C(uint64_t a1)
{
  v2 = sub_1B24A91E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A6A58(uint64_t a1)
{
  v2 = sub_1B24A9098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6A94(uint64_t a1)
{
  v2 = sub_1B24A9098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A6AD0(uint64_t a1)
{
  v2 = sub_1B24A9044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6B0C(uint64_t a1)
{
  v2 = sub_1B24A9044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A6B48(uint64_t a1)
{
  v2 = sub_1B24A8FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6B84(uint64_t a1)
{
  v2 = sub_1B24A8FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B24A6BC0(_BYTE *a1@<X8>)
{
  sub_1B24A4BC4();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1B24A6C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24A53F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24A6C38(uint64_t a1)
{
  v2 = sub_1B24A938C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6C74(uint64_t a1)
{
  v2 = sub_1B24A938C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A6CB0(uint64_t a1)
{
  v2 = sub_1B24A9488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6CEC(uint64_t a1)
{
  v2 = sub_1B24A9488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A6D28(uint64_t a1)
{
  v2 = sub_1B24A9434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6D64(uint64_t a1)
{
  v2 = sub_1B24A9434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A6DA0(uint64_t a1)
{
  v2 = sub_1B24A93E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6DDC(uint64_t a1)
{
  v2 = sub_1B24A93E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B24A6E18(_BYTE *a1@<X8>)
{
  sub_1B24A5870();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1B24A6E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24A5DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24A6E90(uint64_t a1)
{
  v2 = sub_1B24A94DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6ECC(uint64_t a1)
{
  v2 = sub_1B24A94DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A6F0C(uint64_t a1)
{
  v2 = sub_1B24A9584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6F48(uint64_t a1)
{
  v2 = sub_1B24A9584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A6F84(uint64_t a1)
{
  v2 = sub_1B24A9530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A6FC0(uint64_t a1)
{
  v2 = sub_1B24A9530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B24A6FFC(uint64_t a1@<X8>)
{
  sub_1B24A6234();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
  }
}

unint64_t sub_1B24A7054()
{
  result = qword_1EB7D1550;
  if (!qword_1EB7D1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1550);
  }

  return result;
}

unint64_t sub_1B24A70AC()
{
  result = qword_1EB7D1558;
  if (!qword_1EB7D1558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D1560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1558);
  }

  return result;
}

BOOL sub_1B24A711C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1B24A676C();
  *a1 = result;
  return result;
}

unint64_t sub_1B24A7150@<X0>(void *a1@<X8>)
{
  result = sub_1B24A67B4();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B24A723C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B258FD30 == a2;
  if (v3 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F6B6361426E6977 && a2 == 0xED00007372656666)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B256EB5C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B24A7314(char a1)
{
  if (a1)
  {
    return 0x4F6B6361426E6977;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_1B24A735C()
{
  OUTLINED_FUNCTION_25_7();
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16A0);
  OUTLINED_FUNCTION_1_1();
  v15 = v4;
  v16 = v3;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_15();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16A8);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D16B0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31_5();
  v10 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_38_4(v10, v11);
  sub_1B24A9290();
  sub_1B256EDFC();
  if (v17)
  {
    sub_1B24A92E4();
    OUTLINED_FUNCTION_13_0();
    (*(v15 + 8))(v0, v16);
  }

  else
  {
    sub_1B24A9338();
    OUTLINED_FUNCTION_13_0();
    (*(v7 + 8))(v1, v14);
  }

  v12 = OUTLINED_FUNCTION_47_2();
  v13(v12);
  OUTLINED_FUNCTION_24_6();
}

void sub_1B24A75A0()
{
  OUTLINED_FUNCTION_25_7();
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1688);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1690);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1698);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_38_4(v2, v2[3]);
  sub_1B24A9290();
  sub_1B256EDBC();
  if (!v0)
  {
    v36 = v2;
    v8 = sub_1B256E9CC();
    sub_1B24A8FB8(v8, 0);
    v10 = v9;
    if (v12 != v11 >> 1)
    {
      OUTLINED_FUNCTION_16_14();
      OUTLINED_FUNCTION_48_2();
      if (v17 == v18)
      {
        __break(1u);
        return;
      }

      v19 = *(v16 + v14);
      sub_1B24AAB90(v14 + 1, v13, v10, v16, v14, v15);
      v21 = v20;
      v23 = v22;
      swift_unknownObjectRelease();
      if (v21 == v23 >> 1)
      {
        if (v19)
        {
          sub_1B24A92E4();
          OUTLINED_FUNCTION_42_2();
          swift_unknownObjectRelease();
          v29 = OUTLINED_FUNCTION_28_5();
          v30(v29, v35);
        }

        else
        {
          sub_1B24A9338();
          OUTLINED_FUNCTION_42_2();
          swift_unknownObjectRelease();
          v33 = OUTLINED_FUNCTION_39_3();
          v34(v33, v4);
        }

        v31 = OUTLINED_FUNCTION_22_6();
        v32(v31);
        __swift_destroy_boxed_opaque_existential_1(v36);
        goto LABEL_10;
      }
    }

    sub_1B256E58C();
    OUTLINED_FUNCTION_5();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v25 = &type metadata for ProductRequest.IncludedResource;
    sub_1B256E93C();
    OUTLINED_FUNCTION_14_11();
    OUTLINED_FUNCTION_35_4();
    (*(v26 + 104))(v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v27 = OUTLINED_FUNCTION_3_20();
    v28(v27, v6);
    v2 = v36;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
  OUTLINED_FUNCTION_24_6();
}

uint64_t sub_1B24A79BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001B258FCF0 == a2;
        if (v8 || (sub_1B256EB5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001B258FD10 == a2;
          if (v9 || (sub_1B256EB5C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
            if (v10 || (sub_1B256EB5C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1B256EB5C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B24A7C04(char a1)
{
  result = 0x764F746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x79654B676F6CLL;
      break;
    case 6:
      result = 0x6D726F6674616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B24A7CE0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D15D0);
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_38_4(v8, v9);
  sub_1B24A89FC();
  sub_1B256EDFC();
  LOBYTE(v17) = 0;
  type metadata accessor for ClientOverride(0);
  OUTLINED_FUNCTION_12_14();
  sub_1B24A8D18(v10);
  OUTLINED_FUNCTION_23_5();
  sub_1B256EA0C();
  if (!v1)
  {
    v11 = type metadata accessor for ProductRequest();
    v12 = (v0 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v17 = v13;
    v18 = v12;
    v16 = 1;
    sub_1B24A8D5C();
    OUTLINED_FUNCTION_7_17();
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA5C();
    LOBYTE(v17) = *(v0 + v11[6]);
    v16 = 2;
    sub_1B24A8DB0();
    OUTLINED_FUNCTION_7_17();
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA5C();
    v17 = *(v0 + v11[7]);
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1598);
    sub_1B24A8E04(&unk_1EB7CD5B8);
    OUTLINED_FUNCTION_7_17();
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA5C();
    v17 = *(v0 + v11[8]);
    v16 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D15B0);
    sub_1B24A8B4C(&unk_1EB7CD5A8);
    OUTLINED_FUNCTION_7_17();
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA5C();
    LOBYTE(v17) = 5;
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA2C();
    LOBYTE(v17) = *(v0 + v11[10]);
    v16 = 6;
    sub_1B24A8F10();
    OUTLINED_FUNCTION_7_17();
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA5C();
  }

  return (*(v4 + 8))(v7, v2);
}

void sub_1B24A801C()
{
  OUTLINED_FUNCTION_25_7();
  v3 = v2;
  v22 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_17();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1580);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_15();
  v24 = type metadata accessor for ProductRequest();
  MEMORY[0x1EEE9AC00](v24);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[3];
  v25 = v3;
  OUTLINED_FUNCTION_38_4(v3, v11);
  sub_1B24A89FC();
  sub_1B256EDBC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v21[1] = v7;
    type metadata accessor for ClientOverride(0);
    LOBYTE(v26) = 0;
    OUTLINED_FUNCTION_12_14();
    sub_1B24A8D18(v12);
    sub_1B256E95C();
    sub_1B244394C(v1, v10);
    sub_1B24A8A50();
    OUTLINED_FUNCTION_17_9();
    v13 = v27;
    v14 = v24;
    v15 = &v10[*(v24 + 20)];
    *v15 = v26;
    v15[8] = v13;
    sub_1B24A8AA4();
    OUTLINED_FUNCTION_17_9();
    v10[v14[6]] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1598);
    sub_1B24A8E04(&unk_1EB7D15A0);
    OUTLINED_FUNCTION_30_5();
    *&v10[v14[7]] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D15B0);
    sub_1B24A8B4C(&unk_1EB7D15B8);
    OUTLINED_FUNCTION_30_5();
    *&v10[v14[8]] = v26;
    LOBYTE(v26) = 5;
    v16 = sub_1B256E97C();
    v17 = &v10[v14[9]];
    *v17 = v16;
    v17[1] = v18;
    sub_1B24A8C04();
    OUTLINED_FUNCTION_17_9();
    v19 = OUTLINED_FUNCTION_6_16();
    v20(v19);
    v10[v14[10]] = v26;
    sub_1B24A8C58(v10, v22);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1B24A8CBC(v10);
  }

  OUTLINED_FUNCTION_24_6();
}

uint64_t sub_1B24A8554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24A723C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24A857C(uint64_t a1)
{
  v2 = sub_1B24A9290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A85B8(uint64_t a1)
{
  v2 = sub_1B24A9290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A85F4(uint64_t a1)
{
  v2 = sub_1B24A9338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A8630(uint64_t a1)
{
  v2 = sub_1B24A9338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24A866C(uint64_t a1)
{
  v2 = sub_1B24A92E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A86A8(uint64_t a1)
{
  v2 = sub_1B24A92E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B24A86E4(_BYTE *a1@<X8>)
{
  sub_1B24A75A0();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

unint64_t sub_1B24A8744()
{
  result = qword_1EB7D1568;
  if (!qword_1EB7D1568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1568);
  }

  return result;
}

uint64_t sub_1B24A87A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24A79BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24A87C8(uint64_t a1)
{
  v2 = sub_1B24A89FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24A8804(uint64_t a1)
{
  v2 = sub_1B24A89FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B24A8870(uint64_t a1)
{
  *(a1 + 16) = sub_1B24A8D18(&unk_1EB7D1570);
  result = sub_1B24A8D18(&unk_1EB7CD768);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1B24A88F4(uint64_t a1)
{
  result = sub_1B24A8D18(&unk_1EB7D1578);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B24A8950()
{
  result = qword_1EB7CD808;
  if (!qword_1EB7CD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD808);
  }

  return result;
}

unint64_t sub_1B24A89A8()
{
  result = qword_1EB7CD820;
  if (!qword_1EB7CD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD820);
  }

  return result;
}

unint64_t sub_1B24A89FC()
{
  result = qword_1EB7CD8D0;
  if (!qword_1EB7CD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8D0);
  }

  return result;
}

unint64_t sub_1B24A8A50()
{
  result = qword_1EB7D1588;
  if (!qword_1EB7D1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1588);
  }

  return result;
}

unint64_t sub_1B24A8AA4()
{
  result = qword_1EB7D1590;
  if (!qword_1EB7D1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1590);
  }

  return result;
}

unint64_t sub_1B24A8AF8()
{
  result = qword_1EB7D15A8;
  if (!qword_1EB7D15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D15A8);
  }

  return result;
}

unint64_t sub_1B24A8B4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_49_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D15B0);
    v4();
    result = OUTLINED_FUNCTION_51_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B24A8BB0()
{
  result = qword_1EB7D15C0;
  if (!qword_1EB7D15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D15C0);
  }

  return result;
}

unint64_t sub_1B24A8C04()
{
  result = qword_1EB7D15C8;
  if (!qword_1EB7D15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D15C8);
  }

  return result;
}

uint64_t sub_1B24A8C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B24A8CBC(uint64_t a1)
{
  v2 = type metadata accessor for ProductRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B24A8D18(uint64_t a1)
{
  result = OUTLINED_FUNCTION_49_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B24A8D5C()
{
  result = qword_1EB7CD878;
  if (!qword_1EB7CD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD878);
  }

  return result;
}

unint64_t sub_1B24A8DB0()
{
  result = qword_1EB7CD8D8;
  if (!qword_1EB7CD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8D8);
  }

  return result;
}

unint64_t sub_1B24A8E04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_49_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D1598);
    v4();
    result = OUTLINED_FUNCTION_51_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B24A8E68()
{
  result = qword_1EB7CD830;
  if (!qword_1EB7CD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD830);
  }

  return result;
}

unint64_t sub_1B24A8EBC()
{
  result = qword_1EB7CD818;
  if (!qword_1EB7CD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD818);
  }

  return result;
}

unint64_t sub_1B24A8F10()
{
  result = qword_1EB7CD770;
  if (!qword_1EB7CD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD770);
  }

  return result;
}

unint64_t sub_1B24A8F64()
{
  result = qword_1EB7CD800;
  if (!qword_1EB7CD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD800);
  }

  return result;
}

void sub_1B24A8FB8(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_24();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1B24A8FF0()
{
  result = qword_1EB7D1618;
  if (!qword_1EB7D1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1618);
  }

  return result;
}

unint64_t sub_1B24A9044()
{
  result = qword_1EB7D1620;
  if (!qword_1EB7D1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1620);
  }

  return result;
}

unint64_t sub_1B24A9098()
{
  result = qword_1EB7D1628;
  if (!qword_1EB7D1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1628);
  }

  return result;
}

unint64_t sub_1B24A90EC()
{
  result = qword_1EB7D1630;
  if (!qword_1EB7D1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1630);
  }

  return result;
}

unint64_t sub_1B24A9140()
{
  result = qword_1EB7D1638;
  if (!qword_1EB7D1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1638);
  }

  return result;
}

unint64_t sub_1B24A9194()
{
  result = qword_1EB7D1640;
  if (!qword_1EB7D1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1640);
  }

  return result;
}

unint64_t sub_1B24A91E8()
{
  result = qword_1EB7CD788;
  if (!qword_1EB7CD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD788);
  }

  return result;
}

unint64_t sub_1B24A923C()
{
  result = qword_1EB7CD450;
  if (!qword_1EB7CD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD450);
  }

  return result;
}

unint64_t sub_1B24A9290()
{
  result = qword_1EB7CD870;
  if (!qword_1EB7CD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD870);
  }

  return result;
}

unint64_t sub_1B24A92E4()
{
  result = qword_1EB7CD458;
  if (!qword_1EB7CD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD458);
  }

  return result;
}

unint64_t sub_1B24A9338()
{
  result = qword_1EB7CD848;
  if (!qword_1EB7CD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD848);
  }

  return result;
}

unint64_t sub_1B24A938C()
{
  result = qword_1EB7CD920;
  if (!qword_1EB7CD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD920);
  }

  return result;
}

unint64_t sub_1B24A93E0()
{
  result = qword_1EB7CD460;
  if (!qword_1EB7CD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD460);
  }

  return result;
}

unint64_t sub_1B24A9434()
{
  result = qword_1EB7CD518;
  if (!qword_1EB7CD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD518);
  }

  return result;
}

unint64_t sub_1B24A9488()
{
  result = qword_1EB7D16D8;
  if (!qword_1EB7D16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D16D8);
  }

  return result;
}

unint64_t sub_1B24A94DC()
{
  result = qword_1EB7CD8B8;
  if (!qword_1EB7CD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8B8);
  }

  return result;
}

unint64_t sub_1B24A9530()
{
  result = qword_1EB7D1718;
  if (!qword_1EB7D1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1718);
  }

  return result;
}

unint64_t sub_1B24A9584()
{
  result = qword_1EB7CD8A0;
  if (!qword_1EB7CD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8A0);
  }

  return result;
}

unint64_t sub_1B24A95D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_49_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D0620);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1B24A9660(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_41(a1);
}

_BYTE *sub_1B24A96AC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1B24A9758(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_2(-1);
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
      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_46_2(v8);
}

_BYTE *sub_1B24A97DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_45_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_43_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_44_2(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_26_5(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}