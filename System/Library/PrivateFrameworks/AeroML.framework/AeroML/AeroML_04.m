uint64_t AMLComponentIdentifier.__deallocating_deinit()
{
  AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21AEEC8BC(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3DB08, "rq");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AEEC928(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

unint64_t sub_21AEEC95C()
{
  result = qword_27CD3DB20;
  if (!qword_27CD3DB20)
  {
    sub_21AEAF7F0(&qword_27CD3DB10, &qword_21AF0D2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3DB20);
  }

  return result;
}

uint64_t sub_21AEEC9C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_21AEEC9FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_6:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_21AEA784C(*(v3 + 56) + 32 * v10, &v20);
    *&v23 = v13;
    *(&v23 + 1) = v12;
    sub_21AEAF9F4(&v20, v24);
    v14 = *(&v23 + 1);

    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v9;
    if (!v14)
    {
LABEL_10:
      result = sub_21AEA7990(&v23, &qword_27CD3DBD0, qword_21AF0D2D0);
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return result;
    }

    v20 = v23;
    v21 = v24[0];
    v22 = v24[1];
    v16 = v1[5];
    if (!__OFADD__(v16, 1))
    {
      v1[5] = v16 + 1;
      *a1 = v16;
      v17 = v21;
      *(a1 + 8) = v20;
      *(a1 + 24) = v17;
      *(a1 + 40) = v22;
      return result;
    }
  }

  else
  {
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= ((v6 + 64) >> 6))
      {
        *&v18 = sub_21AEEF3D4();
        v23 = v18;
        *v1 = v3;
        v1[1] = v4;
        v1[2] = v6;
        v1[3] = v19;
        v1[4] = 0;
        goto LABEL_10;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id AMLFeaturesConfiguration.init(bundleIdentifier:modelName:versionId:expirationPolicy:featuresDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = sub_21AF097BC();

  if (a4)
  {
    v12 = sub_21AF097BC();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_21AF097BC();

  v15 = [v13 initWithBundleIdentifier:v11 modelName:v12 versionId:v14 expirationPolicy:a7 featuresDescription:a8];

  return v15;
}

id AMLFeaturesConfiguration.init(bundleIdentifier:modelName:versionId:expirationPolicy:featuresDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8)
{
  v22 = a7;
  v10 = sub_21AF0942C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21AF097BC();

  if (a4)
  {
    v16 = sub_21AF097BC();
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_21AF097BC();

  sub_21AF0941C();
  v18 = sub_21AF0940C();
  (*(v11 + 8))(v14, v10);
  sub_21AF097BC();
  sub_21AEEF4A4();
  v19 = [v21 initWithBundleIdentifier:v15 modelName:v16 versionId:v17 expirationPolicy:v22 featuresDescription:a8 configurationId:v18];

  return v19;
}

id sub_21AEED084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8)
{
  v10 = sub_21AF097BC();

  if (a4)
  {
    v11 = sub_21AF097BC();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_21AF097BC();

  v14 = sub_21AF097BC();

  v15 = [v12 initWithBundleIdentifier:v10 modelName:v11 versionId:v13 expirationPolicy:a7 featuresDescription:a8 configurationId:v14];

  return v15;
}

id sub_21AEED1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = (v10 + OBJC_IVAR___AMLFeaturesConfiguration_bundleIdentifier);
  *v11 = a1;
  v11[1] = a2;
  v12 = (v10 + OBJC_IVAR___AMLFeaturesConfiguration_modelName);
  *v12 = a3;
  v12[1] = a4;
  v13 = (v10 + OBJC_IVAR___AMLFeaturesConfiguration_versionId);
  *v13 = a5;
  v13[1] = a6;
  *(v10 + OBJC_IVAR___AMLFeaturesConfiguration_expirationPolicy) = a7;
  *(v10 + OBJC_IVAR___AMLFeaturesConfiguration_featuresDescription) = a8;
  v14 = (v10 + OBJC_IVAR___AMLFeaturesConfiguration_configurationId);
  *v14 = a9;
  v14[1] = a10;
  v16.super_class = AMLFeaturesConfiguration;
  return objc_msgSendSuper2(&v16, sel_init);
}

id AMLFeaturesConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for AMLFeaturesConfiguration(a1);
  v6 = [v3 bundleIdentifier];
  v7 = sub_21AF097CC();
  v19 = v8;
  v20 = v7;

  v18 = sub_21AEEF25C(v3);
  v10 = v9;
  v11 = [v3 versionId];
  v12 = sub_21AF097CC();
  v14 = v13;

  LODWORD(v11) = [v3 expirationPolicy];
  v15 = [v3 featuresDescription];
  v16 = [v3 configurationId];
  sub_21AF097CC();

  result = sub_21AEED084(v20, v19, v18, v10, v12, v14, v11, v15);
  a2[3] = v5;
  *a2 = result;
  return result;
}

Swift::Void __swiftcall AMLFeaturesConfiguration.encode(with:)(NSCoder with)
{
  v3 = [v1 bundleIdentifier];
  if (!v3)
  {
    sub_21AF097CC();
    sub_21AF097BC();
    sub_21AEEF460();
  }

  v4 = sub_21AEEF370();
  sub_21AEEF320();

  sub_21AEEF25C(v1);
  if (v5)
  {
    sub_21AF097BC();
    sub_21AEEF460();
  }

  v6 = sub_21AEEF3FC();
  sub_21AEEF320();
  swift_unknownObjectRelease();

  v7 = [v1 versionId];
  if (!v7)
  {
    sub_21AF097CC();
    sub_21AF097BC();
    sub_21AEEF460();
  }

  v8 = sub_21AEEF350();
  sub_21AEEF320();

  v9 = [v1 expirationPolicy];
  v10 = sub_21AEEF370();
  [(objc_class *)with.super.isa encodeInt32:v9 forKey:v10];

  v11 = [v1 featuresDescription];
  v12 = sub_21AF097BC();
  sub_21AEEF320();

  v13 = [v1 configurationId];
  if (!v13)
  {
    sub_21AF097CC();
    sub_21AF097BC();
    sub_21AEEF4A4();
  }

  v14 = sub_21AEEF3A4();
  sub_21AEEF43C(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
}

id AMLFeaturesConfiguration.init(coder:)(void *a1)
{
  v3 = sub_21AEEF370();
  v4 = sub_21AEEF3F0();
  v6 = [v4 v5];

  if (v6)
  {
    sub_21AF09B9C();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v7, v8, v9, v10, v11, v12, v13, v14, v84, v89, v94, v99, v104.receiver, v104.super_class, v105, v106, v107, v108, v109);
  if (!v15)
  {

LABEL_39:
    v30 = sub_21AEA7990(v110, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_44;
  }

  if ((sub_21AEEF300() & 1) == 0)
  {

LABEL_44:
    type metadata accessor for AMLFeaturesConfiguration(v30);
    sub_21AEEF478();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = v105;
  v16 = v106;
  v18 = sub_21AEEF3FC();
  v19 = sub_21AEEF3F0();
  v21 = [v19 v20];

  if (v21)
  {
    sub_21AF09B9C();
    v22 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v22, v23, v24, v25, v26, v27, v28, v29, v85, v90, v95, v100, v104.receiver, v104.super_class, v105, v106, v107, v108, v109);
  if (!v31)
  {

LABEL_38:

    goto LABEL_39;
  }

  if ((sub_21AEEF300() & 1) == 0)
  {

LABEL_43:

    goto LABEL_44;
  }

  v32 = v106;
  v33 = sub_21AEEF350();
  v34 = sub_21AEEF3F0();
  v36 = [v34 v35];

  if (v36)
  {
    sub_21AF09B9C();
    v37 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v37, v38, v39, v40, v41, v42, v43, v44, v86, v91, v96, v105, v104.receiver, v104.super_class, v105, v106, v107, v108, v109);
  if (!v45)
  {

LABEL_37:

    goto LABEL_38;
  }

  if ((sub_21AEEF300() & 1) == 0)
  {

LABEL_42:

    goto LABEL_43;
  }

  v46 = v106;
  v47 = sub_21AF097BC();
  v48 = sub_21AEEF3F0();
  v50 = [v48 v49];

  if (v50)
  {
    sub_21AF09B9C();
    v51 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v51, v52, v53, v54, v55, v56, v57, v58, v87, v92, v105, v101, v104.receiver, v104.super_class, v105, v106, v107, v108, v109);
  if (!v60)
  {

LABEL_36:

    goto LABEL_37;
  }

  type metadata accessor for AMLFeaturesSpecification(v59);
  if ((sub_21AEEF300() & 1) == 0)
  {

LABEL_41:

    goto LABEL_42;
  }

  v61 = sub_21AEEF3A4();
  v62 = sub_21AEEF3F0();
  v64 = [v62 v63];

  if (v64)
  {
    sub_21AF09B9C();
    v65 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v65, v66, v67, v68, v69, v70, v71, v72, v88, v105, v97, v102, v104.receiver, v104.super_class, v105, v106, v107, v108, v109);
  if (!v73)
  {

    goto LABEL_36;
  }

  if ((sub_21AEEF300() & 1) == 0)
  {

    goto LABEL_41;
  }

  v74 = v105;
  v75 = v106;
  v76 = sub_21AEEF370();
  v77 = [a1 decodeInt32ForKey_];

  v78 = &v1[OBJC_IVAR___AMLFeaturesConfiguration_bundleIdentifier];
  *v78 = v17;
  v78[1] = v16;
  v79 = &v1[OBJC_IVAR___AMLFeaturesConfiguration_modelName];
  *v79 = v103;
  *(v79 + 1) = v32;
  v80 = &v1[OBJC_IVAR___AMLFeaturesConfiguration_versionId];
  *v80 = v98;
  *(v80 + 1) = v46;
  *&v1[OBJC_IVAR___AMLFeaturesConfiguration_expirationPolicy] = v77;
  *&v1[OBJC_IVAR___AMLFeaturesConfiguration_featuresDescription] = v93;
  v81 = &v1[OBJC_IVAR___AMLFeaturesConfiguration_configurationId];
  *v81 = v74;
  v81[1] = v75;
  v104.receiver = v1;
  v104.super_class = AMLFeaturesConfiguration;
  v82 = objc_msgSendSuper2(&v104, sel_init);

  return v82;
}

uint64_t sub_21AEEDCB4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMLFeaturesSpecification_featuresDescription);
  *(v1 + OBJC_IVAR___AMLFeaturesSpecification_featuresDescription) = a1;
  return sub_21AEEF2F8();
}

id AMLFeaturesSpecification.init(featuresDescription:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___AMLFeaturesSpecification_featuresDescription) = a1;
  v3.super_class = AMLFeaturesSpecification;
  return objc_msgSendSuper2(&v3, sel_init);
}

id AMLFeaturesSpecification.init(featureDictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21AF0971C();

  v2 = [v0 initWithFeatureDictionary_];

  return v2;
}

id AMLFeaturesSpecification.init(featureDictionary:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  sub_21AEEC9C0(a1, &v20);
  while (1)
  {
    sub_21AEEC9FC(&v14);
    v17 = v14;
    v18[0] = v15[0];
    v18[1] = v15[1];
    v19 = v16;
    v2 = *&v15[0];
    if (!*&v15[0])
    {
      break;
    }

    v3 = *(&v17 + 1);
    sub_21AEAF9F4((v18 + 8), v12);
    *&v14 = v3;
    *(&v14 + 1) = v2;
    sub_21AEAF9F4(v12, v15);
    sub_21AEB3898(&v14, v10);

    if (swift_dynamicCast())
    {
      v4 = v9;
    }

    else
    {
      v4 = 0;
    }

    sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
    sub_21AEB3898(&v14, v10);
    v5 = sub_21AEEDFE4(v10[0], v10[1], v4, 0, 0);
    sub_21AEA79F0(v11);
    v6 = v5;
    MEMORY[0x21CEE4AD0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21AF098CC();
    }

    sub_21AF0991C();

    sub_21AEA7990(&v14, &qword_27CD3D840, &qword_21AF0C5B0);
    v1 = v21;
  }

  sub_21AE96764();
  *&v8[OBJC_IVAR___AMLFeaturesSpecification_featuresDescription] = v1;
  v13.receiver = v8;
  v13.super_class = AMLFeaturesSpecification;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_21AEEDFE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_21AF097BC();

  if (a5)
  {
    sub_21AEA7574(&qword_27CD3DBC8, &qword_21AF0D2C8);
    v9 = sub_21AF0987C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() featureDescriptionWithName:v8 type:a3 optional:a4 & 1 constraints:v9];

  return v10;
}

id sub_21AEEE0F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AMLFeaturesSpecification(a1);
  v5 = [v2 featuresDescription];
  sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  sub_21AEEF478();
  sub_21AF0988C();

  result = _sSo24AMLFeaturesSpecificationC6AeroMLE19featuresDescriptionABSaySo09MLFeatureF0CG_tcfC_0();
  a2[3] = v4;
  *a2 = result;
  return result;
}

id _sSo24AMLFeaturesSpecificationC6AeroMLE19featuresDescriptionABSaySo09MLFeatureF0CG_tcfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  v1 = sub_21AF0987C();

  v2 = [v0 initWithFeaturesDescription_];

  return v2;
}

void sub_21AEEE224(void *a1)
{
  v3 = [v1 featuresDescription];
  if (!v3)
  {
    v3 = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
    sub_21AF0988C();
    sub_21AF0987C();
    sub_21AEEF4A4();
  }

  sub_21AEEF390();
  v4 = sub_21AF097BC();
  [a1 encodeObject:v3 forKey:v4];
}

id AMLFeaturesSpecification.init(coder:)(void *a1)
{
  sub_21AEEF390();
  v3 = sub_21AF097BC();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_21AF09B9C();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  sub_21AEEF3E0(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18.receiver, v18.super_class, v19, v20, *(&v20 + 1), v21);
  if (!v13)
  {

    v15 = sub_21AEA7990(v22, &qword_27CD3D330, &unk_21AF0C420);
LABEL_9:
    type metadata accessor for AMLFeaturesSpecification(v15);
    sub_21AEEF478();
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_21AEA7574(&qword_27CD3DB80, &unk_21AF0D2B8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR___AMLFeaturesSpecification_featuresDescription] = v19;
  v18.receiver = v1;
  v18.super_class = AMLFeaturesSpecification;
  v14 = objc_msgSendSuper2(&v18, sel_init);

  return v14;
}

id sub_21AEEE538(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_21AF097BC();

  return v3;
}

uint64_t sub_21AEEE624(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___AMLFeaturesDonationMetadata_sessionId);
  v4 = *(v2 + OBJC_IVAR___AMLFeaturesDonationMetadata_sessionId + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_21AEEF2F8();
}

uint64_t sub_21AEEE748(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMLFeaturesDonationMetadata_metadata);
  *(v1 + OBJC_IVAR___AMLFeaturesDonationMetadata_metadata) = a1;
  return sub_21AEEF2F8();
}

id AMLFeaturesDonationMetadata.init(sessionId:metadata:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_21AF097BC();

  if (a3)
  {
    sub_21AF0971C();
    sub_21AEEF460();
  }

  else
  {
    a2 = 0;
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSessionId:v5 metadata:a2];

  return v6;
}

id AMLFeaturesDonationMetadata.init(sessionId:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR___AMLFeaturesDonationMetadata_metadata;
  *(v3 + OBJC_IVAR___AMLFeaturesDonationMetadata_metadata) = 0;
  v5 = (v3 + OBJC_IVAR___AMLFeaturesDonationMetadata_sessionId);
  *v5 = a1;
  v5[1] = a2;
  *(v3 + v4) = a3;
  v7.super_class = AMLFeaturesDonationMetadata;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21AEEE8D0@<X0>(void *a1@<X8>)
{
  v3 = [v1 sessionId];
  v4 = sub_21AF097CC();
  v6 = v5;

  v7 = sub_21AEB3760(v1);
  v8 = objc_allocWithZone(AMLFeaturesDonationMetadata);
  v9 = sub_21AEE0BB4(v4, v6, v7);
  result = type metadata accessor for AMLFeaturesDonationMetadata(v9);
  a1[3] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_21AEEE984(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_21AEAF9B0(v8, v8[3]);
  v6 = sub_21AF09E3C();
  sub_21AEA79F0(v8);
  return v6;
}

void sub_21AEEE9F4()
{
  v1 = [v0 sessionId];
  if (!v1)
  {
    sub_21AF097CC();
    sub_21AF097BC();
    sub_21AEEF460();
  }

  v2 = sub_21AEEF350();
  sub_21AEEF320();

  if (sub_21AEB3760(v0))
  {
    sub_21AF0971C();
    sub_21AEEF4A4();
  }

  v3 = sub_21AED2EE0();
  sub_21AEEF43C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  swift_unknownObjectRelease();
}

id _sSo24AMLFeaturesConfigurationC6AeroMLE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id AMLFeaturesDonationMetadata.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___AMLFeaturesDonationMetadata_metadata;
  *&v1[OBJC_IVAR___AMLFeaturesDonationMetadata_metadata] = 0;
  v4 = sub_21AEEF350();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_21AF09B9C();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  sub_21AEEF3E0(v6, v7, v8, v9, v10, v11, v12, v13, v35.receiver, v35.super_class, v36, v37, v38, *(&v38 + 1), v39);
  if (!v14)
  {

LABEL_15:
    sub_21AEA7990(v40, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_16;
  }

  if ((sub_21AEEF484() & 1) == 0)
  {

LABEL_16:
    v32 = *&v1[v3];

    type metadata accessor for AMLFeaturesDonationMetadata(v33);
    sub_21AEEF478();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = v36;
  v15 = v37;
  v17 = sub_21AED2EE0();
  v18 = [a1 decodeObjectForKey_];

  if (v18)
  {
    sub_21AF09B9C();
    v19 = swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  sub_21AEEF3E0(v19, v20, v21, v22, v23, v24, v25, v26, v35.receiver, v35.super_class, v36, v37, v38, *(&v38 + 1), v39);
  if (!v27)
  {

    goto LABEL_15;
  }

  sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
  if ((sub_21AEEF484() & 1) == 0)
  {

    goto LABEL_16;
  }

  v28 = v36;
  v29 = &v1[OBJC_IVAR___AMLFeaturesDonationMetadata_sessionId];
  *v29 = v16;
  v29[1] = v15;
  v30 = *&v1[v3];
  *&v1[v3] = v28;

  v35.receiver = v1;
  v35.super_class = AMLFeaturesDonationMetadata;
  v31 = objc_msgSendSuper2(&v35, sel_init);

  return v31;
}

uint64_t AMLFeaturesConfiguration.description.getter()
{
  v1 = v0;
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD00000000000002ELL, 0x800000021AF10440);
  v2 = [v0 bundleIdentifier];
  sub_21AF097CC();

  sub_21AEEF420();

  MEMORY[0x21CEE4A70](0x6C65646F6D09090ALL, 0xEE00203A656D614ELL);
  v3 = sub_21AEEF25C(v1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 7104878;
    v5 = 0xE300000000000000;
  }

  MEMORY[0x21CEE4A70](v3, v5);

  MEMORY[0x21CEE4A70](0x697372657609090ALL, 0xEE00203A64496E6FLL);
  v6 = [v1 versionId];
  sub_21AF097CC();

  sub_21AEEF420();

  sub_21AEEF390();
  MEMORY[0x21CEE4A70](0xD000000000000015);
  [v1 expirationPolicy];
  v7 = sub_21AF09E1C();
  MEMORY[0x21CEE4A70](v7);

  MEMORY[0x21CEE4A70](0xD000000000000019, 0x800000021AF10490);
  v8 = [v1 featuresDescription];
  v9 = [v8 description];
  v10 = sub_21AF097CC();
  v12 = v11;

  MEMORY[0x21CEE4A70](v10, v12);

  MEMORY[0x21CEE4A70](0xD000000000000017, 0x800000021AF104B0);
  v13 = [v1 configurationId];
  sub_21AF097CC();

  sub_21AEEF420();

  return 0;
}

id sub_21AEEF104(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21AF097BC();

  return v5;
}

uint64_t AMLFeaturesSpecification.description.getter()
{
  sub_21AF09C5C();
  sub_21AEEF390();
  MEMORY[0x21CEE4A70](0xD000000000000032);
  v1 = [v0 featuresDescription];
  v2 = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  sub_21AEC76A0();
  v3 = sub_21AF0988C();

  v4 = MEMORY[0x21CEE4B10](v3, v2);
  v6 = v5;

  MEMORY[0x21CEE4A70](v4, v6);

  return 0;
}

uint64_t sub_21AEEF25C(void *a1)
{
  v1 = [a1 modelName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21AF097CC();

  return v3;
}

uint64_t sub_21AEEF300()
{

  return swift_dynamicCast();
}

id sub_21AEEF320()
{

  return [v0 (v3 + 3842)];
}

uint64_t sub_21AEEF350()
{

  return sub_21AF097BC();
}

uint64_t sub_21AEEF370()
{

  return sub_21AF097BC();
}

uint64_t sub_21AEEF3A4()
{

  return sub_21AF097BC();
}

uint64_t sub_21AEEF3FC()
{

  return sub_21AF097BC();
}

void sub_21AEEF420()
{

  JUMPOUT(0x21CEE4A70);
}

id sub_21AEEF43C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return [v10 (v12 + 3842)];
}

uint64_t sub_21AEEF460()
{
}

uint64_t sub_21AEEF484()
{

  return swift_dynamicCast();
}

uint64_t sub_21AEEF4A4()
{
}

void *sub_21AEEF4D0(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_21AEACCB8();
      if (sub_21AEF7764(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_21AEEF5AC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_21AE96764();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_21AEEF64C()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_21AF09C5C();
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C();
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C();
  sub_21AEF8290();
  MEMORY[0x21CEE4A70](0xD000000000000019);
  sub_21AEF839C();
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C();
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C();
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C();
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C();
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C();
  return 0;
}

uint64_t sub_21AEEF808()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EBD0);
  sub_21AEA7958(v0, qword_27CD3EBD0);
  return sub_21AF096BC();
}

void *sub_21AEEF888()
{
  v1 = [BiomeLibrary() AeroML];
  sub_21AEE2064();
  swift_unknownObjectRelease();
  v2 = [v0 RawEvent];
  swift_unknownObjectRelease();
  v3 = [v2 PhotosSearchSession];
  sub_21AEE2064();
  swift_unknownObjectRelease();
  return v0;
}

id sub_21AEEF918()
{
  v1 = [BiomeLibrary() Photos];
  sub_21AEE2064();
  swift_unknownObjectRelease();
  v2 = [v0 Search];
  swift_unknownObjectRelease();
  return v2;
}

void sub_21AEEF988(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    oslog = v2;
    [v2 logMessage:a1];
  }

  else
  {
    if (qword_281228710 != -1)
    {
      sub_21AEF81C4();
      swift_once();
    }

    v3 = sub_21AF096CC();
    sub_21AEC78A8(v3, qword_27CD3EBD0);
    oslog = sub_21AF096AC();
    v4 = sub_21AF09A9C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21AE94000, oslog, v4, "Unable to get PETEventTracker2", v5, 2u);
      sub_21AEAFB90();
    }
  }
}

id sub_21AEEFAB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v186 = a4;
  v185 = a3;
  v184 = a2;
  v194 = a1;
  v6 = sub_21AF093FC();
  v7 = sub_21AEA7C90(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_21AEAD074();
  v14 = (v12 - v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v170 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v170 - v20;
  MEMORY[0x28223BE20](v19);
  j = (&v170 - v22);
  v24 = sub_21AEA7574(&qword_27CD3DBD8, qword_21AF0D330);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v170 - v26;
  v28 = sub_21AF0925C();
  v29 = sub_21AEA7C90(v28);
  v187 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v191 = &v170 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = MEMORY[0x277D84F90];
  v190 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  v34 = [objc_opt_self() mainBundle];
  v35 = sub_21AEF750C(v34);
  v192 = v28;
  v193 = a5;
  v189 = v36;
  if (v36)
  {
    if (a5)
    {
      v37 = v35;
      sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v38 = sub_21AEC7C30();
      sub_21AEF8364(v38, xmmword_21AF0C5D0);
      v28 = &v198;
      sub_21AF09C5C();
      MEMORY[0x21CEE4A70](0xD00000000000003CLL, 0x800000021AF106F0);
      MEMORY[0x21CEE4A70](v37, v189);
      sub_21AEF83CC();
      v39 = v198;
      *(v38 + 56) = MEMORY[0x277D837D0];
      *(v38 + 32) = v39;
      sub_21AEC76AC();
    }
  }

  else
  {
    if (qword_281228710 != -1)
    {
      sub_21AEF81C4();
      swift_once();
    }

    v40 = sub_21AF096CC();
    sub_21AEC78A8(v40, qword_27CD3EBD0);
    v28 = sub_21AF096AC();
    v41 = sub_21AF09A8C();
    if (os_log_type_enabled(v28, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_21AE94000, v28, v41, "Missing incoming bundleId while performing photos client data upload to PET", v42, 2u);
      sub_21AEAFB90();
    }

    sub_21AEF83CC();
  }

  sub_21AEF7578(v194, v27);
  if (sub_21AEA766C(v27, 1, v28) == 1)
  {
    sub_21AEA7990(v27, &qword_27CD3DBD8, qword_21AF0D330);
    sub_21AF093EC();
    sub_21AF0938C();
    v43 = *(v9 + 8);
    v44 = sub_21AEF81F0();
    v43(v44);
    sub_21AF093EC();
    v45 = *(v9 + 16);
    v45(v18, j, v6);
    v45(v14, v21, v6);
    v46 = *&v191;
    sub_21AF0923C();
    v47 = sub_21AEF81F0();
    v43(v47);
    (v43)(j, v6);
    sub_21AEF84F8();
  }

  else
  {
    sub_21AEF84F8();
    v46 = *&v191;
    j[4](v191, v27, v28);
  }

  v48 = sub_21AEEF888();
  v49 = v190;
  sub_21AEE5B34();
  i = v50;

  v52 = sub_21AEEF918();
  sub_21AEE5DB0();
  v54 = v53;

  v55 = v54;
  if (*(i + 16) && *(v54 + 16))
  {
    v182 = i;
    v56 = sub_21AEF81F0();
    v183 = sub_21AEF4140(v56, v57, v58);
    v46 = 0.0;
    v194 = *(v54 + 16);
    v173 = ",N,C";
    v177 = "com.apple.searchd";
    v176 = "peopleMatchPercent";
    v175 = "matchedLocationRatio";
    v174 = "matchedSceneConfidence";
    v59 = v54 + 40;
    v60 = MEMORY[0x277D84F90];
    v178 = xmmword_21AF0C5D0;
    v180 = v55 + 40;
LABEL_15:
    for (i = v59 + 16 * *&v46; ; i += 16)
    {
      if (v194 == *&v46)
      {

        v46 = *&v191;
        goto LABEL_115;
      }

      if (*&v46 >= *(v55 + 16))
      {
        break;
      }

      v61 = *(i - 8);
      v49 = *i;
      sub_21AEF2928();
      v63 = v62;
      v65 = v64;
      result = [objc_allocWithZone(AMLPhotosSearchLabeledData) init];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v67 = result;
      [result setUiSurface_];
      if (v65)
      {
        *&v68 = COERCE_DOUBLE(sub_21AEACE30(v49, &selRef_identifier));
        if (v69)
        {
          v70 = v69;
          i = v68;
          v71 = objc_opt_self();
          v181 = v65;
          v188 = i;
          v72 = sub_21AF097BC();
          v73 = [v71 clientDonationForPhotoId:v72 aroundTime:v63];

          v179 = v73;
          if (!v73)
          {
            goto LABEL_99;
          }

          v74 = v179;
          v75 = [v74 arrayProvider];
          if (!v75)
          {
            goto LABEL_96;
          }

          v171 = v74;
          v76 = v75;
          type metadata accessor for AMLDonationDecodeHelper();
          v170 = v76;
          v77 = sub_21AEAA6C0(v76);
          if (!v77)
          {
            goto LABEL_95;
          }

          v78 = v77;
          if (v193)
          {
            sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
            *&i = COERCE_DOUBLE(sub_21AEC7C30());
            sub_21AEF8364(i, v178);
            sub_21AF09C5C();

            *&v198 = 0x203A7865646E49;
            *(&v198 + 1) = 0xE700000000000000;
            v197[0] = v46;
            v79 = sub_21AF09E1C();
            MEMORY[0x21CEE4A70](v79);

            sub_21AEF83FC();
            v80 = [v171 description];
            v81 = sub_21AF097CC();
            v83 = v82;

            MEMORY[0x21CEE4A70](v81, v83);

            v84 = v198;
            *(i + 56) = MEMORY[0x277D837D0];
            *(i + 32) = v84;
            sub_21AEC76AC();
          }

          v172 = 0;
          for (j = 0; ; j = (j + 1))
          {
            while (2)
            {
              v85 = *(v78 + 16);
              if (j == v85)
              {

                sub_21AEF84F8();
                v95 = v172;
                if (v172)
                {
                  sub_21AEC8AA8(v172, &v198);
                  if (v199)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v96 = v197[0];
                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v198, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v96 = 0.0;
LABEL_49:
                  [v67 setL1Score_];
                  sub_21AEC8AA8(v95, &v198);
                  if (v199)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v97 = v197[0];
                      goto LABEL_54;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v198, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v97 = 0.0;
LABEL_54:
                  [v67 setL2ModelScore_];
                  sub_21AEC8AA8(v95, &v198);
                  if (v199)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v98 = v197[0];
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v198, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v98 = 0.0;
LABEL_59:
                  [v67 setFreshness_];
                  sub_21AEC8AA8(v95, &v198);
                  if (v199)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v99 = v197[0] > 0.0;
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v198, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v99 = 0;
LABEL_64:
                  [v67 setFavorited_];
                  sub_21AEC8AA8(v95, &v198);
                  if (v199)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v100 = v197[0];
                      goto LABEL_69;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v198, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v100 = 0.0;
LABEL_69:
                  [v67 setAestheticScore_];
                  sub_21AEC8AA8(v95, &v198);
                  if (v199)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v101 = v197[0];
                      goto LABEL_74;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v198, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v101 = 0.0;
LABEL_74:
                  [v67 setCurationScore_];
                  sub_21AEF81FC();
                  sub_21AEF8338(v102);
                  if (v199)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v103 = v197[0];
                      goto LABEL_79;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v198, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v103 = 0.0;
LABEL_79:
                  [v67 setMatchedPeopleRatio_];
                  sub_21AEF81FC();
                  sub_21AEF8338(v104);
                  if (v199)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v105 = v197[0];
                      goto LABEL_84;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v198, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v105 = 0.0;
LABEL_84:
                  [v67 setMatchedLocationRatio_];
                  sub_21AEF81FC();
                  sub_21AEF8338(v106);
                  if (v199)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v107 = v197[0];
                      goto LABEL_89;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v198, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v107 = 0.0;
LABEL_89:
                  [v67 setMatchedSceneConfidence_];
                  sub_21AEF81FC();
                  sub_21AEF8338(v108);

                  if (v199)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v109 = v197[0];
                      goto LABEL_94;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v198, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v109 = 0.0;
LABEL_94:
                  [v67 setMatchedSceneBoundingBox_];
                }

LABEL_95:

                v74 = v171;
LABEL_96:
                [v67 setUiSurface_];
                v110 = [v74 metadata];
                if (v110)
                {
                  v111 = v110;
                  v112 = [v110 sessionId];
                  sub_21AF097CC();
                  j = v74;

                  sub_21AEF84F8();
                  sub_21AEF76D4(v113, v114, v67);
                }

LABEL_99:
                v115 = sub_21AF099BC();
                v117 = sub_21AED1A58(v115, v116, v183);

                if (v117)
                {
                  if (*(v117 + 16) && (v119 = sub_21AED0594(), (v120 & 1) != 0))
                  {
                    v121 = (*(v117 + 56) + (v119 << 6));
                    v122 = *v121;
                    v123 = v121[1];
                    v124 = v121[2];
                    v125 = v121[3];
                    v126 = v121[4];
                    v127 = v121[5];
                    v128 = *(v121 + 7);
                    v171 = *(v121 + 6);
                    v172 = v128;

                    [v67 setHasEverClickInLastMonth_];
                    [v67 setClickCountInLastMonthNormalizedAcrossItems_];
                    [v67 setHasEverClickInLastWeek_];
                    [v67 setClickCountInLastWeekNormalizedAcrossItems_];
                    [v67 setClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems_];
                    [v67 setClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems_];
                    [v67 setClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems_];
                    v118 = [v67 setClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems_];
                  }

                  else
                  {
                  }
                }

                v129 = sub_21AEF82CC(v118, sel_setClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems_);
                v130 = sub_21AEF82CC(v129, sel_setClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems_);
                v131 = sub_21AEF82CC(v130, sel_setClickCountGivenLocationInLastMonthNormalizedAcrossItems_);
                v132 = sub_21AEF82CC(v131, sel_setClickCountGivenLocationInLastWeekNormalizedAcrossItems_);
                v133 = sub_21AEF82CC(v132, sel_setClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems_);
                v134 = sub_21AEF82CC(v133, sel_setClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems_);
                v135 = sub_21AEF82CC(v134, sel_setClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems_);
                v136 = sub_21AEF82CC(v135, sel_setClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems_);
                sub_21AEF82CC(v136, sel_setClipScore_);
                v137.n128_u64[0] = v61;
                sub_21AEF2614(v137);
                v139 = v138;
                [v67 setHasEverShareInLastMonth_];
                [v67 setShareCountInLastMonthNormalizedAcrossItems_];
                v140.n128_u64[0] = v61;
                sub_21AEF2620(v140);
                v142 = v141;
                [v67 setHasEverShareInLastMonth_];
                v143 = sub_21AEF82CC([v67 setShareCountInLastWeekNormalizedAcrossItems_], sel_setIsCompleteMatch_);
                v144 = sub_21AEF82CC(v143, sel_setIsDuplicate_);
                v145 = sub_21AEF82CC(v144, sel_setL2ModelScore_);
                v146 = sub_21AEF82CC(v145, sel_setShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems_);
                v147 = sub_21AEF82CC(v146, sel_setShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems_);
                v148 = sub_21AEF82CC(v147, sel_setShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems_);
                v149 = sub_21AEF82CC(v148, sel_setShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems_);
                v150 = sub_21AEF82CC(v149, sel_setShareCountGivenLocationInLastMonthNormalizedAcrossItems_);
                v151 = sub_21AEF82CC(v150, sel_setShareCountGivenLocationInLastWeekNormalizedAcrossItems_);
                v152 = sub_21AEF82CC(v151, sel_setShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems_);
                v153 = sub_21AEF82CC(v152, sel_setShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems_);
                v154 = sub_21AEF82CC(v153, sel_setShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems_);
                sub_21AEF82CC(v154, sel_setShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems_);
                sub_21AEF8504();
                v155 = v181;
                sub_21AEF20EC();
                v157 = v156;

                [v67 setClickOrder_];
                v158 = [v155 presentedAssets];
                v159 = sub_21AEC7874();
                sub_21AEA7B80(v159, &qword_27CD3D6C0, 0x277CF0FD0);
                sub_21AEEF478();
                sub_21AF0988C();

                sub_21AEF24E0();
                v161 = v160;

                v162 = [v67 setItemPosition_];
                if (v184)
                {
                  sub_21AEEF988(v67);
                }

                MEMORY[0x21CEE4AD0](v162);
                if (*((v200 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v200 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_21AF098CC();
                }

                ++*&v46;
                sub_21AF0991C();
                v60 = v200;

                v59 = v180;
                goto LABEL_15;
              }

              if (j >= v85)
              {
                goto LABEL_117;
              }

              v86 = *(v78 + 8 * j + 32);
              if (!*(v86 + 16))
              {
                goto LABEL_118;
              }

              v87 = *(v78 + 8 * j + 32);

              v88 = sub_21AED0594();
              if ((v89 & 1) == 0)
              {
                goto LABEL_119;
              }

              sub_21AEA784C(*(v86 + 56) + 32 * v88, v197);
              v90 = sub_21AED1AF0();
              sub_21AEAF9F4(v90, v91);
              swift_dynamicCast();
              if (v195 == v188 && v70 == v196)
              {
              }

              else
              {
                *&i = COERCE_DOUBLE(sub_21AF09E4C());

                if ((i & 1) == 0)
                {

                  j = (j + 1);
                  continue;
                }
              }

              break;
            }

            if (v193)
            {
              sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
              v93 = sub_21AEC7C30();
              sub_21AEF8364(v93, v178);
              *&i = COERCE_DOUBLE(sub_21AF0971C());
              v197[0] = *&i;
              sub_21AED1AF0();
              sub_21AF09CFC();

              v94 = v198;
              *(v93 + 56) = MEMORY[0x277D837D0];
              *(v93 + 32) = v94;
              sub_21AEC76AC();
            }

            v172 = v86;
          }
        }
      }

      ++*&v46;
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
  }

  else
  {

    if (qword_281228710 == -1)
    {
      goto LABEL_110;
    }
  }

  sub_21AEF81C4();
  swift_once();
LABEL_110:
  v163 = sub_21AF096CC();
  sub_21AEC78A8(v163, qword_27CD3EBD0);

  v164 = v55;
  v165 = sub_21AF096AC();
  v166 = sub_21AF09A8C();
  if (sub_21AEE2C98(v166))
  {
    v167 = sub_21AEB3B54();
    *v167 = 134218240;
    v168 = *(i + 16);

    *(v167 + 4) = v168;

    *(v167 + 12) = 2048;
    v169 = *(v164 + 16);

    *(v167 + 14) = v169;

    _os_log_impl(&dword_21AE94000, v165, v166, "Unable to send data to PET; biome streams: raw search %ld or feedback stream %ld are empty", v167, 0x16u);
    sub_21AEAFB90();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v60 = 0;
LABEL_115:
  (j[1])(COERCE_DOUBLE(*&v46), v192);
  return v60;
}

void sub_21AEF0FEC()
{
  sub_21AEAD0C4();
  v92 = v1;
  if (!v1)
  {
    goto LABEL_48;
  }

  if (v1 >> 62)
  {
    v2 = sub_21AF09DAC();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_48:
    sub_21AEAD0A8();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_48;
  }

LABEL_4:
  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  if (v2 >= 1)
  {
    v3 = 0;
    v91 = v2;
    while (1)
    {
      if ((v92 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CEE4EF0](v3, v92);
      }

      else
      {
        v4 = *(v92 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [BiomeLibrary() AeroML];
      sub_21AEE2064();
      swift_unknownObjectRelease();
      v7 = [v0 LabeledData];
      swift_unknownObjectRelease();
      v8 = [v7 PhotosSearchLabeledData];
      sub_21AEE2064();
      swift_unknownObjectRelease();
      v9 = [v0 source];

      v10 = [v5 uiSurface];
      v142 = v9;
      switch(v10)
      {
        case 0:
          v11 = @"AMLUISurfaceTypeUnknown";
          goto LABEL_14;
        case 1:
          v11 = @"AMLUISurfaceTypeSpotlight";
          goto LABEL_14;
        case 2:
          v11 = @"AMLUISurfaceTypePhotosApp";
          goto LABEL_14;
        case 3:
          v11 = @"AMLUISurfaceTypeStoryTellingBackground";
LABEL_14:
          v12 = v11;
          v13 = v11;
          break;
        default:
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
          break;
      }

      v14 = v13;
      if (v14)
      {
        v15 = v14;
        v16 = sub_21AF097CC();
        v18 = v17;

        sub_21AEF84AC();
        v20 = v16 == v19 - 2 && 0x800000021AF10730 == v18;
        if (v20 || (sub_21AED1CDC() & 1) != 0)
        {
        }

        else
        {
          sub_21AEF84AC();
          v83 = v16 == v82 && 0x800000021AF10750 == v18;
          if (v83 || (sub_21AED1CDC() & 1) != 0)
          {

            v84 = 1;
            goto LABEL_32;
          }

          sub_21AEF84AC();
          v86 = v16 == v85 && 0x800000021AF10770 == v18;
          if (v86 || (sub_21AED1CDC() & 1) != 0)
          {

            v84 = 2;
            goto LABEL_32;
          }

          sub_21AEF84AC();
          if (v16 == v87 + 13 && 0x800000021AF10790 == v18)
          {

LABEL_46:
            v84 = 3;
LABEL_32:
            v141 = v84;
            goto LABEL_23;
          }

          v89 = sub_21AED1CDC();

          if (v89)
          {
            goto LABEL_46;
          }
        }
      }

      v141 = 0;
LABEL_23:
      v21 = sub_21AEACE30(v5, &selRef_searchSessionUUID);
      v139 = v22;
      v140 = v21;
      [v5 matchedPeopleRatio];
      v23 = sub_21AEF82B4();
      v138 = sub_21AEF829C(v23);
      [v5 matchedLocationRatio];
      v24 = sub_21AEF82B4();
      v137 = sub_21AEF829C(v24);
      [v5 matchedSceneRatio];
      v25 = sub_21AEF82B4();
      v136 = sub_21AEF829C(v25);
      [v5 matchedSceneConfidence];
      v26 = sub_21AEF82B4();
      v135 = sub_21AEF829C(v26);
      [v5 matchedSceneBoundingBox];
      v27 = sub_21AEF82B4();
      v134 = sub_21AEF829C(v27);
      [v5 matchedOCRCharacterRatio];
      v28 = sub_21AEF82B4();
      v133 = sub_21AEF829C(v28);
      [v5 matchedOCRImportance];
      v29 = sub_21AEF82B4();
      v132 = sub_21AEF829C(v29);
      v30 = [v5 matchedFieldsCount];
      v131 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      [v5 l1Score];
      v31 = sub_21AEF82B4();
      v130 = sub_21AEF829C(v31);
      [v5 freshness];
      v32 = sub_21AEF82B4();
      v129 = sub_21AEF829C(v32);
      v33 = [v5 favorited];
      v128 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v5 aestheticScore];
      v34 = sub_21AEF82B4();
      v127 = sub_21AEF829C(v34);
      [v5 curationScore];
      v35 = sub_21AEF82B4();
      v126 = sub_21AEF829C(v35);
      [v5 hasEverClickInLastWeek];
      v36 = sub_21AEF82B4();
      v125 = sub_21AEF829C(v36);
      [v5 hasEverClickInLastMonth];
      v37 = sub_21AEF82B4();
      v124 = sub_21AEF829C(v37);
      [v5 hasEverShareInLastWeek];
      v38 = sub_21AEF82B4();
      v123 = sub_21AEF829C(v38);
      [v5 hasEverShareInLastMonth];
      v39 = sub_21AEF82B4();
      v122 = sub_21AEF829C(v39);
      [v5 clickCountInLastWeekNormalizedAcrossItems];
      v40 = sub_21AEF82B4();
      v121 = sub_21AEF829C(v40);
      [v5 clickCountInLastMonthNormalizedAcrossItems];
      v41 = sub_21AEF82B4();
      v120 = sub_21AEF829C(v41);
      [v5 shareCountInLastWeekNormalizedAcrossItems];
      v42 = sub_21AEF82B4();
      v119 = sub_21AEF829C(v42);
      [v5 shareCountInLastMonthNormalizedAcrossItems];
      v43 = sub_21AEF82B4();
      v118 = sub_21AEF829C(v43);
      [v5 clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
      v44 = sub_21AEF82B4();
      v117 = sub_21AEF829C(v44);
      [v5 clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
      v45 = sub_21AEF82B4();
      v116 = sub_21AEF829C(v45);
      [v5 clickCountGivenLocationInLastWeekNormalizedAcrossItems];
      v46 = sub_21AEF82B4();
      v115 = sub_21AEF829C(v46);
      [v5 clickCountGivenLocationInLastMonthNormalizedAcrossItems];
      v47 = sub_21AEF82B4();
      v114 = sub_21AEF829C(v47);
      [v5 clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
      v48 = sub_21AEF82B4();
      v113 = sub_21AEF829C(v48);
      [v5 clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
      v49 = sub_21AEF82B4();
      v112 = sub_21AEF829C(v49);
      [v5 clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
      v50 = sub_21AEF82B4();
      v111 = sub_21AEF829C(v50);
      [v5 clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
      v51 = sub_21AEF82B4();
      v110 = sub_21AEF829C(v51);
      [v5 clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
      v52 = sub_21AEF82B4();
      v109 = sub_21AEF829C(v52);
      [v5 clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
      v53 = sub_21AEF82B4();
      v108 = sub_21AEF829C(v53);
      [v5 clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
      v54 = sub_21AEF82B4();
      v107 = sub_21AEF829C(v54);
      [v5 clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
      v55 = sub_21AEF82B4();
      v106 = sub_21AEF829C(v55);
      [v5 shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
      v56 = sub_21AEF82B4();
      v105 = sub_21AEF829C(v56);
      [v5 shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
      v57 = sub_21AEF82B4();
      v104 = sub_21AEF829C(v57);
      [v5 shareCountGivenLocationInLastWeekNormalizedAcrossItems];
      v58 = sub_21AEF82B4();
      v103 = sub_21AEF829C(v58);
      [v5 shareCountGivenLocationInLastMonthNormalizedAcrossItems];
      v59 = sub_21AEF82B4();
      v102 = sub_21AEF829C(v59);
      [v5 shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
      v60 = sub_21AEF82B4();
      v101 = sub_21AEF829C(v60);
      [v5 shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
      v61 = sub_21AEF82B4();
      v100 = sub_21AEF829C(v61);
      v99 = sub_21AF09B3C();
      v98 = sub_21AF09B3C();
      [v5 shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
      v62 = sub_21AEF82B4();
      v97 = sub_21AEF829C(v62);
      [v5 shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
      v63 = sub_21AEF82B4();
      v96 = sub_21AEF829C(v63);
      [v5 shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
      v64 = sub_21AEF82B4();
      v95 = sub_21AEF829C(v64);
      [v5 shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
      v65 = sub_21AEF82B4();
      v94 = sub_21AEF829C(v65);
      [v5 clipScore];
      v66 = sub_21AEF82B4();
      v93 = sub_21AEF829C(v66);
      v67 = [v5 clicked];
      v68 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v69 = [v5 clickOrder];
      v70 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v71 = [v5 itemPosition];
      v72 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      [v5 l2ModelScore];
      v73 = sub_21AEF82B4();
      v74 = sub_21AEF829C(v73);
      [v5 isDuplicate];
      v75 = sub_21AEF82B4();
      v76 = v3 + 1;
      v77 = sub_21AEF829C(v75);
      [v5 isCompleteMatch];
      v78 = sub_21AEF82B4();
      v79 = sub_21AEF829C(v78);
      v80 = objc_allocWithZone(MEMORY[0x277CF0FC0]);
      v90 = v77;
      v3 = v76;
      v81 = sub_21AEF600C(v140, v139, v141, v138, v137, v136, v135, v134, v133, v132, v131, v130, v129, v128, v127, v126, v125, v124, v123, v122, v121, v120, v119, v118, v117, v116, v115, v114, v113, v112, v111, v110, v109, v108, v107, v106, v105, v104, v103, v102, v101, v100, v99, v98, v97, v96, v95, v94, v93, v68, v70, v72, v74, v90, v79);
      v0 = v142;
      [v142 sendEvent_];

      if (v91 == v3)
      {
        goto LABEL_48;
      }
    }
  }

  __break(1u);
}

double sub_21AEF1AA8(void *a1, double a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = sub_21AEEF918();
  v9 = [v8 publisher];

  v24 = nullsub_1;
  v25 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_21AEE9E10;
  v23 = &unk_282C818B8;
  v10 = _Block_copy(&aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v7;
  *(v11 + 32) = a2;
  *(v11 + 40) = a1;
  *(v11 + 48) = v6;
  v24 = sub_21AEF7750;
  v25 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_21AEE9E10;
  v23 = &unk_282C81908;
  v12 = _Block_copy(&aBlock);

  v13 = a1;

  sub_21AEF84B8();
  v16 = [v14 v15];
  _Block_release(v12);
  _Block_release(v10);

  sub_21AEF82E4();
  swift_beginAccess();
  if (*(v6 + 16) <= 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  sub_21AEF82E4();
  swift_beginAccess();
  v18 = *(v7 + 16);

  return v17;
}

void sub_21AEF1CF0(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6)
{
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    [a1 timestamp];
    if (v14 < a5)
    {
      swift_beginAccess();
      v15 = *(a2 + 16) + 1.0;
      swift_beginAccess();
      *(a2 + 16) = v15;
    }

    [a1 timestamp];
    if (v16 > a6 && ([a1 timestamp], v17 < a5) && (v18 = sub_21AEACE30(a3, &selRef_identifier), v19))
    {
      v20 = v18;
      v21 = v19;
      v22 = sub_21AEACE30(v13, &selRef_identifier);
      if (!v23)
      {

        return;
      }

      if (v20 == v22 && v21 == v23)
      {

LABEL_25:
        swift_beginAccess();
        v29 = *(a4 + 16) + 1.0;
        swift_beginAccess();
        *(a4 + 16) = v29;
        return;
      }

      v25 = sub_21AF09E4C();

      if (v25)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_281228710 != -1)
    {
      swift_once();
    }

    v26 = sub_21AF096CC();
    sub_21AEA7958(v26, qword_27CD3EBD0);
    oslog = sub_21AF096AC();
    v27 = sub_21AF09A9C();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21AE94000, oslog, v27, "Error encountered while reading Photos Search Feedback Stream", v28, 2u);
      MEMORY[0x21CEE5A20](v28, -1, -1);
    }
  }
}

void sub_21AEF1FB8()
{
  sub_21AEF8510();
  v1 = sub_21AF093FC();
  v2 = sub_21AEA7C90(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_21AEAD074();
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  sub_21AF093EC();
  sub_21AF0938C();
  v10 = *(v4 + 8);
  v11 = sub_21AEC7734();
  v10(v11);
  sub_21AF0936C();
  v13 = v12;
  (v10)(v9, v1);
  sub_21AF093EC();
  sub_21AF0936C();
  v15 = v14;
  (v10)(v9, v1);
  sub_21AEF1AA8(v0, v15, v13);
}

void sub_21AEF20EC()
{
  sub_21AEAD0C4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v58 = v6;
  v7 = v1;
  v8 = [v7 presentedAssets];
  v56 = 0;
  sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
  sub_21AEEF478();
  v9 = sub_21AF0988C();

  v10 = sub_21AEA7BE4(v9);
  v55 = v7;
  v57 = v5;
  if (v10)
  {
    v11 = v10;
    if (v10 < 1)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return;
    }

    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CEE4EF0](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = sub_21AEACE24(v14);
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = *(v13 + 16);
          sub_21AEAD04C();
          sub_21AEAC554();
          v13 = v23;
        }

        v20 = *(v13 + 16);
        if (v20 >= *(v13 + 24) >> 1)
        {
          sub_21AEAC554();
          v13 = v24;
        }

        *(v13 + 16) = v20 + 1;
        v21 = v13 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v19;
      }

      else
      {
      }

      ++v12;
    }

    while (v11 != v12);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v25 = 0;
  v26 = *(v57 + 16);
  v27 = v57 + 40;
  v57 = MEMORY[0x277D84F90];
  v54 = v27;
LABEL_18:
  v28 = (v27 + 16 * v25);
  while (v26 != v25)
  {
    if (v25 >= v26)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_53;
    }

    if (*(v28 - 1) > v3)
    {
      v30 = *v28;
      v31 = sub_21AEACE30(v30, &selRef_identifier);
      if (v32)
      {
        v33 = v31;
        v34 = v32;
        v59[0] = v31;
        v59[1] = v32;
        MEMORY[0x28223BE20](v31);
        v53[2] = v59;
        if (sub_21AEF6524(sub_21AEACF38, v53, v13))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = *(v57 + 16);
            sub_21AEAD04C();
            sub_21AEAC554();
            v57 = v40;
          }

          v27 = v54;
          v36 = *(v57 + 16);
          v35 = *(v57 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_21AEF8248(v35);
            sub_21AEAC554();
            v57 = v41;
          }

          v37 = v57;
          *(v57 + 16) = v36 + 1;
          v38 = v37 + 16 * v36;
          *(v38 + 32) = v33;
          *(v38 + 40) = v34;
          v25 = v29;
          goto LABEL_18;
        }
      }
    }

    ++v25;
    v28 += 2;
  }

  v42 = v57;
  v43 = *(v57 + 16);
  if (v43)
  {
    v44 = 0;
    v45 = (v57 + 16 * v43 + 24);
    while (v43)
    {
      if (v43 > *(v42 + 16))
      {
        goto LABEL_54;
      }

      v47 = *(v45 - 1);
      v46 = *v45;

      v48 = sub_21AEACE30(v58, &selRef_identifier);
      if (v49)
      {
        if (v47 == v48 && v49 == v46)
        {

LABEL_50:

          if (v44 == -1)
          {
            goto LABEL_56;
          }

          goto LABEL_51;
        }

        v51 = sub_21AF09E4C();

        if (v51)
        {

          goto LABEL_50;
        }
      }

      else
      {
      }

      v45 -= 2;
      --v43;
      if (__CFADD__(v44++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

LABEL_51:
  sub_21AEAD0A8();
}

void sub_21AEF24E0()
{
  sub_21AEF8580();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (v0 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21AF09DAC())
  {
    v7 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = sub_21AEF8504();
        v9 = MEMORY[0x21CEE4EF0](v8);
      }

      else
      {
        if (v7 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(v1 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = sub_21AEACE24(v9);
      if (v13)
      {
        if (v12 == v5 && v13 == v3)
        {

LABEL_18:
          [v10 rankingIndex];

          goto LABEL_19;
        }

        v15 = sub_21AF09E4C();

        if (v15)
        {
          goto LABEL_18;
        }
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_19:
  sub_21AEF8564();
}

void sub_21AEF2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_21AEAD0C4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  sub_21AEC7874();
  v27 = sub_21AF093FC();
  v28 = sub_21AEA7C90(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_21AEAD074();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_21AF0935C();
  sub_21AF0935C();
  sub_21AEACE30(v22, &selRef_identifier);
  if (v36)
  {
    v37 = sub_21AF097BC();

    v38 = sub_21AF0939C();
    v39 = sub_21AF0939C();
    if (v26)
    {
      v26 = sub_21AF097BC();
    }

    objc_opt_self();
    sub_21AEF84B8();
    [v40 v41];
  }

  v42 = *(v30 + 8);
  v43 = sub_21AEE2098();
  v42(v43);
  (v42)(v35, v27);
  sub_21AEAD0A8();
}

void sub_21AEF2928()
{
  sub_21AEAD0C4();
  v96 = v0;
  v2 = v1;
  v102 = v3;
  v4 = sub_21AF0925C();
  v5 = sub_21AEA7C90(v4);
  v92 = v6;
  v93 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21AF093FC();
  v12 = sub_21AEA7C90(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEAD074();
  v19 = (v17 - v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v83 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v83 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v83 - v27;
  sub_21AF093EC();
  sub_21AF0938C();
  v29 = *(v14 + 8);
  v29(v26, v11);
  sub_21AF0935C();
  sub_21AF093BC();
  v31 = v30;
  sub_21AF093BC();
  if (v31 >= v32)
  {
    v84 = v29;
    v85 = v14 + 8;
    v33 = *(v14 + 16);
    v86 = v28;
    v33(v26, v28, v11);
    v33(v19, v23, v11);
    sub_21AF0923C();
    v34 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
    v35 = sub_21AEEF888();
    v36 = v96;
    v87 = v10;
    sub_21AEE5B34();
    v38 = v37;

    v97 = *(v38 + 16);
    if (v97)
    {
      v39 = 0;
      v99 = v38 + 32;
      v90 = "rawSearchTimestamp: ";
      v91 = "Found: rawSearchTimestamp: ";
      v89 = ", feedbackTimestamp: ";
      v95 = xmmword_21AF0C5D0;
      v98 = v23;
      v40 = v102;
      v88 = v38;
      v83 = v11;
      do
      {
        if (v39 >= *(v38 + 16))
        {
LABEL_43:
          __break(1u);
          return;
        }

        v41 = v99 + 16 * v39;
        v42 = *v41;
        v43 = *(v41 + 8);
        if (v36)
        {
          sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
          v44 = sub_21AEC7C30();
          sub_21AEF84D8(v44);
          v45 = v43;
          sub_21AF09C5C();
          v101 = v39;
          MEMORY[0x21CEE4A70](0xD000000000000014, v91 | 0x8000000000000000);
          sub_21AF099CC();
          MEMORY[0x21CEE4A70](0xD000000000000015, v90 | 0x8000000000000000);
          sub_21AF099CC();
          sub_21AEF83FC();
          v46 = [v45 description];
          v47 = sub_21AF097CC();
          v49 = v48;

          MEMORY[0x21CEE4A70](v47, v49);
          v39 = v101;
          v40 = v102;

          v50 = v103;
          v51 = v104;
          v44[3].n128_u64[1] = MEMORY[0x277D837D0];
          v44[2].n128_u64[0] = v50;
          v44[2].n128_u64[1] = v51;
          sub_21AEC76AC();
        }

        else
        {
          v52 = v43;
        }

        v53 = sub_21AEACE30(v40, &selRef_identifier);
        if (v54)
        {
          v55 = v54;
          if (v42 >= v2)
          {
          }

          else
          {
            v56 = v53;
            v94 = v43;
            v57 = [v43 presentedAssets];
            v58 = sub_21AEC7874();
            sub_21AEA7B80(v58, &qword_27CD3D6C0, 0x277CF0FD0);
            sub_21AEEF478();
            v59 = sub_21AF0988C();

            if (v59 >> 62)
            {
              v60 = sub_21AF09DAC();
              if (v60)
              {
LABEL_13:
                v101 = v39;
                v61 = 0;
                v100 = v59 & 0xFFFFFFFFFFFFFF8;
                while (1)
                {
                  if ((v59 & 0xC000000000000001) != 0)
                  {
                    v62 = MEMORY[0x21CEE4EF0](v61, v59);
                  }

                  else
                  {
                    if (v61 >= *(v100 + 16))
                    {
                      goto LABEL_42;
                    }

                    v62 = *(v59 + 8 * v61 + 32);
                  }

                  v63 = v62;
                  v64 = v61 + 1;
                  if (__OFADD__(v61, 1))
                  {
                    __break(1u);
LABEL_42:
                    __break(1u);
                    goto LABEL_43;
                  }

                  v65 = sub_21AEACE24(v62);
                  if (v66)
                  {
                    v67 = v66;
                    if (v65 == v56 && v66 == v55)
                    {

                      goto LABEL_36;
                    }

                    v69 = sub_21AF09E4C();

                    if (v69)
                    {
                      break;
                    }
                  }

                  ++v61;
                  if (v64 == v60)
                  {

                    v11 = v83;
                    v36 = v96;
                    v39 = v101;
                    v40 = v102;
                    goto LABEL_30;
                  }
                }

                v67 = v55;
LABEL_36:

                v71 = v83;
                v72 = v92;
                v73 = v87;
                if (v96)
                {
                  sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
                  v74 = sub_21AEC7C30();
                  sub_21AEF84D8(v74);
                  v67 = &v103;
                  sub_21AF09C5C();
                  MEMORY[0x21CEE4A70](0xD00000000000001BLL, 0x800000021AF107C0);
                  sub_21AF099CC();
                  sub_21AEF83FC();
                  v75 = [v94 description];
                  v76 = sub_21AF097CC();
                  v78 = v77;

                  MEMORY[0x21CEE4A70](v76, v78);

                  v79 = v103;
                  v80 = v104;
                  v74[3].n128_u64[1] = MEMORY[0x277D837D0];
                  v74[2].n128_u64[0] = v79;
                  v74[2].n128_u64[1] = v80;
                  sub_21AEC76AC();
                }

                else
                {
                }

                v81 = v98;
                sub_21AEF83CC();
                v82 = v84;
                (*(v72 + 8))(v73, v93);
                v82(v81, v71);
                v82(v67, v71);
                goto LABEL_40;
              }
            }

            else
            {
              v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v60)
              {
                goto LABEL_13;
              }
            }

            v40 = v102;
LABEL_30:
            v43 = v94;
            v38 = v88;
          }
        }

        ++v39;

        v23 = v98;
      }

      while (v39 != v97);
    }

    (*(v92 + 8))(v87, v93);
    v70 = v84;
    v84(v23, v11);
    v70(v86, v11);
  }

  else
  {
    v29(v23, v11);
    v29(v28, v11);
  }

LABEL_40:
  sub_21AEAD0A8();
}

void sub_21AEF3108()
{
  sub_21AEAD0C4();
  v90 = v1;
  v2 = sub_21AF093FC();
  v3 = sub_21AEA7C90(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21AEAD074();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v12);
  v14 = v87 - v13;
  sub_21AEF84B8();
  v15 = sub_21AF0974C();
  sub_21AEF84B8();
  v16 = sub_21AF0974C();
  sub_21AF093EC();
  v92 = v14;
  sub_21AF093AC();
  v18 = *(v5 + 8);
  v17 = v5 + 8;
  v18(v0, v2);
  sub_21AF093EC();
  v91 = v10;
  sub_21AF093AC();
  v87[1] = v17;
  v88 = v2;
  v87[0] = v18;
  v18(v0, v2);
  v19 = v90[2];
  if (!v19)
  {
LABEL_56:
    if (qword_281228710 != -1)
    {
LABEL_70:
      sub_21AEF81C4();
      swift_once();
    }

    v68 = sub_21AF096CC();
    sub_21AEC78A8(v68, qword_27CD3EBD0);
    v69 = sub_21AF096AC();
    v70 = sub_21AF09A7C();
    if (sub_21AEE2C98(v70))
    {
      v71 = sub_21AED1D18();
      v72 = sub_21AEB39C8();
      v93 = v72;
      *v71 = 136315138;

      v73 = sub_21AF0973C();
      v75 = v74;

      v76 = sub_21AECFFFC(v73, v75, &v93);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_21AE94000, v69, v70, "Weekly dict %s", v71, 0xCu);
      sub_21AEA79F0(v72);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    v77 = sub_21AF096AC();
    v78 = sub_21AF09A7C();
    if (sub_21AEE2C98(v78))
    {
      v79 = sub_21AED1D18();
      v80 = sub_21AEB39C8();
      v93 = v80;
      *v79 = 136315138;

      v81 = sub_21AF0973C();
      v83 = v82;

      v84 = sub_21AECFFFC(v81, v83, &v93);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_21AE94000, v77, v78, "Monthly dict %s", v79, 0xCu);
      sub_21AEA79F0(v80);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    v85 = v88;
    v86 = v87[0];
    (v87[0])(v91, v88);
    v86(v92, v85);
    sub_21AEAD0A8();
    return;
  }

  v20 = (v90 + 5);
  while (1)
  {
    v21 = *(v20 - 1);
    v22 = *v20;
    v23 = sub_21AEACE30(v22, &selRef_identifier);
    if (!v24)
    {
      goto LABEL_40;
    }

    v25 = v23;
    v26 = v24;
    sub_21AF0936C();
    if (v27 < v21)
    {
      break;
    }

LABEL_28:
    sub_21AF0936C();
    if (v46 < v21)
    {
      v47 = *(v16 + 16);
      v90 = v15;
      if (v47 && (sub_21AEF81F0(), v48 = sub_21AED0594(), (v49 & 1) != 0))
      {
        v50 = *(*(v16 + 56) + 8 * v48);
        v31 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v31)
        {
          goto LABEL_67;
        }

        v89 = v51;
        swift_isUniquelyReferenced_nonNull_native();
        v93 = v16;
        sub_21AEF81F0();
        sub_21AED0594();
        v52 = *(v16 + 16);
        sub_21AED1B64();
        if (__OFADD__(v53, v54))
        {
          goto LABEL_69;
        }

        sub_21AEF8558();
        sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
        sub_21AEF825C();
        if (sub_21AF09D0C())
        {
          sub_21AEF8504();
          sub_21AED0594();
          sub_21AED1C04();
          if (!v37)
          {
            goto LABEL_73;
          }

          v17 = v55;
        }

        if (v25)
        {

          v16 = v93;
          v56 = v93[7];
          v57 = v89;
          goto LABEL_48;
        }

        v16 = v93;
        sub_21AED1AA8(&v93[v17 >> 6]);
        sub_21AEF8544();
        *(v66 + 8 * v17) = v89;

        v67 = *(v16 + 16);
        v31 = __OFADD__(v67, 1);
        v65 = v67 + 1;
        if (v31)
        {
          goto LABEL_72;
        }

LABEL_53:
        *(v16 + 16) = v65;
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        v93 = v16;
        sub_21AEF81F0();
        sub_21AED0594();
        v58 = *(v16 + 16);
        sub_21AED1B64();
        if (__OFADD__(v59, v60))
        {
          goto LABEL_63;
        }

        sub_21AEF8558();
        sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
        sub_21AEF825C();
        if (sub_21AF09D0C())
        {
          sub_21AEF8504();
          sub_21AED0594();
          sub_21AED1C04();
          if (!v37)
          {
            goto LABEL_73;
          }

          v17 = v61;
        }

        if ((v25 & 1) == 0)
        {
          v16 = v93;
          sub_21AED1AA8(&v93[v17 >> 6]);
          sub_21AEF8544();
          *(v62 + 8 * v17) = v63;

          v64 = *(v16 + 16);
          v31 = __OFADD__(v64, 1);
          v65 = v64 + 1;
          if (v31)
          {
            goto LABEL_65;
          }

          goto LABEL_53;
        }

        v16 = v93;
        v56 = v93[7];
        v57 = 1;
LABEL_48:
        *(v56 + 8 * v17) = v57;
      }

      v15 = v90;
      goto LABEL_55;
    }

LABEL_40:

LABEL_55:
    v20 += 2;
    if (!--v19)
    {
      goto LABEL_56;
    }
  }

  if (!v15[2] || (sub_21AEF81F0(), v28 = sub_21AED0594(), (v29 & 1) == 0))
  {
    v90 = v22;
    swift_isUniquelyReferenced_nonNull_native();
    v93 = v15;
    sub_21AEF81F0();
    sub_21AED0594();
    v38 = v15[2];
    sub_21AED1B64();
    if (__OFADD__(v39, v40))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    sub_21AEF8558();
    sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
    sub_21AEF825C();
    if (sub_21AF09D0C())
    {
      sub_21AED0594();
      sub_21AED1C04();
      if (!v37)
      {
        goto LABEL_73;
      }

      v17 = v41;
    }

    v15 = v93;
    if (v25)
    {
      *(v93[7] + 8 * v17) = 1;
    }

    else
    {
      sub_21AED1AA8(&v93[v17 >> 6]);
      v42 = (v15[6] + 16 * v17);
      *v42 = v25;
      v42[1] = v26;
      sub_21AEF8498();
      if (v31)
      {
        goto LABEL_64;
      }

      v15[2] = v43;
    }

    v22 = v90;
    goto LABEL_28;
  }

  v30 = *(v15[7] + 8 * v28);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    goto LABEL_66;
  }

  v89 = v32;
  swift_isUniquelyReferenced_nonNull_native();
  v93 = v15;
  v90 = v25;
  sub_21AEF81F0();
  sub_21AED0594();
  v33 = v15[2];
  sub_21AED1B64();
  if (__OFADD__(v34, v35))
  {
    goto LABEL_68;
  }

  sub_21AEF8558();
  sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
  sub_21AEF825C();
  if (sub_21AF09D0C())
  {
    sub_21AED0594();
    sub_21AED1C04();
    if (!v37)
    {
      goto LABEL_73;
    }

    v17 = v36;
  }

  v15 = v93;
  if (v25)
  {
    *(v93[7] + 8 * v17) = v89;
LABEL_27:
    LOBYTE(v25) = v90;
    goto LABEL_28;
  }

  sub_21AED1AA8(&v93[v17 >> 6]);
  v44 = (v15[6] + 16 * v17);
  *v44 = v90;
  v44[1] = v26;
  sub_21AEF8498();
  if (!v31)
  {
    v15[2] = v45;

    goto LABEL_27;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_21AF09E7C();
  __break(1u);
}

void sub_21AEF38D4()
{
  sub_21AEAD0C4();
  sub_21AEF8510();
  v2 = sub_21AF093FC();
  v3 = sub_21AEA7C90(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21AEAD074();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v12);
  v14 = v86 - v13;
  sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
  v15 = MEMORY[0x277D837E0];
  sub_21AEE2E38();
  v93 = sub_21AF0974C();
  sub_21AEE2E38();
  v90 = sub_21AF0974C();
  sub_21AF093EC();
  v92 = v14;
  sub_21AF093AC();
  v16 = *(v5 + 8);
  v16(v1, v2);
  sub_21AF093EC();
  v91 = v10;
  sub_21AF093AC();
  v86[1] = v5 + 8;
  v87 = v2;
  v86[0] = v16;
  v16(v1, v2);
  v89 = v0[2];
  if (v89)
  {
    v17 = 0;
    v88 = v0 + 4;
    while (1)
    {
      v18 = &v88[2 * v17];
      v19 = *v18;
      v20 = *(v18 + 1);
      v21 = [v20 presentedAssets];
      v22 = sub_21AEF8510();
      sub_21AEA7B80(v22, &qword_27CD3D6C0, 0x277CF0FD0);
      v23 = sub_21AF0988C();

      v24 = v92;
      sub_21AF0936C();
      v96 = v23;
      v94 = v20;
      *&v95 = v17;
      if (v25 < v19)
      {
        break;
      }

LABEL_18:
      v34 = v91;
      sub_21AF0936C();
      if (v35 >= v19)
      {
      }

      else
      {
        sub_21AEA7BE4(v23);
        sub_21AEF8530();
        v0 = MEMORY[0x277D84F90];
        while (v34 != v15)
        {
          if (v10)
          {
            v36 = MEMORY[0x21CEE4EF0](v15, v23);
          }

          else
          {
            if (v15 >= *(v2 + 16))
            {
              goto LABEL_65;
            }

            v36 = v23[v15 + 4].isa;
          }

          v37 = v36;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_64;
          }

          sub_21AEACE24(v36);
          if (!v38)
          {
            goto LABEL_69;
          }

          sub_21AEB3AC0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = v0[2];
            sub_21AEAD04C();
            sub_21AEAC554();
            v0 = v42;
          }

          v40 = v0[2];
          v39 = v0[3];
          v23 = (v40 + 1);
          if (v40 >= v39 >> 1)
          {
            sub_21AEF8248(v39);
            sub_21AEAC554();
            v0 = v43;
          }

          sub_21AEF83B4();
        }

        sub_21AF099BC();
        sub_21AEB3AC0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_21AEF8374();

        v90 = v97;
        v17 = v95;
      }

      if (++v17 == v89)
      {
        goto LABEL_35;
      }
    }

    sub_21AEA7BE4(v23);
    sub_21AEF8530();
    v0 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v24 == v15)
      {
        sub_21AF099BC();
        sub_21AEB3AC0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_21AEF8374();

        v93 = v97;
        v20 = v94;
        v17 = v95;
        goto LABEL_18;
      }

      if (v10)
      {
        v26 = MEMORY[0x21CEE4EF0](v15, v23);
      }

      else
      {
        if (v15 >= *(v2 + 16))
        {
          goto LABEL_63;
        }

        v26 = v23[v15 + 4].isa;
      }

      v27 = v26;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_21AEACE24(v26);
      if (!v28)
      {
        goto LABEL_68;
      }

      sub_21AEB3AC0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = v0[2];
        sub_21AEAD04C();
        sub_21AEAC554();
        v0 = v32;
      }

      v30 = v0[2];
      v29 = v0[3];
      v23 = (v30 + 1);
      if (v30 >= v29 >> 1)
      {
        sub_21AEF8248(v29);
        sub_21AEAC554();
        v0 = v33;
      }

      sub_21AEF83B4();
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
LABEL_35:
    v45 = *(v93 + 64);
    v44 = v93 + 64;
    v46 = *(v93 + 32);
    sub_21AED1A7C();
    v49 = v48 & v47;
    v51 = (v50 + 63) >> 6;

    v52 = 0;
    *&v53 = 136315394;
    v95 = v53;
    while (v49)
    {
      v54 = v52;
LABEL_41:
      sub_21AEF826C();
      v55 = qword_281228710;

      if (v55 != -1)
      {
        sub_21AEF81C4();
        swift_once();
      }

      v49 &= v49 - 1;
      v56 = sub_21AF096CC();
      sub_21AEC78A8(v56, qword_27CD3EBD0);

      v57 = sub_21AF096AC();
      v58 = sub_21AF09A7C();

      v96 = v57;
      if (os_log_type_enabled(v57, v58))
      {
        v59 = sub_21AEB3B54();
        v94 = swift_slowAlloc();
        v97 = v94;
        sub_21AEF83D8();

        v60 = sub_21AEF84C4();
        MEMORY[0x21CEE4B10](v60, MEMORY[0x277D837D0]);

        v61 = sub_21AEE2E38();
        v64 = sub_21AECFFFC(v61, v62, v63);

        *(v59 + 14) = v64;
        v65 = v58;
        v66 = v96;
        _os_log_impl(&dword_21AE94000, v96, v65, "assetsPresentedInEventWeek %s: %s", v59, 0x16u);
        swift_arrayDestroy();
        sub_21AEAFB90();
        sub_21AEAFB90();
      }

      else
      {
      }

      v52 = v54;
    }

    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v54 >= v51)
      {
        v67 = v93;

        v68 = 1 << *(v67 + 32);
        v69 = -1;
        if (v68 < 64)
        {
          v69 = ~(-1 << v68);
        }

        v70 = v69 & *(v67 + 64);
        v71 = (v68 + 63) >> 6;

        v72 = 0;
        while (v70)
        {
          v73 = v72;
LABEL_55:
          sub_21AEF826C();
          v74 = qword_281228710;

          if (v74 != -1)
          {
            sub_21AEF81C4();
            swift_once();
          }

          v70 &= v70 - 1;
          v75 = sub_21AF096CC();
          sub_21AEC78A8(v75, qword_27CD3EBD0);

          v76 = sub_21AF096AC();
          v77 = sub_21AF09A7C();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = sub_21AEB3B54();
            v96 = swift_slowAlloc();
            v97 = v96;
            sub_21AEF83D8();

            v79 = sub_21AEF84C4();
            MEMORY[0x21CEE4B10](v79, MEMORY[0x277D837D0]);

            v80 = sub_21AEE2E38();
            v83 = sub_21AECFFFC(v80, v81, v82);

            *(v78 + 14) = v83;
            _os_log_impl(&dword_21AE94000, v76, v77, "assetsPresentedInEventMonth %s: %s", v78, 0x16u);
            swift_arrayDestroy();
            sub_21AEAFB90();
            sub_21AEAFB90();
          }

          else
          {
          }

          v72 = v73;
        }

        while (1)
        {
          v73 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            goto LABEL_67;
          }

          if (v73 >= v71)
          {
            v84 = v87;
            v85 = v86[0];
            (v86[0])(v91, v87);
            v85(v92, v84);

            sub_21AEAD0A8();
            return;
          }

          v70 = *(v44 + 8 * v73);
          ++v72;
          if (v70)
          {
            goto LABEL_55;
          }
        }
      }

      v49 = *(v44 + 8 * v54);
      ++v52;
      if (v49)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

__int128 *sub_21AEF4140(uint64_t a1, uint64_t a2, char a3)
{
  sub_21AEF3108();
  v75 = v3;
  v76 = v4;
  sub_21AEF38D4();
  v77 = v5;
  v7 = v6;
  sub_21AEA7574(&qword_27CD3D938, &unk_21AF0C9D0);
  v8 = sub_21AF0974C();
  v91 = v8;
  v90 = MEMORY[0x277D84FA0];
  v9 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  v83 = v7;

  v14 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v86 = _Q0;
  v79 = v13;
  v80 = v7 + 64;
  if (v12)
  {
LABEL_9:
    while (1)
    {
      v20 = __clz(__rbit64(v12)) | (v14 << 6);
      v21 = (*(v83 + 48) + 16 * v20);
      v22 = v21[1];
      v84 = v12;
      v85 = *v21;
      v23 = *(*(v83 + 56) + 8 * v20);
      v87 = *(v23 + 16);
      if (v87)
      {
        break;
      }

      v25 = MEMORY[0x277D84F98];
LABEL_25:
      swift_isUniquelyReferenced_nonNull_native();
      v89 = v8;
      sub_21AED0594();
      v37 = *(v8 + 16);
      sub_21AED1B64();
      if (__OFADD__(v40, v41))
      {
        goto LABEL_41;
      }

      v42 = v38;
      v43 = v39;
      sub_21AEA7574(&qword_27CD3D940, &qword_21AF0D3C0);
      if (sub_21AF09D0C())
      {
        v44 = sub_21AED0594();
        if ((v43 & 1) != (v45 & 1))
        {
          result = sub_21AF09E7C();
          __break(1u);
          return result;
        }

        v42 = v44;
      }

      v8 = v89;
      if (v43)
      {
        v46 = *(v89 + 56);
        v47 = *(v46 + 8 * v42);
        *(v46 + 8 * v42) = v25;
      }

      else
      {
        sub_21AED1AA8(v89 + 8 * (v42 >> 6));
        v48 = (*(v8 + 48) + 16 * v42);
        *v48 = v85;
        v48[1] = v22;
        *(*(v8 + 56) + 8 * v42) = v25;
        v49 = *(v8 + 16);
        _VF = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (_VF)
        {
          goto LABEL_42;
        }

        *(v8 + 16) = v50;
      }

      v12 = (v84 - 1) & v84;
      v91 = v8;
      v13 = v79;
      v9 = v80;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v81 = v21[1];
    v82 = v8;

    v24 = 0;
    v25 = MEMORY[0x277D84F98];
    while (v24 < *(v23 + 16))
    {
      v26 = (v23 + 32 + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v92 = v86;
      v93 = v86;
      v94 = v86;
      v95 = v86;

      swift_isUniquelyReferenced_nonNull_native();
      v89 = v25;
      sub_21AF05348();
      v25 = v89;
      v29 = v90;
      if (*(v90 + 16))
      {
        v30 = *(v90 + 40);
        sub_21AF09EFC();
        sub_21AF097EC();
        v31 = sub_21AF09F1C();
        v32 = ~(-1 << *(v29 + 32));
        while (1)
        {
          v33 = v31 & v32;
          if (((*(v29 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
          {
            break;
          }

          v34 = (*(v29 + 48) + 16 * v33);
          if (*v34 != v27 || v34[1] != v28)
          {
            v36 = sub_21AF09E4C();
            v31 = v33 + 1;
            if ((v36 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_22;
        }
      }

      sub_21AEF66E4(&v89, v27, v28);
LABEL_22:

      if (++v24 == v87)
      {

        v22 = v81;
        v8 = v82;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v19 >= v13)
      {

        type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
        sub_21AEE80E8(&v91, v75, v77, 1, a3 & 1);

        sub_21AEE80E8(&v91, v76, v83, 0, a3 & 1);

        sub_21AEF471C();
        v52 = v51;
        v54 = v53;
        v56 = v55;

        sub_21AEF5204();
        v58 = v57;
        v60 = v59;
        v88 = v61;

        v62 = sub_21AED1E2C();
        sub_21AEE681C(v62, v52, v54, v77, 1, v63);

        v64 = sub_21AED1E2C();
        sub_21AEE681C(v64, v52, v56, v83, 0, v65);

        v66 = sub_21AED1E2C();
        sub_21AEE77C0(v66, v58, v60, v77, 1, v67);

        v68 = sub_21AED1E2C();
        sub_21AEE77C0(v68, v58, v88, v83, 0, v69);

        if (qword_281228710 != -1)
        {
          goto LABEL_43;
        }

        goto LABEL_36;
      }

      v12 = *(v9 + 8 * v19);
      ++v14;
      if (v12)
      {
        v14 = v19;
        goto LABEL_9;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_21AEF81C4();
  swift_once();
LABEL_36:
  v70 = sub_21AF096CC();
  sub_21AEC78A8(v70, qword_27CD3EBD0);
  v71 = sub_21AF096AC();
  v72 = sub_21AF09A7C();
  if (sub_21AEE2C98(v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_21AE94000, v71, v72, "Generated features", v73, 2u);
    sub_21AEAFB90();
  }

  return v91;
}

void sub_21AEF471C()
{
  sub_21AEAD0C4();
  v113 = v1;
  sub_21AEC7874();
  v118 = sub_21AF093FC();
  v2 = sub_21AEA7C90(v118);
  v119 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_21AEAD074();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v6);
  sub_21AEC764C();
  MEMORY[0x28223BE20](v7);
  v120 = &v112 - v8;
  v9 = [objc_opt_self() sharedPhotoLibrary];
  v10 = [v9 librarySpecificFetchOptions];
  [v10 setFetchLimit_];
  sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21AF0C080;
  v12 = *MEMORY[0x277CD9AA8];
  *(v11 + 32) = sub_21AF097CC();
  *(v11 + 40) = v13;
  v14 = *MEMORY[0x277CD9A80];
  *(v11 + 48) = sub_21AF097CC();
  *(v11 + 56) = v15;
  v16 = *MEMORY[0x277CD9B28];
  *(v11 + 64) = sub_21AF097CC();
  *(v11 + 72) = v17;
  v18 = *MEMORY[0x277CD9AD0];
  *(v11 + 80) = sub_21AF097CC();
  *(v11 + 88) = v19;
  v20 = *MEMORY[0x277CD9B10];
  *(v11 + 96) = sub_21AF097CC();
  *(v11 + 104) = v21;
  v22 = *MEMORY[0x277CD9A90];
  *(v11 + 112) = sub_21AF097CC();
  *(v11 + 120) = v23;
  sub_21AEF75E8(v11, v10);

  sub_21AEF81D8();
  v26 = sub_21AEEF5AC(v24, v25, sub_21AEF79F8);
  v27 = objc_opt_self();
  sub_21AEF81F0();
  v28 = sub_21AF0987C();
  v116 = v10;
  v29 = [v27 fetchAssetsWithLocalIdentifiers:v28 options:v10];

  v117 = v9;
  v30 = [v9 librarySpecificFetchOptions];
  sub_21AEA7574(&qword_27CD3D6B0, &unk_21AF0C9B0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21AF0C720;
  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  *(v31 + 32) = sub_21AF09B5C();
  *(v31 + 40) = sub_21AF09B5C();
  sub_21AEF7654(v31, v30);
  [v30 setIncludeTorsoAndFaceDetectionData_];
  v32 = objc_opt_self();
  v115 = v29;
  v114 = v30;
  v33 = [v32 fetchFacesGroupedByAssetLocalIdentifierForAssets:v29 options:v30];
  sub_21AEA7574(&qword_27CD3D930, &unk_21AF0D3B0);
  sub_21AEE2098();
  v34 = sub_21AF0972C();

  v124 = *(v26 + 16);
  if (v124)
  {
    v35 = 0;
    v36 = (v26 + 40);
    v37 = MEMORY[0x277D84F98];
    *&v122 = v34;
    v123 = v26;
    while (1)
    {
      if (v35 >= *(v26 + 16))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v38 = *(v36 - 1);
      v0 = *v36;
      v39 = *(v34 + 16);

      if (v39 && (sub_21AEE1FD8(), v40 = sub_21AED0594(), (v41 & 1) != 0))
      {
        v42 = [*(*(v34 + 56) + 8 * v40) count];
      }

      else
      {
        v42 = 0;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v125 = v37;
      sub_21AEE1FD8();
      sub_21AED0594();
      v43 = *(v37 + 16);
      sub_21AED1B64();
      if (__OFADD__(v46, v47))
      {
        goto LABEL_48;
      }

      v48 = v44;
      v49 = v45;
      sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
      if (sub_21AF09D0C())
      {
        sub_21AEE1FD8();
        v50 = sub_21AED0594();
        if ((v49 & 1) != (v51 & 1))
        {
          sub_21AF09E7C();
          __break(1u);
          return;
        }

        v48 = v50;
      }

      if (v49)
      {

        v37 = v125;
        *(*(v125 + 56) + 8 * v48) = v42;
      }

      else
      {
        v37 = v125;
        sub_21AED1AA8(v125 + 8 * (v48 >> 6));
        v52 = (*(v37 + 48) + 16 * v48);
        *v52 = v38;
        v52[1] = v0;
        *(*(v37 + 56) + 8 * v48) = v42;
        v53 = *(v37 + 16);
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_49;
        }

        *(v37 + 16) = v55;
      }

      ++v35;
      v36 += 2;
      v26 = v123;
      v34 = v122;
      if (v124 == v35)
      {

        goto LABEL_19;
      }
    }
  }

  v37 = MEMORY[0x277D84F98];
LABEL_19:

  v57 = v37 + 64;
  v56 = *(v37 + 64);
  v58 = *(v37 + 32);
  sub_21AED1A7C();
  v61 = v60 & v59;
  v63 = (v62 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v64 = 0;
  v0 = 0x281228000uLL;
  *&v65 = 136315394;
  v122 = v65;
  v123 = v37 + 64;
  if (!v61)
  {
    goto LABEL_21;
  }

  do
  {
    v35 = v64;
LABEL_24:
    v66 = __clz(__rbit64(v61)) | (v35 << 6);
    v67 = (*(v37 + 48) + 16 * v66);
    v69 = *v67;
    v68 = v67[1];
    v124 = *(*(v37 + 56) + 8 * v66);
    v70 = *(v0 + 1808);

    if (v70 != -1)
    {
      sub_21AEF81C4();
      swift_once();
    }

    v61 &= v61 - 1;
    v71 = sub_21AF096CC();
    sub_21AEA7958(v71, qword_27CD3EBD0);
    sub_21AEE2064();

    v72 = sub_21AF096AC();
    v73 = sub_21AF09A7C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = sub_21AEB3B54();
      v75 = sub_21AEB39C8();
      v125 = v75;
      *v74 = v122;
      v76 = sub_21AEE2098();
      v79 = sub_21AECFFFC(v76, v77, v78);

      *(v74 + 4) = v79;
      *(v74 + 12) = 2048;
      *(v74 + 14) = v124;
      _os_log_impl(&dword_21AE94000, v72, v73, "assetID: %s, faceCount: %ld", v74, 0x16u);
      sub_21AEA79F0(v75);
      v0 = 0x281228000;
      sub_21AEAFB90();
      v57 = v123;
      sub_21AEAFB90();
    }

    else
    {
    }

    v64 = v35;
  }

  while (v61);
  while (1)
  {
LABEL_21:
    v35 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v35 >= v63)
    {
      break;
    }

    v61 = *(v57 + 8 * v35);
    ++v64;
    if (v61)
    {
      goto LABEL_24;
    }
  }

  v0 = sub_21AEA7574(&qword_27CD3D920, &qword_21AF0C9A0);
  v127 = sub_21AEF85BC();
  v126 = sub_21AEF85BC();
  v80 = v112;
  sub_21AF093EC();
  sub_21AF093AC();
  v81 = v119 + 8;
  v35 = *(v119 + 8);
  (v35)(v80, v118);
  sub_21AF093EC();
  sub_21AF093AC();
  v82 = sub_21AEE2098();
  v119 = v81;
  (v35)(v82);
  v83 = *(v113 + 16);
  if (v83)
  {
    v84 = (v113 + 40);
    do
    {
      v85 = *(v84 - 1);
      v86 = *v84;
      v87 = sub_21AEACE30(v86, &selRef_identifier);
      if (v88)
      {
        v89 = v87;
        v90 = v88;
        sub_21AF0936C();
        if (v91 < v85)
        {
          type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
          sub_21AEE7500(&v127, v89, v90);
        }

        sub_21AEF83CC();
        sub_21AF0936C();
        if (v92 < v85)
        {
          type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
          sub_21AEE7500(&v126, v89, v90);
        }
      }

      v84 += 2;
      --v83;
    }

    while (v83);
  }

  if (qword_281228710 != -1)
  {
LABEL_50:
    sub_21AEF81C4();
    swift_once();
  }

  v93 = sub_21AF096CC();
  sub_21AEC78A8(v93, qword_27CD3EBD0);
  v94 = sub_21AF096AC();
  v95 = sub_21AF09A7C();
  v96 = sub_21AEE2C98(v95);
  v124 = v0;
  if (v96)
  {
    v97 = sub_21AED1D18();
    v98 = sub_21AEB39C8();
    v125 = v98;
    *v97 = 136315138;
    sub_21AEF82E4();
    swift_beginAccess();

    sub_21AF0973C();

    v99 = sub_21AEE1FD8();
    v102 = sub_21AECFFFC(v99, v100, v101);

    *(v97 + 4) = v102;
    _os_log_impl(&dword_21AE94000, v94, v95, "photoIDCountGivenFaceCountDictWeek %s", v97, 0xCu);
    sub_21AEA79F0(v98);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v103 = sub_21AF096AC();
  v104 = sub_21AF09A7C();
  if (sub_21AEE2C98(v104))
  {
    v105 = sub_21AED1D18();
    v106 = sub_21AEB39C8();
    v125 = v106;
    *v105 = 136315138;
    sub_21AEF82E4();
    swift_beginAccess();

    v107 = sub_21AF0973C();
    v109 = v108;

    v110 = sub_21AECFFFC(v107, v109, &v125);

    *(v105 + 4) = v110;
    _os_log_impl(&dword_21AE94000, v103, v104, "photoIDCountGivenFaceCountDictMonth %s", v105, 0xCu);
    sub_21AEA79F0(v106);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v111 = v118;
  (v35)(v121, v118);
  (v35)(v120, v111);

  sub_21AEF82E4();
  swift_beginAccess();
  sub_21AEF82E4();
  swift_beginAccess();
  sub_21AEAD0A8();
}

void sub_21AEF5204()
{
  sub_21AEAD0C4();
  v149 = v0;
  sub_21AEF8510();
  v155 = sub_21AF093FC();
  v1 = sub_21AEA7C90(v155);
  v156 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_21AEAD074();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v5);
  sub_21AEC764C();
  MEMORY[0x28223BE20](v6);
  v157 = &v147 - v7;
  v152 = [objc_opt_self() sharedPhotoLibrary];
  v8 = [v152 librarySpecificFetchOptions];
  [v8 setFetchLimit_];
  sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21AF0C080;
  v10 = *MEMORY[0x277CD9AA8];
  *(v9 + 32) = sub_21AF097CC();
  *(v9 + 40) = v11;
  v12 = *MEMORY[0x277CD9A80];
  *(v9 + 48) = sub_21AF097CC();
  *(v9 + 56) = v13;
  v14 = *MEMORY[0x277CD9B28];
  *(v9 + 64) = sub_21AF097CC();
  *(v9 + 72) = v15;
  v16 = *MEMORY[0x277CD9AD0];
  *(v9 + 80) = sub_21AF097CC();
  *(v9 + 88) = v17;
  v18 = *MEMORY[0x277CD9B10];
  *(v9 + 96) = sub_21AF097CC();
  *(v9 + 104) = v19;
  v20 = *MEMORY[0x277CD9A90];
  *(v9 + 112) = sub_21AF097CC();
  *(v9 + 120) = v21;
  v22 = sub_21AEC7734();
  sub_21AEF75E8(v22, v23);

  sub_21AEF81D8();
  v26 = sub_21AEEF5AC(v24, v25, sub_21AEF79F8);
  v27 = objc_opt_self();
  v28 = sub_21AF0987C();
  v151 = v8;
  v29 = [v27 fetchAssetsWithLocalIdentifiers:v28 options:v8];

  v30 = objc_opt_self();
  v150 = v29;
  v31 = [v30 fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets_];
  if (v31)
  {
    v32 = v31;
    sub_21AEA7574(&qword_27CD3DF50, &qword_21AF0C9A8);
    v33 = sub_21AF0972C();

    sub_21AF00820(v33, v34, v35, v36, v37, v38, v39, v40, v147, v148, v149, v150);
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v170 = MEMORY[0x277D84FA0];
  v163 = *(v26 + 16);
  if (v163)
  {
    v43 = 0;
    v44 = MEMORY[0x277D84F98];
    v162 = v26 + 32;
    v161 = v26;
    v154 = v42;
    while (1)
    {
      if (v43 >= *(v26 + 16))
      {
        goto LABEL_76;
      }

      v45 = (v162 + 16 * v43);
      v46 = *v45;
      v47 = v45[1];
      if (!v42)
      {
        break;
      }

      v48 = *(v42 + 16);
      v49 = v45[1];

      if (!v48)
      {
        goto LABEL_33;
      }

      v50 = sub_21AED0594();
      if ((v51 & 1) == 0)
      {

        goto LABEL_33;
      }

      v52 = *(*(v42 + 56) + 8 * v50);

      if (!v52)
      {
        goto LABEL_33;
      }

      v164 = v44;
      if (v52 >> 62)
      {
        v42 = sub_21AF09DAC();
        if (v42)
        {
LABEL_13:
          v160 = v52 & 0xFFFFFFFFFFFFFF8;
          v153 = v46;
          v53 = 0;
          v166 = v52 & 0xC000000000000001;
          *&v165 = v52;
          v159 = v52 + 32;
          v54 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v166)
            {
              v55 = MEMORY[0x21CEE4EF0](v53, v165);
            }

            else
            {
              if (v53 >= *(v160 + 16))
              {
                goto LABEL_78;
              }

              v55 = *(v159 + 8 * v53);
            }

            v56 = v55;
            v57 = __OFADD__(v53++, 1);
            if (v57)
            {
              break;
            }

            v58 = [v55 sceneIdentifier];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = *(v54 + 16);
              v70 = sub_21AEAD04C();
              sub_21AEAC610(v70, v71, v72, v54);
              v54 = v73;
            }

            v60 = *(v54 + 16);
            v59 = *(v54 + 24);
            v44 = v60 + 1;
            if (v60 >= v59 >> 1)
            {
              sub_21AEAC610(v59 > 1, v60 + 1, 1, v54);
              v54 = v74;
            }

            v61 = v58;
            *(v54 + 16) = v44;
            *(v54 + 8 * v60 + 32) = v58;
            v62 = v170;
            if (*(v170 + 16))
            {
              v63 = *(v170 + 40);
              sub_21AF09EEC();
              v64 = *(v62 + 32);
              sub_21AEF8354();
              while (1)
              {
                v68 = v65 & v67;
                if (((*(v66 + (((v65 & v67) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v65 & v67)) & 1) == 0)
                {
                  break;
                }

                v65 = v68 + 1;
                if (*(*(v62 + 48) + 8 * v68) == v61)
                {
                  goto LABEL_29;
                }
              }
            }

            sub_21AEF660C();
LABEL_29:

            if (v53 == v42)
            {

              sub_21AEF851C();
              v46 = v153;
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_75;
        }
      }

      else
      {
        v42 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v42)
        {
          goto LABEL_13;
        }
      }

      v54 = MEMORY[0x277D84F90];
      sub_21AEF851C();
LABEL_34:
      swift_isUniquelyReferenced_nonNull_native();
      v167 = v44;
      v76 = v46;
      sub_21AED0594();
      v77 = *(v44 + 16);
      sub_21AED1B64();
      if (__OFADD__(v80, v81))
      {
        goto LABEL_77;
      }

      v82 = v78;
      v83 = v79;
      sub_21AEA7574(&qword_27CD3D918, &qword_21AF0C998);
      if (sub_21AF09D0C())
      {
        v84 = sub_21AED0594();
        if ((v83 & 1) != (v85 & 1))
        {
          sub_21AF09E7C();
          __break(1u);
          return;
        }

        v82 = v84;
      }

      if (v83)
      {

        v44 = v167;
        v86 = *(v167 + 56);
        v87 = *(v86 + 8 * v82);
        *(v86 + 8 * v82) = v54;
      }

      else
      {
        v44 = v167;
        sub_21AED1AA8(v167 + 8 * (v82 >> 6));
        v88 = (*(v44 + 48) + 16 * v82);
        *v88 = v76;
        v88[1] = v47;
        *(*(v44 + 56) + 8 * v82) = v54;
        v89 = *(v44 + 16);
        v57 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v57)
        {
          goto LABEL_79;
        }

        *(v44 + 16) = v90;
      }

      ++v43;
      v26 = v161;
      if (v43 == v163)
      {

        goto LABEL_47;
      }
    }

    v75 = v45[1];

LABEL_33:
    v54 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v44 = MEMORY[0x277D84F98];
LABEL_47:

  v92 = v44 + 64;
  v91 = *(v44 + 64);
  v93 = *(v44 + 32);
  sub_21AED1A7C();
  v42 = v95 & v94;
  v97 = (v96 + 63) >> 6;
  v164 = v44;
  swift_bridgeObjectRetain_n();
  v98 = 0;
  v99 = 0x281228000uLL;
  *&v100 = 136315394;
  v165 = v100;
  if (!v42)
  {
    goto LABEL_49;
  }

  do
  {
    v101 = v98;
LABEL_52:
    v102 = __clz(__rbit64(v42)) | (v101 << 6);
    v103 = (*(v164 + 48) + 16 * v102);
    v104 = *v103;
    v105 = v103[1];
    v106 = *(*(v164 + 56) + 8 * v102);
    v107 = *(v99 + 1808);

    if (v107 != -1)
    {
      sub_21AEF81C4();
      swift_once();
    }

    v42 &= v42 - 1;
    v108 = sub_21AF096CC();
    sub_21AEC78A8(v108, qword_27CD3EBD0);

    v109 = sub_21AF096AC();
    v110 = sub_21AF09A7C();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = sub_21AEB3B54();
      v166 = swift_slowAlloc();
      v167 = v166;
      *v111 = v165;
      v112 = sub_21AEF8418();

      *(v111 + 4) = v112;
      *(v111 + 12) = 2080;
      MEMORY[0x21CEE4B10](v106, MEMORY[0x277D83B88]);

      v113 = sub_21AEF8418();

      *(v111 + 14) = v113;
      _os_log_impl(&dword_21AE94000, v109, v110, "assetID: %s, sceneCategory: %s", v111, 0x16u);
      swift_arrayDestroy();
      sub_21AEAFB90();
      v99 = 0x281228000;
      sub_21AEAFB90();
    }

    else
    {
    }

    v98 = v101;
  }

  while (v42);
LABEL_49:
  while (1)
  {
    v101 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      break;
    }

    if (v101 >= v97)
    {
      v114 = v99;

      v115 = sub_21AEA7574(&qword_27CD3D920, &qword_21AF0C9A0);
      sub_21AEC7734();
      v169 = sub_21AF0974C();
      sub_21AEC7734();
      v166 = v115;
      v168 = sub_21AF0974C();
      v116 = v148;
      sub_21AF093EC();
      sub_21AF093AC();
      v117 = v156 + 8;
      v42 = *(v156 + 8);
      v118 = v155;
      (v42)(v116, v155);
      sub_21AF093EC();
      sub_21AF093AC();
      v156 = v117;
      (v42)(v116, v118);
      v119 = *(v149 + 16);
      if (v119)
      {
        v120 = (v149 + 40);
        do
        {
          v121 = *(v120 - 1);
          v122 = *v120;
          sub_21AEACE30(v122, &selRef_identifier);
          if (v123)
          {
            sub_21AF0936C();
            if (v124 < v121)
            {
              type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
              sub_21AEF859C(&v169, v125, v126, v127, v170);
            }

            sub_21AF0936C();
            if (v128 < v121)
            {
              type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
              sub_21AEF859C(&v168, v129, v130, v131, v170);
            }
          }

          v120 += 2;
          --v119;
        }

        while (v119);
      }

      if (*(v114 + 1808) != -1)
      {
        goto LABEL_80;
      }

      goto LABEL_69;
    }

    v42 = *(v92 + 8 * v101);
    ++v98;
    if (v42)
    {
      goto LABEL_52;
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  sub_21AEF81C4();
  swift_once();
LABEL_69:
  v132 = sub_21AF096CC();
  sub_21AEC78A8(v132, qword_27CD3EBD0);
  v133 = sub_21AF096AC();
  v134 = sub_21AF09A7C();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = sub_21AED1D18();
    v136 = sub_21AEB39C8();
    v167 = v136;
    *v135 = 136315138;
    sub_21AEF82E4();
    swift_beginAccess();

    sub_21AF0973C();

    v137 = sub_21AEF8418();

    *(v135 + 4) = v137;
    _os_log_impl(&dword_21AE94000, v133, v134, "photoIDCountGivenSceneCategoryDictWeek %s", v135, 0xCu);
    sub_21AEA79F0(v136);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v138 = sub_21AF096AC();
  v139 = sub_21AF09A7C();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = sub_21AED1D18();
    v141 = sub_21AEB39C8();
    v167 = v141;
    *v140 = 136315138;
    sub_21AEF82E4();
    swift_beginAccess();

    v142 = sub_21AF0973C();
    v144 = v143;

    v145 = sub_21AECFFFC(v142, v144, &v167);

    *(v140 + 4) = v145;
    _os_log_impl(&dword_21AE94000, v138, v139, "photoIDCountGivenSceneCategoryDictMonth %s", v140, 0xCu);
    sub_21AEA79F0(v141);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v146 = v155;
  (v42)(v158, v155);
  (v42)(v157, v146);
  sub_21AEF83CC();

  sub_21AEF82E4();
  swift_beginAccess();
  sub_21AEF82E4();
  swift_beginAccess();
  sub_21AEAD0A8();
}

id AMLPhotosSearchBiomeDataMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchBiomeDataMetrics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchBiomeDataMetrics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AMLPhotosSearchBiomeDataMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchBiomeDataMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21AEF600C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50, void *a51, void *a52, void *a53, void *a54, void *a55)
{
  v56 = v55;
  v57 = a3;
  if (a2)
  {
    v60 = sub_21AF097BC();

    v57 = a3;
    v56 = v55;
  }

  else
  {
    v60 = 0;
  }

  v66 = [v56 initWithSearchSessionUUID:v60 uiSurface:v57 matchedPeopleRatio:a4 matchedLocationRatio:a5 matchedSceneRatio:a6 matchedSceneConfidence:a7 matchedSceneBoundingBox:a8 matchedOCRCharacterRatio:a9 matchedOCRImportance:a10 matchedFieldsCount:a11 L1Score:a12 freshness:a13 favorited:a14 aestheticScore:a15 curationScore:a16 hasEverClickInLastWeek:a17 hasEverClickInLastMonth:a18 hasEverShareInLastWeek:a19 hasEverShareInLastMonth:a20 clickCountInLastWeekNormalizedAcrossItems:a21 clickCountInLastMonthNormalizedAcrossItems:a22 shareCountInLastWeekNormalizedAcrossItems:a23 shareCountInLastMonthNormalizedAcrossItems:a24 clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:a25 clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:a26 clickCountGivenLocationInLastWeekNormalizedAcrossItems:a27 clickCountGivenLocationInLastMonthNormalizedAcrossItems:a28 clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:a29 clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:a30 clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:a31 clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:a32 clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:a33 clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:a34 clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:a35 clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:a36 shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:a37 shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:a38 shareCountGivenLocationInLastWeekNormalizedAcrossItems:a39 shareCountGivenLocationInLastMonthNormalizedAcrossItems:a40 shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:a41 shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:a42 shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:a43 shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:a44 shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:a45 shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:a46 shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:a47 shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:a48 clipScore:a49 clicked:a50 clickOrder:a51 itemPosition:a52 L2ModelScore:a53 isDuplicate:a54 isCompleteMatch:a55];

  return v66;
}

uint64_t sub_21AEF647C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21AF0D320;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21AEF64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21AF09E4C() & 1;
  }
}

BOOL sub_21AEF6524(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_21AEF660C()
{
  sub_21AEF8580();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = *(v10 + 40);
  sub_21AF09EEC();
  v12 = *(v10 + 32);
  sub_21AEF8354();
  while (1)
  {
    v16 = v13 & v15;
    if (((1 << (v13 & v15)) & *(v14 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    if (*(*(v10 + 48) + 8 * v16) == v7)
    {
      goto LABEL_6;
    }

    v13 = v16 + 1;
  }

  v17 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v5;
  sub_21AEF6C38(v7, v16, isUniquelyReferenced_nonNull_native, v4, v2);
  *v5 = v19;
LABEL_6:
  *v9 = v7;
  sub_21AEF8564();
}

BOOL sub_21AEF66E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21AF09EFC();
  sub_21AF097EC();
  v9 = sub_21AF09F1C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_21AF09E4C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_21AEF6D54(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

void sub_21AEF6830()
{
  sub_21AEF8580();
  sub_21AEF830C(v2, v3, v4);
  v5 = sub_21AF09C3C();
  v6 = v5;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v6;
    sub_21AEF8564();
    return;
  }

  v7 = 0;
  v9 = (v1 + 56);
  v8 = *(v1 + 56);
  v10 = 1 << *(v1 + 32);
  v29 = v0;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = v5 + 56;
  if ((v11 & v8) == 0)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    if (v10 >= 64)
    {
      sub_21AEF647C(0, (v10 + 63) >> 6, v1 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v0 = v29;
    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = *(*(v1 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = v6[5];
    v19 = sub_21AF09EEC();
    sub_21AEF8484(v19);
    if (((-1 << v21) & ~*(v13 + 8 * v20)) == 0)
    {
      break;
    }

    sub_21AEF8470();
LABEL_21:
    sub_21AEF8434();
    *(v13 + v26) |= v27;
    *(v6[6] + 8 * v28) = v17;
    ++v6[2];
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  sub_21AEF845C();
  while (++v22 != v24 || (v23 & 1) == 0)
  {
    v25 = v22 == v24;
    if (v22 == v24)
    {
      v22 = 0;
    }

    v23 |= v25;
    if (*(v13 + 8 * v22) != -1)
    {
      sub_21AEF8448();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_21AEF69DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_21AEA7574(&qword_27CD3DBE8, &qword_21AF0D3C8);
  result = sub_21AF09C3C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_21AEF647C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_21AF09EFC();
    sub_21AF097EC();
    result = sub_21AF09F1C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_21AEF6C38(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21AEF6830();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_21AEF7144(v8 + 1, a4, a5);
LABEL_10:
      v14 = *v5;
      v15 = *(*v5 + 40);
      sub_21AF09EEC();
      v16 = *(v14 + 32);
      sub_21AEF8354();
      while (1)
      {
        a2 = v17 & v19;
        if (((*(v18 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v14 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v17 = a2 + 1;
      }
    }

    sub_21AEF6EBC(a4, a5);
  }

LABEL_7:
  v10 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v10 + 48) + 8 * a2) = a1;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_15:
    sub_21AF09E6C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v13;
  }
}

uint64_t sub_21AEF6D54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_21AEF69DC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_21AEF72CC(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_21AF09EFC();
      sub_21AF097EC();
      result = sub_21AF09F1C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_21AF09E4C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_21AEF6FEC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_21AF09E6C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_21AEF6EBC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_21AEA7574(a1, a2);
  v4 = *v2;
  v5 = sub_21AF09C2C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_21AEF6FEC()
{
  v1 = v0;
  sub_21AEA7574(&qword_27CD3DBE8, &qword_21AF0D3C8);
  v2 = *v0;
  v3 = sub_21AF09C2C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void sub_21AEF7144(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_21AEF830C(a1, a2, a3);
  v5 = sub_21AF09C3C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        sub_21AEF84EC();
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v4 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = v6[5];
        v18 = sub_21AF09EEC();
        sub_21AEF8484(v18);
        if (((-1 << v20) & ~*(v12 + 8 * v19)) == 0)
        {
          break;
        }

        sub_21AEF8470();
LABEL_21:
        sub_21AEF8434();
        *(v12 + v25) |= v26;
        *(v6[6] + 8 * v27) = v16;
        ++v6[2];
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_21AEF845C();
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        if (*(v12 + 8 * v21) != -1)
        {
          sub_21AEF8448();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_23;
        }

        v15 = *(v4 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v3 = v6;
  }
}

uint64_t sub_21AEF72CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_21AEA7574(&qword_27CD3DBE8, &qword_21AF0D3C8);
  result = sub_21AF09C3C();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_21AF09EFC();

        sub_21AF097EC();
        result = sub_21AF09F1C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21AEF750C(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (v2)
  {
    sub_21AF097CC();
  }

  return sub_21AEC7734();
}

uint64_t sub_21AEF7578(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&qword_27CD3DBD8, qword_21AF0D330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21AEF75E8(uint64_t a1, void *a2)
{
  v3 = sub_21AF0987C();

  [a2 setFetchPropertySets_];
}

void sub_21AEF7654(uint64_t a1, void *a2)
{
  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  sub_21AEEF478();
  v3 = sub_21AF0987C();

  [a2 setIncludedDetectionTypes_];
}

void sub_21AEF76D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21AF097BC();

  [a3 setSearchSessionUUID_];
}

uint64_t sub_21AEF7738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_21AEF7764(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21AEF77EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21AEF78D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21AEF82F0(a1, a2, a3, a4);
  v10 = v9 << v8;
  sub_21AEF8234();
  if (!v12)
  {
    v14 = 0;
LABEL_17:
    sub_21AEF820C(v14);
    return;
  }

  v13 = v11;
  if (!v11)
  {
    v14 = 0;
    goto LABEL_17;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    sub_21AEF8220();
    v17 = (v16 - v10) >> 6;
    while (v15 < v13)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (1)
        {
          v19 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v19 >= v17)
          {
            goto LABEL_17;
          }

          v7 = *(v6 + 8 * v19);
          ++v14;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v19 = v14;
LABEL_12:
      sub_21AEF84EC();
      v21 = v20 | (v19 << 6);
      v22 = (*(v4 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(*(v4 + 56) + 8 * v21);
      v7 &= v7 - 1;
      *v5 = *v22;
      v5[1] = v23;
      v5[2] = v24;
      if (v18 == v13)
      {

        v14 = v19;
        goto LABEL_17;
      }

      v5 += 3;

      v15 = v18;
      v14 = v19;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_21AEF79F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4 + 56;
  v7 = *(a4 + 56);
  v9 = -1 << *(a4 + 32);
  sub_21AEF8234();
  if (!v11)
  {
    v13 = 0;
LABEL_17:
    sub_21AEF820C(v13);
    return;
  }

  v12 = v10;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    sub_21AEF8220();
    v16 = (v15 - v9) >> 6;
    while (v14 < v12)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            goto LABEL_17;
          }

          v5 = *(v8 + 8 * v18);
          ++v13;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v18 = v13;
LABEL_12:
      sub_21AEF84EC();
      v20 = (*(a4 + 48) + ((v18 << 10) | (16 * v19)));
      v21 = v20[1];
      v5 &= v5 - 1;
      *v4 = *v20;
      v4[1] = v21;
      if (v17 == v12)
      {

        v13 = v18;
        goto LABEL_17;
      }

      v4 += 2;

      v14 = v17;
      v13 = v18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_21AEF7B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21AEF82F0(a1, a2, a3, a4);
  sub_21AEF8234();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    sub_21AEF820C(v11);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    sub_21AEF8220();
    v15 = (v13 - v14) >> 6;
    while (v12 < v10)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (1)
        {
          v17 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v7 = *(v6 + 8 * v17);
          ++v11;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v11;
LABEL_12:
      sub_21AEF84EC();
      v7 &= v7 - 1;
      v19 = v18 | (v17 << 6);
      sub_21AED1894(*(v4 + 48) + 40 * v19, &v22);
      *(&v24 + 1) = *(*(v4 + 56) + 8 * v19);
      v20 = v23;
      v25 = v22;
      v26 = v23;
      v21 = v24;
      v27 = v24;
      *v5 = v22;
      v5[1] = v20;
      v5[2] = v21;
      if (v16 == v10)
      {

        v11 = v17;
        goto LABEL_17;
      }

      v5 += 3;

      v12 = v16;
      v11 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

__n128 sub_21AEF7CD0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21AEF7CE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AEF7D04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_21AEF820C@<X0>(uint64_t a1@<X8>)
{
  *v2 = v3;
  v2[1] = v5;
  v2[2] = v1;
  v2[3] = a1;
  v2[4] = v6;
  return v4;
}

void sub_21AEF826C()
{
  v3 = __clz(__rbit64(v1)) | (v0 << 6);
  v4 = *(v2 - 144);
  v5 = (*(v4 + 48) + 16 * v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(*(v4 + 56) + 8 * v3);
}

id sub_21AEF829C(void *a1)
{

  return [a1 (v1 + 3507)];
}

id sub_21AEF82B4()
{
  v2 = *(v0 + 2992);

  return objc_allocWithZone(v2);
}

id sub_21AEF82CC(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_21AEF830C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return sub_21AEA7574(a2, a3);
}

double sub_21AEF8338@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 - 256) | 0x8000000000000000;

  return sub_21AEC8AA8(v2, a1);
}

__n128 *sub_21AEF8364(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 - 192) = 0;
  *(v2 - 184) = 0xE000000000000000;
  return result;
}

uint64_t sub_21AEF8374()
{
  *(v1 - 104) = v0;

  return sub_21AF05334();
}

uint64_t sub_21AEF839C()
{

  return sub_21AF099CC();
}

void sub_21AEF83B4()
{
  *(v0 + 16) = v3;
  v6 = v0 + 16 * v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  v7 = *(v5 - 112);
}

uint64_t sub_21AEF83D8()
{
  *v1 = *(v3 - 128);

  return sub_21AECFFFC(v0, v2, (v3 - 104));
}

void sub_21AEF83FC()
{

  JUMPOUT(0x21CEE4A70);
}

uint64_t sub_21AEF8418()
{

  return sub_21AECFFFC(v0, v1, (v2 - 152));
}

uint64_t sub_21AEF84C4()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  return v2;
}

__n128 sub_21AEF84D8(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  *(v1 - 120) = 0;
  *(v1 - 112) = 0xE000000000000000;
  return result;
}

void sub_21AEF8544()
{
  v4 = (*(v2 + 48) + 16 * v3);
  *v4 = v1;
  v4[1] = v0;
  v5 = *(v2 + 56);
}

uint64_t sub_21AEF859C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 - 264);

  return sub_21AEE706C(a1, v6, v5, v9, a5);
}

uint64_t sub_21AEF85BC()
{

  return sub_21AF0974C();
}

id sub_21AEF85DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_21AEA7B80(0, &qword_27CD3DA68, 0x277D82BB8);
    sub_21AF0971C();
    sub_21AEE2064();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_21AEF8674()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EBE8);
  sub_21AEA7958(v0, qword_27CD3EBE8);
  return sub_21AF096BC();
}

id sub_21AEF86F4(int a1, int a2)
{
  v93 = a1;
  v102 = sub_21AF0925C();
  v4 = sub_21AEA7C90(v102);
  v100 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_21AEC7554();
  v10 = v9 - v8;
  v11 = sub_21AF093FC();
  v12 = sub_21AEA7C90(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEFBEA8();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v86 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v86 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v86 - v24;
  v105 = MEMORY[0x277D84F90];
  v26 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  v27 = [objc_opt_self() mainBundle];
  v91 = sub_21AEF750C(v27);
  v101 = v28;
  sub_21AF093EC();
  sub_21AF0938C();
  v95 = *(v14 + 8);
  v96 = v14 + 8;
  v95(v23, v11);
  sub_21AF093EC();
  v29 = *(v14 + 16);
  v97 = v25;
  v29(v23, v25, v11);
  v98 = v20;
  v99 = v11;
  v29(v2, v20, v11);
  v30 = v26;
  v31 = v10;
  sub_21AF0923C();
  v32 = sub_21AEEF888();
  sub_21AEE5B34();
  v34 = v33;

  v35 = sub_21AEEF918();
  v92 = a2;
  sub_21AEE5DB0();
  v37 = v36;

  if (!v34[2] || (v38 = *(v37 + 16)) == 0)
  {

    if (qword_27CD3D2A8 != -1)
    {
LABEL_39:
      sub_21AEFBE88();
    }

    v48 = sub_21AF096CC();
    sub_21AEA7958(v48, qword_27CD3EBE8);
    sub_21AEE2064();

    v49 = sub_21AF096AC();
    v50 = sub_21AF09A8C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v95;
    v53 = v102;
    if (v51)
    {
      v54 = swift_slowAlloc();
      *v54 = 134218240;
      v55 = v34[2];

      *(v54 + 4) = v55;

      *(v54 + 12) = 2048;
      v56 = *(v37 + 16);

      *(v54 + 14) = v56;

      _os_log_impl(&dword_21AE94000, v49, v50, "Unable to send data to PET; biome streams: raw search %ld or feedback stream %ld are empty", v54, 0x16u);
      MEMORY[0x21CEE5A20](v54, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v69 = 0;
    v71 = v99;
    v70 = v100;
    v73 = v97;
    v72 = v98;
LABEL_36:
    (*(v70 + 8))(v31, v53);
    v52(v72, v71);
    v52(v73, v71);
    return v69;
  }

  v88 = v30;
  v89 = v34;
  v90 = v10;
  v31 = 0;
  v39 = 40;
  v30 = 0x2782B5000;
  v34 = &property descriptor for AMLProportionalAllocationSelector.identifier;
  while (1)
  {
    if (v38 == v31)
    {
      v87 = 0xEA0000000000656DLL;
      v57 = 0x616E5F6C65646F6DLL;
      goto LABEL_18;
    }

    if (v31 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v40 = *(v37 + v39);
    sub_21AEF7500(v40);
    if (v41)
    {
      v42 = objc_opt_self();
      v43 = sub_21AF097BC();

      v44 = [v42 clientDonationForPhotoId:v43 aroundTime:0.0];

      if (v44)
      {
        break;
      }
    }

LABEL_13:

    v39 += 16;
    ++v31;
  }

  v45 = [v44 featuresConfiguration];
  if (!v45)
  {
    v46 = v44;
    goto LABEL_12;
  }

  v46 = v45;
  v47 = [v45 modelName];
  if (!v47)
  {

    v40 = v44;
LABEL_12:

    goto LABEL_13;
  }

  v84 = v47;
  v57 = sub_21AF097CC();
  v87 = v85;

LABEL_18:
  result = [objc_allocWithZone(AMLUserLevelPhotosSearchMetrics) init];
  v59 = v101;
  v53 = v102;
  v60 = v89;
  v31 = v90;
  if (result)
  {
    v61 = result;

    v62 = v94;
    sub_21AEF96B4(v60);
    [v61 setCoverageDaily_];
    sub_21AEF96C0(v60);
    v64 = v63;

    [v61 setCoverageWeekly_];
    sub_21AEF9948();
    [v61 setNdcgDaily_];
    sub_21AEF993C();
    [v61 setNdcgWeekly_];
    sub_21AEFA590();
    [v61 setTtrDaily_];
    sub_21AEFA584();
    [v61 setTtrWeekly_];
    sub_21AEE576C(3157553, 0xE300000000000000, v61);
    sub_21AEE5778(v57, v87, v61);
    [v61 setIsProductionModel_];
    if (v59)
    {
      v65 = v93;
      if (v92)
      {
        sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_21AF0C5D0;
        v103 = 0;
        v104 = 0xE000000000000000;
        sub_21AF09C5C();
        MEMORY[0x21CEE4A70](0xD00000000000003ELL, 0x800000021AF10A40);
        MEMORY[0x21CEE4A70](v91, v59);

        v67 = v103;
        v68 = v104;
        *(v66 + 56) = MEMORY[0x277D837D0];
        *(v66 + 32) = v67;
        *(v66 + 40) = v68;
        sub_21AF09EDC();
      }
    }

    else
    {
      v65 = v93;
      if (qword_27CD3D2A8 != -1)
      {
        sub_21AEFBE88();
      }

      v74 = sub_21AF096CC();
      sub_21AEA7958(v74, qword_27CD3EBE8);
      v75 = sub_21AF096AC();
      v76 = sub_21AF09A8C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_21AE94000, v75, v76, "Missing incoming bundleId while performing photos search metrics upload to CA", v77, 2u);
        MEMORY[0x21CEE5A20](v77, -1, -1);
      }
    }

    [v61 setUiSurface_];
    sub_21AEE5784(0xD000000000000016, 0x800000021AF0FDF0, v61);
    sub_21AEE5790(0xD000000000000017, 0x800000021AF0FE10, v61);
    sub_21AEE579C(0xD000000000000015, 0x800000021AF0FE30, v61);
    v78 = v61;
    MEMORY[0x21CEE4AD0]();
    v79 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v79 >> 1)
    {
      sub_21AEAD084(v79);
      sub_21AF098CC();
    }

    sub_21AF0991C();
    v69 = v105;
    v52 = v95;
    if (v65)
    {
      v80 = *(v62 + OBJC_IVAR____TtC6AeroML31AMLPhotosSearchBiomeUserMetrics_caDomain);
      v81 = *(v62 + OBJC_IVAR____TtC6AeroML31AMLPhotosSearchBiomeUserMetrics_caDomain + 8);
      v82 = swift_allocObject();
      *(v82 + 16) = v78;
      v83 = v78;
      sub_21AEF9420(v80, v81, sub_21AEFBD10, v82);
    }

    else
    {
    }

    v71 = v99;
    v70 = v100;
    v72 = v98;

    v73 = v97;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

id sub_21AEF9010(void *a1)
{
  sub_21AEA7574(&qword_27CD3DA60, &qword_21AF0CE38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AF0CDE0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000021AF0FF00;
  v3 = [a1 isProductionModel];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x6D614E6C65646F6DLL;
  *(inited + 64) = 0xE900000000000065;
  result = [a1 modelName];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 72) = result;
  *(inited + 80) = 0x796C696144727474;
  *(inited + 88) = 0xE800000000000000;
  [a1 ttrDaily];
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 104) = 0x6C6B656557727474;
  *(inited + 112) = 0xE900000000000079;
  [a1 ttrWeekly];
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  strcpy((inited + 128), "coverageDaily");
  *(inited + 142) = -4864;
  [a1 coverageDaily];
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  strcpy((inited + 152), "coverageWeekly");
  *(inited + 167) = -18;
  [a1 coverageWeekly];
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 176) = 0x6C6961446763646ELL;
  *(inited + 184) = 0xE900000000000079;
  [a1 ndcgDaily];
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 200) = 0x6B6565576763646ELL;
  *(inited + 208) = 0xEA0000000000796CLL;
  [a1 ndcgWeekly];
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x800000021AF0FF20;
  result = [a1 metricDefinitionVersion];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(inited + 240) = result;
  *(inited + 248) = 0x6361667275536975;
  *(inited + 256) = 0xE900000000000065;
  v11 = [a1 uiSurface];
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = 0x800000021AF0FF40;
  result = [a1 trialDeploymentId];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(inited + 288) = result;
  *(inited + 296) = 0xD000000000000011;
  *(inited + 304) = 0x800000021AF0FF60;
  result = [a1 trialExperimentId];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(inited + 312) = result;
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = 0x800000021AF0FF80;
  result = [a1 trialTreatmentId];
  if (result)
  {
    *(inited + 336) = result;
    sub_21AEA7B80(0, &qword_27CD3DA68, 0x277D82BB8);
    return sub_21AF0974C();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21AEF9420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_21AEF9498(a1, a2, a3, a4);

  return MEMORY[0x2821F9378](v8);
}

void sub_21AEF9498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21AF097BC();
  v17[4] = a3;
  v17[5] = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21AEF85DC;
  v17[3] = &unk_282C819F0;
  v7 = _Block_copy(v17);

  v8 = AnalyticsSendEventLazy();
  _Block_release(v7);

  if (qword_27CD3D2A8 != -1)
  {
    swift_once();
  }

  v9 = sub_21AF096CC();
  sub_21AEA7958(v9, qword_27CD3EBE8);
  v10 = sub_21AF096AC();
  v11 = sub_21AF09A8C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    if (v8)
    {
      v14 = 0x6673736563637553;
    }

    else
    {
      v14 = 0x742064656C696146;
    }

    if (v8)
    {
      v15 = 0xEC000000796C6C75;
    }

    else
    {
      v15 = 0xE90000000000006FLL;
    }

    v16 = sub_21AECFFFC(v14, v15, v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21AE94000, v10, v11, "%s sent data to CoreAnalytics", v12, 0xCu);
    sub_21AEA79F0(v13);
    MEMORY[0x21CEE5A20](v13, -1, -1);
    MEMORY[0x21CEE5A20](v12, -1, -1);
  }
}

void sub_21AEF96CC(uint64_t a1)
{
  v4 = sub_21AF093FC();
  v5 = sub_21AEA7C90(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_21AEFBE34();
  MEMORY[0x28223BE20](v10);
  sub_21AED1BF4();
  sub_21AF093EC();
  sub_21AEFBED8();
  sub_21AF0938C();
  v11 = *(v7 + 8);
  v11(v1, v4);
  sub_21AF0936C();
  v13 = v12;
  v11(v2, v4);
  sub_21AEF97D0(a1, v13);
}

void sub_21AEF97D0(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = 0;
    v4 = *(a1 + 16);
    v5 = a1 + 32;
    v6 = 0.0;
    v7 = 0.0;
LABEL_3:
    v8 = (v5 + 16 * v3);
    v9 = v3;
    while (v4 != v9)
    {
      if (v9 >= v4)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

      v10 = *v8;
      v8 += 2;
      ++v9;
      if (v10 >= a2)
      {
        v11 = *(v8 - 1);
        v12 = [v11 presentedAssets];
        sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
        v13 = sub_21AF0988C();

        if (v13 >> 62)
        {
          v14 = sub_21AF09DAC();
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v14 < 1)
        {
          v6 = v6 + 1.0;
        }

        else
        {
          v7 = v7 + 1.0;
        }

        goto LABEL_3;
      }
    }
  }
}

void sub_21AEF9954()
{
  v2 = sub_21AF093FC();
  v3 = sub_21AEA7C90(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21AEFBE34();
  MEMORY[0x28223BE20](v8);
  sub_21AED1BF4();
  sub_21AF093EC();
  sub_21AEFBED8();
  sub_21AF0938C();
  v9 = *(v5 + 8);
  v9(v0, v2);
  sub_21AF0936C();
  v9(v1, v2);
  sub_21AEF9A58();
}

void sub_21AEF9A58()
{
  sub_21AEFBF04();
  v1 = v0;
  v2 = sub_21AF093FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21AEFBEA8();
  MEMORY[0x28223BE20](v4);
  sub_21AED1BF4();
  v5 = sub_21AF0925C();
  v6 = sub_21AEA7C90(v5);
  v111 = v7;
  v112 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_21AEC7554();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  sub_21AEFBED8();
  sub_21AF0935C();
  sub_21AF093EC();
  sub_21AF0923C();
  v14 = sub_21AEEF888();
  sub_21AEE5B34();
  v16 = v15;

  v17 = sub_21AEEF918();
  v109 = v13;
  v110 = v12;
  sub_21AEE5DB0();
  v19 = v18;

  v20 = v16[2];
  if (v20 && *(v19 + 16))
  {
    v21 = 0;
    v107 = 0;
    v22 = v16 + 4;
    v108 = MEMORY[0x277D84F90];
    v115 = v19;
    v116 = v16;
    v113 = v16 + 4;
    v114 = v20;
LABEL_4:
    while (v21 != v20)
    {
      if (v21 >= v16[2])
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:

        __break(1u);
        return;
      }

      v23 = &v22[2 * v21];
      v24 = *v23;
      ++v21;
      if (*v23 >= v1)
      {
        v25 = *(v23 + 1);
        v16 = [v25 presentedAssets];
        sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
        v20 = sub_21AF0988C();

        if (v20 >> 62)
        {
          v26 = sub_21AF09DAC();
        }

        else
        {
          v26 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v117 = v21;
        v118 = v25;
        if (v26)
        {
          if (v26 < 1)
          {
            goto LABEL_79;
          }

          v27 = 0;
          v28 = MEMORY[0x277D84F90];
          do
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x21CEE4EF0](v27, v20);
            }

            else
            {
              v29 = *(v20 + 8 * v27 + 32);
            }

            v21 = v29;
            v30 = sub_21AEACE24(v29);
            if (v31)
            {
              v16 = v30;
              v32 = v31;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v36 = *(v28 + 16);
                sub_21AEAD04C();
                sub_21AEAC554();
                v28 = v37;
              }

              v34 = *(v28 + 16);
              v33 = *(v28 + 24);
              v22 = (v34 + 1);
              if (v34 >= v33 >> 1)
              {
                sub_21AEAD084(v33);
                sub_21AEAC554();
                v28 = v38;
              }

              *(v28 + 16) = v22;
              v35 = v28 + 16 * v34;
              *(v35 + 32) = v16;
              *(v35 + 40) = v32;
            }

            else
            {
            }

            ++v27;
          }

          while (v26 != v27);
        }

        else
        {
          v28 = MEMORY[0x277D84F90];
        }

        v39 = v118;
        sub_21AEFA2A4(v118, v115, v24);
        if (v40)
        {
          v120 = v40;
          sub_21AEFA1B4();
          v22 = *(v28 + 16);
          if (v22)
          {
            v42 = v120;
            v43 = (v28 + 40);
            v44 = MEMORY[0x277D84F90];
            v20 = v107;
            do
            {
              v45 = *v43;
              v119[0] = *(v43 - 1);
              v119[1] = v45;
              MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
              *(&v106 - 2) = v119;

              v21 = sub_21AEF6524(sub_21AEFBE08, (&v106 - 4), v42);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (v21)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v51 = *(v44 + 16);
                  v52 = sub_21AEAD04C();
                  sub_21AEACA34(v52, v53, v54, v44);
                  v44 = isUniquelyReferenced_nonNull_native;
                }

                v47 = *(v44 + 16);
                v46 = *(v44 + 24);
                v48 = v47 + 1;
                v49 = 1.0;
              }

              else
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v55 = *(v44 + 16);
                  v56 = sub_21AEAD04C();
                  sub_21AEACA34(v56, v57, v58, v44);
                  v44 = isUniquelyReferenced_nonNull_native;
                }

                v47 = *(v44 + 16);
                v46 = *(v44 + 24);
                v48 = v47 + 1;
                v49 = 0.0;
              }

              if (v47 >= v46 >> 1)
              {
                v50 = sub_21AEAD084(v46);
                sub_21AEACA34(v50, v48, 1, v44);
                v44 = isUniquelyReferenced_nonNull_native;
              }

              *(v44 + 16) = v48;
              *(v44 + 8 * v47 + 32) = v49;
              v43 += 2;
              v22 = (v22 - 1);
            }

            while (v22);
          }

          else
          {
            v44 = MEMORY[0x277D84F90];
            v20 = v107;
          }

          v59 = *(v44 + 16);
          if (v59)
          {
            v60 = (v44 + 32);
            v61 = 1.0;
            v62 = 0.0;
            do
            {
              v63 = *v60++;
              v61 = v61 + 1.0;
              v62 = v62 + v63 / log2(v61);
              --v59;
            }

            while (v59);
          }

          else
          {
            v62 = 0.0;
          }

          v119[0] = v44;

          sub_21AEFB328(v119);
          if (v20)
          {
            goto LABEL_80;
          }

          v64 = v119[0];
          v65 = *(v119[0] + 2);
          v66 = 32;
          v107 = 0;
          while (v65)
          {
            v67 = *&v119[0][v66];
            v66 += 8;
            --v65;
            if (v67 != 0.0)
            {
              v16 = v120;

              v68 = *(v64 + 2);
              if (v68)
              {
                v69 = 1.0;
                v70 = 0.0;
                v44 = 32;
                sub_21AEFBEE4();
                do
                {
                  v71 = *&v64[v44];
                  v69 = v69 + 1.0;
                  v70 = v70 + v71 / log2(v69);
                  v44 += 8;
                  --v68;
                }

                while (v68);

                if (v70 != 0.0)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v93 = *(v108 + 16);
                    v94 = sub_21AEAD04C();
                    sub_21AEACA34(v94, v95, v96, v97);
                    v108 = v98;
                  }

                  sub_21AEFBE74();
                  if (v73)
                  {
                    sub_21AEFBE50(v72);
                    v108 = v99;
                  }

                  v74 = v62 / v70;
LABEL_70:
                  v78 = v108;
                  *(v108 + 16) = v44;
                  *(v78 + 32) = v74;
                  goto LABEL_4;
                }
              }

              else
              {

                sub_21AEFBEE4();
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v86 = *(v108 + 16);
                v87 = sub_21AEAD04C();
                sub_21AEACA34(v87, v88, v89, v90);
                v108 = v91;
              }

              sub_21AEFBE74();
              if (v73)
              {
                sub_21AEFBE50(v77);
                v108 = v92;
              }

              v74 = 0.0;
              goto LABEL_70;
            }
          }

          v16 = v120;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v79 = *(v108 + 16);
            v80 = sub_21AEAD04C();
            sub_21AEACA34(v80, v81, v82, v83);
            v108 = v84;
          }

          sub_21AEFBEE4();
          sub_21AEFBE74();
          if (v73)
          {
            sub_21AEFBE50(v75);
            v108 = v85;
          }

          v76 = v108;
          *(v108 + 16) = v44;
          *(v76 + 32) = 0;
        }

        else
        {

          sub_21AEFBEE4();
        }
      }
    }

    v100 = v108;
    v101 = *(v108 + 16);
    v102 = 0.0;
    if (v101)
    {
      v103 = (v108 + 32);
      do
      {
        v104 = *v103++;
        v102 = v102 + v104;
        --v101;
      }

      while (v101);
    }

    (*(v111 + 8))(v110, v112);
    v105 = *(v100 + 16);
  }

  else
  {
    (*(v111 + 8))(v110, v112);
  }

  sub_21AEFBF28();
}

void sub_21AEFA1B4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      v4 = *v0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_16:
        sub_21AED1880(v1);
        v1 = v14;
      }

      v2 = v1 + 16 * v2 + 24;
      v5 = (v1 + 40);
      v6 = 1;
      do
      {
        if (v6 - 1 != v3)
        {
          v7 = *(v1 + 16);
          if (v6 - 1 >= v7)
          {
            __break(1u);
LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          if (v3 >= v7)
          {
            goto LABEL_14;
          }

          v8 = *(v5 - 1);
          v9 = *v5;
          v10 = *v2;
          *(v5 - 1) = *(v2 - 8);
          *v5 = v10;
          v11 = *(v1 + 16);

          if (v3 >= v11)
          {
            goto LABEL_15;
          }

          v12 = *v2;
          *(v2 - 8) = v8;
          *v2 = v9;
        }

        --v3;
        v2 -= 16;
        v5 += 2;
      }

      while (v6++ < v3);
      *v0 = v1;
    }
  }
}

void sub_21AEFA2A4(void *a1, uint64_t a2, double a3)
{
  v5 = [a1 presentedAssets];
  v41 = 0;
  sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
  v6 = sub_21AF0988C();

  v7 = sub_21AEA7BE4(v6);
  v42 = a2;
  if (v7)
  {
    v8 = v7;
    if (v7 < 1)
    {
      goto LABEL_36;
    }

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CEE4EF0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = sub_21AEACE24(v11);
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v10 + 16);
          sub_21AEAD04C();
          sub_21AEAC554();
          v10 = v21;
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21AEAD084(v17);
          sub_21AEAC554();
          v10 = v22;
        }

        *(v10 + 16) = v18 + 1;
        v19 = v10 + 16 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
      }

      else
      {
      }

      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v23 = 0;
  v24 = *(v42 + 16);
  v25 = v42 + 40;
  v42 = MEMORY[0x277D84F90];
  v40 = v25;
LABEL_18:
  for (i = (v25 + 16 * v23); ; i += 2)
  {
    if (v24 == v23)
    {

      return;
    }

    if (v23 >= v24)
    {
      break;
    }

    if (__OFADD__(v23, 1))
    {
      goto LABEL_35;
    }

    if (*(i - 1) > a3)
    {
      v27 = *i;
      v28 = sub_21AEF7500(v27);
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        v43[0] = v28;
        v43[1] = v29;
        MEMORY[0x28223BE20](v28);
        v39[2] = v43;
        if (sub_21AEF6524(sub_21AEACF38, v39, v10))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = *(v42 + 16);
            sub_21AEAD04C();
            sub_21AEAC554();
            v42 = v37;
          }

          v33 = *(v42 + 16);
          v32 = *(v42 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_21AEAD084(v32);
            sub_21AEAC554();
            v42 = v38;
          }

          v34 = v42;
          *(v42 + 16) = v33 + 1;
          v35 = v34 + 16 * v33;
          *(v35 + 32) = v30;
          *(v35 + 40) = v31;
          ++v23;
          v25 = v40;
          goto LABEL_18;
        }
      }
    }

    ++v23;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_21AEFA59C()
{
  v1 = sub_21AF093FC();
  v2 = sub_21AEA7C90(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_21AEFBE34();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_21AF093EC();
  sub_21AF0938C();
  v10 = *(v4 + 8);
  v10(v0, v1);
  sub_21AF0936C();
  v10(v9, v1);
  sub_21AEFA6A4();
}

void sub_21AEFA6A4()
{
  sub_21AEFBF04();
  v1 = v0;
  v2 = sub_21AF093FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21AEFBE34();
  MEMORY[0x28223BE20](v4);
  sub_21AED1BF4();
  v5 = sub_21AF0925C();
  v6 = sub_21AEA7C90(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_21AEC7554();
  v13 = v12 - v11;
  sub_21AEFBED8();
  sub_21AF0935C();
  sub_21AF093EC();
  sub_21AF0923C();
  v14 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  v15 = sub_21AEEF888();
  sub_21AEE5B34();
  v17 = v16;

  v18 = sub_21AEEF918();
  sub_21AEE5DB0();
  v20 = v19;

  v21 = *(v17 + 16);
  if (v21)
  {
    v36 = v8;
    v37 = v5;
    v22 = 0;
    v23 = v17 + 40;
    v24 = 0.0;
    v25 = 0.0;
LABEL_3:
    for (i = (v23 + 16 * v22); ; i += 2)
    {
      if (v21 == v22)
      {

        (*(v36 + 8))(v13, v37);
        goto LABEL_20;
      }

      if (v22 >= *(v17 + 16))
      {
        break;
      }

      v27 = *(i - 1);
      if (v27 >= v1)
      {
        v28 = v13;
        v29 = *i;
        v30 = [v29 presentedAssets];
        sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
        v31 = sub_21AF0988C();

        if (v31 >> 62)
        {
          v32 = sub_21AF09DAC();
        }

        else
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v32 < 1)
        {

          v13 = v28;
          goto LABEL_14;
        }

        sub_21AEFA2A4(v29, v20, v27);
        v34 = v33;

        v13 = v28;
        if (v34)
        {
          v35 = *(v34 + 16);

          if (v35)
          {
            ++v22;
            v25 = v25 + 1.0;
          }

          else
          {
LABEL_14:
            v24 = v24 + 1.0;
            ++v22;
          }

          v23 = v17 + 40;
          goto LABEL_3;
        }
      }

      ++v22;
    }

    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v13, v5);

LABEL_20:
    sub_21AEFBF28();
  }
}

id AMLPhotosSearchBiomeUserMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchBiomeUserMetrics.init()()
{
  v1 = &v0[OBJC_IVAR____TtC6AeroML31AMLPhotosSearchBiomeUserMetrics_caDomain];
  *v1 = 0xD00000000000002DLL;
  *(v1 + 1) = 0x800000021AF0FE70;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AMLPhotosSearchBiomeUserMetrics();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AMLPhotosSearchBiomeUserMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchBiomeUserMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21AEFAAAC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
    v8 = sub_21AEFBEC4();

    return MEMORY[0x2821FE828](v8);
  }

  else if (a3 != a1)
  {
    v7 = sub_21AEFBEC4();

    return MEMORY[0x2821FE820](v7);
  }

  return result;
}

char *sub_21AEFAB80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

char *sub_21AEFABA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

char *sub_21AEFABC8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

char *sub_21AEFABE8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

void sub_21AEFAC10()
{
  sub_21AEACFE4();
  if (v3)
  {
    sub_21AEACF68();
    if (v5 != v6)
    {
      sub_21AEACFCC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_21AEACF58();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_21AEA7574(qword_27CD3DC08, &unk_21AF0D430);
    v9 = sub_21AEAD05C();
    j__malloc_size(v9);
    sub_21AEACFD8();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v7 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 8 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
    swift_arrayInitWithCopy();
  }
}

void sub_21AEFAD1C()
{
  sub_21AEACFE4();
  if (v3)
  {
    sub_21AEACF68();
    if (v5 != v6)
    {
      sub_21AEACFCC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_21AEACF58();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_21AEA7574(&qword_27CD3D738, &unk_21AF0C538);
    v9 = sub_21AEAD05C();
    j__malloc_size(v9);
    sub_21AEACFD8();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

void sub_21AEFADF8()
{
  sub_21AEACFE4();
  if (v3)
  {
    sub_21AEACF68();
    if (v5 != v6)
    {
      sub_21AEACFCC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_21AEACF58();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_21AEA7574(&qword_27CD3D730, &qword_21AF0C530);
    v9 = sub_21AEAD05C();
    j__malloc_size(v9);
    sub_21AEACFD8();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v7] <= v11)
    {
      memmove(v11, v12, 4 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v7);
  }
}

void sub_21AEFAED4()
{
  sub_21AEACFE4();
  if (v3)
  {
    sub_21AEACF68();
    if (v5 != v6)
    {
      sub_21AEACFCC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_21AEACF58();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
    v9 = sub_21AEAD05C();
    j__malloc_size(v9);
    sub_21AEACFD8();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_21AEFAFB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_21AEA7574(&qword_27CD3D6E0, &unk_21AF0C4E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_21AEA7574(&qword_27CD3D860, &unk_21AF0C620);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21AEFB0F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_21AEA7574(&qword_27CD3D700, &qword_21AF0C500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_21AEA7574(&qword_27CD3DC00, &unk_21AF0D420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21AEFB228(char *result, int64_t a2, char a3, char *a4)
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
    sub_21AEA7574(&qword_27CD3D708, &qword_21AF0C508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_21AEFB328(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21AEFBDB8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21AEFB394(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21AEFB394(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AEFB488(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21AEE4FC0(0, v2, 1, a1);
  }

  return result;
}

void sub_21AEFB488(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v10 < v9) ^ (v12 >= *(*a3 + 8 * v11++));
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v10 < v9)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*v26 >= v24)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_21AEAC638();
        v7 = v73;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_21AEAC638();
        v7 = v74;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_21AEFBA64((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_21AEFB938(&v80, *a1, a3);
LABEL_89:
}

uint64_t sub_21AEFB938(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_21AEFBA64((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21AEFBA64(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v13 = *v6;
      if (*v4 >= *v6)
      {
        break;
      }

      v14 = v7 == v6++;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v7;
    }

    v13 = *v4;
    v14 = v7 == v4++;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[v9];
LABEL_25:
  v16 = v6 - 1;
  for (--v5; v11 > v4 && v6 > v7; --v5)
  {
    v18 = *(v11 - 1);
    if (*v16 < v18)
    {
      v14 = v5 + 1 == v6--;
      if (!v14)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 1)
    {
      *v5 = v18;
    }

    --v11;
  }

LABEL_38:
  v19 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v19])
  {
    memmove(v6, v4, 8 * v19);
  }

  return 1;
}

char *sub_21AEFBC10(char *result, int64_t a2, char a3, char *a4)
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
    sub_21AEA7574(&qword_27CD3D6C8, &unk_21AF0D410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_21AEFBDE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21AEFBE50(unint64_t a1@<X8>)
{
  v4 = *(v2 - 256);

  sub_21AEACA34(a1 > 1, v1, 1, v4);
}

void sub_21AEFBE74()
{
  v1 = *(v0 - 256);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t sub_21AEFBE88()
{

  return swift_once();
}

void sub_21AEFBEE4()
{
  v1 = *(v0 - 192);
  v2 = *(v0 - 184);
  v4 = *(v0 - 216);
  v3 = *(v0 - 208);
}

uint64_t sub_21AEFBF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for AMLRankingPipelineContext();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t AMLRankingPipeline.process(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_21AEFBFEC, 0, 0);
}

uint64_t sub_21AEFBFEC()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = sub_21AEFC904();
  v6 = sub_21AEFC904();
  v7 = *(v4 + *(type metadata accessor for AMLRankingPipelineContext() + 36));
  v8 = *(v1 + 32);

  v9 = v8(v3, v1);
  v0[2] = v5;
  v0[3] = v6;
  swift_getExtendedExistentialTypeMetadata();
  sub_21AEFC8F8();
  v10 = sub_21AF0989C();
  v18 = v10;
  sub_21AEFC8F8();
  if (v10 == sub_21AF0992C())
  {
    v11 = v7;
LABEL_5:

    v16 = v0[1];

    return v16(v11);
  }

  else
  {
    while (1)
    {
      sub_21AEFC8F8();
      v12 = sub_21AF0990C();
      sub_21AF098BC();
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v0[7];
      sub_21AEE15E0(v9 + 32 + 40 * v10, (v0 + 2));
      sub_21AF0996C();
      v14 = v0[5];
      v15 = v0[6];
      sub_21AEAF9B0(v0 + 2, v14);
      v11 = (*(v15 + 24))(v13, v7, v14, v15);

      sub_21AEA79F0(v0 + 2);
      sub_21AEFC8F8();
      v10 = v18;
      v7 = v11;
      if (v18 == sub_21AF0992C())
      {
        goto LABEL_5;
      }
    }

    result = sub_21AF09C7C();
    __break(1u);
  }

  return result;
}

uint64_t AMLRankingPipelineContext.candidates.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*AMLRankingPipelineContext.candidates.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t AMLRankingPipelineIdentifier.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLRankingPipelineIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLRankingPipelineIdentifier.init(name:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD00000000000001CLL;
    v2[3] = 0x800000021AF0D470;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v6 = 0xD000000000000027;
    *(v6 + 8) = 0x800000021AF10AB0;
    *(v6 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLRankingPipelineIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21AEFC4E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    type metadata accessor for AMLCandidateWithFeatures();
    result = sub_21AF0997C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21AEFC578(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_21AEA766C(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21AEFC6B4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_21AEA75BC(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21AEFC904()
{

  return swift_getAssociatedTypeWitness();
}

__n128 sub_21AEFC924(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21AEFC930(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21AEFC970(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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