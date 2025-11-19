uint64_t getEnumTagSinglePayload for URLReferenceLink.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for URLReferenceLink.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_C09D8()
{
  result = qword_4F06D0;
  if (!qword_4F06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F06D0);
  }

  return result;
}

unint64_t sub_C0A30()
{
  result = qword_4F06D8;
  if (!qword_4F06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F06D8);
  }

  return result;
}

unint64_t sub_C0A88()
{
  result = qword_4F06E0;
  if (!qword_4F06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F06E0);
  }

  return result;
}

uint64_t sub_C0ADC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B0890;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_C0B28()
{
  result = qword_4F06E8;
  if (!qword_4F06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F06E8);
  }

  return result;
}

uint64_t BubbleTip.init(id:request:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v6 = a5 + *(type metadata accessor for BubbleTip() + 24);

  return sub_14A10(a4, v6);
}

uint64_t type metadata accessor for BubbleTip()
{
  result = qword_4F0758;
  if (!qword_4F0758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BubbleTip.init<A>(from:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E7284();
  v11 = v10;
  sub_C0DF4();
  (*(v6 + 16))(v8, a1, a2);
  v12 = sub_3EDA84();
  type metadata accessor for BubbleTip();
  sub_3ECF04();
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  a3[1] = v11;
  a3[2] = v12;
  return result;
}

uint64_t BubbleTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BubbleTip() + 24);

  return sub_7EA24(v3, a1);
}

double Paragraph.clickAction.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_C0DF4()
{
  result = qword_4F06F0;
  if (!qword_4F06F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F06F0);
  }

  return result;
}

unint64_t sub_C0E44()
{
  result = qword_4F06F8;
  if (!qword_4F06F8)
  {
    type metadata accessor for BubbleTip();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F06F8);
  }

  return result;
}

unint64_t sub_C0E9C(uint64_t a1)
{
  result = sub_C0E44();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C0ED8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C0FA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C1058()
{
  sub_C0DF4();
  if (v0 <= 0x3F)
  {
    sub_4D334();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CategoryListItem()
{
  result = qword_4F0818;
  if (!qword_4F0818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CategoryListItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for CategoryListItem() + 28));

  return v1;
}

uint64_t CategoryListItem.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for CategoryListItem() + 32));

  return v1;
}

uint64_t CategoryListItem.init(id:artwork:color:title:subtitle:url:playAction:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  v19 = type metadata accessor for CategoryListItem();
  sub_FACC(a2, a9 + v19[5], &qword_4F1D50);
  *(a9 + v19[6]) = a3;
  v20 = (a9 + v19[7]);
  *v20 = a4;
  v20[1] = a5;
  v21 = (a9 + v19[8]);
  *v21 = a6;
  v21[1] = a7;
  sub_FACC(a8, a9 + v19[9], &unk_4E9EE0);
  v22 = a9 + v19[10];
  v23 = *(a10 + 16);
  *v22 = *a10;
  *(v22 + 1) = v23;
  *(v22 + 4) = *(a10 + 32);
  v24 = a9 + v19[11];
  v25 = *(a11 + 16);
  *v24 = *a11;
  *(v24 + 1) = v25;
  *(v24 + 4) = *(a11 + 32);
  return sub_FACC(a12, a9 + v19[12], &unk_4E9170);
}

uint64_t CategoryListItem.shelfUniqueId.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v1 - 8);
  v3 = v15 - v2;
  v15[1] = *v0;
  sub_C2A70();
  v16 = sub_3EE7A4();
  v17 = v4;
  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  sub_3ED3D4(v18);
  v5 = type metadata accessor for CategoryListItem();
  sub_3ED3D4(*(v0 + v5[7]));
  v19._countAndFlagsBits = 45;
  v19._object = 0xE100000000000000;
  sub_3ED3D4(v19);
  v6 = (v0 + v5[8]);
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 7104878;
    v8 = 0xE300000000000000;
  }

  v20._countAndFlagsBits = v7;
  v20._object = v8;
  sub_3ED3D4(v20);

  v21._countAndFlagsBits = 45;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  sub_FBD0(v0 + v5[9], v3, &unk_4E9EE0);
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    v11 = 7104878;
    sub_FCF8(v3, &unk_4E9EE0);
    v12 = 0xE300000000000000;
  }

  else
  {
    v11 = sub_3E5CD4();
    v12 = v13;
    (*(v10 + 8))(v3, v9);
  }

  v22._countAndFlagsBits = v11;
  v22._object = v12;
  sub_3ED3D4(v22);

  return v16;
}

uint64_t CategoryListItem.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v58 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v6 - 8);
  v57 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v51 - v11;
  v12 = sub_3E6044();
  __chkstk_darwin(v12 - 8);
  v13 = sub_3ED1F4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_3ED1D4();
  __chkstk_darwin(v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BA8);
  __chkstk_darwin(v15 - 8);
  v17 = &v51 - v16;
  v18 = type metadata accessor for Category();
  v19 = *(v18 - 1);
  __chkstk_darwin(v18);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MTCategory.category.getter(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    sub_FCF8(v17, &qword_4E9BA8);
LABEL_5:
    v23 = type metadata accessor for CategoryListItem();
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  sub_C2AC4(v17, v21);
  v22 = v21 + v18[7];
  if (v22[4])
  {

    sub_C31B0(v21, type metadata accessor for Category);
    goto LABEL_5;
  }

  v55 = *v22;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  if (sub_3E7584() <= 0)
  {
    v54 = 0;
    v53 = 0;
  }

  else
  {
    sub_3ED1C4();
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    sub_3ED1B4(v73);
    *&v67 = sub_3E7584();
    sub_3ED194();
    v74._countAndFlagsBits = 0x65776F6C6C6F4620;
    v74._object = 0xEF73776F68532064;
    sub_3ED1B4(v74);
    sub_3ED1E4();
    sub_3E6034();
    v54 = sub_3ED2A4();
    v53 = v25;
    *(&v68 + 1) = type metadata accessor for LibraryCategoryPlayAction();
    v69 = sub_C3168(&qword_4F07A8, type metadata accessor for LibraryCategoryPlayAction);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v67);
    MTCategory.playAction.getter(boxed_opaque_existential_0Tm);
    sub_FCF8(&v64, &qword_4EDE00);
    v64 = v67;
    v65 = v68;
    v66 = v69;
  }

  v27 = v59;
  v28 = sub_3EC634();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = v29 + 56;
  v30(v27, 1, 1, v28);
  v32 = sub_3E7424();
  *(&v68 + 1) = v32;
  v69 = sub_C3168(&qword_4F07A0, &type metadata accessor for Podcasts);
  v33 = __swift_allocate_boxed_opaque_existential_0Tm(&v67);
  (*(*(v32 - 8) + 104))(v33, enum case for Podcasts.libraryCategoriesPageImpressionMetrics(_:), v32);
  LOBYTE(v32) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  if (v32)
  {
    *&v67 = *v21;
    sub_17A28();
    sub_3EE1F4();
    sub_3E85D4();
    v52 = v30;
    v51 = v31;
    v34 = v56;
    sub_3EC5A4();

    v35 = v59;
    sub_FCF8(v59, &unk_4E9170);
    v52(v34, 0, 1, v28);
    sub_FACC(v34, v35, &unk_4E9170);
  }

  v36 = *v21;
  v37 = v57;
  sub_FBD0(v21 + v18[8], v57, &qword_4F1D50);
  v38 = v21[2];
  v56 = v21[1];
  v39 = v21 + v18[6];
  v40 = v58;
  sub_FBD0(v39, v58, &unk_4E9EE0);
  sub_FBD0(&v64, v62, &qword_4EDE00);

  sub_3E67A4();
  v41 = sub_3E8574();
  MTCategory.segue(with:targetType:)(&v67, v41, v42, v60);

  v72 = v67;
  sub_FCF8(&v72, &unk_4F8A10);
  v71 = v68;
  sub_FCF8(&v71, &qword_4E94E0);
  v70 = *(&v68 + 1);
  sub_FCF8(&v70, &unk_4F8A20);
  sub_16AC0(v69);

  sub_FCF8(&v64, &qword_4EDE00);
  *a2 = v36;
  v43 = type metadata accessor for CategoryListItem();
  sub_FACC(v37, a2 + v43[5], &qword_4F1D50);
  *(a2 + v43[6]) = v55;
  v44 = (a2 + v43[7]);
  *v44 = v56;
  v44[1] = v38;
  v45 = (a2 + v43[8]);
  v46 = v53;
  *v45 = v54;
  v45[1] = v46;
  sub_FACC(v40, a2 + v43[9], &unk_4E9EE0);
  v47 = a2 + v43[10];
  v48 = v62[1];
  *v47 = v62[0];
  *(v47 + 1) = v48;
  *(v47 + 4) = v63;
  v49 = a2 + v43[11];
  v50 = v60[1];
  *v49 = v60[0];
  *(v49 + 1) = v50;
  *(v49 + 4) = v61;
  sub_FACC(v59, a2 + v43[12], &unk_4E9170);
  sub_C31B0(v21, type metadata accessor for Category);
  return (*(*(v43 - 1) + 56))(a2, 0, 1, v43);
}

uint64_t CategoryListItem.hash(into:)()
{
  sub_C2A1C();
  sub_3EE354();
  sub_3EE344();
  sub_5B3D8(v1);
  type metadata accessor for CategoryListItem();
  return sub_3ED394();
}

Swift::Int CategoryListItem.hashValue.getter()
{
  sub_3EE954();
  sub_C2A1C();
  sub_3EE354();
  sub_3EE344();
  sub_5B3D8(v1);
  type metadata accessor for CategoryListItem();
  sub_3ED394();
  return sub_3EE9A4();
}

Swift::Int sub_C21E8()
{
  sub_3EE954();
  sub_C2A1C();
  sub_3EE354();
  sub_3EE344();
  sub_5B3D8(v1);
  sub_3ED394();
  return sub_3EE9A4();
}

uint64_t sub_C227C()
{
  sub_C2A1C();
  sub_3EE354();
  sub_3EE344();
  sub_5B3D8(v1);
  return sub_3ED394();
}

Swift::Int sub_C2300()
{
  sub_3EE954();
  sub_C2A1C();
  sub_3EE354();
  sub_3EE344();
  sub_5B3D8(v1);
  sub_3ED394();
  return sub_3EE9A4();
}

uint64_t _s8ShelfKit16CategoryListItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9870);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v14 - 8);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = (&v51 - v18);
  if (*a1 != *a2)
  {
    goto LABEL_34;
  }

  v55 = v4;
  v56 = v11;
  v52 = v10;
  v53 = v13;
  v51 = v7;
  v54 = v5;
  v20 = type metadata accessor for CategoryListItem();
  sub_FBD0(a1 + v20[5], v19, &qword_4F1D50);
  v21 = sub_3E7784();
  v22 = *(*(v21 - 8) + 48);
  if (v22(v19, 1, v21) == 1)
  {
    sub_FCF8(v19, &qword_4F1D50);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v19;
    v24 = v19[1];

    sub_C31B0(v19, &type metadata accessor for ArtworkModel);
  }

  sub_FBD0(a2 + v20[5], v16, &qword_4F1D50);
  if (v22(v16, 1, v21) == 1)
  {
    sub_FCF8(v16, &qword_4F1D50);
    if (!v24)
    {
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_34;
  }

  v26 = *v16;
  v25 = v16[1];

  sub_C31B0(v16, &type metadata accessor for ArtworkModel);
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_15;
    }

    if (v23 == v26 && v24 == v25)
    {
    }

    else
    {
      v27 = sub_3EE804();

      if ((v27 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (!sub_259EE0(*(a1 + v20[6]), *(a2 + v20[6])))
  {
    goto LABEL_34;
  }

  v28 = v20[7];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (sub_3EE804() & 1) == 0)
  {
    goto LABEL_34;
  }

  v32 = v20[8];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (!v34)
  {
    v37 = v56;
    if (!v36)
    {
      goto LABEL_28;
    }

LABEL_34:
    v45 = 0;
    return v45 & 1;
  }

  v37 = v56;
  if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_3EE804() & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  v38 = v20[9];
  v39 = *(v37 + 48);
  v40 = a1 + v38;
  v41 = v53;
  sub_FBD0(v40, v53, &unk_4E9EE0);
  sub_FBD0(a2 + v38, v41 + v39, &unk_4E9EE0);
  v43 = v54;
  v42 = v55;
  v44 = *(v54 + 48);
  if (v44(v41, 1, v55) != 1)
  {
    v46 = v52;
    sub_FBD0(v41, v52, &unk_4E9EE0);
    if (v44(v41 + v39, 1, v42) != 1)
    {
      v48 = v41 + v39;
      v49 = v51;
      (*(v43 + 32))(v51, v48, v42);
      sub_C3168(&qword_4E9880, &type metadata accessor for URL);
      v45 = sub_3ED174();
      v50 = *(v43 + 8);
      v50(v49, v42);
      v50(v46, v42);
      sub_FCF8(v41, &unk_4E9EE0);
      return v45 & 1;
    }

    (*(v43 + 8))(v46, v42);
    goto LABEL_33;
  }

  if (v44(v41 + v39, 1, v42) != 1)
  {
LABEL_33:
    sub_FCF8(v41, &qword_4E9870);
    goto LABEL_34;
  }

  sub_FCF8(v41, &unk_4E9EE0);
  v45 = 1;
  return v45 & 1;
}

unint64_t sub_C2A1C()
{
  result = qword_503E00;
  if (!qword_503E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_503E00);
  }

  return result;
}

unint64_t sub_C2A70()
{
  result = qword_4F0798;
  if (!qword_4F0798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0798);
  }

  return result;
}

uint64_t sub_C2AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Category();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C2B70(uint64_t a1)
{
  result = sub_C3168(&qword_4F07B0, type metadata accessor for CategoryListItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C2C24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[9];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_C2DD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_C2F68()
{
  sub_C3114(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_1972C();
    if (v1 <= 0x3F)
    {
      sub_C3114(319, &qword_4E9918, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        sub_C30B0();
        if (v3 <= 0x3F)
        {
          sub_C3114(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_C30B0()
{
  if (!qword_4F0828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_502170);
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F0828);
    }
  }
}

void sub_C3114(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_C3168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C31B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CategorySelection.seeAllAction.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 48);

  return sub_1D4F0(a1, v1 + 48);
}

uint64_t type metadata accessor for CategorySelection()
{
  result = qword_4F0930;
  if (!qword_4F0930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CategorySelection.init(id:title:categories:totalCategoriesCount:seeAllAction:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  sub_1D4F0(a7, (a9 + 6));
  v11 = a9 + *(type metadata accessor for CategorySelection() + 36);

  return sub_14A10(a8, v11);
}

uint64_t sub_C3404()
{
  sub_3ED394();
}

uint64_t sub_C34FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_C4938(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_C352C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEA00000000007365;
  v6 = 0x69726F6765746163;
  v7 = 0xEC0000006E6F6974;
  v8 = 0x63416C6C41656573;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000000422950;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (v2 != 1)
  {
    v10 = 0xD000000000000014;
    v9 = 0x8000000000422990;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_C35EC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x69726F6765746163;
  v4 = 0x63416C6C41656573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

uint64_t sub_C36A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C4938(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C36DC(uint64_t a1)
{
  v2 = sub_C3A84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C3718(uint64_t a1)
{
  v2 = sub_C3A84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CategorySelection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0880);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_C3A84();
  sub_3EEA14();
  v14 = 0;
  sub_3EE734();
  if (!v2)
  {
    v13 = 1;
    sub_3EE6F4();
    v12 = 2;
    sub_3EE754();
    v11 = *(v3 + 32);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0890);
    sub_C4024(&qword_4F0898, &qword_4F08A0);
    sub_3EE764();
    v10[14] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0878);
    sub_C40C0(&qword_4F08A8);
    sub_3EE764();
    type metadata accessor for CategorySelection();
    v10[13] = 5;
    sub_3EC634();
    sub_C4228(&qword_4F0138, &type metadata accessor for ImpressionMetrics);
    sub_3EE724();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_C3A84()
{
  result = qword_4F0888;
  if (!qword_4F0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0888);
  }

  return result;
}

uint64_t CategorySelection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F08B0);
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v20 - v8;
  v10 = type metadata accessor for CategorySelection();
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_C3A84();
  sub_3EE9F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  LOBYTE(v23) = 0;
  *v12 = sub_3EE694();
  *(v12 + 1) = v14;
  LOBYTE(v23) = 1;
  v15 = v7;
  *(v12 + 2) = sub_3EE644();
  *(v12 + 3) = v16;
  LOBYTE(v23) = 2;
  *(v12 + 5) = sub_3EE6B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0890);
  v26 = 3;
  sub_C4024(&qword_4F08B8, &qword_4F08C0);
  sub_3EE6C4();
  *(v12 + 4) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0878);
  v26 = 4;
  sub_C40C0(&qword_4F08C8);
  sub_3EE6C4();
  v17 = v24;
  *(v12 + 3) = v23;
  *(v12 + 4) = v17;
  *(v12 + 10) = v25;
  sub_3EC634();
  LOBYTE(v23) = 5;
  sub_C4228(&qword_4F0198, &type metadata accessor for ImpressionMetrics);
  v18 = v21;
  sub_3EE684();
  (*(v15 + 8))(v9, v18);
  sub_14A10(v6, &v12[*(v10 + 36)]);
  sub_C4110(v12, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return sub_C4174(v12);
}

uint64_t sub_C3FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C4024(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0890);
    sub_C4228(a2, type metadata accessor for Category);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C40C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0878);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C4110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategorySelection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C4174(uint64_t a1)
{
  v2 = type metadata accessor for CategorySelection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C41D0(uint64_t a1)
{
  result = sub_C4228(&qword_4F08D0, type metadata accessor for CategorySelection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C4228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C4374(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C4444(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C44F4()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_C467C(319, &qword_4F0940, type metadata accessor for Category, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_C4620();
      if (v2 <= 0x3F)
      {
        sub_C467C(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_C4620()
{
  if (!qword_4F0948)
  {
    sub_8181C();
    v0 = sub_3EBC74();
    if (!v1)
    {
      atomic_store(v0, &qword_4F0948);
    }
  }
}

void sub_C467C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CategorySelection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CategorySelection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_C4834()
{
  result = qword_4F0988;
  if (!qword_4F0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0988);
  }

  return result;
}

unint64_t sub_C488C()
{
  result = qword_4F0990;
  if (!qword_4F0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0990);
  }

  return result;
}

unint64_t sub_C48E4()
{
  result = qword_4F0998;
  if (!qword_4F0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0998);
  }

  return result;
}

uint64_t sub_C4938(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B0988;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

BOOL sub_C4BF8(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_C4C28@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_C4C54@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_C4D44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_F9A8(a1);

  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for Link()
{
  result = qword_4F0A30;
  if (!qword_4F0A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Link.init(id:title:subtitle:artwork:presentation:segue:impressionMetrics:appEntityIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v15 = type metadata accessor for Link();
  sub_FBD0(a7, a9 + v15[7], &qword_4F1D50);
  if ((a8 & 0x100) != 0)
  {
    LOBYTE(a8) = 0;
  }

  sub_FCF8(a7, &qword_4F1D50);
  *(a9 + v15[8]) = a8;
  v16 = a9 + v15[9];
  v17 = *(a10 + 16);
  *v16 = *a10;
  *(v16 + 1) = v17;
  *(v16 + 4) = *(a10 + 32);
  sub_FACC(a11, a9 + v15[10], &unk_4E9170);
  return sub_FACC(a12, a9 + v15[11], &qword_4F09A0);
}

uint64_t Link.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = a1[8];
  if (v8)
  {
    v9 = a1[7];
    v27 = v2;
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[10];
    v24 = a1[9];
    v25 = v9;
    v13 = type metadata accessor for LegacyActionLink();
    sub_FBD0(a1 + v13[8], v7, &qword_4F1D50);
    v26 = *(a1 + v13[9]);
    v14 = type metadata accessor for Link();
    sub_1F958((a1 + 2), &a2[v14[9]]);
    sub_FBD0(a1 + v13[10], &a2[v14[10]], &unk_4E9170);
    v15 = v14[11];
    v16 = sub_3E5764();
    (*(*(v16 - 8) + 56))(&a2[v15], 1, 1, v16);
    *a2 = v10;
    *(a2 + 1) = v11;
    v17 = v24;
    *(a2 + 2) = v25;
    *(a2 + 3) = v8;
    *(a2 + 4) = v17;
    *(a2 + 5) = v12;
    sub_FBD0(v7, &a2[v14[7]], &qword_4F1D50);

    sub_C52B0(a1);
    result = sub_FCF8(v7, &qword_4F1D50);
    a2[v14[8]] = v26;
  }

  else
  {
    v19 = sub_3ECEE4();
    sub_C6E50(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v21 = v20;
    v22 = type metadata accessor for Link();
    *v21 = 0x656C746974;
    v21[1] = 0xE500000000000000;
    v21[2] = v22;
    (*(*(v19 - 8) + 104))(v21, enum case for JSONError.missingProperty(_:), v19);
    swift_willThrow();
    return sub_C52B0(a1);
  }

  return result;
}

uint64_t sub_C52B0(uint64_t a1)
{
  v2 = type metadata accessor for LegacyActionLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C538C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3EBDC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C53C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C66B4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Link.init(deserializing:using:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a2;
  v109 = a1;
  v93 = a3;
  v3 = sub_3EBE74();
  __chkstk_darwin(v3 - 8);
  v100 = &v85[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_3ECE84();
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin(v5);
  v99 = &v85[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v7 - 8);
  v91 = &v85[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v9 - 8);
  v97 = &v85[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v11 - 8);
  v96 = &v85[-v12];
  v103 = type metadata accessor for Link();
  __chkstk_darwin(v103);
  v90 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v92 = &v85[-v15];
  v16 = sub_3EBF94();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v89 = &v85[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v85[-v20];
  v22 = sub_3EBDF4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v98 = &v85[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v88 = &v85[-v26];
  __chkstk_darwin(v27);
  v87 = &v85[-v28];
  __chkstk_darwin(v29);
  v94 = &v85[-v30];
  __chkstk_darwin(v31);
  v33 = &v85[-v32];
  v34 = type metadata accessor for LegacyActionLink();
  __chkstk_darwin(v34 - 8);
  v36 = &v85[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __chkstk_darwin(v37);
  v40 = &v85[-v39];
  v41 = *(v23 + 16);
  v107 = v22;
  v41(v33, v109, v22, v38);
  v105 = v17;
  v106 = v16;
  v42 = *(v17 + 16);
  v42(v21, v108, v16);
  v43 = v104;
  LegacyActionLink.init(deserializing:using:)(v33, v21, v40);
  v95 = v42;
  if (!v43)
  {
    sub_C6B90(v40, v36, type metadata accessor for LegacyActionLink);
    v44 = v92;
    Link.init(from:)(v36, v92);
    (*(v105 + 8))(v108, v106);
    (*(v23 + 8))(v109, v107);
    sub_C52B0(v40);
    return sub_C6B2C(v44, v93);
  }

  v104 = 0;
  v45 = v23;
  v46 = v99;
  sub_3ECE14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
  sub_3EBE94();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3EBE64();
  v117._countAndFlagsBits = 0xD00000000000002ALL;
  v117._object = 0x8000000000427170;
  sub_3EBE54(v117);
  swift_getErrorValue();
  v47 = v115;
  v48 = v116;
  *(&v111 + 1) = v116;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v110);
  (*(*(v48 - 8) + 16))(boxed_opaque_existential_0Tm, v47, v48);
  sub_3EBE34();
  sub_FCF8(&v110, &unk_501090);
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  sub_3EBE54(v118);
  sub_3EBE84();
  v50 = v102;
  sub_3ECB84();

  (*(v101 + 8))(v46, v50);
  v51 = 25705;
  v52 = 0xE200000000000000;
  v53 = v98;
  sub_3EBE04();
  v102 = sub_3EBDC4();
  v55 = v54;
  v58 = *(v45 + 8);
  v56 = (v45 + 8);
  v57 = v58;
  v59 = v107;
  v58(v53, v107);
  if (!v55)
  {
    goto LABEL_9;
  }

  v101 = v55;
  v51 = 0x656C746974;
  v60 = v94;
  sub_3EBE04();
  v61 = sub_3EBDC4();
  v63 = v62;
  v57(v60, v59);
  if (!v63)
  {

    v52 = 0xE500000000000000;
LABEL_9:
    v82 = sub_3ECEE4();
    sub_C6E50(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v83 = v51;
    v83[1] = v52;
    v83[2] = v103;
    (*(*(v82 - 8) + 104))(v83, enum case for JSONError.missingProperty(_:), v82);
    swift_willThrow();
    (*(v105 + 8))(v108, v106);
    return (v57)(v109, v59);
  }

  v64 = v87;
  v99 = v61;
  sub_3EBE04();
  v98 = sub_3EBDC4();
  v94 = v65;
  v57(v64, v59);
  sub_3E7784();
  v92 = v63;
  v66 = v88;
  sub_3EBE04();
  v67 = v89;
  v100 = v56;
  v68 = v108;
  v69 = v106;
  v70 = v95;
  v95(v89, v108, v106);
  sub_C6E50(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  sub_3EC574();
  sub_3EBE04();
  v70(v67, v68, v69);
  sub_4CDFC();
  sub_3EC574();
  LODWORD(v87) = v113;
  v86 = v114;
  sub_3EBE04();
  sub_3EC254();
  v57(v66, v107);
  sub_3EC634();
  sub_3EBE04();
  v95(v67, v68, v69);
  sub_3EC574();
  v71 = sub_3E5764();
  v72 = v91;
  (*(*(v71 - 8) + 56))(v91, 1, 1, v71);
  v73 = v90;
  v74 = v101;
  *v90 = v102;
  v73[1] = v74;
  v75 = v92;
  v73[2] = v99;
  v73[3] = v75;
  v76 = v94;
  v73[4] = v98;
  v73[5] = v76;
  v77 = v103;
  v78 = v96;
  sub_FBD0(v96, v73 + *(v103 + 28), &qword_4F1D50);
  (*(v105 + 8))(v68, v69);
  v57(v109, v107);
  sub_FCF8(v78, &qword_4F1D50);
  v79 = v87;
  if (v86)
  {
    v79 = 0;
  }

  *(v73 + v77[8]) = v79;
  v80 = v73 + v77[9];
  v81 = v111;
  *v80 = v110;
  *(v80 + 1) = v81;
  *(v80 + 4) = v112;
  sub_FACC(v97, v73 + v77[10], &unk_4E9170);
  sub_FACC(v72, v73 + v77[11], &qword_4F09A0);
  return sub_C6B2C(v73, v93);
}

uint64_t Link.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Link();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return sub_C6B90(v1, boxed_opaque_existential_0Tm, type metadata accessor for Link);
}

uint64_t sub_C6190@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return sub_C6B90(v2, boxed_opaque_existential_0Tm, type metadata accessor for Link);
}

uint64_t Link.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-1] - v4;
  v6 = type metadata accessor for Link();
  sub_FBD0(v1 + *(v6 + 44), v5, &qword_4F09A0);
  v7 = sub_3E5764();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    (*(v8 + 32))(a1, v5, v7);
    v11 = 0;
    return (*(v8 + 56))(a1, v11, 1, v7);
  }

  sub_FCF8(v5, &qword_4F09A0);
  sub_FBD0(v1 + *(v6 + 36), v14, &qword_4EDE00);
  if (!v14[3])
  {
    sub_FCF8(v14, &qword_4EDE00);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  type metadata accessor for ChannelPowerSwooshAction(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v11 = 1;
    return (*(v8 + 56))(a1, v11, 1, v7);
  }

  v9 = *(v13 + OBJC_IVAR____TtC8ShelfKit24ChannelPowerSwooshAction_channelAdamId + 8);
  if (!v9)
  {

    goto LABEL_9;
  }

  v10 = *(v13 + OBJC_IVAR____TtC8ShelfKit24ChannelPowerSwooshAction_channelAdamId);
  sub_3E6E44();
  v14[0] = v10;
  v14[1] = v9;
  sub_C6E50(&qword_4E9B88, &type metadata accessor for ChannelEntity);

  sub_3E5754();

  v11 = 0;
  return (*(v8 + 56))(a1, v11, 1, v7);
}

uint64_t sub_C6468(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000004271A0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B63656863 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000004271C0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x80000000004271E0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000427210 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000427230 == a2)
  {

    return 64;
  }

  else
  {
    v5 = sub_3EE804();

    if (v5)
    {
      return 64;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_C66B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  __chkstk_darwin(v5 - 8);
  v7 = &v33[-v6];
  v8 = sub_3ECED4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3EBD54();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    v17 = sub_3ECE94();
    v18 = *(v17 + 16);
    if (v18)
    {
      v35 = v2;
      v36 = a2;
      v37 = a1;
      v38 = _swiftEmptyArrayStorage;
      sub_41A74(0, v18, 0);
      v19 = v38;
      v20 = (v17 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;

        v23 = sub_C6468(v21, v22);
        v38 = v19;
        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          v34 = v23;
          sub_41A74((v24 > 1), v25 + 1, 1);
          LOBYTE(v23) = v34;
          v19 = v38;
        }

        v19[2] = v25 + 1;
        *(v19 + v25 + 32) = v23;
        v20 += 2;
        --v18;
      }

      while (v18);

      a2 = v36;
      a1 = v37;
      v26 = v19[2];
      if (v26)
      {
        goto LABEL_9;
      }
    }

    else
    {

      v19 = _swiftEmptyArrayStorage;
      v26 = _swiftEmptyArrayStorage[2];
      if (v26)
      {
LABEL_9:
        LODWORD(v16) = 0;
        v27 = (v19 + 4);
        do
        {
          v29 = *v27++;
          v28 = v29;
          if ((v29 & ~v16) == 0)
          {
            v28 = 0;
          }

          v16 = v28 | v16;
          --v26;
        }

        while (v26);
        goto LABEL_16;
      }
    }

    v16 = 0;
LABEL_16:

    v30 = sub_3EBF94();
    (*(*(v30 - 8) + 8))(a2, v30);
    v31 = sub_3EBDF4();
    (*(*(v31 - 8) + 8))(a1, v31);
    (*(v9 + 8))(v11, v8);
    return v16;
  }

  sub_FCF8(v7, &qword_4EDC98);
  v12 = sub_3ECEE4();
  sub_C6E50(&qword_4E9AB8, &type metadata accessor for JSONError);
  swift_allocError();
  *v13 = &type metadata for Link.Presentation;
  v13[1] = _swiftEmptyArrayStorage;
  (*(*(v12 - 8) + 104))(v13, enum case for JSONError.malformedDocument(_:), v12);
  swift_willThrow();
  v14 = sub_3EBF94();
  (*(*(v14 - 8) + 8))(a2, v14);
  v15 = sub_3EBDF4();
  (*(*(v15 - 8) + 8))(a1, v15);
  return 0;
}

uint64_t sub_C6B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Link();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C6B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_C6BFC()
{
  result = qword_4F09A8;
  if (!qword_4F09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F09A8);
  }

  return result;
}

unint64_t sub_C6C54()
{
  result = qword_4F09B0;
  if (!qword_4F09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F09B0);
  }

  return result;
}

unint64_t sub_C6CAC()
{
  result = qword_4F09B8;
  if (!qword_4F09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F09B8);
  }

  return result;
}

unint64_t sub_C6D04()
{
  result = qword_4F09C0;
  if (!qword_4F09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F09C0);
  }

  return result;
}

uint64_t sub_C6DA0(uint64_t a1)
{
  result = sub_C6E50(&qword_4F09C8, type metadata accessor for Link);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C6DF8(uint64_t a1)
{
  result = sub_C6E50(&qword_4F09D0, type metadata accessor for Link);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C6E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C6EAC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_C7050(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_C71E0()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_C7318(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
    if (v1 <= 0x3F)
    {
      sub_C30B0();
      if (v2 <= 0x3F)
      {
        sub_C7318(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
        if (v3 <= 0x3F)
        {
          sub_C7318(319, &unk_4F0A40, &type metadata accessor for EntityIdentifier);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_C7318(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t RecentlySearchedHeader.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecentlySearchedHeader() + 20);

  return sub_7EA24(v3, a1);
}

uint64_t type metadata accessor for RecentlySearchedHeader()
{
  result = qword_4F0AE8;
  if (!qword_4F0AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecentlySearchedHeader.init(impressionMetrics:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD000000000000018;
  a2[1] = 0x8000000000427250;
  v3 = a2 + *(type metadata accessor for RecentlySearchedHeader() + 20);

  return sub_14A10(a1, v3);
}

unint64_t sub_C747C(uint64_t a1)
{
  result = sub_C74A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C74A4()
{
  result = qword_4F0A88;
  if (!qword_4F0A88)
  {
    type metadata accessor for RecentlySearchedHeader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0A88);
  }

  return result;
}

uint64_t sub_C7520(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C75F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C76A0()
{
  sub_4D334();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t RoomUber.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RoomUber() + 20);

  return sub_A18FC(v3, a1);
}

uint64_t type metadata accessor for RoomUber()
{
  result = qword_4F0B80;
  if (!qword_4F0B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RoomUber.init(artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_3E5FB4();
  v4 = a2 + *(type metadata accessor for RoomUber() + 20);

  return sub_83F9C(a1, v4);
}

uint64_t static RoomUber.== infix(_:_:)()
{
  if ((sub_3E5FA4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RoomUber();

  return sub_3E7724();
}

uint64_t sub_C7858()
{
  if ((sub_3E5FA4() & 1) == 0)
  {
    return 0;
  }

  return sub_3E7724();
}

uint64_t RoomUber.id.getter()
{
  v1 = sub_3E5FC4();
  v2 = __chkstk_darwin(v1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1, v2);
  sub_C7B48(&qword_4EBA78, &type metadata accessor for UUID);
  return sub_3EE354();
}

uint64_t AMSDialogRequest.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3EC634();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t RoomUber.backgroundArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RoomUber();
  sub_A18FC(v1 + *(v3 + 20), a1);
  v4 = sub_3E7784();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t RoomUber.preferredBackgroundColor.getter()
{
  if (*(v0 + *(type metadata accessor for RoomUber() + 20) + 64) == 255)
  {
    return 0;
  }

  else
  {
    return sub_3E9454();
  }
}

uint64_t sub_C7B48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C7B90(uint64_t a1)
{
  result = sub_C7B48(&qword_4F0B20, type metadata accessor for RoomUber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C7BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_A18FC(v2 + *(a1 + 20), a2);
  v4 = sub_3E7784();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_C7C64(uint64_t a1)
{
  if (*(v1 + *(a1 + 20) + 64) == 255)
  {
    return 0;
  }

  else
  {
    return sub_3E9454();
  }
}

uint64_t sub_C7CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E5FC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3E7784();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_C7DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3E5FC4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3E7784();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_C7EB4()
{
  result = sub_3E5FC4();
  if (v1 <= 0x3F)
  {
    result = sub_3E7784();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchHint()
{
  result = qword_4F0C18;
  if (!qword_4F0C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchHint.init(id:term:query:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v10 = *(a7 + 16);
  *(a9 + 48) = *a7;
  *(a9 + 64) = v10;
  *(a9 + 80) = *(a7 + 32);
  v11 = a9 + *(type metadata accessor for SearchHint() + 32);

  return sub_14A10(a8, v11);
}

uint64_t SearchHint.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a3;
  v56 = a2;
  v4 = sub_3EBF94();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EBDF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  v19 = 0xE200000000000000;
  sub_3EBE04();
  v51 = sub_3EBDC4();
  v21 = v20;
  v22 = v18;
  v23 = *(v7 + 8);
  v23(v22, v6);
  if (v21)
  {
    v50 = v21;
    sub_3EBE04();
    v24 = sub_3EBDC4();
    v26 = v25;
    v23(v15, v6);
    v27 = a1;
    if (v26)
    {
      v49 = v24;
      sub_3EBE04();
      v28 = sub_3EBDC4();
      v47 = v29;
      v48 = v28;
      v23(v12, v6);
      sub_3EBE04();
      v44 = a1;
      v30 = v53;
      v31 = v56;
      sub_3EC254();
      v23(v9, v6);
      sub_3EC634();
      sub_3EBE04();
      v45 = v26;
      v46 = v23;
      v33 = v54;
      v32 = v55;
      (*(v54 + 16))(v52, v31, v55);
      type metadata accessor for SearchHint();
      sub_3EC574();
      (*(v33 + 8))(v31, v32);
      result = v46(v44, v6);
      v35 = v50;
      *v30 = v51;
      v30[1] = v35;
      v36 = v45;
      v30[2] = v49;
      v30[3] = v36;
      v37 = v47;
      v30[4] = v48;
      v30[5] = v37;
      return result;
    }

    v38 = 1836213620;

    v19 = 0xE400000000000000;
  }

  else
  {
    v38 = 25705;
    v27 = a1;
  }

  v39 = sub_3ECEE4();
  sub_C8638(&qword_4E9AB8, &type metadata accessor for JSONError);
  swift_allocError();
  v41 = v40;
  v42 = type metadata accessor for SearchHint();
  *v41 = v38;
  v41[1] = v19;
  v41[2] = v42;
  (*(*(v39 - 8) + 104))(v41, enum case for JSONError.missingProperty(_:), v39);
  swift_willThrow();
  (*(v54 + 8))(v56, v55);
  return (v23)(v27, v6);
}

uint64_t SearchHint.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SearchHint();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);

  return sub_C858C(v1, boxed_opaque_existential_0Tm);
}

uint64_t sub_C858C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C8638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C8680(uint64_t a1)
{
  result = sub_C8638(&qword_4F0BB8, type metadata accessor for SearchHint);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C86D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return sub_C858C(v2, boxed_opaque_existential_0Tm);
}

uint64_t sub_C8724(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C87F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C88A4()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_C30B0();
    if (v1 <= 0x3F)
    {
      sub_4D334();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

ShelfKit::SearchLandingBrick::ArtworkKind_optional __swiftcall SearchLandingBrick.ArtworkKind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_4B0A38;
  v6._object = object;
  v3 = sub_3EE624(v2, v6);

  if (v3 == 1)
  {
    v4.value = ShelfKit_SearchLandingBrick_ArtworkKind_editorial;
  }

  else
  {
    v4.value = ShelfKit_SearchLandingBrick_ArtworkKind_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t SearchLandingBrick.ArtworkKind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6169726F74696465;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_C89E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6169726F74696465;
  }

  else
  {
    v3 = 0x756F72676B636162;
  }

  if (v2)
  {
    v4 = 0xEA0000000000646ELL;
  }

  else
  {
    v4 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v5 = 0x6169726F74696465;
  }

  else
  {
    v5 = 0x756F72676B636162;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006CLL;
  }

  else
  {
    v6 = 0xEA0000000000646ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_C8A98()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_C8B24()
{
  sub_3ED394();
}

Swift::Int sub_C8B9C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_C8C24@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0A38;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_C8C84(uint64_t *a1@<X8>)
{
  v2 = 0x756F72676B636162;
  if (*v1)
  {
    v2 = 0x6169726F74696465;
  }

  v3 = 0xEA0000000000646ELL;
  if (*v1)
  {
    v3 = 0xE90000000000006CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t type metadata accessor for SearchLandingBrick()
{
  result = qword_4F0D00;
  if (!qword_4F0D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchLandingBrick.init(id:title:artwork:artworkKind:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = type metadata accessor for SearchLandingBrick();
  v18 = a9 + v17[8];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  sub_51F9C(v21, v18, &qword_4EDE00);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  sub_FACC(a5, a9 + v17[6], &qword_4F1D50);
  *(a9 + v17[7]) = a6 & 1;
  sub_FCF8(v18, &qword_4F0100);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  sub_51F9C(a7, v18, &qword_4EDE00);
  return sub_FACC(a8, a9 + v17[9], &unk_4E9170);
}

uint64_t SearchLandingBrick.artworkCropCode(layoutIsRightToLeft:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(type metadata accessor for SearchLandingBrick() + 28)))
  {
    v5 = enum case for CropCode.searchEditorial(_:);
    v6 = sub_3E94E4();
    v7 = *(*(v6 - 8) + 104);
    v8 = v6;
    v9 = a2;
    v10 = v5;
  }

  else
  {
    v8 = sub_3E94E4();
    v7 = *(*(v8 - 8) + 104);
    if (a1)
    {
      v11 = &enum case for CropCode.searchBackgroundRTL(_:);
    }

    else
    {
      v11 = &enum case for CropCode.searchBackgroundLTR(_:);
    }

    v10 = *v11;
    v9 = a2;
  }

  return v7(v9, v10, v8);
}

double sub_C912C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_FBD0(v2 + *(a1 + 32), v6, &qword_4F0100);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

double sub_C918C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SearchLandingBrick();
  sub_FBD0(v1 + *(v3 + 32), v6, &qword_4F0100);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t SearchLandingBrick.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SearchLandingBrick();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);

  return sub_C923C(v1, boxed_opaque_existential_0Tm);
}

uint64_t sub_C923C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLandingBrick();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C92A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return sub_C923C(v2, boxed_opaque_existential_0Tm);
}

uint64_t sub_C92EC()
{
  sub_3ED394();
}

uint64_t sub_C93DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_CA79C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_C940C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE700000000000000;
  v6 = 0x6B726F77747261;
  v7 = 0xE500000000000000;
  v8 = 0x6575676573;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000000422950;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (v2 != 1)
  {
    v10 = 0x4B6B726F77747261;
    v9 = 0xEB00000000646E69;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_C94C4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6B726F77747261;
  v4 = 0x6575676573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x4B6B726F77747261;
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

uint64_t sub_C9578@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CA79C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C95A0(uint64_t a1)
{
  v2 = sub_C9920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C95DC(uint64_t a1)
{
  v2 = sub_C9920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchLandingBrick.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0C60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_C9920();
  sub_3EEA14();
  v10[15] = 0;
  sub_3EE734();
  if (!v2)
  {
    v10[14] = 1;
    sub_3EE734();
    v10[13] = *(v3 + *(type metadata accessor for SearchLandingBrick() + 28));
    v10[12] = 2;
    sub_C9974();
    sub_3EE764();
    v10[11] = 3;
    sub_3E7784();
    sub_CA0D4(&qword_4F00E0, &type metadata accessor for ArtworkModel);
    sub_3EE724();
    v10[10] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0100);
    sub_B7578(&qword_4F0C78);
    sub_3EE764();
    v10[9] = 5;
    sub_3EC634();
    sub_CA0D4(&qword_4F0138, &type metadata accessor for ImpressionMetrics);
    sub_3EE724();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_C9920()
{
  result = qword_4F0C68;
  if (!qword_4F0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0C68);
  }

  return result;
}

unint64_t sub_C9974()
{
  result = qword_4F0C70;
  if (!qword_4F0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0C70);
  }

  return result;
}

uint64_t SearchLandingBrick.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v3 - 8);
  v5 = v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0C80);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v23 - v9;
  v11 = type metadata accessor for SearchLandingBrick();
  __chkstk_darwin(v11);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v13 + *(v14 + 32);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v29 = v15;
  sub_51F9C(v30, v15, &qword_4EDE00);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_C9920();
  v26 = v10;
  v16 = v28;
  sub_3EE9F4();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_FCF8(v29, &qword_4F0100);
  }

  else
  {
    v17 = v8;
    v18 = v25;
    LOBYTE(v30[0]) = 0;
    *v13 = sub_3EE694();
    v13[1] = v19;
    v28 = v19;
    LOBYTE(v30[0]) = 1;
    v13[2] = sub_3EE694();
    v13[3] = v20;
    v32 = 2;
    sub_C9F74();
    v23[1] = 0;
    sub_3EE6C4();
    v21 = v29;
    *(v13 + *(v11 + 28)) = v30[0];
    sub_3E7784();
    LOBYTE(v30[0]) = 3;
    sub_CA0D4(&qword_4F0148, &type metadata accessor for ArtworkModel);
    v23[0] = v11;
    sub_3EE684();
    sub_FACC(v17, v13 + *(v23[0] + 24), &qword_4F1D50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0100);
    v32 = 4;
    sub_B7578(&qword_4F0C90);
    sub_3EE6C4();
    sub_51F9C(v30, v21, &qword_4F0100);
    sub_3EC634();
    LOBYTE(v30[0]) = 5;
    sub_CA0D4(&qword_4F0198, &type metadata accessor for ImpressionMetrics);
    sub_3EE684();
    (*(v18 + 8))(v26, v27);
    sub_FACC(v5, v13 + *(v23[0] + 36), &unk_4E9170);
    sub_C923C(v13, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_C9FC8(v13);
  }
}

unint64_t sub_C9F74()
{
  result = qword_4F0C88;
  if (!qword_4F0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0C88);
  }

  return result;
}

uint64_t sub_C9FC8(uint64_t a1)
{
  v2 = type metadata accessor for SearchLandingBrick();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_CA028()
{
  result = qword_4F0C98;
  if (!qword_4F0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0C98);
  }

  return result;
}

uint64_t sub_CA07C(uint64_t a1)
{
  result = sub_CA0D4(&qword_4F0CA0, type metadata accessor for SearchLandingBrick);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_CA0D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CA194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_3DFDB4(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

double sub_CA1DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchLandingBrick();
  sub_FBD0(a1 + *(v4 + 32), v7, &qword_4F0100);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_CA244(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SearchLandingBrick() + 32);

  return sub_BB5F0(a1, v3);
}

uint64_t sub_CA2A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_CA3F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_CA52C()
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_CA618();
    if (v1 <= 0x3F)
    {
      sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_CA618()
{
  if (!qword_4F0D10)
  {
    sub_8181C();
    v0 = sub_3EC664();
    if (!v1)
    {
      atomic_store(v0, &qword_4F0D10);
    }
  }
}

unint64_t sub_CA698()
{
  result = qword_4F0D50;
  if (!qword_4F0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0D50);
  }

  return result;
}

unint64_t sub_CA6F0()
{
  result = qword_4F0D58;
  if (!qword_4F0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0D58);
  }

  return result;
}

unint64_t sub_CA748()
{
  result = qword_4F0D60;
  if (!qword_4F0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0D60);
  }

  return result;
}

uint64_t sub_CA79C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B0A88;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_CA7E8()
{
  result = qword_4F0D68;
  if (!qword_4F0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0D68);
  }

  return result;
}

uint64_t type metadata accessor for ShowHero()
{
  result = qword_4F0DD8;
  if (!qword_4F0DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowHero.genreName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowHero() + 48));

  return v1;
}

uint64_t sub_CAA04()
{
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  return sub_3ECAF4();
}

uint64_t sub_CAA5C(uint64_t a1)
{
  sub_FBD0(a1, v3, &qword_4EDE00);
  sub_FBD0(v3, &v2, &qword_4EDE00);
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  return sub_FCF8(v3, &qword_4EDE00);
}

uint64_t ShowHero.playEpisodeAction.getter()
{
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECAF4();
  return v1;
}

uint64_t sub_CAB54@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  result = sub_3ECAF4();
  *a1 = v3;
  return result;
}

uint64_t sub_CABBC()
{
  type metadata accessor for ShowHero();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  return sub_3ECB04();
}

uint64_t ShowHero.playTrailerAction.getter()
{
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECAF4();
  return v1;
}

uint64_t sub_CAC80@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  result = sub_3ECAF4();
  *a1 = v3;
  return result;
}

uint64_t sub_CACE8()
{
  type metadata accessor for ShowHero();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  return sub_3ECB04();
}

uint64_t ShowHero.contextAction.getter()
{
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECAF4();
  return v1;
}

uint64_t sub_CADAC@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  result = sub_3ECAF4();
  *a1 = v3;
  return result;
}

uint64_t sub_CAE14()
{
  type metadata accessor for ShowHero();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  return sub_3ECB04();
}

uint64_t ShowHero.impressionMetrics.getter()
{
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  return sub_3ECAF4();
}

uint64_t sub_CAED8()
{
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  return sub_3ECAF4();
}

uint64_t sub_CAF30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_FBD0(a1, &v9 - v6, &unk_4E9170);
  sub_FBD0(v7, v4, &unk_4E9170);
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  return sub_FCF8(v7, &unk_4E9170);
}

uint64_t ShowHero.init(id:adamID:title:description:artwork:uberArtwork:rating:ratingCount:genreName:contentRating:clickAction:playEpisodeAction:playTrailerAction:contextAction:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, int a10, char a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v60 = a8;
  v61 = a7;
  v46 = a6;
  v45 = a5;
  v43 = a4;
  v42 = a3;
  v41 = a2;
  v40 = a1;
  v57 = a20;
  v58 = a21;
  v55 = a18;
  v56 = a19;
  v59 = a17;
  LODWORD(v54) = a16;
  v52 = a14;
  v53 = a15;
  v51 = a13;
  v50 = a12;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v22 - 8);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v39 - v26;
  v28 = type metadata accessor for ShowHero();
  v44 = v28[14];
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  sub_FBD0(v63, v62, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v63, &qword_4EDE00);
  v47 = v28[15];
  *&v63[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  *&v63[0] = 0;
  sub_3ECAE4();
  v49 = v28[17];
  *&v63[0] = 0;
  sub_3ECAE4();
  v48 = v28[18];
  v29 = sub_3EC634();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  sub_FBD0(v27, v24, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v27, &unk_4E9170);
  v30 = v41;
  *a9 = v40;
  a9[1] = v30;
  v31 = v43;
  a9[2] = v42;
  a9[3] = v31;
  v32 = v46;
  a9[4] = v45;
  a9[5] = v32;
  sub_FBD0(v61, a9 + v28[8], &qword_4F1D50);
  sub_FBD0(v60, a9 + v28[9], &qword_4F1D50);
  v33 = a9 + v28[10];
  *v33 = a10;
  v33[4] = a11 & 1;
  v34 = a9 + v28[11];
  *v34 = v50;
  v34[8] = v51 & 1;
  v35 = (a9 + v28[12]);
  v36 = v53;
  *v35 = v52;
  v35[1] = v36;
  *(a9 + v28[13]) = v54;
  sub_FBD0(v59, v63, &qword_4EDE00);
  sub_FBD0(v63, v62, &qword_4EDE00);
  v54 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  sub_FCF8(v63, &qword_4EDE00);
  *&v63[0] = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  *&v63[0] = v56;

  sub_3ECB04();
  *&v63[0] = v57;

  sub_3ECB04();
  v37 = v58;
  sub_FBD0(v58, v27, &unk_4E9170);
  sub_FBD0(v27, v24, &unk_4E9170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();

  sub_FCF8(v37, &unk_4E9170);
  sub_FCF8(v59, &qword_4EDE00);
  sub_FCF8(v60, &qword_4F1D50);
  sub_FCF8(v61, &qword_4F1D50);
  return sub_FCF8(v27, &unk_4E9170);
}

uint64_t _s8ShelfKit8ShowHeroV11clickAction9JetEngine0F5Model_pSgvg_0()
{
  type metadata accessor for ShowHero();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  return sub_3ECAF4();
}

uint64_t ShowHero.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v187 = a2;
  v189 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v4 - 8);
  v167 = v148 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v6 - 8);
  v173 = v148 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v8 - 8);
  v162 = v148 - v9;
  v10 = sub_3EBF94();
  v185 = *(v10 - 8);
  v186 = v10;
  __chkstk_darwin(v10);
  v166 = v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v11;
  __chkstk_darwin(v12);
  v175 = v148 - v13;
  v193 = sub_3EBDF4();
  v188 = *(v193 - 8);
  __chkstk_darwin(v193);
  v165 = v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v164 = v148 - v16;
  __chkstk_darwin(v17);
  v178 = v148 - v18;
  __chkstk_darwin(v19);
  v168 = v148 - v20;
  __chkstk_darwin(v21);
  v170 = v148 - v22;
  __chkstk_darwin(v23);
  v177 = v148 - v24;
  v160 = v25;
  __chkstk_darwin(v26);
  v28 = v148 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v29 - 8);
  v31 = v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = v148 - v33;
  v35 = type metadata accessor for ShowHero();
  v36 = a3 + v35[14];
  v192 = 0;
  memset(v191, 0, sizeof(v191));
  sub_FBD0(v191, v190, &qword_4EDE00);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  v183 = v36;
  v161 = v37;
  sub_3ECAE4();
  sub_FCF8(v191, &qword_4EDE00);
  v38 = a3 + v35[15];
  *&v191[0] = 0;
  v39 = type metadata accessor for Action();
  v182 = v38;
  sub_3ECAE4();
  v40 = a3 + v35[16];
  *&v191[0] = 0;
  v181 = v40;
  sub_3ECAE4();
  v41 = a3 + v35[17];
  *&v191[0] = 0;
  v179 = v41;
  v172 = v39;
  sub_3ECAE4();
  v42 = v35[18];
  v43 = sub_3EC634();
  (*(*(v43 - 8) + 56))(v34, 1, 1, v43);
  sub_FBD0(v34, v31, &unk_4E9170);
  v184 = a3;
  v180 = v42;
  v163 = v43;
  sub_3ECAE4();
  v44 = v34;
  v45 = v189;
  sub_FCF8(v44, &unk_4E9170);
  sub_3EBE04();
  v46 = sub_3EBDC4();
  v48 = v47;
  v50 = v188 + 8;
  v49 = *(v188 + 8);
  v51 = v28;
  v52 = v193;
  v49(v51, v193);
  if (!v48)
  {
    v59 = sub_3ECEE4();
    sub_CD050(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v61 = v60;
    *v60 = 25705;
    v60[1] = 0xE200000000000000;
    v60[2] = v35;
LABEL_7:
    (*(*(v59 - 8) + 104))(v61, enum case for JSONError.missingProperty(_:), v59);
    swift_willThrow();
    (*(v185 + 8))(v187, v186);
    v49(v45, v52);
LABEL_8:
    v63 = v184;
    v64 = v179;
    goto LABEL_9;
  }

  v159 = v46;
  v174 = v35;
  v53 = v177;
  sub_3EBE04();
  sub_3EBDC4();
  if (!v54)
  {
    v49(v53, v52);

    v59 = sub_3ECEE4();
    sub_CD050(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v61 = v62;
    *v62 = 0x64496D616461;
    v62[1] = 0xE600000000000000;
    v62[2] = v174;
    goto LABEL_7;
  }

  v55 = v171;
  v56 = sub_3E9494();
  if (v55)
  {

    v57 = sub_3E9484();

    v58 = v49;
    v49(v53, v52);
    v157 = 0;
  }

  else
  {
    v57 = v56;
    v157 = 0;
    v58 = v49;
    v49(v53, v52);
  }

  v66 = v170;
  sub_3EBE04();
  v67 = v45;
  v68 = sub_3EBDC4();
  v70 = v69;
  v58(v66, v193);
  if (!v70)
  {

    v144 = sub_3ECEE4();
    sub_CD050(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v145 = 0x656C746974;
    v145[1] = 0xE500000000000000;
    v145[2] = v174;
    (*(*(v144 - 8) + 104))(v145, enum case for JSONError.missingProperty(_:), v144);
    swift_willThrow();
    (*(v185 + 8))(v187, v186);
    v58(v67, v193);
    goto LABEL_8;
  }

  v71 = v168;
  sub_3EBE04();
  sub_3EBDC4();
  v72 = v58;
  v74 = v73;
  v169 = v72;
  v72(v71, v193);
  if (!v74)
  {

    v146 = sub_3ECEE4();
    sub_CD050(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v147 = 0x7470697263736564;
    v147[1] = 0xEB000000006E6F69;
    v147[2] = v174;
    (*(*(v146 - 8) + 104))(v147, enum case for JSONError.missingProperty(_:), v146);
    swift_willThrow();
    (*(v185 + 8))(v187, v186);
    v169(v189, v193);
    goto LABEL_8;
  }

  v75 = v184;
  *v184 = v159;
  v75[1] = v48;
  v153 = v48;
  v75[2] = v57;
  v75[3] = v68;
  v152 = v70;
  v75[4] = v70;
  v76 = sub_3E9A64();
  sub_3E9A34();
  sub_3E9A24();
  v77 = objc_allocWithZone(v76);
  v151 = sub_3E9A84();
  v75[5] = v151;
  sub_3E7784();
  v78 = v178;
  sub_3EBE04();
  v79 = v185 + 16;
  v177 = *(v185 + 16);
  v80 = v175;
  (v177)(v175, v187, v186);
  v171 = v79;
  v81 = v174[8];
  sub_CD050(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  v150 = v81;
  sub_3EC574();
  sub_3EBE04();
  (v177)(v80, v187, v186);
  v82 = v174;
  v149 = v174[9];
  sub_3EC574();
  sub_3EBE04();
  v83 = sub_3EBD64();
  v84 = v193;
  v85 = v169;
  v169(v78, v193);
  v86 = v85;
  v87 = v75 + v82[10];
  *v87 = v83;
  v87[4] = BYTE4(v83) & 1;
  sub_3EBE04();
  v88 = sub_3EBD44();
  LOBYTE(v85) = v89;
  v86(v78, v84);
  v90 = v174;
  v91 = v75 + v174[11];
  *v91 = v88;
  v91[8] = v85 & 1;
  sub_3EBE04();
  v92 = sub_3EBDC4();
  v94 = v93;
  v86(v78, v84);
  v95 = (v75 + v90[12]);
  *v95 = v92;
  v95[1] = v94;
  v148[1] = v94;
  sub_3EBE04();
  v96 = v175;
  v97 = v187;
  v98 = v177;
  (v177)(v175, v187, v186);
  sub_CCCD8();
  sub_3EC574();
  *(v75 + v90[13]) = v191[0];
  sub_3EBE04();
  v99 = v188;
  v100 = *(v188 + 16);
  v155 = v188 + 16;
  v156 = v100;
  v101 = v164;
  v100(v164, v78, v193);
  v102 = v186;
  v98(v96, v97, v186);
  v103 = *(v99 + 80);
  v104 = (v103 + 16) & ~v103;
  v105 = v185;
  v106 = *(v185 + 80);
  v174 = v104;
  v107 = (v160 + v106 + v104) & ~v106;
  v159 = v103 | v106;
  v154 = v107;
  v108 = swift_allocObject();
  v109 = *(v99 + 32);
  v188 = v99 + 32;
  v160 = v109;
  v110 = v108 + v104;
  v111 = v101;
  v112 = v101;
  v113 = v193;
  v109(v110, v111, v193);
  v158 = v50;
  v114 = *(v105 + 32);
  v168 = (v105 + 32);
  v170 = v114;
  v115 = v175;
  v116 = v102;
  (v114)(v108 + v107, v175, v102);
  v117 = v162;
  sub_3ECB34();
  v118 = v178;
  v169(v178, v113);
  sub_51F9C(v117, v183, &qword_4EED88);
  sub_3EBE04();
  v119 = v156;
  v156(v112, v118, v113);
  v120 = v115;
  v121 = v187;
  (v177)(v115, v187, v116);
  v122 = v154;
  v123 = swift_allocObject();
  v160(v174 + v123, v112, v113);
  (v170)(v123 + v122, v120, v116);
  v124 = v173;
  sub_3ECB34();
  v125 = v178;
  v169(v178, v113);
  sub_51F9C(v124, v182, &qword_4EED80);
  sub_3EBE04();
  v126 = v112;
  v119(v112, v125, v113);
  v127 = v175;
  v128 = v186;
  (v177)(v175, v121, v186);
  v129 = v154;
  v130 = swift_allocObject();
  v131 = v126;
  v160(v174 + v130, v126, v113);
  v132 = v127;
  (v170)(v130 + v129, v127, v128);
  v133 = v173;
  sub_3ECB34();
  v134 = v178;
  v169(v178, v113);
  sub_51F9C(v133, v181, &qword_4EED80);
  sub_3EBE04();
  v156(v131, v134, v113);
  v135 = v187;
  (v177)(v132, v187, v128);
  v136 = swift_allocObject();
  v137 = v128;
  v160(v174 + v136, v131, v113);
  (v170)(v136 + v129, v132, v128);
  v138 = v173;
  sub_3ECB34();
  v139 = v113;
  v169(v178, v113);
  v140 = v135;
  v64 = v179;
  sub_51F9C(v138, v179, &qword_4EED80);
  v141 = v189;
  sub_3EBE04();
  (v177)(v166, v140, v137);
  v142 = v167;
  v143 = v157;
  sub_3ECB14();
  if (!v143)
  {
    (*(v185 + 8))(v140, v137);
    v169(v141, v139);
    return sub_51F9C(v142, v184 + v180, &qword_4EED90);
  }

  (*(v185 + 8))(v140, v137);
  v169(v141, v139);

  v63 = v184;
  sub_FCF8(v184 + v150, &qword_4F1D50);
  sub_FCF8(v63 + v149, &qword_4F1D50);

LABEL_9:
  sub_FCF8(v183, &qword_4EED88);
  sub_FCF8(v182, &qword_4EED80);
  sub_FCF8(v181, &qword_4EED80);
  sub_FCF8(v64, &qword_4EED80);
  return sub_FCF8(v63 + v180, &qword_4EED90);
}

unint64_t sub_CCCD8()
{
  result = qword_4F0D70;
  if (!qword_4F0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0D70);
  }

  return result;
}

uint64_t ShowHero.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for ShowHero();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);

  return sub_CCFA4(v1, boxed_opaque_existential_0Tm);
}

uint64_t sub_CCDDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return sub_CCFA4(v2, boxed_opaque_existential_0Tm);
}

uint64_t ShowHero.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  sub_3E6D44();
  sub_17A28();
  sub_3EE1F4();
  sub_CD050(&qword_4E9B80, &type metadata accessor for ShowEntity);
  sub_3E5754();
  v2 = sub_3E5764();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t ShowHero.isExplicit.getter()
{
  if (*(v0 + *(type metadata accessor for ShowHero() + 52)) == 2)
  {
    v1 = 0;
  }

  else
  {
    v2 = sub_3E79D4();
    v4 = v3;
    v1 = 1;
    if (v2 != sub_3E79D4() || v4 != v5)
    {
      v1 = sub_3EE804();
    }
  }

  return v1 & 1;
}

uint64_t sub_CCFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowHero();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CD050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CD098(uint64_t a1)
{
  result = sub_CD050(&qword_4F0D78, type metadata accessor for ShowHero);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_CD12C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[15];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[18];

  return v16(v17, a2, v15);
}

uint64_t sub_CD324(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[18];

  return v16(v17, a2, a2, v15);
}

void sub_CD508()
{
  sub_3E9A64();
  if (v0 <= 0x3F)
  {
    sub_CD790(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_5FBE4(319, &qword_4F0DE8);
      if (v2 <= 0x3F)
      {
        sub_5FBE4(319, &qword_4F0DF0);
        if (v3 <= 0x3F)
        {
          sub_5FBE4(319, &qword_4E9978);
          if (v4 <= 0x3F)
          {
            sub_5FBE4(319, &qword_4F0350);
            if (v5 <= 0x3F)
            {
              sub_CD72C();
              if (v6 <= 0x3F)
              {
                sub_CD790(319, &qword_4F0E00, type metadata accessor for Action, &type metadata accessor for Lazy);
                if (v7 <= 0x3F)
                {
                  sub_CD790(319, &unk_4F0E08, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Lazy);
                  if (v8 <= 0x3F)
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

void sub_CD72C()
{
  if (!qword_4F0DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_502170);
    v0 = sub_3ECB24();
    if (!v1)
    {
      atomic_store(v0, &qword_4F0DF8);
    }
  }
}

void sub_CD790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for ShowLockup()
{
  result = qword_4F0ED0;
  if (!qword_4F0ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowLockup.ordinal.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowLockup() + 28));

  return v1;
}

uint64_t ShowLockup.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowLockup() + 32));

  return v1;
}

uint64_t ShowLockup.creators.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowLockup() + 36));

  return v1;
}

uint64_t ShowLockup.titleOverride.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowLockup() + 40));

  return v1;
}

uint64_t ShowLockup.subtitleOverride.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowLockup() + 44));

  return v1;
}

uint64_t ShowLockup.segue.getter()
{
  type metadata accessor for ShowLockup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  return sub_3ECAF4();
}

uint64_t sub_CDA58()
{
  type metadata accessor for ShowLockup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  return sub_3ECAF4();
}

uint64_t sub_CDAB0(uint64_t a1)
{
  sub_FBD0(a1, v3, &qword_4EDE00);
  sub_FBD0(v3, &v2, &qword_4EDE00);
  type metadata accessor for ShowLockup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  return sub_FCF8(v3, &qword_4EDE00);
}

uint64_t ShowLockup.contextAction.getter()
{
  type metadata accessor for ShowLockup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECAF4();
  return v1;
}

uint64_t sub_CDBA8@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShowLockup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  result = sub_3ECAF4();
  *a1 = v3;
  return result;
}

uint64_t sub_CDC10()
{
  type metadata accessor for ShowLockup();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  return sub_3ECB04();
}

uint64_t ShowLockup.impressionMetrics.getter()
{
  type metadata accessor for ShowLockup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  return sub_3ECAF4();
}

uint64_t sub_CDCD4()
{
  type metadata accessor for ShowLockup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  return sub_3ECAF4();
}

uint64_t sub_CDD2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_FBD0(a1, &v9 - v6, &unk_4E9170);
  sub_FBD0(v7, v4, &unk_4E9170);
  type metadata accessor for ShowLockup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  return sub_FCF8(v7, &unk_4E9170);
}

uint64_t ShowLockup.init(id:contentReference:artwork:ordinal:name:creators:titleOverride:subtitleOverride:contentRating:segue:contextAction:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v64 = a8;
  v74 = a7;
  v72 = a6;
  v70 = a4;
  v71 = a5;
  v54 = a3;
  v53 = a2;
  v52 = a1;
  v68 = a21;
  v69 = a22;
  v73 = a20;
  v67 = a19;
  v65 = a17;
  v66 = a18;
  v63 = a16;
  v62 = a15;
  v61 = a14;
  v60 = a13;
  v59 = a12;
  v58 = a11;
  v56 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v23 - 8);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v48 - v27;
  v29 = type metadata accessor for ShowLockup();
  v51 = v29[13];
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  sub_FBD0(v76, v75, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v76, &qword_4EDE00);
  v55 = v29[14];
  *&v76[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  v57 = v29[15];
  v30 = sub_3EC634();
  v48 = *(v30 - 8);
  v50 = *(v48 + 56);
  v50(v28, 1, 1, v30);
  v49 = v25;
  sub_FBD0(v28, v25, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v28, &unk_4E9170);
  v31 = v53;
  *a9 = v52;
  *(a9 + 8) = v31;
  *(a9 + 16) = v54;
  v32 = v70;
  v33 = v71;
  *(a9 + 24) = v70;
  *(a9 + 32) = v33;
  v34 = v72;
  *(a9 + 40) = v72;
  sub_CFA78(v74, a9 + v29[6], &type metadata accessor for ArtworkModel);
  v35 = (a9 + v29[7]);
  v36 = v56;
  *v35 = v64;
  v35[1] = v36;
  v37 = (a9 + v29[8]);
  v38 = v59;
  *v37 = v58;
  v37[1] = v38;
  v39 = (a9 + v29[9]);
  v40 = v61;
  *v39 = v60;
  v39[1] = v40;
  v41 = (a9 + v29[10]);
  v42 = v63;
  *v41 = v62;
  v41[1] = v42;
  v43 = (a9 + v29[11]);
  v44 = v66;
  *v43 = v65;
  v43[1] = v44;
  *(a9 + v29[12]) = v67;
  sub_FBD0(v73, v76, &qword_4EDE00);
  sub_FBD0(v76, v75, &qword_4EDE00);
  sub_3DE90(v32, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  sub_FCF8(v76, &qword_4EDE00);
  *&v76[0] = v68;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  v45 = v48;
  v46 = v69;
  (*(v48 + 16))(v28, v69, v30);
  v50(v28, 0, 1, v30);
  sub_FBD0(v28, v49, &unk_4E9170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();

  sub_3DEF8(v70, v71, v72);
  (*(v45 + 8))(v46, v30);
  sub_FCF8(v73, &qword_4EDE00);
  sub_86F48(v74);
  return sub_FCF8(v28, &unk_4E9170);
}

uint64_t ShowLockup.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v161 = a2;
  v168 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v4 - 8);
  v140 = &v130 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v6 - 8);
  v139 = &v130 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v8 - 8);
  v137 = &v130 - v9;
  v10 = sub_3EBF94();
  v162 = *(v10 - 8);
  v163 = v10;
  __chkstk_darwin(v10);
  v138 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v143 = &v130 - v13;
  v141 = v14;
  __chkstk_darwin(v15);
  v155 = &v130 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v17 - 8);
  v153 = &v130 - v18;
  v152 = sub_3E7784();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_3EBDF4();
  v160 = *(v164 - 8);
  __chkstk_darwin(v164);
  v136 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v145 = &v130 - v22;
  __chkstk_darwin(v23);
  v142 = (&v130 - v24);
  __chkstk_darwin(v25);
  v147 = &v130 - v26;
  __chkstk_darwin(v27);
  v154 = &v130 - v28;
  v132 = v29;
  __chkstk_darwin(v30);
  v32 = &v130 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v33 - 8);
  v35 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v130 - v37;
  v39 = type metadata accessor for ShowLockup();
  v40 = a3 + v39[13];
  v167 = 0;
  memset(v166, 0, sizeof(v166));
  sub_FBD0(v166, v165, &qword_4EDE00);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  v158 = v40;
  v133 = v41;
  sub_3ECAE4();
  sub_FCF8(v166, &qword_4EDE00);
  v42 = a3 + v39[14];
  *&v166[0] = 0;
  v43 = type metadata accessor for Action();
  v156 = v42;
  v134 = v43;
  sub_3ECAE4();
  v44 = v39[15];
  v45 = sub_3EC634();
  (*(*(v45 - 8) + 56))(v38, 1, 1, v45);
  sub_FBD0(v38, v35, &unk_4E9170);
  v159 = a3;
  v157 = v44;
  v135 = v45;
  sub_3ECAE4();
  sub_FCF8(v38, &unk_4E9170);
  sub_3EBE04();
  v46 = sub_3EBDC4();
  v48 = v47;
  v49 = *(v160 + 8);
  v50 = v32;
  v51 = v164;
  v49(v50, v164);
  if (!v48)
  {
    v58 = sub_3ECEE4();
    sub_CFB28(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v59 = 25705;
    v59[1] = 0xE200000000000000;
    v59[2] = v39;
    (*(*(v58 - 8) + 104))(v59, enum case for JSONError.missingProperty(_:), v58);
    swift_willThrow();
    (*(v162 + 8))(v161, v163);
    v49(v168, v51);
    goto LABEL_9;
  }

  v146 = v48;
  v150 = v49;
  v148 = v39;
  sub_3EBE04();
  v52 = v161;
  v53 = *(v162 + 16);
  v53(v155, v161, v163);
  sub_CFB28(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  v54 = v153;
  v55 = v152;
  sub_3EC574();
  if ((*(v151 + 48))(v54, 1, v55) == 1)
  {

    sub_FCF8(v54, &qword_4F1D50);
    v56 = sub_3ECEE4();
    sub_CFB28(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v57 = 0x6B726F77747261;
    v57[1] = 0xE700000000000000;
    v57[2] = v148;
    (*(*(v56 - 8) + 104))(v57, enum case for JSONError.missingProperty(_:), v56);
    swift_willThrow();
    (*(v162 + 8))(v52, v163);
    v150(v168, v164);
LABEL_9:
    v68 = v159;
    goto LABEL_10;
  }

  v60 = v149;
  sub_83F9C(v54, v149);
  v61 = v147;
  sub_3EBE04();
  v62 = sub_3EBDC4();
  v64 = v63;
  v65 = v61;
  v66 = v164;
  v67 = v150;
  v150(v65, v164);
  if (!v64)
  {

    v78 = sub_3ECEE4();
    sub_CFB28(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v79 = 1701667182;
    v80 = v148;
    v79[1] = 0xE400000000000000;
    v79[2] = v80;
    (*(*(v78 - 8) + 104))(v79, enum case for JSONError.missingProperty(_:), v78);
    swift_willThrow();
    (*(v162 + 8))(v161, v163);
    v67(v168, v66);
    sub_86F48(v60);
    goto LABEL_9;
  }

  v152 = v62;
  v153 = v64;
  v68 = v159;
  v69 = v146;
  *v159 = v46;
  *(v68 + 8) = v69;
  v70 = v142;
  sub_3EBE04();
  v71 = v143;
  v72 = v163;
  v53(v143, v161, v163);
  v73 = v144;
  v74 = sub_3DDFDC(v70, v71);
  if (v73)
  {

    (*(v162 + 8))(v161, v72);
    v150(v168, v164);
    sub_86F48(v149);

LABEL_10:
    v81 = v156;
    goto LABEL_11;
  }

  *(v68 + 16) = v74;
  *(v68 + 24) = v75;
  *(v68 + 32) = v76;
  *(v68 + 40) = v77;
  sub_CFA78(v149, v68 + v148[6], &type metadata accessor for ArtworkModel);
  v83 = v154;
  v131 = v53;
  sub_3EBE04();
  v84 = sub_3EBDC4();
  v86 = v85;
  v87 = v150;
  v150(v83, v164);
  v88 = v148;
  v89 = (v68 + v148[7]);
  *v89 = v84;
  v89[1] = v86;
  v90 = (v68 + v88[8]);
  v91 = v153;
  *v90 = v152;
  v90[1] = v91;
  sub_3EBE04();
  v153 = sub_3EBDC4();
  v93 = v92;
  v94 = v164;
  v95 = v87;
  v87(v83, v164);
  v96 = v148;
  v97 = (v68 + v148[9]);
  *v97 = v153;
  v97[1] = v93;
  sub_3EBE04();
  v153 = sub_3EBDC4();
  v99 = v98;
  v95(v83, v94);
  v100 = (v68 + v96[10]);
  *v100 = v153;
  v100[1] = v99;
  sub_3EBE04();
  v101 = sub_3EBDC4();
  v103 = v102;
  v95(v83, v164);
  v104 = (v68 + v148[11]);
  *v104 = v101;
  v104[1] = v103;
  sub_3EBE04();
  v153 = 0;
  v105 = v161;
  v106 = v131;
  v131(v155, v161, v163);
  sub_CCCD8();
  sub_3EC574();
  *(v68 + v148[12]) = v166[0];
  sub_3EBE04();
  v107 = v160;
  v151 = *(v160 + 16);
  v152 = v160 + 16;
  v108 = v164;
  (v151)(v145, v83, v164);
  v106(v155, v105, v163);
  v109 = *(v107 + 80);
  v110 = (v109 + 16) & ~v109;
  v111 = v162;
  v112 = *(v162 + 80);
  v143 = v110;
  v147 = (v109 | v112);
  v113 = (v132 + v112 + v110) & ~v112;
  v114 = swift_allocObject();
  v115 = *(v107 + 32);
  v160 = v107 + 32;
  v144 = v115;
  v116 = v108;
  v115(v114 + v110, v145, v108);
  v142 = *(v111 + 32);
  v117 = v113;
  v142(v114 + v113, v155, v163);
  v118 = v137;
  sub_3ECB34();
  v150(v83, v116);
  sub_51F9C(v118, v158, &qword_4EED88);
  sub_3EBE04();
  v119 = v145;
  (v151)(v145, v83, v116);
  v120 = v155;
  v131(v155, v161, v163);
  v121 = swift_allocObject();
  v144(&v143[v121], v119, v116);
  v122 = v121 + v117;
  v123 = v161;
  v142(v122, v120, v163);
  v124 = v139;
  v125 = v163;
  sub_3ECB34();
  v126 = v83;
  v127 = v150;
  v150(v126, v116);
  v81 = v156;
  sub_51F9C(v124, v156, &qword_4EED80);
  sub_3EBE04();
  v131(v138, v123, v125);
  v128 = v140;
  v129 = v153;
  sub_3ECB14();
  if (!v129)
  {
    (*(v162 + 8))(v123, v125);
    v127(v168, v164);
    sub_86F48(v149);
    return sub_51F9C(v128, v159 + v157, &qword_4EED90);
  }

  (*(v162 + 8))(v123, v125);
  v127(v168, v164);
  sub_86F48(v149);

  v68 = v159;
  sub_3DEF8(*(v159 + 24), *(v159 + 32), *(v159 + 40));
  sub_86F48(v68 + v148[6]);

LABEL_11:
  sub_FCF8(v158, &qword_4EED88);
  sub_FCF8(v81, &qword_4EED80);
  return sub_FCF8(v68 + v157, &qword_4EED90);
}

uint64_t ShowLockup.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for ShowLockup();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return sub_CFA78(v1, boxed_opaque_existential_0Tm, type metadata accessor for ShowLockup);
}

uint64_t sub_CF7A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return sub_CFA78(v2, boxed_opaque_existential_0Tm, type metadata accessor for ShowLockup);
}

uint64_t ShowLockup.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E5DC4();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 24);
  if (*(v1 + 40))
  {
    if (*(v1 + 40) == 1)
    {
      v10 = v5;
      v11 = [*(v1 + 24) URIRepresentation];
      sub_3E5D44();

      v9 = sub_3E5CD4();
      v13 = v12;
      (*(v4 + 8))(v8, v10);
    }

    else
    {
      v13 = *(v1 + 32);
    }
  }

  else
  {
    v17[0] = *(v1 + 24);
    sub_17A28();
    v9 = sub_3EE1F4();
    v13 = v14;
  }

  sub_3E6D44();
  v17[0] = v9;
  v17[1] = v13;
  sub_CFB28(&qword_4E9B80, &type metadata accessor for ShowEntity);
  sub_3E5754();
  v15 = sub_3E5764();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t ShowLockup.isExplicit.getter()
{
  if (*(v0 + *(type metadata accessor for ShowLockup() + 48)) == 2)
  {
    v1 = 0;
  }

  else
  {
    v2 = sub_3E79D4();
    v4 = v3;
    v1 = 1;
    if (v2 != sub_3E79D4() || v4 != v5)
    {
      v1 = sub_3EE804();
    }
  }

  return v1 & 1;
}

uint64_t sub_CFA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_CFB28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CFB70(uint64_t a1)
{
  result = sub_CFB28(&qword_4F0E70, type metadata accessor for ShowLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_CFBF4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_3E7784();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[14];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[15];

  return v16(v17, a2, v15);
}

uint64_t sub_CFDE0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_3E7784();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[15];

  return v16(v17, a2, a2, v15);
}

void sub_CFFB8()
{
  sub_3E7784();
  if (v0 <= 0x3F)
  {
    sub_5FBE4(319, &qword_4E9978);
    if (v1 <= 0x3F)
    {
      sub_5FBE4(319, &qword_4F0350);
      if (v2 <= 0x3F)
      {
        sub_CD72C();
        if (v3 <= 0x3F)
        {
          sub_D011C(319, &qword_4F0E00, type metadata accessor for Action);
          if (v4 <= 0x3F)
          {
            sub_D011C(319, &unk_4F0E08, &type metadata accessor for ImpressionMetrics);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_D011C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3ECB24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_D0174(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = sub_3E5934();
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (v4 + 8);
    v9 = (a1 + 56);
    do
    {
      v10 = *v9;
      v15._countAndFlagsBits = *(v9 - 1);
      v15._object = v10;

      sub_3E58E4();
      sub_68DC4();
      v11 = sub_3EE184();
      v13 = v12;
      (*v8)(v6, v3);
      v15._countAndFlagsBits = v11;
      v15._object = v13;

      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      sub_3ED3D4(v17);

      sub_3ED3D4(v15);

      v9 += 4;
      --v7;
    }

    while (v7);
  }
}

uint64_t type metadata accessor for TranscriptSnippet()
{
  result = qword_4F0FA0;
  if (!qword_4F0FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TranscriptSnippet.init(id:text:clickAction:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  v12 = sub_D0E9C();
  if (*(v12 + 2))
  {
    v13 = v12;

    a3 = sub_D1264(v13);
    a4 = v14;
  }

  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v15 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v15;
  *(a7 + 64) = *(a5 + 32);
  v16 = a7 + *(type metadata accessor for TranscriptSnippet() + 28);

  return sub_14A10(a6, v16);
}

uint64_t TranscriptSnippet.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = a3;
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v70 = &v62 - v5;
  v6 = sub_3EBDF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  __chkstk_darwin(v16);
  v18 = &v62 - v17;
  sub_3EBE04();
  v69 = sub_3EBDC4();
  v20 = v19;
  v23 = *(v7 + 8);
  v22 = v7 + 8;
  v21 = v23;
  v23(v18, v6);
  if (!v20)
  {
    v40 = sub_3ECEE4();
    sub_D1810(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v42 = v41;
    v43 = type metadata accessor for TranscriptSnippet();
    *v42 = 25705;
    v42[1] = 0xE200000000000000;
    v42[2] = v43;
    (*(*(v40 - 8) + 104))(v42, enum case for JSONError.missingProperty(_:), v40);
    swift_willThrow();
    v29 = v21;
    v31 = v6;
LABEL_11:
    v48 = sub_3EBF94();
    (*(*(v48 - 8) + 8))(v73, v48);
    return v29(a1, v31);
  }

  v24 = v20;
  sub_3EBE04();
  v25 = sub_3EBDC4();
  v26 = v6;
  v28 = v27;
  v72 = v26;
  v21(v15, v26);
  v29 = v21;
  v68 = v28;
  if (!v28)
  {

    v44 = sub_3ECEE4();
    sub_D1810(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v46 = v45;
    v47 = type metadata accessor for TranscriptSnippet();
    *v46 = 1954047348;
    v46[1] = 0xE400000000000000;
    v46[2] = v47;
    (*(*(v44 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v44);
    swift_willThrow();
    v31 = v72;
    goto LABEL_11;
  }

  v65 = v25;
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v31 = v72;
  v29(v12, v72);
  v67 = a1;
  sub_3EBE04();
  v32 = sub_3EBD24();
  v33 = v29;
  v34 = v32;
  v35 = v32;
  v66 = v33;
  v33(v9, v31);
  if (v35 == 2)
  {

    v36 = sub_3ECEE4();
    sub_D1810(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v38 = v37;
    v39 = type metadata accessor for TranscriptSnippet();
    *v38 = 0xD000000000000017;
    v38[1] = 0x80000000004272F0;
    v38[2] = v39;
    (*(*(v36 - 8) + 104))(v38, enum case for JSONError.missingProperty(_:), v36);
LABEL_10:
    swift_willThrow();

    v29 = v66;
    a1 = v67;
    goto LABEL_11;
  }

  sub_3E8E04();
  if (sub_3E8DE4() & 1) == 0 && (v34)
  {

    sub_D16A8();
    swift_allocError();
    goto LABEL_10;
  }

  v64 = v22;
  if (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v63 = type metadata accessor for Action();
    v50 = sub_D1810(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v63 = 0;
    v50 = 0;
  }

  v52 = v70;
  v51 = v71;
  v53 = v65;
  v54 = sub_3EC634();
  (*(*(v54 - 8) + 56))(v52, 1, 1, v54);
  *v51 = v69;
  v51[1] = v24;

  v55 = v68;
  v56 = sub_D0E9C();
  v57 = v66;
  if (*(v56 + 2))
  {

    v53 = sub_D1264(v56);
    v55 = v58;
  }

  v59 = sub_3EBF94();
  (*(*(v59 - 8) + 8))(v73, v59);
  v57(v67, v31);
  v51[2] = v53;
  v51[3] = v55;
  v51[4] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  v51[5] = 0;
  v60 = v63;
  v51[6] = 0;
  v51[7] = v60;
  v51[8] = v50;
  v61 = type metadata accessor for TranscriptSnippet();
  return sub_14A10(v52, v51 + *(v61 + 28));
}

uint64_t TranscriptSnippet.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for TranscriptSnippet();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);

  return sub_D16FC(v1, boxed_opaque_existential_0Tm);
}

uint64_t sub_D0C24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return sub_D16FC(v2, boxed_opaque_existential_0Tm);
}

uint64_t sub_D0C5C(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return String.remove(at:)(a1);
  }

LABEL_5:
  a1 = sub_3ED3B4();

  return String.remove(at:)(a1);
}

uint64_t sub_D0CC4()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x5F72656B61657073;
  }
}

uint64_t sub_D0D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5F72656B61657073 && a2 == 0xEA00000000006469;
  if (v6 || (sub_3EE804() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_3EE804();

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

uint64_t sub_D0DF4(uint64_t a1)
{
  v2 = sub_D1F28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D0E30(uint64_t a1)
{
  v2 = sub_D1F28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D0E6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_D1D44(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void *sub_D0E9C()
{
  v0 = sub_3E9A04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  __chkstk_darwin(v2);
  v4 = v16 - v3;
  v5 = sub_3ED284();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3ED274();
  v9 = sub_3ED254();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v11 >> 60 == 15)
  {
    sub_3E98F4();
    v12 = sub_3E99F4();
    v13 = sub_3ED9D4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Unable to convert raw snippet to json data", v14, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    sub_3E5884();
    swift_allocObject();
    sub_3E5874();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0FE0);
    sub_D1B6C();
    sub_3E5844();

    sub_681FC(v9, v11);
    return v16[3];
  }
}

uint64_t sub_D1264(char *a1)
{
  v2 = 0;
  v38 = 0;
  v39 = 0xE000000000000000;
  v3 = sub_D1AD8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0FE0);
  result = sub_3ED894();
  if (result)
  {
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      v6 = *(a1 + 2);
      if (!v6)
      {
        break;
      }

      v7 = *(a1 + 5);
      v8 = *(a1 + 7);
      v36 = *(a1 + 4);
      v37 = *(a1 + 6);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v6 - 1) > *(a1 + 3) >> 1)
      {
        a1 = sub_DFBF4(isUniquelyReferenced_nonNull_native, v6, 1, a1);
      }

      sub_D1B3C((a1 + 32));
      v10 = *(a1 + 2);
      memmove(a1 + 32, a1 + 64, 32 * v10 - 32);
      *(a1 + 2) = v10 - 1;
      if (v7)
      {
        v11 = *(v5 + 2);
        if (v11)
        {
          v12 = &v5[32 * v11];
          v13 = v12[1];
          v33 = v3;
          if (v13 && ((result = *v12, *v12 == v36) ? (v14 = v13 == v7) : (v14 = 0), v14 || (result = sub_3EE804(), (result & 1) != 0)))
          {
            v34 = v2;
          }

          else
          {
            v15 = v38 & 0xFFFFFFFFFFFFLL;
            if ((v39 & 0x2000000000000000) != 0)
            {
              v15 = HIBYTE(v39) & 0xF;
            }

            if (v15)
            {
              v40._countAndFlagsBits = 2570;
              v40._object = 0xE200000000000000;
              sub_3ED3D4(v40);
            }

            sub_D0174(v5, &v38);
            v34 = v2;

            sub_D0C5C(v16);

            v5 = _swiftEmptyArrayStorage;
          }

          v17 = 0;
          v18 = v5 + 56;
          v35 = -*(v5 + 2);
          v19 = -1;
          while (v35 + v19 != -1)
          {
            if (++v19 >= *(v5 + 2))
            {
              goto LABEL_57;
            }

            v20 = v18 + 32;
            v21 = v5;

            v22 = sub_3ED3A4();

            v18 = v20;
            v23 = __OFADD__(v17, v22);
            v17 += v22;
            v5 = v21;
            if (v23)
            {
              goto LABEL_58;
            }
          }

          result = sub_3ED3A4();
          if (__OFADD__(v17, result))
          {
            goto LABEL_59;
          }

          if (v17 + result < 251)
          {
            v3 = v33;
            v2 = v34;
          }

          else
          {
            v24 = v38 & 0xFFFFFFFFFFFFLL;
            if ((v39 & 0x2000000000000000) != 0)
            {
              v24 = HIBYTE(v39) & 0xF;
            }

            v3 = v33;
            v2 = v34;
            if (v24)
            {
              v41._countAndFlagsBits = 2570;
              v41._object = 0xE200000000000000;
              sub_3ED3D4(v41);
            }

            sub_D0174(v5, &v38);

            sub_D0C5C(v25);

            v5 = _swiftEmptyArrayStorage;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_DFBF4(0, *(v5 + 2) + 1, 1, v5);
        }

        v27 = *(v5 + 2);
        v26 = *(v5 + 3);
        if (v27 >= v26 >> 1)
        {
          v5 = sub_DFBF4((v26 > 1), v27 + 1, 1, v5);
        }

        *(v5 + 2) = v27 + 1;
        v28 = &v5[32 * v27];
        *(v28 + 4) = v36;
        *(v28 + 5) = v7;
        *(v28 + 6) = v37;
        *(v28 + 7) = v8;
        if (v27 >= 2)
        {
          v29 = v38 & 0xFFFFFFFFFFFFLL;
          if ((v39 & 0x2000000000000000) != 0)
          {
            v29 = HIBYTE(v39) & 0xF;
          }

          if (v29)
          {
            v42._countAndFlagsBits = 2570;
            v42._object = 0xE200000000000000;
            sub_3ED3D4(v42);
          }

          sub_D0174(v5, &v38);

          sub_D0C5C(v30);

          v5 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0FE0);
      result = sub_3ED894();
      if ((result & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_49:

    if (*(v5 + 2))
    {
      v31 = v38 & 0xFFFFFFFFFFFFLL;
      if ((v39 & 0x2000000000000000) != 0)
      {
        v31 = HIBYTE(v39) & 0xF;
      }

      if (v31)
      {
        v43._countAndFlagsBits = 2570;
        v43._object = 0xE200000000000000;
        sub_3ED3D4(v43);
      }

      sub_D0174(v5, &v38);

      sub_D0C5C(v32);
    }

    return v38;
  }

  return result;
}

unint64_t sub_D16A8()
{
  result = qword_4F0F30;
  if (!qword_4F0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0F30);
  }

  return result;
}

uint64_t sub_D16FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_D1764()
{
  result = qword_4F0F38;
  if (!qword_4F0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0F38);
  }

  return result;
}

uint64_t sub_D17B8(uint64_t a1)
{
  result = sub_D1810(&qword_4F0F40, type metadata accessor for TranscriptSnippet);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_D1810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_D18B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_D1984(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_D1A34()
{
  sub_C30B0();
  if (v0 <= 0x3F)
  {
    sub_4D334();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_D1AD8()
{
  result = qword_4F0FE8;
  if (!qword_4F0FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0FE8);
  }

  return result;
}

unint64_t sub_D1B6C()
{
  result = qword_4F0FF0;
  if (!qword_4F0FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0FE0);
    sub_D1BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0FF0);
  }

  return result;
}

unint64_t sub_D1BF0()
{
  result = qword_4F0FF8;
  if (!qword_4F0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0FF8);
  }

  return result;
}

uint64_t sub_D1C44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D1CAC(uint64_t a1, int a2)
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

uint64_t sub_D1CF4(uint64_t result, int a2, int a3)
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

uint64_t sub_D1D44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1000);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_D1F28();
  sub_3EE9F4();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_3EE644();
    v10 = 1;
    sub_3EE694();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_D1F28()
{
  result = qword_4F1008;
  if (!qword_4F1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1008);
  }

  return result;
}

unint64_t sub_D1F90()
{
  result = qword_4F1010;
  if (!qword_4F1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1010);
  }

  return result;
}

unint64_t sub_D1FE8()
{
  result = qword_4F1018;
  if (!qword_4F1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1018);
  }

  return result;
}

unint64_t sub_D2040()
{
  result = qword_4F1020;
  if (!qword_4F1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1020);
  }

  return result;
}

ShelfKit::ComponentKinds_optional __swiftcall ComponentKinds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B0B38;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 13;
  if (v5 < 0xD)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t ComponentKinds.rawValue.getter()
{
  result = 0x6F4C79636167654CLL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
    case 5:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 1802398028;
      break;
    case 7:
      result = 0x6948686372616553;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6F726548776F6853;
      break;
    case 0xA:
      result = 0x6B636F4C776F6853;
      break;
    case 0xB:
      result = 0x6F666E49776F6853;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_D22AC()
{
  v0 = ComponentKinds.rawValue.getter();
  v2 = v1;
  if (v0 == ComponentKinds.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_3EE804();
  }

  return v5 & 1;
}

Swift::Int sub_D2348()
{
  sub_3EE954();
  ComponentKinds.rawValue.getter();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_D23B0()
{
  ComponentKinds.rawValue.getter();
  sub_3ED394();
}

Swift::Int sub_D2414()
{
  sub_3EE954();
  ComponentKinds.rawValue.getter();
  sub_3ED394();

  return sub_3EE9A4();
}

unint64_t sub_D2484@<X0>(unint64_t *a1@<X8>)
{
  result = ComponentKinds.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_D24AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0058);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3FD3D0;
  strcpy((inited + 32), "LegacyLockup");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v1 = type metadata accessor for LegacyLockup();
  v2 = sub_D2B68(&qword_4F1040, type metadata accessor for LegacyLockup);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0xD000000000000013;
  *(inited + 72) = 0x8000000000422A00;
  v3 = type metadata accessor for LegacyChannelLockup();
  v4 = sub_D2B68(&qword_4F1048, type metadata accessor for LegacyChannelLockup);
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  *(inited + 96) = 0xD000000000000014;
  *(inited + 104) = 0x8000000000422A20;
  v5 = type metadata accessor for LegacyCategoryLockup();
  v6 = sub_D2B68(&qword_4F1050, type metadata accessor for LegacyCategoryLockup);
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000000422A60;
  v7 = type metadata accessor for LegacyEpisodeLockup();
  v8 = sub_D2B68(&qword_4F1058, type metadata accessor for LegacyEpisodeLockup);
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  *(inited + 160) = 0xD000000000000019;
  *(inited + 168) = 0x8000000000422A40;
  v9 = type metadata accessor for LegacyEditorialItemLockup();
  v10 = sub_D2B68(&qword_4F1060, type metadata accessor for LegacyEditorialItemLockup);
  *(inited + 176) = v9;
  *(inited + 184) = v10;
  *(inited + 192) = 1802398028;
  *(inited + 200) = 0xE400000000000000;
  v11 = type metadata accessor for Link();
  v12 = sub_D2B68(&qword_4F1068, type metadata accessor for Link);
  *(inited + 208) = v11;
  *(inited + 216) = v12;
  *(inited + 224) = 0x6948686372616553;
  *(inited + 232) = 0xEA0000000000746ELL;
  v13 = type metadata accessor for SearchHint();
  v14 = sub_D2B68(&qword_4F1070, type metadata accessor for SearchHint);
  *(inited + 240) = v13;
  *(inited + 248) = v14;
  *(inited + 256) = 0x6F726548776F6853;
  *(inited + 264) = 0xE800000000000000;
  v15 = type metadata accessor for ShowHero();
  v16 = sub_D2B68(&qword_4F1078, type metadata accessor for ShowHero);
  *(inited + 272) = v15;
  *(inited + 280) = v16;
  *(inited + 288) = 0xD000000000000012;
  *(inited + 296) = 0x8000000000422A90;
  v17 = type metadata accessor for SearchLandingBrick();
  v18 = sub_D2B68(&qword_4F1080, type metadata accessor for SearchLandingBrick);
  *(inited + 304) = v17;
  *(inited + 312) = v18;
  *(inited + 320) = 0x6B636F4C776F6853;
  *(inited + 328) = 0xEA00000000007075;
  v19 = type metadata accessor for ShowLockup();
  v20 = sub_D2B68(&qword_4F1088, type metadata accessor for ShowLockup);
  *(inited + 336) = v19;
  *(inited + 344) = v20;
  *(inited + 352) = 0x6F666E49776F6853;
  *(inited + 360) = 0xEF6E6F6974616D72;
  v21 = type metadata accessor for ShowInformation();
  v22 = sub_D2B68(&qword_4F1090, type metadata accessor for ShowInformation);
  *(inited + 368) = v21;
  *(inited + 376) = v22;
  *(inited + 384) = 0xD000000000000011;
  *(inited + 392) = 0x8000000000422AD0;
  v23 = type metadata accessor for TranscriptSnippet();
  v24 = sub_D2B68(&qword_4F1098, type metadata accessor for TranscriptSnippet);
  *(inited + 400) = v23;
  *(inited + 408) = v24;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x80000000004229E0;
  v25 = type metadata accessor for CategorySelection();
  v26 = sub_D2B68(&unk_4F10A0, type metadata accessor for CategorySelection);
  *(inited + 432) = v25;
  *(inited + 440) = v26;
  v27 = sub_61D6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0078);
  result = swift_arrayDestroy();
  qword_4F1028 = v27;
  return result;
}

uint64_t static ComponentKinds.table.getter()
{
  if (qword_4E8960 != -1)
  {
    swift_once();
  }
}

unint64_t sub_D2A38()
{
  result = qword_4F1030;
  if (!qword_4F1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1030);
  }

  return result;
}

unint64_t sub_D2A90()
{
  result = qword_4F1038;
  if (!qword_4F1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1038);
  }

  return result;
}

unint64_t sub_D2AE4()
{
  if (qword_4E8960 != -1)
  {
    swift_once();
  }

  v1 = qword_4F1028;

  return sub_B4190(v1);
}

uint64_t sub_D2B68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CacheDeleteObserver.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CacheDeleteObserver.init(asPartOf:)(a1);
  return v2;
}

uint64_t sub_D2BF0()
{
  sub_36174(0, &qword_4F10B0);
  v0 = sub_3EDB34();
  v1 = sub_3EDB14();

  return v1;
}

void *CacheDeleteObserver.init(asPartOf:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3EDA34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[11] = 0;
  v2[12] = _swiftEmptyArrayStorage;
  sub_36174(0, &qword_4F10B8);
  (*(v5 + 104))(v7, enum case for NSUserDefaults.Name.shared(_:), v4);
  sub_D2E58();
  sub_3EC3C4();
  (*(v5 + 8))(v7, v4);
  v2[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  sub_3EC394();
  v8 = [v12 privateQueueContext];
  swift_unknownObjectRelease();
  v2[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
  sub_3EC394();
  sub_1FE90(&v12, (v2 + 4));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10C8);
  sub_3EC394();
  v9 = v12;
  v2[9] = a1;
  v2[10] = v9;
  return v2;
}

unint64_t sub_D2E58()
{
  result = qword_4F10C0;
  if (!qword_4F10C0)
  {
    sub_36174(255, &qword_4F10B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F10C0);
  }

  return result;
}

void *CacheDeleteObserver.__allocating_init(userDefaults:managedObjectContext:intentDispatcher:analyticsChannel:objectGraph:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[11] = 0;
  v10[12] = _swiftEmptyArrayStorage;
  v10[2] = a1;
  v10[3] = a2;
  sub_1FE90(a3, (v10 + 4));
  v10[9] = a5;
  v10[10] = a4;
  return v10;
}

void *CacheDeleteObserver.init(userDefaults:managedObjectContext:intentDispatcher:analyticsChannel:objectGraph:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5[11] = 0;
  v5[12] = &_swiftEmptyArrayStorage;
  v5[2] = a1;
  v5[3] = a2;
  sub_1FE90(a3, (v5 + 4));
  v5[9] = a5;
  v5[10] = a4;
  return v5;
}

uint64_t sub_D2F88()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  *(v1 + 24) = swift_task_alloc();
  type metadata accessor for CacheDeleteObserver();
  sub_D31C4(&qword_4F10D8, v2, type metadata accessor for CacheDeleteObserver);
  v4 = sub_3ED684();

  return _swift_task_switch(sub_D3074, v4, v3);
}

uint64_t sub_D3074()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_3ED6D4();
  v3 = sub_3ED6F4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  *(v1 + 88) = sub_D37B8(0, 0, v2, &unk_3FD590, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_D31C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_D320C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D3244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_3E9A04();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_D3304, 0, 0);
}

uint64_t sub_D3304()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_D33F4;

    return sub_D3AA8();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_D33F4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_D3538, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_D3538()
{

  sub_3E99B4();
  swift_errorRetain();
  v1 = sub_3E99F4();
  v2 = sub_3ED9D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Encountered a critical error observing central cache delete: %@", v3, 0xCu);
    sub_FCF8(v4, &unk_502160);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_D36C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D3704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_D3244(a1, v4, v5, v6);
}

uint64_t sub_D37B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_915C4(a3, v25 - v10);
  v12 = sub_3ED6F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_FCF8(v11, &qword_4F10D0);
  }

  else
  {
    sub_3ED6E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_3ED684();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_3ED2D4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_FCF8(a3, &qword_4F10D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_FCF8(a3, &qword_4F10D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_D3AA8()
{
  v1[5] = v0;
  v2 = sub_3E9A04();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_3E5F84();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_3E9864();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_3E97B4();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = sub_3E9854();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v7 = sub_3E8FD4();
  v1[25] = v7;
  v1[26] = *(v7 - 8);
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1280);
  v1[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1288);
  v1[29] = v8;
  v1[30] = *(v8 - 8);
  v1[31] = swift_task_alloc();
  v9 = sub_3E5DC4();
  v1[32] = v9;
  v1[33] = *(v9 - 8);
  v1[34] = swift_task_alloc();
  type metadata accessor for CacheDeleteObserver();
  v1[35] = sub_D31C4(&qword_4F10D8, v10, type metadata accessor for CacheDeleteObserver);
  v12 = sub_3ED684();
  v1[36] = v12;
  v1[37] = v11;

  return _swift_task_switch(sub_D3EB4, v12, v11);
}

uint64_t sub_D3EB4()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1290);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_3F5630;
  v6 = [objc_opt_self() managedAssetsDirectoryURL];
  sub_3E5D44();

  (*(v2 + 32))(v5 + v4, v1, v3);
  v7 = objc_allocWithZone(sub_3E9004());
  *(v0 + 304) = sub_3E8FF4();
  sub_3E8FE4();
  *(v0 + 368) = enum case for OSSignpostError.doubleEnd(_:);
  v8 = *(v0 + 280);
  v9 = *(v0 + 40);
  v10 = swift_task_alloc();
  *(v0 + 312) = v10;
  *v10 = v0;
  v10[1] = sub_D4044;
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);

  return AsyncStream.Iterator.next(isolation:)(v11, v9, v8, v12);
}

uint64_t sub_D4044()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_D4164, v3, v2);
}

uint64_t sub_D4164()
{
  v63 = v0;
  v1 = v0[28];
  if ((*(v0[26] + 48))(v1, 1, v0[25]) == 1)
  {
    v2 = v0[38];
    (*(v0[30] + 8))(v0[31], v0[29]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[27];
    sub_D7524(v1, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1298);
    if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
    {
      sub_3E9804();
      sub_3E97A4();
      v7 = sub_3E9834();
      v8 = sub_3EDC84();
      if (sub_3EE014())
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_3E9794();
        _os_signpost_emit_with_name_impl(&dword_0, v7, v8, v10, "RespondToCacheDeleteNotification", "", v9, 2u);
      }

      v11 = v0[24];
      v12 = v0[21];
      v13 = v0[22];
      v14 = v0[19];
      v15 = v0[20];
      v16 = v0[16];
      v17 = v0[17];

      (*(v17 + 16))(v14, v15, v16);
      sub_3E98A4();
      swift_allocObject();
      v0[40] = sub_3E9894();
      v18 = *(v17 + 8);
      v0[41] = v18;
      v0[42] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v18(v15, v16);
      v19 = *(v13 + 8);
      v0[43] = v19;
      v0[44] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v11, v12);
      v20 = swift_task_alloc();
      v0[45] = v20;
      *v20 = v0;
      v20[1] = sub_D4864;

      return sub_D4BE4();
    }

    else
    {
      v21 = v0[27];
      v23 = v0[11];
      v22 = v0[12];
      v25 = v0[9];
      v24 = v0[10];
      v26 = v21[1];
      v61 = *v21;
      (*(v24 + 32))(v22, v21 + *(v6 + 48), v25);
      sub_3E99B4();
      (*(v24 + 16))(v23, v22, v25);

      v27 = sub_3E99F4();
      v28 = sub_3ED9F4();

      v29 = os_log_type_enabled(v27, v28);
      v31 = v0[10];
      v30 = v0[11];
      v33 = v0[8];
      v32 = v0[9];
      v35 = v0[6];
      v34 = v0[7];
      if (v29)
      {
        v60 = v26;
        v36 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v36 = 136315394;
        sub_D31C4(&qword_4F12A0, 255, &type metadata accessor for Date);
        v58 = v35;
        v59 = v33;
        v37 = sub_3EE7A4();
        v39 = v38;
        v57 = v28;
        v40 = *(v31 + 8);
        v40(v30, v32);
        v41 = sub_2EDD0(v37, v39, &v62);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_2EDD0(v61, v60, &v62);
        _os_log_impl(&dword_0, v27, v57, "Discovered cache deleted file (deleted at %s): %s", v36, 0x16u);
        swift_arrayDestroy();

        v26 = v60;

        (*(v34 + 8))(v59, v58);
      }

      else
      {

        v40 = *(v31 + 8);
        v40(v30, v32);
        (*(v34 + 8))(v33, v35);
      }

      v42 = v0[5];
      swift_beginAccess();
      v43 = *(v42 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 96) = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v56 = v0[5];
        v43 = sub_DFAE8(0, *(v43 + 2) + 1, 1, v43);
        *(v56 + 96) = v43;
      }

      v46 = *(v43 + 2);
      v45 = *(v43 + 3);
      if (v46 >= v45 >> 1)
      {
        v43 = sub_DFAE8((v45 > 1), v46 + 1, 1, v43);
      }

      v47 = v0[12];
      v48 = v0[9];
      v49 = v0[5];
      *(v43 + 2) = v46 + 1;
      v50 = &v43[16 * v46];
      *(v50 + 4) = v61;
      *(v50 + 5) = v26;
      *(v49 + 96) = v43;
      swift_endAccess();
      v40(v47, v48);
      v51 = v0[35];
      v52 = v0[5];
      v53 = swift_task_alloc();
      v0[39] = v53;
      *v53 = v0;
      v53[1] = sub_D4044;
      v54 = v0[28];
      v55 = v0[29];

      return AsyncStream.Iterator.next(isolation:)(v54, v52, v51, v55);
    }
  }
}

uint64_t sub_D4864()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_D4984, v3, v2);
}

uint64_t sub_D4984()
{
  sub_3E9804();
  v1 = sub_3E9834();
  sub_3E9884();
  v2 = sub_3EDC74();
  if (sub_3EE014())
  {
    v3 = *(v0 + 368);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v6 = *(v0 + 104);

    sub_3E98B4();

    if ((*(v5 + 88))(v4, v6) == v3)
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      v7 = "";
    }

    v27 = *(v0 + 344);
    v14 = *(v0 + 328);
    v26 = *(v0 + 184);
    v15 = *(v0 + 168);
    v16 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v1, v2, v19, "RespondToCacheDeleteNotification", v7, v18, 2u);

    v14(v16, v17);
    v27(v26, v15);
  }

  else
  {
    v8 = *(v0 + 344);
    v9 = *(v0 + 328);
    v10 = *(v0 + 184);
    v11 = *(v0 + 168);
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);

    v9(v12, v13);
    v8(v10, v11);
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 40);
  v22 = swift_task_alloc();
  *(v0 + 312) = v22;
  *v22 = v0;
  v22[1] = sub_D4044;
  v23 = *(v0 + 224);
  v24 = *(v0 + 232);

  return AsyncStream.Iterator.next(isolation:)(v23, v21, v20, v24);
}

uint64_t sub_D4BE4()
{
  v1[7] = v0;
  v2 = sub_3E9A04();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for CacheDeleteObserver();
  sub_D31C4(&qword_4F10D8, v3, type metadata accessor for CacheDeleteObserver);
  v5 = sub_3ED684();
  v1[11] = v5;
  v1[12] = v4;

  return _swift_task_switch(sub_D4CF4, v5, v4);
}

uint64_t sub_D4CF4()
{
  v1 = v0[7];
  swift_beginAccess();
  v0[5] = *(v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_D74C0();
  if (sub_3ED894())
  {
    v2 = v0[7];
    v3 = *(v1 + 96);
    v0[13] = v3;
    *(v1 + 96) = _swiftEmptyArrayStorage;
    v4 = *(v2 + 80);
    sub_3E7B94();
    v5 = sub_3E7B84();
    [v4 sendEvent:v5];

    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_D4E68;

    return sub_D51B4(v3);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_D4E68()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];

    return _swift_task_switch(sub_D4FC8, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_D4FC8()
{
  v18 = v0;
  sub_3E99B4();
  swift_errorRetain();
  v1 = sub_3E99F4();
  v2 = sub_3ED9D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v4 = v0[9];
    v16 = v0[10];
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[6] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v8 = sub_3ED2B4();
    v10 = sub_2EDD0(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "Failed to respond to cache delete notifications: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_D51B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_3EDD94();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_3E71A4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_3E9A04();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = sub_3E5FC4();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  type metadata accessor for CacheDeleteObserver();
  sub_D31C4(&qword_4F10D8, v7, type metadata accessor for CacheDeleteObserver);
  v9 = sub_3ED684();
  v2[17] = v9;
  v2[18] = v8;

  return _swift_task_switch(sub_D53E4, v9, v8);
}

uint64_t sub_D53E4()
{
  v20 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_3E5FB4();
  v4 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v6 = v5;
  v0[19] = v4;
  v0[20] = v5;
  (*(v2 + 8))(v1, v3);
  sub_3E99B4();

  v7 = sub_3E99F4();
  v8 = sub_3ED9F4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_2EDD0(v4, v6, &v19);
    _os_log_impl(&dword_0, v7, v8, "[%{public}s] Beginning to updated database for deletions", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  v15 = *(v12 + 8);
  v15(v10, v11);
  v0[21] = v15;
  v16 = swift_task_alloc();
  v0[22] = v16;
  *v16 = v0;
  v16[1] = sub_D55C4;
  v17 = v0[2];

  return sub_D62F8(v17);
}

uint64_t sub_D55C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_D5FEC;
  }

  else
  {
    v7 = sub_D5708;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_D5708()
{
  v1 = v0[3];

  sub_3E7194();
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = v1[9];
  v5 = swift_task_alloc();
  v0[25] = v5;
  v6 = sub_D31C4(&unk_4F1260, 255, &type metadata accessor for RemoveEpisodesDownloadIntent);
  *v5 = v0;
  v5[1] = sub_D582C;
  v7 = v0[9];
  v8 = v0[7];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v6, v7, v4, v8, v6, v2, v3);
}

uint64_t sub_D582C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_D5954;
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_D5A0C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_D5954()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_D5A0C()
{
  v1 = v0[23];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v6 = *(v5 + 24);
  v7 = swift_allocObject();
  v0[27] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  (*(v4 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v6;
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_D5B50;
  v9 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_D74A4, v7, &type metadata for () + 8);
}

uint64_t sub_D5B50()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {

    v6 = *(v2 + 136);
    v7 = *(v2 + 144);
    v8 = sub_D5F4C;
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 144);
    v8 = sub_D5CF8;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_D5CF8()
{
  v20 = v0;
  sub_3E99B4();

  v1 = sub_3E99F4();
  v2 = sub_3ED9F4();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[20];
  v4 = v0[21];
  if (v3)
  {
    v6 = v0[19];
    v17 = v0[10];
    v18 = v0[12];
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = sub_2EDD0(v6, v5, &v19);

    *(v8 + 4) = v9;
    *(v8 + 12) = 2080;
    v10 = sub_3ED594();
    v12 = sub_2EDD0(v10, v11, &v19);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_0, v1, v2, "[%{public}s] Successfully deleted episodes for batch: %s", v8, 0x16u);
    swift_arrayDestroy();

    v7(v18, v17);
  }

  else
  {
    v13 = v0[12];
    v14 = v0[10];

    v4(v13, v14);
  }

  sub_D6E58();

  v15 = v0[1];

  return v15();
}

uint64_t sub_D5F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D5FEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D6094(void *a1)
{
  v3 = sub_3E5F84();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_3EDD74();
  if (!v1)
  {
    v8 = result;
    v17 = 0;
    v18 = a1;
    sub_3E5F64();
    v19 = v4;
    v20 = v3;
    if (v8 >> 62)
    {
      v9 = sub_3EE5A4();
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      if (v9)
      {
LABEL_4:
        if (v9 < 1)
        {
          __break(1u);
        }

        v10 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = sub_3EE3F4();
          }

          else
          {
            v11 = *(v8 + 8 * v10 + 32);
          }

          v12 = v11;
          ++v10;
          [v11 setDownloadBehavior:5];
          isa = sub_3E5EB4().super.isa;
          [v12 setLastCacheDeletePurge:isa];
        }

        while (v9 != v10);
      }
    }

    v21 = 0;
    if ([v18 save:&v21])
    {
      v14 = *(v19 + 8);
      v15 = v21;
      return v14(v6, v20);
    }

    else
    {
      v16 = v21;
      sub_3E5B84();

      swift_willThrow();
      return (*(v19 + 8))(v6, v20);
    }
  }

  return result;
}

uint64_t sub_D62F8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_3EDD94();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_3E5DC4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  type metadata accessor for CacheDeleteObserver();
  sub_D31C4(&qword_4F10D8, v5, type metadata accessor for CacheDeleteObserver);
  v7 = sub_3ED684();
  v2[12] = v7;
  v2[13] = v6;

  return _swift_task_switch(sub_D6470, v7, v6);
}

uint64_t sub_D6470()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[9];
    sub_41BC8(0, v3, 0);
    v5 = v2 + 40;
    do
    {

      sub_3E5CF4();

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_41BC8(v6 > 1, v7 + 1, 1);
      }

      v8 = v1[11];
      v9 = v1[8];
      _swiftEmptyArrayStorage[2] = v7 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7, v8, v9);
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  v10 = _swiftEmptyArrayStorage[2];
  v42 = v1;
  if (v10)
  {
    v11 = v1[9];
    sub_41BA8(0, v10, 0);
    v41 = *(v11 + 16);
    v12 = _swiftEmptyArrayStorage + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v40 = *(v11 + 72);
    v13 = (v11 + 8);
    do
    {
      v14 = v42[10];
      v15 = v42[8];
      v41(v14, v12, v15);
      v16 = sub_3E5D04();
      v18 = v17;
      (*v13)(v14, v15);
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_41BA8((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v12 += v40;
      --v10;
    }

    while (v10);

    v1 = v42;
    v22 = _swiftEmptyArrayStorage[2];
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_16:

    goto LABEL_17;
  }

  v22 = _swiftEmptyArrayStorage[2];
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_12:
  sub_3EE4C4();
  sub_36174(0, &qword_4F1D70);
  v23 = &_swiftEmptyArrayStorage[5];
  do
  {
    v24 = *(v23 - 1);
    v25 = *v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_3F5310;
    v27 = sub_3ED244();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    v30 = sub_4F39C();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    *(v26 + 96) = &type metadata for String;
    *(v26 + 104) = v30;
    *(v26 + 64) = v30;
    *(v26 + 72) = v24;
    *(v26 + 80) = v25;
    swift_bridgeObjectRetain_n();
    sub_3ED944();

    sub_3EE494();
    sub_3EE4D4();
    sub_3EE4E4();
    sub_3EE4A4();
    v23 += 2;
    --v22;
  }

  while (v22);

  v1 = v42;
LABEL_17:
  v32 = v1[6];
  v31 = v1[7];
  v33 = v1[5];
  v34 = *(v1[4] + 24);
  v35 = swift_allocObject();
  v1[14] = v35;
  *(v35 + 16) = _swiftEmptyArrayStorage;
  *(v35 + 24) = v34;
  (*(v32 + 104))(v31, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v33);
  v34;
  v36 = swift_task_alloc();
  v1[15] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1250);
  *v36 = v1;
  v36[1] = sub_D6918;
  v38 = v1[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1 + 2, v38, sub_D7448, v35, v37);
}

uint64_t sub_D6918()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_D6B5C;
  }

  else
  {
    v8 = sub_D6AD4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_D6AD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_D6B5C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_D6BD4(unint64_t a1@<X8>)
{
  v3 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  [v3 setResultType:1];
  sub_36174(0, &qword_4F1D70);
  isa = sub_3ED574().super.isa;
  v5 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v3 setPredicate:v5];
  sub_36174(0, &unk_4F1BE0);
  v6 = sub_3EDDA4();
  if (v1)
  {

    return;
  }

  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (v8)
  {
LABEL_5:
    v14 = v3;
    v15 = a1;
    sub_41B88(0, v8 & ~(v8 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v3 = &dword_0 + 1;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_3EE3F4();
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            v8 = sub_3EE5A4();
            if (!v8)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          }

          if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_17;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        a1 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (a1 >= v11 >> 1)
        {
          v13 = v10;
          sub_41B88((v11 > 1), a1 + 1, 1);
          v10 = v13;
        }

        ++v9;
        _swiftEmptyArrayStorage[2] = a1 + 1;
        v12 = &_swiftEmptyArrayStorage[3 * a1];
        v12[4] = v10;
        v12[5] = 0;
        *(v12 + 48) = 1;
        if (v8 == v9)
        {

          a1 = v15;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

LABEL_20:
    *a1 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_D6E58()
{
  v0 = sub_3E9A04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99B4();
  v4 = sub_3E99F4();
  v5 = sub_3ED9F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Finished processing new cache deleted items. Requesting tip providers update in response", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1230);
  sub_3EC394();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_3E6DC4();
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t CacheDeleteObserver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t CacheDeleteObserver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of CacheDeleteObserver.subscribeToObservation()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2368C;

  return v4();
}

uint64_t sub_D7218(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_D7310;

  return v6(a1);
}

uint64_t sub_D7310()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_D7408()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D7464()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_D74C0()
{
  result = qword_4F1270;
  if (!qword_4F1270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_5010E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1270);
  }

  return result;
}

uint64_t sub_D7524(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E8FD4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D7588()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D75C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2400C;

  return sub_D7218(a1, v4);
}

uint64_t sub_D7678(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2368C;

  return sub_D7218(a1, v4);
}

void *EpisodeDeletionActionProvider.__allocating_init(asPartOf:episodeDownloadStateController:libraryActionController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_DA704(a1, a2, a3);

  return v6;
}

void *EpisodeDeletionActionProvider.init(asPartOf:episodeDownloadStateController:libraryActionController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_DA704(a1, a2, a3);

  return v3;
}

uint64_t sub_D77E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_3F5630;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  if (a4)
  {
    v11 = swift_allocObject();
    *(v11 + 1) = xmmword_3F5630;
    v11[4] = a3;
    v11[5] = a4;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = sub_D79FC(v10, v11, a5, 0);

  return v12;
}

uint64_t sub_D78F0(uint64_t result, uint64_t a2)
{
  v11 = *(result + 16);
  if (v11)
  {
    v2 = 0;
    v3 = (result + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(a2 + 16);
      if (v2 == v5)
      {
        break;
      }

      if (v2 >= v5)
      {
        __break(1u);
        return result;
      }

      v6 = *v3;
      v15 = *(v3 - 1);
      ++v2;
      v7 = *(v4 - 1);
      v8 = *v4;
      v10 = v12[7];
      v9 = v12[8];
      __swift_project_boxed_opaque_existential_1(v12 + 4, v10);
      v14 = *(v9 + 248);

      v14(v15, v6, v7, v8, v10, v9);

      v3 += 2;
      v4 += 2;
    }

    while (v11 != v2);
  }

  return result;
}

uint64_t sub_D79FC(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v166 = a4;
  v180 = a2;
  v8 = sub_3E9A04();
  v163 = *(v8 - 8);
  v164 = v8;
  __chkstk_darwin(v8);
  v162 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v10 - 8);
  v165 = &v161 - v11;
  v12 = sub_3E5FC4();
  v170 = *(v12 - 8);
  v171 = v12;
  __chkstk_darwin(v12);
  v169 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v14 - 8);
  v175 = &v161 - v15;
  v16 = sub_3EC1F4();
  v167 = *(v16 - 8);
  v168 = v16;
  __chkstk_darwin(v16);
  v174 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v173 = &v161 - v19;
  v188 = sub_3EBBC4();
  v20 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_3EBC14();
  v22 = *(v187 - 8);
  __chkstk_darwin(v187);
  v185 = &v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_3E8AE4();
  __chkstk_darwin(v24);
  v26 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v161 - v29;
  v31 = *a3;
  v193 = a3[1];
  v194 = v31;
  v32 = a3[2];
  v191 = a3[3];
  v192 = v32;
  v33 = a3[4];
  v183 = a3[5];
  v184 = v33;
  v34 = a3[6];
  v181 = a3[7];
  v182 = v34;
  v35 = a3[8];
  v36 = a3[9];
  v199 = a3[10];
  v200 = v35;
  v37 = a3[12];
  v189 = a3[11];
  v190 = v36;
  v198 = v37;
  v38 = &_swiftEmptySetSingleton;
  v227 = &_swiftEmptySetSingleton;
  v228 = &_swiftEmptySetSingleton;
  v226 = &_swiftEmptySetSingleton;
  v39 = *(a1 + 16);
  v197 = v5;
  v178 = a1;
  v179 = v39;
  if (v39)
  {
    v195 = v22;
    v196 = v20;
    v40 = v5[3];
    v203 = (v28 + 16);
    v204 = v40;
    v202 = (v28 + 88);
    LODWORD(v201) = enum case for EpisodeDownloadState.downloading(_:);
    v41 = (v28 + 8);
    v42 = (a1 + 40);
    v43 = v39;
    do
    {
      v45 = *(v42 - 1);
      v44 = *v42;

      sub_3E8D54();
      sub_3E8984();

      if ((sub_3E8AB4() & 1) != 0 || ((*v203)(v26, v30, v24), v46 = (*v202)(v26, v24), v46 == v201))
      {

        sub_30E74(&aBlock, v45, v44);
      }

      else
      {
        (*v41)(v26, v24);
      }

      if (sub_3E8AC4())
      {
        sub_30E74(&aBlock, v45, v44);

        (*v41)(v30, v24);
      }

      else
      {
        (*v41)(v30, v24);
      }

      v42 += 2;
      --v43;
    }

    while (v43);
    v38 = v227;
    v20 = v196;
    v5 = v197;
    v22 = v195;
  }

  v47 = v5[2];
  v48 = swift_allocObject();
  *(v48 + 16) = v38;
  *(v48 + 24) = v5;
  *&v219 = sub_DA8B4;
  *(&v219 + 1) = v48;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v218 = sub_1279E4;
  *(&v218 + 1) = &block_descriptor_4;
  v49 = _Block_copy(&aBlock);

  v50 = v185;
  sub_3EBBE4();
  *&v212 = _swiftEmptyArrayStorage;
  v51 = sub_DB014(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  v53 = sub_DA8D4();
  v54 = v186;
  v176 = v53;
  v177 = v52;
  v55 = v188;
  v201 = v51;
  sub_3EE244();
  v202 = v47;
  sub_3EDBE4();
  _Block_release(v49);
  v56 = *(v20 + 8);
  v196 = v20 + 8;
  v56(v54, v55);
  v57 = *(v22 + 8);
  v195 = v22 + 8;
  v57(v50, v187);

  v58 = swift_allocObject();
  v59 = v58;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *&aBlock = v194;
  *(&aBlock + 1) = v193;
  *&v218 = v192;
  *(&v218 + 1) = v191;
  *&v219 = v184;
  *(&v219 + 1) = v183;
  *&v220 = v182;
  *(&v220 + 1) = v181;
  v221 = v200;
  v222 = v190;
  v223 = v199;
  v224 = v189;
  v60 = v200 >> 62;
  v225 = v198;
  if (v200 >> 62)
  {
    if (v60 == 1)
    {
      v221 = v200 & 0x3FFFFFFFFFFFFFFFLL;
      v223 = v199;
      v225 = v198;
      v61 = v191;
      *(v58 + 16) = v192;
      *(v58 + 24) = v61;
      v212 = 0u;
      v213 = 0u;
      v214 = 0u;
      v215 = 0u;
      v216 = -1;
      v62 = v193;

      v203 = v194;
      v204 = v62;
    }

    else
    {
      v203 = 0;
      v204 = 0;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v216 = -1;
    }
  }

  else
  {
    v63 = v199;
    v64 = v190;
    v221 = v200 & 0x3FFFFFFFFFFFFFFFLL;
    v222 = v190;
    v223 = v199;
    v224 = v189;
    v65 = v198;
    v225 = v198;
    v207 = v219;
    v208 = v220;
    v205 = aBlock;
    v206 = v218;
    v209 = v200;
    *(v58 + 16) = v189;
    *(v58 + 24) = v65;
    sub_DAD10(&aBlock, &v212);
    v214 = v207;
    v215 = v208;
    v216 = v209;
    v212 = v205;
    v213 = v206;

    v203 = v64;
    v204 = v63;
  }

  v211 = _swiftEmptyArrayStorage;
  v66 = objc_opt_self();
  v67 = [v66 mainBundle];
  v159._countAndFlagsBits = 0xE000000000000000;
  v229._object = 0x8000000000427400;
  v229._countAndFlagsBits = 0xD000000000000018;
  v232.value._countAndFlagsBits = 0;
  v232.value._object = 0;
  v68.super.isa = v67;
  v235._countAndFlagsBits = 0;
  v235._object = 0xE000000000000000;
  sub_3E5A74(v229, v232, v68, v235, v159);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_3F5630;
  *(v69 + 56) = &type metadata for Int;
  *(v69 + 64) = &protocol witness table for Int;
  *(v69 + 32) = v179;
  v70 = sub_3ED214();

  if (v60 != 2 || v200 != 0x8000000000000000 || v193 | v194 | v192 | v191 | v184 | v183 | v182 | v181 | v190 | v199 | v189 | v198)
  {

    v89 = v203;
    v90 = v180;
    if (v216 == 10)
    {
      v91 = v214 | *(&v214 + 1) | v215;
      if (!(v213 | *(&v212 + 1) | v212 | *(&v213 + 1) | v91 | *(&v215 + 1)))
      {
        v172 = v57;

        v108 = v178;
        if (v89)
        {
          (v89)(v178);
        }

        v109 = swift_allocObject();
        v110 = v197;
        v109[2] = v108;
        v109[3] = v110;
        v109[4] = v59;
        *&v207 = sub_DAC80;
        *(&v207 + 1) = v109;
        *&v205 = _NSConcreteStackBlock;
        *(&v205 + 1) = 1107296256;
        v107 = &block_descriptor_31;
        goto LABEL_68;
      }

      if (v212 == 6 && !(v213 | *(&v212 + 1) | *(&v213 + 1) | v91 | *(&v215 + 1)))
      {

        v92 = v178;
        if (v89)
        {
          (v89)(v178);
        }

        v93 = v165;
        sub_3ED6C4();
        v94 = sub_3ED6F4();
        (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
        v95 = *(v59 + 16);
        v96 = *(v59 + 24);
        v97 = swift_allocObject();
        v97[2] = 0;
        v97[3] = 0;
        v97[4] = v92;
        v97[5] = v197;
        v97[6] = v95;
        v97[7] = v96;

        sub_7A6C8(v95);
        sub_8FEE4(0, 0, v93, &unk_3FD6C8, v97);
        v98 = v89;
LABEL_63:
        sub_16AC0(v98);

        sub_DA978(&v212);
        goto LABEL_70;
      }
    }

    v99 = *(v180 + 16);
    v172 = v57;
    if (v99)
    {

      v100 = v178;
      if (v89)
      {
        (v89)(v178);
      }

      v101 = swift_allocObject();
      v101[2] = v100;
      v101[3] = v90;
      v101[4] = v197;
      v101[5] = v59;
      *&v207 = sub_DAB30;
      *(&v207 + 1) = v101;
      *&v205 = _NSConcreteStackBlock;
      *(&v205 + 1) = 1107296256;
      *&v206 = sub_1279E4;
      *(&v206 + 1) = &block_descriptor_21;
      v102 = _Block_copy(&v205);

      goto LABEL_69;
    }

    if (v226[2])
    {
      v103 = v226;

      v104 = v178;
      if (v89)
      {
        (v89)(v178);
      }

      v105 = swift_allocObject();
      v106 = v197;
      v105[2] = v103;
      v105[3] = v106;
      v105[4] = v59;
      v105[5] = v104;
      *&v207 = sub_DAA50;
      *(&v207 + 1) = v105;
      *&v205 = _NSConcreteStackBlock;
      *(&v205 + 1) = 1107296256;
      v107 = &block_descriptor_15;
    }

    else
    {

      v148 = v228;
      if (!v228[2])
      {

        v155 = v162;
        sub_3E9994();
        v156 = sub_3E99F4();
        v157 = sub_3ED9D4();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          *v158 = 0;
          _os_log_impl(&dword_0, v156, v157, "Impossible to delete episode or provide delete action", v158, 2u);

          sub_16AC0(v89);
          sub_DA978(&v212);
        }

        else
        {
          sub_16AC0(v89);
          sub_DA978(&v212);
        }

        (*(v163 + 8))(v155, v164);
        goto LABEL_70;
      }

      v149 = v178;
      if (v89)
      {
        (v89)(v178);
      }

      v150 = swift_allocObject();
      v151 = v197;
      v150[2] = v148;
      v150[3] = v151;
      v150[4] = v59;
      v150[5] = v149;
      *&v207 = sub_DA9E0;
      *(&v207 + 1) = v150;
      *&v205 = _NSConcreteStackBlock;
      *(&v205 + 1) = 1107296256;
      v107 = &block_descriptor_9;
    }

LABEL_68:
    *&v206 = sub_1279E4;
    *(&v206 + 1) = v107;
    v102 = _Block_copy(&v205);

LABEL_69:

    v152 = v185;
    sub_3EBBE4();
    v210 = _swiftEmptyArrayStorage;
    v153 = v186;
    v154 = v188;
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v102);
    sub_16AC0(v89);
    sub_DA978(&v212);
    v56(v153, v154);
    v172(v152, v187);

LABEL_70:

    return 0;
  }

  v71 = v228;
  v72 = v228[2];
  v202 = v59;
  v73 = v180;
  if (!v72)
  {

    if (!*(v73 + 16))
    {
LABEL_53:
      sub_16AC0(v203);
      sub_DA978(&v212);

      return v70;
    }

LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
    v200 = swift_allocObject();
    *(v200 + 16) = xmmword_3F7950;
    v111 = v73;
    v112 = [v66 mainBundle];
    v160._countAndFlagsBits = 0xE000000000000000;
    v230._countAndFlagsBits = 0xD00000000000001CLL;
    v230._object = 0x8000000000427450;
    v233.value._countAndFlagsBits = 0;
    v233.value._object = 0;
    v113.super.isa = v112;
    v236._countAndFlagsBits = 0;
    v236._object = 0xE000000000000000;
    v114 = sub_3E5A74(v230, v233, v113, v236, v160);
    v198 = v115;
    v199 = v114;

    v116 = swift_allocObject();
    *(v116 + 2) = v178;
    *(v116 + 3) = v111;
    *(v116 + 4) = v197;

    v117 = v173;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for ClosureAction();
    v118 = swift_allocObject();
    v119 = (v118 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v119 = sub_DAD04;
    v119[1] = v116;
    v201 = v70;
    v120 = v167;
    v121 = v168;
    (*(v167 + 16))(v174, v117, v168);
    v122 = sub_3EC634();
    (*(*(v122 - 8) + 56))(v175, 1, 1, v122);

    v123 = v169;
    sub_3E5FB4();
    v124 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v126 = v125;

    (*(v170 + 8))(v123, v171);
    (*(v120 + 8))(v117, v121);
    *(v118 + 16) = v124;
    *(v118 + 24) = v126;
    v127 = v198;
    *(v118 + 32) = v199;
    *(v118 + 40) = v127;
    *(v118 + 48) = 1;
    (*(v120 + 32))(v118 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v174, v121);
    v70 = v201;
    sub_14A10(v175, v118 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
    v128 = v200;
    *(v200 + 32) = v118;
    sub_40F6C(v128);
    goto LABEL_53;
  }

  if ((v166 & 1) == 0)
  {
    if (v72 == 1)
    {
      v129 = 0xD000000000000021;
    }

    else
    {
      v129 = 0xD00000000000001FLL;
    }

    v201 = v70;
    if (v72 == 1)
    {
      v130 = "REMOVE_COUNT_ITEM_FORMAT";
    }

    else
    {
      v130 = "EPISODES_REMOVE_FROM_STATION";
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
    v200 = swift_allocObject();
    *(v200 + 16) = xmmword_3F7950;
    v131 = [v66 mainBundle];
    v160._countAndFlagsBits = 0xE000000000000000;
    v231._object = (v130 | 0x8000000000000000);
    v231._countAndFlagsBits = v129;
    v234.value._countAndFlagsBits = 0;
    v234.value._object = 0;
    v132.super.isa = v131;
    v237._countAndFlagsBits = 0;
    v237._object = 0xE000000000000000;
    v133 = sub_3E5A74(v231, v234, v132, v237, v160);
    v198 = v134;
    v199 = v133;

    v135 = swift_allocObject();
    *(v135 + 16) = v71;
    *(v135 + 24) = v197;

    v136 = v173;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for ClosureAction();
    v137 = swift_allocObject();
    v138 = (v137 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v138 = sub_DAC8C;
    v138[1] = v135;
    v140 = v167;
    v139 = v168;
    (*(v167 + 16))(v174, v136, v168);
    v141 = sub_3EC634();
    (*(*(v141 - 8) + 56))(v175, 1, 1, v141);

    v142 = v169;
    sub_3E5FB4();
    v143 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v145 = v144;

    (*(v170 + 8))(v142, v171);
    (*(v140 + 8))(v173, v139);
    *(v137 + 16) = v143;
    *(v137 + 24) = v145;
    v146 = v198;
    *(v137 + 32) = v199;
    *(v137 + 40) = v146;
    *(v137 + 48) = 1;
    (*(v140 + 32))(v137 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v174, v139);
    sub_14A10(v175, v137 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
    v147 = v200;
    *(v200 + 32) = v137;
    v70 = v201;
    v211 = v147;
    v73 = v180;
    if (!*(v180 + 16))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v75 = 0;
  v199 = v71;
  v76 = v71 + 7;
  v77 = 1 << *(v71 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & v71[7];
  for (i = (v77 + 63) >> 6; v79; result = )
  {
    v81 = v75;
    v82 = v199;
LABEL_31:
    v83 = __clz(__rbit64(v79));
    v79 &= v79 - 1;
    v84 = (*(v82 + 48) + ((v81 << 10) | (16 * v83)));
    v85 = *v84;
    v86 = v84[1];
    v87 = v197[7];
    v88 = v197[8];
    __swift_project_boxed_opaque_existential_1(v197 + 4, v87);
    v200 = *(v88 + 352);
    v201 = v88 + 352;

    (v200)(v85, v86, 0, v87, v88);
  }

  v82 = v199;
  while (1)
  {
    v81 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v81 >= i)
    {
      v98 = v203;
      goto LABEL_63;
    }

    v79 = v76[v81];
    ++v75;
    if (v79)
    {
      v75 = v81;
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_D9024(uint64_t a1, void *a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];
      v14 = a2[7];
      v15 = a2[8];
      __swift_project_boxed_opaque_existential_1(a2 + 4, v14);
      v16 = *(v15 + 328);

      v16(v12, v13, v14, v15);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_D9170(uint64_t a1, void *a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];
      v14 = a2[7];
      v15 = a2[8];
      __swift_project_boxed_opaque_existential_1(a2 + 4, v14);
      v16 = *(v15 + 352);

      v16(v12, v13, 0, v14, v15);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_D92C0(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (result + 40);
    v6 = (a2 + 40);
    v12 = *(result + 16);
    v13 = a2;
    do
    {
      if (v4 < *(a2 + 16))
      {
        v7 = *v5;
        v16 = *(v5 - 1);
        v8 = a3[7];
        v9 = a3[8];
        __swift_project_boxed_opaque_existential_1(a3 + 4, v8);
        v10 = *(v6 - 1);
        v11 = *v6;
        v15 = *(v9 + 248);

        v15(v16, v7, v10, v11, v8, v9);

        v3 = v12;
        a2 = v13;
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_D93C0(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v5 = sub_3EBBC4();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBC14();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (v31 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v14 = a2[7];
      v13 = a2[8];
      __swift_project_boxed_opaque_existential_1(a2 + 4, v14);
      v15 = *(v13 + 352);

      v15(v11, v12, 0, v14, v13);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  sub_801B4();
  v16 = sub_3EDBC4();
  v17 = swift_allocObject();
  v18 = v31;
  *(v17 + 16) = v24;
  *(v17 + 24) = v18;
  aBlock[4] = sub_DAFF8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_46;
  v19 = _Block_copy(aBlock);

  v20 = v25;
  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_DB014(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_DA8D4();
  v21 = v28;
  v22 = v30;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v19);

  (*(v29 + 8))(v21, v22);
  return (*(v26 + 8))(v20, v27);
}

uint64_t sub_D9710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = sub_3EBBC4();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_3EBC14();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v10 = sub_3E70E4();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_D988C, 0, 0);
}

uint64_t sub_D988C()
{
  v1 = v0;
  v2 = v0[9];
  v3 = *(v2 + 16);
  if (v3)
  {
    v20 = v0;
    sub_41B88(0, v3, 0);
    v4 = _swiftEmptyArrayStorage[2];
    v5 = 24 * v4 + 48;
    v6 = (v2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = _swiftEmptyArrayStorage[3];

      if (v4 >= v9 >> 1)
      {
        sub_41B88((v9 > 1), v4 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      v10 = _swiftEmptyArrayStorage + v5;
      *(v10 - 2) = v8;
      *(v10 - 1) = v7;
      *v10 = 2;
      v5 += 24;
      v6 += 2;
      ++v4;
      --v3;
    }

    while (v3);
    v1 = v20;
  }

  v11 = v1[10];
  sub_3E70C4();
  v12 = v11[13];
  v13 = v11[14];
  __swift_project_boxed_opaque_existential_1(v11 + 10, v12);
  v14 = v11[9];
  v15 = swift_task_alloc();
  v1[22] = v15;
  v16 = sub_DB014(&qword_4F1DD0, &type metadata accessor for UnbookmarkEpisodeIntent);
  *v15 = v1;
  v15[1] = sub_D9A6C;
  v17 = v1[21];
  v18 = v1[19];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v16, v17, v14, v18, v16, v12, v13);
}

uint64_t sub_D9A6C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_D9DE8;
  }

  else
  {
    v2 = sub_D9B80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_D9B80()
{
  v1 = v0[18];
  v16 = v0[19];
  v17 = v0[21];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[9];
  sub_801B4();
  v12 = sub_3EDBC4();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v7;
  v0[6] = sub_DB0A4;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1279E4;
  v0[5] = &block_descriptor_53;
  v9 = _Block_copy(v0 + 2);
  sub_7A6C8(v6);

  sub_3EBBE4();
  v0[8] = _swiftEmptyArrayStorage;
  sub_DB014(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_DA8D4();
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v9);

  (*(v3 + 8))(v2, v5);
  (*(v13 + 8))(v1, v14);
  (*(v15 + 8))(v17, v16);

  v10 = v0[1];

  return v10();
}

uint64_t sub_D9DE8()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_D9E84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v27 = a4;
  v37 = a3;
  v6 = sub_3EBBC4();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBC14();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v34 + 40);
    v13 = (a2 + 40);
    v35 = *(a1 + 16);
    v36 = a2;
    do
    {
      if (v11 < *(a2 + 16))
      {
        v14 = *v12;
        v39 = *(v12 - 1);
        v16 = v37[7];
        v15 = v37[8];
        __swift_project_boxed_opaque_existential_1(v37 + 4, v16);
        v17 = *(v13 - 1);
        v18 = *v13;
        v38 = *(v15 + 248);

        v38(v39, v14, v17, v18, v16, v15);
        a2 = v36;

        v10 = v35;
      }

      ++v11;
      v12 += 2;
      v13 += 2;
    }

    while (v10 != v11);
  }

  sub_801B4();
  v19 = sub_3EDBC4();
  v20 = swift_allocObject();
  v21 = v34;
  *(v20 + 16) = v27;
  *(v20 + 24) = v21;
  aBlock[4] = sub_DB164;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_60;
  v22 = _Block_copy(aBlock);

  v23 = v28;
  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_DB014(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_DA8D4();
  v24 = v31;
  v25 = v33;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v22);

  (*(v32 + 8))(v24, v25);
  return (*(v29 + 8))(v23, v30);
}

uint64_t sub_DA22C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v32[1] = a5;
  v35 = a3;
  v36 = a4;
  v43 = a2;
  v8 = sub_3EBBC4();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v40 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBC14();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v37 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v44 = a1;

  for (i = 0; v14; result = )
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = (*(v44 + 48) + ((v18 << 10) | (16 * v19)));
    v21 = v20[1];
    v45 = *v20;
    v22 = v43[7];
    v23 = v43[8];
    __swift_project_boxed_opaque_existential_1(v43 + 4, v22);
    v24 = *(v23 + 352);

    v24(v45, v21, 0, v22, v23);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      sub_801B4();
      v25 = sub_3EDBC4();
      v26 = swift_allocObject();
      v27 = v36;
      *(v26 + 16) = v35;
      *(v26 + 24) = v27;
      aBlock[4] = v33;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1279E4;
      aBlock[3] = v34;
      v28 = _Block_copy(aBlock);

      v29 = v37;
      sub_3EBBE4();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_DB014(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
      sub_DA8D4();
      v30 = v40;
      v31 = v42;
      sub_3EE244();
      sub_3EDBE4();
      _Block_release(v28);

      (*(v41 + 8))(v30, v31);
      return (*(v38 + 8))(v29, v39);
    }

    v14 = *(a1 + 56 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_DA5F8(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (v5)
  {

    v5(a2);
    return sub_16AC0(v5);
  }

  return result;
}

uint64_t EpisodeDeletionActionProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  return v0;
}

uint64_t EpisodeDeletionActionProvider.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);

  return swift_deallocClassInstance();
}

void *sub_DA704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_3EBBD4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_801B4();
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.userInitiated(_:), v8);
  v12 = sub_3EDC04();
  (*(v9 + 8))(v11, v8);
  v4[9] = a1;
  v4[2] = v12;
  v4[3] = a2;
  sub_1F958(a3, (v4 + 4));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);

  sub_3EC394();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  sub_1FE90(&v15, (v4 + 10));
  return v4;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_DA8D4()
{
  result = qword_506A30;
  if (!qword_506A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_503DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_506A30);
  }

  return result;
}

uint64_t sub_DA938()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_DA978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_5Tm(void (*a1)(void), void (*a2)(void))
{

  a1(*(v2 + 24));

  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_DAB3C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_DAB94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2368C;

  return sub_D9710(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_27Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation17EpisodeUserFilterO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation15EpisodeListTypeO(uint64_t a1)
{
  if ((*(a1 + 64) & 0xFu) <= 9)
  {
    return *(a1 + 64) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

unint64_t get_enum_tag_for_layout_string_8ShelfKit29EpisodeDeletionActionProviderC7ContextO(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_DAEA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64) >> 4;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_DAEF8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 16 * -a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_DAF78(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 64) = *(result + 64) & 0xFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = 0x8000000000000000;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
  }

  return result;
}