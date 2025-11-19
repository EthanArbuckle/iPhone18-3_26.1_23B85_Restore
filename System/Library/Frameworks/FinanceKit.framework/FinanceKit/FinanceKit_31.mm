uint64_t ManagedECommerceOrderContent.ThumbnailImageType.names.getter()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) != 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v2 = *(v0 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1B7807CD0;
    *(v3 + 32) = v1;
    *(v3 + 40) = v2;
  }

  else
  {
    v3 = *v0;
  }

  return v3;
}

void ManagedECommerceOrderContent.thumbnailImageNames(for:)(uint64_t a1@<X8>)
{
  v2 = ManagedOrderReturn.lineItems.getter();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_23:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v5 = sub_1B7801958();
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B8CA5DC0](v8, v3);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v3 + 8 * v8 + 32);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = v9;
      v11 = [v10 image];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    v35 = a1;
    v12 = v11;
    v13 = sub_1B7800868();
    v34 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1B723E180(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_1B723E180((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    a1 = v35;
    *(v17 + 4) = v13;
    *(v17 + 5) = v34;
  }

  while (v6 != v5);
LABEL_24:

  if (*(v7 + 2))
  {
    sub_1B7240488(v7);

    v18 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
    v19 = sub_1B7800C18();

    v20 = [v18 initWithArray_];

    v21 = [v20 array];
    v22 = sub_1B7800C38();

    v23 = sub_1B72405B8(v22);

    v24 = [v36 merchant];
    v25 = [v24 logoName];

    if (v25)
    {
      v26 = sub_1B7800868();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    *a1 = v23;
    *(a1 + 8) = v26;
    *(a1 + 16) = v28;
    *(a1 + 24) = 0;
  }

  else
  {

    v29 = [v36 merchant];
    v30 = [v29 logoName];

    if (v30)
    {
      v31 = sub_1B7800868();
      v33 = v32;

      *a1 = v31;
      *(a1 + 8) = v33;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2;
    }
  }
}

id sub_1B748311C(uint64_t a1)
{
  v4 = v1;
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = MEMORY[0x1E69E7CC0];
  if (!*(a1 + 24))
  {
    v2 = *(a1 + 16);
    v3 = objc_opt_self();

    v12 = [v3 preferredLanguages];
    v13 = sub_1B7800C38();

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_1B7358374(v6, v13, KeyPath);
    if (!v1)
    {
      v18 = v15;
      v6 = 0;

      if (v18 >> 62)
      {
        goto LABEL_46;
      }

      v4 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    v4 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      goto LABEL_48;
    }

    goto LABEL_7;
  }

  if (*(a1 + 24) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B7807CD0;
    *(v2 + 32) = v6;
    *(v2 + 40) = v5;
    v8 = objc_opt_self();

    v9 = [v8 preferredLanguages];
    v5 = sub_1B7800C38();

    v6 = swift_getKeyPath();
    v3 = swift_getKeyPath();
    v10 = v4;
    sub_1B7358374(v2, v5, v6);
    if (!v4)
    {
      goto LABEL_41;
    }

LABEL_8:

    return 0;
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_42;
  }

LABEL_10:
  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_43:

    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v57 = v7;
    sub_1B71FDDF4(0, v19 & ~(v19 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_46:
    v47 = sub_1B7801958();
    v4 = v6;
    v7 = MEMORY[0x1E69E7CC0];
    if (v47)
    {
LABEL_39:

      if (!(v18 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
LABEL_47:

      if (v2)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1B7807CD0;
        *(v6 + 32) = v5;
        *(v6 + 40) = v2;
        v16 = [v3 preferredLanguages];
        v5 = sub_1B7800C38();

        v3 = swift_getKeyPath();
        v2 = swift_getKeyPath();
        v10 = v4;
        sub_1B7358374(v6, v5, v3);
        if (v4)
        {
          goto LABEL_8;
        }

LABEL_41:
        v18 = v11;

        if (!(v18 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
LABEL_48:
        v18 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_10;
        }
      }
    }

LABEL_42:
    v19 = sub_1B7801958();
    if (!v19)
    {
      goto LABEL_43;
    }
  }

  v48 = v4;
  v20 = 0;
  v17 = v57;
  v52 = v18 & 0xC000000000000001;
  name = *MEMORY[0x1E695F0B8];
  v51 = v19;
  for (i = &selRef_emailTypeValue; ; i = &selRef_emailTypeValue)
  {
    if (v52)
    {
      v22 = MEMORY[0x1B8CA5DC0](v20, v18);
    }

    else
    {
      v22 = *(v18 + 8 * v20 + 32);
    }

    v23 = v22;
    v24 = [v22 i[36]];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 data];

      goto LABEL_19;
    }

    result = [v23 data];
    v26 = result;
    if (!result)
    {
      break;
    }

LABEL_19:
    v53 = sub_1B77FF5B8();
    v54 = v28;

    v29 = [v23 width];
    v30 = [v23 height];
    v31 = [v23 i[36]];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 storedBackgroundColorValue];
      if (!v33)
      {
        goto LABEL_25;
      }

      v34 = v33;
      v49 = v30;
      v35 = v29;
      v36 = v18;
      v37 = CGColorSpaceCreateWithName(name);
      if (!v37)
      {

        v29 = v35;
        v30 = v49;
LABEL_25:

        v19 = v51;
        goto LABEL_26;
      }

      v38 = v37;
      v55[0] = *&v34[OBJC_IVAR____TtC10FinanceKit13StorableColor_red];
      v55[1] = *&v34[OBJC_IVAR____TtC10FinanceKit13StorableColor_green];
      v55[2] = *&v34[OBJC_IVAR____TtC10FinanceKit13StorableColor_blue];
      v55[3] = *&v34[OBJC_IVAR____TtC10FinanceKit13StorableColor_alpha];
      v39 = CGColorCreate(v37, v55);

      v18 = v36;
      v19 = v51;
      v29 = v35;
      v30 = v49;
      if (v39)
      {

        goto LABEL_32;
      }
    }

LABEL_26:
    v40 = [v23 storedBackgroundColor];
    if (!v40)
    {

LABEL_31:
      v39 = 0;
      goto LABEL_32;
    }

    v41 = v40;
    v42 = CGColorSpaceCreateWithName(name);
    if (!v42)
    {

      goto LABEL_31;
    }

    v56[0] = *&v41[OBJC_IVAR____TtC10FinanceKit13StorableColor_red];
    v56[1] = *&v41[OBJC_IVAR____TtC10FinanceKit13StorableColor_green];
    v56[2] = *&v41[OBJC_IVAR____TtC10FinanceKit13StorableColor_blue];
    v56[3] = *&v41[OBJC_IVAR____TtC10FinanceKit13StorableColor_alpha];
    v43 = v42;
    v39 = CGColorCreate(v42, v56);

    v19 = v51;
LABEL_32:
    v57 = v17;
    v45 = *(v17 + 16);
    v44 = *(v17 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_1B71FDDF4((v44 > 1), v45 + 1, 1);
      v17 = v57;
    }

    ++v20;
    *(v17 + 16) = v45 + 1;
    v46 = v17 + 40 * v45;
    *(v46 + 32) = v53;
    *(v46 + 40) = v54;
    *(v46 + 48) = v29;
    *(v46 + 56) = v30;
    *(v46 + 64) = v39;
    if (v19 == v20)
    {

      return v17;
    }
  }

  __break(1u);
  return result;
}

void sub_1B7483848(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit28ManagedECommerceOrderContentC18ThumbnailImageTypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1B748387C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B74838C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B748390C(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B7483938(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v80 = a3;
  v78 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9927D0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v77 = (&v65 - v11);
  v12 = sub_1B77FF4F8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v76 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v73 = &v65 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v65 - v21;
  v23 = type metadata accessor for LocalizedURLMap();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x1E69E7CC0];
  sub_1B72CDE28(v80, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = v12;
    v22 = 0;
    v26 = *v25;
    v27 = *(*v25 + 64);
    v68 = *v25 + 64;
    v71 = v13;
    v72 = v26;
    v28 = 1 << *(v26 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v12 = v29 & v27;
    v67 = (v28 + 63) >> 6;
    v69 = v13 + 16;
    v79 = (v13 + 32);
    v66 = MEMORY[0x1E69E7CC0];
    v70 = a2;
    v74 = a5;
    v75 = a4;
    v30 = v81;
    v31 = a2;
    while (1)
    {
      v32 = &qword_1EB9901D0;
      if (!v12)
      {
        break;
      }

      v33 = v22;
LABEL_15:
      v36 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v37 = v36 | (v33 << 6);
      v38 = v71;
      v39 = (*(v72 + 48) + 16 * v37);
      v41 = *v39;
      v40 = v39[1];
      v42 = v73;
      v43 = v80;
      v71[2](v73, *(v72 + 56) + v71[9] * v37, v80);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D0);
      v45 = *(v44 + 48);
      v46 = v81;
      *v81 = v41;
      v46[1] = v40;
      v30 = v46;
      v38[4](v46 + v45, v42, v43);
      (*(*(v44 - 8) + 56))(v30, 0, 1, v44);

      v31 = v70;
LABEL_16:
      v47 = v30;
      v48 = v77;
      sub_1B7359A34(v47, v77);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D0);
      if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
      {

        return v66;
      }

      v50 = *v48;
      v51 = v48[1];
      v52 = v31;
      v53 = *(v49 + 48);
      type metadata accessor for ManagedOrderImage();
      v54 = v48 + v53;
      v31 = v52;
      v55 = v76;
      (*v79)(v76, v54, v80);
      sub_1B748402C(v74, v83);

      v56 = v75;
      v57 = v82;
      ManagedOrderImage.__allocating_init(name:url:localizationName:context:extractBackgroundColorWith:)(v78, v52, v55, v50, v51, v56, v83);
      v82 = v57;
      if (v57)
      {
      }

      v30 = v81;
      if (v58)
      {
        v59 = v58;
        MEMORY[0x1B8CA4F20]();
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();

        v66 = v84;
      }
    }

    if (v67 <= (v22 + 1))
    {
      v34 = v22 + 1;
    }

    else
    {
      v34 = v67;
    }

    v35 = v34 - 1;
    v13 = &unk_1B780C088;
    while (1)
    {
      v33 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v33 >= v67)
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D0);
        (*(*(v60 - 8) + 56))(v30, 1, 1, v60);
        v12 = 0;
        v22 = v35;
        goto LABEL_16;
      }

      v12 = *(v68 + 8 * v33);
      ++v22;
      if (v12)
      {
        v22 = v33;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v13 + 4))(v22, v25, v12);
  type metadata accessor for ManagedOrderImage();
  (*(v13 + 2))(v20, v22, v12);
  sub_1B748402C(a5, v83);

  v61 = a4;
  v62 = v82;
  ManagedOrderImage.__allocating_init(name:url:localizationName:context:extractBackgroundColorWith:)(v78, a2, v20, 0, 0, v61, v83);
  v82 = v62;
  if (v62)
  {
    return (*(v13 + 1))(v22, v12);
  }

  if (v63)
  {
    v32 = v63;
    MEMORY[0x1B8CA4F20]();
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_29:
      sub_1B7800C88();

      (*(v13 + 1))(v22, v12);
      return v84;
    }

LABEL_32:
    sub_1B7800C58();
    goto LABEL_29;
  }

  (*(v13 + 1))(v22, v12);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B748402C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void RawBankConnectData.Transaction.init(_:accountID:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v178 = a2;
  v179 = a3;
  v181 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v183 = &v144 - v6;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v144 - v15;
  v180 = type metadata accessor for RawBankConnectData.Transaction(0);
  MEMORY[0x1EEE9AC00](v180);
  v177 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 insightsObject];
  if (v18 && (v19 = v18, v20 = [v18 bankMerchantInformationInsightObject], v19, v20))
  {
    v21 = RawBankConnectData.MerchantInformation.init(_:)(v20, &v192);
    nullsub_1(&v192, v21);
    v212 = v198;
    v213 = v199;
    v214 = v200;
    v215 = v201;
    v208 = v194;
    v209 = v195;
    v210 = v196;
    v211 = v197;
    v22 = v192;
    v23 = v193;
  }

  else
  {
    v212 = v222;
    v213 = v223;
    v214 = v224;
    v215 = v225;
    v208 = v218;
    v209 = v219;
    v210 = v220;
    v211 = v221;
    v22 = v216;
    v23 = v217;
  }

  v206 = v22;
  v207 = v23;
  v24 = [a1 transactionId];
  v25 = sub_1B7800868();
  v171 = v26;
  v172 = v25;

  v170 = [a1 isTransactionIDStable];
  v27 = [a1 publicTransactionObject];
  v28 = [v27 postedDate];

  if (v28)
  {
    sub_1B77FF928();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v175 = v8;
  v176 = v7;
  v168 = *(v8 + 56);
  v169 = v8 + 56;
  (v168)(v14, v29, 1, v7);
  v173 = v16;
  sub_1B7205340(v14, v16);
  v30 = [a1 publicTransactionObject];
  v31 = [v30 transactionDate];

  v174 = v10;
  sub_1B77FF928();

  v32 = [a1 publicTransactionObject];
  v33 = [v32 transactionDescription];

  v34 = sub_1B7800868();
  v166 = v35;
  v167 = v34;

  v36 = [a1 publicTransactionObject];
  v37 = [v36 originalTransactionDescription];

  v38 = sub_1B7800868();
  v164 = v39;
  v165 = v38;

  v40 = [a1 publicTransactionObject];
  ManagedTransaction.creditDebitIndicator.getter(&v192);

  LODWORD(v182) = v192;
  v41 = [a1 publicTransactionObject];
  ManagedTransaction.status.getter(&v192);

  v163 = v192;
  v42 = [a1 publicTransactionObject];
  LOWORD(v37) = [v42 transactionTypeValue];

  TransactionType.init(rawValue:)(v37);
  v43 = v204;
  if (v204 == 17)
  {
    v43 = 0;
  }

  LOBYTE(v192) = v43;
  RawBankConnectData.Transaction.TransactionType.init(_:)(&v192, &v205);
  v162 = v205;
  v44 = [a1 publicTransactionObject];
  v45 = [v44 amount];
  [v45 decimalValue];
  v46 = v193;
  v47 = v192;

  v48 = [v44 currency];
  v49 = sub_1B7800868();
  v51 = v50;

  CurrencyAmount.init(_:currencyCode:)(v47, *(&v47 + 1), v46, v49, v51, &v192);
  v202 = v192;
  LODWORD(v203) = v193;
  v156 = v194;
  v157 = *(&v193 + 1);
  v52 = type metadata accessor for RawBankConnectData.Actions();
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v153 = (v53 + 56);
  v54(v183, 1, 1, v52);
  v55 = [a1 paymentHash];
  if (v55)
  {
    v56 = v55;
    v57 = sub_1B7800868();
    v160 = v58;
    v161 = v57;
  }

  else
  {
    v160 = 0;
    v161 = 0;
  }

  v59 = [a1 bankTransactionCodeValue];
  if (v59)
  {
    v60 = v59;
    v61 = sub_1B7800868();
    v63 = v62;

    v64 = [a1 bankTransactionCodeSubCode];
    if (v64)
    {
      v65 = v64;
      v66 = sub_1B7800868();
      v154 = v67;
      v155 = v66;

      goto LABEL_18;
    }
  }

  v61 = 0;
  v63 = 0;
  v154 = 0;
  v155 = 0;
LABEL_18:
  v148 = v182 ^ 1;
  v68 = [a1 proprietaryBankTransactionCodeValue];
  v182 = a1;
  v158 = v61;
  v159 = v63;
  if (v68)
  {
    v147 = v52;
    v69 = v54;
    v70 = v68;
    v71 = sub_1B7800868();
    v73 = v72;

    v74 = [a1 proprietaryBankTransactionCodeIssuer];
    if (v74)
    {
      v75 = v74;
      v76 = sub_1B7800868();
      v78 = v77;
    }

    else
    {
      v76 = 0;
      v78 = 0;
    }

    v149 = v78;
    v150 = v76;
    v151 = v73;
    v152 = v71;
    v54 = v69;
    v52 = v147;
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v149 = 0;
    v150 = 0;
  }

  v79 = v180;
  v80 = *(v180 + 24);
  v81 = v176;
  v82 = v177;
  (v168)(&v177[v80], 1, 1, v176);
  v145 = (v82 + v79[9]);
  v83 = v79[13];
  v146 = (v82 + v79[11]);
  v147 = v83;
  *(v82 + v83) = 16;
  v84 = (v82 + v79[15]);
  v84[3] = 0u;
  v84[4] = 0u;
  v84[1] = 0u;
  v84[2] = 0u;
  *v84 = 0u;
  v85 = (v82 + v79[16]);
  v86 = v223;
  v85[6] = v222;
  v85[7] = v86;
  v87 = v225;
  v85[8] = v224;
  v85[9] = v87;
  v88 = v219;
  v85[2] = v218;
  v85[3] = v88;
  v89 = v221;
  v85[4] = v220;
  v85[5] = v89;
  v90 = v217;
  *v85 = v216;
  v85[1] = v90;
  v169 = v79[17];
  v54(v82 + v169, 1, 1, v52);
  v91 = v79[19];
  v153 = (v82 + v79[18]);
  v168 = (v82 + v91);
  v92 = v82 + v79[20];
  *v92 = 0u;
  *(v92 + 16) = 0u;
  v93 = v82 + v79[21];
  *v93 = 0u;
  *(v93 + 16) = 0u;
  v94 = v171;
  *v82 = v172;
  *(v82 + 8) = v94;
  *(v82 + 16) = v170;
  sub_1B7213740(v173, v82 + v80, &qword_1EB98EBD0);
  (*(v175 + 32))(v82 + v79[7], v174, v81);
  v95 = (v82 + v79[8]);
  v96 = v166;
  *v95 = v167;
  v95[1] = v96;
  v97 = v164;
  v98 = v145;
  *v145 = v165;
  v98[1] = v97;
  *(v82 + v79[10]) = v148 & 1;
  v99 = v146;
  *v146 = 0;
  v99[1] = 0;
  *(v82 + v79[12]) = v163;
  *(v82 + v147) = v162;
  v100 = v82 + v79[14];
  *v100 = v202;
  v101 = v203;
  *(v100 + 24) = 0;
  *(v100 + 32) = 0;
  *(v100 + 16) = v101;
  *(v100 + 40) = 0;
  *(v100 + 44) = 1;
  v102 = v156;
  *(v100 + 48) = v157;
  *(v100 + 56) = v102;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  v103 = v84[4];
  v191[3] = v84[3];
  v191[4] = v103;
  v104 = v84[1];
  v105 = v84[2];
  v191[0] = *v84;
  v191[1] = v104;
  v191[2] = v105;
  sub_1B7205418(v191, &qword_1EB990780);
  *v84 = 0u;
  v84[1] = 0u;
  v84[2] = 0u;
  v84[3] = 0u;
  v84[4] = 0u;
  v106 = v85[7];
  v198 = v85[6];
  v199 = v106;
  v107 = v85[9];
  v200 = v85[8];
  v201 = v107;
  v108 = v85[3];
  v194 = v85[2];
  v195 = v108;
  v109 = v85[5];
  v196 = v85[4];
  v197 = v109;
  v110 = v85[1];
  v192 = *v85;
  v193 = v110;
  sub_1B7205418(&v192, &qword_1EB995668);
  v111 = v213;
  v85[6] = v212;
  v85[7] = v111;
  v112 = v215;
  v85[8] = v214;
  v85[9] = v112;
  v113 = v209;
  v85[2] = v208;
  v85[3] = v113;
  v114 = v211;
  v85[4] = v210;
  v85[5] = v114;
  v115 = v207;
  *v85 = v206;
  v85[1] = v115;
  sub_1B7213740(v183, v82 + v169, &qword_1EB990770);
  v116 = v179;
  v117 = v153;
  *v153 = v178;
  v117[1] = v116;
  v118 = v160;
  v119 = v168;
  *v168 = v161;
  v119[1] = v118;
  sub_1B74204FC(*v92, *(v92 + 8));
  v120 = v159;
  *v92 = v158;
  *(v92 + 8) = v120;
  v121 = v154;
  *(v92 + 16) = v155;
  *(v92 + 24) = v121;
  sub_1B74204FC(*v93, *(v93 + 8));
  v122 = v151;
  *v93 = v152;
  *(v93 + 8) = v122;
  v123 = v149;
  *(v93 + 16) = v150;
  *(v93 + 24) = v123;
  sub_1B7484FE4(v82, v181);
  v124 = v182;
  v125 = [v182 publicTransactionObject];
  v126 = [v125 foreignAmount];
  if (v126)
  {
    v127 = v126;
    [v126 decimalValue];
    v128 = v186;
    v129 = WORD2(v186);
    v130 = WORD3(v186);
    v131 = *(&v186 + 1);
    v132 = v187;

    v133 = [v125 foreignCurrency];
    if (v133)
    {
      v134 = v133;
      v135 = sub_1B7800868();
      v137 = v136;

      CurrencyAmount.init(_:currencyCode:)(v128 | (v129 << 32) | (v130 << 48), v131, v132, v135, v137, &v186);
      v184 = v186;
      LODWORD(v185) = v187;
      v138 = *(&v187 + 1);
      v139 = v188;
      v140 = (v181 + *(v180 + 60));
      v141 = v140[3];
      v188 = v140[2];
      v189 = v141;
      v190 = v140[4];
      v142 = v140[1];
      v186 = *v140;
      v187 = v142;
      sub_1B7205418(&v186, &qword_1EB990780);
      *v140 = v184;
      v143 = v185;
      *(v140 + 3) = 0;
      *(v140 + 4) = 0;
      *(v140 + 2) = v143;
      *(v140 + 10) = 0;
      *(v140 + 44) = 1;
      *(v140 + 6) = v138;
      *(v140 + 7) = v139;
      *(v140 + 8) = 0;
      *(v140 + 9) = 0;
    }

    else
    {
    }
  }

  else
  {
  }
}

__n128 RawBankConnectData.MerchantInformation.init(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = ManagedBankMerchantInformationInsight.merchantCategoryCodeValue.getter();
  if ((v4 & 0x10000) != 0)
  {
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v6 = swift_allocObject();
    v7 = MEMORY[0x1E69E7290];
    *(v6 + 16) = xmmword_1B7807CD0;
    v8 = MEMORY[0x1E69E72E8];
    *(v6 + 56) = v7;
    *(v6 + 64) = v8;
    *(v6 + 32) = v5;
    v9 = sub_1B78008B8();
    v39 = v10;
    v40 = v9;
  }

  v11 = [a1 merchantAddress];
  if (v11)
  {
    sub_1B7484E80(v11, &v41);
    v35 = v42;
    v36 = v41;
    v33 = v44;
    v34 = v43;
    v37 = *(&v45 + 1);
    v38 = v45;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v35 = 0u;
    v36 = xmmword_1B78301C0;
    v33 = 0u;
    v34 = 0u;
  }

  v12 = [a1 standardIndustrialClassificationCode];
  if (v12)
  {
    v13 = v12;
    v32 = sub_1B7800868();
    v15 = v14;
  }

  else
  {
    v32 = 0;
    v15 = 0;
  }

  v16 = [a1 categoryDescription];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B7800868();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a1 merchantName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1B7800868();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [a1 merchantNumber];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1B7800868();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  v41 = xmmword_1B78301C0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  sub_1B7205418(&v41, &qword_1EB995670);
  *a2 = v40;
  *(a2 + 8) = v39;
  *(a2 + 16) = v32;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v23;
  *(a2 + 56) = v25;
  *(a2 + 64) = v28;
  *(a2 + 72) = v30;
  *(a2 + 80) = v36;
  *(a2 + 96) = v35;
  result = v34;
  *(a2 + 112) = v34;
  *(a2 + 128) = v33;
  *(a2 + 144) = v38;
  *(a2 + 152) = v37;
  return result;
}

void sub_1B7484E80(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 street];
  v5 = sub_1B7800868();
  v23 = v6;
  v24 = v5;

  v7 = [a1 city];
  v22 = sub_1B7800868();
  v9 = v8;

  v10 = [a1 state];
  v11 = sub_1B7800868();
  v13 = v12;

  v14 = [a1 postalCode];
  v15 = sub_1B7800868();
  v17 = v16;

  v18 = [a1 ISOCountryCode];
  v19 = sub_1B7800868();
  v21 = v20;

  *a2 = v24;
  a2[1] = v23;
  a2[2] = v22;
  a2[3] = v9;
  a2[4] = v11;
  a2[5] = v13;
  a2[6] = v15;
  a2[7] = v17;
  a2[8] = v19;
  a2[9] = v21;
}

double sub_1B7484FC0(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1B78301C0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  return result;
}

uint64_t sub_1B7484FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Transaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

FinanceKit::FoundInMailItem::OrderDetails::EmailType_optional ManagedFoundInMailItemOrderDetails.emailType.getter@<W0>(_BYTE *a1@<X8>)
{
  result.value = FoundInMailItem.OrderDetails.EmailType.init(rawValue:)([v1 emailTypeValue]).value;
  v4 = v5;
  if (v5 == 9)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

id (*ManagedFoundInMailItemOrderDetails.emailType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  FoundInMailItem.OrderDetails.EmailType.init(rawValue:)([v1 emailTypeValue]);
  v3 = v5;
  if (v5 == 9)
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  return sub_1B748511C;
}

FinanceKit::FoundInMailItem::OrderDetails::ShippingDetails::Status_optional ManagedFoundInMailItemOrderDetails.shippingStatus.getter@<W0>(_BYTE *a1@<X8>)
{
  result.value = FoundInMailItem.OrderDetails.ShippingDetails.Status.init(rawValue:)([v1 shippingStatusValue]).value;
  v4 = v5;
  if (v5 == 10)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

id (*ManagedFoundInMailItemOrderDetails.shippingStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  FoundInMailItem.OrderDetails.ShippingDetails.Status.init(rawValue:)([v1 shippingStatusValue]);
  v3 = v5;
  if (v5 == 10)
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  return sub_1B7485208;
}

id ManagedFoundInMailItemOrderDetails.orderContentType.getter@<X0>(char *a1@<X8>)
{
  result = [v1 orderContentTypeValue];
  v4 = result == 1;
  if (result == 2)
  {
    v4 = 2;
  }

  *a1 = v4;
  return result;
}

id (*ManagedFoundInMailItemOrderDetails.orderContentType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 orderContentTypeValue];
  v4 = v3 == 1;
  if (v3 == 2)
  {
    v4 = 2;
  }

  *(a1 + 8) = v4;
  return sub_1B74852DC;
}

id sub_1B74852F4(unsigned __int8 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 4);
  v4 = a1[40];
  v5 = *(a1 + 7);
  v6 = *(a1 + 9);
  v7 = a1[80];
  [v1 setEmailTypeValue_];
  if (v2)
  {
    v2 = sub_1B7800838();
  }

  [v1 setOrderNumber_];

  if (v3)
  {
    v8 = sub_1B7800838();
  }

  else
  {
    v8 = 0;
  }

  [v1 setMerchantDisplayName_];

  [v1 setShippingStatusValue_];
  if (v5)
  {
    v9 = sub_1B7800838();
  }

  else
  {
    v9 = 0;
  }

  [v1 setShippingDetailsTrackingNumber_];

  if (v6)
  {
    v10 = sub_1B7800838();
  }

  else
  {
    v10 = 0;
  }

  [v1 setShippingDetailsCarrierName_];

  return [v1 setOrderContentTypeValue_];
}

id ManagedFoundInMailItemOrderDetails.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedFoundInMailItemOrderDetails.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedFoundInMailItemOrderDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double FoundInMailItem.OrderDetails.init(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  FoundInMailItem.OrderDetails.EmailType.init(rawValue:)([a1 emailTypeValue]);
  v4 = v21[0];
  v5 = [a1 orderNumber];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B7800868();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 merchantDisplayName];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1B7800868();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  if (v21[0] == 9)
  {
    v4 = 0;
  }

  v15 = a1;
  FoundInMailItem.OrderDetails.ShippingDetails.init(_:)(v15, v21);
  v16 = v21[0];
  v17 = [v15 orderContentTypeValue];

  *a2 = v4;
  v18 = v17 == 1;
  if (v17 == 2)
  {
    v18 = 2;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  result = *&v22;
  v20 = v23;
  *(a2 + 48) = v22;
  *(a2 + 64) = v20;
  *(a2 + 80) = v18;
  return result;
}

void FoundInMailItem.OrderDetails.ShippingDetails.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  FoundInMailItem.OrderDetails.ShippingDetails.Status.init(rawValue:)([a1 shippingStatusValue]);
  v4 = [a1 shippingDetailsTrackingNumber];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 shippingDetailsCarrierName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B7800868();
    v13 = v12;
  }

  else
  {

    v11 = 0;
    v13 = 0;
  }

  if (v15 == 10)
  {
    v14 = 0;
  }

  else
  {
    v14 = v15;
  }

  *a2 = v14;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
}

unint64_t static ManagedFoundInMailItem.mailItem(withMessageID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedFoundInMailItem;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

id static ManagedFoundInMailItem.mailItems(dataSource:associatedWith:in:)(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  if (v3 != 2)
  {
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B7807CD0;
    v6 = MEMORY[0x1E69E65A8];
    *(v5 + 56) = MEMORY[0x1E69E6530];
    *(v5 + 64) = v6;
    *(v5 + 32) = v3 & 1;
    sub_1B78010E8();
    MEMORY[0x1B8CA4F20]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    v4 = v18;
  }

  if (a2)
  {
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1B7807CD0;
    *(v7 + 56) = type metadata accessor for ManagedFoundInTransactionInsight();
    *(v7 + 64) = sub_1B7489124(&qword_1EB995678, type metadata accessor for ManagedFoundInTransactionInsight);
    *(v7 + 32) = a2;
    v8 = a2;
    sub_1B78010E8();
    MEMORY[0x1B8CA4F20]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    v4 = v18;
  }

  v17.receiver = swift_getObjCClassFromMetadata();
  v17.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedFoundInMailItem;
  result = objc_msgSendSuper2(&v17, sel_fetchRequest);
  v10 = result;
  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      if (v11 == 1)
      {
        goto LABEL_12;
      }

LABEL_22:
      sub_1B7205540(0, &qword_1EDAFAF30);
      v14 = sub_1B7800C18();

      v15 = [objc_opt_self() andPredicateWithSubpredicates_];

      [v10 setPredicate_];
      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_23;
  }

  if (!sub_1B7801958())
  {
    goto LABEL_21;
  }

  if (sub_1B7801958() != 1)
  {
    goto LABEL_22;
  }

  result = sub_1B7801958();
  if (!result)
  {
    v13 = 0;
    goto LABEL_16;
  }

LABEL_12:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0, v4);
    goto LABEL_15;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v4 + 32);
LABEL_15:
    v13 = v12;
LABEL_16:

    [v10 setPredicate_];

LABEL_23:
    v16 = sub_1B7801498();

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7485DF0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1B724E408(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1B7485EF4(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1B7801908();
    type metadata accessor for ManagedSpotlightUniqueIdentifier();
    sub_1B7489124(&qword_1EB98FFB8, type metadata accessor for ManagedSpotlightUniqueIdentifier);
    sub_1B7800FE8();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_1B71B7B58();
      return;
    }

    while (1)
    {
      sub_1B72513E0(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1B7801988())
      {
        type metadata accessor for ManagedSpotlightUniqueIdentifier();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1B74860E8(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1B7801908();
    sub_1B7205540(0, &qword_1EB98F930);
    sub_1B7262CF4(&qword_1EB98FFD8, &qword_1EB98F930);
    sub_1B7800FE8();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_1B71B7B58();
      return;
    }

    while (1)
    {
      sub_1B7253100(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1B7801988())
      {
        sub_1B7205540(0, &qword_1EB98F930);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1B74862FC(id *a1)
{
  v1 = [*a1 dateSent];
  sub_1B77FF928();
}

uint64_t ManagedFoundInMailItem.deeplinkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FEA08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 messageID];
  v8 = sub_1B7800868();
  v10 = v9;

  v16 = v8;
  v17 = v10;
  sub_1B77FE9D8();
  sub_1B7205210();
  v11 = sub_1B78017E8();
  v13 = v12;
  (*(v4 + 8))(v6, v3);

  if (v13)
  {
    v16 = 0x3A6567617373656DLL;
    v17 = 0xEA00000000002F2FLL;
    MEMORY[0x1B8CA4D30](v11, v13);

    sub_1B77FF4D8();
  }

  else
  {
    v15 = sub_1B77FF4F8();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }
}

void (*ManagedFoundInMailItem.orderDetails.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedFoundInMailItem.orderDetails.getter();
  return sub_1B74865D8;
}

uint64_t sub_1B7486648(SEL *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v7 = sub_1B77FF338();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 *a1];
  v12 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B7489124(&qword_1EB990510, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  if (v20)
  {
    v16 = a3;
    do
    {
      while (1)
      {
        sub_1B72051F0(&v19, &v17);
        a2(0);
        if ((swift_dynamicCast() & 1) == 0 || !v18)
        {
          break;
        }

        MEMORY[0x1B8CA4F20]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v12 = v21;
        sub_1B78017B8();
        a3 = v16;
        if (!v20)
        {
          goto LABEL_11;
        }
      }

      sub_1B78017B8();
    }

    while (v20);
    a3 = v16;
  }

LABEL_11:

  (*(v8 + 8))(v10, v7);
  v13 = a3(v12);

  return v13;
}

void sub_1B74868A8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), SEL *a8)
{
  v11 = *a2;
  a5(0);
  sub_1B7489124(a6, a7);
  v12 = sub_1B7800F78();
  [v11 *a8];
}

void sub_1B7486994(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), SEL *a5)
{
  a2(0);
  sub_1B7489124(a3, a4);
  v9 = sub_1B7800F78();

  [v5 *a5];
}

void (*ManagedFoundInMailItem.spotlightUniqueIdentifiers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedFoundInMailItem.spotlightUniqueIdentifiers.getter();
  return sub_1B7486A90;
}

void sub_1B7486ACC(uint64_t a1, char a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), SEL *a6)
{
  a3(0);
  sub_1B7489124(a4, a5);
  v11 = *(a1 + 8);
  if (a2)
  {

    v12 = sub_1B7800F78();

    [v11 *a6];
  }

  else
  {
    v13 = sub_1B7800F78();

    [v11 *a6];
  }
}

FinanceKit::ManagedFoundInMailItem::DataSource_optional __swiftcall ManagedFoundInMailItem.DataSource.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void ManagedFoundInMailItem.dataSource.getter(_BYTE *a1@<X8>)
{
  v3 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v4 = [v1 primitiveDataSource];
  v5 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  v6 = [v4 shortValue];
  if (v6 > 1)
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
  }
}

void sub_1B7486CF8(unsigned __int8 *a1, void **a2)
{
  v2 = *a2;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v4 = sub_1B7800838();
  [v2 willChangeValueForKey_];

  [v2 setPrimitiveDataSource_];
  v5 = sub_1B7800838();
  [v2 didChangeValueForKey_];
}

void ManagedFoundInMailItem.dataSource.setter(unsigned __int8 *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setPrimitiveDataSource_];
  v4 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void ManagedFoundInMailItem.dataSource.modify(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC10FinanceKit22ManagedFoundInMailItem_dataSourceKey];
  v4 = *&v1[OBJC_IVAR____TtC10FinanceKit22ManagedFoundInMailItem_dataSourceKey + 8];
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v6 = [v1 primitiveDataSource];
  v7 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  v8 = [v6 shortValue];
  if (v8 > 1)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 24) = v8;
  }
}

void sub_1B7486FB4(uint64_t a1)
{
  v1 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v2 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setPrimitiveDataSource_];
  v3 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

uint64_t sub_1B7487084@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 backingEmailExistenceLastVerifiedDate];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B7487128(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7280900(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setBackingEmailExistenceLastVerifiedDate_];
}

id ManagedFoundInMailItem.__allocating_init(mailItem:context:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  ManagedFoundInMailItem.update(with:context:)(a1, a2);

  sub_1B7489260(a1, type metadata accessor for FoundInMailItem);
  return v5;
}

uint64_t ManagedFoundInMailItem.update(with:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B7800838();
  [v3 setMessageID_];

  FoundInMailItem.messageIDHash.getter();
  v7 = sub_1B7800838();

  [v3 setMessageIDHash_];

  v8 = type metadata accessor for FoundInMailItem();
  v9 = sub_1B77FF8B8();
  [v3 setDateSent_];

  if (*(a1 + v8[6] + 8))
  {
    v10 = sub_1B7800838();
  }

  else
  {
    v10 = 0;
  }

  [v3 setSubject_];

  v11 = sub_1B7800838();
  [v3 setSenderDomain_];

  v12 = sub_1B7800838();
  [v3 setFromEmailAddress_];

  if (*(a1 + v8[9] + 8))
  {
    v13 = sub_1B7800838();
  }

  else
  {
    v13 = 0;
  }

  [v3 setFromDisplayName_];

  v14 = sub_1B7800838();
  [v3 setToEmailAddress_];

  if (*(a1 + v8[11] + 8))
  {
    v15 = sub_1B7800838();
  }

  else
  {
    v15 = 0;
  }

  [v3 setToDisplayName_];

  if (*(a1 + v8[12] + 8))
  {
    v16 = sub_1B7800838();
  }

  else
  {
    v16 = 0;
  }

  [v3 setReplyToEmailAddress_];

  if (*(a1 + v8[13] + 8))
  {
    v17 = sub_1B7800838();
  }

  else
  {
    v17 = 0;
  }

  [v3 setReplyToDisplayName_];

  v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v19 = sub_1B7800838();
  [v3 willChangeValueForKey_];

  [v3 setPrimitiveDataSource_];
  v20 = sub_1B7800838();
  [v3 didChangeValueForKey_];

  ManagedFoundInMailItem.updateSpotlightUniqueIdentifiers(newIdentifiers:context:)(*(a1 + v8[16]), a2);
  type metadata accessor for ManagedSpotlightUniqueIdentifier();
  sub_1B7489124(&qword_1EB98FFB8, type metadata accessor for ManagedSpotlightUniqueIdentifier);
  v21 = sub_1B7800F78();

  [v3 setSpotlightUniqueIdentifierObjects_];

  v22 = *(a1 + v8[15]);

  return ManagedFoundInMailItem.updateOrderDetails(newOrderDetails:context:)(v22, a2);
}

id ManagedFoundInMailItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedFoundInMailItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedFoundInMailItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ManagedFoundInMailItem.updateSpotlightUniqueIdentifiers(newIdentifiers:context:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
LABEL_59:
    if (sub_1B7801958())
    {
      sub_1B75462B4(MEMORY[0x1E69E7CC0]);
      goto LABEL_3;
    }
  }

  v2 = MEMORY[0x1E69E7CD0];
LABEL_3:
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v66 = v2;
  v5 = -1 << *(a1 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (63 - v5) >> 6;

  v9 = 0;
  v54 = v8;
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (2)
  {
    v11 = (*(a1 + 48) + 48 * (__clz(__rbit64(v7)) | (v9 << 6)));
    v12 = v11[1];
    v62 = *v11;
    v57 = v11[2];
    v13 = v11[5];
    v59 = v11[4];
    v60 = v11[3];

    v58 = v13;

    v63 = v12;

    v14 = ManagedFoundInMailItem.spotlightUniqueIdentifiers.getter();
    if ((v14 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1B7801908();
      type metadata accessor for ManagedSpotlightUniqueIdentifier();
      sub_1B7489124(&qword_1EB98FFB8, type metadata accessor for ManagedSpotlightUniqueIdentifier);
      sub_1B7800FE8();
      v16 = v67;
      v15 = v68;
      v17 = v69;
      v18 = v70;
      v19 = v71;
    }

    else
    {
      v20 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v17 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = v22 & *(v14 + 56);
      v18 = 0;
    }

    v56 = (v7 - 1) & v7;
    v23 = (v17 + 64) >> 6;
    v61 = v16;
    while (v16 < 0)
    {
      if (!sub_1B7801988())
      {
        goto LABEL_48;
      }

      type metadata accessor for ManagedSpotlightUniqueIdentifier();
      swift_dynamicCast();
      v27 = v65;
      v26 = v19;
      if (!v65)
      {
        goto LABEL_48;
      }

LABEL_29:
      v64 = v26;
      v28 = [v27 bundleIdentifier];
      v29 = sub_1B7800868();
      v31 = v30;

      if (v29 == v62 && v31 == v63)
      {
      }

      else
      {
        v33 = sub_1B78020F8();

        if ((v33 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v34 = [v27 domainIdentifier];
      if (v34)
      {
        v35 = v34;
        v36 = sub_1B7800868();
        v38 = v37;

        if (!v60)
        {

          goto LABEL_19;
        }

        if (v36 == v57 && v60 == v38)
        {
        }

        else
        {
          v39 = sub_1B78020F8();

          if ((v39 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else if (v60)
      {
        goto LABEL_19;
      }

      v40 = [v27 uniqueIdentifier];
      v41 = sub_1B7800868();
      v43 = v42;

      if (v41 == v59 && v43 == v58)
      {

LABEL_54:
        sub_1B71B7B58();

        v50 = v27;
        sub_1B72513E0(&v65, v50);

        v8 = v54;
        v4 = a1 + 56;
        v7 &= v7 - 1;
        if (v56)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }

      v44 = sub_1B78020F8();

      if (v44)
      {
        goto LABEL_54;
      }

LABEL_19:

      v16 = v61;
      v19 = v64;
    }

    v24 = v18;
    v25 = v19;
    if (!v19)
    {
      while (1)
      {
        v18 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          goto LABEL_48;
        }

        v25 = *(v15 + 8 * v18);
        ++v24;
        if (v25)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_25:
    v26 = (v25 - 1) & v25;
    v27 = *(*(v16 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v25)))));
    if (v27)
    {
      goto LABEL_29;
    }

LABEL_48:
    sub_1B71B7B58();

    v45 = [objc_allocWithZone(type metadata accessor for ManagedSpotlightUniqueIdentifier()) initWithContext_];
    v46 = sub_1B7800838();
    [v45 setBundleIdentifier_];

    if (v60)
    {
      v47 = sub_1B7800838();
    }

    else
    {
      v47 = 0;
    }

    v7 &= v7 - 1;
    [v45 setDomainIdentifier_];

    v48 = sub_1B7800838();
    [v45 setUniqueIdentifier_];

    v49 = v45;
    sub_1B72513E0(&v65, v49);

    v8 = v54;
    v4 = a1 + 56;
    if (v56)
    {
      continue;
    }

    break;
  }

LABEL_7:
  while (2)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v10 < v8)
    {
      v7 = *(v4 + 8 * v10);
      ++v9;
      if (!v7)
      {
        continue;
      }

      v9 = v10;
      goto LABEL_11;
    }

    break;
  }

  v51 = v66;
  v52 = ManagedFoundInMailItem.spotlightUniqueIdentifiers.getter();
  sub_1B7485EF4(v51, v52);
}

uint64_t ManagedFoundInMailItem.updateOrderDetails(newOrderDetails:context:)(uint64_t a1, uint64_t a2)
{
  v2 = ManagedFoundInMailItem.orderDetails.getter();
  v3 = sub_1B7203830(MEMORY[0x1E69E7CC0]);
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedFoundInMailItemOrderDetails();
    sub_1B7489124(&qword_1EB98FFC0, type metadata accessor for ManagedFoundInMailItemOrderDetails);
    sub_1B7800FE8();
    v2 = v50;
    v4 = v51;
    v6 = v52;
    v5 = v53;
    v7 = v54;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v5 = 0;
  }

  v11 = (v6 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v5;
    v13 = v7;
    v14 = v5;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_18;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_12;
        }
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      break;
    }

    while (1)
    {
      v18 = v16;
      FoundInMailItem.OrderDetails.init(_:)(v18, &v57);
      v55[2] = v59;
      v55[3] = v60;
      v55[4] = v61;
      v56 = v62;
      v55[0] = v57;
      v55[1] = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v47[0] = v3;
      sub_1B73933F0(v18, v55, isUniquelyReferenced_nonNull_native);
      sub_1B723C4D0(v55);
      v5 = v14;
      v7 = v15;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = sub_1B7801988();
      if (v17)
      {
        *&v47[0] = v17;
        type metadata accessor for ManagedFoundInMailItemOrderDetails();
        swift_dynamicCast();
        v16 = v57;
        v14 = v5;
        v15 = v7;
        if (v57)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

LABEL_18:
  sub_1B71B7B58();

  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
    v20 = MEMORY[0x1E69E7CD0];
    v21 = a1;
    goto LABEL_20;
  }

LABEL_38:
  v21 = a1;
  if (sub_1B7801958())
  {
    sub_1B75465D0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CD0];
  }

LABEL_20:
  v49 = v20;
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 56);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  v44 = v3;
  while (v24)
  {
LABEL_30:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = *(v21 + 48) + 88 * (v29 | (v26 << 6));
    v31 = *v30;
    v58 = *(v30 + 16);
    v32 = *(v30 + 32);
    v33 = *(v30 + 48);
    v34 = *(v30 + 64);
    v62 = *(v30 + 80);
    v60 = v33;
    v61 = v34;
    v59 = v32;
    v57 = v31;
    if (*(v3 + 16))
    {
      sub_1B723C474(&v57, v47);
      v35 = sub_1B7245CF0(&v57);
      if (v36)
      {
        v27 = *(*(v3 + 56) + 8 * v35);
        goto LABEL_24;
      }
    }

    else
    {
      sub_1B723C474(&v57, v47);
    }

    v37 = objc_allocWithZone(type metadata accessor for ManagedFoundInMailItemOrderDetails());
    sub_1B723C474(&v57, v47);
    v38 = [v37 initWithContext_];
    v47[2] = v59;
    v47[3] = v60;
    v47[4] = v61;
    v48 = v62;
    v47[0] = v57;
    v47[1] = v58;
    v39 = v38;
    sub_1B74852F4(v47);

    sub_1B723C4D0(&v57);
    v40 = v39;
    ManagedFoundInMailItem.orderDetails.getter();
    sub_1B7251158(v47, v40);

    sub_1B7489124(&qword_1EB98FFC0, type metadata accessor for ManagedFoundInMailItemOrderDetails);
    v41 = sub_1B7800F78();

    v3 = v44;
    [v46 setOrderDetailObjects_];

    v27 = v40;
LABEL_24:
    sub_1B7251158(v47, v27);
    sub_1B723C4D0(&v57);
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v28 >= v25)
    {
      break;
    }

    v24 = *(v21 + 56 + 8 * v28);
    ++v26;
    if (v24)
    {
      v26 = v28;
      goto LABEL_30;
    }
  }

  return v49;
}

Swift::Void __swiftcall ManagedFoundInMailItem.willSave()()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_willSave);
  if (([v0 isDeleted] & 1) == 0)
  {
    v1 = sub_1B7800838();
    v2 = [v0 objectIDsForRelationshipNamed_];

    sub_1B7205540(0, &qword_1EB98F930);
    v3 = sub_1B7800C38();

    v4 = v3 >> 62 ? sub_1B7801958() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v4)
    {
      v5 = sub_1B7800838();
      v6 = [v0 objectIDsForRelationshipNamed_];

      v7 = sub_1B7800C38();
      if (v7 >> 62)
      {
        v14 = sub_1B7801958();

        if (v14)
        {
          return;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v8)
        {
          return;
        }
      }

      v9 = sub_1B7800838();
      v10 = [v0 objectIDsForRelationshipNamed_];

      v11 = sub_1B7800C38();
      if (!(v11 >> 62))
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v12)
        {
          return;
        }

        goto LABEL_9;
      }

      v15 = sub_1B7801958();

      if (!v15)
      {
LABEL_9:
        v13 = [v0 managedObjectContext];
        [v13 deleteObject_];
      }
    }
  }
}

void FoundInMailItem.init(_:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 messageID];
  v9 = sub_1B7800868();
  v11 = v10;

  v12 = [a1 dateSent];
  sub_1B77FF928();

  v13 = [a1 subject];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1B7800868();
    v93 = v16;
    v94 = v15;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v17 = [a1 senderDomain];
  v18 = sub_1B7800868();
  v91 = v19;
  v92 = v18;

  v20 = [a1 fromEmailAddress];
  v21 = sub_1B7800868();
  v89 = v22;
  v90 = v21;

  v23 = [a1 fromDisplayName];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1B7800868();
    v87 = v26;
    v88 = v25;
  }

  else
  {
    v87 = 0;
    v88 = 0;
  }

  v27 = [a1 toEmailAddress];
  v28 = sub_1B7800868();
  v85 = v29;
  v86 = v28;

  v30 = [a1 toDisplayName];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1B7800868();
    v83 = v33;
    v84 = v32;
  }

  else
  {
    v83 = 0;
    v84 = 0;
  }

  v34 = [a1 replyToEmailAddress];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1B7800868();
    v81 = v37;
    v82 = v36;
  }

  else
  {
    v81 = 0;
    v82 = 0;
  }

  v38 = [a1 replyToDisplayName];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1B7800868();
    v79 = v41;
    v80 = v40;
  }

  else
  {
    v79 = 0;
    v80 = 0;
  }

  v42 = sub_1B7800838();
  [a1 willAccessValueForKey_];

  v43 = [a1 primitiveDataSource];
  v44 = sub_1B7800838();
  [a1 didAccessValueForKey_];

  v45 = [v43 shortValue];
  if (v45 > 1)
  {
    __break(1u);
  }

  else
  {
    v46 = ManagedFoundInMailItem.orderDetails.getter();
    v77 = v9;
    sub_1B75EBCFC(sub_1B7488AA8, 0, v46);
    v47 = v5;
    v49 = v48;

    v78 = sub_1B723B7C8(v49);

    v50 = ManagedFoundInMailItem.spotlightUniqueIdentifiers.getter();
    sub_1B75EC0BC(sub_1B7488AE0, 0, v50);
    v76 = v45;
    v52 = v51;

    v53 = sub_1B723B8A8(v52);

    v54 = type metadata accessor for FoundInMailItem();
    v55 = &a2[v54[6]];
    v56 = &a2[v54[9]];
    v57 = v4;
    v58 = &a2[v54[11]];
    v59 = v7;
    v60 = &a2[v54[12]];
    v61 = v11;
    v62 = &a2[v54[13]];
    v63 = v54[16];
    *a2 = v77;
    *(a2 + 1) = v61;
    (*(v47 + 32))(&a2[v54[5]], v59, v57);
    v64 = v93;
    *v55 = v94;
    v55[1] = v64;
    v65 = &a2[v54[7]];
    v66 = v91;
    *v65 = v92;
    v65[1] = v66;
    v67 = &a2[v54[8]];
    v68 = v89;
    *v67 = v90;
    v67[1] = v68;
    v69 = v87;
    *v56 = v88;
    v56[1] = v69;
    v70 = &a2[v54[10]];
    v71 = v85;
    *v70 = v86;
    v70[1] = v71;
    v72 = v83;
    *v58 = v84;
    v58[1] = v72;
    v73 = v81;
    *v60 = v82;
    v60[1] = v73;
    v74 = v79;
    *v62 = v80;
    v62[1] = v74;
    a2[v54[14]] = v76;
    *&a2[v54[15]] = v78;
    *&a2[v63] = v53;
  }
}

id static ManagedFoundInMailItem.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedFoundInMailItem;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t static ManagedFoundInMailItem.backingEmailVerificationDuePredicate(now:)(uint64_t a1)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = &v28 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = &v28 - v6;
  v7 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFB08();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B77FFC88();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B77FF988();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x1E6969830], v10);
  sub_1B77FFB18();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 56))(v28, 1, 1, v14);
  v22 = sub_1B77FFCF8();
  (*(*(v22 - 8) + 56))(v29, 1, 1, v22);
  sub_1B77FECD8();
  v23 = v30;
  sub_1B77FFC08();
  result = (*(v19 + 48))(v23, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B7489260(v9, type metadata accessor for Duration);
    (*(v15 + 8))(v17, v14);
    (*(v19 + 32))(v21, v23, v18);
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1B7807CD0;
    v26 = sub_1B77FF8B8();
    *(v25 + 56) = sub_1B7205540(0, &qword_1EDAF93C8);
    *(v25 + 64) = sub_1B7262CF4(&qword_1EDAF93C0, &qword_1EDAF93C8);
    *(v25 + 32) = v26;
    v27 = sub_1B78010E8();
    (*(v19 + 8))(v21, v18);
    return v27;
  }

  return result;
}

uint64_t sub_1B7489124(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B748916C(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1B8CA5DC0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1B7253100(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_1B7801958();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t sub_1B7489260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B74892C4()
{
  result = qword_1EB995688;
  if (!qword_1EB995688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995688);
  }

  return result;
}

void ManagedOrderData.__allocating_init(data:context:)(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(v4) initWithContext_];
  v9 = sub_1B77FF598();
  [v8 setData_];

  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a2);
LABEL_13:
      [v8 setDataLength_];

      sub_1B720A388(a1, a2);
      return;
    }

    goto LABEL_9;
  }

  if (v10 != 2)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v11 = v12 - v13;
  if (!__OFSUB__(v12, v13))
  {
    if (v11 >= 0xFFFFFFFF80000000)
    {
      if (v11 <= 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_9:
      v11 = (HIDWORD(a1) - a1);
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
}

id ManagedOrderData.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderData.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderData.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit16ManagedOrderData;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderData.dictionaryFetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit16ManagedOrderData;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);
  [v0 setResultType_];
  return v0;
}

id static ManagedOrderData.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

id ManagedInternalTransaction.applePayInsight.getter()
{
  v1 = [v0 insightsObject];
  v2 = [v1 applePayInsightObject];

  return v2;
}

id ManagedApplePayTransactionInsight.tokenType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 tokenTypeValue];
  if (result > 2)
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t ManagedApplePayTransactionInsight.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = [v2 locationLatitudeValue];
  if (v11 && (v12 = v11, [v11 doubleValue], v14 = v13, v12, (v15 = objc_msgSend(v2, sel_locationLongitudeValue)) != 0) && (v16 = v15, objc_msgSend(v15, sel_doubleValue), v18 = v17, v16, (v19 = objc_msgSend(v2, sel_locationHorizontalAccuracyValue)) != 0) && (v20 = v19, objc_msgSend(v19, sel_doubleValue), v22 = v21, v20, v22 >= 0.0) && (v23 = objc_msgSend(v2, sel_locationDate)) != 0)
  {
    v24 = v23;
    sub_1B77FF928();

    v25 = *(v5 + 32);
    v25(v10, v8, v4);
    v26 = [v2 locationAltitudeValue];
    v27 = -1.0;
    v28 = -1.0;
    if (v26)
    {
      v29 = v26;
      [v26 doubleValue];
      v28 = v30;
    }

    v31 = [v2 locationVerticalAccuracyValue];
    if (v31)
    {
      v32 = v31;
      [v31 doubleValue];
      v27 = v33;
    }

    v34 = type metadata accessor for ApplePayTransactionInsight.Location(0);
    v25((a1 + *(v34 + 36)), v10, v4);
    *a1 = v14;
    *(a1 + 8) = v18;
    *(a1 + 16) = v28;
    *(a1 + 24) = v22;
    *(a1 + 32) = v27;
    return (*(*(v34 - 8) + 56))(a1, 0, 1, v34);
  }

  else
  {
    v36 = type metadata accessor for ApplePayTransactionInsight.Location(0);
    v37 = *(*(v36 - 8) + 56);

    return v37(a1, 1, 1, v36);
  }
}

id ManagedApplePayTransactionInsight.adamIdentifier.getter()
{
  v1 = [v0 adamIdentifierValue];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 longLongValue];

  return v3;
}

uint64_t ApplePayTransactionInsight.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v232 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v155 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v155 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v155 - v13;
  v15 = [a1 paymentHash];
  v228 = sub_1B7800868();
  v17 = v16;

  v18 = [a1 transactionDate];
  if (v18)
  {
    v19 = v18;
    sub_1B77FF928();

    v20 = sub_1B77FF988();
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  }

  else
  {
    v21 = sub_1B77FF988();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  }

  v22 = [a1 merchantName];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1B7800868();
    v225 = v25;
    v226 = v24;
  }

  else
  {
    v225 = 0;
    v226 = 0;
  }

  v26 = [a1 merchantRawName];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1B7800868();
    v223 = v29;
    v224 = v28;
  }

  else
  {
    v223 = 0;
    v224 = 0;
  }

  v30 = [a1 industryCategory];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1B7800868();
    v221 = v33;
    v222 = v32;
  }

  else
  {
    v221 = 0;
    v222 = 0;
  }

  v34 = [a1 industryCodeValue];
  v35 = v34;
  if (v34)
  {
    v220 = [v34 shortValue];
  }

  else
  {
    v220 = 0;
  }

  v36 = [a1 merchantType];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1B7800868();
    v218 = v39;
    v219 = v38;
  }

  else
  {
    v218 = 0;
    v219 = 0;
  }

  v40 = [a1 merchantCountryCode];
  if (v40)
  {
    v41 = v40;
    v217 = sub_1B7800868();
    v216 = v42;
  }

  else
  {
    v217 = 0;
    v216 = 0;
  }

  v43 = [a1 terminalIdentifier];
  if (v43)
  {
    v44 = v43;
    v215 = sub_1B7800868();
    v214 = v45;
  }

  else
  {
    v215 = 0;
    v214 = 0;
  }

  v46 = [a1 merchantAdditionalData];
  if (v46)
  {
    v47 = v46;
    v213 = sub_1B7800868();
    v212 = v48;
  }

  else
  {
    v213 = 0;
    v212 = 0;
  }

  v49 = [a1 paymentNetwork];
  if (v49)
  {
    v50 = v49;
    v211 = sub_1B7800868();
    v210 = v51;
  }

  else
  {
    v211 = 0;
    v210 = 0;
  }

  v52 = [a1 tokenTypeValue];
  if (v52 > 2)
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    v209 = v52;
    v53 = [a1 isCoarseLocationValue];
    if (v53)
    {
      v54 = v53;
      v208 = [v53 BOOLValue];
    }

    else
    {
      v208 = 2;
    }

    ManagedApplePayTransactionInsight.location.getter(v11);
    v55 = [a1 merchantIdentifier];
    if (v55)
    {
      v56 = v55;
      v207 = sub_1B7800868();
      v206 = v57;
    }

    else
    {
      v207 = 0;
      v206 = 0;
    }

    v58 = [a1 merchantRawCANL];
    if (v58)
    {
      v59 = v58;
      v205 = sub_1B7800868();
      v204 = v60;
    }

    else
    {
      v205 = 0;
      v204 = 0;
    }

    v61 = [a1 merchantRawCity];
    if (v61)
    {
      v62 = v61;
      v203 = sub_1B7800868();
      v202 = v63;
    }

    else
    {
      v203 = 0;
      v202 = 0;
    }

    v64 = [a1 merchantRawState];
    if (v64)
    {
      v65 = v64;
      v201 = sub_1B7800868();
      v200 = v66;
    }

    else
    {
      v201 = 0;
      v200 = 0;
    }

    v67 = [a1 merchantRawCountry];
    if (v67)
    {
      v68 = v67;
      v199 = sub_1B7800868();
      v198 = v69;
    }

    else
    {
      v199 = 0;
      v198 = 0;
    }

    v70 = [a1 merchantCity];
    if (v70)
    {
      v71 = v70;
      v197 = sub_1B7800868();
      v196 = v72;
    }

    else
    {
      v197 = 0;
      v196 = 0;
    }

    v73 = [a1 merchantZip];
    if (v73)
    {
      v74 = v73;
      v195 = sub_1B7800868();
      v194 = v75;
    }

    else
    {
      v195 = 0;
      v194 = 0;
    }

    v76 = [a1 merchantState];
    v229 = v14;
    if (v76)
    {
      v77 = v76;
      v193 = sub_1B7800868();
      v192 = v78;
    }

    else
    {
      v193 = 0;
      v192 = 0;
    }

    v79 = [a1 merchantCleanConfidenceLevelValue];
    v80 = v79;
    v227 = v17;
    if (v79)
    {
      v191 = [v79 &selRef_setLastUnregisterRequestAttemptDate_];
    }

    else
    {
      v191 = 0;
    }

    ManagedApplePayTransactionInsight.rewards.getter(v233);
    v189 = v233[1];
    v190 = v233[0];
    v188 = v234;
    v187 = v235;
    v81 = [a1 adamIdentifierValue];
    v82 = v81;
    if (v81)
    {
      v186 = [v81 longLongValue];
    }

    else
    {
      v186 = 0;
    }

    v83 = [a1 webURL];
    if (v83)
    {
      v84 = v83;
      sub_1B77FF478();

      v85 = 0;
    }

    else
    {
      v85 = 1;
    }

    v86 = sub_1B77FF4F8();
    v87 = *(v86 - 8);
    v88 = *(v87 + 56);
    v89 = v88;
    v181 = v87 + 56;
    v88(v8, v85, 1, v86);
    v90 = [a1 webMerchantIdentifier];
    if (v90)
    {
      v91 = v90;
      v185 = sub_1B7800868();
      v184 = v92;
    }

    else
    {
      v185 = 0;
      v184 = 0;
    }

    v231 = v8;
    v93 = [a1 webMerchantName];
    if (v93)
    {
      v94 = v93;
      v183 = sub_1B7800868();
      v182 = v95;
    }

    else
    {
      v183 = 0;
      v182 = 0;
    }

    v230 = v11;
    v180 = [a1 isIssuerInstallmentTransaction];
    v96 = [a1 issuerInstallmentManagementURL];
    if (v96)
    {
      v97 = v96;
      sub_1B77FF478();

      v98 = 0;
    }

    else
    {
      v98 = 1;
    }

    v179 = v82 == 0;
    v178 = v80 == 0;
    v177 = v35 == 0;

    v89(v232, v98, 1, v86);
    v99 = type metadata accessor for ApplePayTransactionInsight(0);
    v100 = v99[5];
    v176 = v100;
    v101 = sub_1B77FF988();
    (*(*(v101 - 8) + 56))(a2 + v100, 1, 1, v101);
    v102 = v99[7];
    v173 = (a2 + v99[6]);
    v174 = (a2 + v102);
    v103 = v99[9];
    v171 = (a2 + v99[8]);
    v172 = (a2 + v103);
    v104 = v99[11];
    v169 = (a2 + v99[10]);
    v170 = (a2 + v104);
    v105 = v99[13];
    v166 = (a2 + v99[12]);
    v168 = (a2 + v105);
    v167 = (a2 + v99[14]);
    v106 = v99[17];
    v175 = v99[16];
    v165 = v106;
    v107 = type metadata accessor for ApplePayTransactionInsight.Location(0);
    (*(*(v107 - 8) + 56))(a2 + v106, 1, 1, v107);
    v108 = v99[19];
    v161 = (a2 + v99[18]);
    v162 = (a2 + v108);
    v109 = v99[21];
    v158 = (a2 + v99[20]);
    v160 = (a2 + v109);
    v110 = (a2 + v99[22]);
    v157 = (a2 + v99[23]);
    v111 = (a2 + v99[24]);
    v155 = (a2 + v99[25]);
    v112 = a2 + v99[26];
    v113 = a2 + v99[27];
    *(v113 + 25) = 0u;
    *v113 = 0u;
    *(v113 + 1) = 0u;
    v114 = v99[28];
    v163 = v99[29];
    v115 = a2 + v114;
    v89(a2 + v163, 1, 1, v86);
    v116 = v99[31];
    v156 = (a2 + v99[30]);
    v159 = (a2 + v116);
    v164 = v99[33];
    v89(a2 + v164, 1, 1, v86);
    v117 = v227;
    *a2 = v228;
    a2[1] = v117;
    sub_1B7213740(v229, a2 + v176, &qword_1EB98EBD0);
    v118 = v225;
    v119 = v173;
    *v173 = v226;
    v119[1] = v118;
    v120 = v223;
    v121 = v174;
    *v174 = v224;
    v121[1] = v120;
    v122 = v221;
    v123 = v171;
    *v171 = v222;
    v123[1] = v122;
    v124 = v172;
    *v172 = v220;
    *(v124 + 2) = v177;
    v125 = v218;
    v126 = v169;
    *v169 = v219;
    v126[1] = v125;
    v127 = v170;
    v128 = v216;
    *v170 = v217;
    v127[1] = v128;
    v129 = v166;
    v130 = v214;
    *v166 = v215;
    v129[1] = v130;
    v131 = v168;
    v132 = v212;
    *v168 = v213;
    v131[1] = v132;
    v133 = v167;
    v134 = v210;
    *v167 = v211;
    v133[1] = v134;
    *(a2 + v99[15]) = v209;
    *(a2 + v175) = v208;
    sub_1B7213740(v230, a2 + v165, &qword_1EB990980);
    v135 = v161;
    v136 = v206;
    *v161 = v207;
    v135[1] = v136;
    v137 = v162;
    v138 = v204;
    *v162 = v205;
    v137[1] = v138;
    v139 = v158;
    v140 = v202;
    *v158 = v203;
    v139[1] = v140;
    v141 = v160;
    v142 = v200;
    *v160 = v201;
    v141[1] = v142;
    v143 = v198;
    *v110 = v199;
    v110[1] = v143;
    v144 = v157;
    v145 = v196;
    *v157 = v197;
    v144[1] = v145;
    v146 = v194;
    *v111 = v195;
    v111[1] = v146;
    v147 = v155;
    v148 = v192;
    *v155 = v193;
    v147[1] = v148;
    *v112 = v191;
    v112[2] = v178;

    v149 = v189;
    *v113 = v190;
    *(v113 + 1) = v149;
    *(v113 + 4) = v188;
    v113[40] = v187;
    *v115 = v186;
    v115[8] = v179;
    sub_1B7213740(v231, a2 + v163, &unk_1EB994C70);
    v150 = v156;
    v151 = v184;
    *v156 = v185;
    v150[1] = v151;
    v152 = v159;
    v153 = v182;
    *v159 = v183;
    v152[1] = v153;
    *(a2 + v99[32]) = v180;
    return sub_1B7213740(v232, a2 + v164, &unk_1EB994C70);
  }

  return result;
}

void sub_1B748ABBC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 paymentHash];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B748AC14(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &qword_1EB98EBD0);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_1B748AD50@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1B748AE08(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &unk_1EB994C70);
  v11 = *a2;
  v12 = sub_1B77FF4F8();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF3F8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id ManagedApplePayTransactionInsight.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayTransactionInsight.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayTransactionInsight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedApplePayTransactionInsight.__allocating_init(insight:context:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  ManagedApplePayTransactionInsight.update(with:)(a1);

  sub_1B748D0E8(a1, type metadata accessor for ApplePayTransactionInsight);
  return v5;
}

void ManagedApplePayTransactionInsight.update(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v56 - v14;
  v16 = sub_1B7800838();
  [v2 setPaymentHash_];

  v17 = type metadata accessor for ApplePayTransactionInsight(0);
  sub_1B7205588(a1 + v17[5], v15, &qword_1EB98EBD0);
  v18 = sub_1B77FF988();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v15, 1, v18) != 1)
  {
    v20 = sub_1B77FF8B8();
    (*(v19 + 8))(v15, v18);
  }

  [v2 setTransactionDate_];

  if (*(a1 + v17[6] + 8))
  {
    v21 = sub_1B7800838();
  }

  else
  {
    v21 = 0;
  }

  [v2 setMerchantName_];

  if (*(a1 + v17[7] + 8))
  {
    v22 = sub_1B7800838();
  }

  else
  {
    v22 = 0;
  }

  [v2 setMerchantRawName_];

  if (*(a1 + v17[8] + 8))
  {
    v23 = sub_1B7800838();
  }

  else
  {
    v23 = 0;
  }

  [v2 setIndustryCategory_];

  v24 = (a1 + v17[9]);
  if (v24[1])
  {
    v25 = 0;
  }

  else
  {
    v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  [v2 setIndustryCodeValue_];

  if (*(a1 + v17[10] + 8))
  {
    v26 = sub_1B7800838();
  }

  else
  {
    v26 = 0;
  }

  [v2 setMerchantType_];

  if (*(a1 + v17[11] + 8))
  {
    v27 = sub_1B7800838();
  }

  else
  {
    v27 = 0;
  }

  [v2 setMerchantCountryCode_];

  if (*(a1 + v17[12] + 8))
  {
    v28 = sub_1B7800838();
  }

  else
  {
    v28 = 0;
  }

  [v2 setTerminalIdentifier_];

  if (*(a1 + v17[13] + 8))
  {
    v29 = sub_1B7800838();
  }

  else
  {
    v29 = 0;
  }

  [v2 setMerchantAdditionalData_];

  if (*(a1 + v17[14] + 8))
  {
    v30 = sub_1B7800838();
  }

  else
  {
    v30 = 0;
  }

  [v2 setPaymentNetwork_];

  [v2 setTokenTypeValue_];
  v31 = *(a1 + v17[16]);
  if (v31 == 2)
  {
    v32 = 0;
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  [v2 setIsCoarseLocationValue_];

  sub_1B7205588(a1 + v17[17], v12, &qword_1EB990980);
  ManagedApplePayTransactionInsight.location.setter(v12);
  if (*(a1 + v17[18] + 8))
  {
    v33 = sub_1B7800838();
  }

  else
  {
    v33 = 0;
  }

  [v2 setMerchantIdentifier_];

  if (*(a1 + v17[19] + 8))
  {
    v34 = sub_1B7800838();
  }

  else
  {
    v34 = 0;
  }

  [v2 setMerchantRawCANL_];

  if (*(a1 + v17[20] + 8))
  {
    v35 = sub_1B7800838();
  }

  else
  {
    v35 = 0;
  }

  [v2 setMerchantRawCity_];

  if (*(a1 + v17[21] + 8))
  {
    v36 = sub_1B7800838();
  }

  else
  {
    v36 = 0;
  }

  [v2 setMerchantRawState_];

  if (*(a1 + v17[22] + 8))
  {
    v37 = sub_1B7800838();
  }

  else
  {
    v37 = 0;
  }

  [v2 setMerchantRawCountry_];

  if (*(a1 + v17[23] + 8))
  {
    v38 = sub_1B7800838();
  }

  else
  {
    v38 = 0;
  }

  [v2 setMerchantCity_];

  if (*(a1 + v17[24] + 8))
  {
    v39 = sub_1B7800838();
  }

  else
  {
    v39 = 0;
  }

  [v2 setMerchantZip_];

  if (*(a1 + v17[25] + 8))
  {
    v40 = sub_1B7800838();
  }

  else
  {
    v40 = 0;
  }

  [v2 setMerchantState_];

  v41 = (a1 + v17[26]);
  if (v41[1])
  {
    v42 = 0;
  }

  else
  {
    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  [v2 setMerchantCleanConfidenceLevelValue_];

  v43 = a1 + v17[27];
  v44 = *(v43 + 32);
  v45 = *(v43 + 40);
  v46 = *(v43 + 16);
  v56[0] = *v43;
  v56[1] = v46;
  v57 = v44;
  v58 = v45;

  ManagedApplePayTransactionInsight.rewards.setter(v56);
  v47 = a1 + v17[28];
  if (*(v47 + 8))
  {
    v48 = 0;
  }

  else
  {
    v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  }

  [v2 setAdamIdentifierValue_];

  sub_1B7205588(a1 + v17[29], v9, &unk_1EB994C70);
  v49 = sub_1B77FF4F8();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  v52 = 0;
  if (v51(v9, 1, v49) != 1)
  {
    v52 = sub_1B77FF3F8();
    (*(v50 + 8))(v9, v49);
  }

  [v2 setWebURL_];

  if (*(a1 + v17[30] + 8))
  {
    v53 = sub_1B7800838();
  }

  else
  {
    v53 = 0;
  }

  [v2 setWebMerchantIdentifier_];

  if (*(a1 + v17[31] + 8))
  {
    v54 = sub_1B7800838();
  }

  else
  {
    v54 = 0;
  }

  [v2 setWebMerchantName_];

  [v2 setIsIssuerInstallmentTransaction_];
  sub_1B7205588(a1 + v17[33], v7, &unk_1EB994C70);
  if (v51(v7, 1, v49) == 1)
  {
    v55 = 0;
  }

  else
  {
    v55 = sub_1B77FF3F8();
    (*(v50 + 8))(v7, v49);
  }

  [v2 setIssuerInstallmentManagementURL_];
}

void ManagedApplePayTransactionInsight.isCoarseLocation.setter(char a1)
{
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v3 = v2;
  [v1 setIsCoarseLocationValue_];
}

uint64_t ManagedApplePayTransactionInsight.location.setter(uint64_t a1)
{
  v2 = sub_1B77FF988();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v44 - v10);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v44 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v44 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v44 - v18);
  v20 = a1;
  sub_1B7205588(a1, &v44 - v18, &qword_1EB990980);
  v21 = type metadata accessor for ApplePayTransactionInsight.Location(0);
  v22 = *(*(v21 - 8) + 48);
  if (v22(v19, 1, v21) == 1)
  {
    sub_1B748D080(v19);
    v23 = 0;
  }

  else
  {
    v24 = *v19;
    sub_1B748D0E8(v19, type metadata accessor for ApplePayTransactionInsight.Location);
    v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v25 = v48;
  [v48 setLocationLatitudeValue_];

  sub_1B7205588(v20, v17, &qword_1EB990980);
  if (v22(v17, 1, v21) == 1)
  {
    sub_1B748D080(v17);
    v26 = 0;
  }

  else
  {
    v27 = v17[1];
    sub_1B748D0E8(v17, type metadata accessor for ApplePayTransactionInsight.Location);
    v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) &selRef_positionIndex + 3];
  }

  [v25 setLocationLongitudeValue_];

  v28 = v20;
  sub_1B7205588(v20, v14, &qword_1EB990980);
  if (v22(v14, 1, v21) == 1)
  {
    sub_1B748D080(v14);
    v29 = 0;
    v30 = 0x1E696A000;
  }

  else
  {
    v31 = v14[3];
    sub_1B748D0E8(v14, type metadata accessor for ApplePayTransactionInsight.Location);
    v30 = 0x1E696A000uLL;
    v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) &selRef_positionIndex + 3];
  }

  [v25 setLocationHorizontalAccuracyValue_];

  sub_1B7205588(v28, v11, &qword_1EB990980);
  if (v22(v11, 1, v21) == 1)
  {
    sub_1B748D080(v11);
    v32 = 0;
  }

  else
  {
    v33 = v11[4];
    sub_1B748D0E8(v11, type metadata accessor for ApplePayTransactionInsight.Location);
    v32 = [objc_allocWithZone(*(v30 + 3480)) &selRef_positionIndex + 3];
  }

  [v25 setLocationVerticalAccuracyValue_];

  v34 = v47;
  sub_1B7205588(v28, v47, &qword_1EB990980);
  if (v22(v34, 1, v21) == 1)
  {
    sub_1B748D080(v34);
    v35 = 0;
  }

  else
  {
    v36 = *(v34 + 16);
    sub_1B748D0E8(v34, type metadata accessor for ApplePayTransactionInsight.Location);
    v35 = [objc_allocWithZone(*(v30 + 3480)) &selRef_positionIndex + 3];
  }

  [v25 setLocationAltitudeValue_];

  v37 = v49;
  sub_1B7205588(v28, v49, &qword_1EB990980);
  if (v22(v37, 1, v21) == 1)
  {
    sub_1B748D080(v37);
    v38 = 0;
  }

  else
  {
    v39 = *(v21 + 36);
    v41 = v44;
    v40 = v45;
    v42 = v46;
    (*(v45 + 16))(v44, v37 + v39, v46);
    sub_1B748D0E8(v37, type metadata accessor for ApplePayTransactionInsight.Location);
    v38 = sub_1B77FF8B8();
    (*(v40 + 8))(v41, v42);
  }

  [v25 setLocationDate_];

  return sub_1B748D080(v28);
}

void sub_1B748C14C(int a1, SEL *a2)
{
  if ((a1 & 0x10000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v5 = v4;
  [v2 *a2];
}

void ManagedApplePayTransactionInsight.rewards.setter(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v13 = *(a1 + 40);
    v3 = a1[2];
    v12 = a1[3];
    v5 = *a1;
    v4 = a1[1];
    v6 = HIDWORD(*a1);
    v7 = HIWORD(*a1);
    LODWORD(v15) = *a1;
    WORD2(v15) = v6;
    HIWORD(v15) = v7;
    v16 = v4;
    LODWORD(v17) = v3;
    v8 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
    [v11 setRewardsAmount_];

    v15 = v5;
    v16 = v4;
    v17 = v3;
    v18 = v12;
    v19 = v2;
    v20 = v13;
    sub_1B748D148(&v15, v14);
    v9 = sub_1B7800838();

    [v11 setRewardsCurrency_];

    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

    [v11 setRewardsEligibilityReasonValue_];
  }

  else
  {
    [v1 setRewardsAmount_];
    [v1 setRewardsCurrency_];

    [v1 setRewardsEligibilityReasonValue_];
  }
}

void ManagedApplePayTransactionInsight.adamIdentifier.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  }

  v4 = v3;
  [v2 setAdamIdentifierValue_];
}

uint64_t ManagedApplePayTransactionInsight.isCoarseLocation.getter()
{
  v1 = [v0 isCoarseLocationValue];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

uint64_t sub_1B748C490(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 shortValue];

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v3 == 0) << 16);
}

double ManagedApplePayTransactionInsight.rewards.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 rewardsAmount];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v2 rewardsCurrency];
  if (!v6)
  {

LABEL_10:
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v7 = v6;
  v8 = sub_1B7800868();
  v10 = v9;

  v11 = [v2 rewardsEligibilityReasonValue];
  if (!v11)
  {

    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 integerValue];
  if (v13 == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13 == 1;
  }

  [v5 decimalValue];
  CurrencyAmount.init(_:currencyCode:)(v18, *(&v18 + 1), v19, v8, v10, &v18);

  v15 = v20;
  result = *&v18;
  v17 = v19;
  *a1 = v18;
  *(a1 + 16) = v17;
  *(a1 + 32) = v15;
  *(a1 + 40) = v14;
  return result;
}

uint64_t sub_1B748C638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B7205588(a1, &v6 - v3, &qword_1EB990980);
  return ManagedApplePayTransactionInsight.location.setter(v4);
}

void (*ManagedApplePayTransactionInsight.location.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  ManagedApplePayTransactionInsight.location.getter(v4);
  return sub_1B748C7A0;
}

void sub_1B748C7A0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B7205588(*(a1 + 16), v2, &qword_1EB990980);
    ManagedApplePayTransactionInsight.location.setter(v2);
    sub_1B748D080(v3);
  }

  else
  {
    ManagedApplePayTransactionInsight.location.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

void (*ManagedApplePayTransactionInsight.industryCode.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 industryCodeValue];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 shortValue];
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = v6;
  *(a1 + 10) = v5 == 0;
  return sub_1B748C8C4;
}

void sub_1B748C8D0(id *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [*a1 isCoarseLocationValue];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void sub_1B748C938(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v5 = v4;
  [v3 setIsCoarseLocationValue_];
}

void (*ManagedApplePayTransactionInsight.isCoarseLocation.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 isCoarseLocationValue];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 2;
  }

  *(a1 + 8) = v6;
  return sub_1B748CA4C;
}

void sub_1B748CA4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v4 = v3;
  [*a1 setIsCoarseLocationValue_];
}

void sub_1B748CAD4(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 shortValue];
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 2) = v5 == 0;
}

void sub_1B748CB48(__int16 *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v8 = v7;
  [v6 *a5];
}

void (*ManagedApplePayTransactionInsight.merchantCleanConfidenceLevel.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 merchantCleanConfidenceLevelValue];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 shortValue];
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = v6;
  *(a1 + 10) = v5 == 0;
  return sub_1B748CC74;
}

void sub_1B748CC80(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (*(a1 + 10))
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v6 = v5;
  [*a1 *a3];
}

void sub_1B748CD0C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 adamIdentifierValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 longLongValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 == 0;
}

void sub_1B748CD84(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  }

  v4 = v3;
  [v2 setAdamIdentifierValue_];
}

void (*ManagedApplePayTransactionInsight.adamIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 adamIdentifierValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 longLongValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return sub_1B748CEA0;
}

void sub_1B748CEA0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  }

  v3 = v2;
  [*(a1 + 16) setAdamIdentifierValue_];
}

void sub_1B748CF24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v3;
  v5 = v1;
  v6 = v2;

  ManagedApplePayTransactionInsight.rewards.setter(v4);
}

void (*ManagedApplePayTransactionInsight.rewards.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  ManagedApplePayTransactionInsight.rewards.getter(v3);
  return sub_1B748CFEC;
}

void sub_1B748CFEC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = *(v2 + 40);
  v9[0] = v4;
  v9[1] = v3;
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v7;
  v10 = v8;
  if (a2)
  {

    ManagedApplePayTransactionInsight.rewards.setter(v9);
  }

  else
  {
    ManagedApplePayTransactionInsight.rewards.setter(v9);
  }

  free(v2);
}

uint64_t sub_1B748D080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B748D0E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id (*ManagedApplePayTransactionInsight.tokenType.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 tokenTypeValue];
  if (v4 > 2)
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v4;
    return sub_1B748D25C;
  }

  return result;
}

id static ManagedApplePayTransactionInsight.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit33ManagedApplePayTransactionInsight;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

BOOL ManagedInternalAccount.shouldRefreshScheduledPayments(now:)()
{
  v1 = sub_1B77FF988();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = [v0 lastScheduledPaymentsRefreshDate];
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  sub_1B77FF928();

  (*(v2 + 32))(v7, v5, v1);
  sub_1B77FF808();
  v11 = v10;
  (*(v2 + 8))(v7, v1);
  return v11 >= 3600.0;
}

BOOL sub_1B748D600(uint64_t a1, SEL *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = [v2 *a2];
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  sub_1B77FF928();

  (*(v5 + 32))(v10, v8, v4);
  sub_1B77FF808();
  v14 = v13;
  (*(v5 + 8))(v10, v4);
  return v14 >= 60.0;
}

char *ManagedOrderFulfillment.lineItems.getter(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    return ManagedOrderShippingFulfillment.lineItems.getter();
  }

  v2 = [a1 & 0x7FFFFFFFFFFFFFFFLL lineItemObjects];
  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v3 = sub_1B7800FA8();

  v4 = sub_1B7519CE0(v3);
  sub_1B74D29C8(&v4);

  return v4;
}

uint64_t ManagedOrderFulfillment.isStatusTerminal.getter(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = ManagedOrderPickupFulfillment.status.getter();
    v2 = v1 >= 5u;
    v3 = 8;
  }

  else
  {
    v1 = ManagedOrderShippingFulfillment.status.getter();
    v2 = v1 >= 7u;
    v3 = 48;
  }

  v4 = v3 >> v1;
  if (v2)
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

uint64_t static ManagedOrderFulfillment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (a2 < 0)
  {
    return 0;
  }

  sub_1B748E338();
  return sub_1B7801558() & 1;
}

uint64_t ManagedOrderFulfillment.hashValue.getter(unint64_t a1)
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](a1 >> 63);
  sub_1B7801568();
  return sub_1B7802368();
}

uint64_t sub_1B748D980()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1 >> 63);
  sub_1B7801568();
  return sub_1B7802368();
}

uint64_t sub_1B748DA18()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1 >> 63);
  sub_1B7801568();
  return sub_1B7802368();
}

uint64_t sub_1B748DA68(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (v2 < 0)
  {
    return 0;
  }

  sub_1B748E338();
  return sub_1B7801558() & 1;
}

id (*ManagedOrderFulfillment.positionIndex.modify(unint64_t *a1, unint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  v2 = (a1 + 1);
  if ((a2 & 0x8000000000000000) != 0)
  {
    v3 = [a2 & 0x7FFFFFFFFFFFFFFFLL positionIndex];
    v4 = sub_1B748DBA8;
  }

  else
  {
    v3 = [a2 positionIndex];
    v4 = sub_1B748DB90;
  }

  *v2 = v3;
  return v4;
}

unint64_t ManagedOrderFulfillment.init(_:bundle:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for RawOrderPickupFulfillment();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for RawOrderShippingFulfillment();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B748E3EC(a1, v20, type metadata accessor for RawOrderFulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B748E384(v20, v11, type metadata accessor for RawOrderPickupFulfillment);
    type metadata accessor for ManagedOrderPickupFulfillment();
    sub_1B748E3EC(v11, v9, type metadata accessor for RawOrderPickupFulfillment);
    v21 = sub_1B74C5ED8(v9, a2, a3);

    sub_1B748E454(a1, type metadata accessor for RawOrderFulfillment);
    sub_1B748E454(v11, type metadata accessor for RawOrderPickupFulfillment);
    return v21 | 0x8000000000000000;
  }

  else
  {
    sub_1B748E384(v20, v17, type metadata accessor for RawOrderShippingFulfillment);
    type metadata accessor for ManagedOrderShippingFulfillment();
    sub_1B748E3EC(v17, v15, type metadata accessor for RawOrderShippingFulfillment);
    v23 = sub_1B74D2B48(v15, a2, a3);

    sub_1B748E454(a1, type metadata accessor for RawOrderFulfillment);
    sub_1B748E454(v17, type metadata accessor for RawOrderShippingFulfillment);
    return v23;
  }
}

uint64_t ManagedOrderFulfillment.rawOrderFulfillment.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1 < 0)
  {
    ManagedOrderPickupFulfillment.rawOrderPickupFulfillment.getter(a2);
  }

  else
  {
    ManagedOrderShippingFulfillment.rawOrderShippingFulfillment.getter(a2);
  }

  type metadata accessor for RawOrderFulfillment();

  return swift_storeEnumTagMultiPayload();
}

id ManagedOrderFulfillment.objectID.getter(uint64_t a1)
{
  v1 = [a1 & 0x7FFFFFFFFFFFFFFFLL objectID];

  return v1;
}

uint64_t ManagedOrderFulfillment.fulfillmentIdentifier.getter(uint64_t a1)
{
  v1 = [a1 & 0x7FFFFFFFFFFFFFFFLL fulfillmentIdentifier];
  v2 = sub_1B7800868();

  return v2;
}

uint64_t ManagedOrderFulfillment.archiveDate.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v17 = [a1 & 0x7FFFFFFFFFFFFFFFLL pickedUpDate];
    if (v17)
    {
      v18 = v17;
      sub_1B77FF928();

      v19 = sub_1B77FF988();
      (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
    }

    else
    {
      v26 = sub_1B77FF988();
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    }

    v27 = v7;
    return sub_1B7205340(v27, a2);
  }

  v13 = ManagedOrderShippingFulfillment.status.getter();
  if (v13 == 4)
  {
    v20 = [a1 deliveryDate];
    if (v20)
    {
      v21 = v20;
      sub_1B77FF928();

      v22 = sub_1B77FF988();
      (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
    }

    else
    {
      v29 = sub_1B77FF988();
      (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    }

    v27 = v10;
    return sub_1B7205340(v27, a2);
  }

  if (v13 == 5)
  {
    v14 = [a1 shippedDate];
    if (v14)
    {
      v15 = v14;
      sub_1B77FF928();

      v16 = sub_1B77FF988();
      (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
    }

    else
    {
      v28 = sub_1B77FF988();
      (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    }

    v27 = v12;
    return sub_1B7205340(v27, a2);
  }

  v23 = sub_1B77FF988();
  v24 = *(*(v23 - 8) + 56);

  return v24(a2, 1, 1, v23);
}

unint64_t ManagedOrderFulfillment.shippingFulfillment.getter(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = a1;
  return a1;
}

uint64_t ManagedOrderFulfillment.pickupFulfillment.getter(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v1 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  v2 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
  return v1;
}

unint64_t sub_1B748E338()
{
  result = qword_1EDAFC4C0;
  if (!qword_1EDAFC4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAFC4C0);
  }

  return result;
}

uint64_t sub_1B748E384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B748E3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B748E454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B748E4B8()
{
  result = qword_1EB995690;
  if (!qword_1EB995690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995690);
  }

  return result;
}

uint64_t sub_1B748E518(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B748E574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void ManagedOrderImage.__allocating_init(name:url:localizationName:context:extractBackgroundColorWith:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v164 = a7;
  v165 = a6;
  v166 = a5;
  v156 = a4;
  v163 = a2;
  v158 = a1;
  v160 = sub_1B77FF4F8();
  v161 = *(v160 - 8);
  v8 = MEMORY[0x1EEE9AC00](v160);
  v159 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v147 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v147 - v13;
  v15 = sub_1B7800478();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B78006D8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v173 = a3;
  v23 = v162;
  v24 = sub_1B77FF518();
  if (v23)
  {

    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v26 = sub_1B78000B8();
    __swift_project_value_buffer(v26, qword_1EDAFD2D0);
    v27 = v161;
    v28 = v159;
    v29 = v173;
    v30 = v160;
    (*(v161 + 16))(v159, v173, v160);
    v31 = sub_1B7800098();
    v32 = sub_1B78011D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v170[0] = v166;
      *v33 = 136315138;
      v34 = sub_1B77FF4B8();
      v36 = v35;
      v37 = *(v27 + 8);
      v37(v28, v30);
      v38 = sub_1B71A3EF8(v34, v36, v170);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1B7198000, v31, v32, "Could not load image data at %s", v33, 0xCu);
      v39 = v166;
      __swift_destroy_boxed_opaque_existential_1(v166);
      MEMORY[0x1B8CA7A40](v39, -1, -1);
      MEMORY[0x1B8CA7A40](v33, -1, -1);

      sub_1B7205418(v164, &qword_1EB995660);
      v37(v173, v30);
    }

    else
    {

      sub_1B7205418(v164, &qword_1EB995660);
      v63 = *(v27 + 8);
      v63(v29, v30);
      v63(v28, v30);
    }

    return;
  }

  v40 = v25;
  v153 = v12;
  v154 = v14;
  v148 = v22;
  v149 = v18;
  v150 = v20;
  v151 = v16;
  v152 = v15;
  v159 = 0;
  v41 = v24;
  v42 = sub_1B7202C00(MEMORY[0x1E69E7CC0]);
  v155 = v41;
  v43 = createOrderImageSourceWithData(_:_:)(v41, v40, v42);

  v162 = v40;
  if (!v43)
  {

    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v64 = sub_1B78000B8();
    __swift_project_value_buffer(v64, qword_1EDAFD2D0);
    v65 = v161;
    v66 = v153;
    v67 = v173;
    v68 = v160;
    (*(v161 + 16))(v153, v173, v160);
    v69 = sub_1B7800098();
    v70 = sub_1B78011D8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v170[0] = v72;
      *v71 = 136315138;
      v73 = sub_1B77FF4B8();
      v74 = v68;
      v76 = v75;
      v77 = *(v65 + 8);
      v78 = v66;
      v79 = v74;
      v77(v78, v74);
      v80 = sub_1B71A3EF8(v73, v76, v170);

      *(v71 + 4) = v80;
      _os_log_impl(&dword_1B7198000, v69, v70, "Could not create image source at %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x1B8CA7A40](v72, -1, -1);
      MEMORY[0x1B8CA7A40](v71, -1, -1);

      sub_1B720A388(v155, v162);
      sub_1B7205418(v164, &qword_1EB995660);
      v77(v173, v79);
    }

    else
    {

      sub_1B720A388(v155, v162);
      sub_1B7205418(v164, &qword_1EB995660);
      v81 = *(v65 + 8);
      v81(v67, v68);
      v81(v66, v68);
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991170);
  inited = swift_initStackObject();
  v45 = MEMORY[0x1E696E0A8];
  v147 = xmmword_1B7807CD0;
  *(inited + 16) = xmmword_1B7807CD0;
  v46 = *v45;
  *(inited + 32) = v46;
  *(inited + 40) = 0;
  v47 = v46;
  sub_1B7202C18(inited);
  swift_setDeallocating();
  sub_1B7205418(inited + 32, &qword_1EB991178);
  type metadata accessor for CFString(0);
  sub_1B74905D4(&qword_1EB98EFC8, type metadata accessor for CFString);
  v48 = sub_1B7800708();

  v153 = v43;
  v49 = CGImageSourceCopyPropertiesAtIndex(v43, 0, v48);

  if (!v49)
  {

    v51 = v154;
LABEL_23:

    v82 = v160;
    v83 = v173;
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v84 = sub_1B78000B8();
    __swift_project_value_buffer(v84, qword_1EDAFD2D0);
    v85 = v161;
    (*(v161 + 16))(v51, v83, v82);
    v86 = sub_1B7800098();
    v87 = sub_1B78011D8();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v170[0] = v89;
      *v88 = 136315138;
      v90 = sub_1B77FF4B8();
      v91 = v82;
      v93 = v92;
      v94 = *(v85 + 8);
      v95 = v51;
      v96 = v91;
      v94(v95, v91);
      v97 = sub_1B71A3EF8(v90, v93, v170);

      *(v88 + 4) = v97;
      _os_log_impl(&dword_1B7198000, v86, v87, "Could not load image properties at %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x1B8CA7A40](v89, -1, -1);
      MEMORY[0x1B8CA7A40](v88, -1, -1);

      sub_1B720A388(v155, v162);
      sub_1B7205418(v164, &qword_1EB995660);
      v94(v173, v96);
    }

    else
    {

      sub_1B720A388(v155, v162);
      sub_1B7205418(v164, &qword_1EB995660);
      v98 = *(v85 + 8);
      v98(v83, v82);
      v98(v51, v82);
    }

    return;
  }

  objc_opt_self();
  v50 = swift_dynamicCastObjCClass();
  v51 = v154;
  if (!v50)
  {

    goto LABEL_23;
  }

  v170[0] = 0;
  sub_1B7800718();

  v52 = v170[0];
  if (!v170[0])
  {

    goto LABEL_23;
  }

  v53 = 0.0;
  if (*(v170[0] + 16))
  {
    v54 = sub_1B72635A0(*MEMORY[0x1E696DED8]);
    v55 = v152;
    v56 = v151;
    v57 = v19;
    v58 = v149;
    v59 = v148;
    if (v60)
    {
      sub_1B719BDE4(*(v52 + 56) + 32 * v54, v170);
      v61 = swift_dynamicCast();
      ObjCClassFromMetadata = v150;
      if (v61)
      {
        v53 = *&v167;
      }
    }

    else
    {
      ObjCClassFromMetadata = v150;
    }
  }

  else
  {
    v55 = v152;
    v56 = v151;
    v57 = v19;
    ObjCClassFromMetadata = v150;
    v58 = v149;
    v59 = v148;
  }

  if (*(v52 + 16) && (v99 = sub_1B72635A0(*MEMORY[0x1E696DEC8]), (v100 & 1) != 0))
  {
    sub_1B719BDE4(*(v52 + 56) + 32 * v99, v170);

    v101 = swift_dynamicCast();
    if (v101)
    {
      v102 = *&v167;
      goto LABEL_36;
    }
  }

  else
  {
  }

  v102 = 0.0;
LABEL_36:
  v103 = v162;
  if (v53 <= -2147483650.0)
  {
    __break(1u);
    goto LABEL_76;
  }

  if (v53 >= 2147483650.0)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v102 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_77;
  }

  if (v102 <= -2147483650.0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v154 = v57;
  if (v102 >= 2147483650.0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v152 = type metadata accessor for ManagedOrderImageData();
  sub_1B78006C8();
  v104 = v155;
  sub_1B720ABEC(v155, v103);
  v105 = v159;
  sub_1B72B82D4(v104, v103);
  v106 = v59;
  sub_1B720A388(v104, v103);
  sub_1B78006B8();
  v171 = v55;
  v172 = sub_1B74905D4(&qword_1EB98F940, MEMORY[0x1E69663E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v170);
  (*(v56 + 16))(boxed_opaque_existential_1, v58, v55);
  __swift_project_boxed_opaque_existential_1(v170, v171);
  sub_1B77FEDA8();
  (*(v56 + 8))(v58, v55);
  v108 = *(&v167 + 1);
  v56 = v167;
  __swift_destroy_boxed_opaque_existential_1(v170);
  (ObjCClassFromMetadata)[1](v106, v154);
  v109 = v108;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v169.receiver = ObjCClassFromMetadata;
  v169.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedOrderImageData;
  v110 = objc_msgSendSuper2(&v169, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v111 = swift_allocObject();
  *(v111 + 16) = v147;
  v154 = v109;
  v20 = v110;
  v112 = sub_1B77FF598();
  *(v111 + 56) = sub_1B7205540(0, &qword_1EDAF93D0);
  *(v111 + 64) = sub_1B720D718();
  *(v111 + 32) = v112;
  v113 = sub_1B78010E8();
  [v20 setPredicate_];

  v103 = v165;
  v101 = sub_1B7801498();
  if (v105)
  {

    sub_1B720A388(v56, v154);

    sub_1B720A388(v104, v162);
    sub_1B7205418(v164, &qword_1EB995660);
    (*(v161 + 8))(v173, v160);
    return;
  }

  v59 = &off_1E7CAF000;
  v159 = 0;
  if (!(v101 >> 62))
  {
    v114 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_46;
  }

LABEL_80:
  v145 = v59;
  v146 = v101;
  v114 = sub_1B7801958();
  v101 = v146;
  v59 = v145;
LABEL_46:
  v115 = v157;
  v116 = v56;
  if (!v114)
  {

    v119 = [objc_allocWithZone(ObjCClassFromMetadata) v59[85]];
    v120 = v162;
    v121 = sub_1B77FF598();
    [v119 setData_];

    v122 = sub_1B77FF598();
    [v119 setDataHash_];

    v123 = v120 >> 62;
    if ((v120 >> 62) > 1)
    {
      if (v123 != 2)
      {
LABEL_62:
        v124 = 0;
        goto LABEL_63;
      }

      v126 = *(v155 + 16);
      v125 = *(v155 + 24);
      v124 = v125 - v126;
      if (__OFSUB__(v125, v126))
      {
LABEL_84:
        __break(1u);
        return;
      }

      if (v124 < 0xFFFFFFFF80000000)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v124 <= 0x7FFFFFFF)
      {
LABEL_63:
        [v119 setDataLength_];
        [v119 setWidth_];
        [v119 setHeight_];
        goto LABEL_64;
      }

      __break(1u);
    }

    else if (!v123)
    {
      v124 = BYTE6(v162);
      goto LABEL_63;
    }

    v124 = (HIDWORD(v155) - v155);
    if (!__OFSUB__(HIDWORD(v155), v155))
    {
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_62;
  }

  if ((v101 & 0xC000000000000001) != 0)
  {
    v117 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_50;
  }

  if (!*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_83;
  }

  v117 = *(v101 + 32);
LABEL_50:
  v118 = v117;

  v119 = v118;
LABEL_64:
  v127 = [v119 storedBackgroundColorValue];

  if (v127)
  {

    sub_1B720A388(v116, v154);
  }

  else
  {
    sub_1B748402C(v164, &v167);
    if (v168)
    {
      sub_1B71E4C44(&v167, v170);
      v133 = v171;
      v134 = v172;
      __swift_project_boxed_opaque_existential_1(v170, v171);
      v135 = v155;
      v136 = v162;
      v137 = v159;
      v138 = (*(v134 + 8))(v155, v162, v133, v134);
      v159 = v137;
      if (v137)
      {

        sub_1B720A388(v116, v154);

        sub_1B720A388(v135, v136);

        sub_1B7205418(v164, &qword_1EB995660);
        (*(v161 + 8))(v173, v160);
        __swift_destroy_boxed_opaque_existential_1(v170);
        return;
      }

      v142 = v138;
      v143 = objc_allocWithZone(type metadata accessor for StorableColor());
      v144 = StorableColor.init(color:)(v142);
      [v119 setStoredBackgroundColorValue_];
      sub_1B720A388(v116, v154);

      __swift_destroy_boxed_opaque_existential_1(v170);
      v103 = v165;
      v115 = v157;
    }

    else
    {
      sub_1B720A388(v116, v154);

      sub_1B7205418(&v167, &qword_1EB995660);
    }
  }

  v128 = [objc_allocWithZone(v115) initWithContext_];
  [v128 setData_];
  v129 = sub_1B7800838();

  [v128 setName_];

  sub_1B74901D0(v53, v102);
  v130 = v160;
  v131 = v173;
  if (v166)
  {
    v132 = sub_1B7800838();
  }

  else
  {
    v132 = 0;
  }

  v139 = v161;
  [v128 setLocalizationName_];

  v140 = objc_allocWithZone(type metadata accessor for StorableColor());
  swift_deallocPartialClassInstance();
  [v128 setStoredBackgroundColor_];
  v141 = v119;
  [v128 setOrderImageData_];

  sub_1B720A388(v155, v162);
  sub_1B7205418(v164, &qword_1EB995660);
  (*(v139 + 8))(v131, v130);
}

id ManagedOrderImage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderImage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderImage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ManagedOrderImage.ValidationError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

void sub_1B748FE20(SEL *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.super_class = swift_getObjectType();
  v12[0] = 0;
  v11.receiver = v1;
  if (!objc_msgSendSuper2(&v11, *a1, v12))
  {
    v9 = v12[0];
    sub_1B77FF318();

LABEL_5:
    swift_willThrow();
    return;
  }

  v3 = v12[0];
  v4 = [v1 data];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B77FF5B8();
    v8 = v7;

    sub_1B720A388(v6, v8);
    return;
  }

  v10 = [v1 orderImageData];
  if (!v10)
  {
    sub_1B749061C();
    swift_allocError();
    goto LABEL_5;
  }
}

uint64_t sub_1B748FF70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

id ManagedOrderImage.__allocating_init(data:name:size:localizationName:backgroundColor:orderImageData:context:)(uint64_t a1, unint64_t a2, int a3, int a4, int a5, uint64_t a6, void *a7, void *a8, double a9, double a10, void *a11)
{
  v19 = [objc_allocWithZone(v11) initWithContext_];
  if (a2 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    sub_1B7228588(a1, a2);
    v20 = sub_1B77FF598();
    sub_1B72380B8(a1, a2);
  }

  [v19 setData_];

  v21 = sub_1B7800838();

  [v19 setName_];

  sub_1B74901D0(a9, a10);
  if (a6)
  {
    v22 = sub_1B7800838();
  }

  else
  {
    v22 = 0;
  }

  [v19 setLocalizationName_];

  v23 = objc_allocWithZone(type metadata accessor for StorableColor());
  v24 = a7;
  v25 = StorableColor.init(color:)(a7);
  [v19 setStoredBackgroundColor_];

  [v19 setOrderImageData_];
  sub_1B72380B8(a1, a2);

  return v19;
}

void sub_1B74901D0(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1 >= 2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v2 setWidth_];
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 <= -2147483650.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2 >= 2147483650.0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v2 setHeight_];
}

double ManagedOrderImage.size.getter()
{
  v1 = [v0 width];
  [v0 height];
  return v1;
}

id ManagedOrderImage.imageData.getter()
{
  v1 = [v0 orderImageData];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 data];

LABEL_4:
    v5 = sub_1B77FF5B8();

    return v5;
  }

  result = [v0 data];
  v3 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

CGColorRef ManagedOrderImage.backgroundColor.getter()
{
  v1 = v0;
  v2 = [v0 orderImageData];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 storedBackgroundColorValue];
    if (v4)
    {
      v5 = v4;
      v6 = StorableColor.cgColor.getter();

      result = v6;
      if (v6)
      {
        return result;
      }
    }

    else
    {
    }
  }

  result = [v1 storedBackgroundColor];
  if (result)
  {
    v8 = result;
    v9 = StorableColor.cgColor.getter();

    return v9;
  }

  return result;
}

id static ManagedOrderImage.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedOrderImage;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderImage.dictionaryFetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedOrderImage;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);
  [v0 setResultType_];
  return v0;
}

id static ManagedOrderImage.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1B74905D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B749061C()
{
  result = qword_1EB995698;
  if (!qword_1EB995698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995698);
  }

  return result;
}

unint64_t sub_1B7490674()
{
  result = qword_1EB9956A0;
  if (!qword_1EB9956A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9956A0);
  }

  return result;
}

uint64_t ManagedAccountImporter.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for ManagedAccountBalanceImporter();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

id ManagedAccountImporter.insertOrUpdate(existingAccount:using:forConsentID:migratedAccountsProvider:context:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = type metadata accessor for ManagedConsent();
  v17 = a4;
  v18 = v16;
  v19 = static ManagedConsent.existingConsent(withConsentID:in:)(a3, v17);
  if (v6)
  {
    return v18;
  }

  if (!v19)
  {
    sub_1B73891D8();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return v18;
  }

  v21 = v19;
  if (!a1)
  {
    type metadata accessor for ManagedInternalAccount();
    sub_1B7297B90(a2, v15);
    sub_1B719B06C(a5, v33);
    v23 = v21;
    v24 = a6;
    v25 = sub_1B7674D90(v15, v23, v33, v24);

    v18 = v25;
    goto LABEL_14;
  }

  a1 = a1;
  if ([a1 isAccountEnabled])
  {
    _s10FinanceKit22ManagedInternalAccountC6update_7consent07withRawE0yAC_AA0C7ConsentCAA0I15BankConnectDataO0E0OtFZ_0(a1, v21, a2);

    v18 = a1;
LABEL_14:
    v31 = a1;
    [v18 setEarliestAccountRequestStartDate_];

    return v18;
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v26 = sub_1B78000B8();
  __swift_project_value_buffer(v26, qword_1EDAF65B0);
  v27 = sub_1B7800098();
  v28 = sub_1B78011D8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1B7198000, v27, v28, "Unable to update account, account is disabled", v29, 2u);
    MEMORY[0x1B8CA7A40](v29, -1, -1);
  }

  sub_1B73891D8();
  v18 = swift_allocError();
  *v30 = 1;
  swift_willThrow();

  return v18;
}

uint64_t ManagedAccountImporterError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t ManagedAccountImporter.init()()
{
  type metadata accessor for ManagedAccountBalanceImporter();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

void ManagedAccountImporter.insertOrUpdatePreferences(on:userSuppressedNotifications:in:)(void *a1, char a2, uint64_t a3)
{
  v6 = [a1 preferencesObject];
  if (!v6)
  {
    type metadata accessor for ManagedAccountPreferences();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    [a1 setPreferencesObject_];
  }

  [v6 setUserSuppressedNotifications_];
}

uint64_t ManagedAccountImporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7490C04(const char *a1, uint64_t a2, int a3)
{
  v19 = a3;
  v4 = sub_1B7800048();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7800008();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v12 = sub_1B7800038();
  __swift_project_value_buffer(v12, qword_1EBA45940);
  v13 = sub_1B7800018();
  sub_1B7800058();
  v18 = sub_1B7801378();
  result = sub_1B7801738();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v19 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_1B7800088();

      if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v15 = "";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_1B77FFFE8();
      _os_signpost_emit_with_name_impl(&dword_1B7198000, v13, v18, v17, a1, v15, v16, 2u);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
LABEL_15:

      return (*(v9 + 8))(v11, v8);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1B7490EE4()
{
  result = qword_1EB9956A8;
  if (!qword_1EB9956A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9956A8);
  }

  return result;
}

id sub_1B7490F98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v75 = a5;
  v67 = a4;
  v8 = sub_1B7800008();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v65 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - v17;
  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v72 = a2;
  v73 = a3;
  v19 = sub_1B7800038();
  v20 = __swift_project_value_buffer(v19, qword_1EBA45940);
  sub_1B77FFFF8();
  v69 = v20;
  v21 = sub_1B7800018();
  v22 = sub_1B7801388();
  if (sub_1B7801738())
  {
    v23 = v8;
    v24 = a1;
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v21, v22, v26, "InsertOrUpdateAccount", "", v25, 2u);
    v27 = v25;
    a1 = v24;
    v8 = v23;
    MEMORY[0x1B8CA7A40](v27, -1, -1);
  }

  (*(v9 + 16))(v16, v18, v8);
  sub_1B7800078();
  swift_allocObject();
  v28 = sub_1B7800068();
  v29 = *(v9 + 8);
  v29(v18, v8);
  type metadata accessor for ManagedInternalAccount();
  v30 = [a1 accountIdentifier];
  v31 = v8;
  v32 = a1;
  v33 = sub_1B7800868();
  v35 = v34;

  v36 = v71;
  v37 = static ManagedInternalAccount.existingAccount(accountID:consentID:in:)(v33, v35, v72, v73);
  if (v36)
  {
  }

  else
  {
    v38 = v37;
    v65 = v32;
    v66 = v31;
    v71 = v28;

    if (v38)
    {
      v28 = v38;
      v39 = v70;
      sub_1B77FFFF8();
      v40 = sub_1B7800018();
      v41 = sub_1B7801398();
      v42 = sub_1B7801738();
      v43 = v73;
      if (v42)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = sub_1B77FFFE8();
        _os_signpost_emit_with_name_impl(&dword_1B7198000, v40, v41, v45, "InsertOrUpdateAccount", "Update", v44, 2u);
        v46 = v44;
        v39 = v70;
        MEMORY[0x1B8CA7A40](v46, -1, -1);
      }

      v29(v39, v66);
      type metadata accessor for ManagedConsent();
      v47 = static ManagedConsent.existingConsent(withConsentID:in:)(v72, v43);
      v59 = v47;
      if (v47)
      {
        v60 = v65;
        _s10FinanceKit22ManagedInternalAccountC6update_7consent09withAppleE0yAC_AA0C7ConsentCSo07FKAppleE0CtFZ_0(v28, v47, v65);
        v63 = sub_1B750AB68(v60, v28, v75);
      }

      else
      {
        sub_1B73891D8();
        swift_allocError();
        *v62 = 0;
        swift_willThrow();

        v28 = v71;
      }
    }

    else
    {
      v48 = v68;
      sub_1B77FFFF8();
      v49 = sub_1B7800018();
      v50 = sub_1B7801398();
      v51 = sub_1B7801738();
      v52 = v73;
      if (v51)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = sub_1B77FFFE8();
        _os_signpost_emit_with_name_impl(&dword_1B7198000, v49, v50, v54, "InsertOrUpdateAccount", "Insert", v53, 2u);
        v55 = v53;
        v48 = v68;
        MEMORY[0x1B8CA7A40](v55, -1, -1);
      }

      v29(v48, v66);
      type metadata accessor for ManagedConsent();
      v56 = v75;
      v57 = static ManagedConsent.existingConsent(withConsentID:in:)(v72, v52);
      v28 = v71;
      if (v57)
      {
        v61 = v57;
        sub_1B719B06C(v67, v74);
        v28 = ManagedInternalAccount.__allocating_init(_:consent:migratedAccountsProvider:context:)(v65, v61, v74, v56);
      }

      else
      {
        sub_1B73891D8();
        swift_allocError();
        *v64 = 0;
        swift_willThrow();
      }
    }
  }

  sub_1B7490C04("InsertOrUpdateAccount", 21, 2);

  return v28;
}

uint64_t static BankConnectUserNotificationHelper.makeHelper()()
{
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v0 = *(off_1EDAF9E38 + 2);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = *(v0 + 16);

  *(v1 + 24) = [v2 newBackgroundContext];
  return v1;
}

uint64_t BankConnectUserNotificationHelper.isPaymentPassConnected(with:primaryAccountIdentifier:)()
{
  v0 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v0);
  sub_1B7801468();
  return v2;
}

void sub_1B7491950(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 24);
  v9 = [objc_opt_self() currentQueryGenerationToken];
  v26[0] = 0;
  v10 = [v8 setQueryGenerationFromToken:v9 error:v26];

  v11 = v26[0];
  if (v10)
  {
    v23 = a4;
    type metadata accessor for ManagedInternalAccount();
    v25.receiver = swift_getObjCClassFromMetadata();
    v25.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
    v12 = v11;
    v24 = a2;
    v13 = objc_msgSendSuper2(&v25, sel_fetchRequest);
    v14 = sub_1B7800C18();
    [v13 setRelationshipKeyPathsForPrefetching_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B781E650;
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B7807CD0;
    v17 = sub_1B77FF9B8();
    *(v16 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
    *(v16 + 64) = sub_1B726E47C();
    *(v16 + 32) = v17;
    *(v15 + 32) = sub_1B78010E8();
    *(v15 + 40) = sub_1B78010E8();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B7807CD0;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1B721FF04();
    *(v18 + 32) = v24;
    *(v18 + 40) = a3;

    *(v15 + 48) = sub_1B78010E8();
    v19 = sub_1B7800C18();

    v20 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v13 setPredicate_];
    v21 = sub_1B7801488();

    if (!v4)
    {
      *v23 = v21 == 1;
    }
  }

  else
  {
    v22 = v26[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t BankConnectUserNotificationHelper.isPredictedTransactionDayEqualTo(_:predictedTransactionID:)()
{
  v0 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v0);
  sub_1B7801468();
  return v2;
}

void sub_1B7491FC4(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v44 = a2;
  v48[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B77FFC68();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF988();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FFC88();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v15 = [objc_opt_self() currentQueryGenerationToken];
  v48[0] = 0;
  v16 = [v14 setQueryGenerationFromToken:v15 error:v48];

  v17 = v48[0];
  if (!v16)
  {
    v28 = v48[0];
    sub_1B77FF318();

    swift_willThrow();
    return;
  }

  v37 = v5;
  v38 = a3;
  type metadata accessor for ManagedPredictedTransaction();
  v47.receiver = swift_getObjCClassFromMetadata();
  v47.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedPredictedTransaction;
  v18 = v17;
  v19 = objc_msgSendSuper2(&v47, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v20 = swift_allocObject();
  v39 = xmmword_1B7807CD0;
  *(v20 + 16) = xmmword_1B7807CD0;
  v21 = sub_1B77FF9B8();
  *(v20 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v20 + 64) = sub_1B726E47C();
  *(v20 + 32) = v21;
  v22 = sub_1B78010E8();
  [v19 setPredicate_];

  [v19 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E6158];
  *(v23 + 16) = v39;
  *(v23 + 56) = v24;
  strcpy((v23 + 32), "predictedDate");
  *(v23 + 46) = -4864;
  v25 = sub_1B7800C18();

  [v19 setPropertiesToFetch_];

  v26 = v46;
  v27 = sub_1B7801498();
  if (v26)
  {

    return;
  }

  if (v27 >> 62)
  {
    v35 = v27;
    v36 = sub_1B7801958();
    v27 = v35;
    v30 = v37;
    v29 = v38;
    if (v36)
    {
      goto LABEL_8;
    }

LABEL_13:

    *v29 = 0;
    return;
  }

  v30 = v37;
  v29 = v38;
  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1B8CA5DC0](0);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v31 = *(v27 + 32);
  }

  v32 = v31;

  sub_1B77FFC58();
  v33 = [v32 predictedDate];
  sub_1B77FF928();

  v34 = v45;
  (*(v45 + 104))(v7, *MEMORY[0x1E6969A48], v30);
  LOBYTE(v33) = sub_1B77FFC38();

  (*(v34 + 8))(v7, v30);
  (*(v42 + 8))(v10, v43);
  (*(v40 + 8))(v13, v41);
  *v38 = v33 & 1;
}

uint64_t BankConnectUserNotificationHelper.deinit()
{

  return v0;
}

uint64_t BankConnectUserNotificationHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *static FraudAssessmentLoader.makeFraudAssessmentLoader()()
{
  v0 = type metadata accessor for FinanceSessionManager();
  v1 = swift_allocObject();
  v2 = sub_1B72034F8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9956B0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 16) = v3;
  v12[3] = v0;
  v12[4] = &off_1F2F56A08;
  v12[0] = v1;
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v4[5] = v0;
  v4[6] = &off_1F2F56A08;
  v4[2] = v9;
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4;
}

uint64_t FraudAssessmentLoader.prewarmAssessmentIfNecessary(for:locationBundle:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B74927B0, 0, 0);
}

uint64_t sub_1B74927B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  v4 = *v3;
  v5 = *(*v3 + 16);
  os_unfair_lock_lock(v5 + 6);
  sub_1B740EC74(&v5[4], v2, v4, v1);
  os_unfair_lock_unlock(v5 + 6);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t FraudAssessmentLoader.computeAssessment(for:attributes:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 49) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B74928A0, 0, 0);
}

uint64_t sub_1B74928A0()
{
  v1 = *(v0 + 49);
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B7492954;
  v3 = *(v0 + 16);

  return sub_1B740F344((v0 + 48), v3);
}

uint64_t sub_1B7492954()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7492A90, 0, 0);
}

uint64_t FraudAssessmentLoader.provideFeedbackIfNecessary(for:outcomeType:)(_BYTE *a1, _BYTE *a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = *a1;
  *(v3 + 25) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7492AD8, 0, 0);
}

uint64_t sub_1B7492AD8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 25);
  v3 = __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v4 = *v3;
  v5 = *(*v3 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1B740EF54((v5 + 16), v1, v4, v2);
  os_unfair_lock_unlock((v5 + 24));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t FraudAssessmentLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7492BFC(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  *(v3 + 32) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B74927B0, 0, 0);
}

uint64_t sub_1B7492C28(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  *(v3 + 49) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7492C54, 0, 0);
}

uint64_t sub_1B7492C54()
{
  v1 = *(v0 + 49);
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B7492D08;
  v3 = *(v0 + 16);

  return sub_1B740F344((v0 + 48), v3);
}

uint64_t sub_1B7492D08()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7493244, 0, 0);
}

uint64_t sub_1B7492E44(_BYTE *a1, _BYTE *a2)
{
  *(v3 + 16) = *v2;
  *(v3 + 24) = *a1;
  *(v3 + 25) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7492AD8, 0, 0);
}

uint64_t dispatch thunk of FraudAssessmentLoading.prewarmAssessmentIfNecessary(for:locationBundle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FraudAssessmentLoading.computeAssessment(for:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B721FDB8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FraudAssessmentLoading.provideFeedbackIfNecessary(for:outcomeType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B723838C;

  return v11(a1, a2, a3, a4);
}

uint64_t RawBankConnectData.Pass.init(associatedApplicationIdentifiers:associatedAdamIdentifiers:organizationName:passTypeIdentifier:paymentType:serialNumber:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

__n128 RawBankConnectData.InstitutionsRequestBody.init(clientConfigurationVersion:countryCodes:pass:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *(a5 + 40) = a4[1];
  v6 = a4[3];
  *(a5 + 56) = a4[2];
  *(a5 + 72) = v6;
  result = a4[4];
  *(a5 + 88) = result;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

uint64_t RawBankConnectData.InstitutionsResponseWithExpiration.init(institutionsResponse:expiration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  v4 = a3 + *(type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0) + 20);

  return sub_1B7205340(a2, v4);
}

uint64_t RawBankConnectData.InstitutionsResponse.init(institutions:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

uint64_t RawBankConnectData.InstitutionsForPassesRequestBody.init(clientConfigurationVersion:countryCodes:passes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t RawBankConnectData.Institution.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.Institution.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Institution.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.Institution.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawBankConnectData.Institution.countryCodes.getter()
{
  type metadata accessor for RawBankConnectData.Institution(0);
}

uint64_t RawBankConnectData.Institution.countryCodes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.Institution(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RawBankConnectData.Institution.reconsentType.setter(char a1)
{
  result = type metadata accessor for RawBankConnectData.Institution(0);
  *(v1 + *(result + 32)) = a1 & 1;
  return result;
}

uint64_t RawBankConnectData.Institution.extensionBundleIdentifiers.getter()
{
  type metadata accessor for RawBankConnectData.Institution(0);
}

uint64_t RawBankConnectData.Institution.extensionBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.Institution(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RawBankConnectData.Institution.clientConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Institution(0) + 40);
  v4 = *(v3 + 112);
  v5 = *(v3 + 144);
  v27 = *(v3 + 128);
  v28 = v5;
  v6 = *(v3 + 48);
  v7 = *(v3 + 80);
  v23 = *(v3 + 64);
  v8 = v23;
  v24 = v7;
  v9 = *(v3 + 80);
  v10 = *(v3 + 112);
  v25 = *(v3 + 96);
  v11 = v25;
  v26 = v10;
  v12 = *(v3 + 16);
  v13 = *(v3 + 48);
  v21 = *(v3 + 32);
  v14 = v21;
  v22 = v13;
  v15 = *(v3 + 16);
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  v17 = *(v3 + 144);
  *(a1 + 128) = v27;
  *(a1 + 144) = v17;
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  *(a1 + 96) = v11;
  *(a1 + 112) = v4;
  *a1 = v16;
  *(a1 + 16) = v12;
  v29 = *(v3 + 160);
  *(a1 + 160) = *(v3 + 160);
  *(a1 + 32) = v14;
  *(a1 + 48) = v6;
  return sub_1B7493828(v20, v19);
}

__n128 RawBankConnectData.Institution.clientConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Institution(0) + 40);
  v4 = *(v3 + 144);
  v14[8] = *(v3 + 128);
  v14[9] = v4;
  v15 = *(v3 + 160);
  v5 = *(v3 + 80);
  v14[4] = *(v3 + 64);
  v14[5] = v5;
  v6 = *(v3 + 112);
  v14[6] = *(v3 + 96);
  v14[7] = v6;
  v7 = *(v3 + 48);
  v14[2] = *(v3 + 32);
  v14[3] = v7;
  v8 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v8;
  sub_1B7493900(v14);
  v9 = *(a1 + 144);
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = v9;
  *(v3 + 160) = *(a1 + 160);
  v10 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v10;
  v11 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v12;
  result = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = result;
  return result;
}

uint64_t RawBankConnectData.Institution.linkable.setter(char a1)
{
  result = type metadata accessor for RawBankConnectData.Institution(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t RawBankConnectData.Institution.init(id:name:icons:countryCodes:reconsentType:extensionBundleIdentifiers:clientConfiguration:linkable:termsAndConditions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v17 = type metadata accessor for RawBankConnectData.Institution(0);
  v18 = v17[6];
  v19 = type metadata accessor for RawBankConnectData.Institution.Icons(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = v17[9];
  v21 = v17[12];
  v31 = v17[11];
  v22 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  sub_1B7213740(a5, &a9[v18], &qword_1EB9956B8);
  *&a9[v17[7]] = a6;
  a9[v17[8]] = a7 & 1;
  *&a9[v20] = a8;
  v23 = &a9[v17[10]];
  v24 = *(a10 + 144);
  *(v23 + 8) = *(a10 + 128);
  *(v23 + 9) = v24;
  *(v23 + 80) = *(a10 + 160);
  v25 = *(a10 + 80);
  *(v23 + 4) = *(a10 + 64);
  *(v23 + 5) = v25;
  v26 = *(a10 + 112);
  *(v23 + 6) = *(a10 + 96);
  *(v23 + 7) = v26;
  v27 = *(a10 + 16);
  *v23 = *a10;
  *(v23 + 1) = v27;
  v28 = *(a10 + 48);
  *(v23 + 2) = *(a10 + 32);
  *(v23 + 3) = v28;
  a9[v31] = a11;
  return sub_1B7213740(a12, &a9[v21], &qword_1EB9925D8);
}

unint64_t sub_1B7493CD0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x736E6F6369;
    if (a1 != 2)
    {
      v6 = 0x437972746E756F63;
    }

    if (a1)
    {
      v5 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x656C62616B6E696CLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E65736E6F636572;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B7493DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74A2360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7493E24(uint64_t a1)
{
  v2 = sub_1B749EE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7493E60(uint64_t a1)
{
  v2 = sub_1B749EE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Institution.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9956C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B749EE2C();
  sub_1B78023F8();
  LOBYTE(v39[0]) = 0;
  sub_1B7801F78();
  if (!v2)
  {
    LOBYTE(v39[0]) = 1;
    sub_1B7801F78();
    v9 = type metadata accessor for RawBankConnectData.Institution(0);
    LOBYTE(v39[0]) = 2;
    type metadata accessor for RawBankConnectData.Institution.Icons(0);
    sub_1B749EF28(&qword_1EB9956D0, type metadata accessor for RawBankConnectData.Institution.Icons);
    sub_1B7801F38();
    v51 = v9;
    *&v39[0] = *(v3 + *(v9 + 28));
    LOBYTE(v28) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B721523C(&qword_1EB98F960);
    sub_1B7801FC8();
    LOBYTE(v39[0]) = *(v3 + v51[8]);
    LOBYTE(v28) = 4;
    sub_1B749EE80();
    sub_1B7801FC8();
    v50 = *(v3 + v51[9]);
    v49 = 5;
    sub_1B7801F38();
    v10 = (v3 + v51[10]);
    v11 = v10[7];
    v12 = v10[9];
    v46 = v10[8];
    v47 = v12;
    v13 = v10[3];
    v14 = v10[5];
    v42 = v10[4];
    v43 = v14;
    v15 = v10[5];
    v16 = v10[7];
    v44 = v10[6];
    v45 = v16;
    v17 = v10[1];
    v39[0] = *v10;
    v39[1] = v17;
    v18 = v10[3];
    v20 = *v10;
    v19 = v10[1];
    v40 = v10[2];
    v41 = v18;
    v21 = v10[9];
    v36 = v46;
    v37 = v21;
    v32 = v42;
    v33 = v15;
    v34 = v44;
    v35 = v11;
    v28 = v20;
    v29 = v19;
    v48 = *(v10 + 80);
    v38 = *(v10 + 80);
    v30 = v40;
    v31 = v13;
    v27 = 6;
    sub_1B7493828(v39, v25);
    sub_1B749EED4();
    sub_1B7801FC8();
    v25[8] = v36;
    v25[9] = v37;
    v26 = v38;
    v25[4] = v32;
    v25[5] = v33;
    v25[6] = v34;
    v25[7] = v35;
    v25[0] = v28;
    v25[1] = v29;
    v25[2] = v30;
    v25[3] = v31;
    sub_1B7493900(v25);
    v24 = 7;
    sub_1B7801F08();
    v24 = 8;
    type metadata accessor for RawBankConnectData.TermsAndConditions();
    sub_1B749EF28(&qword_1EB9956E8, type metadata accessor for RawBankConnectData.TermsAndConditions);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.Institution.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9925D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9956B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = v51 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9956F0);
  v53 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v8 = v51 - v7;
  v9 = type metadata accessor for RawBankConnectData.Institution(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 24);
  v14 = type metadata accessor for RawBankConnectData.Institution.Icons(0);
  v15 = *(*(v14 - 8) + 56);
  v60 = v13;
  v15(v12 + v13, 1, 1, v14);
  v16 = v9[12];
  v17 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  v18 = *(*(v17 - 8) + 56);
  v59 = v16;
  v19 = v12;
  v18(v12 + v16, 1, 1, v17);
  v20 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1B749EE2C();
  v57 = v8;
  v21 = v74;
  sub_1B78023C8();
  if (v21)
  {
    v74 = v21;
    v25 = v60;
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_1B7205418(v19 + v25, &qword_1EB9956B8);

    return sub_1B7205418(v19 + v59, &qword_1EB9925D8);
  }

  v22 = v54;
  v51[1] = v17;
  v23 = v55;
  v24 = v53;
  LOBYTE(v63) = 0;
  *v19 = sub_1B7801DF8();
  v19[1] = v27;
  LOBYTE(v63) = 1;
  v19[2] = sub_1B7801DF8();
  v19[3] = v28;
  LOBYTE(v63) = 2;
  sub_1B749EF28(&qword_1EB9956F8, type metadata accessor for RawBankConnectData.Institution.Icons);
  sub_1B7801DB8();
  v74 = 0;
  sub_1B7213740(v22, v19 + v60, &qword_1EB9956B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  v62 = 3;
  sub_1B721523C(&qword_1EDAF64A8);
  v29 = v74;
  sub_1B7801E48();
  v74 = v29;
  if (v29)
  {
    (*(v24 + 8))(v57, v56);
    v30 = 0;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v58);

    v31 = 0;
    goto LABEL_8;
  }

  *(v19 + v9[7]) = v63;
  v62 = 4;
  sub_1B749EF70();
  v38 = v74;
  sub_1B7801E48();
  if (v38)
  {
    v74 = v38;
    (*(v24 + 8))(v57, v56);
    v30 = 1;
    goto LABEL_7;
  }

  *(v19 + v9[8]) = v63;
  v62 = 5;
  sub_1B7801DB8();
  v74 = 0;
  v39 = v63;
  *(v19 + v9[9]) = v63;
  v62 = 6;
  sub_1B749EFC4();
  v40 = v56;
  v41 = v74;
  sub_1B7801E48();
  if (v41)
  {
    v74 = v41;
    (*(v24 + 8))(v57, v40);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v31 = 0;
LABEL_19:

    v30 = 1;
LABEL_8:

    sub_1B7205418(v19 + v60, &qword_1EB9956B8);
    if (v30)
    {

      if ((v31 & 1) == 0)
      {
        return sub_1B7205418(v19 + v59, &qword_1EB9925D8);
      }
    }

    else
    {

      if (!v31)
      {
        return sub_1B7205418(v19 + v59, &qword_1EB9925D8);
      }
    }

    v32 = v19 + v9[10];
    v33 = *(v32 + 9);
    v71 = *(v32 + 8);
    v72 = v33;
    v73 = *(v32 + 80);
    v34 = *(v32 + 5);
    v67 = *(v32 + 4);
    v68 = v34;
    v35 = *(v32 + 7);
    v69 = *(v32 + 6);
    v70 = v35;
    v36 = *(v32 + 1);
    v63 = *v32;
    v37 = *(v32 + 2);
    v66 = *(v32 + 3);
    v64 = v36;
    v65 = v37;
    sub_1B7493900(&v63);
    return sub_1B7205418(v19 + v59, &qword_1EB9925D8);
  }

  v42 = v19 + v9[10];
  v43 = v72;
  *(v42 + 8) = v71;
  *(v42 + 9) = v43;
  *(v42 + 80) = v73;
  v44 = v68;
  *(v42 + 4) = v67;
  *(v42 + 5) = v44;
  v45 = v70;
  *(v42 + 6) = v69;
  *(v42 + 7) = v45;
  v47 = v64;
  v46 = v65;
  *v42 = v63;
  *(v42 + 1) = v47;
  v48 = v66;
  *(v42 + 2) = v46;
  *(v42 + 3) = v48;
  v61 = 7;
  v49 = sub_1B7801D88();
  v74 = 0;
  v54 = v39;
  *(v19 + v9[11]) = v49;
  v61 = 8;
  sub_1B749EF28(&qword_1EB995710, type metadata accessor for RawBankConnectData.TermsAndConditions);
  v50 = v74;
  sub_1B7801DB8();
  v74 = v50;
  if (v50)
  {
    (*(v24 + 8))(v57, v40);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v31 = 1;
    goto LABEL_19;
  }

  (*(v24 + 8))(v57, v40);
  sub_1B7213740(v23, v19 + v59, &qword_1EB9925D8);
  sub_1B749F964(v19, v52, type metadata accessor for RawBankConnectData.Institution);
  __swift_destroy_boxed_opaque_existential_1(v58);
  return sub_1B749F904(v19, type metadata accessor for RawBankConnectData.Institution);
}

uint64_t RawBankConnectData.InstitutionsRequestBody.clientConfigurationVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.InstitutionsRequestBody.clientConfigurationVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.InstitutionsRequestBody.countryCodes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t RawBankConnectData.InstitutionsRequestBody.pass.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  v9 = *(v1 + 56);
  v10 = v3;
  v11 = *(v1 + 88);
  v4 = v11;
  v8[0] = *(v1 + 24);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_1B749F018(v8, &v7);
}

__n128 RawBankConnectData.InstitutionsRequestBody.pass.setter(__int128 *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 72);
  v8[2] = *(v1 + 56);
  v8[3] = v4;
  v8[4] = *(v1 + 88);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  sub_1B749F050(v8);
  v5 = *a1;
  *(v1 + 40) = a1[1];
  v6 = a1[3];
  *(v1 + 56) = a1[2];
  *(v1 + 72) = v6;
  result = a1[4];
  *(v1 + 88) = result;
  *(v1 + 24) = v5;
  return result;
}

unint64_t sub_1B7494F18()
{
  v1 = 0x437972746E756F63;
  if (*v0 != 1)
  {
    v1 = 1936941424;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1B7494F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74A264C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7494FA0(uint64_t a1)
{
  v2 = sub_1B749F080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7494FDC(uint64_t a1)
{
  v2 = sub_1B749F080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InstitutionsRequestBody.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995718);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  v13 = v1[2];
  v14 = v7;
  v8 = *(v1 + 5);
  v9 = *(v1 + 9);
  v24 = *(v1 + 7);
  v25 = v9;
  v26 = *(v1 + 11);
  v22 = *(v1 + 3);
  v23 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B749F080();
  sub_1B78023F8();
  LOBYTE(v17) = 0;
  v10 = v15;
  sub_1B7801F78();
  if (!v10)
  {
    *&v17 = v13;
    LOBYTE(v16[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B721523C(&qword_1EB98F960);
    sub_1B7801FC8();
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v17 = v22;
    v18 = v23;
    v27 = 2;
    sub_1B749F018(&v22, v16);
    sub_1B749F0D4();
    sub_1B7801FC8();
    v16[2] = v19;
    v16[3] = v20;
    v16[4] = v21;
    v16[0] = v17;
    v16[1] = v18;
    sub_1B749F050(v16);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.InstitutionsRequestBody.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1B7800798();
  MEMORY[0x1B8CA6620](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1B7800798();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return RawBankConnectData.Pass.hash(into:)();
}

uint64_t RawBankConnectData.InstitutionsRequestBody.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.InstitutionsRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.InstitutionsRequestBody.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995730);
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B749F080();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  LOBYTE(v24[0]) = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  LOBYTE(v22) = 1;
  sub_1B721523C(&qword_1EDAF64A8);
  sub_1B7801E48();
  v20 = v24[0];
  v30 = 2;
  sub_1B749F128();
  sub_1B7801E48();
  (*(v8 + 8))(v7, v41);
  v38 = v33;
  v39 = v34;
  v40 = v35;
  v36 = v31;
  v37 = v32;
  v12 = v11;
  v14 = v20;
  v13 = v21;
  *&v22 = v21;
  *(&v22 + 1) = v12;
  *v23 = v20;
  *&v23[8] = v31;
  *&v23[24] = v32;
  *&v23[56] = v34;
  *&v23[72] = v35;
  *&v23[40] = v33;
  *(a2 + 96) = *(&v35 + 1);
  v15 = *&v23[64];
  *(a2 + 64) = *&v23[48];
  *(a2 + 80) = v15;
  v16 = *&v23[32];
  *(a2 + 32) = *&v23[16];
  *(a2 + 48) = v16;
  v17 = *v23;
  *a2 = v22;
  *(a2 + 16) = v17;
  sub_1B749F17C(&v22, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24[0] = v13;
  v24[1] = v12;
  v24[2] = v14;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v29 = v40;
  v25 = v36;
  return sub_1B749F1B4(v24);
}

uint64_t sub_1B74956F0()
{
  sub_1B78022F8();
  RawBankConnectData.InstitutionsRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B7495734()
{
  sub_1B78022F8();
  RawBankConnectData.InstitutionsRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.InstitutionsForPassesRequestBody.countryCodes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t RawBankConnectData.InstitutionsForPassesRequestBody.passes.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static RawBankConnectData.InstitutionsForPassesRequestBody.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1B78020F8() & 1) == 0 || (sub_1B731D168(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1B731E188(v3, v4);
}

unint64_t sub_1B74958CC()
{
  v1 = 0x437972746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x736573736170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1B7495930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74A2774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7495958(uint64_t a1)
{
  v2 = sub_1B749F1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7495994(uint64_t a1)
{
  v2 = sub_1B749F1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InstitutionsForPassesRequestBody.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995740);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B749F1E4();
  sub_1B78023F8();
  LOBYTE(v15) = 0;
  v8 = v13;
  sub_1B7801F78();
  if (!v8)
  {
    v9 = v11;
    v15 = v12;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B721523C(&qword_1EB98F960);
    sub_1B7801FC8();
    v15 = v9;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995750);
    sub_1B749F238();
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.InstitutionsForPassesRequestBody.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B7800798();
  MEMORY[0x1B8CA6620](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      sub_1B7800798();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  return sub_1B734F454(a1, v3);
}

uint64_t RawBankConnectData.InstitutionsForPassesRequestBody.hashValue.getter()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_1B78022F8();
  RawBankConnectData.InstitutionsForPassesRequestBody.hash(into:)(v3);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.InstitutionsForPassesRequestBody.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995760);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B749F1E4();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  v18 = 1;
  sub_1B721523C(&qword_1EDAF64A8);
  sub_1B7801E48();
  v16 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995750);
  v18 = 2;
  sub_1B749F2BC();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v12 = v19;
  v13 = v16;
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7495FF8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1B78020F8() & 1) == 0 || (sub_1B731D168(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1B731E188(v3, v4);
}

uint64_t sub_1B749608C()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_1B78022F8();
  RawBankConnectData.InstitutionsForPassesRequestBody.hash(into:)(v3);
  return sub_1B7802368();
}

uint64_t sub_1B74960EC()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_1B78022F8();
  RawBankConnectData.InstitutionsForPassesRequestBody.hash(into:)(v3);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.Institution.Icons.init(twoX:threeX:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B77FF4F8();
  v7 = *(*(v6 - 8) + 56);
  v7(a3, 1, 1, v6);
  v8 = *(type metadata accessor for RawBankConnectData.Institution.Icons(0) + 20);
  v7(a3 + v8, 1, 1, v6);
  sub_1B7213740(a1, a3, &unk_1EB994C70);
  return sub_1B7213740(a2, a3 + v8, &unk_1EB994C70);
}

uint64_t sub_1B7496360()
{
  if (*v0)
  {
    return 0x586565726874;
  }

  else
  {
    return 1483700084;
  }
}

uint64_t sub_1B7496390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1483700084 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x586565726874 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B7496468(uint64_t a1)
{
  v2 = sub_1B749F8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74964A4(uint64_t a1)
{
  v2 = sub_1B749F8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Institution.Icons.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995770);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B749F8B0();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B77FF4F8();
  sub_1B749EF28(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
  sub_1B7801F38();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.Institution.Icons(0);
    v8[14] = 1;
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.Institution.Icons.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995780);
  v9 = *(v8 - 8);
  v24 = v8;
  v25 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for RawBankConnectData.Institution.Icons(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B77FF4F8();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v18 = *(v13 + 28);
  v17(&v15[v18], 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B749F8B0();
  v19 = v27;
  sub_1B78023C8();
  if (!v19)
  {
    v27 = v18;
    v29 = 0;
    sub_1B749EF28(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    v20 = v24;
    sub_1B7801DB8();
    sub_1B7213740(v26, v15, &unk_1EB994C70);
    v28 = 1;
    sub_1B7801DB8();
    (*(v25 + 8))(v11, v20);
    sub_1B7213740(v6, &v15[v27], &unk_1EB994C70);
    sub_1B749F964(v15, v23, type metadata accessor for RawBankConnectData.Institution.Icons);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B749F904(v15, type metadata accessor for RawBankConnectData.Institution.Icons);
}

uint64_t RawBankConnectData.Institution.ReconsentType.init(rawValue:)()
{
  v0 = sub_1B7801D18();

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

uint64_t RawBankConnectData.Institution.ReconsentType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1146241352;
  }

  else
  {
    return 1413893971;
  }
}

uint64_t sub_1B7496AEC()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7496B54()
{
  sub_1B7800798();
}

uint64_t sub_1B7496BA0()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7496C04@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B7496C64(uint64_t *a1@<X8>)
{
  v2 = 1413893971;
  if (*v1)
  {
    v2 = 1146241352;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_1B7496D4C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1146241352;
  }

  else
  {
    v2 = 1413893971;
  }

  if (*a2)
  {
    v3 = 1146241352;
  }

  else
  {
    v3 = 1413893971;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B78020F8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t RawBankConnectData.Institution.SupportedAuthTypes.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t RawBankConnectData.Institution.SupportedAuthTypes.rawValue.getter()
{
  v1 = 0x50415F485455414FLL;
  if (*v0 != 1)
  {
    v1 = 0x45575F485455414FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x455458455F505041;
  }
}

uint64_t sub_1B7496EA0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000042;
  v3 = *a1;
  v4 = 0x50415F485455414FLL;
  if (v3 == 1)
  {
    v5 = 0xE900000000000050;
  }

  else
  {
    v4 = 0x45575F485455414FLL;
    v5 = 0xE900000000000042;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x455458455F505041;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xED00004E4F49534ELL;
  }

  v8 = 0x50415F485455414FLL;
  if (*a2 == 1)
  {
    v2 = 0xE900000000000050;
  }

  else
  {
    v8 = 0x45575F485455414FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x455458455F505041;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xED00004E4F49534ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B7496FA8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7497064()
{
  sub_1B7800798();
}

uint64_t sub_1B749710C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B74971D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00004E4F49534ELL;
  v4 = 0xE900000000000050;
  v5 = 0x50415F485455414FLL;
  if (v2 != 1)
  {
    v5 = 0x45575F485455414FLL;
    v4 = 0xE900000000000042;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x455458455F505041;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void RawBankConnectData.Institution.ClientConfiguration.backgroundRefreshBehavior.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.backgroundRefreshBehavior.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 40);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  return result;
}

__n128 RawBankConnectData.Institution.ClientConfiguration.transactionRequestConstraints.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 64);
  a1->n128_u64[0] = *(v1 + 56);
  a1->n128_u8[8] = v2;
  result = *(v1 + 72);
  a1[1] = result;
  return result;
}

__n128 RawBankConnectData.Institution.ClientConfiguration.transactionRequestConstraints.setter(__n128 *a1)
{
  v2 = a1->n128_u8[8];
  *(v1 + 56) = a1->n128_u64[0];
  *(v1 + 64) = v2;
  result = a1[1];
  *(v1 + 72) = result;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.supportedAuthTypes.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.piiRedactionConfig.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 104) = v2;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.consentSyncingOutdatedTimeout.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.supportedNotificationEventTypes.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.privacyLabels.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.init(backgroundRefreshBehavior:matchingBehavior:transactionRequestConstraints:supportedAuthTypes:supportsMultipleConsents:problemReportingEnabled:financialLabEnabled:timestampSuitableForUserDisplay:piiRedactionConfig:consentSyncingEnabled:consentSyncingOutdatedTimeout:supportedNotificationEventTypes:balanceWidgetEnabled:privacyLabels:personalizedInsightsBehaviour:supportsTransactions:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t *a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char *a17, char a18)
{
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = a1[2];
  v22 = *(a1 + 24);
  v23 = a1[4];
  v24 = *(a1 + 40);
  v25 = *a2;
  v26 = *a3;
  v27 = *(a3 + 8);
  v28 = *a10;
  v29 = *a17;
  *a9 = v19;
  *(a9 + 8) = v20;
  *(a9 + 16) = v21;
  *(a9 + 24) = v22;
  *(a9 + 32) = v23;
  *(a9 + 40) = v24;
  *(a9 + 48) = v25;
  *(a9 + 56) = v26;
  *(a9 + 64) = v27;
  *(a9 + 72) = *(a3 + 1);
  *(a9 + 88) = a4;
  *(a9 + 96) = a5;
  *(a9 + 97) = a6;
  *(a9 + 98) = a7;
  *(a9 + 99) = a8;

  *(a9 + 104) = v28;
  *(a9 + 112) = a11;
  *(a9 + 120) = a12;
  *(a9 + 128) = a13 & 1;
  *(a9 + 136) = a14;
  *(a9 + 144) = a15;
  *(a9 + 152) = a16;
  *(a9 + 160) = v29;
  *(a9 + 161) = a18;
  return result;
}

unint64_t sub_1B7497834(char a1)
{
  result = 0x4C79636176697270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
    case 8:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 12:
    case 15:
      result = 0xD000000000000014;
      break;
    case 13:
      return result;
    case 14:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_1B7497A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74A2898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7497A34(uint64_t a1)
{
  v2 = sub_1B749F9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7497A70(uint64_t a1)
{
  v2 = sub_1B749F9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995788);
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v23 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v1[2];
  v49 = *(v1 + 24);
  v9 = v1[4];
  v40 = *(v1 + 40);
  v10 = v1[6];
  v38 = v1[7];
  v39 = v10;
  v37 = *(v1 + 64);
  v11 = v1[9];
  v12 = v1[10];
  v36 = v1[11];
  LODWORD(v10) = *(v1 + 96);
  v34 = *(v1 + 97);
  v35 = v10;
  LODWORD(v10) = *(v1 + 98);
  v32 = *(v1 + 99);
  v33 = v10;
  v31 = v1[13];
  LODWORD(v10) = *(v1 + 112);
  v13 = v1[15];
  v29 = *(v1 + 128);
  v30 = v10;
  v27 = v1[17];
  v28 = v13;
  v26 = *(v1 + 144);
  v25 = v1[19];
  v24 = *(v1 + 160);
  v23[2] = *(v1 + 161);
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_1B749F9CC();
  sub_1B78023F8();
  v43 = v6;
  v44 = v7;
  v45 = v8;
  LOBYTE(v46) = v49;
  v47 = v9;
  v48 = v40;
  v50 = 0;
  sub_1B749FA20();
  v18 = v41;
  sub_1B7801FC8();
  if (!v18)
  {
    v19 = v37;
    v20 = v38;
    v21 = v36;
    v43 = v39;
    v50 = 1;
    sub_1B749FA74();
    sub_1B7801FC8();
    v43 = v20;
    v44 = v19;
    v45 = v11;
    v46 = v12;
    v50 = 2;
    sub_1B749FAC8();
    sub_1B7801FC8();
    v43 = v21;
    v50 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9957B0);
    sub_1B749FB1C();
    sub_1B7801FC8();
    LOBYTE(v43) = 4;
    sub_1B7801F08();
    LOBYTE(v43) = 5;
    sub_1B7801F08();
    LOBYTE(v43) = 6;
    sub_1B7801F08();
    LOBYTE(v43) = 7;
    sub_1B7801F08();
    v43 = v31;
    v50 = 8;
    sub_1B749FBF4();

    sub_1B7801F38();

    LOBYTE(v43) = 9;
    sub_1B7801F08();
    LOBYTE(v43) = 10;
    sub_1B7801F18();
    v43 = v27;
    v50 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9957D0);
    sub_1B749FC48();
    sub_1B7801F38();
    LOBYTE(v43) = 12;
    sub_1B7801F08();
    v43 = v25;
    v50 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9957E8);
    sub_1B749FD20();
    sub_1B7801FC8();
    LOBYTE(v43) = v24;
    v50 = 14;
    sub_1B749FDF8();
    sub_1B7801F38();
    LOBYTE(v43) = 15;
    sub_1B7801F08();
  }

  return (*(v42 + 8))(v5, v17);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995808);
  v5 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v7 = &v30 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B749F9CC();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v51 = a2;
    v52 = v5;
    LOBYTE(v53) = 0;
    sub_1B749FE4C();
    sub_1B7801E48();
    v8 = v64;
    v9 = v67;
    v10 = v69;
    v107 = v65;
    v105 = v68;
    v103 = v70;
    LOBYTE(v53) = 1;
    sub_1B749FEA0();
    sub_1B7801E48();
    v48 = v8;
    v49 = v9;
    v50 = v10;
    v11 = v64;
    LOBYTE(v53) = 2;
    sub_1B749FEF4();
    sub_1B7801E48();
    v12 = v64;
    v13 = v67;
    v14 = v68;
    v101 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9957B0);
    LOBYTE(v53) = 3;
    sub_1B749FF48();
    sub_1B7801E48();
    v47 = v64;
    LOBYTE(v64) = 4;
    v45 = sub_1B7801D88();
    LOBYTE(v64) = 5;
    v44 = sub_1B7801D88();
    LOBYTE(v64) = 6;
    v43 = sub_1B7801D88();
    LOBYTE(v64) = 7;
    v42 = sub_1B7801D88();
    LOBYTE(v53) = 8;
    sub_1B74A0020();
    sub_1B7801DB8();
    v41 = v64;

    LOBYTE(v64) = 9;
    v15 = sub_1B7801D88();
    LOBYTE(v64) = 10;
    v40 = sub_1B7801D98();
    v98 = v16 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9957D0);
    LOBYTE(v53) = 11;
    sub_1B74A0074();
    sub_1B7801DB8();
    v46 = v64;
    LOBYTE(v64) = 12;
    v39 = sub_1B7801D88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9957E8);
    LOBYTE(v53) = 13;
    sub_1B74A014C();
    sub_1B7801E48();
    v17 = v64;
    LOBYTE(v53) = 14;
    sub_1B74A0224();
    sub_1B7801DB8();
    v37 = v64;
    v95 = 15;
    v38 = sub_1B7801D88();
    (*(v52 + 8))(v7, v108);
    *&v53 = v48;
    LODWORD(v108) = v107;
    BYTE8(v53) = v107;
    *(&v53 + 9) = *v106;
    HIDWORD(v53) = *&v106[3];
    *&v54 = v49;
    LODWORD(v52) = v105;
    BYTE8(v54) = v105;
    *(&v54 + 9) = *v104;
    HIDWORD(v54) = *&v104[3];
    *&v55 = v50;
    v35 = v103;
    BYTE8(v55) = v103;
    HIDWORD(v55) = *&v102[3];
    *(&v55 + 9) = *v102;
    v36 = v11;
    *&v56 = v11;
    *(&v56 + 1) = v12;
    v34 = v12;
    v32 = v15;
    v33 = v101;
    LOBYTE(v57) = v101;
    *(&v57 + 1) = *v100;
    DWORD1(v57) = *&v100[3];
    *(&v57 + 1) = v13;
    *&v58 = v14;
    *(&v58 + 1) = v47;
    LOBYTE(v59) = v45;
    BYTE1(v59) = v44;
    BYTE2(v59) = v43;
    BYTE3(v59) = v42;
    *(&v59 + 1) = v41;
    LOBYTE(v60) = v15;
    DWORD1(v60) = *&v99[3];
    *(&v60 + 1) = *v99;
    *(&v60 + 1) = v40;
    v31 = v98;
    LOBYTE(v61) = v98;
    DWORD1(v61) = *&v97[3];
    *(&v61 + 1) = *v97;
    v18 = v46;
    *(&v61 + 1) = v46;
    LOBYTE(v12) = v39;
    LOBYTE(v62) = v39;
    DWORD1(v62) = *&v96[3];
    *(&v62 + 1) = *v96;
    *(&v62 + 1) = v17;
    v19 = v37;
    LOBYTE(v63) = v37;
    HIBYTE(v63) = v38;
    v20 = v54;
    v21 = v51;
    *v51 = v53;
    v21[1] = v20;
    v22 = v55;
    v23 = v56;
    v24 = v58;
    v21[4] = v57;
    v21[5] = v24;
    v21[2] = v22;
    v21[3] = v23;
    v25 = v59;
    v26 = v60;
    v27 = v61;
    v28 = v62;
    *(v21 + 80) = v63;
    v21[8] = v27;
    v21[9] = v28;
    v21[6] = v25;
    v21[7] = v26;
    sub_1B7493828(&v53, &v64);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v64 = v48;
    v65 = v108;
    *v66 = *v106;
    *&v66[3] = *&v106[3];
    v67 = v49;
    LOBYTE(v68) = v52;
    *(&v68 + 1) = *v104;
    HIDWORD(v68) = *&v104[3];
    v69 = v50;
    v70 = v35;
    *v71 = *v102;
    *&v71[3] = *&v102[3];
    v72 = v36;
    v73 = v34;
    v74 = v33;
    *v75 = *v100;
    *&v75[3] = *&v100[3];
    v76 = v13;
    v77 = v14;
    v78 = v47;
    v79 = v45;
    v80 = v44;
    v81 = v43;
    v82 = v42;
    v83 = v41;
    v84 = v32;
    *v85 = *v99;
    *&v85[3] = *&v99[3];
    v86 = v40;
    v87 = v31;
    *&v88[3] = *&v97[3];
    *v88 = *v97;
    v89 = v18;
    v90 = v12;
    *&v91[3] = *&v96[3];
    *v91 = *v96;
    v92 = v17;
    v93 = v19;
    v94 = v38;
    return sub_1B7493900(&v64);
  }
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.BackgroundRefreshBehaviour.maximumNumberOfRefreshesPerCalendarDay.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.BackgroundRefreshBehaviour.confirmationWindow.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.BackgroundRefreshBehaviour.confirmationExpiryWindow.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.BackgroundRefreshBehaviour.init(maximumNumberOfRefreshesPerCalendarDay:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  return result;
}

unint64_t sub_1B7498AB4()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000026;
  }
}

uint64_t sub_1B7498B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74A2DB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7498B34(uint64_t a1)
{
  v2 = sub_1B74A0278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7498B70(uint64_t a1)
{
  v2 = sub_1B74A0278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.BackgroundRefreshBehaviour.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995868);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = v7;
  v10[1] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0278();
  sub_1B78023F8();
  v17 = 0;
  v8 = v13;
  sub_1B7801F28();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = 1;
  sub_1B7801F18();
  v15 = 2;
  sub_1B7801F18();
  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.BackgroundRefreshBehaviour.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995878);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0278();
  sub_1B78023C8();
  if (!v2)
  {
    v25 = 0;
    v9 = sub_1B7801DA8();
    v11 = v10;
    v12 = v9;
    v24 = 1;
    v13 = sub_1B7801D98();
    v22 = v14;
    v21 = v13;
    v23 = 2;
    v16 = sub_1B7801D98();
    v17 = v8;
    v19 = v18;
    (*(v6 + 8))(v17, v5);
    *a2 = v12;
    *(a2 + 8) = v11 & 1;
    *(a2 + 16) = v21;
    *(a2 + 24) = v22 & 1;
    *(a2 + 32) = v16;
    *(a2 + 40) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7499020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001B7881090 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B78020F8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B74990B4(uint64_t a1)
{
  v2 = sub_1B74A02CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74990F0(uint64_t a1)
{
  v2 = sub_1B74A02CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.MatchingBehaviour.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995880);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A02CC();
  sub_1B78023F8();
  sub_1B7801FA8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.MatchingBehaviour.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995890);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A02CC();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801E28();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}