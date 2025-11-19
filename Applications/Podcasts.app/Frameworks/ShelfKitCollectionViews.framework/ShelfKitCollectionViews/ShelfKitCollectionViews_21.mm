void (*sub_245350(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_30D578();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2453D0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2453D8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_182DEC(v1);
    v1 = result;
  }

  v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    v4 = v3 - 1;
    result = *(&stru_20.cmd + 8 * v4 + (v1 & 0xFFFFFFFFFFFFFF8));
    *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24543C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_30C558();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1926F0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_2454B0(void *a1)
{
  if (sub_243534())
  {
    swift_getObjectType();
    sub_30ADB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = sub_30C098();
    v3 = NSClassFromString(v2);

    if (v3)
    {
      swift_getObjCClassMetadata();
      sub_124C4(0, &qword_40A690);
      swift_dynamicCastMetatypeUnconditional();
      [a1 isKindOfClass:swift_getObjCClassFromMetadata()];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_245598(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    v5 = v3;
    v14 = v5;
    if (v4)
    {
      v6 = [v4 viewControllers];
      sub_124C4(0, &qword_3FBE30);
      v7 = sub_30C368();

      if (v7 >> 62)
      {
        if (sub_30D668())
        {
LABEL_5:
          if ((v7 & 0xC000000000000001) != 0)
          {
            v8 = sub_30D578();
          }

          else
          {
            if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return _objc_release_x3();
            }

            v8 = *(v7 + 32);
          }

          v9 = v8;

          sub_2454B0(v9);
          v11 = v10;

          v12 = v14;
          if ((v11 & 1) == 0)
          {
LABEL_15:

            return _objc_release_x3();
          }

LABEL_14:
          [v12 dismissViewControllerAnimated:a2 & 1 completion:0];
          goto LABEL_15;
        }
      }

      else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_5;
      }

      v5 = v14;
    }

    sub_2454B0(v5);
    v12 = v14;
    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_245720()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_245760()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for NavigationFlowController()
{
  result = qword_40A2E8;
  if (!qword_40A2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2457F8(uint64_t a1, uint64_t a2)
{
  result = sub_245C8C(&qword_40A2B8, a2, type metadata accessor for FlowNavigationController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_245850@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*&stru_68.segname[swift_isaMask & **a1])();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2458AC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *&stru_68.segname[(swift_isaMask & **a2) + 8];
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_245920@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_flowController;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_245984@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(&stru_68.flags + (swift_isaMask & **a1)))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2459E0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(&stru_68.reserved2 + (swift_isaMask & **a2));
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_245C8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_245CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_245E38();
  result = sub_30C558();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_157E58(v11, v5);
      sub_192F9C(v8, v5);
      sub_EB68(v8, &qword_406B40);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

unint64_t sub_245E38()
{
  result = qword_40A530;
  if (!qword_40A530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40A530);
  }

  return result;
}

uint64_t sub_245E9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_45604();
  result = sub_30C558();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_193340(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_245F18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_30A4E8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for FlowPresentationContext.infer(_:), v3, v5);
  sub_246F9C(&qword_40A698, &type metadata accessor for FlowPresentationContext);
  sub_30C338();
  sub_30C338();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    (*(v4 + 8))(v7, v3);

    return sub_308748();
  }

  v8 = sub_30D728();
  (*(v4 + 8))(v7, v3);

  if (v8)
  {
    return sub_308748();
  }

  return (*(v4 + 16))(a1, v1, v3);
}

double FlowPresentationHints.init(context:animate:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FlowPresentationHints();
  v7 = (a3 + v6[9]);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = v6[7];
  v9 = enum case for FlowDestinationPageHeader.standard(_:);
  v10 = sub_30AA18();
  (*(*(v10 - 8) + 104))(a3 + v8, v9, v10);
  v11 = sub_30A4E8();
  (*(*(v11 - 8) + 32))(a3, a1, v11);
  *(a3 + v6[5]) = a2;
  v12 = a3 + v6[6];
  *(v12 + 32) = 0;
  result = 0.0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 40) = -1;
  *(a3 + v6[8]) = 0;
  return result;
}

uint64_t type metadata accessor for FlowPresentationHints()
{
  result = qword_40A628;
  if (!qword_40A628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_2462B0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FlowPresentationHints();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = enum case for FlowPresentationContext.infer(_:);
  v6 = sub_30A4E8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = (v4 + v3[9]);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = v3[7];
  v9 = enum case for FlowDestinationPageHeader.standard(_:);
  v10 = sub_30AA18();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  *(v4 + v3[5]) = 0;
  v11 = v4 + v3[6];
  *(v11 + 32) = 0;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 40) = -1;
  *(v4 + v3[8]) = 0;
  return result;
}

uint64_t sub_2463F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FlowPresentationHints();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_2335F4(v6, a3);
}

BOOL sub_246458(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v24 = *&v12;
  v25 = *&v10;
  v23 = *a2;
  if (v7)
  {
    if (*(a2 + 40))
    {
      v7 = 1;
      sub_1DD8C(v8, v9, *&v11, v10, v12, 1);
      sub_1DD8C(v2, v3, v4, v5, *&v6, 1);
      v14 = [v2 isEqual:v8];
      v15 = *&v9;
      v16 = *&v5;
      v17 = *&v4;
      v18 = *&v3;
      v19 = v14;
      v13 = 1;
      goto LABEL_6;
    }

LABEL_5:
    sub_1DD8C(v8, v9, *&v11, v10, v12, v13);
    sub_1DD8C(v2, v3, v4, v5, *&v6, v7);
    v15 = *&v9;
    v16 = *&v5;
    v17 = *&v4;
    v18 = *&v3;
    v19 = 0;
    goto LABEL_6;
  }

  if (*(a2 + 40))
  {
    goto LABEL_5;
  }

  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  sub_124C4(0, &qword_40A690);
  sub_1DD8C(v8, v9, *&v11, v21, v22, 0);
  sub_1DD8C(v2, v3, v4, v5, *&v6, 0);
  v7 = 0;
  v13 = 0;
  v15 = *&v9;
  v16 = *&v5;
  v17 = *&v4;
  v18 = *&v3;
  v19 = 0;
  if (sub_30D098())
  {
    v26.origin.x = v18;
    v26.origin.y = v17;
    v26.size.width = v16;
    v26.size.height = v6;
    v27.size.height = v24;
    v27.size.width = v25;
    v27.origin.y = v11;
    v27.origin.x = v15;
    v19 = CGRectEqualToRect(v26, v27);
    v7 = 0;
    v13 = 0;
  }

LABEL_6:
  sub_1DDB0(v2, *&v18, *&v17, *&v16, *&v6, v7);
  sub_1DDB0(v23, *&v15, *&v11, *&v25, *&v24, v13);
  return v19;
}

uint64_t _s23ShelfKitCollectionViews21FlowPresentationHintsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_30A4E8();
  sub_246F9C(&qword_40A698, &type metadata accessor for FlowPresentationContext);
  sub_30C338();
  sub_30C338();
  if (v42 == v36 && v43 == v37)
  {
  }

  else
  {
    v5 = sub_30D728();

    if ((v5 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v6 = type metadata accessor for FlowPresentationHints();
  v7 = sub_309D18();
  v9 = v8;
  if (v7 == sub_309D18() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_30D728();

    if ((v12 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v13 = *(v6 + 24);
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v17 = *(a1 + v13 + 16);
  v16 = *(a1 + v13 + 24);
  v18 = *(a1 + v13 + 32);
  v19 = *(a1 + v13 + 40);
  v20 = a2 + v13;
  v22 = *v20;
  v21 = *(v20 + 8);
  v23 = *(v20 + 16);
  v24 = *(v20 + 24);
  v25 = *(v20 + 32);
  v26 = *(v20 + 40);
  if (v19 == 255)
  {
    v34 = *v20;
    v35 = *(v20 + 32);
    v29 = v16;
    v30 = v18;
    sub_1DD74(v15, v14, v17, v16, v18, 255);
    if (v26 == 255)
    {
      sub_1DD74(v34, v21, v23, v24, v35, 255);
      sub_1DD98(v15, v14, v17, v29, v30, 255);
      goto LABEL_24;
    }

    sub_1DD74(v34, v21, v23, v24, v35, v26);
LABEL_22:
    sub_1DD98(v15, v14, v17, v29, v30, v19);
    sub_1DD98(v34, v21, v23, v24, v35, v26);
    v28 = 0;
    return v28 & 1;
  }

  v42 = v15;
  v43 = v14;
  v44 = v17;
  v45 = v16;
  v46 = v18;
  v47 = v19;
  if (v26 == 255)
  {
    v34 = v22;
    v35 = v25;
    v29 = v16;
    v30 = v18;
    sub_1DD74(v15, v14, v17, v16, v18, v19);
    sub_1DD74(v34, v21, v23, v24, v35, 255);
    sub_1DD74(v15, v14, v17, v29, v30, v19);
    sub_1DDB0(v15, v14, v17, v29, v30, v19 & 1);
    goto LABEL_22;
  }

  v36 = v22;
  v37 = v21;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v26 & 1;
  v32 = v18;
  v33 = v16;
  sub_1DD74(v15, v14, v17, v16, v18, v19);
  sub_1DD74(v22, v21, v23, v24, v25, v26);
  sub_1DD74(v15, v14, v17, v33, v32, v19);
  v27 = sub_246458(&v42, &v36);
  sub_1DDB0(v36, v37, v38, v39, v40, v41);
  sub_1DDB0(v42, v43, v44, v45, v46, v47);
  sub_1DD98(v15, v14, v17, v33, v32, v19);
  if (!v27)
  {
LABEL_18:
    v28 = 0;
    return v28 & 1;
  }

LABEL_24:
  sub_30AA18();
  sub_246F9C(&unk_40A6A0, &type metadata accessor for FlowDestinationPageHeader);
  sub_30C338();
  sub_30C338();
  if (v42 == v36 && v43 == v37)
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_30D728();
  }

  return v28 & 1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_246B40(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_246B88(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_246C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_30A4E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_30AA18();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_246D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_30A4E8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_30AA18();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_246E3C()
{
  sub_30A4E8();
  if (v0 <= 0x3F)
  {
    sub_DE4D4(319, &qword_40A638);
    if (v1 <= 0x3F)
    {
      sub_30AA18();
      if (v2 <= 0x3F)
      {
        sub_246F34();
        if (v3 <= 0x3F)
        {
          sub_DE4D4(319, &unk_40A650);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_246F34()
{
  if (!qword_40A640)
  {
    sub_124C4(255, &qword_3FBD90);
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_40A640);
    }
  }
}

uint64_t sub_246F9C(unint64_t *a1, void (*a2)(uint64_t))
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

id FlowRedirectionWrapperViewController.__allocating_init(child:customNextResponder:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews36FlowRedirectionWrapperViewController_child] = a1;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews36FlowRedirectionWrapperViewController_customNextResponder] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

id FlowRedirectionWrapperViewController.init(child:customNextResponder:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews36FlowRedirectionWrapperViewController_child] = a1;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews36FlowRedirectionWrapperViewController_customNextResponder] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall FlowRedirectionWrapperViewController.viewDidLoad()()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews36FlowRedirectionWrapperViewController_child];
  [v0 addChildViewController:v1];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = v2;
  [v2 setAutoresizingMask:18];
  v3 = [v0 view];
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v15 setFrame:{v6, v8, v10, v12}];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 addSubview:v15];

  [v1 didMoveToParentViewController:v0];
}

id (*FlowRedirectionWrapperViewController.preferredContentSize.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews36FlowRedirectionWrapperViewController_child);
  a1[2] = v3;
  [v3 preferredContentSize];
  *a1 = v4;
  a1[1] = v5;
  return sub_247370;
}

uint64_t FlowRedirectionWrapperViewController.actionRunner.getter()
{
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews36FlowRedirectionWrapperViewController_customNextResponder))
  {
    return sub_30C678();
  }

  else
  {
    return 0;
  }
}

uint64_t UITabBarController.currentNavigationTab.getter()
{
  v1 = [v0 selectedIndex];
  if (v1 != sub_308448())
  {
    v4 = [v0 selectedViewController];
    if (sub_303068())
    {
      if (v4)
      {
        v7 = [v4 tab];
        if (v7)
        {
          v8 = v7;
          v5 = sub_30CC18();

          v4 = v8;
        }

        else
        {
          v5 = 19;
        }

        goto LABEL_3;
      }
    }

    else if (v4)
    {
      v4 = v4;
      v9 = [v4 tabBarItem];
      if (v9)
      {
        v10 = v9;
        [v9 tag];
        v5 = sub_308438();
      }

      else
      {

        v5 = 19;
      }

      goto LABEL_3;
    }

    return 19;
  }

  sub_30C788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_315430;
  v3 = [v0 selectedIndex];
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = v3;
  sub_124C4(0, &qword_3FC1C0);
  v4 = sub_30D338();
  sub_304108();

  v5 = 13;
LABEL_3:

  return v5;
}

void UITabBarController.selectTabIfPossible(_:)()
{
  v1 = v0;
  if (UITabBarController.canSelect(navigationTab:)())
  {
    v2 = [v0 tabs];
    sub_124C4(0, &qword_3FE8D8);
    v3 = sub_30C368();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v6 = sub_30D578();
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
            return;
          }

LABEL_8:
          v10 = v6;
          v8 = sub_30CC18();
          v9 = sub_308428();
          sub_1DB3C(v8);
          if (v9)
          {
            goto LABEL_18;
          }

          ++v5;
          if (v7 == v4)
          {
            goto LABEL_17;
          }
        }

        if (v5 < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v4 = sub_30D668();
        if (!v4)
        {
          goto LABEL_17;
        }
      }

      v6 = *(v3 + 8 * v5 + 32);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
    v10 = 0;
LABEL_18:

    [v1 setSelectedTab:v10];
  }
}

uint64_t UITabBarController.canSelect(navigationTab:)()
{
  result = sub_2479C8();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v2 - 1;
    do
    {
      v5 = v3;
      while (1)
      {
        if (v5 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v6 = *(v1 + 32 + 8 * v5);
        if (v6 != 19)
        {
          break;
        }

        sub_308448();
LABEL_5:
        ++v5;
        result = sub_BA54C(v6);
        if (v2 == v5)
        {
          goto LABEL_14;
        }
      }

      sub_BA538(*(v1 + 32 + 8 * v5));
      v7 = sub_308448();
      if (v7 != sub_308448())
      {
        goto LABEL_5;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v13 = v4;
      if ((result & 1) == 0)
      {
        result = sub_175454(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        result = sub_175454((v8 > 1), v9 + 1, 1);
      }

      v3 = v5 + 1;
      _swiftEmptyArrayStorage[2] = v9 + 1;
      _swiftEmptyArrayStorage[v9 + 4] = v6;
      v4 = v13;
    }

    while (v13 != v5);
  }

LABEL_14:

  v10 = _swiftEmptyArrayStorage[2];

  if (v10 == 1)
  {
    sub_247D2C();
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void *sub_2479C8()
{
  if (sub_303068())
  {
    v1 = [v0 tabs];
    sub_124C4(0, &qword_3FE8D8);
    v2 = sub_30C368();

    if (v2 >> 62)
    {
      v3 = sub_30D668();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (v3)
      {
LABEL_4:
        sub_175454(0, v3 & ~(v3 >> 63), 0);
        if ((v3 & 0x8000000000000000) == 0)
        {
          v4 = 0;
          v1 = _swiftEmptyArrayStorage;
          do
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v5 = sub_30D578();
            }

            else
            {
              v5 = *(v2 + 8 * v4 + 32);
            }

            v6 = v5;
            v7 = sub_30CC18();

            v9 = _swiftEmptyArrayStorage[2];
            v8 = _swiftEmptyArrayStorage[3];
            if (v9 >= v8 >> 1)
            {
              sub_175454((v8 > 1), v9 + 1, 1);
            }

            ++v4;
            _swiftEmptyArrayStorage[2] = v9 + 1;
            _swiftEmptyArrayStorage[v9 + 4] = v7;
          }

          while (v3 != v4);
          goto LABEL_39;
        }

        __break(1u);
LABEL_37:
        if (!sub_30D668())
        {
          goto LABEL_39;
        }

        v12 = sub_30D668();
        if (!v12)
        {
          goto LABEL_39;
        }

        goto LABEL_16;
      }
    }

    return _swiftEmptyArrayStorage;
  }

  v10 = [v0 viewControllers];
  v1 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v1;
  }

  v11 = v10;
  sub_124C4(0, &qword_3FBE30);
  v2 = sub_30C368();

  if (v2 >> 62)
  {
    goto LABEL_37;
  }

  v12 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v12)
  {
LABEL_39:

    return v1;
  }

LABEL_16:
  result = sub_175454(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = (v2 & 0xC000000000000001) != 0 ? sub_30D578() : *(v2 + 8 * v14 + 32);
      v16 = v15;
      if ((sub_303068() & 1) == 0)
      {
        break;
      }

      v17 = [v16 tab];
      if (!v17)
      {

LABEL_29:
        v19 = 19;
        goto LABEL_30;
      }

      v18 = v17;
      v19 = sub_30CC18();

LABEL_30:
      v24 = v1[2];
      v23 = v1[3];
      if (v24 >= v23 >> 1)
      {
        sub_175454((v23 > 1), v24 + 1, 1);
      }

      ++v14;
      v1[2] = v24 + 1;
      v1[v24 + 4] = v19;
      if (v12 == v14)
      {
        goto LABEL_39;
      }
    }

    v20 = v16;
    v21 = [v20 tabBarItem];
    if (v21)
    {
      v22 = v21;
      [v21 tag];
      v19 = sub_308438();

      if (v19 != 19)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_247D2C()
{
  result = sub_2479C8();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 32 + 8 * v3);
      if (v4 == 19)
      {
        v5 = 0;
      }

      else
      {
        sub_BA538(*(v1 + 32 + 8 * v3));
        v5 = sub_308448();
      }

      v6 = sub_308448();
      result = sub_BA54C(v4);
      if (v4 != 19 && v5 == v6)
      {
        goto LABEL_14;
      }

      if (v2 == ++v3)
      {
        v3 = 0;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
LABEL_14:

    return v3;
  }

  return result;
}

Swift::Void __swiftcall UINavigationController.popToRoot(animated:)(Swift::Bool animated)
{
  v2 = [v1 popToRootViewControllerAnimated:animated];
}

Swift::Void __swiftcall UINavigationController.pop(animated:)(Swift::Bool animated)
{
  v2 = [v1 popViewControllerAnimated:animated];
}

void sub_247E84(char a1)
{
  v2 = [*v1 popToRootViewControllerAnimated:a1 & 1];
}

void sub_247EC8(char a1)
{
  v2 = [*v1 popViewControllerAnimated:a1 & 1];
}

Swift::Void __swiftcall UITabBarController.popToRoot(animated:)(Swift::Bool animated)
{
  v3 = [v1 selectedViewController];
  if (v3 && (v9[0] = v3, sub_124C4(0, &qword_3FBE30), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1F8), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v7 + 1))
    {
      sub_12658(&v6, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1Tm(v9, v10);
      (*(v5 + 8))(animated, v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v9);
      return;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  sub_24815C(&v6);
}

Swift::Void __swiftcall UITabBarController.pop(animated:)(Swift::Bool animated)
{
  v3 = [v1 selectedViewController];
  if (v3 && (v9[0] = v3, sub_124C4(0, &qword_3FBE30), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1F8), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v7 + 1))
    {
      sub_12658(&v6, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1Tm(v9, v10);
      (*(v5 + 16))(animated, v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v9);
      return;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  sub_24815C(&v6);
}

uint64_t sub_24815C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24823C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_248284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void sub_248308()
{
  v1 = *(v0 + 8);
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) != 2)
    {
      sub_30D0A8();
      return;
    }

    v2 = sub_30C2C8();
    v3 = sub_30C4E8();
    v4 = __OFADD__(v3 ^ v2, 2);
    v5 = (v3 ^ v2) + 2;
    if (!v4)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!*(v0 + 40))
  {
    sub_30C0D8();
    sub_30C1F8();

    sub_30D828(v1);
    return;
  }

  sub_30C0D8();
  v6 = sub_30C2C8();

  v7 = sub_30C4E8();
  v4 = __OFADD__(v7 ^ v6, 1);
  v5 = (v7 ^ v6) + 1;
  if (!v4)
  {
LABEL_9:
    sub_30D808(v5);
    return;
  }

  __break(1u);
}

id sub_2483FC(void *a1)
{
  v2 = v1;
  v4 = sub_3041E8();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(v2 + 40) > 1u)
  {
    if (*(v2 + 40) != 2)
    {
      v14 = [*v2 fontDescriptor];
      v30 = sub_30CE38();
      if (v30)
      {
        v31 = v30;
        v32 = [v14 symbolicTraits];
        v45[0] = v31;
        v45[1] = v32;
        memset(&v45[2], 0, 24);
        v46 = 0;
        v33 = sub_2483FC(a1);

        return v33;
      }

      return v14;
    }

    v19 = *(v2 + 16);
    v11 = *(v2 + 32);
    v20 = [a1 preferredContentSizeCategory];
    v21 = sub_30C0D8();
    v23 = v22;
    if (v21 == sub_30C0D8() && v23 == v24)
    {
    }

    else
    {
      v26 = sub_30D728();

      if ((v26 & 1) == 0)
      {
        v27 = [a1 preferredContentSizeCategory];
LABEL_22:
        v28 = v27;
        v38 = v19();

        v29 = v38;
        goto LABEL_23;
      }
    }

    v35 = [objc_opt_self() system];
    v36 = [v35 preferredContentSizeCategory];

    v37 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v36];
    v27 = [v37 preferredContentSizeCategory];

    goto LABEL_22;
  }

  v11 = *(v2 + 8);
  if (!*(v2 + 40))
  {
    v12 = v6;
    v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:a1];
    v14 = v13;
    if (LODWORD(v11))
    {
      v15 = [v13 fontDescriptorWithSymbolicTraits:*&v11];
      if (v15)
      {
        v16 = v15;
        [v15 pointSize];
        if ((v17 & 0x7FF0000000000000) != 0 || (v17 & 0xFFFFFFFFFFFFFLL) != 0 || ([v14 pointSize], v18 == 0.0))
        {

          return v16;
        }

        else
        {
          sub_304158();
          v14 = v14;
          v40 = sub_3041D8();
          v41 = sub_30C798();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            *v42 = 138412290;
            *(v42 + 4) = v14;
            *v43 = v14;
            v44 = v14;
            _os_log_impl(&dword_0, v40, v41, "Modifying %@ with traits produced malformed derivative, using original", v42, 0xCu);
            sub_24B494(v43);
          }

          (*(v5 + 8))(v9, v12);
        }
      }
    }

    return v14;
  }

  v28 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:a1];
  [v28 pointSize];
LABEL_23:
  v39 = sub_24B004(v29, v11);

  return v39;
}

Swift::Int sub_248878()
{
  sub_30D7F8();
  sub_248308();
  return sub_30D858();
}

Swift::Int sub_2488BC()
{
  sub_30D7F8();
  sub_248308();
  return sub_30D858();
}

uint64_t sub_2488F8(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_24B2A8(&v5, &v7) & 1;
}

double sub_248944()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429830 = sub_30CD78();
  result = 0.0;
  *(&xmmword_429830 + 8) = 0u;
  unk_429848 = 0u;
  BYTE8(xmmword_429850) = 3;
  byte_429889 = 0;
  return result;
}

double sub_2489B0()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429890 = sub_30CC98();
  result = 0.0;
  *(&xmmword_429890 + 8) = 0u;
  unk_4298A8 = 0u;
  BYTE8(xmmword_4298B0) = 3;
  byte_4298E9 = 0;
  return result;
}

double sub_248A1C()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_4298F0 = sub_30CD88();
  result = 0.0;
  *(&xmmword_4298F0 + 8) = 0u;
  unk_429908 = 0u;
  BYTE8(xmmword_429910) = 3;
  byte_429949 = 0;
  return result;
}

double sub_248A88()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429950 = sub_30CCA8();
  result = 0.0;
  *(&xmmword_429950 + 8) = 0u;
  unk_429968 = 0u;
  BYTE8(xmmword_429970) = 3;
  byte_4299A9 = 0;
  return result;
}

double sub_248AF4()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_4299B0 = sub_30CD68();
  result = 0.0;
  *(&xmmword_4299B0 + 8) = 0u;
  unk_4299C8 = 0u;
  BYTE8(xmmword_4299D0) = 3;
  byte_429A09 = 0;
  return result;
}

double sub_248B60()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429A10 = sub_30CDD8();
  result = 0.0;
  *(&xmmword_429A10 + 8) = 0u;
  unk_429A28 = 0u;
  BYTE8(xmmword_429A30) = 3;
  byte_429A69 = 0;
  return result;
}

double sub_248BCC()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429A70 = sub_30CDC8();
  result = 0.0;
  *(&xmmword_429A70 + 8) = 0u;
  unk_429A88 = 0u;
  BYTE8(xmmword_429A90) = 3;
  byte_429AC9 = 0;
  return result;
}

double sub_248C38()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429AD0 = sub_30CE28();
  result = 0.0;
  *(&xmmword_429AD0 + 8) = 0u;
  unk_429AE8 = 0u;
  byte_429AF8 = 3;
  byte_429B29 = 0;
  return result;
}

double sub_248CA4()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429B30 = sub_30CD98();
  result = 0.0;
  *(&xmmword_429B30 + 8) = 0u;
  unk_429B48 = 0u;
  BYTE8(xmmword_429B50) = 3;
  byte_429B89 = 0;
  return result;
}

double sub_248D10()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429B90 = sub_30CCB8();
  result = 0.0;
  *(&xmmword_429B90 + 8) = 0u;
  unk_429BA8 = 0u;
  byte_429BB8 = 3;
  byte_429BE9 = 0;
  return result;
}

double sub_248D7C()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429BF0 = sub_30CDB8();
  result = 0.0;
  *(&xmmword_429BF0 + 8) = 0u;
  unk_429C08 = 0u;
  BYTE8(xmmword_429C10) = 3;
  byte_429C49 = 0;
  return result;
}

double sub_248DE8()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429C50 = sub_30CCC8();
  result = 0.0;
  *(&xmmword_429C50 + 8) = 0u;
  unk_429C68 = 0u;
  BYTE8(xmmword_429C70) = 3;
  byte_429CA9 = 0;
  return result;
}

double sub_248E54()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429CB0 = sub_30CD08();
  result = 0.0;
  *(&xmmword_429CB0 + 8) = 0u;
  unk_429CC8 = 0u;
  BYTE8(xmmword_429CD0) = 3;
  byte_429D09 = 0;
  return result;
}

double sub_248EC0()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429D10 = sub_30CE08();
  result = 0.0;
  *(&xmmword_429D10 + 8) = 0u;
  unk_429D28 = 0u;
  BYTE8(xmmword_429D30) = 3;
  byte_429D69 = 0;
  return result;
}

double sub_248F2C()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429D70 = sub_30CCF8();
  result = 0.0;
  *(&xmmword_429D70 + 8) = 0u;
  unk_429D88 = 0u;
  BYTE8(xmmword_429D90) = 3;
  byte_429DC9 = 0;
  return result;
}

double sub_248F98()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429DD0 = sub_30CDE8();
  result = 0.0;
  *(&xmmword_429DD0 + 8) = 0u;
  unk_429DE8 = 0u;
  BYTE8(xmmword_429DF0) = 3;
  byte_429E29 = 0;
  return result;
}

double sub_249004()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429E30 = sub_30CDF8();
  result = 0.0;
  *(&xmmword_429E30 + 8) = 0u;
  unk_429E48 = 0u;
  BYTE8(xmmword_429E50) = 3;
  byte_429E89 = 0;
  return result;
}

double sub_249070()
{
  sub_124C4(0, &qword_408100);
  *&xmmword_429E90 = sub_30CCE8();
  result = 0.0;
  *(&xmmword_429E90 + 8) = 0u;
  unk_429EA8 = 0u;
  BYTE8(xmmword_429EB0) = 3;
  byte_429EE9 = 0;
  return result;
}

double sub_2490DC()
{
  v0 = UIFontTextStyleHeadline;
  xmmword_429EF0 = xmmword_32EAC0;
  qword_429F00 = sub_2491A0;
  unk_429F08 = 0;
  *&xmmword_429F10 = UIFontWeightRegular;
  BYTE8(xmmword_429F10) = 2;
  qword_429F20 = UIFontTextStyleHeadline;
  result = 0.0;
  *algn_429F28 = 0u;
  *(&xmmword_429F30 + 8) = 0u;
  word_429F48 = 256;
  return result;
}

void sub_2491A8()
{
  v0 = UIFontTextStyleHeadline;
  xmmword_429F50 = xmmword_32EAD0;
  qword_429F60 = sub_2491A0;
  unk_429F68 = 0;
  *&xmmword_429F70 = UIFontWeightBold;
  BYTE8(xmmword_429F70) = 2;
  qword_429F80 = UIFontTextStyleHeadline;
  *algn_429F88 = 2;
  unk_429FA0 = 0;
  xmmword_429F90 = 0uLL;
  word_429FA8 = 256;
}

double sub_24926C()
{
  v0 = UIFontTextStyleSubheadline;
  xmmword_429FB0 = xmmword_32EAE0;
  qword_429FC0 = sub_249330;
  unk_429FC8 = 0;
  *&xmmword_429FD0 = UIFontWeightRegular;
  BYTE8(xmmword_429FD0) = 2;
  qword_429FE0 = UIFontTextStyleSubheadline;
  result = 0.0;
  *algn_429FE8 = 0u;
  *(&xmmword_429FF0 + 8) = 0u;
  word_42A008 = 256;
  return result;
}

double sub_249338()
{
  v0 = UIFontTextStyleCaption1;
  xmmword_42A010 = xmmword_32EAF0;
  qword_42A020 = sub_2493FC;
  unk_42A028 = 0;
  *&xmmword_42A030 = UIFontWeightRegular;
  BYTE8(xmmword_42A030) = 2;
  qword_42A040 = UIFontTextStyleCaption1;
  result = 0.0;
  *algn_42A048 = 0u;
  *(&xmmword_42A050 + 8) = 0u;
  word_42A068 = 256;
  return result;
}

void sub_249404()
{
  v0 = UIFontTextStyleFootnote;
  xmmword_42A070 = xmmword_32EB00;
  qword_42A080 = sub_2494C8;
  unk_42A088 = 0;
  *&xmmword_42A090 = UIFontWeightMedium;
  BYTE8(xmmword_42A090) = 2;
  qword_42A0A0 = UIFontTextStyleFootnote;
  *algn_42A0A8 = 2;
  unk_42A0C0 = 0;
  xmmword_42A0B0 = 0uLL;
  word_42A0C8 = 256;
}

double sub_2494D0()
{
  result = 2.3658684e218;
  xmmword_42A0D0 = xmmword_32EB10;
  qword_42A0E0 = sub_249524;
  unk_42A0E8 = 0;
  *&xmmword_42A0F0 = UIFontWeightBold;
  BYTE8(xmmword_42A0F0) = 2;
  byte_42A129 = 0;
  return result;
}

double sub_249530()
{
  *&result = 0x6C6562616CLL;
  xmmword_42A130 = xmmword_32EB20;
  qword_42A140 = sub_249584;
  unk_42A148 = 0;
  *&xmmword_42A150 = UIFontWeightRegular;
  BYTE8(xmmword_42A150) = 2;
  byte_42A189 = 0;
  return result;
}

double sub_24958C()
{
  result = 3.63552357e233;
  xmmword_42A190 = xmmword_32EB30;
  qword_42A1A0 = sub_249584;
  unk_42A1A8 = 0;
  *&xmmword_42A1B0 = UIFontWeightSemibold;
  BYTE8(xmmword_42A1B0) = 2;
  byte_42A1E9 = 0;
  return result;
}

double sub_2495E0()
{
  if (qword_3FAD38 != -1)
  {
    swift_once();
  }

  v11 = xmmword_429FD0;
  v12 = *&qword_429FE0;
  *v13 = xmmword_429FF0;
  *&v13[10] = *(&xmmword_429FF0 + 10);
  v9 = xmmword_429FB0;
  v10 = *&qword_429FC0;
  v0 = UIFontTextStyleBody;
  sub_8FC54(&v9, v8);

  v8[0] = 0;
  v1 = v9;
  v2 = v10;
  v3 = v11;
  v4 = BYTE8(v11);
  if (v13[25])
  {
    v6 = v10;
    v7 = v9;
    sub_A01F8(v12, *(&v12 + 1), *v13, *&v13[8], *&v13[16], v13[24]);
    v2 = v6;
    v1 = v7;
  }

  xmmword_42A1F0 = v1;
  unk_42A200 = v2;
  *&xmmword_42A210 = v3;
  BYTE8(xmmword_42A210) = v4;
  if (v8[0])
  {
    sub_A01F8(v0, 0, 0, 0, 0, 0);
  }

  qword_42A220 = v0;
  result = 0.0;
  *algn_42A228 = 0u;
  *(&xmmword_42A230 + 8) = 0u;
  word_42A248 = 256;
  return result;
}

void sub_249718()
{
  v0 = UIFontTextStyleFootnote;
  *&xmmword_42A250 = 0xD000000000000010;
  *(&xmmword_42A250 + 1) = 0x80000000003417E0;
  qword_42A260 = sub_2493FC;
  unk_42A268 = 0;
  *&xmmword_42A270 = UIFontWeightRegular;
  BYTE8(xmmword_42A270) = 2;
  qword_42A280 = UIFontTextStyleFootnote;
  *algn_42A288 = UIFontWeightMedium;
  unk_42A2A0 = 0;
  xmmword_42A290 = 0uLL;
  word_42A2A8 = 257;
}

double sub_249800()
{
  v0 = UIFontTextStyleFootnote;
  *&xmmword_42A2B0 = 0xD000000000000013;
  *(&xmmword_42A2B0 + 1) = 0x80000000003417C0;
  qword_42A2C0 = sub_2493FC;
  unk_42A2C8 = 0;
  *&xmmword_42A2D0 = UIFontWeightRegular;
  BYTE8(xmmword_42A2D0) = 2;
  qword_42A2E0 = UIFontTextStyleFootnote;
  result = 0.0;
  *algn_42A2E8 = 0u;
  *(&xmmword_42A2F0 + 8) = 0u;
  word_42A308 = 256;
  return result;
}

void sub_2498DC()
{
  v0 = UIFontTextStyleSubheadline;
  *&xmmword_42A310 = 0xD000000000000013;
  *(&xmmword_42A310 + 1) = 0x80000000003417C0;
  qword_42A320 = sub_2499B8;
  unk_42A328 = 0;
  *&xmmword_42A330 = UIFontWeightHeavy;
  BYTE8(xmmword_42A330) = 2;
  qword_42A340 = UIFontTextStyleSubheadline;
  *algn_42A348 = 2;
  unk_42A360 = 0;
  xmmword_42A350 = 0uLL;
  word_42A368 = 256;
}

void sub_2499C0()
{
  if (qword_3FAD48 != -1)
  {
    swift_once();
  }

  v1[2] = xmmword_42A090;
  v1[3] = *&qword_42A0A0;
  v2[0] = xmmword_42A0B0;
  *(v2 + 10) = *(&xmmword_42A0B0 + 10);
  v1[0] = xmmword_42A070;
  v1[1] = *&qword_42A080;
  sub_8FC54(v1, v3);
  if (qword_3FAD20 != -1)
  {
    swift_once();
  }

  v3[2] = xmmword_429EB0;
  v3[3] = unk_429EC0;
  v4[0] = xmmword_429ED0;
  *(v4 + 10) = *(&xmmword_429ED0 + 10);
  v3[0] = xmmword_429E90;
  v3[1] = unk_429EA0;
  sub_8FC54(v3, &v0);
  sub_F0044(v1, v3, &xmmword_42A370);
}

void sub_249AC4()
{
  if (qword_3FAD38 != -1)
  {
    swift_once();
  }

  v1[2] = xmmword_429FD0;
  v1[3] = *&qword_429FE0;
  v2[0] = xmmword_429FF0;
  *(v2 + 10) = *(&xmmword_429FF0 + 10);
  v1[0] = xmmword_429FB0;
  v1[1] = *&qword_429FC0;
  sub_8FC54(v1, v3);
  if (qword_3FACD0 != -1)
  {
    swift_once();
  }

  v3[2] = unk_429AF0;
  v3[3] = unk_429B00;
  v4[0] = xmmword_429B10;
  *(v4 + 10) = *(&xmmword_429B10 + 10);
  v3[0] = xmmword_429AD0;
  v3[1] = unk_429AE0;
  sub_8FC54(v3, &v0);
  sub_F0044(v1, v3, &xmmword_42A3D0);
}

void sub_249BC8()
{
  if (qword_3FAD40 != -1)
  {
    swift_once();
  }

  v1[2] = xmmword_42A030;
  v1[3] = *&qword_42A040;
  v2[0] = xmmword_42A050;
  *(v2 + 10) = *(&xmmword_42A050 + 10);
  v1[0] = xmmword_42A010;
  v1[1] = *&qword_42A020;
  sub_8FC54(v1, v3);
  if (qword_3FACF8 != -1)
  {
    swift_once();
  }

  v3[2] = xmmword_429CD0;
  v3[3] = unk_429CE0;
  v4[0] = xmmword_429CF0;
  *(v4 + 10) = *(&xmmword_429CF0 + 10);
  v3[0] = xmmword_429CB0;
  v3[1] = unk_429CC0;
  sub_8FC54(v3, &v0);
  sub_F0044(v1, v3, &xmmword_42A430);
}

uint64_t sub_249CCC()
{
  if (qword_3FAD88 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_42A390;
  v2[3] = unk_42A3A0;
  v3[0] = xmmword_42A3B0;
  *(v3 + 10) = *(&xmmword_42A3B0 + 10);
  v2[0] = xmmword_42A370;
  v2[1] = unk_42A380;
  xmmword_42A4C0 = unk_42A3A0;
  xmmword_42A4D0 = xmmword_42A3B0;
  xmmword_42A4A0 = unk_42A380;
  xmmword_42A4B0 = xmmword_42A390;
  *(&xmmword_42A4D0 + 10) = *(&xmmword_42A3B0 + 10);
  xmmword_42A490 = xmmword_42A370;
  return sub_8FC54(v2, &v1);
}

void sub_249D64()
{
  if (qword_3FAD48 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_42A070;
  v13[1] = *&qword_42A080;
  *&v15[10] = *(&xmmword_42A0B0 + 10);
  v13[2] = xmmword_42A090;
  v14 = *&qword_42A0A0;
  *v15 = xmmword_42A0B0;
  v16 = 0;
  v10 = *&qword_42A080;
  v11 = xmmword_42A070;
  v0 = xmmword_42A090;
  v1 = BYTE8(xmmword_42A090);
  if ((word_42A0C8 & 0x100) != 0)
  {
    v3 = *&v15[8];
    v2 = *&v15[16];
    v5 = *(&v14 + 1);
    v4 = *v15;
    v6 = v14;
    v7 = v15[24];
    v8 = UIFontTextStyleCaption2;
    sub_8FC54(v13, v12);
    sub_A01F8(v6, v5, v4, v3, v2, v7);
  }

  else
  {
    v9 = UIFontTextStyleCaption2;
    sub_8FC54(v13, v12);
  }

  xmmword_42A4F0 = v11;
  unk_42A500 = v10;
  *&xmmword_42A510 = v0;
  BYTE8(xmmword_42A510) = v1;
  if (v16)
  {
    sub_A01F8(UIFontTextStyleCaption2, 2, 0, 0, 0, 0);
  }

  qword_42A520 = UIFontTextStyleCaption2;
  *algn_42A528 = 2;
  unk_42A540 = 0;
  xmmword_42A530 = 0uLL;
  word_42A548 = 256;
}

void sub_249ED4()
{
  if (qword_3FAD28 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_429EF0;
  v13[1] = *&qword_429F00;
  *&v15[10] = *(&xmmword_429F30 + 10);
  v13[2] = xmmword_429F10;
  v14 = *&qword_429F20;
  *v15 = xmmword_429F30;
  v16 = 0;
  v10 = *&qword_429F00;
  v11 = xmmword_429EF0;
  v0 = xmmword_429F10;
  v1 = BYTE8(xmmword_429F10);
  if ((word_429F48 & 0x100) != 0)
  {
    v3 = *&v15[8];
    v2 = *&v15[16];
    v5 = *(&v14 + 1);
    v4 = *v15;
    v6 = v14;
    v7 = v15[24];
    v8 = UIFontTextStyleTitle2;
    sub_8FC54(v13, v12);
    sub_A01F8(v6, v5, v4, v3, v2, v7);
  }

  else
  {
    v9 = UIFontTextStyleTitle2;
    sub_8FC54(v13, v12);
  }

  xmmword_42A550 = v11;
  unk_42A560 = v10;
  *&xmmword_42A570 = v0;
  BYTE8(xmmword_42A570) = v1;
  if (v16)
  {
    sub_A01F8(UIFontTextStyleTitle2, 0x8000, 0, 0, 0, 0);
  }

  qword_42A580 = UIFontTextStyleTitle2;
  *algn_42A588 = 0x8000;
  unk_42A5A0 = 0;
  xmmword_42A590 = 0uLL;
  word_42A5A8 = 256;
}

void sub_24A044()
{
  if (qword_3FAD28 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_429EF0;
  v13[1] = *&qword_429F00;
  *&v15[10] = *(&xmmword_429F30 + 10);
  v13[2] = xmmword_429F10;
  v14 = *&qword_429F20;
  *v15 = xmmword_429F30;
  v16 = 0;
  v10 = *&qword_429F00;
  v11 = xmmword_429EF0;
  v0 = xmmword_429F10;
  v1 = BYTE8(xmmword_429F10);
  if ((word_429F48 & 0x100) != 0)
  {
    v3 = *&v15[8];
    v2 = *&v15[16];
    v5 = *(&v14 + 1);
    v4 = *v15;
    v6 = v14;
    v7 = v15[24];
    v8 = UIFontTextStyleTitle2;
    sub_8FC54(v13, v12);
    sub_A01F8(v6, v5, v4, v3, v2, v7);
  }

  else
  {
    v9 = UIFontTextStyleTitle2;
    sub_8FC54(v13, v12);
  }

  xmmword_42A5B0 = v11;
  unk_42A5C0 = v10;
  *&xmmword_42A5D0 = v0;
  BYTE8(xmmword_42A5D0) = v1;
  if (v16)
  {
    sub_A01F8(UIFontTextStyleTitle2, 0x8000, 0, 0, 0, 0);
  }

  qword_42A5E0 = UIFontTextStyleTitle2;
  *algn_42A5E8 = 0x8000;
  unk_42A600 = 0;
  xmmword_42A5F0 = 0uLL;
  word_42A608 = 256;
}

void sub_24A1B4()
{
  if (qword_3FACD8 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_429B30;
  v13[1] = unk_429B40;
  *&v15[10] = *(&xmmword_429B70 + 10);
  v13[2] = xmmword_429B50;
  v14 = unk_429B60;
  *v15 = xmmword_429B70;
  v16 = 0;
  v10 = unk_429B40;
  v11 = xmmword_429B30;
  v0 = xmmword_429B50;
  v1 = BYTE8(xmmword_429B50);
  if (byte_429B89)
  {
    v3 = *&v15[8];
    v2 = *&v15[16];
    v5 = *(&v14 + 1);
    v4 = *v15;
    v6 = v14;
    v7 = v15[24];
    v8 = UIFontTextStyleFootnote;
    sub_8FC54(v13, v12);
    sub_A01F8(v6, v5, v4, v3, v2, v7);
  }

  else
  {
    v9 = UIFontTextStyleFootnote;
    sub_8FC54(v13, v12);
  }

  xmmword_42A610 = v11;
  unk_42A620 = v10;
  *&xmmword_42A630 = v0;
  BYTE8(xmmword_42A630) = v1;
  if (v16)
  {
    sub_A01F8(UIFontTextStyleFootnote, 0x8000, 0, 0, 0, 0);
  }

  qword_42A640 = UIFontTextStyleFootnote;
  *algn_42A648 = 0x8000;
  unk_42A660 = 0;
  xmmword_42A650 = 0uLL;
  word_42A668 = 256;
}

double sub_24A324()
{
  v0 = sub_30B5B8();
  xmmword_42A670 = xmmword_32EB40;
  qword_42A680 = sub_249330;
  unk_42A688 = 0;
  *&xmmword_42A690 = UIFontWeightRegular;
  BYTE8(xmmword_42A690) = 2;
  qword_42A6A0 = v0;
  result = 0.0;
  *algn_42A6A8 = 0u;
  *(&xmmword_42A6B0 + 8) = 0u;
  word_42A6C8 = 256;
  return result;
}

void sub_24A3E4()
{
  *&xmmword_42A6D0 = 0xD000000000000018;
  *(&xmmword_42A6D0 + 1) = 0x8000000000341840;
  qword_42A6E0 = sub_24A448;
  unk_42A6E8 = 0;
  *&xmmword_42A6F0 = UIFontWeightBold;
  BYTE8(xmmword_42A6F0) = 2;
  byte_42A729 = 0;
}

void sub_24A454()
{
  if (qword_3FAD60 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_42A190;
  v13[1] = *&qword_42A1A0;
  *&v15[10] = *(&xmmword_42A1D0 + 10);
  v13[2] = xmmword_42A1B0;
  v14 = unk_42A1C0;
  *v15 = xmmword_42A1D0;
  v16 = 0;
  v10 = *&qword_42A1A0;
  v11 = xmmword_42A190;
  v0 = xmmword_42A1B0;
  v1 = BYTE8(xmmword_42A1B0);
  if (byte_42A1E9)
  {
    v3 = *&v15[8];
    v2 = *&v15[16];
    v5 = *(&v14 + 1);
    v4 = *v15;
    v6 = v14;
    v7 = v15[24];
    v8 = UIFontTextStyleSubheadline;
    sub_8FC54(v13, v12);
    sub_A01F8(v6, v5, v4, v3, v2, v7);
  }

  else
  {
    v9 = UIFontTextStyleSubheadline;
    sub_8FC54(v13, v12);
  }

  xmmword_42A730 = v11;
  unk_42A740 = v10;
  *&xmmword_42A750 = v0;
  BYTE8(xmmword_42A750) = v1;
  if (v16)
  {
    sub_A01F8(UIFontTextStyleSubheadline, 32770, 0, 0, 0, 0);
  }

  qword_42A760 = UIFontTextStyleSubheadline;
  *algn_42A768 = 32770;
  unk_42A780 = 0;
  xmmword_42A770 = 0uLL;
  word_42A788 = 256;
}

double sub_24A5C4()
{
  if (qword_3FAD40 != -1)
  {
    swift_once();
  }

  v11 = xmmword_42A030;
  v12 = *&qword_42A040;
  *v13 = xmmword_42A050;
  *&v13[10] = *(&xmmword_42A050 + 10);
  v9 = xmmword_42A010;
  v10 = *&qword_42A020;
  v0 = UIFontTextStyleSubheadline;
  sub_8FC54(&v9, v8);

  v8[0] = 0;
  v1 = v9;
  v2 = v10;
  v3 = v11;
  v4 = BYTE8(v11);
  if (v13[25])
  {
    v6 = v10;
    v7 = v9;
    sub_A01F8(v12, *(&v12 + 1), *v13, *&v13[8], *&v13[16], v13[24]);
    v2 = v6;
    v1 = v7;
  }

  xmmword_42A790 = v1;
  unk_42A7A0 = v2;
  *&xmmword_42A7B0 = v3;
  BYTE8(xmmword_42A7B0) = v4;
  if (v8[0])
  {
    sub_A01F8(v0, 0, 0, 0, 0, 0);
  }

  qword_42A7C0 = v0;
  result = 0.0;
  *algn_42A7C8 = 0u;
  *(&xmmword_42A7D0 + 8) = 0u;
  word_42A7E8 = 256;
  return result;
}

double sub_24A6FC()
{
  if (qword_3FAD40 != -1)
  {
    swift_once();
  }

  v11 = xmmword_42A030;
  v12 = *&qword_42A040;
  *v13 = xmmword_42A050;
  *&v13[10] = *(&xmmword_42A050 + 10);
  v9 = xmmword_42A010;
  v10 = *&qword_42A020;
  v0 = UIFontTextStyleSubheadline;
  sub_8FC54(&v9, v8);

  v8[0] = 0;
  v1 = v9;
  v2 = v10;
  v3 = v11;
  v4 = BYTE8(v11);
  if (v13[25])
  {
    v6 = v10;
    v7 = v9;
    sub_A01F8(v12, *(&v12 + 1), *v13, *&v13[8], *&v13[16], v13[24]);
    v2 = v6;
    v1 = v7;
  }

  xmmword_42A7F0 = v1;
  unk_42A800 = v2;
  *&xmmword_42A810 = v3;
  BYTE8(xmmword_42A810) = v4;
  if (v8[0])
  {
    sub_A01F8(v0, 0, 0, 0, 0, 0);
  }

  qword_42A820 = v0;
  result = 0.0;
  *algn_42A828 = 0u;
  *(&xmmword_42A830 + 8) = 0u;
  word_42A848 = 256;
  return result;
}

double sub_24A834()
{
  if (qword_3FAD58 != -1)
  {
    swift_once();
  }

  v11 = xmmword_42A150;
  v12 = unk_42A160;
  *v13 = xmmword_42A170;
  *&v13[10] = *(&xmmword_42A170 + 10);
  v9 = xmmword_42A130;
  v10 = *&qword_42A140;
  v0 = UIFontTextStyleBody;
  sub_8FC54(&v9, v8);

  v8[0] = 0;
  v1 = v9;
  v2 = v10;
  v3 = v11;
  v4 = BYTE8(v11);
  if (v13[25])
  {
    v6 = v10;
    v7 = v9;
    sub_A01F8(v12, *(&v12 + 1), *v13, *&v13[8], *&v13[16], v13[24]);
    v2 = v6;
    v1 = v7;
  }

  xmmword_42A850 = v1;
  unk_42A860 = v2;
  *&xmmword_42A870 = v3;
  BYTE8(xmmword_42A870) = v4;
  if (v8[0])
  {
    sub_A01F8(v0, 0, 0, 0, 0, 0);
  }

  qword_42A880 = v0;
  result = 0.0;
  *algn_42A888 = 0u;
  *(&xmmword_42A890 + 8) = 0u;
  word_42A8A8 = 256;
  return result;
}

double sub_24A96C()
{
  if (qword_3FAD58 != -1)
  {
    swift_once();
  }

  v11 = xmmword_42A150;
  v12 = unk_42A160;
  *v13 = xmmword_42A170;
  *&v13[10] = *(&xmmword_42A170 + 10);
  v9 = xmmword_42A130;
  v10 = *&qword_42A140;
  v0 = UIFontTextStyleBody;
  sub_8FC54(&v9, v8);

  v8[0] = 0;
  v1 = v9;
  v2 = v10;
  v3 = v11;
  v4 = BYTE8(v11);
  if (v13[25])
  {
    v6 = v10;
    v7 = v9;
    sub_A01F8(v12, *(&v12 + 1), *v13, *&v13[8], *&v13[16], v13[24]);
    v2 = v6;
    v1 = v7;
  }

  xmmword_42A8B0 = v1;
  unk_42A8C0 = v2;
  *&xmmword_42A8D0 = v3;
  BYTE8(xmmword_42A8D0) = v4;
  if (v8[0])
  {
    sub_A01F8(v0, 0, 0, 0, 0, 0);
  }

  qword_42A8E0 = v0;
  result = 0.0;
  *algn_42A8E8 = 0u;
  *(&xmmword_42A8F0 + 8) = 0u;
  word_42A908 = 256;
  return result;
}

__n128 sub_24AAA4()
{
  if (qword_3FAD58 != -1)
  {
    swift_once();
  }

  v12[0] = xmmword_42A130;
  v12[1] = *&qword_42A140;
  *(v14 + 10) = *(&xmmword_42A170 + 10);
  v12[2] = xmmword_42A150;
  v13 = unk_42A160;
  v14[0] = xmmword_42A170;
  v9 = *&qword_42A140;
  v10 = xmmword_42A130;
  v0 = xmmword_42A150;
  v1 = BYTE8(xmmword_42A150);
  if (byte_42A189)
  {
    v3 = *(&v14[0] + 1);
    v2 = *&v14[1];
    v5 = *(&v13 + 1);
    v4 = *&v14[0];
    v6 = v13;
    v7 = BYTE8(v14[1]);
    sub_8FC54(v12, v11);
    sub_A01F8(v6, v5, v4, v3, v2, v7);
  }

  else
  {
    sub_8FC54(v12, v11);
  }

  result = v9;
  xmmword_42A910 = v10;
  unk_42A920 = v9;
  *&xmmword_42A930 = v0;
  BYTE8(xmmword_42A930) = v1;
  qword_42A940 = 0xD000000000000012;
  unk_42A948 = 0x8000000000341820;
  *&xmmword_42A950 = sub_249330;
  *(&xmmword_42A950 + 1) = 0;
  qword_42A960 = *&UIFontWeightRegular;
  word_42A968 = 258;
  return result;
}

__n128 sub_24AC00()
{
  if (qword_3FAD60 != -1)
  {
    swift_once();
  }

  v12[0] = xmmword_42A190;
  v12[1] = *&qword_42A1A0;
  *(v14 + 10) = *(&xmmword_42A1D0 + 10);
  v12[2] = xmmword_42A1B0;
  v13 = unk_42A1C0;
  v14[0] = xmmword_42A1D0;
  v9 = *&qword_42A1A0;
  v10 = xmmword_42A190;
  v0 = xmmword_42A1B0;
  v1 = BYTE8(xmmword_42A1B0);
  if (byte_42A1E9)
  {
    v3 = *(&v14[0] + 1);
    v2 = *&v14[1];
    v5 = *(&v13 + 1);
    v4 = *&v14[0];
    v6 = v13;
    v7 = BYTE8(v14[1]);
    sub_8FC54(v12, v11);
    sub_A01F8(v6, v5, v4, v3, v2, v7);
  }

  else
  {
    sub_8FC54(v12, v11);
  }

  result = v9;
  xmmword_42A970 = v10;
  unk_42A980 = v9;
  *&xmmword_42A990 = v0;
  BYTE8(xmmword_42A990) = v1;
  qword_42A9A0 = 0xD000000000000012;
  unk_42A9A8 = 0x8000000000341800;
  *&xmmword_42A9B0 = sub_249330;
  *(&xmmword_42A9B0 + 1) = 0;
  qword_42A9C0 = *&UIFontWeightBold;
  word_42A9C8 = 258;
  return result;
}

void sub_24AD5C()
{
  if (qword_3FAD30 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_429F50;
  v13[1] = *&qword_429F60;
  *&v15[10] = *(&xmmword_429F90 + 10);
  v13[2] = xmmword_429F70;
  v14 = *&qword_429F80;
  *v15 = xmmword_429F90;
  v16 = 0;
  v10 = *&qword_429F60;
  v11 = xmmword_429F50;
  v0 = xmmword_429F70;
  v1 = BYTE8(xmmword_429F70);
  if ((word_429FA8 & 0x100) != 0)
  {
    v3 = *&v15[8];
    v2 = *&v15[16];
    v5 = *(&v14 + 1);
    v4 = *v15;
    v6 = v14;
    v7 = v15[24];
    v8 = UIFontTextStyleTitle1;
    sub_8FC54(v13, v12);
    sub_A01F8(v6, v5, v4, v3, v2, v7);
  }

  else
  {
    v9 = UIFontTextStyleTitle1;
    sub_8FC54(v13, v12);
  }

  xmmword_42A9D0 = v11;
  unk_42A9E0 = v10;
  *&xmmword_42A9F0 = v0;
  BYTE8(xmmword_42A9F0) = v1;
  if (v16)
  {
    sub_A01F8(UIFontTextStyleTitle1, 2, 0, 0, 0, 0);
  }

  qword_42AA00 = UIFontTextStyleTitle1;
  *algn_42AA08 = 2;
  unk_42AA20 = 0;
  xmmword_42AA10 = 0uLL;
  word_42AA28 = 256;
}

double sub_24AECC()
{
  if (qword_3FAD38 != -1)
  {
    swift_once();
  }

  v11 = xmmword_429FD0;
  v12 = *&qword_429FE0;
  *v13 = xmmword_429FF0;
  *&v13[10] = *(&xmmword_429FF0 + 10);
  v9 = xmmword_429FB0;
  v10 = *&qword_429FC0;
  v0 = UIFontTextStyleSubheadline;
  sub_8FC54(&v9, v8);

  v8[0] = 0;
  v1 = v9;
  v2 = v10;
  v3 = v11;
  v4 = BYTE8(v11);
  if (v13[25])
  {
    v6 = v10;
    v7 = v9;
    sub_A01F8(v12, *(&v12 + 1), *v13, *&v13[8], *&v13[16], v13[24]);
    v2 = v6;
    v1 = v7;
  }

  xmmword_42AA30 = v1;
  unk_42AA40 = v2;
  *&xmmword_42AA50 = v3;
  BYTE8(xmmword_42AA50) = v4;
  if (v8[0])
  {
    sub_A01F8(v0, 0, 0, 0, 0, 0);
  }

  qword_42AA60 = v0;
  result = 0.0;
  *algn_42AA68 = 0u;
  *(&xmmword_42AA70 + 8) = 0u;
  word_42AA88 = 256;
  return result;
}

id sub_24B004(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A6F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  if (qword_3FAC90 != -1)
  {
    swift_once();
  }

  v5 = qword_40A6E8;
  *(inited + 32) = qword_40A6E8;
  *(inited + 40) = sub_30C0D8();
  *(inited + 48) = v6;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = UIFontWeightTrait;
  v7 = objc_allocWithZone(NSNumber);
  v8 = v5;
  v9 = UIFontWeightTrait;
  v10 = [v7 initWithDouble:a2];
  v11 = sub_124C4(0, &qword_4053E0);
  *(inited + 104) = v11;
  *(inited + 80) = v10;
  v12 = sub_2D6750(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A6F8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A700);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_315420;
  *(v13 + 32) = UIFontDescriptorSizeAttribute;
  v14 = objc_allocWithZone(NSNumber);
  v15 = UIFontDescriptorSizeAttribute;
  *(v13 + 40) = [v14 initWithDouble:a1];
  *(v13 + 64) = v11;
  *(v13 + 72) = UIFontDescriptorTraitsAttribute;
  *(v13 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A708);
  *(v13 + 80) = v12;
  v16 = UIFontDescriptorTraitsAttribute;
  sub_2D6878(v13);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40A710);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(UIFontDescriptor);
  type metadata accessor for AttributeName(0);
  sub_24B4FC();
  isa = sub_30BF88().super.isa;

  v19 = [v17 initWithFontAttributes:isa];

  return v19;
}

uint64_t sub_24B2A8(double *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a1 + 40) > 1u)
  {
    if (*(a1 + 40) == 2)
    {
      if (*(a2 + 40) == 2)
      {
        v12 = a1[4];
        v13 = *(a2 + 32);
        v14 = *&v3 == *a2 && *&v4 == *(a2 + 8);
        if (v14 || (sub_30D728() & 1) != 0)
        {
          return v12 == v13;
        }
      }
    }

    else if (*(a2 + 40) == 3)
    {
      sub_124C4(0, &qword_40A690);
      return sub_30D098() & 1;
    }

    return 0;
  }

  if (*(a1 + 40))
  {
    if (*(a2 + 40) == 1)
    {
      v16 = *(a2 + 8);
      v17 = sub_30C0D8();
      v19 = v18;
      if (v17 == sub_30C0D8() && v19 == v20)
      {
      }

      else
      {
        v22 = sub_30D728();

        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      return v16 == v4;
    }

    return 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = sub_30C0D8();
  v8 = v7;
  if (v6 != sub_30C0D8() || v8 != v9)
  {
    v11 = sub_30D728();

    if (v11)
    {
      return v5 == LODWORD(v4);
    }

    return 0;
  }

  return v5 == LODWORD(v4);
}

uint64_t sub_24B494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B4FC()
{
  result = qword_3FB6B8;
  if (!qword_3FB6B8)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB6B8);
  }

  return result;
}

void sub_24B5E4(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a2[2])
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
LABEL_3:
    v10 = 0;
LABEL_10:
    v9 = 0;
LABEL_11:
    v7 = 0;
LABEL_12:
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_13;
  }

  if (!a3)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (!a4)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  if (!a5)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    goto LABEL_3;
  }

  if (!a6)
  {

    v12 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v14 = *a2;
  v15 = a2[1];
  v12 = a1;
LABEL_13:
  *a7 = v12;
  *(a7 + 8) = v8;
  *(a7 + 16) = v14;
  *(a7 + 32) = v15;
  *(a7 + 48) = v10;
  *(a7 + 56) = v9;
  *(a7 + 64) = v7;
}

__n128 sub_24B778@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_40A748 + 32);
  result = *(v1 + qword_40A748);
  v4 = *(v1 + qword_40A748 + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_24B7B0@<Q0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *(v1 + qword_40A748 + 32);
  v5 = *(v1 + qword_40A748 + 16);
  v12[0] = *(v1 + qword_40A748);
  v12[1] = v5;
  v13 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + qword_40A758);
  swift_unknownObjectRetain();
  sub_24B5E4(Strong, v12, v6, v7, v8, v9, v14);
  v10 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v10;
  *(a1 + 64) = v15;
  result = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = result;
  return result;
}

id sub_24B8A8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_24C4F8(v8);

  return v12;
}

id sub_24B934()
{
  sub_24C5A0();
  v0 = swift_unknownObjectRetain();

  return v0;
}

id sub_24B96C()
{
  sub_24C5B4();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_24B9CC(uint64_t a1)
{
  *(v1 + qword_40A758) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*(v1 + qword_40A768))
  {
    sub_24B7B0(v5);
    type metadata accessor for FullScreenTransitionContext();
  }

  else
  {
    *&v2 = sub_24B7B0(v5).n128_u64[0];
    if (v5[0])
    {
      [v5[8] completeTransition:{0, v2}];
    }

    type metadata accessor for FullScreenTransitionContext();
  }

  v3 = sub_30D3A8();
  return (*(*(v3 - 8) + 8))(v5, v3);
}

void sub_24BB04(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_24B9CC(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_24BBA4(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + qword_40A770;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

void sub_24BBC0(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = [a1 view];
  [a1 translationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([a1 state] == &dword_0 + 1)
  {
    v9 = (v1 + qword_40A770);
    *v9 = v6;
    v9[1] = v8;
    *(v9 + 16) = 0;
    *(v1 + qword_40A768) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }

  v12 = (v1 + qword_40A770);
  if ((*(v1 + qword_40A770 + 16) & 1) == 0 && *(v1 + qword_40A758))
  {
    v53 = v12[1];
    v54 = *v12;
    v13 = [swift_unknownObjectRetain() containerView];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v57.origin.x = v15;
    v57.origin.y = v17;
    v57.size.width = v19;
    v57.size.height = v21;
    v22 = CGRectGetWidth(v57) * 0.5;
    v58.origin.x = v15;
    v58.origin.y = v17;
    v58.size.width = v19;
    v58.size.height = v21;
    Height = CGRectGetHeight(v58);
    v24 = v8 - v53;
    v25 = v6 - v54 + v22;
    v26 = v24 + Height * 0.5;
    v27 = [a1 state];
    if (v27 != &dword_0 + 3)
    {
      if (v27 != &dword_0 + 2)
      {
        type metadata accessor for FullScreenTransitionContext();
        v41 = sub_30D3A8();
        (*(*(v41 - 8) + 8))(v56, v41);
        swift_unknownObjectRelease();
        return;
      }

      v28 = swift_unknownObjectUnownedLoadStrong();
      [v28 setCenter:{v25, v26}];

      swift_unknownObjectRelease();
      goto LABEL_30;
    }

    v29 = [a1 view];
    [a1 velocityInView:v29];
    v31 = v30;
    v33 = v32;

    v34 = hypot(v31, v33) / 500.0;
    v35 = fabs(v31);
    v36 = v35 * v34;
    v37 = fabs(v33);
    v38 = v37 * v34;
    if (v36 > v38)
    {
      v38 = v36;
    }

    if (v38 > 50.0)
    {
      v38 = 50.0;
    }

    if (v31 == 0.0 && v33 == 0.0)
    {
      v39 = 0.0;
      if (v37 >= v35)
      {
LABEL_16:
        v40 = v38;
        v38 = v38 * v39;
LABEL_26:
        if (v38 > v40)
        {
          v44 = v38;
        }

        else
        {
          v44 = v40;
        }

        v45 = v44 / 50.0 * 0.2;
        v46 = v25 + v38;
        v47 = v26 + v40;
        v48 = objc_opt_self();
        v49 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v50 = swift_allocObject();
        *(v50 + 16) = *(v3 + 80);
        *(v50 + 24) = *(v3 + 88);
        *(v50 + 32) = v49;
        *(v50 + 40) = v46;
        *(v50 + 48) = v47;
        aBlock[4] = sub_24C4D0;
        aBlock[5] = v50;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_914CC;
        aBlock[3] = &block_descriptor_50;
        v51 = _Block_copy(aBlock);

        [v48 animateWithDuration:0x20000 delay:v51 options:0 animations:v45 completion:0.0];
        swift_unknownObjectRelease();
        _Block_release(v51);
LABEL_30:
        type metadata accessor for FullScreenTransitionContext();
        v52 = sub_30D3A8();
        (*(*(v52 - 8) + 8))(v56, v52);
        return;
      }
    }

    else
    {
      if (v35 > v37)
      {
        v42 = v35;
      }

      else
      {
        v42 = v37;
      }

      v43 = v37 < v35;
      if (v37 < v35)
      {
        v35 = v37;
      }

      v39 = v35 / v42;
      if (!v43)
      {
        goto LABEL_16;
      }
    }

    v40 = v38 * v39;
    goto LABEL_26;
  }
}

void sub_24C090(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectUnownedLoadStrong();

    [v6 setCenter:{a1, a2}];
  }
}

void sub_24C120(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_24BBC0(v4);
}

id sub_24C1C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenTransitionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_24C238(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectUnownedDestroy();

  return swift_unknownObjectRelease();
}

unint64_t sub_24C2F0()
{
  result = qword_40A858[0];
  if (!qword_40A858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_40A858);
  }

  return result;
}

void sub_24C344(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong view];

  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + qword_40A750))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 *a1];
}

void sub_24C3FC()
{
  sub_24C344(&selRef_removeGestureRecognizer_);
  swift_unknownObjectWeakAssign();
  sub_24C344(&selRef_addGestureRecognizer_);
}

uint64_t sub_24C460()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_24C498()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24C4F8(void *a1)
{
  if (!swift_dynamicCastUnknownClass())
  {
    return 0;
  }

  swift_unknownObjectWeakAssign();
  v3 = a1;
  sub_24C3FC();

  *(v1 + qword_40A738) = 1;
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_24C5A0()
{
  result = v0;
  *(v0 + qword_40A738) = 0;
  return result;
}

uint64_t sub_24C5FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24C668(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24C6B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24C744(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v36.origin.x = UIEdgeInsetsInsetRect(a9, a10, a11, a12, a1, a2);
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  v28 = CGRectGetMinX(v37);
  if (MinX <= v28)
  {
    MinX = v28;
  }

  v38.origin.x = MinX;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MinY = CGRectGetMinY(v38);
  v39.origin.x = a5;
  v39.origin.y = a6;
  v39.size.width = a7;
  v39.size.height = a8;
  v30 = CGRectGetMinY(v39);
  if (MinY <= v30)
  {
    MinY = v30;
  }

  v40.origin.x = MinX;
  v40.origin.y = MinY;
  v40.size.width = width;
  v40.size.height = height;
  MaxX = CGRectGetMaxX(v40);
  v41.origin.x = a5;
  v41.origin.y = a6;
  v41.size.width = a7;
  v41.size.height = a8;
  v32 = CGRectGetMaxX(v41);
  if (v32 < MaxX)
  {
    MaxX = v32;
  }

  v42.origin.x = MinX;
  v42.origin.y = MinY;
  v42.size.width = width;
  v42.size.height = height;
  v33 = MaxX - CGRectGetMinX(v42);
  v43.origin.x = MinX;
  v43.origin.y = MinY;
  v43.size.width = v33;
  v43.size.height = height;
  CGRectGetMaxY(v43);
  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  CGRectGetMaxY(v44);
  v45.origin.x = MinX;
  v45.origin.y = MinY;
  v45.size.width = v33;
  v45.size.height = height;
  CGRectGetMinY(v45);
  return MinX;
}

uint64_t NSDirectionalRectEdge.resolved(with:)(uint64_t a1, char a2)
{
  if ((a2 & 2) == 0)
  {
    if ((a2 & 8) == 0)
    {
      result = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result |= 1uLL;
      goto LABEL_19;
    }

    v3 = 0;
    if (a1 == 1)
    {
      v4 = 2;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a1 == 1)
  {
    if ((a2 & 8) != 0)
    {
      v3 = 8;
      v4 = 2;
      goto LABEL_17;
    }

    result = 8;
    if (a2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 8) != 0)
    {
      v3 = 2;
LABEL_16:
      v4 = 8;
LABEL_17:
      result = v3 | v4;
      if ((a2 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    result = 2;
    if (a2)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  if ((a2 & 4) != 0)
  {
    return result | 4;
  }

  return result;
}

uint64_t UIGestureRecognizerHandling<>.addHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = objc_getAssociatedObject(v4, &unk_40A8E0);
  swift_endAccess();
  if (v8)
  {
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v18 = 0u;
  }

  v19[0] = v16;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4025D8);
    if (swift_dynamicCast())
    {
      v9 = v15;
      goto LABEL_9;
    }
  }

  else
  {
    sub_9097C(v19);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_9:
  v17 = v9;
  type metadata accessor for GestureRecognizerHandler();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  v12 = v4;

  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v12, sub_24CEC0, v10, a3);

  sub_30C348();
  if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v17 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  isa = sub_30C358().super.isa;

  swift_beginAccess();
  objc_setAssociatedObject(v12, &unk_40A8E0, isa, &dword_0 + 1);
  swift_endAccess();

  return v11;
}

uint64_t GestureRecognizerHandler.__allocating_init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  *(v4 + 24) = sub_24CF08;
  *(v4 + 32) = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    [v11 addTarget:v4 action:"handleActionFromGestureRecognizer:"];
  }

  return v4;
}

void sub_24CCC8(void *a1, void (*a2)(uint64_t))
{
  v4 = swift_dynamicCastUnknownClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    a2(v5);
  }
}

uint64_t GestureRecognizerHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t GestureRecognizerHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_24CE88()
{

  return _swift_deallocObject(v0, 40, 7);
}

void UIGestureRecognizerHandling<>.removeHandler(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, &unk_40A8E0);
  swift_endAccess();
  if (v4)
  {
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4025D8);
    if (swift_dynamicCast())
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  else
  {
    sub_9097C(v14);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_9:
  *&v14[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (v6)
  {
    while (1)
    {
      v10 = v2;
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_30D578();
        v2 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v2 = v10;
          goto LABEL_25;
        }

LABEL_17:
        if (v8 == a1)
        {
        }

        else
        {
          sub_30D5A8();
          sub_30D5E8();
          sub_30D5F8();
          sub_30D5B8();
        }

        ++v7;
        if (v2 == v6)
        {
          goto LABEL_22;
        }
      }

      if (v7 < *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      __break(1u);
LABEL_24:
      v6 = sub_30D668();
      if (!v6)
      {
        goto LABEL_25;
      }
    }

    v8 = *(v5 + 8 * v7 + 32);

    v2 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_25:

  type metadata accessor for GestureRecognizerHandler();
  isa = sub_30C358().super.isa;

  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_40A8E0, isa, &dword_0 + 1);
  swift_endAccess();
}

id GlyphButton.init(frame:glyph:color:style:layout:autolayoutMode:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, double a8, double a9, double a10, double a11)
{
  v12 = v11;
  v19 = &v11[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v19 = 0;
  v19[1] = 0;
  *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v21 = objc_opt_self();
  v22 = [v21 systemGray6Color];
  v23 = [v21 systemGray5Color];
  v24 = sub_30CFB8();

  *&v12[v20] = v24;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v12[v25] = [objc_allocWithZone(UIImageView) init];
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v27 = [objc_allocWithZone(UIView) init];
  [v27 setClipsToBounds:1];
  [v27 setUserInteractionEnabled:0];
  *&v12[v26] = v27;
  v28 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v29 = [objc_opt_self() effectWithStyle:16];
  v30 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v29];

  v31 = v30;
  [v31 setUserInteractionEnabled:0];
  [v31 setClipsToBounds:1];

  *&v12[v28] = v31;
  *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v32 = &v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v32 = 0;
  v32[1] = 0;
  v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v33 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v34 = sub_3029E8();
  (*(*(v34 - 8) + 56))(&v12[v33], 1, 1, v34);
  v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph;
  v36 = sub_302AB8();
  v37 = *(v36 - 8);
  (*(v37 + 16))(&v12[v35], a1, v36);
  swift_beginAccess();
  sub_A8088(a2, &v12[v33]);
  swift_endAccess();
  v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = a3;
  v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v38 = *&v12[v25];
  v39 = sub_250990(a4 & 1, v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = &v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *v46 = v39;
  *(v46 + 1) = v41;
  *(v46 + 2) = v43;
  v46[24] = v45 & 1;
  v54.receiver = v12;
  v54.super_class = type metadata accessor for GlyphButton();
  v47 = objc_msgSendSuper2(&v54, "initWithFrame:", a8, a9, a10, a11);
  sub_24DE30();
  sub_24F788(a5, a6, a7 & 1);

  sub_EB68(a2, &unk_4080B0);
  (*(v37 + 8))(a1, v36);
  return v47;
}

uint64_t sub_24D62C()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24D684(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_2506C4(a1, a2, *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout), *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 8), *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 16), *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24));
}

void (*sub_24D724(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24D7AC;
}

void sub_24D7AC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = *v5;
    v12 = v5[1];

    sub_2506C4(v11, v12, v7, v8, v9, v10);
  }

  free(v3);
}

id sub_24D858()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_24D8AC(void *a1)
{
  sub_252B30(a1);
}

void (*sub_24D8E4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24D96C;
}

void sub_24D96C(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
    swift_beginAccess();
    if (*(v4 + v5) == 1)
    {
      v6 = [*(v3 + 24) tintColor];
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = *(v3 + 24);
      v6 = *(v7 + *(v3 + 32));
    }

    [*(v7 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView) setBackgroundColor:v6];
  }

  free(v3);
}

id sub_24DA38()
{
  v1 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView) firstBaselineAnchor];

  return v1;
}

uint64_t sub_24DA78()
{
  v1 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView) _groupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_30C0D8();

  return v3;
}

void sub_24DAE8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v6 = [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView) _groupName];
  if (v6)
  {
    v7 = v6;
    v8 = sub_30C0D8();
    v10 = v9;

    if (!a2)
    {

      v13 = *(v2 + v5);
      v14 = 0;
      goto LABEL_12;
    }

    if (v8 == a1 && v10 == a2)
    {

LABEL_16:

      return;
    }

    v12 = sub_30D728();

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return;
  }

  v13 = *(v2 + v5);
  v14 = sub_30C098();

LABEL_12:
  [v13 _setGroupName:v14];
}

void (*sub_24DC68(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView) _groupName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_30C0D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_A8900;
}

uint64_t sub_24DCF8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24DD3C(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_24E1B8();
  }
}

void (*sub_24DD9C(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_A880C;
}

void sub_24DE30()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  [v0 insertSubview:*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView] atIndex:0];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  [v0 insertSubview:*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView] aboveSubview:*&v0[v1]];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  [v0 addSubview:v3];

  v4 = *&v0[v2];
  v5 = [v0 tintColor];
  [v4 setBackgroundColor:v5];

  v6 = *&v0[v2];
  v7 = [v6 superview];
  if (v7)
  {
    v8 = v7;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_31D480;
    v11 = [v6 leftAnchor];
    v12 = [v8 leftAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v10 + 32) = v13;
    v14 = [v6 rightAnchor];
    v15 = [v8 rightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v10 + 40) = v16;
    v17 = [v6 topAnchor];
    v18 = [v8 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v10 + 48) = v19;
    v20 = [v6 bottomAnchor];
    v21 = [v8 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v10 + 56) = v22;
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;

    [v9 activateConstraints:isa];
  }

  v24 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v0];
  [v0 addInteraction:v24];

  [v0 setAdjustsImageWhenHighlighted:0];

  sub_24E1B8();
}

void sub_24E1B8()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  swift_beginAccess();
  if (!*&v0[v2] || (v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground, swift_beginAccess(), v4 = v0[v3], v4 != 1))
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
    swift_beginAccess();
    LOBYTE(v4) = v0[v5] ^ 1;
  }

  [v1 setHidden:v4 & 1];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v7 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView];
  if (!*&v0[v2] || (v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground, swift_beginAccess(), v9 = v0[v8], v9 != 1))
  {
    v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
    swift_beginAccess();
    if (v0[v10])
    {
      if (v0[v10] == 1)
      {
        v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
        swift_beginAccess();
        LOBYTE(v9) = v0[v11] ^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  [v7 setHidden:v9 & 1];
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
  swift_beginAccess();
  if (v0[v12])
  {
    v13 = [v0 tintColor];
  }

  else
  {
    v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
    swift_beginAccess();
    v13 = *&v0[v14];
  }

  v15 = v13;
  [*&v0[v6] setBackgroundColor:v13];

  sub_24FD84();
  sub_24E460();
}

uint64_t sub_24E3AC()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_24E3FC(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2542EC;
}

void sub_24E460()
{
  v1 = v0;
  v2 = sub_302AB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
  swift_beginAccess();
  v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView);
  if (*(v1 + v6) == 1)
  {
    v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v8, v2);
    v9 = v7;
    v10 = sub_302A08();
    (*(v3 + 8))(v5, v2);
    v11 = objc_allocWithZone(type metadata accessor for GlyphMaskLayer());
    v12 = sub_25247C(v10);
    [v9 bounds];
    [v12 setFrame:?];
    v13 = [v9 layer];
    [v13 setMask:v12];

    [v12 setNeedsDisplay];
  }

  else
  {
    v9 = [v7 layer];
    [v9 setMask:0];
    v12 = 0;
  }

  v14 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask) = v12;
}

uint64_t sub_24E67C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph;
  swift_beginAccess();
  v4 = sub_302AB8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24E704(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_302AB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_254294(&qword_40AA40, &type metadata accessor for Glyph);
  LOBYTE(v11) = sub_30C018();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_24FD84();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void (*sub_24E914(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = sub_302AB8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_24EA6C;
}

void sub_24EA6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_24E704(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_24E704(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

void *sub_24EB18()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24EB64(void *a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_250E38();
}

void (*sub_24EBE8(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_24EC84;
}

void sub_24EC84(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v6);
  if (a2)
  {
    v8 = v3;
    if (v7)
    {
      [v7 removeFromSuperview];
      v7 = *(v5 + v6);
      v5 = v2[4];
      v6 = v2[5];
    }

    *(v5 + v6) = v3;
    v10 = v8;

    sub_250E38();
    v9 = *v4;
  }

  else
  {
    if (v7)
    {
      [*(v5 + v6) removeFromSuperview];
      v7 = *(v5 + v6);
      v5 = v2[4];
      v6 = v2[5];
    }

    *(v5 + v6) = v3;
    v9 = v3;

    sub_250E38();
  }

  free(v2);
}

uint64_t sub_24ED68()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24EDB8(char a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  sub_24E1B8();
}

uint64_t (*sub_24EE08(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EE6C;
}

void sub_24EE70(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24E1B8();
  }
}

void sub_24EEA4(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  v6 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  v7 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock + 8];
  *v5 = a2;
  v5[1] = a3;

  *&v8 = sub_2B8D4(v6, v7).n128_u64[0];
  if ((v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] & 1) == 0)
  {
    v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 1;
    [v3 layoutIfNeeded];
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v4;
    v19 = sub_B0740;
    v20 = v10;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_914CC;
    v18 = &block_descriptor_51;
    v11 = _Block_copy(&v15);
    v12 = v3;

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = sub_B0764;
    v20 = v13;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_2504C4;
    v18 = &block_descriptor_8;
    v14 = _Block_copy(&v15);

    [v9 animateWithDuration:65540 delay:v11 options:v14 animations:0.2 completion:0.0];
    _Block_release(v14);
    _Block_release(v11);
  }
}

void sub_24F094()
{
  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] == 1)
  {
    v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
    v1 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
    v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
    if (v2)
    {
      v3 = v1[1];

      v2(v4);
      sub_2B8D4(v2, v3);
      v5 = *v1;
    }

    else
    {
      v5 = 0;
    }

    v6 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    sub_2B8D4(v5, v6);
    v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
    swift_beginAccess();
    v8 = *&v0[v7];
    if (v8)
    {
      [v8 setAlpha:0.0];
    }

    v9 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView];
    CGAffineTransformMakeScale(&v16, 0.3, 0.3);
    [v9 setTransform:&v16];
    v10 = *&v0[v7];
    if (v10)
    {
      CGAffineTransformMakeScale(&v16, 0.3, 0.3);
      [v10 setTransform:&v16];
    }

    if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24] == 1)
    {
      v11 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 16];
      [v11 setHidden:1];
      [v11 setAlpha:0.0];
    }

    [v0 layoutIfNeeded];
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    *&v16.tx = sub_25428C;
    *&v16.ty = v13;
    *&v16.a = _NSConcreteStackBlock;
    *&v16.b = 1107296256;
    *&v16.c = sub_914CC;
    *&v16.d = &block_descriptor_90;
    v14 = _Block_copy(&v16);
    v15 = v0;

    [v12 animateWithDuration:131076 delay:v14 options:0 animations:0.2 completion:0.0];
    _Block_release(v14);
  }
}

uint64_t sub_24F314@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  swift_beginAccess();
  return sub_EB00(v1 + v3, a1, &unk_4080B0);
}

uint64_t sub_24F37C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  swift_beginAccess();
  sub_EB00(v1 + v6, v5, &unk_4080B0);
  swift_beginAccess();
  sub_A8088(a1, v1 + v6);
  swift_endAccess();
  sub_2515AC(v5);
  sub_EB68(a1, &unk_4080B0);
  return sub_EB68(v5, &unk_4080B0);
}

void (*sub_24F488(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_EB00(v1 + v8, v7, &unk_4080B0);
  return sub_24F5B8;
}

void sub_24F5B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_EB00(*(*a1 + 96), v6, &unk_4080B0);
    sub_EB00(v7 + v4, v5, &unk_4080B0);
    swift_beginAccess();
    sub_A8088(v6, v7 + v4);
    swift_endAccess();
    sub_2515AC(v5);
    sub_EB68(v5, &unk_4080B0);
  }

  else
  {
    sub_EB00(v7 + v4, v6, &unk_4080B0);
    swift_beginAccess();
    sub_A8088(v3, v7 + v4);
    swift_endAccess();
    sub_2515AC(v6);
  }

  sub_EB68(v6, &unk_4080B0);
  sub_EB68(v3, &unk_4080B0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

void sub_24F724(objc_class *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView);
  v4 = v3;
  v5 = v3;
  v7.value.super.super.isa = a1;
  v7.is_nil = 0;
  UIVisualEffectView.setBlurEffect(_:animated:)(v7, v4);
}

void sub_24F788(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if ((a3 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!(a1 | a2))
  {
    if (v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24] == 1)
    {
      v13 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
      [v4 setContentCompressionResistancePriority:0 forAxis:0.0];
      LODWORD(v14) = 1148846080;
      [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView] setContentHuggingPriority:0 forAxis:v14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_321500;
      v16 = v13;
      v17 = [v16 centerXAnchor];
      v18 = [v4 centerXAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];

      *(inited + 32) = v19;
      v20 = [v4 widthAnchor];
      v21 = [v20 constraintGreaterThanOrEqualToConstant:28.0];

      *(inited + 40) = v21;
      v22 = [v4 widthAnchor];
      v23 = [v16 widthAnchor];
      v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];

      *(inited + 48) = v24;
      v25 = [v4 heightAnchor];
      v26 = [v25 constraintEqualToConstant:28.0];

      *(inited + 56) = v26;
      v27 = [v16 widthAnchor];
      v28 = [v4 widthAnchor];
      v29 = [v27 constraintEqualToAnchor:v28];

      LODWORD(v30.rawValue) = 1144750080;
      isa = sub_30CA28(v30).super.isa;

      *(inited + 64) = isa;
      v32 = [v16 heightAnchor];
      v33 = [v4 heightAnchor];
      v34 = [v32 constraintLessThanOrEqualToAnchor:v33];

      *(inited + 72) = v34;
      v35 = [v16 centerYAnchor];

      v36 = [v4 centerYAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];

      *(inited + 80) = v37;
      sub_14A360(inited);

      goto LABEL_13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_317F20;
    v43 = [v3 widthAnchor];
    v44 = [v43 constraintEqualToConstant:28.0];

    *(v7 + 32) = v44;
    v10 = [v4 heightAnchor];
    v11 = [v10 constraintEqualToConstant:28.0];
    goto LABEL_7;
  }

  if (a1 ^ 1 | a2)
  {
    v38 = [v3 widthAnchor];
    v39 = [v4 heightAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    sub_30C348();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
  }

  else if (v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24])
  {
    __break(1u);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_317F20;
    v8 = [v3 heightAnchor];
    v9 = [v8 constraintEqualToConstant:*&a2];

    *(v7 + 32) = v9;
    v10 = [v4 widthAnchor];
    v11 = [v10 constraintEqualToConstant:*&a1];
LABEL_7:
    v12 = v11;

    *(v7 + 40) = v12;
    sub_14A360(v7);
  }

LABEL_13:
  v41 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  v42 = sub_30C358().super.isa;

  [v41 activateConstraints:v42];
}

void sub_24FD84()
{
  v1 = v0;
  v2 = sub_302AB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  swift_beginAccess();
  sub_EB00(&v1[v12], v11, &unk_4080B0);
  v13 = sub_3029E8();
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13);
  sub_EB68(v11, &unk_4080B0);
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v15], v2);
  if (v14 == 1)
  {
    v16 = sub_302A08();
  }

  else
  {
    sub_EB00(&v1[v12], v9, &unk_4080B0);
    v16 = sub_3029F8();
    sub_EB68(v9, &unk_4080B0);
  }

  (*(v3 + 8))(v5, v2);
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
  swift_beginAccess();
  if ((v1[v17] & 1) != 0 || (v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay, swift_beginAccess(), *&v1[v18]))
  {
    v19 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView];
    [v19 setImage:0];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView] setImage:v16];
    [v1 setNeedsLayout];
  }
}

id GlyphButton.__allocating_init(frame:glyph:color:style:layout:autolayoutMode:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, double a8, double a9, double a10, double a11)
{
  v18 = objc_allocWithZone(v11);
  v19 = &v18[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v19 = 0;
  v19[1] = 0;
  *&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v21 = objc_opt_self();
  v22 = [v21 systemGray6Color];
  v23 = [v21 systemGray5Color];
  v24 = sub_30CFB8();

  *&v18[v20] = v24;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v18[v25] = [objc_allocWithZone(UIImageView) init];
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v27 = [objc_allocWithZone(UIView) init];
  [v27 setClipsToBounds:1];
  [v27 setUserInteractionEnabled:0];
  *&v18[v26] = v27;
  v28 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v29 = [objc_opt_self() effectWithStyle:16];
  v30 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v29];

  v31 = v30;
  [v31 setUserInteractionEnabled:0];
  [v31 setClipsToBounds:1];

  *&v18[v28] = v31;
  *&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v18[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v32 = &v18[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v32 = 0;
  v32[1] = 0;
  v18[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v33 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v34 = sub_3029E8();
  (*(*(v34 - 8) + 56))(&v18[v33], 1, 1, v34);
  v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph;
  v36 = sub_302AB8();
  v37 = *(v36 - 8);
  (*(v37 + 16))(&v18[v35], a1, v36);
  swift_beginAccess();
  sub_A8088(a2, &v18[v33]);
  swift_endAccess();
  v18[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = a3;
  v18[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v38 = *&v18[v25];
  v39 = sub_250990(a4 & 1, v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = &v18[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *v46 = v39;
  *(v46 + 1) = v41;
  *(v46 + 2) = v43;
  v46[24] = v45 & 1;
  v55.receiver = v18;
  v55.super_class = v51;
  v47 = objc_msgSendSuper2(&v55, "initWithFrame:", a8, a9, a10, a11);
  sub_24DE30();
  sub_24F788(a5, a6, a7 & 1);

  sub_EB68(a2, &unk_4080B0);
  (*(v37 + 8))(a1, v36);
  return v47;
}

uint64_t sub_2504C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

Swift::Int GlyphButton.Style.hashValue.getter(unsigned __int8 a1)
{
  sub_30D7F8();
  sub_30D808(a1);
  return sub_30D858();
}

void sub_250620(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = (*a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle);
  swift_beginAccess();
  *v5 = v2;
  v5[1] = v3;

  v6 = v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout;
  v7 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout);
  v8 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);

  sub_2506C4(v2, v3, v7, v8, v9, v10);
}

void sub_2506C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    v9 = a3;
    v10 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
    sub_120F0();
    if (sub_30D398())
    {
      [v10 setText:{0, a1, a2}];
      [v10 setHidden:1];
      [v9 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }

    else
    {
      if (a2)
      {
        v11 = sub_30C098();
      }

      else
      {
        v11 = 0;
      }

      [v10 setText:{v11, a1, a2}];

      [v10 setHidden:0];
      v12 = qword_3FAE20;
      v13 = v9;
      if (v12 != -1)
      {
        v15 = v13;
        swift_once();
        v13 = v15;
      }

      v14 = *&qword_40A9C0;
      if (qword_3FAE28 != -1)
      {
        v16 = v13;
        v17 = qword_40A9C0;
        swift_once();
        v14 = *&v17;
        v13 = v16;
      }

      [v13 setDirectionalLayoutMargins:{0.0, v14, 0.0, *&qword_40A9C8}];
    }
  }
}

void sub_2508B8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView) _groupName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_30C0D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_25092C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v5 != v2)
  {
    sub_24E1B8();
  }
}

id sub_250990(char a1, void *a2)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(UILabel) init];
    v4 = objc_opt_self();
    sub_302918();
    v5 = [v4 boldSystemFontOfSize:?];
    [v3 setFont:v5];

    v6 = v3;
    [v6 setHidden:1];
    v7 = [objc_opt_self() labelColor];
    [v6 setTextColor:v7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_317F20;
    *(v8 + 32) = a2;
    *(v8 + 40) = v6;
    v9 = objc_allocWithZone(UIStackView);
    sub_124C4(0, &qword_3FBD90);
    a2;
    isa = sub_30C358().super.isa;

    v11 = [v9 initWithArrangedSubviews:isa];

    [v11 setAxis:0];
    [v11 setSpacing:3.0];
    v12 = v11;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setUserInteractionEnabled:0];

    [v12 setAlignment:2];
    [v12 setLayoutMarginsRelativeArrangement:1];
  }

  else
  {
    v12 = a2;
  }

  v13 = a2;
  return v12;
}

uint64_t type metadata accessor for GlyphButton()
{
  result = qword_40AA88;
  if (!qword_40AA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_250C40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph;
  swift_beginAccess();
  v5 = sub_302AB8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_250CCC(uint64_t a1)
{
  v2 = sub_302AB8();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_24E704(v5);
}

void sub_250D98(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = v2;
  if (v5)
  {
    [v5 removeFromSuperview];
    v5 = *(v3 + v4);
  }

  *(v3 + v4) = v2;
  v7 = v6;

  sub_250E38();
}

void sub_250E38()
{
  v1 = v0;
  sub_24E1B8();
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v3;
    [v0 addSubview:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_31D480;
    v7 = [v4 leadingAnchor];
    v8 = [v1 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    *(v6 + 32) = v9;
    v10 = [v4 trailingAnchor];
    v11 = [v1 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v6 + 40) = v12;
    v13 = [v4 topAnchor];
    v14 = [v1 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v6 + 48) = v15;
    v16 = [v4 bottomAnchor];
    v17 = [v1 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v6 + 56) = v18;
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;

    [v5 activateConstraints:isa];
  }
}

id sub_2510D8(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  [*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView) setAlpha:0.0];
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  swift_beginAccess();
  [*(a1 + v5) setAlpha:0.0];
  v6 = *(a1 + v4);
  CGAffineTransformMakeScale(&v17, 0.3, 0.3);
  if (a2)
  {
    CGAffineTransformRotate(&v16, &v17, 1.57079633);
    v7 = *&v16.a;
    v8 = *&v16.c;
    v9 = *&v16.tx;
  }

  else
  {
    v7 = *&v17.a;
    v8 = *&v17.c;
    v9 = *&v17.tx;
  }

  *&v17.a = v7;
  *&v17.c = v8;
  *&v17.tx = v9;
  result = [v6 setTransform:&v17];
  v11 = *(a1 + v5);
  if (v11)
  {
    CGAffineTransformMakeScale(&v17, 0.3, 0.3);
    if (a2)
    {
      CGAffineTransformRotate(&v16, &v17, 1.57079633);
      v12 = *&v16.a;
      v13 = *&v16.c;
      v14 = *&v16.tx;
    }

    else
    {
      v12 = *&v17.a;
      v13 = *&v17.c;
      v14 = *&v17.tx;
    }

    *&v17.a = v12;
    *&v17.c = v13;
    *&v17.tx = v14;
    result = [v11 setTransform:&v17];
  }

  if (*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24) == 1)
  {
    v15 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 16);
    [v15 setHidden:1];
    return [v15 setAlpha:0.0];
  }

  return result;
}

void sub_25128C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24F094();
  }
}

id sub_2512E0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  [*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView) setAlpha:1.0];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  swift_beginAccess();
  [*(a1 + v3) setAlpha:1.0];
  v4 = *(a1 + v2);
  v14 = 0x3FF0000000000000;
  v15 = 0;
  v16 = 0;
  v17 = 0x3FF0000000000000;
  v18 = 0;
  v19 = 0;
  [v4 setTransform:&v14];
  v5 = *(a1 + v3);
  v14 = 0x3FF0000000000000;
  v15 = 0;
  v16 = 0;
  v17 = 0x3FF0000000000000;
  v18 = 0;
  v19 = 0;
  result = [v5 setTransform:&v14];
  if (*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24) == 1)
  {
    v7 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 16);
    v8 = [v7 text];
    if (v8)
    {
      v9 = v8;
      v10 = sub_30C0D8();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v14 = v10;
    v15 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
    sub_120F0();
    v13 = sub_30D398();

    [v7 setHidden:v13 & 1];

    return [v7 setAlpha:1.0];
  }

  return result;
}

uint64_t sub_251460(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  sub_EB00(a1, &v13[-v8], &unk_4080B0);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  swift_beginAccess();
  sub_EB00(v10 + v11, v6, &unk_4080B0);
  swift_beginAccess();
  sub_A8088(v9, v10 + v11);
  swift_endAccess();
  sub_2515AC(v6);
  sub_EB68(v6, &unk_4080B0);
  return sub_EB68(v9, &unk_4080B0);
}

void sub_2515AC(uint64_t a1)
{
  v3 = sub_3029E8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AB50);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_EB00(a1, v12, &unk_4080B0);
  sub_EB00(v1 + v13, &v12[v14], &unk_4080B0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_EB68(v12, &unk_4080B0);
      return;
    }

    goto LABEL_6;
  }

  sub_EB00(v12, v8, &unk_4080B0);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_EB68(v12, &qword_40AB50);
LABEL_7:
    sub_24FD84();
    return;
  }

  v16 = v19;
  (*(v4 + 32))(v19, &v12[v14], v3);
  sub_254294(&qword_40AB58, &type metadata accessor for Glyph.Color);
  v17 = sub_30C018();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_EB68(v12, &unk_4080B0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_2518F8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for GlyphButton();
  objc_msgSendSuper2(&v5, "tintColorDidChange");
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    v2 = [v0 tintColor];
  }

  else
  {
    v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
    swift_beginAccess();
    v2 = *&v0[v3];
  }

  v4 = v2;
  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView] setBackgroundColor:v2];
}

void sub_251A0C()
{
  v1 = sub_30D6F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GlyphButton();
  v36.receiver = v0;
  v36.super_class = v5;
  objc_msgSendSuper2(&v36, "layoutSubviews");
  [v0 bounds];
  v7 = v6;
  [v0 bounds];
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 * 0.5;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v12 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView] layer];
  [v12 setCornerRadius:v10];

  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v14 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView] layer];
  [v14 setCornerRadius:v10];

  v15 = *&v0[v11];
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
  swift_beginAccess();
  LODWORD(v16) = v0[v16];
  v17 = v15;
  [v0 bounds];
  if (v16 == 1)
  {
    *&v18 = CGRectInset(*&v18, 2.0, 2.0);
  }

  [v17 setFrame:{v18, v19, v20, v21}];

  v22 = [*&v0[v13] layer];
  v23 = [v22 mask];

  if (v23)
  {
    [v0 bounds];
    [v23 setFrame:?];
  }

  if ((v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24] & 1) == 0)
  {
    v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
    v25 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView];
    [v0 bounds];
    CGRectGetWidth(v37);
    [v0 bounds];
    CGRectGetHeight(v38);
    (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v1);
    sub_302E78();
    v27 = v26;
    sub_302E78();
    v29 = v28;
    (*(v2 + 8))(v4, v1);
    [v25 setCenter:{v27, v29}];

    v30 = *&v0[v24];
    [v0 bounds];
    [v30 sizeThatFits:{v31, v32}];
    [v30 setBounds:{0.0, 0.0, v33, v34}];
  }
}

id sub_251DF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlyphButton();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_251EF0(char a1)
{
  v3 = type metadata accessor for GlyphButton();
  v9.receiver = v1;
  v9.super_class = v3;
  v4 = objc_msgSendSuper2(&v9, "isHighlighted");
  v8.receiver = v1;
  v8.super_class = v3;
  objc_msgSendSuper2(&v8, "setHighlighted:", a1 & 1);
  result = [v1 isHighlighted];
  if (v4 != result)
  {
    v6 = [v1 isHighlighted];
    v7 = 1.0;
    if (v6)
    {
      v7 = 0.5;
    }

    return [v1 setAlpha:v7];
  }

  return result;
}

uint64_t sub_251FD4()
{

  sub_2541F4(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout), *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 8), *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 16), *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24));
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph;
  v2 = sub_302AB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2B8D4(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock), *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock + 8));
  return sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color, &unk_4080B0);
}

void (*sub_252254(uint64_t **a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24DD9C(v2);
  return sub_A9A78;
}

void (*sub_2522C4(uint64_t **a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24D8E4(v2);
  return sub_A9A78;
}

void (*sub_252338(uint64_t **a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24DC68(v2);
  return sub_A8F58;
}

uint64_t sub_2523A8(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

char *sub_25247C(void *a1)
{
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14GlyphMaskLayer_symbolImage] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for GlyphMaskLayer();
  v3 = objc_msgSendSuper2(&v11, "init");
  v4 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews14GlyphMaskLayer_symbolImage];
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews14GlyphMaskLayer_symbolImage] = a1;
  v5 = v3;
  v6 = a1;

  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  [v5 setContentsScale:v9];
  return v5;
}

void sub_2525C0(CGContext *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14GlyphMaskLayer_symbolImage];
  if (v2)
  {
    v27 = v2;
    v4 = [v27 CGImage];
    if (v4)
    {
      v5 = v4;
      [v1 bounds];
      Width = CGRectGetWidth(v30);
      [v27 size];
      v8 = (Width - v7) * 0.5;
      [v1 bounds];
      Height = CGRectGetHeight(v31);
      [v27 size];
      v11 = (Height - v10) * 0.5;
      [v27 size];
      v13 = v12;
      v15 = v14;
      [v27 contentInsets];
      v18 = UIEdgeInsetsInsetRect(v8, v11, v13, v15, v16, v17);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [v1 bounds];
      transform.b = 0.0;
      transform.c = 0.0;
      transform.a = 1.0;
      *&transform.d = xmmword_32EFA0;
      transform.ty = CGRectGetHeight(v32);
      CGContextConcatCTM(a1, &transform);
      v25 = [objc_opt_self() blackColor];
      v26 = [v25 CGColor];

      CGContextSetFillColorWithColor(a1, v26);
      [v1 bounds];
      CGContextFillRect(a1, v33);
      v34.origin.x = v18;
      v34.origin.y = v20;
      v34.size.width = v22;
      v34.size.height = v24;
      CGContextClipToMask(a1, v34, v5);
      [v1 bounds];
      CGContextClearRect(a1, v35);
    }

    else
    {
    }
  }
}

id sub_2528AC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void GlyphButton.pointerInteraction(_:willExit:animator:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
    swift_beginAccess();
    if (*(v0 + v2) == 2)
    {
      v3 = v1;
      sub_252B30(v3);
    }
  }
}

UIPointerRegion_optional __swiftcall GlyphButton.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v4 = defaultRegion.super.isa;
  isa = defaultRegion.super.isa;
  result.value.super.isa = isa;
  result.is_nil = v5;
  return result;
}

void sub_252B30(void *a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
  swift_beginAccess();
  if (v1[v6] == 1)
  {
    v7 = [v1 tintColor];
  }

  else
  {
    v7 = *&v1[v3];
  }

  v8 = v7;
  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView] setBackgroundColor:v7];
}

uint64_t sub_252BFC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252C4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void _s23ShelfKitCollectionViews11GlyphButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask) = 0;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v4 = objc_opt_self();
  v5 = [v4 systemGray6Color];
  v6 = [v4 systemGray5Color];
  v7 = sub_30CFB8();

  *(v1 + v3) = v7;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *(v1 + v8) = [objc_allocWithZone(UIImageView) init];
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v10 = [objc_allocWithZone(UIView) init];
  [v10 setClipsToBounds:1];
  [v10 setUserInteractionEnabled:0];
  *(v1 + v9) = v10;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v12 = [objc_opt_self() effectWithStyle:16];
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v12];

  v14 = v13;
  [v14 setUserInteractionEnabled:0];
  [v14 setClipsToBounds:1];

  *(v1 + v11) = v14;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground) = 1;
  v15 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress) = 0;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v17 = sub_3029E8();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  sub_30D648();
  __break(1u);
}

uint64_t _s23ShelfKitCollectionViews11GlyphButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0kH0C_So0K6RegionCtF_0(void *a1)
{
  v3 = sub_304568();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AB40);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = [a1 view];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(UITargetedPreview) initWithView:v14];
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  swift_beginAccess();
  if (*(v1 + v17) - 1 > 1)
  {
    v27 = sub_3043E8();
    (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  }

  else
  {
    [v15 frame];
    v31 = CGRectInset(v30, -2.0, -2.0);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    v22 = CGRectGetHeight(v31);
    *v13 = x;
    *(v13 + 1) = y;
    *(v13 + 2) = width;
    *(v13 + 3) = height;
    *(v13 + 4) = v22 * 0.5;
    v23 = enum case for UIPointerShape.roundedRect(_:);
    v24 = sub_3043E8();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v13, v23, v24);
    (*(v25 + 56))(v13, 0, 1, v24);
  }

  sub_124C4(0, &qword_40AB48);
  *v6 = v16;
  (*(v4 + 104))(v6, enum case for UIPointerEffect.highlight(_:), v3);
  sub_EB00(v13, v9, &qword_40AB40);
  v26 = sub_30C7E8();

  sub_EB68(v13, &qword_40AB40);
  return v26;
}

void _s23ShelfKitCollectionViews11GlyphButtonC18pointerInteraction_9willEnter8animatorySo09UIPointerH0C_So0L6RegionCSo0lH9Animating_ptF_0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  swift_beginAccess();
  if (v0[v1] == 2)
  {
    v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
    swift_beginAccess();
    v3 = *&v0[v2];
    v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor];
    *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = v3;
    v5 = v3;

    v6 = [v0 traitCollection];
    [v6 userInterfaceStyle];

    v7 = *&v0[v2];
    v8 = sub_30D008();

    sub_252B30(v8);
  }
}

unint64_t sub_253374()
{
  result = qword_40AA48;
  if (!qword_40AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40AA48);
  }

  return result;
}

unint64_t sub_2533CC()
{
  result = qword_40AA50;
  if (!qword_40AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40AA50);
  }

  return result;
}

unint64_t sub_253424()
{
  result = qword_40AA58;
  if (!qword_40AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40AA58);
  }

  return result;
}

uint64_t sub_253478@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_2534D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_25353C(id *a1)
{
  v1 = *a1;
  sub_252B30(v1);
}

void sub_25358C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_24DAE8(v1, v2);
}

uint64_t sub_2535CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_253648@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void keypath_set_16Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  sub_24E1B8();
}

uint64_t sub_253720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  swift_beginAccess();
  return sub_EB00(v3 + v4, a2, &unk_4080B0);
}

void sub_253798()
{
  sub_302AB8();
  if (v0 <= 0x3F)
  {
    sub_253FF4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_253FF4()
{
  if (!qword_40AA98)
  {
    sub_3029E8();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_40AA98);
    }
  }
}

uint64_t getEnumTagSinglePayload for GlyphButton.AutolayoutMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlyphButton.AutolayoutMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_2540AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2540C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_254148(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_254190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_2541F4(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_254254()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_254294(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2542F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_31D480;
  *(v0 + 32) = [objc_opt_self() clearColor];
  *(v0 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.07];
  *(v0 + 48) = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.14];
  result = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.14];
  *(v0 + 56) = result;
  qword_40AB60 = v0;
  return result;
}

CAGradientLayerType sub_2543F8()
{
  if (qword_3FAE30 != -1)
  {
    swift_once();
  }

  xmmword_42AAB0 = qword_40AB60;
  qword_42AAC0 = &off_3B4658;
  *algn_42AAC8 = xmmword_317F30;
  *(&xmmword_42AAD0 + 8) = xmmword_317F40;
  qword_42AAE8 = kCAGradientLayerAxial;

  return kCAGradientLayerAxial;
}

uint64_t _s23ShelfKitCollectionViews8GradientV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  if ((sub_15794C(*a1, *a2) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v2)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    v14 = sub_15794C(v2, v8);

    if ((v14 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v8)
  {
    goto LABEL_15;
  }

  if (!v3)
  {
    if (v9)
    {
      return v3 & 1;
    }

    v17 = v5 == v11 && v4 == v10;
    v18 = v17 && v7 == v13;
    if (!v18 || v6 != v12)
    {
      return v3 & 1;
    }

    goto LABEL_29;
  }

  if (!v9)
  {
LABEL_15:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v15 = sub_157B8C(v3, v9);
  LOBYTE(v3) = 0;
  if ((v15 & 1) == 0 || v5 != v11 || v4 != v10 || v7 != v13 || v6 != v12)
  {
    return v3 & 1;
  }

LABEL_29:
  v20 = sub_30C0D8();
  v22 = v21;
  if (v20 == sub_30C0D8() && v22 == v23)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    LOBYTE(v3) = sub_30D728();
  }

  return v3 & 1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_254638(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_254680(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_254748(Class isa)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (!isa)
  {
    goto LABEL_16;
  }

  v5 = v4;
  if (!(isa >> 62))
  {
    v6 = *(&dword_10 + (isa & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:

LABEL_15:
    isa = sub_30C358().super.isa;

    v4 = v5;
LABEL_16:
    [v4 setColors:isa];

    return;
  }

  v6 = sub_30D668();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v17 = _swiftEmptyArrayStorage;
  sub_1751E4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v17;
    do
    {
      if ((isa & 0xC000000000000001) != 0)
      {
        v9 = sub_30D578();
      }

      else
      {
        v9 = *(isa + v7 + 4);
      }

      v10 = v9;
      v11 = [v9 CGColor];
      type metadata accessor for CGColor(0);
      v16 = v12;

      *&v15 = v11;
      v17 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_1751E4((v13 > 1), v14 + 1, 1);
        v8 = v17;
      }

      ++v7;
      v8[2] = v14 + 1;
      sub_1DA94(&v15, &v8[4 * v14 + 4]);
    }

    while (v6 != v7);

    goto LABEL_15;
  }

  __break(1u);
}

void sub_254934(uint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (a1)
  {
    v5 = v4;
    v6 = *(a1 + 16);
    if (v6)
    {
      v10 = _swiftEmptyArrayStorage;
      sub_30D5D8();
      v7 = 32;
      do
      {
        [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + v7)];
        sub_30D5A8();
        sub_30D5E8();
        sub_30D5F8();
        sub_30D5B8();
        v7 += 8;
        --v6;
      }

      while (v6);
    }

    sub_124C4(0, &qword_4053E0);
    isa = sub_30C358().super.isa;

    [v5 setLocations:{isa, isa, v10}];
  }

  else
  {
    [v4 setLocations:{0, 0, v10}];
  }
}

uint64_t sub_254AD8(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient];
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient + 16];
  v26[0] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient];
  v26[1] = v3;
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient + 48];
  v26[2] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient + 32];
  v26[3] = v4;
  v5 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v5;
  v6 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v6;
  result = sub_17302C(v26);
  v8 = *(v2 + 1);
  v27 = *v2;
  v28 = v8;
  v9 = *(v2 + 3);
  v29 = *(v2 + 2);
  v30 = v9;
  if (v27)
  {
    v10 = *(&v28 + 1);
    v11 = v29;
    v12 = v30;
    v13 = *(v2 + 1);
    v25[0] = *v2;
    v25[1] = v13;
    v14 = *(v2 + 3);
    v25[2] = *(v2 + 2);
    v25[3] = v14;
    v15 = *&v25[0];
    if (*&v25[0])
    {
      v16 = *(&v25[0] + 1);
      sub_254E60(&v27, v24);
      sub_254E60(v25, v24);

      v17 = [v1 traitCollection];
      v18 = [v17 userInterfaceStyle];

      if (v18 == &dword_0 + 2 && v16)
      {
      }

      else
      {
        v16 = v15;
      }

      sub_254748(v16);
      sub_17302C(v25);
    }

    else
    {

      v19 = *(&v12 + 1);
    }

    sub_254934(v20);
    v21 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v10, *&v11}];

    v22 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{*(&v11 + 1), *&v12}];

    v23 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setType:*(&v12 + 1)];

    return sub_17302C(&v27);
  }

  return result;
}

id sub_254D4C(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for GradientView();
  result = objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient + 16];
  v13[0] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient];
  v13[1] = v4;
  v5 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient + 48];
  v13[2] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient + 32];
  v13[3] = v5;
  v6 = *&v13[0];
  if (*&v13[0])
  {
    v7 = *(&v13[0] + 1);
    sub_254E60(v13, &v11);

    v8 = [v1 traitCollection];
    v9 = [v8 userInterfaceStyle];

    if (v9 == &dword_0 + 2 && v7 != 0)
    {

      v6 = v7;
    }

    sub_254748(v6);
    return sub_17302C(v13);
  }

  return result;
}

uint64_t sub_254E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id GradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_kind] = 0;
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient];
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  v9[3] = 0u;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_cornerRadius] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_cornerStyle] = 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id GradientView.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_kind] = 0;
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient];
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_cornerRadius] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_cornerStyle] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for GradientView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id GradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2551E0()
{
  result = qword_40ABB8;
  if (!qword_40ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40ABB8);
  }

  return result;
}

unint64_t sub_255238()
{
  result = qword_40ABC0;
  if (!qword_40ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40ABC0);
  }

  return result;
}

id sub_2555DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_25578C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews13HighlightCell_highlightView;
  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13HighlightCell_highlightView] removeFromSuperview];
  v3 = sub_30B538();
  v4 = [objc_allocWithZone(SLAttributionView) initWithHighlight:v3];

  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v1 contentView];
  [v6 addSubview:v5];

  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_31D480;
  v9 = [v5 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v8 + 32) = v12;
  v13 = [v5 bottomAnchor];
  v14 = [v1 contentView];
  v15 = [v14 bottomAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v8 + 40) = v16;
  v17 = [v5 leadingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v8 + 48) = v20;
  v21 = [v5 trailingAnchor];

  v22 = [v1 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v8 + 56) = v24;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v7 activateConstraints:isa];

  v26 = [v1 traitCollection];
  v27 = [v26 horizontalSizeClass];

  [v5 updateAlignment:v27 == &dword_0 + 1];
  v28 = *&v1[v2];
  *&v1[v2] = v5;
}

uint64_t sub_255B94(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13HighlightCell_objectGraph) = a1;
}

uint64_t sub_255BDC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_255E10(&qword_40AC50, v3, type metadata accessor for HighlightCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_255C6C()
{
  if (sub_307238())
  {
    return 0x4030000000000000;
  }

  else
  {
    return 0x4038000000000000;
  }
}

uint64_t sub_255E10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_255E5C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___infoStackView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___infoStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___infoStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setAxis:1];
    [v4 setBaselineRelativeArrangement:1];
    [v4 setLayoutMarginsRelativeArrangement:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_255F1C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___titleLabel;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___titleLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___titleLabel];
  }

  else
  {
    v4 = sub_255F80(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_255F80(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = sub_30C968();

  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACA8 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_429910;
  v11[3] = unk_429920;
  v12[0] = xmmword_429930;
  *(v12 + 10) = *(&xmmword_429930 + 10);
  v11[0] = xmmword_4298F0;
  v11[1] = unk_429900;
  sub_8FC54(v11, v13);
  if (qword_3FACB8 != -1)
  {
    swift_once();
  }

  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v13[2] = xmmword_4299D0;
  v13[3] = unk_4299E0;
  v14[0] = xmmword_4299F0;
  *(v14 + 10) = *(&xmmword_4299F0 + 10);
  v13[0] = xmmword_4299B0;
  v13[1] = unk_4299C0;
  sub_8FC54(v13, v10);
  sub_F0044(v11, v13, v10);
  v4 = sub_235C3C(v10, v3, 4, 0);
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v5];
  v6 = objc_opt_self();
  v7 = v4;
  v8 = [v6 labelColor];
  [v7 setTextColor:v8];

  return v7;
}

char *sub_256148()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = sub_2561A8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_2561A8()
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACD8 != -1)
  {
    swift_once();
  }

  v7[2] = xmmword_429B50;
  v7[3] = unk_429B60;
  v8[0] = xmmword_429B70;
  *(v8 + 10) = *(&xmmword_429B70 + 10);
  v7[0] = xmmword_429B30;
  v7[1] = unk_429B40;
  sub_8FC54(v7, v9);
  if (qword_3FAD00 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_429D30;
  v9[3] = unk_429D40;
  v10[0] = xmmword_429D50;
  *(v10 + 10) = *(&xmmword_429D50 + 10);
  v9[0] = xmmword_429D10;
  v9[1] = unk_429D20;
  sub_8FC54(v9, v6);
  sub_F0044(v7, v9, v6);
  v0 = sub_235C3C(v6, 1, 4, 0);
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 secondaryLabelColor];
  [v3 setTextColor:v4];

  return v3;
}

char *sub_256340()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___artworkContainer;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___artworkContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___artworkContainer);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_artworkViewWithPlayback);
    v5 = objc_allocWithZone(type metadata accessor for ArtworkContainer());
    v6 = v4;
    v7 = v0;
    v8 = sub_29C44(1u, v6, 0, 0, 0, 0);
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

char *sub_2563E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA8);
  __chkstk_darwin(v11 - 8);
  v13 = &v75 - v12;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_artworkViewWithPlayback;
  v15 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = v15[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v15[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
  v77 = v16;
  sub_2DE78(&v77);
  *&v5[v14] = v15;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___infoStackView] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___subtitleLabel] = 0;
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_highlightView;
  *&v5[v17] = [objc_allocWithZone(SLAttributionView) init];
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_highlightItem] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_isHovering] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___artworkContainer] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_objectGraph] = 0;
  v76.receiver = v5;
  v76.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v76, "initWithFrame:", a1, a2, a3, a4);
  sub_304698();
  v19 = sub_3046C8();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  sub_30CA88();
  v20 = sub_256340();
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = sub_255E5C();
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [v18 contentView];
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___artworkContainer;
  [v22 addSubview:*&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___artworkContainer]];

  v24 = [v18 contentView];
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___infoStackView;
  [v24 addSubview:*&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___infoStackView]];

  v26 = *&v18[v25];
  v27 = sub_255F1C();
  [v26 addArrangedSubview:v27];

  v28 = *&v18[v25];
  sub_124C4(0, &qword_4019C0);
  v29 = v28;
  v30 = sub_30C978();
  v31 = 20.0;
  if (v30)
  {
    v31 = 18.0;
  }

  [v29 setCustomSpacing:*&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___titleLabel] afterView:v31];

  v32 = *&v18[v25];
  v33 = sub_256148();
  [v32 addArrangedSubview:v33];

  [*&v18[v25] setCustomSpacing:*&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___subtitleLabel] afterView:12.0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_326BD0;
  v35 = [*&v18[v23] widthAnchor];
  v36 = 102.0;
  if (sub_30C978())
  {
    v37 = 97.0;
  }

  else
  {
    v37 = 102.0;
  }

  v38 = [v35 constraintEqualToConstant:v37];

  *(v34 + 32) = v38;
  v39 = [*&v18[v23] heightAnchor];
  if (sub_30C978())
  {
    v40 = 97.0;
  }

  else
  {
    v40 = 102.0;
  }

  v41 = [v39 constraintEqualToConstant:v40];

  *(v34 + 40) = v41;
  v42 = [*&v18[v23] topAnchor];
  v43 = [v18 contentView];
  v44 = [v43 topAnchor];

  v45 = sub_30C978();
  v46 = 8.0;
  if (v45)
  {
    v46 = 12.0;
  }

  v47 = [v42 constraintEqualToAnchor:v44 constant:v46];

  *(v34 + 48) = v47;
  v48 = [*&v18[v23] bottomAnchor];
  v49 = [v18 contentView];
  v50 = [v49 bottomAnchor];

  v51 = sub_30C978();
  v52 = -8.0;
  if (v51)
  {
    v52 = -12.0;
  }

  v53 = [v48 constraintEqualToAnchor:v50 constant:v52];

  *(v34 + 56) = v53;
  v54 = [*&v18[v23] leadingAnchor];
  v55 = [v18 contentView];
  v56 = [v55 leadingAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  *(v34 + 64) = v57;
  v58 = [*&v18[v23] trailingAnchor];
  v59 = [*&v18[v25] leadingAnchor];
  v60 = sub_30C978();
  v61 = -20.0;
  if ((v60 & 1) == 0)
  {
    v61 = -12.0;
  }

  v62 = [v58 constraintEqualToAnchor:v59 constant:v61];

  *(v34 + 72) = v62;
  v63 = [*&v18[v25] centerYAnchor];
  v64 = [*&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_artworkViewWithPlayback] centerYAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v34 + 80) = v65;
  v66 = [*&v18[v25] heightAnchor];
  if (sub_30C978())
  {
    v36 = 97.0;
  }

  v67 = objc_opt_self();
  v68 = [v66 constraintLessThanOrEqualToConstant:v36];

  *(v34 + 88) = v68;
  v69 = [*&v18[v25] trailingAnchor];
  v70 = [v18 contentView];

  v71 = [v70 trailingAnchor];
  v72 = [v69 constraintEqualToAnchor:v71];

  *(v34 + 96) = v72;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v67 activateConstraints:isa];

  sub_E8CC8();
  return v18;
}

void sub_256C4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_308318();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v63 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v54 - v7;
  v8 = sub_3041E8();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v11 - 8);
  v57 = &v54 - v12;
  v13 = sub_303398();
  v58 = *(v13 - 8);
  v59 = v13;
  __chkstk_darwin(v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v16 - 8);
  v18 = &v54 - v17;
  v19 = sub_3031C8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v54 - v24;
  sub_3082E8();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_125E18(v18);
    return;
  }

  sub_6D85C(v18, v25);
  v26 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_objectGraph);
  if (!v26)
  {
    v38 = v25;
    goto LABEL_17;
  }

  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_highlightItem) = a1;

  v27 = sub_256340();
  v28 = sub_3082B8();
  sub_2A218(v28);
  v29 = v25;

  *&v27[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playbackStatusPresenter] = 0;

  v54 = v2;
  v30 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_artworkViewWithPlayback);
  sub_124C4(0, &qword_4019C0);
  if (sub_30C978())
  {
    v31 = 97.0;
  }

  else
  {
    v31 = 102.0;
  }

  sub_2EF18(v29, v31, v31);
  sub_6D8C0(v29, v22);
  sub_30C978();
  v32 = sub_303DF8();
  (*(*(v32 - 8) + 56))(v57, 1, 1, v32);
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v55 + 8))(v10, v56);
  v33 = [objc_opt_self() mainScreen];
  [v33 scale];

  sub_303358();
  type metadata accessor for ArtworkView();
  sub_257DBC(&qword_404350, 255, type metadata accessor for ArtworkView);
  v57 = v26;
  sub_308E28();
  (*(v58 + 8))(v15, v59);
  v34 = v60;
  sub_3082C8();
  v36 = v61;
  v35 = v62;
  (*(v61 + 104))(v63, enum case for HighlightType.channel(_:), v62);
  sub_257DBC(&qword_40ACE8, 255, &type metadata accessor for HighlightType);
  sub_30C338();
  sub_30C338();
  if (v66[0] == v64 && v66[1] == v65)
  {
    v37 = *(v36 + 8);
    v37(v63, v35);
    v37(v34, v35);
  }

  else
  {
    v39 = sub_30D728();
    v40 = *(v36 + 8);
    v40(v63, v35);
    v40(v34, v35);

    if ((v39 & 1) == 0)
    {
      v41 = *(v30 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style);
      *(v30 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style) = 0;
      goto LABEL_14;
    }
  }

  v41 = *(v30 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style);
  *(v30 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style) = 1;
LABEL_14:
  LOBYTE(v66[0]) = v41;
  sub_2DE78(v66);
  v42 = v54;
  v43 = sub_255F1C();
  sub_3082D8();
  v44 = sub_30C098();

  [v43 setText:v44];

  v45 = sub_256148();
  sub_3082F8();
  v46 = sub_30C098();

  [v45 setText:v46];

  v47 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_highlightView;
  [*(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_highlightView) removeFromSuperview];
  if (sub_308308())
  {
    v48 = sub_30B538();

    v49 = [objc_allocWithZone(SLAttributionView) initWithHighlight:v48];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    v50 = sub_255E5C();
    [v50 addArrangedSubview:v49];

    v51 = [v49 heightAnchor];
    v52 = [v51 constraintGreaterThanOrEqualToConstant:24.0];

    [v52 setActive:1];
    [v49 updateAlignment:0];

    sub_6D924(v29);
    v53 = *(v42 + v47);
    *(v42 + v47) = v49;

    return;
  }

  v38 = v29;
LABEL_17:
  sub_6D924(v38);
}

void sub_25755C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_highlightView) contextMenuItems];
  if (v1)
  {
    v2 = v1;
    sub_124C4(0, &qword_408080);
    v3 = sub_30C368();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (!v4)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  v4 = sub_30D668();
  if (!v4)
  {
    return;
  }

LABEL_4:
  v5 = 0;
  v21._object = (v3 & 0xC000000000000001);
  while (1)
  {
    if (v21._object)
    {
      v6 = sub_30D578();
    }

    else
    {
      if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v6 identifier];
    v10 = sub_30C0D8();
    v12 = v11;

    if (v10 == sub_30C0D8() && v12 == v13)
    {

LABEL_21:
      v16 = objc_opt_self();
      v17 = v7;
      v18 = [v16 mainBundle];
      v21._countAndFlagsBits = 0xE600000000000000;
      v22._countAndFlagsBits = 0x535F45564F4D4552;
      v22._object = 0xEF52414C55474E49;
      v23.value._countAndFlagsBits = 0;
      v23.value._object = 0;
      v19.super.isa = v18;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      sub_301AB8(v22, v23, v19, v24, v21);

      v20 = sub_30C098();

      [v17 setTitle:v20];

      return;
    }

    v15 = sub_30D728();

    if (v15)
    {
      goto LABEL_21;
    }

    ++v5;
    if (v8 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

double sub_2578CC()
{
  sub_124C4(0, &qword_4019C0);
  if (sub_30C978())
  {
    v0 = 97.0;
  }

  else
  {
    v0 = 102.0;
  }

  v1 = sub_30C978();
  v2 = 12.0;
  if (v1)
  {
    v2 = 20.0;
  }

  return v0 + v2;
}

uint64_t sub_257948@<X0>(uint64_t a1@<X8>)
{
  sub_124C4(0, &qword_4019C0);
  if (sub_30C978())
  {
    v2 = 12.0;
  }

  else
  {
    v2 = 8.0;
  }

  if (sub_30C978())
  {
    v3 = 12.0;
  }

  else
  {
    v3 = 8.0;
  }

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  v4 = enum case for ContextMenuPreviewMargins.provideRemovingOriginals(_:);
  v5 = sub_302728();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_257A18@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextMenuPreviewBackgroundColor.provide(_:);
  v3 = sub_302838();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_257AA0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_objectGraph) = a1;

  v3 = sub_256340();
  sub_2AE20(a1);
}

uint64_t sub_257B10(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_257DBC(&unk_40ACF0, v3, type metadata accessor for HighlightItemCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_257BB8()
{
  sub_124C4(0, &qword_4019C0);
  sub_30C978();
  sub_30C978();

  return sub_307198();
}

uint64_t sub_257DBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_257E04()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_artworkViewWithPlayback;
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
  v6 = v4;
  sub_2DE78(&v6);
  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___infoStackView) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___subtitleLabel) = 0;
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_highlightView;
  *(v1 + v5) = [objc_allocWithZone(SLAttributionView) init];
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_highlightItem) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_isHovering) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell____lazy_storage___artworkContainer) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HighlightItemCell_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

void sub_257FE4(char a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && v1)
  {
    v4 = v3;
    sub_124C4(0, &qword_4019C0);
    v5 = v1;
    if (sub_30C988())
    {
      ObjectType = swift_getObjectType();
      sub_2584DC(a1 & 1, ObjectType, v4);
    }
  }

  v7 = [v1 subviews];
  sub_124C4(0, &qword_3FBD90);
  v8 = sub_30C368();

  if (v8 >> 62)
  {
    v9 = sub_30D668();
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_30D578();
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    sub_257FE4(a1 & 1);
  }

LABEL_15:
}

id sub_25816C()
{

  return v1;
}

id sub_2581A8()
{
  result = [v0 gestureRecognizers];
  if (result)
  {
    v2 = result;
    sub_124C4(0, &qword_404A28);
    v3 = sub_30C368();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = sub_30D578();
        }

        else
        {
          if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v10 = v9;

          return v10;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    return 0;
  }

  return result;
}

void sub_2582F0(char a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = a1;
  *(v11 + 40) = v5;
  *(v11 + 48) = a2;
  v12 = *(a5 + 40);
  v13 = a2;
  v14 = v5;
  if (v12(a4, a5) & 1) != 0 && (a3)
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_258948;
    *(v16 + 24) = v11;
    v18[4] = sub_2589CC;
    v18[5] = v16;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_914CC;
    v18[3] = &block_descriptor_52;
    v17 = _Block_copy(v18);

    [v15 animateWithDuration:65574 delay:v17 options:0 animations:0.12 completion:0.0];

    _Block_release(v17);
  }

  else
  {
    sub_25865C(0, a1 & 1, v14, v13, a4, a5);
  }
}

void sub_2584DC(char a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 8))(a2, a3))
  {
    v21 = sub_2581A8();
    if (v21)
    {
      v6 = *(a3 + 32);
      v7 = v6(a2, a3);
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = v6(a2, a3);
      [v21 locationInView:v16];
      v18 = v17;
      v20 = v19;

      v24.origin.x = v9;
      v24.origin.y = v11;
      v24.size.width = v13;
      v24.size.height = v15;
      v23.x = v18;
      v23.y = v20;
      if (!CGRectContainsPoint(v24, v23))
      {
        sub_2582F0(0, v21, a1 & 1, a2, a3);
      }
    }
  }
}

void sub_25865C(char a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = a2 & 1;
  if (((*(a6 + 8))(a5, a6) & 1) != v12)
  {
    (*(a6 + 16))(v12, a5, a6);
  }

  (*(a6 + 48))(v12, a4, a5, a6);
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  if (v13 && a3)
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 16);
    v17 = a3;
    v18 = v16(ObjectType, v14);
    if (a2)
    {
      sub_2587EC(a4, ObjectType, v14);
    }

    sub_2A6FC(a2 & 1, a1 & 1);
  }
}

BOOL sub_2587EC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = v6(a2, a3);
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v6(a2, a3);
  [a1 locationInView:v16];
  v18 = v17;
  v20 = v19;

  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  v22.x = v18;
  v22.y = v20;
  return CGRectContainsPoint(v23, v22);
}

uint64_t sub_258908()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_258958()
{

  return v1;
}

uint64_t sub_258994()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258A18(uint64_t a1, uint64_t a2)
{
  v26[1] = a1;
  v27 = a2;
  v2 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_308778();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = (v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_30B018();
  v9 = v8;
  sub_309258();
  v11 = v10;
  if (!v9)
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_30C098();

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_30C098();

LABEL_6:
  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  sub_258EE4(v14);
  sub_25918C(v14);
  v26[0] = swift_getObjectType();
  *v7 = v14;
  (*(v5 + 104))(v7, enum case for FlowDestination.viewController(_:), v28);
  v15 = enum case for FlowPresentationContext.presentModal(_:);
  v16 = sub_30A4E8();
  (*(*(v16 - 8) + 104))(v4, v15, v16);
  v17 = &v4[v2[9]];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = v2[7];
  v19 = enum case for FlowDestinationPageHeader.standard(_:);
  v20 = sub_30AA18();
  (*(*(v20 - 8) + 104))(&v4[v18], v19, v20);
  v4[v2[5]] = 0;
  v21 = &v4[v2[6]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[40] = -1;
  *&v4[v2[8]] = 0;
  v22 = v27;
  v23 = *(v27 + 32);
  v24 = v14;
  v23(v7, v4, 0, 0, v26[0], v22);

  sub_25A8A8(v4);
  return (*(v5 + 8))(v7, v28);
}

id sub_258D50()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_258EE4(void *a1)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v18._countAndFlagsBits = 0xE000000000000000;
  v21._countAndFlagsBits = 0x435F4E4F49544341;
  v21._object = 0xED00004C45434E41;
  v23.value._countAndFlagsBits = 0;
  v23.value._object = 0;
  v5.super.isa = v4;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_301AB8(v21, v23, v5, v25, v18);

  v6 = sub_30C098();

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v6 style:0 handler:0];

  [a1 addAction:v8];
  v9 = [v3 mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v22._countAndFlagsBits = 0x4F5F4E4F49544341;
  v22._object = 0xE90000000000004BLL;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v10.super.isa = v9;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_301AB8(v22, v24, v10, v26, v19);

  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = v1;
  v13 = sub_30C098();

  aBlock[4] = sub_25AA90;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AB10;
  aBlock[3] = &block_descriptor_8_0;
  v14 = _Block_copy(aBlock);

  v15 = [v7 actionWithTitle:v13 style:0 handler:v14];
  _Block_release(v14);

  [a1 addAction:v15];
  [a1 setPreferredAction:v15];
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_okAction;
  swift_beginAccess();
  v17 = *&v12[v16];
  *&v12[v16] = v15;
}

uint64_t sub_25918C(void *a1)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_309E48();
  v4 = *(v3 - 8);
  v60 = *(v4 + 64);
  v5 = __chkstk_darwin(v3);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AD58);
  v59 = *(v9 - 8);
  __chkstk_darwin(v9);
  v44 = (&v42 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AD60);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v42 - v15);
  result = sub_309248();
  v18 = 0;
  v45 = result;
  v19 = *(result + 16);
  v43 = OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_hasRequiredParameters;
  v42 = OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_okAction;
  v57 = (v59 + 56);
  v58 = v4 + 16;
  v56 = (v59 + 48);
  v48 = v4 + 32;
  v47 = v60 + 7;
  v46 = v62;
  v59 = v4;
  v51 = (v4 + 8);
  v54 = v14;
  v55 = v9;
  v52 = v19;
  v53 = v16;
  if (v19)
  {
    goto LABEL_4;
  }

LABEL_7:
  v25 = 1;
  v20 = v19;
  while (1)
  {
    (*v57)(v14, v25, 1, v9);
    sub_34804(v14, v16, &qword_40AD60);
    if ((*v56)(v16, 1, v9) == 1)
    {
    }

    v60 = v20;
    v26 = *v16;
    v27 = v59;
    v28 = *(v59 + 32);
    v28(v8, v16 + *(v9 + 48), v3);
    v29 = v3;
    v30 = v49;
    (*(v27 + 16))(v49, v8, v29);
    v31 = v8;
    v32 = v2;
    v33 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v34 = (v47 + v33) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = v26;
    v36 = v35 + v33;
    v2 = v32;
    v8 = v31;
    v37 = v30;
    v3 = v29;
    v28(v36, v37, v29);
    *(v35 + v34) = v2;
    v62[2] = sub_25A9A0;
    v62[3] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v62[0] = sub_25AB10;
    v62[1] = &block_descriptor_53;
    v38 = _Block_copy(aBlock);
    v39 = v2;

    [v50 addTextFieldWithConfigurationHandler:v38];
    _Block_release(v38);
    if (sub_309E08())
    {
      v2[v43] = 1;
      v40 = v42;
      swift_beginAccess();
      v41 = *&v2[v40];
      v19 = v52;
      v18 = v60;
      if (v41)
      {
        swift_endAccess();
        [v41 setEnabled:0];
        result = (*v51)(v31, v29);
      }

      else
      {
        (*v51)(v31, v29);
        result = swift_endAccess();
      }

      v14 = v54;
      v9 = v55;
      v16 = v53;
      if (v18 == v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = (*v51)(v31, v29);
      v14 = v54;
      v9 = v55;
      v19 = v52;
      v16 = v53;
      v18 = v60;
      if (v60 == v52)
      {
        goto LABEL_7;
      }
    }

LABEL_4:
    if ((v18 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v18 >= *(v45 + 16))
    {
      goto LABEL_17;
    }

    v20 = v18 + 1;
    v21 = v59;
    v22 = v45 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18;
    v23 = *(v9 + 48);
    v24 = v44;
    *v44 = v18;
    (*(v21 + 16))(v24 + v23, v22, v3);
    sub_34804(v24, v14, &qword_40AD58);
    v25 = 0;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_259760()
{
  v34 = sub_3041E8();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v39 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_302558();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30B898();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v40 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_309E48();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_30AA58();
  v37 = *(v11 - 8);
  v38 = v11;
  __chkstk_darwin(v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B6DE4(&_swiftEmptyArrayStorage);
  sub_2B6DE4(&_swiftEmptyArrayStorage);
  sub_2B6EF8(&_swiftEmptyArrayStorage);
  v44 = v13;
  v14 = v0;
  sub_30AA48();
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_textFields;
  swift_beginAccess();
  v43 = *(v14 + v15);
  if (v43 >> 62)
  {
    goto LABEL_19;
  }

  for (result = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); ; result = sub_30D668())
  {
    v17 = v40;
    v18 = v41;
    if (!result)
    {
LABEL_16:
      sub_30B868();
      v28 = v44;
      v29 = sub_309228();
      (*(v35 + 8))(v17, v36);
      swift_getObjectType();
      v47[3] = sub_307778();
      v47[4] = sub_25AAB4(&qword_40AD68, &type metadata accessor for HttpAction);
      v47[0] = v29;
      (*(v2 + 104))(v4, enum case for ActionMetricsBehavior.notProcessed(_:), v18);

      sub_307C38();

      (*(v2 + 8))(v4, v18);
      (*(v37 + 8))(v28, v38);
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v42 = result;
    if (result < 1)
    {
      break;
    }

    v31 = v4;
    v32 = v2;
    v30[1] = v14;
    v19 = *(v14 + OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_templateAction);
    v20 = v43;
    v45 = v43 & 0xC000000000000001;
    v46 = v19;
    v4 = (v8 + 16);
    v21 = (v8 + 8);

    v14 = 0;
    v2 = v42;
    while (1)
    {
      v22 = v45 ? sub_30D578() : *(v20 + 8 * v14 + 32);
      v23 = v22;
      v24 = sub_309248();
      v25 = [v23 tag];
      if ((v25 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v25 >= *(v24 + 16))
      {
        goto LABEL_18;
      }

      (*(v8 + 16))(v10, v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v7);

      v26 = [v23 text];
      if (v26)
      {
        v27 = v26;
        sub_30C0D8();

        v20 = v43;
        sub_30AA28();

        v2 = v42;

        (*v21)(v10, v7);
      }

      else
      {
        (*v21)(v10, v7);
      }

      if (v2 == ++v14)
      {

        v17 = v40;
        v18 = v41;
        v2 = v32;
        v4 = v31;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_259F94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setTag:a2];
  sub_309E28();
  if (v6)
  {
    v7 = sub_30C098();
  }

  else
  {
    v7 = 0;
  }

  [a1 setPlaceholder:v7];

  [a1 setKeyboardType:qword_32F988[sub_309E38()]];
  [a1 setDelegate:a4];
  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:a4 selector:"textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:a1];

  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_textFields;
  swift_beginAccess();
  v10 = a1;
  sub_30C348();
  if (*(&dword_10 + (*(a4 + v9) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a4 + v9) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  return swift_endAccess();
}

void sub_25A12C()
{
  v39 = sub_309E48();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_textFields;
  swift_beginAccess();
  v37 = *(v0 + v3);
  if (!(v37 >> 62))
  {
    v4 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_okAction;
    swift_beginAccess();
    v31 = *(v0 + v30);
    if (v31)
    {
      [v31 setEnabled:1];
    }

    return;
  }

LABEL_28:
  v4 = sub_30D668();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_templateAction);
  v6 = v37 & 0xC000000000000001;
  v33 = v0;
  v34 = v37 & 0xFFFFFFFFFFFFFF8;
  v7 = v1 + 16;
  v36 = (v1 + 8);

  v8 = 0;
  v35 = v1;
  while (1)
  {
    if (v6)
    {
      v9 = sub_30D578();
    }

    else
    {
      if (v8 >= *(v34 + 16))
      {
        goto LABEL_27;
      }

      v9 = *(v37 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v0 = sub_309248();
    v12 = [v10 tag];
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (v12 >= v0[2])
    {
      goto LABEL_26;
    }

    v13 = v38;
    (*(v1 + 16))(v38, v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, v39);

    v0 = v13;
    if (sub_309E08())
    {
      v14 = [v10 text];
      if (!v14)
      {
        break;
      }

      v0 = v14;
      v15 = sub_30C0D8();
      v16 = v7;
      v17 = v10;
      v18 = v6;
      v19 = v5;
      v20 = v4;
      v22 = v21;

      v23 = HIBYTE(v22) & 0xF;
      v24 = v15 & 0xFFFFFFFFFFFFLL;
      v1 = v35;
      v25 = (v22 & 0x2000000000000000) == 0;
      v4 = v20;
      v5 = v19;
      v6 = v18;
      v10 = v17;
      v7 = v16;
      if (v25)
      {
        v23 = v24;
      }

      if (!v23)
      {
        break;
      }
    }

    (*v36)(v38, v39);
    ++v8;
    if (v11 == v4)
    {

      v0 = v33;
      goto LABEL_20;
    }
  }

  v26 = v10;

  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_okAction;
  v28 = v33;
  swift_beginAccess();
  v29 = *(v28 + v27);
  if (v29)
  {
    swift_endAccess();
    [v29 setEnabled:0];

    (*v36)(v38, v39);
  }

  else
  {
    (*v36)(v38, v39);
    swift_endAccess();
  }
}

void sub_25A4B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_309E48();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_309248();
  v11 = [a1 tag];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= *(v10 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  (*(v7 + 16))(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6);

  sub_309E18();
  if ((v12 & 1) == 0)
  {
    v13 = [a1 text];
    if (v13)
    {
      v14 = v13;
      v15 = sub_30C098();
      v16 = [v14 stringByReplacingCharactersInRange:a2 withString:{a3, v15}];

      if (v16)
      {
        [v16 length];

        (*(v7 + 8))(v9, v6);
        return;
      }

      goto LABEL_11;
    }
  }

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_25A8A8(uint64_t a1)
{
  v2 = type metadata accessor for FlowPresentationHints();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A904()
{
  v1 = sub_309E48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_25A9A0(void *a1)
{
  v3 = *(sub_309E48() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_259F94(a1, v5, v1 + v4, v6);
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AA58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25AAB4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25AB14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_shadowView;
  type metadata accessor for ShadowView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_loadingView] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_presentationWindow] = 0;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___viewToken;
  v5 = sub_3083A8();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___HUDView] = 0;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_config;
  v7 = sub_308368();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v1[v6], a1, v7);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for HUDLoadingController(0);
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  [v9 setModalPresentationStyle:6];
  (*(v8 + 8))(a1, v7);
  return v9;
}

void sub_25ACB8()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for HUDLoadingController(0);
  objc_msgSendSuper2(&v22, "viewDidLoad");
  v2 = [v0 presentationController];
  if (v2)
  {
    v3 = v2;
    [v2 _setContainerIgnoresDirectTouchEvents:1];
  }

  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setUserInteractionEnabled:0];

    sub_25B1F4();
    v6 = sub_308348();
    if ((v7 & 1) == 0)
    {
      v8 = *&v6;
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      v20 = sub_25D268;
      v21 = v10;
      v16 = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_914CC;
      v19 = &block_descriptor_56_1;
      v11 = _Block_copy(&v16);
      v12 = v1;

      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v20 = sub_25D280;
      v21 = v13;
      v16 = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_2504C4;
      v19 = &block_descriptor_63_0;
      v14 = _Block_copy(&v16);
      v15 = v12;

      [v9 animateWithDuration:131074 delay:v11 options:v14 animations:0.2 completion:v8];
      _Block_release(v14);
      _Block_release(v11);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AF3C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AE20);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___viewToken;
  swift_beginAccess();
  sub_25D0FC(v1 + v9, v8);
  v10 = sub_3083A8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_25D094(v8);
  sub_25D16C();
  swift_unknownObjectRetain();
  sub_308398();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_25D1C4(v6, v1 + v9);
  return swift_endAccess();
}

id sub_25B11C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___HUDView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___HUDView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___HUDView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle:8];
    v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

    v6 = v5;
    [v6 setClipsToBounds:1];
    [v6 _setContinuousCornerRadius:9.0];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_25B1F4()
{
  v1 = v0;
  v2 = sub_308368();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_config], v2, v4);
  v8 = type metadata accessor for HUDLoadingContentView(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_indicator] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_label] = 0;
  (v7)(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_config], v6, v2);
  v73.receiver = v9;
  v73.super_class = v8;
  v10 = objc_msgSendSuper2(&v73, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_25C734();

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_loadingView;
  v12 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_loadingView];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_loadingView] = v10;

  v13 = sub_25B11C();
  v14 = [v13 contentView];

  if (!*&v1[v11])
  {
    __break(1u);
    goto LABEL_16;
  }

  [v14 addSubview:?];

  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___HUDView;
  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___HUDView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = *&v1[v11];
  if (!v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_shadowView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_3FAF20 != -1)
  {
    swift_once();
  }

  v18 = qword_42AC68;
  v19 = qword_42AC80;
  v20 = &v17[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  v21 = *&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  v22 = *algn_42AC70;
  *v20 = qword_42AC68;
  *(v20 + 8) = v22;
  *(v20 + 3) = v19;
  v23 = v18;

  sub_2BF1DC();
  [v17 setAlpha:0.0];
  v24 = [v1 view];
  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = v24;
  [v24 addSubview:v17];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = v26;
  [v26 sendSubviewToBack:v17];

  v28 = *&v1[v15];
  CGAffineTransformMakeScale(&v72, 0.88, 0.88);
  [v28 setTransform:&v72];
  [*&v1[v15] setAlpha:0.0];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = v29;
  [v29 addSubview:*&v1[v15]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_32F9B0;
  v32 = [*&v1[v15] centerXAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = v33;
  v35 = [v33 centerXAnchor];

  v36 = [v32 constraintEqualToAnchor:v35];
  *(v31 + 32) = v36;
  v37 = [*&v1[v15] centerYAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v39 = v38;
  v40 = [v38 centerYAnchor];

  v41 = [v37 constraintEqualToAnchor:v40];
  *(v31 + 40) = v41;
  v42 = [v17 leadingAnchor];
  v43 = [*&v1[v15] leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v31 + 48) = v44;
  v45 = [v17 trailingAnchor];
  v46 = [*&v1[v15] trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v31 + 56) = v47;
  v48 = [v17 topAnchor];
  v49 = [*&v1[v15] topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v31 + 64) = v50;
  v51 = [v17 bottomAnchor];
  v52 = [*&v1[v15] bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v31 + 72) = v53;
  v54 = *&v1[v11];
  if (!v54)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v55 = [v54 leadingAnchor];
  v56 = [*&v1[v15] leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v31 + 80) = v57;
  v58 = *&v1[v11];
  if (!v58)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v59 = [v58 trailingAnchor];
  v60 = [*&v1[v15] trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v31 + 88) = v61;
  v62 = *&v1[v11];
  if (!v62)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v63 = [v62 topAnchor];
  v64 = [*&v1[v15] topAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v31 + 96) = v65;
  v66 = *&v1[v11];
  if (v66)
  {
    v67 = objc_opt_self();
    v68 = [v66 bottomAnchor];
    v69 = [*&v1[v15] bottomAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];

    *(v31 + 104) = v70;
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;

    [v67 activateConstraints:isa];

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_25BA1C()
{
  v1 = [objc_allocWithZone(MPModalPresentationWindow) init];
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_presentationWindow);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_presentationWindow) = v1;
  v3 = v1;

  v4 = v3;
  [v4 setHidden:0];
  [v4 setUserInteractionEnabled:0];

  v5 = objc_opt_self();
  v9 = v4;
  v6 = [v5 sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    if ([v7 respondsToSelector:"window"])
    {
      v8 = [v7 window];
      swift_unknownObjectRelease();
      v7 = [v8 windowScene];
    }

    else
    {
      swift_unknownObjectRelease();
      v7 = 0;
    }
  }

  [v9 setWindowScene:v7];

  [v9 presentViewController:v0 animated:1 completion:0];
}

id sub_25BBBC(uint64_t a1)
{
  v2 = sub_25B11C();
  CGAffineTransformMakeScale(&v9, 1.0, 1.0);
  [v2 setTransform:&v9];

  [*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___HUDView) setAlpha:1.0];
  v3 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_presentationWindow);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 blackColor];
    v7 = [v6 colorWithAlphaComponent:0.4];

    [v5 setBackgroundColor:v7];
  }

  return [*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_shadowView) setAlpha:1.0];
}

void sub_25BE20(char *a1)
{
  v2 = sub_25B11C();
  v3 = [v2 contentView];

  v4 = [v3 superview];
  if (v4)
  {
    [v4 setAlpha:0.0];
  }

  [*&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_shadowView] setAlpha:0.0];
  v5 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_presentationWindow];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];
  }

  v9 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___HUDView];
  v10 = objc_allocWithZone(UIColor);
  v11 = v9;
  v12 = [v10 initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [v11 setBackgroundColor:v12];

  v13 = [a1 view];
  if (v13)
  {
    v14 = v13;
    CGAffineTransformMakeScale(&v15, 0.88, 0.88);
    [v14 setTransform:&v15];
  }

  else
  {
    __break(1u);
  }
}

id sub_25BFEC(int a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v4 = result;
    v5[0] = 0x3FF0000000000000;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = 0x3FF0000000000000;
    v5[4] = 0;
    v5[5] = 0;
    [result setTransform:v5];

    return [a2 dismissViewControllerAnimated:0 completion:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25C074()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_25D268;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_914CC;
  v11 = &block_descriptor_36;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_25D280;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_2504C4;
  v11 = &block_descriptor_43;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:131074 delay:v3 options:v6 animations:0.2 completion:0.0];
  _Block_release(v6);
  _Block_release(v3);
}

void sub_25C204()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_loadingView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_label];
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = v2;
  sub_308358();
  v6 = sub_30C098();

  [v4 setText:v6];

  v7 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_indicator];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v7;
  [v8 setHidden:(sub_308338() & 1) == 0];

  v9 = sub_308348();
  if ((v10 & 1) == 0)
  {
    v11 = *&v9;
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v23 = sub_25CF70;
    v24 = v13;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_914CC;
    v22 = &block_descriptor_54;
    v14 = _Block_copy(&v19);
    v15 = v1;

    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v23 = sub_25CF90;
    v24 = v16;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_2504C4;
    v22 = &block_descriptor_29_1;
    v17 = _Block_copy(&v19);
    v18 = v15;

    [v12 animateWithDuration:131074 delay:v14 options:v17 animations:0.2 completion:v11];
    _Block_release(v17);
    _Block_release(v14);
  }
}

void sub_25C580()
{
  sub_308368();
  if (v0 <= 0x3F)
  {
    sub_25C660();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25C660()
{
  if (!qword_40ADC8)
  {
    sub_3083A8();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_40ADC8);
    }
  }
}

void sub_25C734()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_indicator;
  v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_indicator];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_indicator] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = *&v1[v3];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LODWORD(v6) = 1148846080;
  [v7 setContentHuggingPriority:0 forAxis:v6];
  v8 = *&v1[v3];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v8 startAnimating];
  v9 = *&v1[v3];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  [v10 setHidden:(sub_308338() & 1) == 0];

  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_label;
  v13 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_label];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_8451DF0E636034E0D31DCAF0635FC0CC21HUDLoadingContentView_label] = v11;
  v14 = v11;

  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_124C4(0, &qword_408100);
  v15 = sub_30CD18();
  [v14 setFont:v15];

  v16 = *&v1[v12];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = *&v1[v12];
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LODWORD(v17) = 1148846080;
  [v18 setContentHuggingPriority:0 forAxis:v17];
  v19 = *&v1[v12];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  sub_308358();
  v21 = sub_30C098();

  [v20 setText:v21];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_317F20;
  v23 = *&v1[v3];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v22 + 32) = v23;
  v24 = *&v1[v12];
  if (!v24)
  {
LABEL_23:
    __break(1u);
    return;
  }

  *(v22 + 40) = v24;
  v25 = objc_allocWithZone(UIStackView);
  sub_124C4(0, &qword_3FBD90);
  v26 = v23;
  v27 = v24;
  isa = sub_30C358().super.isa;

  v29 = [v25 initWithArrangedSubviews:isa];

  v30 = v29;
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 setAxis:0];
  [v30 setAlignment:1];
  [v30 setSpacing:10.0];
  [v1 addSubview:v30];
  v31 = objc_opt_self();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_31D660;
  v33 = [v30 leadingAnchor];
  v34 = [v1 leadingAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34 constant:16.0];

  *(v32 + 32) = v35;
  v36 = [v30 trailingAnchor];
  v37 = [v1 trailingAnchor];
  v38 = [v36 constraintLessThanOrEqualToAnchor:v37 constant:-16.0];

  *(v32 + 40) = v38;
  v39 = [v30 centerXAnchor];
  v40 = [v1 centerXAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v32 + 48) = v41;
  v42 = [v30 topAnchor];
  v43 = [v1 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:24.0];

  *(v32 + 56) = v44;
  v45 = [v30 bottomAnchor];

  v46 = [v1 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-24.0];

  *(v32 + 64) = v47;
  v48 = [v1 widthAnchor];
  v49 = [v48 constraintGreaterThanOrEqualToConstant:180.0];

  *(v32 + 72) = v49;
  sub_124C4(0, &qword_403000);
  v50 = sub_30C358().super.isa;

  [v31 activateConstraints:v50];
}

id sub_25CDA8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_25CE9C()
{
  result = sub_308368();
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

uint64_t sub_25CF38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25CFA0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_shadowView;
  type metadata accessor for ShadowView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_loadingView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController_presentationWindow) = 0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___viewToken;
  v3 = sub_3083A8();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20HUDLoadingController____lazy_storage___HUDView) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_25D094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25D0FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25D16C()
{
  result = qword_40AE28;
  if (!qword_40AE28)
  {
    type metadata accessor for HUDLoadingController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40AE28);
  }

  return result;
}

uint64_t sub_25D1C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AE20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id HUDViewController.init(type:)(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_configuration];
  *v4 = xmmword_32FA70;
  *(v4 + 1) = xmmword_32FA80;
  *(v4 + 2) = xmmword_32FA90;
  *(v4 + 3) = xmmword_32FAA0;
  __asm { FMOV            V1.2D, #25.0 }

  *(v4 + 4) = xmmword_32FAB0;
  *(v4 + 5) = _Q1;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_primaryLabel;
  *&v1[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_secondaryLabel;
  *&v1[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_imageView;
  *&v1[v12] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_presentationWindow] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView] = 0;
  v13 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_type];
  v14 = *(a1 + 16);
  *v13 = *a1;
  *(v13 + 1) = v14;
  *(v13 + 4) = v3;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for HUDViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  [v15 setModalPresentationStyle:4];
  return v15;
}

void sub_25D500()
{
  v1 = v0;
  v49.receiver = v0;
  v49.super_class = type metadata accessor for HUDViewController();
  objc_msgSendSuper2(&v49, "viewDidLoad");
  v2 = [v0 presentationController];
  if (v2)
  {
    v3 = v2;
    [v2 _setContainerIgnoresDirectTouchEvents:1];
  }

  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setUserInteractionEnabled:0];

    v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_imageView;
    v7 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_imageView];
    v8 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_type];
    v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_type + 32];
    v10 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_type + 16];
    *&v48.a = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_type];
    *&v48.c = v10;
    v48.tx = v9;
    v11 = v7;
    v12 = sub_25DA80();
    [v11 setImage:{v12, *&v48.a, *&v48.c, *&v48.tx}];

    [*&v1[v6] setAlpha:0.64];
    v13 = *&v1[v6];
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 labelColor];
    [v15 setTintColor:v16];

    v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_primaryLabel;
    v18 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_primaryLabel];
    v19 = v8[4];
    v20 = *(v8 + 1);
    *&v48.a = *v8;
    *&v48.c = v20;
    v48.tx = v19;
    v21 = v18;
    sub_25DC50();
    v22 = sub_30C098();

    [v21 setText:{v22, *&v48.a, *&v48.c, *&v48.tx}];

    [*&v1[v17] setTextAlignment:1];
    [*&v1[v17] setNumberOfLines:2];
    v23 = *&v1[v17];
    v24 = [v14 labelColor];
    v25 = [v24 colorWithAlphaComponent:0.64];

    [v23 setTextColor:v25];
    [*&v1[v17] setLineBreakMode:4];
    v26 = [objc_allocWithZone(NSMutableAttributedString) init];
    v27 = v8[4];
    v28 = *(v8 + 1);
    *&v48.a = *v8;
    *&v48.c = v28;
    v48.tx = v27;
    sub_25DF58();
    if (v29)
    {
      v30 = objc_allocWithZone(NSMutableAttributedString);
      v31 = sub_30C098();

      v32 = [v30 initWithString:v31];

      v26 = v32;
    }

    v33 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v33 setLineSpacing:2.0];
    v34 = v33;
    [v26 addAttribute:NSParagraphStyleAttributeName value:v34 range:{0, objc_msgSend(v26, "length")}];

    v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_secondaryLabel;
    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_secondaryLabel] setAttributedText:v26];
    [*&v1[v35] setTextAlignment:1];
    [*&v1[v35] setNumberOfLines:4];
    v36 = *&v1[v35];
    v37 = [v14 labelColor];
    v38 = [v37 colorWithAlphaComponent:0.64];

    [v36 setTextColor:v38];
    [*&v1[v35] setLineBreakMode:4];
    v39 = sub_25F9F4();
    v40 = [v39 contentView];

    [v40 addSubview:*&v1[v6]];
    v41 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView;
    v42 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView] contentView];
    [v42 addSubview:*&v1[v17]];

    v43 = [*&v1[v41] contentView];
    [v43 addSubview:*&v1[v35]];

    v44 = *&v1[v41];
    CGAffineTransformMakeScale(&v48, 0.88, 0.88);
    [v44 setTransform:&v48];
    [*&v1[v41] setAlpha:0.0];
    v45 = [v1 view];
    if (v45)
    {
      v46 = v45;
      v47 = *&v1[v41];
      [v46 addSubview:v47];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}