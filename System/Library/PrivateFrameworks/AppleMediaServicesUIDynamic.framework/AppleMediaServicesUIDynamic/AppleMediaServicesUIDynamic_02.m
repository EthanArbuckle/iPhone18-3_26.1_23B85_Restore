uint64_t sub_1CA11514C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

char *sub_1CA1151AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (v8)
  {

    v8(a1, a2, a3);
    if (v4)
    {
    }

    v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433410));

    v14 = sub_1CA115654();
    sub_1CA0EBE84(v8);
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v9 = sub_1CA19AFF8();
    v10 = __swift_project_value_buffer(v9, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v17 = type metadata accessor for BridgedDestinationViewProvider();
    v16[0] = v3;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v16);
    sub_1CA19AF18();
    v17 = MEMORY[0x1E69E6158];
    v16[0] = a1;
    v16[1] = a2;

    sub_1CA19AF38();
    sub_1CA0F0440(v16);
    v14 = v10;
    sub_1CA19AFB8();

    sub_1CA115600();
    swift_allocError();
    swift_willThrow();
  }

  return v14;
}

uint64_t BridgedDestinationViewProvider.__deallocating_deinit()
{
  sub_1CA0EBE84(*(v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1CA1154DC()
{
  result = qword_1EC433400;
  if (!qword_1EC433400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433400);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewProviderError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA115600()
{
  result = qword_1EC433408;
  if (!qword_1EC433408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433408);
  }

  return result;
}

char *sub_1CA115654()
{
  *&v0[qword_1EC434250] = 0;
  v7.receiver = v0;
  v7.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433410);
  v1 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433418));
  v3 = v1;
  v4 = sub_1CA19B158();
  v5 = *&v3[qword_1EC434250];
  *&v3[qword_1EC434250] = v4;

  return v3;
}

id sub_1CA115710()
{
  sub_1CA11575C();
  result = sub_1CA174500();
  qword_1EE040B08 = result;
  return result;
}

unint64_t sub_1CA11575C()
{
  result = qword_1EE03BD48;
  if (!qword_1EE03BD48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03BD48);
  }

  return result;
}

id sub_1CA1157A0()
{
  sub_1CA11575C();
  result = sub_1CA174500();
  qword_1EE040B00 = result;
  return result;
}

id sub_1CA1157EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[qword_1EC433420];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[qword_1EC433428] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1CA11585C()
{
  sub_1CA10BD74();
  v13 = swift_allocError();
  *v1 = xmmword_1CA1A26C0;
  *(v1 + 16) = 3;
  v2 = *&v0[qword_1EC433428];
  v3 = sub_1CA0F04EC(v2);
  v4 = 0;
  v5 = &v0[qword_1EC433420];
  while (1)
  {
    v6 = v4;
    if (v3 == v4)
    {
      v12 = v13;
      goto LABEL_15;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA99FB0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v14 = v7;
    if ([v0 isCancelled])
    {
      break;
    }

    sub_1CA115CA0();
    v8 = *v5;
    v9 = v5[1];

    v10 = sub_1CA115A24(v8, v9, v14, 0);
    v4 = v6 + 1;
    if (v10)
    {
      v11 = v10;

      v12 = v11;
LABEL_15:
      sub_1CA17D778(v12, v3 == v6);

      sub_1CA10B868(v12);
      return;
    }
  }
}

id sub_1CA115A24(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1CA19C0E8();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

void sub_1CA115AA8(void *a1)
{
  v1 = a1;
  sub_1CA11585C();
}

uint64_t sub_1CA115B30()
{
}

id sub_1CA115B74()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA115BAC()
{
}

uint64_t type metadata accessor for BundleImageFetchOperation()
{
  result = qword_1EC433430;
  if (!qword_1EC433430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CA115CA0()
{
  result = qword_1EE03C168;
  if (!qword_1EE03C168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C168);
  }

  return result;
}

unint64_t sub_1CA115D58(uint64_t a1)
{
  result = sub_1CA115D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA115D80()
{
  result = qword_1EC433440;
  if (!qword_1EC433440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433440);
  }

  return result;
}

unint64_t sub_1CA115DD8()
{
  result = qword_1EC433448;
  if (!qword_1EC433448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433448);
  }

  return result;
}

unint64_t sub_1CA115E30()
{
  result = qword_1EC433450;
  if (!qword_1EC433450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433450);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CellState(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Bool __swiftcall CellToggleState.isToggled(default:)(Swift::Bool a1)
{
  if (v1)
  {
    if (v1 != 1)
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return a1;
}

uint64_t CellToggleState.hashValue.getter(unsigned __int8 a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA116028()
{
  v1 = *v0;
  sub_1CA19CBD8();
  CellToggleState.hash(into:)(v3, v1);
  return sub_1CA19CC18();
}

unint64_t sub_1CA116070()
{
  result = qword_1EC433458;
  if (!qword_1EC433458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433458);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CellToggleState(_BYTE *result, unsigned int a2, unsigned int a3)
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

void CGSize.sizeWithVisualAreaConstraints(_:)(void *a1, double a2, double a3)
{
  if (a3 == 0.0 || a2 == 0.0)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v23 = sub_1CA19AFF8();
    __swift_project_value_buffer(v23, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    type metadata accessor for CGSize(0);
    v25 = v24;
    v37 = v24;
    v35 = a2;
    v36 = a3;
    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v35);
    sub_1CA19AF18();
    v37 = v25;
    v35 = a2;
    v36 = a3;
    sub_1CA19AF38();
    sub_1CA0F0440(&v35);
    sub_1CA19AFB8();
    goto LABEL_21;
  }

  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, v6);
  v8 = *(v7 + 8);
  if (v8(v6, v7) <= 0.0 || (OUTLINED_FUNCTION_1_13(), v9 = OUTLINED_FUNCTION_0_15(), v10(v9) <= 0.0) || (OUTLINED_FUNCTION_1_13(), v11 = OUTLINED_FUNCTION_0_15(), v12(v11) <= 0.0))
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v28 = sub_1CA19AFF8();
    __swift_project_value_buffer(v28, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    type metadata accessor for CGSize(0);
    v37 = v29;
    v35 = a2;
    v36 = a3;
    v30 = AMSLogKey();
    if (v30)
    {
      v31 = v30;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v35);
    sub_1CA19AF18();
    v32 = a1[3];
    v33 = __swift_project_boxed_opaque_existential_2(a1, v32);
    v37 = v32;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v35);
    (*(*(v32 - 8) + 16))(boxed_opaque_existential_2Tm, v33, v32);
    sub_1CA19AF38();
    sub_1CA0F0440(&v35);
    sub_1CA19AF98();
LABEL_21:

    return;
  }

  v13 = a2 / a3;
  OUTLINED_FUNCTION_1_13();
  v14 = OUTLINED_FUNCTION_0_15();
  v16 = v15(v14);
  v17 = sqrt(v13 * v16);
  v18 = v17 / v13;
  OUTLINED_FUNCTION_1_13();
  v19 = OUTLINED_FUNCTION_0_15();
  if (v20(v19) < v17)
  {
    OUTLINED_FUNCTION_1_13();
    v21 = OUTLINED_FUNCTION_0_15();
    v22(v21);
  }

  if (v8(v6, v7) < v18)
  {
    v8(v6, v7);
  }
}

CGSize __swiftcall CGSize.fitting(_:mode:)(CGSize _, UIViewContentMode mode)
{
  if (_.width != 0.0 || (width = 0.0, height = 0.0, _.height != 0.0))
  {
    v6 = _.width / v2;
    if (v2 == 0.0)
    {
      v6 = 0.0;
    }

    v7 = _.height / v3;
    if (v3 == 0.0)
    {
      v7 = 0.0;
    }

    v8 = v7 * v2;
    v9 = v6 * v3;
    if ((mode - 3) < 0xA || mode == UIViewContentModeScaleAspectFit)
    {
      v11 = v6 < v7;
      if (v6 >= v7)
      {
        width = v8;
      }

      else
      {
        width = _.width;
      }

      if (v11)
      {
        height = v9;
      }

      else
      {
        height = _.height;
      }
    }

    else if (mode == UIViewContentModeScaleAspectFill)
    {
      v14 = v6 < v7;
      if (v6 >= v7)
      {
        width = _.width;
      }

      else
      {
        width = v8;
      }

      if (v14)
      {
        height = _.height;
      }

      else
      {
        height = v9;
      }
    }

    else
    {
      width = _.width;
      height = _.height;
    }
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

BOOL sub_1CA11678C(double a1, double a2, double a3, double a4)
{
  result = 0;
  if (a3 != 0.0 && a4 != 0.0 && a1 != 0.0 && a2 != 0.0)
  {
    return vabdd_f64(a3 / a4, a1 / a2) <= COERCE_DOUBLE(1);
  }

  return result;
}

uint64_t sub_1CA1167D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_navigationController;
  *(v12 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_navigationController) = 0;
  *(v12 + 16) = a1;
  v16 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_bag;
  sub_1CA19BDA8();
  OUTLINED_FUNCTION_0_4();
  (*(v17 + 32))(v12 + v16, a2);
  *(v12 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_clientInfo) = a3;
  v18 = (v12 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_mediaClient);
  *v18 = a4;
  v18[1] = a5;
  v19 = v12 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_metricsContext;
  *v19 = a6;
  *(v19 + 8) = a7;
  *(v12 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_urlPromise) = a8;
  *(v12 + v15) = a9;
  *(v12 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_preferredSizing) = a10;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v12 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_bridgedDestinationProvider) = a11;
  return v12;
}

void sub_1CA116984(uint64_t a1@<X8>)
{
  v2 = sub_1CA19ADF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19B7D8();
  sub_1CA19BE18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C30);
  sub_1CA19B7C8();
  v6 = v12;
  if (v12 != 255)
  {
    v7 = v11;
    if (v12)
    {
      v10[1] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480);
      swift_willThrowTypedImpl();
    }

    else
    {
      v8 = [v11 URL];
      if (v8)
      {
        v9 = v8;
        sub_1CA19ADA8();
        sub_1CA118CF4(v7, v6);

        (*(v3 + 8))(a1, v2);
        (*(v3 + 32))(a1, v5, v2);
        return;
      }
    }

    sub_1CA118CF4(v7, v6);
  }
}

uint64_t sub_1CA116B44()
{
  sub_1CA116DB8();
  sub_1CA11891C(v78, v0, v1, v2, v3, v4, v5, v6, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]);
  sub_1CA117424(v77);
  sub_1CA117EE4(v76, v7, v8, v9, v10, v11, v12, v13, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]);
  sub_1CA117E40(v75, v14, v15, v16, v17, v18, v19, v20, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]);
  sub_1CA11710C(v74, v21, v22, v23, v24, v25, v26, v27, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]);
  sub_1CA116FD8(v73, v28, v29, v30, v31, v32, v33, v34, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]);
  sub_1CA117008(v72);
  sub_1CA11712C(v71, v35, v36, v37, v38, v39, v40, v41, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]);
  sub_1CA117360(v70, v42, v43, v44, v45, v46, v47, v48, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]);
  sub_1CA1176F0(v69);
  sub_1CA1179B8(v68);
  sub_1CA117F84(v67);
  sub_1CA118170(v66);
  sub_1CA118208(&v61);
  __swift_project_boxed_opaque_existential_2(&v56, v59);
  sub_1CA19BAC8();
  v54 = sub_1CA19B8B8();
  v55 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(&v51);
  sub_1CA19B8A8();
  sub_1CA19B7D8();
  v49 = sub_1CA19BE58();

  __swift_destroy_boxed_opaque_existential_2(&v61);
  __swift_destroy_boxed_opaque_existential_2(v66);
  __swift_destroy_boxed_opaque_existential_2(v67);
  __swift_destroy_boxed_opaque_existential_2(v68);
  __swift_destroy_boxed_opaque_existential_2(v69);
  __swift_destroy_boxed_opaque_existential_2(v70);
  __swift_destroy_boxed_opaque_existential_2(v71);
  __swift_destroy_boxed_opaque_existential_2(v72);
  __swift_destroy_boxed_opaque_existential_2(v73);
  __swift_destroy_boxed_opaque_existential_2(v74);
  __swift_destroy_boxed_opaque_existential_2(v75);
  __swift_destroy_boxed_opaque_existential_2(v76);
  __swift_destroy_boxed_opaque_existential_2(v77);
  __swift_destroy_boxed_opaque_existential_2(v78);
  __swift_destroy_boxed_opaque_existential_2(&v51);
  __swift_destroy_boxed_opaque_existential_2(&v56);
  return v49;
}

uint64_t sub_1CA116D24()
{
  type metadata accessor for ObjectGraph();

  v0 = sub_1CA19B7F8();

  sub_1CA19B7A8();

  return v0;
}

uint64_t sub_1CA116D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA116D24();
  *a1 = result;
  return result;
}

uint64_t sub_1CA116DB8()
{
  v1 = v0;
  v2 = type metadata accessor for BaseBootstrap();
  v3 = (v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v7 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_bag;
  v8 = v3[7];
  sub_1CA19BDA8();
  OUTLINED_FUNCTION_0_4();
  (*(v9 + 16))(&v5[v8], v1 + v7);
  v10 = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_clientInfo);
  v11 = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_mediaClient);
  v12 = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_mediaClient + 8);
  *v5 = v6;
  *&v5[v3[8]] = v10;
  v13 = &v5[v3[9]];
  *v13 = v11;
  *(v13 + 1) = v12;
  v14 = v6;
  v15 = v10;

  sub_1CA1128EC();
  sub_1CA118D74(v5, type metadata accessor for BaseBootstrap);
  sub_1CA19BED8();

  v16 = v24;
  v17 = v25;
  __swift_project_boxed_opaque_existential_2(v23, v24);
  v18 = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_metricsContext + 8);
  v21[0] = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_metricsContext);
  v21[1] = v18;
  sub_1CA111ACC(&type metadata for MetricsContext, v21, v16, &type metadata for MetricsContext, v17, v22);
  __swift_project_boxed_opaque_existential_2(v22, v22[3]);
  sub_1CA19ADF8();

  OUTLINED_FUNCTION_3_8();
  sub_1CA19BAD8();

  OUTLINED_FUNCTION_1_14(v21);
  __swift_destroy_boxed_opaque_existential_2(v21);
  __swift_destroy_boxed_opaque_existential_2(v22);
  return __swift_destroy_boxed_opaque_existential_2(v23);
}

uint64_t sub_1CA117008(void *a1)
{
  OUTLINED_FUNCTION_2_11(a1);
  sub_1CA118D30();
  v2[0] = [objc_allocWithZone(MEMORY[0x1E698CCE0]) init];
  sub_1CA19BAF8();

  __swift_project_boxed_opaque_existential_2(v3, v3[3]);
  OUTLINED_FUNCTION_10_5();
  type metadata accessor for ArtworkLoader();
  swift_allocObject();
  sub_1CA10348C();
  OUTLINED_FUNCTION_3_8();
  sub_1CA19BAF8();

  OUTLINED_FUNCTION_1_14(v2);
  __swift_destroy_boxed_opaque_existential_2(v2);
  return __swift_destroy_boxed_opaque_existential_2(v3);
}

void sub_1CA11712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_5();
  a23 = v25;
  a24 = v26;
  v27 = *v24;
  __swift_project_boxed_opaque_existential_2(v28, v28[3]);
  OUTLINED_FUNCTION_10_5();
  type metadata accessor for ClientRequestHandler();
  *(swift_allocObject() + 16) = v27;
  OUTLINED_FUNCTION_5_8();
  sub_1CA19BAE8();

  OUTLINED_FUNCTION_1_14(&a10);
  __swift_destroy_boxed_opaque_existential_2(&a10);
  OUTLINED_FUNCTION_8_6();
}

uint64_t sub_1CA117204@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1CA19ADF8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  sub_1CA116984(&v13 - v9);
  (*(v5 + 16))(v8, v10, v4);
  type metadata accessor for ClientRequestHandler();
  swift_allocObject();

  v11 = sub_1CA1257B4(v8, a1);
  result = (*(v5 + 8))(v10, v4);
  *a2 = v11;
  return result;
}

void sub_1CA117360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_5();
  a23 = v24;
  a24 = v25;
  __swift_project_boxed_opaque_existential_2(v26, v26[3]);
  OUTLINED_FUNCTION_10_5();
  type metadata accessor for DelegateController();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakLoadStrong();
  swift_allocObject();
  sub_1CA13585C(Strong);
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_3_8();
  sub_1CA19BAF8();

  OUTLINED_FUNCTION_1_14(&a10);
  __swift_destroy_boxed_opaque_existential_2(&a10);
  OUTLINED_FUNCTION_8_6();
}

uint64_t sub_1CA117424(void *a1)
{
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C30);

  OUTLINED_FUNCTION_5_8();
  sub_1CA19BAD8();

  __swift_project_boxed_opaque_existential_2(v2, v2[3]);
  sub_1CA19BB08();
  return __swift_destroy_boxed_opaque_existential_2(v2);
}

uint64_t sub_1CA1174F4()
{
  v0 = sub_1CA19B048();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CA19ADF8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  sub_1CA19B7D8();
  sub_1CA19BE18();
  sub_1CA19BD68();
  (*(v5 + 16))(v8, v10, v4);
  sub_1CA19B028();
  v11 = sub_1CA19B038();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v10, v4);
  return v11;
}

uint64_t sub_1CA1176F0(void *a1)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v13 = type metadata accessor for ClientBootstrap();
  v11 = v1;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v11);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1CA19C8F8();

  v11 = 0xD00000000000001ELL;
  v12 = 0x80000001CA1AA330;
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433490);
  v6 = sub_1CA19C168();
  MEMORY[0x1CCA99820](v6);

  v13 = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA0F0440(&v11);
  sub_1CA19AFA8();

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334A0);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1CA111ACC(v9, &Strong, v7, v9, v8, &v11);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_14(&v11);
  return __swift_destroy_boxed_opaque_existential_2(&v11);
}

uint64_t sub_1CA1179B8(void *a1)
{
  OUTLINED_FUNCTION_2_11(a1);
  type metadata accessor for PluginLoader();
  OUTLINED_FUNCTION_0_16();
  sub_1CA19BAE8();
  __swift_project_boxed_opaque_existential_2(v8, v8[3]);
  sub_1CA19BB08();
  OUTLINED_FUNCTION_2_11(v7);
  type metadata accessor for ActionLoader();
  OUTLINED_FUNCTION_0_16();
  sub_1CA19BAE8();
  OUTLINED_FUNCTION_2_11(v6);
  type metadata accessor for ComponentLoader();
  OUTLINED_FUNCTION_0_16();
  sub_1CA19BAE8();
  OUTLINED_FUNCTION_2_11(v5);
  type metadata accessor for LayoutLoader();
  OUTLINED_FUNCTION_0_16();
  sub_1CA19BAE8();
  OUTLINED_FUNCTION_2_11(v4);
  type metadata accessor for PageActionLoader();
  OUTLINED_FUNCTION_0_16();
  sub_1CA19BAE8();
  OUTLINED_FUNCTION_2_11(v3);
  type metadata accessor for PageLoader();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_0_16();
  sub_1CA19BAE8();
  OUTLINED_FUNCTION_1_14(v2);
  __swift_destroy_boxed_opaque_existential_2(v2);
  __swift_destroy_boxed_opaque_existential_2(v3);
  __swift_destroy_boxed_opaque_existential_2(v4);
  __swift_destroy_boxed_opaque_existential_2(v5);
  __swift_destroy_boxed_opaque_existential_2(v6);
  __swift_destroy_boxed_opaque_existential_2(v7);
  return __swift_destroy_boxed_opaque_existential_2(v8);
}

uint64_t sub_1CA117B8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PluginLoader();
  swift_allocObject();
  result = sub_1CA174690();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1CA117BE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for PluginLoader();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  type metadata accessor for ActionLoader();
  swift_allocObject();

  result = sub_1CA0EFD54(v5, a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA117D70@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for PluginLoader();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  a1(0);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1CA19C038();
  *(v6 + 16) = v8;
  *(v6 + 24) = result;
  *a3 = v6;
  return result;
}

void sub_1CA117E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_5();
  a23 = v25;
  a24 = v26;
  __swift_project_boxed_opaque_existential_2(v27, v27[3]);
  OUTLINED_FUNCTION_10_5();
  type metadata accessor for NavigationControllerList();
  v28 = *(v24 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_navigationController);
  swift_allocObject();
  v29 = v28;
  sub_1CA16DE2C(v28);
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_3_8();
  sub_1CA19BAF8();

  OUTLINED_FUNCTION_1_14(&a10);
  __swift_destroy_boxed_opaque_existential_2(&a10);
  OUTLINED_FUNCTION_8_6();
}

void sub_1CA117F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_5();
  a23 = v25;
  a24 = v26;
  v28 = OUTLINED_FUNCTION_11_4(v27);
  v24(v28);
  sub_1CA19BAF8();
  __swift_project_boxed_opaque_existential_2(&a10, a13);
  OUTLINED_FUNCTION_7_5();
  __swift_destroy_boxed_opaque_existential_2(&a10);
  OUTLINED_FUNCTION_8_6();
}

uint64_t sub_1CA117F84(void *a1)
{
  OUTLINED_FUNCTION_2_11(a1);
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_0_16();
  sub_1CA19BAE8();
  OUTLINED_FUNCTION_1_14(v2);
  return __swift_destroy_boxed_opaque_existential_2(v2);
}

uint64_t sub_1CA117FF4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ActionLoader();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  type metadata accessor for ComponentLoader();
  sub_1CA19BE18();
  type metadata accessor for LayoutLoader();
  sub_1CA19BE18();
  type metadata accessor for PageActionLoader();
  sub_1CA19BE18();
  type metadata accessor for PageLoader();
  sub_1CA19BE18();

  sub_1CA1615AC(a1);
}

uint64_t sub_1CA118170(void *a1)
{
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_0_16();
  sub_1CA19BAE8();
  OUTLINED_FUNCTION_1_14(v2);
  return __swift_destroy_boxed_opaque_existential_2(v2);
}

uint64_t sub_1CA118208(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433460);
  type metadata accessor for AMSUIDImpressionsTracker();
  v3 = swift_allocObject();
  sub_1CA19BB78();
  *(v3 + 16) = sub_1CA19BB68();
  v9[0] = v3;
  v9[1] = sub_1CA118C80();
  sub_1CA19BAF8();

  __swift_project_boxed_opaque_existential_2(v10, v10[3]);
  sub_1CA19B868();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  sub_1CA19BAE8();

  __swift_project_boxed_opaque_existential_2(v9, v9[3]);
  sub_1CA19BB08();
  OUTLINED_FUNCTION_2_11(v8);
  sub_1CA19B998();
  OUTLINED_FUNCTION_0_16();
  sub_1CA19BAE8();
  OUTLINED_FUNCTION_2_11(v7);
  sub_1CA19BA68();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_0_16();
  sub_1CA19BAE8();
  OUTLINED_FUNCTION_1_14(v6);
  __swift_destroy_boxed_opaque_existential_2(v6);
  __swift_destroy_boxed_opaque_existential_2(v7);
  __swift_destroy_boxed_opaque_existential_2(v8);
  __swift_destroy_boxed_opaque_existential_2(v9);
  return __swift_destroy_boxed_opaque_existential_2(v10);
}

uint64_t sub_1CA118444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AMSUIDMetricsPipelineProvider();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA19ADF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA116984(v13);
  (*(v11 + 16))(&v9[*(v7 + 28)], v13, v10);
  *v9 = a1;
  v14 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_bag;

  sub_1CA0F2F00(a2 + v14, a3);
  sub_1CA118D74(v9, type metadata accessor for AMSUIDMetricsPipelineProvider);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1CA1185E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CA19B868();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  sub_1CA19B7D8();
  sub_1CA19BE18();
  (*(v3 + 16))(v6, v8, v2);
  sub_1CA19B998();
  swift_allocObject();
  v9 = sub_1CA19B988();
  result = (*(v3 + 8))(v8, v2);
  *a1 = v9;
  return result;
}

uint64_t sub_1CA118744@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CA19BA68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433460);
  sub_1CA19B7D8();
  sub_1CA19BE18();
  v9 = v10;
  swift_unknownObjectRetain();
  sub_1CA19BA58();
  v10 = v9;
  v6 = qword_1EE03C310;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433470);
  __swift_project_value_buffer(v7, qword_1EE03C318);
  sub_1CA19BA18();
  (*(v3 + 8))(a1, v2);
  swift_unknownObjectRelease();
  (*(v3 + 32))(a1, v5, v2);
  return swift_unknownObjectRelease_n();
}

void sub_1CA11894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_5();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = OUTLINED_FUNCTION_11_4(v29);
  v24(v30);
  swift_allocObject();
  v28();
  OUTLINED_FUNCTION_6_6();
  sub_1CA19BAF8();

  __swift_project_boxed_opaque_existential_2(&a10, a13);
  OUTLINED_FUNCTION_7_5();
  __swift_destroy_boxed_opaque_existential_2(&a10);
  OUTLINED_FUNCTION_8_6();
}

uint64_t sub_1CA1189EC()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_bag;
  sub_1CA19BDA8();
  OUTLINED_FUNCTION_0_4();
  (*(v2 + 8))(v0 + v1);

  sub_1CA0EBEAC(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_delegate);
  MEMORY[0x1CCA9AE80](v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_dynamicViewController);

  sub_1CA0EBEAC(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic15ClientBootstrap_mediaContentDelegate);

  return v0;
}

uint64_t sub_1CA118AF4()
{
  sub_1CA1189EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ClientBootstrap()
{
  result = qword_1EE03DFB0;
  if (!qword_1EE03DFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA118BA0()
{
  result = sub_1CA19BDA8();
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

unint64_t sub_1CA118C80()
{
  result = qword_1EE03CE98;
  if (!qword_1EE03CE98)
  {
    type metadata accessor for AMSUIDImpressionsTracker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03CE98);
  }

  return result;
}

void sub_1CA118CF4(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1CA10B868(a1);
  }
}

unint64_t sub_1CA118D30()
{
  result = qword_1EE03C258;
  if (!qword_1EE03C258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C258);
  }

  return result;
}

uint64_t sub_1CA118D74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_14(void *a1)
{
  __swift_project_boxed_opaque_existential_2(a1, v1);

  return sub_1CA19BB08();
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return sub_1CA19BB08();
}

unint64_t sub_1CA118F04()
{
  v1 = v0;
  v2 = sub_1CA19B298();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for ClientConnection.ConnectionError();
  v10 = OUTLINED_FUNCTION_12_4(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  v13 = v12 - v11;
  sub_1CA1209B4(v1, v12 - v11);
  if (__swift_getEnumTagSinglePayload(v13, 2, v2))
  {
    return 0xD00000000000001FLL;
  }

  (*(v4 + 32))(v8, v13, v2);
  sub_1CA19C8F8();

  v15 = sub_1CA1384C0();
  MEMORY[0x1CCA99820](v15);

  MEMORY[0x1CCA99820](46, 0xE100000000000000);
  v14 = 0xD000000000000020;
  (*(v4 + 8))(v8, v2);
  return v14;
}

uint64_t sub_1CA119130(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1CA19B298();
  __swift_allocate_value_buffer(v5, a2);
  *__swift_project_value_buffer(v5, a2) = a3;
  OUTLINED_FUNCTION_7_6();
  v7 = *(v6 + 104);

  return v7();
}

void sub_1CA1191C0()
{
  OUTLINED_FUNCTION_19_0();
  v24 = v2;
  v3 = sub_1CA19C588();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_0();
  sub_1CA19C558();
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_3();
  v8 = sub_1CA19B318();
  v9 = OUTLINED_FUNCTION_12_4(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334C0);
  swift_allocObject();
  v23 = v0;
  v0[2] = sub_1CA19B3F8();
  v0[10] = 0;
  sub_1CA0F78AC();
  sub_1CA19B2F8();
  v25[0] = MEMORY[0x1E69E7CC0];
  sub_1CA11FBE4(&qword_1EE03C238, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4345A0);
  OUTLINED_FUNCTION_3_9();
  sub_1CA10B7BC(v10, v11);
  OUTLINED_FUNCTION_38_0();
  sub_1CA19C788();
  v12 = *MEMORY[0x1E69E8090];
  v13 = *(v5 + 104);
  v13(v1, v12, v3);
  OUTLINED_FUNCTION_15_1();
  v0[11] = sub_1CA19C5D8();
  sub_1CA19C548();
  sub_1CA19B2F8();
  v13(v1, v12, v3);
  OUTLINED_FUNCTION_15_1();
  v0[12] = sub_1CA19C5D8();
  sub_1CA19B2F8();
  v25[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_38_0();
  sub_1CA19C788();
  v13(v1, v12, v3);
  OUTLINED_FUNCTION_15_1();
  v0[13] = sub_1CA19C5D8();
  v0[9] = v24;
  type metadata accessor for ClientConnectionExportedObject();
  OUTLINED_FUNCTION_14_2();
  v14 = swift_allocObject();
  *(v14 + 16) = v24;
  v0[3] = v14;
  v15 = type metadata accessor for ExtensionConnector();
  OUTLINED_FUNCTION_14_2();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v23[7] = v15;
  v23[8] = &off_1F49CE970;
  v23[4] = v16;
  v17 = qword_1EE03B230;
  swift_retain_n();
  if (v17 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v18 = sub_1CA19AFF8();
  __swift_project_value_buffer(v18, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v19 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v19);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v20 = type metadata accessor for ClientConnection();
  OUTLINED_FUNCTION_7_4(v20);
  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_38_0();
  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v25);
  v25[3] = MEMORY[0x1E69E6158];
  v25[0] = 0xD00000000000001DLL;
  v25[1] = 0x80000001CA1AA520;
  sub_1CA19AF38();
  sub_1CA11FF84(v25, &qword_1EC433830);
  sub_1CA19AFC8();

  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_20_0();
}

id *sub_1CA1196A8()
{
  v1 = v0[10];
  if (v1)
  {
    [v1 setInvalidationHandler_];
    v2 = v0[10];
    if (v2)
    {
      [v2 invalidate];
    }
  }

  __swift_destroy_boxed_opaque_existential_2((v0 + 4));

  return v0;
}

uint64_t sub_1CA11972C()
{
  sub_1CA1196A8();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

void sub_1CA119784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_19_0();
  v66 = v23;
  v67 = v24;
  v64 = v25;
  v65 = v26;
  v62 = v27;
  v63 = v28;
  v69 = v29;
  v70 = v30;
  v61 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  OUTLINED_FUNCTION_12_4(v36);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_22_0();
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v60 = a21;
  v38 = sub_1CA19AFF8();
  v59 = __swift_project_value_buffer(v38, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_16_2();
  v39 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v39);
  OUTLINED_FUNCTION_6_7();
  *(OUTLINED_FUNCTION_32_0() + 16) = xmmword_1CA1A0B80;
  v71[3] = type metadata accessor for ClientConnection();
  v71[0] = v21;
  v68 = v21;

  v40 = AMSLogKey();
  if (v40)
  {
    v41 = v40;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  OUTLINED_FUNCTION_11_5();
  sub_1CA19C8F8();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x1CCA99820](0xD000000000000024);
  if (qword_1EE03DAE0 != -1)
  {
    swift_once();
  }

  v42 = sub_1CA19B298();
  v43 = __swift_project_value_buffer(v42, qword_1EE03DAE8);
  sub_1CA19C998();
  OUTLINED_FUNCTION_36_0(v71[0]);
  sub_1CA19AF38();
  sub_1CA11FF84(v71, &qword_1EC433830);
  sub_1CA19AFC8();

  OUTLINED_FUNCTION_7_6();
  (*(v44 + 16))(v22, v43, v42);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v42);
  v45 = *(v32 + 16);
  v59 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v61;
  v45(v59, v60, v61);
  v47 = (*(v32 + 80) + 80) & ~*(v32 + 80);
  v48 = swift_allocObject();
  v49 = v70;
  *(v48 + 2) = v69;
  *(v48 + 3) = v49;
  v60 = v22;
  v50 = v62;
  v51 = v63;
  *(v48 + 4) = v62;
  *(v48 + 5) = v51;
  v53 = v64;
  v52 = v65;
  *(v48 + 6) = v64;
  *(v48 + 7) = v52;
  v55 = v66;
  v54 = v67;
  *(v48 + 8) = v66;
  *(v48 + 9) = v54;
  (*(v32 + 32))(&v48[v47], v59, v46);
  v56 = v69;
  sub_1CA0F763C(v70, v50);
  v57 = v51;
  sub_1CA0F763C(v53, v52);
  sub_1CA0F763C(v55, v54);
  v58 = v60;
  sub_1CA11CE84(v60, 0, sub_1CA12085C, v48);

  sub_1CA11FF84(v58, &qword_1EC4334E0);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA119BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1CA19AE08();
  v10 = sub_1CA19AE08();
  v11 = sub_1CA19AE08();
  v12 = sub_1CA19AD88();
  aBlock[4] = sub_1CA19BEF8();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA119CF8;
  aBlock[3] = &block_descriptor_128;
  v14 = _Block_copy(aBlock);

  [a1 bootstrapWithAccount:a3 bagData:v9 clientInfo:a6 mediaClientData:v10 metricsContextData:v11 url:v12 completion:v14];
  _Block_release(v14);
}

void sub_1CA119CF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1CA119D64()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v0;
  v23 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  OUTLINED_FUNCTION_12_4(v6);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24_1();
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v8 = sub_1CA19AFF8();
  __swift_project_value_buffer(v8, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v9 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v9);
  OUTLINED_FUNCTION_6_7();
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_41_0(v10, xmmword_1CA1A0B80);
  OUTLINED_FUNCTION_7_4(v11);
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_30_0();
  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v24);
  v24[3] = MEMORY[0x1E69E6158];
  v24[0] = 0xD000000000000012;
  v24[1] = 0x80000001CA1AA820;
  sub_1CA19AF38();
  sub_1CA11FF84(v24, &qword_1EC433830);
  sub_1CA19AFC8();

  if (qword_1EE03BFE0 != -1)
  {
    swift_once();
  }

  v14 = sub_1CA19B298();
  __swift_project_value_buffer(v14, qword_1EE03BFE8);
  OUTLINED_FUNCTION_7_6();
  (*(v15 + 16))(v1);
  v16 = OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v23;
  v19[4] = v2;

  sub_1CA0F763C(v5, v23);
  v20 = OUTLINED_FUNCTION_26_0();
  sub_1CA11D13C(v20, v21, v22, v19);

  sub_1CA11FF84(v1, &qword_1EC4334E0);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA11A044(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CA19AE08();
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a2;
  v11[4] = sub_1CA120854;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1CA11A638;
  v11[3] = &block_descriptor_122;
  v10 = _Block_copy(v11);

  [a1 performWithRequestData:v8 completion:v10];
  _Block_release(v10);
}

void sub_1CA11A150(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1CA19AEF8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v13 = sub_1CA19C0E8();
      v14 = sub_1CA19C0E8();
      v9 = AMSError();
    }

    v15 = a3;
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v16 = sub_1CA19AFF8();
    __swift_project_value_buffer(v16, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v22 = type metadata accessor for ClientConnection();
    v21[0] = a4;

    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v21);
    sub_1CA19AEE8();
    sub_1CA19AED8();
    swift_getErrorValue();
    v22 = v20;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v21);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_2Tm);
    sub_1CA19AEB8();
    sub_1CA11FF84(v21, &qword_1EC433830);
    sub_1CA19AED8();
    sub_1CA19AF08();
    sub_1CA19AFB8();

    sub_1CA19BEA8();
  }

  else
  {
    sub_1CA0F763C(a1, a2);
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v10 = sub_1CA19AFF8();
    __swift_project_value_buffer(v10, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v22 = type metadata accessor for ClientConnection();
    v21[0] = a4;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v21);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    v21[0] = a1;
    v21[1] = a2;
    sub_1CA19BEC8();
    sub_1CA0F7694(a1, a2);
  }
}

uint64_t sub_1CA11A638(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1CA19AE18();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1CA0F7694(v4, v8);
}

void sub_1CA11A6E4()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  OUTLINED_FUNCTION_12_4(v4);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_24_1();
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v6 = sub_1CA19AFF8();
  __swift_project_value_buffer(v6, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_16_2();
  v7 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v7);
  OUTLINED_FUNCTION_6_7();
  v8 = OUTLINED_FUNCTION_32_0();
  v9 = OUTLINED_FUNCTION_41_0(v8, xmmword_1CA1A0B80);
  OUTLINED_FUNCTION_7_4(v9);
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_40_0();

  OUTLINED_FUNCTION_11_5();
  sub_1CA19C8F8();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x1CCA99820](0xD000000000000028);
  if (qword_1EC432C38 != -1)
  {
    swift_once();
  }

  v12 = sub_1CA19B298();
  __swift_project_value_buffer(v12, qword_1EC4334A8);
  sub_1CA19C998();
  OUTLINED_FUNCTION_36_0(v22);
  sub_1CA19AF38();
  sub_1CA11FF84(&v22, &qword_1EC433830);
  sub_1CA19AFC8();

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_30_0();
  v13();
  v14 = OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  OUTLINED_FUNCTION_8_4();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = v0;
  v18 = v3;

  v19 = OUTLINED_FUNCTION_26_0();
  sub_1CA11CE84(v19, v20, v21, v17);

  sub_1CA11FF84(v1, &qword_1EC4334E0);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA11A9BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a2;
  v10[4] = sub_1CA12012C;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CA119CF8;
  v10[3] = &block_descriptor_80;
  v9 = _Block_copy(v10);

  [a1 updateWithAccount:a3 completion:v9];
  _Block_release(v9);
}

void sub_1CA11AAB8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v5 = sub_1CA19AFF8();
    __swift_project_value_buffer(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v14 = type metadata accessor for ClientConnection();
    v13[0] = a2;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v13);
    sub_1CA19AF18();
    swift_getErrorValue();
    v14 = v12;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v13);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_2Tm);
    sub_1CA19AF38();
    sub_1CA11FF84(v13, &qword_1EC433830);
    sub_1CA19AFB8();

    sub_1CA19BEA8();
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v8 = sub_1CA19AFF8();
    __swift_project_value_buffer(v8, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v14 = type metadata accessor for ClientConnection();
    v13[0] = a2;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v13);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    sub_1CA19BEC8();
  }
}

void sub_1CA11AE94()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  OUTLINED_FUNCTION_12_4(v5);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v9 = sub_1CA19B388();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_0();
  v13 = *(v2 + 88);
  *v1 = v13;
  (*(v11 + 104))(v1, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = sub_1CA19B3C8();
  (*(v11 + 8))(v1, v9);
  if (v13)
  {
    if (qword_1EE03B230 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_2();
LABEL_3:
  v15 = sub_1CA19AFF8();
  __swift_project_value_buffer(v15, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_16_2();
  v16 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v16);
  OUTLINED_FUNCTION_6_7();
  v17 = OUTLINED_FUNCTION_32_0();
  v18 = OUTLINED_FUNCTION_41_0(v17, xmmword_1CA1A0B80);
  OUTLINED_FUNCTION_7_4(v18);
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_40_0();

  OUTLINED_FUNCTION_11_5();
  sub_1CA19C8F8();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x1CCA99820](0xD000000000000021);
  if (qword_1EE03DB28 != -1)
  {
    swift_once();
  }

  v21 = sub_1CA19B298();
  __swift_project_value_buffer(v21, qword_1EE03DB30);
  sub_1CA19C998();
  OUTLINED_FUNCTION_36_0(v23[0]);
  sub_1CA19AF38();
  sub_1CA11FF84(v23, &qword_1EC433830);
  sub_1CA19AFC8();

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_30_0();
  v22();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v21);
  sub_1CA11CE84(v8, v4, sub_1CA11B218, 0);
  sub_1CA11FF84(v8, &qword_1EC4334E0);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA11B22C()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  OUTLINED_FUNCTION_12_4(v1);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_24_1();
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_16_2();
  v4 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v4);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_32_0() + 16) = xmmword_1CA1A0B80;
  v5 = type metadata accessor for ClientConnection();
  OUTLINED_FUNCTION_7_4(v5);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_38_0();
  sub_1CA19AF58();

  OUTLINED_FUNCTION_11_5();
  sub_1CA19C8F8();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x1CCA99820](0xD000000000000023);
  if (qword_1EE03DB00 != -1)
  {
    swift_once();
  }

  v8 = sub_1CA19B298();
  v9 = __swift_project_value_buffer(v8, qword_1EE03DB08);
  sub_1CA19C998();
  OUTLINED_FUNCTION_36_0(v17);
  sub_1CA19AF38();
  sub_1CA11FF84(&v17, &qword_1EC433830);
  sub_1CA19AFC8();

  OUTLINED_FUNCTION_7_6();
  (*(v10 + 16))(v0, v9, v8);
  v11 = OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v8);
  v14 = OUTLINED_FUNCTION_26_0();
  sub_1CA11CE84(v14, v15, v16, 0);
  sub_1CA11FF84(v0, &qword_1EC4334E0);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA11B504(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9[4] = sub_1CA19BEF8();
  v9[5] = v7;
  OUTLINED_FUNCTION_8_7();
  v9[1] = 1107296256;
  v9[2] = sub_1CA119CF8;
  v9[3] = a3;
  v8 = _Block_copy(v9);

  [a1 *a4];
  _Block_release(v8);
}

void sub_1CA11B598()
{
  OUTLINED_FUNCTION_19_0();
  v0 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v22 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_3();
  v5 = v4 - v3;
  v21 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334D0);
  v12 = sub_1CA19BF08();
  OUTLINED_FUNCTION_14_2();
  v13 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_8_4();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v25 = sub_1CA11FC3C;
  v26 = v14;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_3_6();
  v23[2] = v15;
  v24 = &block_descriptor_31;
  v16 = _Block_copy(v23);

  sub_1CA19B2F8();
  OUTLINED_FUNCTION_9_6();
  sub_1CA11FBE4(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  OUTLINED_FUNCTION_3_9();
  sub_1CA10B7BC(v19, v20);
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v11, v5, v16);
  _Block_release(v16);
  (*(v22 + 8))(v5, v0);
  (*(v7 + 8))(v11, v21);

  OUTLINED_FUNCTION_14_2();
  swift_allocObject();
  swift_weakInit();
  v24 = sub_1CA19B8B8();
  v25 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(v23);
  sub_1CA19B8A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334D8);
  sub_1CA10B7BC(&qword_1EE03C2E0, &qword_1EC4334D8);
  sub_1CA19BEB8();

  __swift_destroy_boxed_opaque_existential_2(v23);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA11B92C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for ClientConnection.ConnectionError();
    sub_1CA11FBE4(&qword_1EE03DBC8, type metadata accessor for ClientConnection.ConnectionError);
    v4 = swift_allocError();
    v6 = v5;
    v7 = sub_1CA19B298();
    __swift_storeEnumTagSinglePayload(v6, 1, 2, v7);
    sub_1CA19BEA8();

    return;
  }

  v1 = Strong;
  v2 = *(Strong + 80);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v8 = sub_1CA11C0A4();
    if (!v8)
    {
      type metadata accessor for ClientConnection.ConnectionError();
      sub_1CA11FBE4(&qword_1EE03DBC8, type metadata accessor for ClientConnection.ConnectionError);
      v10 = swift_allocError();
      v12 = v11;
      v13 = sub_1CA19B298();
      __swift_storeEnumTagSinglePayload(v12, 1, 2, v13);
      sub_1CA19BEA8();

      goto LABEL_8;
    }

    v9 = *(v1 + 80);
    *(v1 + 80) = v8;
    v3 = v8;
  }

  sub_1CA19BEC8();

LABEL_8:
}

uint64_t sub_1CA11BAF0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_1CA11BC4C(v1);
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334D8);
    v5 = sub_1CA19BF08();

    sub_1CA11FC4C(v2, v4 & 1);

    sub_1CA11FCE0(v2, v4 & 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334D8);
    type metadata accessor for ClientConnection.ConnectionError();
    sub_1CA11FBE4(&qword_1EE03DBC8, type metadata accessor for ClientConnection.ConnectionError);
    swift_allocError();
    v7 = v6;
    v8 = sub_1CA19B298();
    __swift_storeEnumTagSinglePayload(v7, 1, 2, v8);
    return sub_1CA19BE78();
  }

  return v5;
}

uint64_t sub_1CA11BC4C(void *a1)
{
  OUTLINED_FUNCTION_14_2();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);
  if (a1 && (OUTLINED_FUNCTION_8_4(), v5 = swift_allocObject(), *(v5 + 16) = v1, *(v5 + 24) = v3, v17[4] = sub_1CA11FC34, v17[5] = v5, OUTLINED_FUNCTION_8_7(), v17[1] = 1107296256, v17[2] = sub_1CA12FF5C, v17[3] = &block_descriptor_24, v6 = _Block_copy(v17), , , , v7 = [a1 remoteObjectProxyWithErrorHandler_], _Block_release(v6), sub_1CA19C768(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334C8), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v17[0];
  }

  else
  {
    OUTLINED_FUNCTION_4_5();
    v9 = *v4;
    v8 = *v4;
    if (!*v4)
    {
      type metadata accessor for ClientConnection.ConnectionError();
      OUTLINED_FUNCTION_4_9();
      sub_1CA11FBE4(v10, v11);
      v8 = swift_allocError();
      v13 = v12;
      v14 = sub_1CA19B298();
      __swift_storeEnumTagSinglePayload(v13, 1, 2, v14);
    }

    v15 = v9;
  }

  return v8;
}

id sub_1CA11BE40(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v6 = sub_1CA19AFF8();
  __swift_project_value_buffer(v6, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v14 = type metadata accessor for ClientConnection();
  v13[0] = a2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v13);
  sub_1CA19AF18();
  swift_getErrorValue();
  v14 = v12;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v13);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF38();
  sub_1CA11FF84(v13, &qword_1EC433830);
  sub_1CA19AFB8();

  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = a1;

  return a1;
}

void *sub_1CA11C0A4()
{
  v1 = v0;
  v2 = sub_1CA19B388();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  v9 = v1[11];
  *(v7 - v6) = v9;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x1E69E8020], v2);
  v10 = v9;
  LOBYTE(v9) = sub_1CA19B3C8();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if (qword_1EE03B230 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_2();
LABEL_3:
  v11 = sub_1CA19AFF8();
  __swift_project_value_buffer(v11, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_16_2();
  v12 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v12);
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v41 = type metadata accessor for ClientConnection();
  aBlock = v1;

  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_30_0();
  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&aBlock);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  v15 = v1[7];
  v16 = v1[8];
  __swift_project_boxed_opaque_existential_2(v1 + 4, v15);
  v17 = (*(v16 + 8))(v15, v16);
  if (!v17)
  {
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_27_0(v31, xmmword_1CA1A0B80);
    v32 = AMSLogKey();
    if (v32)
    {
      v33 = v32;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&aBlock);
    OUTLINED_FUNCTION_35_0();
    sub_1CA19AF18();
    sub_1CA19AFB8();

    return 0;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v20 = [v19 interfaceWithProtocol_];
  [v18 setExportedInterface_];
  v21 = [v19 interfaceWithProtocol_];
  [v18 setRemoteObjectInterface_];
  OUTLINED_FUNCTION_14_2();
  v22 = swift_allocObject();
  swift_weakInit();
  v42 = sub_1CA11FB08;
  v43 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1CA0F4068;
  v41 = &block_descriptor_5;
  v23 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler_];
  _Block_release(v23);
  OUTLINED_FUNCTION_14_2();
  v24 = swift_allocObject();
  swift_weakInit();
  v42 = sub_1CA11FB58;
  v43 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1CA0F4068;
  v41 = &block_descriptor_9_0;
  v25 = _Block_copy(&aBlock);

  [v18 setInterruptionHandler_];
  _Block_release(v25);
  [v18 setExportedObject_];
  [v18 resume];
  sub_1CA11AE94();
  v26 = sub_1CA124674(&aBlock, 0, 1);

  if (v26)
  {
    v36 = v20;
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_27_0(v27, xmmword_1CA1A0930);
    v28 = v26;
    v29 = AMSLogKey();
    if (v29)
    {
      v30 = v29;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&aBlock);
    OUTLINED_FUNCTION_35_0();
    sub_1CA19AF18();
    swift_getErrorValue();
    v41 = v37;
    __swift_allocate_boxed_opaque_existential_2Tm(&aBlock);
    OUTLINED_FUNCTION_7_6();
    (*(v34 + 16))();
    sub_1CA19AF38();
    sub_1CA11FF84(&aBlock, &qword_1EC433830);
    sub_1CA19AFB8();

    return 0;
  }

  return v18;
}

void sub_1CA11C764(void *a1)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v2 = sub_1CA19AFF8();
  __swift_project_value_buffer(v2, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v12[3] = type metadata accessor for ClientConnection();
  v12[0] = a1;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v12);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  v5 = a1[10];
  a1[10] = 0;

  v6 = a1[7];
  v7 = a1[8];
  __swift_project_boxed_opaque_existential_2(a1 + 4, v6);
  (*(v7 + 24))(v6, v7);
  type metadata accessor for ClientConnection.ConnectionError();
  sub_1CA11FBE4(&qword_1EE03DBC8, type metadata accessor for ClientConnection.ConnectionError);
  v8 = swift_allocError();
  v10 = v9;
  v11 = sub_1CA19B298();
  __swift_storeEnumTagSinglePayload(v10, 2, 2, v11);
  v12[0] = v8;
  sub_1CA19B3E8();
}

void sub_1CA11C9E0()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  v12 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_4_5();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23[4] = v4;
    v23[5] = Strong;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    OUTLINED_FUNCTION_3_6();
    v23[2] = v17;
    v23[3] = v2;
    v22 = _Block_copy(v23);

    sub_1CA19B2F8();
    OUTLINED_FUNCTION_9_6();
    sub_1CA11FBE4(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    OUTLINED_FUNCTION_3_9();
    sub_1CA10B7BC(v20, v21);
    sub_1CA19C788();
    MEMORY[0x1CCA99C20](0, v0, v11, v22);
    _Block_release(v22);
    (*(v7 + 8))(v11, v5);
    (*(v14 + 8))(v0, v12);
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA11CC44(uint64_t a1)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v2 = sub_1CA19AFF8();
  __swift_project_value_buffer(v2, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v9[3] = type metadata accessor for ClientConnection();
  v9[0] = a1;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v9);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  type metadata accessor for ClientConnection.ConnectionError();
  sub_1CA11FBE4(&qword_1EE03DBC8, type metadata accessor for ClientConnection.ConnectionError);
  v5 = swift_allocError();
  v7 = v6;
  v8 = sub_1CA19B298();
  __swift_storeEnumTagSinglePayload(v7, 2, 2, v8);
  v9[0] = v5;
  sub_1CA19B3E8();
}

uint64_t sub_1CA11CE84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v27 - v10;
  if (a2)
  {
    v28 = a2;
    v12 = sub_1CA11BC4C(a2);
    v13 = v8;
    v14 = a4;
    v15 = a1;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334D8);
    sub_1CA19BF08();

    sub_1CA11FC4C(v12, v17 & 1);

    v18 = v17 & 1;
    a1 = v15;
    a4 = v14;
    v8 = v13;
    v19 = v28;
    sub_1CA11FCE0(v12, v18);
  }

  else
  {
    sub_1CA11B598();
    v19 = 0;
  }

  v20 = swift_allocObject();
  swift_weakInit();
  sub_1CA11FCEC(a1, v11);
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  v22[2] = v20;
  v22[3] = v23;
  v22[4] = a4;
  sub_1CA11FE94(v11, v22 + v21);
  *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v30[3] = sub_1CA19B8B8();
  v30[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(v30);
  v24 = v19;

  sub_1CA19B8A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
  sub_1CA10B7BC(&qword_1EE03C2C0, &qword_1EC432CC0);
  v25 = sub_1CA19BEB8();

  __swift_destroy_boxed_opaque_existential_2(v30);
  return v25;
}

uint64_t sub_1CA11D13C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v27 - v10;
  if (a2)
  {
    v28 = a2;
    v12 = sub_1CA11BC4C(a2);
    v13 = v8;
    v14 = a4;
    v15 = a1;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334D8);
    sub_1CA19BF08();

    sub_1CA11FC4C(v12, v17 & 1);

    v18 = v17 & 1;
    a1 = v15;
    a4 = v14;
    v8 = v13;
    v19 = v28;
    sub_1CA11FCE0(v12, v18);
  }

  else
  {
    sub_1CA11B598();
    v19 = 0;
  }

  v20 = swift_allocObject();
  swift_weakInit();
  sub_1CA11FCEC(a1, v11);
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  v22[2] = v20;
  v22[3] = v23;
  v22[4] = a4;
  sub_1CA11FE94(v11, v22 + v21);
  *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v30[3] = sub_1CA19B8B8();
  v30[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(v30);
  v24 = v19;

  sub_1CA19B8A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334F0);
  sub_1CA10B7BC(&qword_1EE03C2E8, &qword_1EC4334F0);
  v25 = sub_1CA19BEB8();

  __swift_destroy_boxed_opaque_existential_2(v30);
  return v25;
}

uint64_t sub_1CA11D3F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v105 = a5;
  v99 = a4;
  v98 = a3;
  v100 = a1;
  v7 = sub_1CA19B348();
  v93 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v88 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v104 = (&v80 - v12);
  v13 = sub_1CA19B298();
  v97 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E8);
  v102 = *(v18 - 8);
  v103 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v80 - v19;
  v20 = sub_1CA19B2D8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1CA19B318();
  v108 = *(v106 - 1);
  MEMORY[0x1EEE9AC00](v106);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v87 = v7;
    v90 = v17;
    v95 = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
    v107 = sub_1CA19BF08();
    v96 = v13;
    v29 = v27[7];
    v28 = v27[8];
    __swift_project_boxed_opaque_existential_2(v27 + 4, v29);
    (*(v28 + 16))(v29, v28);
    v30 = sub_1CA19BF08();
    v94 = v27[12];
    v31 = swift_allocObject();
    v32 = v99;
    v31[2] = v98;
    v31[3] = v32;
    v31[4] = v100;
    v31[5] = v30;
    v114 = sub_1CA120A88;
    v115 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1CA0F4068;
    v113 = &block_descriptor_42;
    v33 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    v99 = v27;
    sub_1CA19B2F8();
    v109 = MEMORY[0x1E69E7CC0];
    v34 = sub_1CA11FBE4(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    v36 = sub_1CA10B7BC(&qword_1EE03C2A0, &unk_1EC433C70);
    v83 = v35;
    v82 = v36;
    v84 = v34;
    sub_1CA19C788();
    v85 = v25;
    v37 = v99;
    MEMORY[0x1CCA99C20](0, v25, v23, v33);
    _Block_release(v33);
    v38 = *(v21 + 8);
    v86 = v23;
    v98 = v20;
    v94 = v21 + 8;
    v38(v23, v20);
    v39 = v108 + 8;
    v81 = *(v108 + 8);
    v81(v25, v106);

    v40 = v37[13];
    v100 = v30;
    v41 = v107;
    sub_1CA1203E8(v30, v40, v107);

    v42 = v37[13];
    v43 = sub_1CA0F78AC();
    v113 = v43;
    v114 = MEMORY[0x1E69AB720];
    aBlock = v42;
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = v41;
    v46 = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334C0);
    sub_1CA10B7BC(&unk_1EE03C340, &qword_1EC4334C0);
    v47 = v101;
    v48 = v96;
    sub_1CA19B6A8();

    (*(v102 + 8))(v47, v103);
    __swift_destroy_boxed_opaque_existential_2(&aBlock);
    v49 = v104;
    sub_1CA11FCEC(v105, v104);
    if (__swift_getEnumTagSinglePayload(v49, 1, v48) == 1)
    {
      sub_1CA11FF84(v49, &qword_1EC4334E0);
      v50 = v107;
    }

    else
    {
      v103 = v38;
      v105 = v43;
      v108 = v39;
      v54 = v97;
      v55 = *(v97 + 32);
      v56 = v90;
      v55(v90, v49, v48);
      if ([objc_opt_self() devMode])
      {
        (*(v54 + 8))(v56, v48);
        v50 = v107;
      }

      else if (v37[9])
      {
        type metadata accessor for AMSUIDTimeoutManager();
        sub_1CA19B7D8();

        sub_1CA19BE18();
        v108 = aBlock;
        v106 = v37[13];
        v57 = v92;
        (*(v54 + 16))(v92, v56, v48);
        v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v59 = v54;
        v60 = swift_allocObject();
        v50 = v107;
        *(v60 + 16) = v107;
        *(v60 + 24) = v37;
        v55((v60 + v58), v57, v48);

        v61 = v90;
        sub_1CA0F56F8(v90, v106, sub_1CA11FF6C, v60);

        (*(v59 + 8))(v61, v48);
      }

      else
      {
        v102 = v37[13];
        v62 = v88;
        sub_1CA19B338();
        v63 = v89;
        MEMORY[0x1CCA989F0](v62, v56);
        v64 = v54;
        v65 = *(v93 + 8);
        v93 += 8;
        v104 = v65;
        (v65)(v62, v87);
        v66 = *(v54 + 16);
        v67 = v92;
        v66(v92, v56, v48);
        v68 = (*(v64 + 80) + 24) & ~*(v64 + 80);
        v69 = swift_allocObject();
        v50 = v107;
        *(v69 + 16) = v107;
        v55((v69 + v68), v67, v48);
        v114 = sub_1CA11FF54;
        v115 = v69;
        aBlock = MEMORY[0x1E69E9820];
        v111 = 1107296256;
        v112 = sub_1CA0F4068;
        v113 = &block_descriptor_56;
        v70 = _Block_copy(&aBlock);

        v71 = v85;
        sub_1CA19B2F8();
        v109 = MEMORY[0x1E69E7CC0];
        v72 = v86;
        v73 = v98;
        sub_1CA19C788();
        MEMORY[0x1CCA99BC0](v63, v71, v72, v70);
        _Block_release(v70);
        v103(v72, v73);
        v81(v71, v106);
        (v104)(v63, v87);
        (*(v64 + 8))(v90, v48);
      }

      v43 = v105;
    }

    v74 = swift_allocObject();
    swift_weakInit();

    v75 = swift_allocObject();
    v76 = v95;
    *(v75 + 16) = v74;
    *(v75 + 24) = v76;
    v77 = v76;

    v78 = sub_1CA19C598();
    v113 = v43;
    v114 = MEMORY[0x1E69AB720];
    aBlock = v78;
    sub_1CA19BE98();

    __swift_destroy_boxed_opaque_existential_2(&aBlock);
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v51 = sub_1CA19AFF8();
    __swift_project_value_buffer(v51, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v52 = MEMORY[0x1E69E6158];
    v113 = MEMORY[0x1E69E6158];
    aBlock = 0xD000000000000010;
    v111 = 0x80000001CA1A29B0;
    sub_1CA19AF38();
    sub_1CA11FF84(&aBlock, &qword_1EC433830);
    v113 = v52;
    aBlock = 0xD000000000000047;
    v111 = 0x80000001CA1AA670;
    sub_1CA19AF38();
    sub_1CA11FF84(&aBlock, &qword_1EC433830);
    sub_1CA19AF18();
    sub_1CA19AFB8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
    type metadata accessor for ClientConnection.ConnectionError();
    sub_1CA11FBE4(&qword_1EE03DBC8, type metadata accessor for ClientConnection.ConnectionError);
    swift_allocError();
    __swift_storeEnumTagSinglePayload(v53, 1, 2, v13);
    return sub_1CA19BE78();
  }

  return v50;
}

uint64_t sub_1CA11E300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v105 = a5;
  v99 = a4;
  v98 = a3;
  v100 = a1;
  v7 = sub_1CA19B348();
  v93 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v88 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v104 = (&v80 - v12);
  v13 = sub_1CA19B298();
  v97 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E8);
  v102 = *(v18 - 8);
  v103 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v80 - v19;
  v20 = sub_1CA19B2D8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1CA19B318();
  v108 = *(v106 - 1);
  MEMORY[0x1EEE9AC00](v106);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v87 = v7;
    v90 = v17;
    v95 = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334F0);
    v107 = sub_1CA19BF08();
    v96 = v13;
    v29 = v27[7];
    v28 = v27[8];
    __swift_project_boxed_opaque_existential_2(v27 + 4, v29);
    (*(v28 + 16))(v29, v28);
    v30 = sub_1CA19BF08();
    v94 = v27[12];
    v31 = swift_allocObject();
    v32 = v99;
    v31[2] = v98;
    v31[3] = v32;
    v31[4] = v100;
    v31[5] = v30;
    v114 = sub_1CA120374;
    v115 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1CA0F4068;
    v113 = &block_descriptor_93;
    v33 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    v99 = v27;
    sub_1CA19B2F8();
    v109 = MEMORY[0x1E69E7CC0];
    v34 = sub_1CA11FBE4(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    v36 = sub_1CA10B7BC(&qword_1EE03C2A0, &unk_1EC433C70);
    v83 = v35;
    v82 = v36;
    v84 = v34;
    sub_1CA19C788();
    v85 = v25;
    v37 = v99;
    MEMORY[0x1CCA99C20](0, v25, v23, v33);
    _Block_release(v33);
    v38 = *(v21 + 8);
    v86 = v23;
    v98 = v20;
    v94 = v21 + 8;
    v38(v23, v20);
    v39 = v108 + 8;
    v81 = *(v108 + 8);
    v81(v25, v106);

    v40 = v37[13];
    v100 = v30;
    v41 = v107;
    sub_1CA1203E8(v30, v40, v107);

    v42 = v37[13];
    v43 = sub_1CA0F78AC();
    v113 = v43;
    v114 = MEMORY[0x1E69AB720];
    aBlock = v42;
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = v41;
    v46 = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334C0);
    sub_1CA10B7BC(&unk_1EE03C340, &qword_1EC4334C0);
    v47 = v101;
    v48 = v96;
    sub_1CA19B6A8();

    (*(v102 + 8))(v47, v103);
    __swift_destroy_boxed_opaque_existential_2(&aBlock);
    v49 = v104;
    sub_1CA11FCEC(v105, v104);
    if (__swift_getEnumTagSinglePayload(v49, 1, v48) == 1)
    {
      sub_1CA11FF84(v49, &qword_1EC4334E0);
      v50 = v107;
    }

    else
    {
      v103 = v38;
      v105 = v43;
      v108 = v39;
      v54 = v97;
      v55 = *(v97 + 32);
      v56 = v90;
      v55(v90, v49, v48);
      if ([objc_opt_self() devMode])
      {
        (*(v54 + 8))(v56, v48);
        v50 = v107;
      }

      else if (v37[9])
      {
        type metadata accessor for AMSUIDTimeoutManager();
        sub_1CA19B7D8();

        sub_1CA19BE18();
        v108 = aBlock;
        v106 = v37[13];
        v57 = v92;
        (*(v54 + 16))(v92, v56, v48);
        v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v59 = v54;
        v60 = swift_allocObject();
        v50 = v107;
        *(v60 + 16) = v107;
        *(v60 + 24) = v37;
        v55((v60 + v58), v57, v48);

        v61 = v90;
        sub_1CA0F56F8(v90, v106, sub_1CA12075C, v60);

        (*(v59 + 8))(v61, v48);
      }

      else
      {
        v102 = v37[13];
        v62 = v88;
        sub_1CA19B338();
        v63 = v89;
        MEMORY[0x1CCA989F0](v62, v56);
        v64 = v54;
        v65 = *(v93 + 8);
        v93 += 8;
        v104 = v65;
        (v65)(v62, v87);
        v66 = *(v54 + 16);
        v67 = v92;
        v66(v92, v56, v48);
        v68 = (*(v64 + 80) + 24) & ~*(v64 + 80);
        v69 = swift_allocObject();
        v50 = v107;
        *(v69 + 16) = v107;
        v55((v69 + v68), v67, v48);
        v114 = sub_1CA120630;
        v115 = v69;
        aBlock = MEMORY[0x1E69E9820];
        v111 = 1107296256;
        v112 = sub_1CA0F4068;
        v113 = &block_descriptor_107;
        v70 = _Block_copy(&aBlock);

        v71 = v85;
        sub_1CA19B2F8();
        v109 = MEMORY[0x1E69E7CC0];
        v72 = v86;
        v73 = v98;
        sub_1CA19C788();
        MEMORY[0x1CCA99BC0](v63, v71, v72, v70);
        _Block_release(v70);
        v103(v72, v73);
        v81(v71, v106);
        (v104)(v63, v87);
        (*(v64 + 8))(v90, v48);
      }

      v43 = v105;
    }

    v74 = swift_allocObject();
    swift_weakInit();

    v75 = swift_allocObject();
    v76 = v95;
    *(v75 + 16) = v74;
    *(v75 + 24) = v76;
    v77 = v76;

    v78 = sub_1CA19C598();
    v113 = v43;
    v114 = MEMORY[0x1E69AB720];
    aBlock = v78;
    sub_1CA19BE98();

    __swift_destroy_boxed_opaque_existential_2(&aBlock);
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v51 = sub_1CA19AFF8();
    __swift_project_value_buffer(v51, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v52 = MEMORY[0x1E69E6158];
    v113 = MEMORY[0x1E69E6158];
    aBlock = 0xD000000000000010;
    v111 = 0x80000001CA1A29B0;
    sub_1CA19AF38();
    sub_1CA11FF84(&aBlock, &qword_1EC433830);
    v113 = v52;
    aBlock = 0xD000000000000047;
    v111 = 0x80000001CA1AA670;
    sub_1CA19AF38();
    sub_1CA11FF84(&aBlock, &qword_1EC433830);
    sub_1CA19AF18();
    sub_1CA19AFB8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334F0);
    type metadata accessor for ClientConnection.ConnectionError();
    sub_1CA11FBE4(&qword_1EE03DBC8, type metadata accessor for ClientConnection.ConnectionError);
    swift_allocError();
    __swift_storeEnumTagSinglePayload(v53, 1, 2, v13);
    return sub_1CA19BE78();
  }

  return v50;
}

uint64_t sub_1CA11F20C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __int128 *))
{
  OUTLINED_FUNCTION_4_5();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v8 = sub_1CA19AFF8();
    __swift_project_value_buffer(v8, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v9 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v9);
    OUTLINED_FUNCTION_6_7();
    v10 = swift_allocObject();
    *(&v22 + 1) = OUTLINED_FUNCTION_41_0(v10, xmmword_1CA1A1A40);
    *&v21 = v7;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_1CA19C118();
    }

    OUTLINED_FUNCTION_30_0();
    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v21);
    v13 = MEMORY[0x1E69E6158];
    *(&v22 + 1) = MEMORY[0x1E69E6158];
    *&v21 = 0xD000000000000047;
    *(&v21 + 1) = 0x80000001CA1AA670;
    v14 = sub_1CA19AF38();
    OUTLINED_FUNCTION_31_0(v14, v15);
    *(&v22 + 1) = v13;
    *&v21 = 0xD000000000000016;
    *(&v21 + 1) = 0x80000001CA1AA720;
    v16 = sub_1CA19AF38();
    OUTLINED_FUNCTION_31_0(v16, v17);
    swift_getErrorValue();
    *(&v22 + 1) = v24;
    __swift_allocate_boxed_opaque_existential_2Tm(&v21);
    OUTLINED_FUNCTION_7_6();
    (*(v18 + 16))();
    v19 = sub_1CA19AF38();
    OUTLINED_FUNCTION_31_0(v19, v20);
    sub_1CA19AFB8();

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    a4(a1, &v21);

    return sub_1CA11FF84(&v21, &unk_1EC433C80);
  }

  return result;
}

void sub_1CA11F4BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, double))
{
  if (sub_1CA19BE28())
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v7 = sub_1CA19AFF8();
    __swift_project_value_buffer(v7, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v8 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v8);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v25 = type metadata accessor for ClientConnection();
    v24[0] = a2;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v24);
    sub_1CA19AF18();
    sub_1CA19AF98();
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v11 = sub_1CA19AFF8();
    __swift_project_value_buffer(v11, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    OUTLINED_FUNCTION_16_2();
    v12 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v12);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_32_0() + 16) = xmmword_1CA1A0B80;
    v25 = type metadata accessor for ClientConnection();
    v24[0] = a2;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v24);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_1CA19C8F8();
    OUTLINED_FUNCTION_28_0();
    MEMORY[0x1CCA99820](0xD00000000000001CLL);
    v15 = sub_1CA19B298();
    sub_1CA19C998();
    MEMORY[0x1CCA99820](46, 0xE100000000000000);
    v25 = MEMORY[0x1E69E6158];
    sub_1CA19AF38();
    sub_1CA11FF84(v24, &qword_1EC433830);
    sub_1CA19AF98();

    type metadata accessor for ClientConnection.ConnectionError();
    OUTLINED_FUNCTION_4_9();
    sub_1CA11FBE4(v16, v17);
    v18 = swift_allocError();
    v20 = v19;
    OUTLINED_FUNCTION_7_6();
    (*(v21 + 16))(v22, a3, v15);
    __swift_storeEnumTagSinglePayload(v20, 0, 2, v15);
    v23 = OUTLINED_FUNCTION_39_0();
    a4(v18, v23);
    sub_1CA11FF84(v24, &unk_1EC433C80);
  }
}

void sub_1CA11F908(uint64_t a1, uint64_t a2, void (*a3)(void *, double))
{
  OUTLINED_FUNCTION_16_2();
  type metadata accessor for ClientConnection.ConnectionError();
  OUTLINED_FUNCTION_4_9();
  sub_1CA11FBE4(v5, v6);
  v7 = swift_allocError();
  v9 = v8;
  v10 = sub_1CA19B298();
  OUTLINED_FUNCTION_7_6();
  (*(v11 + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 2, v10);
  v12 = OUTLINED_FUNCTION_39_0();
  a3(v7, v12);
  sub_1CA11FF84(&v13, &unk_1EC433C80);
}

uint64_t sub_1CA11FA10(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_4_5();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CA11FFE0(result + 32, v12);

    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_2(v12, v13);
    v7 = a3;
    if (!a3)
    {
      OUTLINED_FUNCTION_4_5();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v7 = *(Strong + 80);
        v9 = v7;
      }

      else
      {
        v7 = 0;
      }
    }

    v10 = *(v6 + 32);
    v11 = a3;
    v10(v7, v5, v6);

    return __swift_destroy_boxed_opaque_existential_2(v12);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ClientConnection.ConnectionError()
{
  result = qword_1EE03DBB8;
  if (!qword_1EE03DBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA11FBE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CA11FC4C(id a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480);
    swift_willThrowTypedImpl();
    sub_1CA19BEA8();
    v4 = a1;
    v5 = 1;
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1CA19BEC8();
    v4 = a1;
    v5 = 0;
  }

  sub_1CA11FCE0(v4, v5);
}

void sub_1CA11FCE0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CA11FCEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA11FD5C(uint64_t a1, uint64_t a2)
{
  sub_1CA11FFE0(a2, v3);
  sub_1CA14D448(v3);
  return sub_1CA11FF84(v3, &unk_1EC433C80);
}

uint64_t sub_1CA11FDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CA11FFE0(a4, v7);
  sub_1CA14D564(a1, a2, v7);
  return sub_1CA11FF84(v7, &unk_1EC433C80);
}

uint64_t sub_1CA11FE20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _BYTE *))
{
  sub_1CA11FFE0(a3, v7);
  a4(a1, v7);
  return sub_1CA11FF84(v7, &unk_1EC433C80);
}

uint64_t sub_1CA11FE94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA11FF84(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_7_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CA11FFE0(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_7_6();
  (*v3)(a2);
  return a2;
}

uint64_t objectdestroy_61Tm()
{

  __swift_destroy_boxed_opaque_existential_2(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t objectdestroy_35Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  OUTLINED_FUNCTION_7_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);

  v7 = sub_1CA19B298();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_7_6();
    (*(v8 + 8))(v0 + v4, v7);
  }

  v9 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v3 | 7);
}

uint64_t sub_1CA120270(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E0);
  OUTLINED_FUNCTION_7_3(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v10 = *(v2 + 2);
  v11 = *(v2 + 3);
  v12 = *(v2 + 4);
  v13 = *&v2[(*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a2(a1, v10, v11, v12, &v2[v9], v13);
}

uint64_t objectdestroy_38Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA1203E8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1CA0F78AC();
  v6 = MEMORY[0x1E69AB720];
  v14[3] = v5;
  v14[4] = MEMORY[0x1E69AB720];
  v14[0] = a2;
  v7 = a2;
  if ((sub_1CA19BE28() & 1) == 0)
  {
    sub_1CA11FFE0(v14, v13);
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    sub_1CA0EBE94(v13, v8 + 24);
    sub_1CA11FFE0(v14, v12);
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    sub_1CA0EBE94(v12, v9 + 24);
    swift_retain_n();
    v11[3] = v5;
    v11[4] = v6;
    v11[0] = sub_1CA19C598();
    sub_1CA19BE68();

    __swift_destroy_boxed_opaque_existential_2(v11);
  }

  return __swift_destroy_boxed_opaque_existential_2(v14);
}

uint64_t objectdestroy_49Tm()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_52Tm()
{
  sub_1CA19B298();
  OUTLINED_FUNCTION_1_0();

  v0 = OUTLINED_FUNCTION_25_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_22_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1CA120648(void (*a1)(void *, double))
{
  v3 = sub_1CA19B298();
  OUTLINED_FUNCTION_12_4(v3);
  sub_1CA11F908(*(v1 + 16), v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)), a1);
}

uint64_t objectdestroy_58Tm()
{
  sub_1CA19B298();
  OUTLINED_FUNCTION_1_0();

  v0 = OUTLINED_FUNCTION_25_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_22_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1CA120774(void (*a1)(void *, double))
{
  v3 = sub_1CA19B298();
  OUTLINED_FUNCTION_12_4(v3);
  sub_1CA11F4BC(*(v1 + 16), *(v1 + 24), v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), a1);
}

uint64_t objectdestroy_20Tm()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1CA12085C(void *a1, uint64_t a2)
{
  v5 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_12_4(v5);
  sub_1CA119BB4(a1, a2, v2[2], v2[3], v2[4], v2[5]);
}

uint64_t sub_1CA120914()
{
  v0 = sub_1CA19B298();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1CA1209B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientConnection.ConnectionError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_5()
{
  result = __swift_destroy_boxed_opaque_existential_2(v0 - 112);
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 - 128) = *(v3 - 208);
  *(v3 - 152) = v2;
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1CA11FF84(va, v2);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_36_0(uint64_t a1@<X8>)
{
  *(v3 - 88) = v2;
  *(v3 - 112) = a1;
  *(v3 - 104) = v1;
}

void OUTLINED_FUNCTION_37_0()
{
  v1 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v1;
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_41_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for ClientConnection();
}

uint64_t sub_1CA120CD4(uint64_t a1)
{
  v2 = sub_1CA19AE68();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  v9 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_3();
  v15 = v14 - v13;
  v16 = sub_1CA19AE38();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_3();
  v22 = v21 - v20;
  sub_1CA0F1200(a1, v28);
  if (OUTLINED_FUNCTION_0_17())
  {
    sub_1CA0F76A8(v27[0], v27[1]);
LABEL_21:
    v23 = 1;
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    (*(v18 + 8))(v22, v16);
    goto LABEL_21;
  }

  if (OUTLINED_FUNCTION_0_17() & 1) != 0 || (OUTLINED_FUNCTION_0_17() & 1) != 0 || (OUTLINED_FUNCTION_0_17())
  {
    goto LABEL_21;
  }

  if (OUTLINED_FUNCTION_0_17())
  {

    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v15, v9);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    (*(v4 + 8))(v8, v2);
    goto LABEL_21;
  }

  sub_1CA0F2110(0, &qword_1EC4334F8);
  if (OUTLINED_FUNCTION_0_17() || (sub_1CA0F2110(0, &qword_1EC433500), OUTLINED_FUNCTION_0_17()) || (sub_1CA0F2110(0, &unk_1EE03C138), OUTLINED_FUNCTION_0_17()) || (sub_1CA0F2110(0, &qword_1EC433508), OUTLINED_FUNCTION_0_17()) || (sub_1CA0F2110(0, &qword_1EC433510), OUTLINED_FUNCTION_0_17()) || (sub_1CA0F2110(0, &qword_1EC433518), OUTLINED_FUNCTION_0_17()))
  {

    goto LABEL_21;
  }

  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v25 = sub_1CA19AFF8();
  __swift_project_value_buffer(v25, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v26 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for ClientConnectionAccountFilter();
  sub_1CA19AF48();

  sub_1CA19AF18();
  sub_1CA0F1200(a1, v27);
  sub_1CA19AF78();
  sub_1CA0F0440(v27);
  sub_1CA19AFB8();

  v23 = 0;
LABEL_22:
  __swift_destroy_boxed_opaque_existential_2(v28);
  return v23;
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_dynamicCast();
}

uint64_t sub_1CA12125C()
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](0);
  return sub_1CA19CC18();
}

uint64_t sub_1CA1212A8()
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](0);
  return sub_1CA19CC18();
}

uint64_t sub_1CA1212E8@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 16))
  {
    sub_1CA19BDA8();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();

    OUTLINED_FUNCTION_5_9();

    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v4 = sub_1CA19AFF8();
    __swift_project_value_buffer(v4, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v5 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v5);
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v9[3] = type metadata accessor for ClientConnectionExportedObject();
    v9[0] = v1;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v9);
    OUTLINED_FUNCTION_4_10();
    sub_1CA19AFB8();

    v8 = sub_1CA19BDA8();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  }
}

uint64_t sub_1CA121504()
{
  if (*(v0 + 16))
  {
    sub_1CA0F2110(0, &qword_1EE03C268);
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();

    sub_1CA19BE18();

    return v6[0];
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v2 = sub_1CA19AFF8();
    __swift_project_value_buffer(v2, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v3 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v3);
    *(OUTLINED_FUNCTION_2_12() + 16) = xmmword_1CA1A0B80;
    v6[3] = type metadata accessor for ClientConnectionExportedObject();
    v6[0] = v0;

    v4 = AMSLogKey();
    if (v4)
    {
      v5 = v4;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v6);
    OUTLINED_FUNCTION_4_10();
    sub_1CA19AFB8();

    return 0;
  }
}

id sub_1CA1216D8()
{
  v1 = v0;
  if (!*(v0 + 16))
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v9 = sub_1CA19AFF8();
    __swift_project_value_buffer(v9, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v10 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v10);
    *(OUTLINED_FUNCTION_2_12() + 16) = xmmword_1CA1A0B80;
    v15 = type metadata accessor for ClientConnectionExportedObject();
    v14[0] = v0;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v14);
    OUTLINED_FUNCTION_4_10();
    sub_1CA19AFB8();
    goto LABEL_15;
  }

  type metadata accessor for NavigationControllerList();
  OUTLINED_FUNCTION_16_2();
  sub_1CA19B7D8();

  OUTLINED_FUNCTION_5_9();
  v2 = NavigationControllerList.topNavigationController.getter();
  if (!v2 || (v3 = v2, v4 = [v2 topViewController], v3, !v4))
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v5 = sub_1CA19AFF8();
    __swift_project_value_buffer(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v6 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v6);
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v15 = type metadata accessor for ClientConnectionExportedObject();
    v14[0] = v1;

    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v14);
    sub_1CA19AF18();
    sub_1CA19AFB8();

LABEL_15:

    return 0;
  }

  return v4;
}

void sub_1CA121A3C(void *a1, uint64_t a2, const void *a3)
{
  v6 = sub_1CA19B2D8();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CA19B318();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v34 = a3;
  _Block_copy(a3);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v10 = sub_1CA19AFF8();
  __swift_project_value_buffer(v10, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v36 = type metadata accessor for ClientConnectionExportedObject();
  aBlock[0] = a2;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(aBlock);
  sub_1CA19AF18();
  v36 = sub_1CA0F2110(0, &qword_1EC433548);
  aBlock[0] = a1;
  v13 = a1;
  sub_1CA19AF38();
  sub_1CA0F54A0(aBlock, &qword_1EC433830);
  sub_1CA19AFC8();

  v14 = sub_1CA1216D8();
  if (v14)
  {
    v15 = v14;
    sub_1CA12334C();
    sub_1CA0F2110(0, &qword_1EE03C230);
    v16 = sub_1CA19C598();
    v17 = swift_allocObject();
    v17[2] = v13;
    v17[3] = v15;
    v17[4] = a2;
    v17[5] = sub_1CA1237AC;
    v17[6] = v9;
    v37 = sub_1CA123624;
    v38 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0F4068;
    v36 = &block_descriptor_38;
    v18 = _Block_copy(aBlock);

    v19 = v13;
    v20 = v15;

    v21 = v28;
    sub_1CA19B2F8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CA0F7938();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA0F40C4();
    v22 = v30;
    v23 = v33;
    sub_1CA19C788();
    MEMORY[0x1CCA99C20](0, v21, v22, v18);
    _Block_release(v18);

    (*(v32 + 8))(v22, v23);
    (*(v29 + 8))(v21, v31);
    v24 = v34;
  }

  else
  {
    sub_1CA123428();
    v25 = swift_allocError();
    v26 = sub_1CA19AD18();
    v24 = v34;
    (*(v34 + 2))(v34, 0, v26);
  }

  _Block_release(v24);
}

void sub_1CA121F94(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CA0F2110(0, &qword_1EC433550);
  v10 = sub_1CA1227BC(a1, a2);
  v11 = [v10 performAuthentication];
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v14[4] = sub_1CA1237C8;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1CA1237C4;
  v14[3] = &block_descriptor_44;
  v13 = _Block_copy(v14);

  [v11 addFinishBlock_];
  _Block_release(v13);
}

void sub_1CA122108(void *a1, uint64_t a2, const void *a3)
{
  v6 = sub_1CA19B2D8();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CA19B318();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v34 = a3;
  _Block_copy(a3);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v10 = sub_1CA19AFF8();
  __swift_project_value_buffer(v10, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v36 = type metadata accessor for ClientConnectionExportedObject();
  aBlock[0] = a2;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(aBlock);
  sub_1CA19AF18();
  v36 = sub_1CA0F2110(0, &qword_1EC433538);
  aBlock[0] = a1;
  v13 = a1;
  sub_1CA19AF38();
  sub_1CA0F54A0(aBlock, &qword_1EC433830);
  sub_1CA19AFC8();

  v14 = sub_1CA1216D8();
  if (v14)
  {
    v15 = v14;
    sub_1CA12334C();
    sub_1CA0F2110(0, &qword_1EE03C230);
    v16 = sub_1CA19C598();
    v17 = swift_allocObject();
    v17[2] = v13;
    v17[3] = v15;
    v17[4] = a2;
    v17[5] = sub_1CA123544;
    v17[6] = v9;
    v37 = sub_1CA123560;
    v38 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0F4068;
    v36 = &block_descriptor_23;
    v18 = _Block_copy(aBlock);

    v19 = v13;
    v20 = v15;

    v21 = v28;
    sub_1CA19B2F8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CA0F7938();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA0F40C4();
    v22 = v30;
    v23 = v33;
    sub_1CA19C788();
    MEMORY[0x1CCA99C20](0, v21, v22, v18);
    _Block_release(v18);

    (*(v32 + 8))(v22, v23);
    (*(v29 + 8))(v21, v31);
    v24 = v34;
  }

  else
  {
    sub_1CA123428();
    v25 = swift_allocError();
    v26 = sub_1CA19AD18();
    v24 = v34;
    (*(v34 + 2))(v34, 0, v26);
  }

  _Block_release(v24);
}

void sub_1CA122660(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CA0F2110(0, &qword_1EC433540);
  v10 = sub_1CA1227BC(a1, a2);
  v11 = [v10 present];
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v14[4] = sub_1CA123578;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1CA1237C4;
  v14[3] = &block_descriptor_29;
  v13 = _Block_copy(v14);

  [v11 addFinishBlock_];
  _Block_release(v13);
}

id sub_1CA1227BC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 presentingViewController:a2];

  return v4;
}

void sub_1CA122830(void *a1, uint64_t a2, const void *a3)
{
  v60 = a1;
  v5 = sub_1CA19B2D8();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1CA19B318();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v47 - v9;
  v63 = sub_1CA19BDA8();
  v59 = *(v63 - 8);
  v11 = *(v59 + 64);
  v12 = MEMORY[0x1EEE9AC00](v63);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v47 - v13;
  v61 = swift_allocObject();
  v62 = a3;
  *(v61 + 16) = a3;
  _Block_copy(a3);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v14 = sub_1CA19AFF8();
  __swift_project_value_buffer(v14, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v65 = type metadata accessor for ClientConnectionExportedObject();
  aBlock[0] = a2;

  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(aBlock);
  sub_1CA19AF18();
  v65 = sub_1CA0F2110(0, &qword_1EC433520);
  aBlock[0] = v60;
  v17 = v60;
  sub_1CA19AF38();
  sub_1CA0F54A0(aBlock, &qword_1EC433830);
  sub_1CA19AFC8();

  sub_1CA1212E8(v10);
  v18 = v63;
  if (__swift_getEnumTagSinglePayload(v10, 1, v63) == 1)
  {
    sub_1CA0F54A0(v10, &qword_1EC433D90);
LABEL_10:
    sub_1CA123428();
    v45 = swift_allocError();
    v46 = sub_1CA19AD18();
    v44 = v62;
    (*(v62 + 2))(v62, 0, v46);

    goto LABEL_11;
  }

  v20 = v58;
  v19 = v59;
  v21 = *(v59 + 32);
  v21(v58, v10, v18);
  v22 = sub_1CA1216D8();
  if (!v22)
  {
    (*(v19 + 8))(v20, v18);
    goto LABEL_10;
  }

  v50 = v22;
  sub_1CA12334C();
  v49 = sub_1CA121504();
  sub_1CA0F2110(0, &qword_1EE03C230);
  v60 = sub_1CA19C598();
  v23 = v51;
  (*(v19 + 16))(v51, v20, v18);
  v24 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = a2;
  v26 = v21;
  v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v18;
  v31 = v29;
  *(v29 + 16) = v17;
  v26(v29 + v24, v23, v30);
  v32 = v50;
  *(v31 + v25) = v50;
  v33 = v49;
  *(v31 + v27) = v49;
  *(v31 + v28) = v48;
  v34 = (v31 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v61;
  *v34 = sub_1CA1237AC;
  v34[1] = v35;
  v66 = sub_1CA12347C;
  v67 = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA0F4068;
  v65 = &block_descriptor_6;
  v36 = _Block_copy(aBlock);
  v37 = v33;

  v38 = v17;
  v39 = v32;

  v40 = v52;
  sub_1CA19B2F8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CA0F7938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  v41 = v54;
  v42 = v57;
  sub_1CA19C788();
  v43 = v60;
  MEMORY[0x1CCA99C20](0, v40, v41, v36);
  _Block_release(v36);

  (*(v56 + 8))(v41, v42);
  (*(v53 + 8))(v40, v55);
  (*(v59 + 8))(v58, v63);
  v44 = v62;
LABEL_11:

  _Block_release(v44);
}

void sub_1CA122FBC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CA0F2110(0, &qword_1EC433530);
  v13 = a1;
  v14 = sub_1CA19BD68();
  v15 = sub_1CA123148(v13, v14, a3);
  [v15 setClientInfo_];
  v16 = [v15 presentEngagement];
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v19[4] = sub_1CA1237C8;
  v19[5] = v17;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1CA1237C4;
  v19[3] = &block_descriptor_14;
  v18 = _Block_copy(v19);

  [v16 addFinishBlock_];
  _Block_release(v18);
}

id sub_1CA123148(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 bag:a2 presentingViewController:a3];

  swift_unknownObjectRelease();
  return v5;
}

void sub_1CA1231B4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1CA123258(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(id, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(v9, a1, v8);
  _Block_release(v8);
}

void sub_1CA1232DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1CA19AD18();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1CA12337C(uint64_t result)
{
  if (*(v1 + 16))
  {
    v2 = result;
    type metadata accessor for AMSUIDTimeoutManager();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();

    v3 = sub_1CA19BE18();
    v2(v3);
  }

  return result;
}

unint64_t sub_1CA123428()
{
  result = qword_1EC433528;
  if (!qword_1EC433528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433528);
  }

  return result;
}

void sub_1CA12347C()
{
  v1 = sub_1CA19BDA8();
  OUTLINED_FUNCTION_7_3(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  v11 = *(v0 + v7);
  v12 = *(v0 + v8);
  v13 = *(v0 + v9);
  v14 = (v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  sub_1CA122FBC(v10, v0 + v6, v11, v12, v13, v15, v16);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA12357C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  sub_1CA123364();
  return v5(a1, a2);
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for ClientConnectionExportedObject.PresentationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA123744()
{
  result = qword_1EC433558;
  if (!qword_1EC433558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433558);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return sub_1CA19AF18();
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return sub_1CA19BE18();
}

id sub_1CA123830()
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v2 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v2);
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v6[3] = type metadata accessor for XPCServiceConnector();
  v6[0] = v0;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v6);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  sub_1CA0F2110(0, &qword_1EC433560);
  return sub_1CA12413C(0xD00000000000002CLL, 0x80000001CA1AAE40, &selRef_initWithServiceName_);
}

uint64_t sub_1CA123A0C()
{
  if (qword_1EE03D480 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  sub_1CA10E2CC();
  sub_1CA10D508();
}

uint64_t sub_1CA123A74()
{
  if (qword_1EE03D480 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  v0 = qword_1EE040CC8;
  *(qword_1EE040CC8 + 16) = 0;
  *(v0 + 20) = 0;

  sub_1CA10D278();
}

uint64_t sub_1CA123AE0(void *a1)
{
  if (qword_1EE03D480 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  sub_1CA10E168();

  v2 = qword_1EE040CC8;

  if (a1)
  {
    v3 = [a1 processIdentifier];
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 16) = v3;
  *(v2 + 20) = a1 == 0;
  sub_1CA10D278();
}

void *sub_1CA123C28()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (!v1)
  {
    v3 = v0;
    v4 = objc_opt_self();
    sub_1CA0F2110(0, &qword_1EE03BD40);
    v5 = sub_1CA12413C(0xD00000000000001ELL, 0x80000001CA1AADC0, &selRef_initWithExtensionPointIdentifier_);
    v6 = [v4 executeQuery_];

    sub_1CA0F2110(0, &qword_1EE03C200);
    v7 = sub_1CA19C2B8();

    if (sub_1CA0F04EC(v7))
    {
      sub_1CA17EBD4(0, (v7 & 0xC000000000000001) == 0, v7);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1CCA99FB0](0, v7);
      }

      else
      {
        v8 = *(v7 + 32);
      }

      v2 = v8;
      v9 = sub_1CA0F04EC(v7);

      if (v9 < 2)
      {
        if (qword_1EE03B230 != -1)
        {
          OUTLINED_FUNCTION_0_2();
        }

        v18 = sub_1CA19AFF8();
        __swift_project_value_buffer(v18, qword_1EE040B90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
        v19 = sub_1CA19AF88();
        OUTLINED_FUNCTION_7_3(v19);
        *(OUTLINED_FUNCTION_3_10() + 16) = xmmword_1CA1A0B80;
        type metadata accessor for ExtensionConnector();
        OUTLINED_FUNCTION_4_11();
        v20 = AMSLogKey();
        if (v20)
        {
          v21 = v20;
          sub_1CA19C118();
        }

        OUTLINED_FUNCTION_5_10();

        __swift_destroy_boxed_opaque_existential_2(v26);
        sub_1CA19AF18();
        sub_1CA19AFC8();
      }

      else
      {
        if (qword_1EE03B230 != -1)
        {
          OUTLINED_FUNCTION_0_2();
        }

        v10 = sub_1CA19AFF8();
        __swift_project_value_buffer(v10, qword_1EE040B90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
        v11 = sub_1CA19AF88();
        OUTLINED_FUNCTION_7_3(v11);
        *(OUTLINED_FUNCTION_3_10() + 16) = xmmword_1CA1A0B80;
        type metadata accessor for ExtensionConnector();
        OUTLINED_FUNCTION_4_11();
        v12 = AMSLogKey();
        if (v12)
        {
          v13 = v12;
          sub_1CA19C118();
        }

        OUTLINED_FUNCTION_5_10();

        __swift_destroy_boxed_opaque_existential_2(v26);
        sub_1CA19AF18();
        sub_1CA19AFB8();
      }

      v22 = *(v3 + 16);
      *(v3 + 16) = v2;
      v23 = v2;
    }

    else
    {

      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v14 = sub_1CA19AFF8();
      __swift_project_value_buffer(v14, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      v15 = sub_1CA19AF88();
      OUTLINED_FUNCTION_7_3(v15);
      *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
      type metadata accessor for ExtensionConnector();
      OUTLINED_FUNCTION_4_11();
      v16 = AMSLogKey();
      if (v16)
      {
        v17 = v16;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(v26);
      sub_1CA19AF18();
      sub_1CA19AFB8();

      v2 = 0;
    }
  }

  v24 = v1;
  return v2;
}

id sub_1CA12413C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1CA19C0E8();

  v6 = [v4 *a3];

  return v6;
}

id sub_1CA1241B0()
{
  v1 = v0;
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v2 = sub_1CA19AFF8();
  __swift_project_value_buffer(v2, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v3 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v3);
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v4 = type metadata accessor for ExtensionConnector();
  v19 = v4;
  v18[0] = v0;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v18);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  v7 = sub_1CA123C28();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v18[0] = 0;
  v9 = [v7 makeXPCConnectionWithError_];
  v10 = v18[0];
  if (!v9)
  {
    v11 = v10;
    v12 = sub_1CA19AD28();

    swift_willThrow();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v19 = v4;
    v18[0] = v1;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v18);
    sub_1CA19AF18();
    swift_getErrorValue();
    v15 = sub_1CA19CB88();
    v19 = MEMORY[0x1E69E6158];
    v18[0] = v15;
    v18[1] = v16;
    sub_1CA19AF38();
    sub_1CA0F0440(v18);
    sub_1CA19AFB8();

    return 0;
  }

  return v9;
}

uint64_t sub_1CA124508()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_11()
{
}

uint64_t OUTLINED_FUNCTION_5_10()
{

  return sub_1CA19AF58();
}

void sub_1CA12460C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_1CA124674(_BYTE *a1, uint64_t a2, int a3)
{
  v46 = a3;
  v39 = a2;
  v49 = a1;
  v41 = sub_1CA19B348();
  OUTLINED_FUNCTION_1_0();
  v40 = v3;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - v7;
  sub_1CA19C588();
  OUTLINED_FUNCTION_1_0();
  v44 = v9;
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v12 = v11 - v10;
  sub_1CA19C558();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  v14 = sub_1CA19B318();
  v15 = OUTLINED_FUNCTION_12_4(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_3();
  v16 = swift_allocObject();
  *(v16 + 16) = 1;
  v48 = v16 + 16;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v47 = (v17 + 16);
  v43 = sub_1CA0F2110(0, &qword_1EE03C230);
  v42 = "ed w/in barrier - resolving";
  sub_1CA19B2F8();
  v50[0] = MEMORY[0x1E69E7CC0];
  sub_1CA129EB4(&qword_1EE03C238, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4345A0);
  sub_1CA10B7BC(&qword_1EE03C298, &unk_1EC4345A0);
  v18 = v17;
  sub_1CA19C788();
  (*(v44 + 104))(v12, *MEMORY[0x1E69E8090], v45);
  v19 = v43;
  v20 = sub_1CA19C5D8();
  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  OUTLINED_FUNCTION_8_4();
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v21;
  OUTLINED_FUNCTION_8_4();
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v21;
  v50[3] = v19;
  v50[4] = MEMORY[0x1E69AB720];
  v50[0] = v20;
  v24 = v21;

  v25 = v20;
  sub_1CA19BE68();

  __swift_destroy_boxed_opaque_existential_2(v50);
  if (v46)
  {
    sub_1CA19C538();
LABEL_5:

    goto LABEL_6;
  }

  v26 = v37;
  sub_1CA19B338();
  v27 = v38;
  sub_1CA19B3A8();
  v28 = *(v40 + 8);
  v29 = v41;
  v28(v26, v41);
  sub_1CA19C528();
  v28(v27, v29);
  if ((sub_1CA19B2A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v30 = sub_1CA19C0E8();
  v31 = AMSError();

  v32 = v47;
  swift_beginAccess();
  v33 = *v32;
  *v32 = v31;

LABEL_6:
  swift_beginAccess();
  *v49 = *(v16 + 16);
  swift_beginAccess();
  v34 = *(v18 + 16);
  v35 = v34;

  return v34;
}

uint64_t sub_1CA124C0C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for ClientConnectionAccountFilter();
  sub_1CA0F1200(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433580);
  v4 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    v5 = sub_1CA12510C(v11);
LABEL_5:
    v6 = v5;

    v12[0] = v6;
    goto LABEL_6;
  }

  sub_1CA0F1200(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433588);
  if (swift_dynamicCast())
  {
    v5 = sub_1CA1253F0();
    goto LABEL_5;
  }

  sub_1CA0F1200(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433590);
  if (swift_dynamicCast())
  {
    sub_1CA125240(v11);
    v9 = v8;

    v12[0] = v9;
LABEL_6:
    result = swift_dynamicCast();
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12[3] = v4 + 8;
  v12[0] = swift_allocObject();
  sub_1CA0F1200(a1, v12[0] + 16);
  v10 = sub_1CA120CD4(v12);
  result = __swift_destroy_boxed_opaque_existential_2(v12);
  if (v10)
  {
    return sub_1CA0F1200(a1, a2);
  }

LABEL_7:
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t sub_1CA124DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ClientConnectionAccountFilter();
  sub_1CA10BCDC(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433580);
  if (swift_dynamicCast())
  {
    v4 = *(*&v17[0] + 16);
    if (v4)
    {
      v5 = *&v17[0] + 32;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1CA0F1200(v5, v18);
        sub_1CA124C0C(&v15, v18);
        __swift_destroy_boxed_opaque_existential_2(v18);
        if (v16)
        {
          sub_1CA0F11E8(&v15, v17);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA16B31C();
            v6 = v8;
          }

          v7 = *(v6 + 16);
          if (v7 >= *(v6 + 24) >> 1)
          {
            sub_1CA16B31C();
            v6 = v9;
          }

          *(v6 + 16) = v7 + 1;
          sub_1CA0F11E8(v17, (v6 + 32 * v7 + 32));
        }

        else
        {
          sub_1CA10BDC8(&v15, &qword_1EC433830);
        }

        v5 += 32;
        --v4;
      }

      while (v4);
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v6;
LABEL_19:
    result = swift_dynamicCast();
    if (result)
    {
      return result;
    }

    goto LABEL_20;
  }

  sub_1CA10BCDC(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433588);
  if (swift_dynamicCast())
  {
    v10 = sub_1CA1253F0(*&v17[0]);

    v18[0] = v10;
    goto LABEL_19;
  }

  sub_1CA10BCDC(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433590);
  v11 = MEMORY[0x1E69E69B8];
  if (swift_dynamicCast())
  {
    v12 = sub_1CA125240(*&v17[0]);

    v18[0] = v12;
    return swift_dynamicCast();
  }

  v18[3] = v11;
  v18[0] = swift_allocObject();
  sub_1CA10BCDC(a1, v18[0] + 16);
  v14 = sub_1CA120CD4(v18);
  result = __swift_destroy_boxed_opaque_existential_2(v18);
  if (v14)
  {
    return sub_1CA10BCDC(a1, a2);
  }

LABEL_20:
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1CA12510C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1CA0F1200(v2, v11);
    sub_1CA124C0C(&v8, v11);
    __swift_destroy_boxed_opaque_existential_2(v11);
    if (v9)
    {
      sub_1CA0F11E8(&v8, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA16B31C();
        v3 = v5;
      }

      v4 = *(v3 + 16);
      if (v4 >= *(v3 + 24) >> 1)
      {
        sub_1CA16B31C();
        v3 = v6;
      }

      *(v3 + 16) = v4 + 1;
      sub_1CA0F11E8(v10, (v3 + 32 * v4 + 32));
    }

    else
    {
      sub_1CA10BDC8(&v8, &qword_1EC433830);
    }

    v2 += 32;
    --v1;
  }

  while (v1);
  return v3;
}

void sub_1CA125240(uint64_t a1)
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

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_1CA10BCDC(*(a1 + 48) + 40 * (v10 | (v7 << 6)), v23);
    sub_1CA124DF4(v23, &v17);
    sub_1CA103038(v23);
    if (*(&v18 + 1))
    {
      v20 = v17;
      v21 = v18;
      v22 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA16B23C();
        v8 = v15;
      }

      v11 = *(v8 + 16);
      if (v11 >= *(v8 + 24) >> 1)
      {
        sub_1CA16B23C();
        v8 = v16;
      }

      *(v8 + 16) = v11 + 1;
      v12 = v8 + 40 * v11;
      v13 = v20;
      v14 = v21;
      *(v12 + 64) = v22;
      *(v12 + 32) = v13;
      *(v12 + 48) = v14;
    }

    else
    {
      sub_1CA10BDC8(&v17, &qword_1EC433598);
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1CA12568C(v8);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1CA1253F0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
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
    sub_1CA10BCDC(*(a1 + 48) + 40 * v12, __src);
    sub_1CA0F1200(*(a1 + 56) + 32 * v12, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1CA124C0C(&__dst[40], v27);
    if (*&v27[24])
    {
      sub_1CA0F11E8(v27, v28);
      memcpy(v27, __dst, sizeof(v27));
      sub_1CA0F11E8(v28, v26);
      v13 = *(v2 + 16);
      if (*(v2 + 24) <= v13)
      {
        sub_1CA17621C(v13 + 1, 1);
        v2 = v31;
      }

      result = sub_1CA19C878();
      v14 = v2 + 64;
      v15 = -1 << *(v2 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v2 + 64 + 8 * (v16 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v15) >> 6;
        while (++v17 != v20 || (v19 & 1) == 0)
        {
          v21 = v17 == v20;
          if (v17 == v20)
          {
            v17 = 0;
          }

          v19 |= v21;
          v22 = *(v14 + 8 * v17);
          if (v22 != -1)
          {
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v2 + 64 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v23 = *(v2 + 48) + 40 * v18;
      v24 = *v27;
      v25 = *&v27[16];
      *(v23 + 32) = *&v27[32];
      *v23 = v24;
      *(v23 + 16) = v25;
      sub_1CA0F11E8(v26, (*(v2 + 56) + 32 * v18));
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_2(&v27[40]);
    }

    else
    {
      sub_1CA10BDC8(__dst, &qword_1EC433C10);
      result = sub_1CA10BDC8(v27, &qword_1EC433830);
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CA12568C(uint64_t a1)
{
  v2 = MEMORY[0x1CCA99A20](*(a1 + 16), MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v9 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_1CA10BCDC(v4, v7);
      sub_1CA128B30(v8, v7);
      sub_1CA103038(v8);
      v4 += 40;
      --v3;
    }

    while (v3);

    return v9;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_1CA12576C(char a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1 & 1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA1257B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA19C588();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_3();
  v12 = v11 - v10;
  v13 = sub_1CA19B318();
  v14 = OUTLINED_FUNCTION_12_4(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_3();
  v15 = sub_1CA19C558();
  v16 = OUTLINED_FUNCTION_12_4(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_3();
  sub_1CA0F2110(0, &qword_1EE03C230);
  sub_1CA19C548();
  sub_1CA19B2F8();
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8090], v6);
  *(v3 + 16) = sub_1CA19C5D8();
  v17 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20ClientRequestHandler_url;
  v18 = sub_1CA19ADF8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v3 + v17, a1, v18);
  *(v3 + 40) = a2;
  type metadata accessor for ClientConnection();
  swift_allocObject();
  swift_retain_n();
  sub_1CA1191C0();
  *(v3 + 24) = v20;
  *(v3 + 32) = 0;
  sub_1CA126034();

  (*(v19 + 8))(a1, v18);
  return v3;
}

uint64_t sub_1CA125A14()
{
  v1 = v0;
  sub_1CA125AB4();

  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20ClientRequestHandler_url;
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_0_4();
  (*(v3 + 8))(v1 + v2);
  return v1;
}

void sub_1CA125AB4()
{
  sub_1CA12620C();
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v6[4] = sub_1CA129E58;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1CA12460C;
  v6[3] = &block_descriptor_53;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:30.0];
  _Block_release(v3);
  v5 = qword_1EE03D2B8;
  qword_1EE03D2B8 = v4;
}

uint64_t sub_1CA125BB0()
{
  sub_1CA125A14();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ClientRequestHandler()
{
  result = qword_1EE03D2A0;
  if (!qword_1EE03D2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA125C5C()
{
  result = sub_1CA19ADF8();
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

uint64_t sub_1CA125D14()
{
  OUTLINED_FUNCTION_10_6();
  sub_1CA19AB98();
  swift_allocObject();
  sub_1CA19AB88();
  type metadata accessor for JSServiceRequest();
  sub_1CA129EB4(&qword_1EE03D988, type metadata accessor for JSServiceRequest);
  v1 = sub_1CA19AB78();
  v3 = v2;

  sub_1CA1264F0();
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v1;
  v4[4] = v3;
  v8[3] = sub_1CA19B8B8();
  v8[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(v8);

  sub_1CA0F763C(v1, v3);
  sub_1CA19B8A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334F0);
  OUTLINED_FUNCTION_1_16();
  sub_1CA10B7BC(v5, &qword_1EC4334F0);
  v6 = sub_1CA19BEB8();

  sub_1CA0F76A8(v1, v3);
  __swift_destroy_boxed_opaque_existential_2(v8);
  return v6;
}

uint64_t sub_1CA125F24(void *a1)
{
  sub_1CA1264F0();
  OUTLINED_FUNCTION_8_4();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v8[3] = sub_1CA19B8B8();
  v8[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(v8);
  v4 = a1;

  sub_1CA19B8A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
  OUTLINED_FUNCTION_1_16();
  sub_1CA10B7BC(v5, &qword_1EC432CC0);
  v6 = sub_1CA19BEB8();

  __swift_destroy_boxed_opaque_existential_2(v8);
  return v6;
}

uint64_t sub_1CA126034()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334E8);
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8[-v4 - 8];
  sub_1CA12620C();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334C0);
  sub_1CA10B7BC(&unk_1EE03C340, &qword_1EC4334C0);

  sub_1CA19B698();
  sub_1CA19B6A8();

  __swift_destroy_boxed_opaque_existential_2(v8);
  return (*(v2 + 8))(v5, v0);
}

void sub_1CA12620C()
{
  v0 = qword_1EE03D2B8;
  if (qword_1EE03D2B8)
  {
    [qword_1EE03D2B8 invalidate];
    v0 = qword_1EE03D2B8;
  }

  qword_1EE03D2B8 = 0;
}

uint64_t sub_1CA126258(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CA19B318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA19B2D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 16);

    sub_1CA19B2C8();
    aBlock[4] = sub_1CA129E50;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0F4068;
    aBlock[3] = &block_descriptor_47;
    v13 = _Block_copy(aBlock);

    sub_1CA19B2F8();
    MEMORY[0x1CCA99C20](0, v6, v10, v13);
    _Block_release(v13);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1CA1264A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1CA1264F0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
  v2 = v0[2];
  sub_1CA0F2110(0, &qword_1EE03C230);
  OUTLINED_FUNCTION_8_4();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = v2;

  return sub_1CA19BE48();
}

uint64_t sub_1CA1265D8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v29 = a4;
  v27 = a3;
  v9 = sub_1CA19B318();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CA19B2D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v30 = a1;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  if (*(a5 + 32))
  {

    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v18 = sub_1CA19AFF8();
    __swift_project_value_buffer(v18, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v32 = type metadata accessor for ClientRequestHandler();
    aBlock[0] = a5;

    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(aBlock);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    return v30(v26);
  }

  else
  {
    v30 = *(a5 + 16);

    sub_1CA19B2C8();
    v21 = swift_allocObject();
    v21[2] = a5;
    v21[3] = sub_1CA129E00;
    v23 = v27;
    v22 = v28;
    v21[4] = v17;
    v21[5] = v23;
    v21[6] = v29;
    v21[7] = v22;
    v33 = sub_1CA129E28;
    v34 = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0F4068;
    v32 = &block_descriptor_29_0;
    v24 = _Block_copy(aBlock);

    sub_1CA19B2F8();
    MEMORY[0x1CCA99C20](0, v12, v16, v24);
    _Block_release(v24);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
  }
}

void sub_1CA126A08(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void *))
{
  if (*(a1 + 32))
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v6 = sub_1CA19AFF8();
    __swift_project_value_buffer(v6, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v25 = type metadata accessor for ClientRequestHandler();
    v24[0] = a1;

    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v24);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    a2(v13);
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v9 = sub_1CA19AFF8();
    __swift_project_value_buffer(v9, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v10 = type metadata accessor for ClientRequestHandler();
    v25 = v10;
    v24[0] = a1;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v24);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    sub_1CA126FC8();
    v14 = sub_1CA124674(v24, 0x404E000000000000, 0);

    if (v14)
    {
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      v25 = v10;
      v24[0] = a1;

      v15 = AMSLogKey();
      if (v15)
      {
        v16 = v15;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(v24);
      sub_1CA19AF18();
      swift_getErrorValue();
      v25 = v23;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v24);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_2Tm);
      sub_1CA19AF38();
      sub_1CA10BDC8(v24, &qword_1EC433830);
      sub_1CA19AFB8();

      a4(v14);
    }

    else
    {
      *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
      v25 = v10;
      v24[0] = a1;

      v17 = AMSLogKey();
      if (v17)
      {
        v18 = v17;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(v24);
      sub_1CA19AF18();
      sub_1CA19AFC8();

      *(a1 + 32) = 1;
      a2(v20);
    }
  }
}

uint64_t sub_1CA126FC8()
{
  v1 = v0;
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v59 = v3;
  v60 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = sub_1CA19BDA8();
  OUTLINED_FUNCTION_1_0();
  v64 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  sub_1CA0F2110(0, &qword_1EE03C130);
  sub_1CA19B7C8();
  v63 = aBlock;
  sub_1CA19B7D8();
  v65 = v6;
  v66 = v11;
  sub_1CA19BE18();
  sub_1CA0F2110(0, &qword_1EE03C268);
  OUTLINED_FUNCTION_7_7();
  v62 = aBlock;
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_7();
  sub_1CA19AB98();
  swift_allocObject();
  sub_1CA19AB88();
  v61 = sub_1CA127954();
  v13 = v12;

  if (v13 >> 60 == 15)
  {

    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v14 = sub_1CA19AFF8();
    __swift_project_value_buffer(v14, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    OUTLINED_FUNCTION_10_6();
    sub_1CA19AF88();
    *(OUTLINED_FUNCTION_9_7() + 16) = xmmword_1CA1A0B80;
    v70 = type metadata accessor for ClientRequestHandler();
    aBlock = v0;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&aBlock);
    sub_1CA19AF18();
    sub_1CA19AFB8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
    sub_1CA1287B4();
    swift_allocError();
    *v49 = 0;
    v48 = sub_1CA19BE78();
LABEL_16:

    (*(v64 + 8))(v66, v65);
    return v48;
  }

  swift_allocObject();
  sub_1CA19AB88();
  v17 = sub_1CA127C5C();
  v19 = v18;

  if (v19 >> 60 == 15)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v20 = sub_1CA19AFF8();
    __swift_project_value_buffer(v20, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    OUTLINED_FUNCTION_10_6();
    sub_1CA19AF88();
    *(OUTLINED_FUNCTION_9_7() + 16) = xmmword_1CA1A0B80;
    v70 = type metadata accessor for ClientRequestHandler();
    aBlock = v0;

    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&aBlock);
    sub_1CA19AF18();
    sub_1CA19AFB8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
    sub_1CA1287B4();
    swift_allocError();
    *v50 = 1;
    v48 = sub_1CA19BE78();
    sub_1CA0F7694(v61, v13);
    goto LABEL_16;
  }

  v57 = v19;
  v58 = v17;
  v23 = v13;
  v24 = v63;
  if (v63)
  {
    v71 = sub_1CA127F78;
    v72 = 0;
    OUTLINED_FUNCTION_3_11();
    v68 = 1107296256;
    v69 = sub_1CA127FAC;
    v70 = &block_descriptor_11_0;
    v25 = _Block_copy(&aBlock);
    v26 = v63;
    [v26 setAccountPropertiesTransformer_];
    _Block_release(v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433570);
  v27 = sub_1CA19BF08();
  v28 = sub_1CA19BD68();
  v56 = v27;
  v29 = sub_1CA19BE38();
  v31 = v30;
  OUTLINED_FUNCTION_8_4();
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  v71 = sub_1CA128808;
  v72 = v32;
  OUTLINED_FUNCTION_3_11();
  v68 = 1107296256;
  v69 = sub_1CA1231B4;
  v70 = &block_descriptor_7;
  v33 = _Block_copy(&aBlock);

  [v28 createSnapshotWithCompletion_];
  _Block_release(v33);
  swift_unknownObjectRelease();
  v53 = sub_1CA19B8B8();
  v70 = v53;
  v71 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(&aBlock);
  sub_1CA19B8A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433578);
  OUTLINED_FUNCTION_1_16();
  v55 = v34;
  sub_1CA10B7BC(v35, &qword_1EC433578);
  v54 = sub_1CA19BEB8();
  __swift_destroy_boxed_opaque_existential_2(&aBlock);
  v37 = v59;
  v36 = v60;
  (*(v59 + 16))(&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20ClientRequestHandler_url, v60);
  v38 = (*(v37 + 80) + 72) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = v1;
  *(v39 + 3) = v24;
  v41 = v61;
  v40 = v62;
  *(v39 + 4) = v62;
  *(v39 + 5) = v41;
  v52 = v23;
  v42 = v58;
  *(v39 + 6) = v23;
  *(v39 + 7) = v42;
  v43 = v57;
  *(v39 + 8) = v57;
  (*(v37 + 32))(&v39[v38], &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
  v70 = v53;
  v71 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(&aBlock);
  v63 = v24;

  v44 = v40;
  v45 = v41;
  v46 = v52;
  sub_1CA10BE28(v41, v52);
  v47 = v58;
  sub_1CA10BE28(v58, v43);
  sub_1CA19B8A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
  sub_1CA10B7BC(&qword_1EE03C2C0, &qword_1EC432CC0);
  v48 = sub_1CA19BEB8();

  sub_1CA0F7694(v47, v43);
  sub_1CA0F7694(v45, v46);

  (*(v64 + 8))(v66, v65);
  __swift_destroy_boxed_opaque_existential_2(&aBlock);
  return v48;
}

uint64_t sub_1CA127F78(uint64_t result)
{
  if (result)
  {
    return sub_1CA1253F0(result);
  }

  return result;
}

id sub_1CA127FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1CA19C018();
  }

  else
  {
    v3 = 0;
  }

  v4 = v2(v3);

  if (v4)
  {
    v5 = sub_1CA19C008();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1CA12807C(void **a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433578);
  v2 = [v1 compile];
  return sub_1CA19BEE8();
}

uint64_t sub_1CA1280D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_1CA19AE18();
  v17 = v16;
  sub_1CA119784(a3, v15, v16, a4, a5, a6, a7, a8, a9, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0);
  v19 = v18;
  sub_1CA0F76A8(v15, v17);
  return v19;
}

uint64_t sub_1CA128180()
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v2 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for ClientRequestHandler();
  sub_1CA19AF48();

  sub_1CA19AF18();
  sub_1CA19AFC8();

  type metadata accessor for ClientConnection();
  swift_allocObject();
  sub_1CA1191C0();
  sub_1CA11B22C();

  *(swift_allocObject() + 16) = v0;
  *(swift_allocObject() + 16) = v0;
  v3 = sub_1CA0F2110(0, &qword_1EE03C230);
  v4 = sub_1CA19C598();
  v6[3] = v3;
  v6[4] = MEMORY[0x1E69AB720];
  v6[0] = v4;
  sub_1CA19BE68();

  return __swift_destroy_boxed_opaque_existential_2(v6);
}

uint64_t sub_1CA128408()
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v0 = sub_1CA19AFF8();
  __swift_project_value_buffer(v0, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v1 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for ClientRequestHandler();
  sub_1CA19AF48();

  sub_1CA19AF18();
  sub_1CA19AFC8();
}

uint64_t sub_1CA12859C()
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v0 = sub_1CA19AFF8();
  __swift_project_value_buffer(v0, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v1 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for ClientRequestHandler();
  sub_1CA19AF48();

  sub_1CA19AF18();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF38();
  sub_1CA10BDC8(v5, &qword_1EC433830);
  sub_1CA19AFB8();
}

unint64_t sub_1CA1287B4()
{
  result = qword_1EC433568;
  if (!qword_1EC433568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433568);
  }

  return result;
}

uint64_t sub_1CA128808(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA128858()
{
  OUTLINED_FUNCTION_10_6();
  v2 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_12_4(v2);
  return sub_1CA1280D0(v0, v1[2], v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80)));
}

void sub_1CA1288D0(uint64_t a1, NSObject *a2)
{
  swift_beginAccess();
  *(a1 + 16) = 0;
  dispatch_group_leave(a2);
}

uint64_t sub_1CA12891C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1CA19C828();

    if (v8)
    {

      type metadata accessor for AMSUIDTimeout();
      swift_dynamicCast();
      result = 0;
      *a1 = v17;
    }

    else
    {
      result = sub_1CA19C818();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v13 = sub_1CA128C70(v7, result + 1);
        if (*(v13 + 24) <= *(v13 + 16))
        {
          sub_1CA128E48();
        }

        sub_1CA1292F0(v14, v13);

        *v3 = v13;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for AMSUIDTimeout();
    sub_1CA19CBD8();
    AMSUIDTimeout.hash(into:)();
    v10 = sub_1CA19CC18();
    v11 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v6 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v2;

        sub_1CA129394(v16, v12, isUniquelyReferenced_nonNull_native);
        *v2 = v18;
        goto LABEL_16;
      }

      if (static AMSUIDTimeout.== infix(_:_:)(*(*(v6 + 48) + 8 * v12), a2))
      {
        break;
      }

      v10 = v12 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

BOOL sub_1CA128B30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1CA19C878();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1CA10BCDC(a2, v16);
      v15 = *v3;
      sub_1CA1294E0(v16, v8, isUniquelyReferenced_nonNull_native);
      *v3 = v15;
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      *(a1 + 32) = *(a2 + 32);
      return v9 == 0;
    }

    sub_1CA10BCDC(*(v5 + 48) + 40 * v8, v16);
    v10 = MEMORY[0x1CCA99EE0](v16, a2);
    sub_1CA103038(v16);
    if (v10)
    {
      break;
    }

    v6 = v8 + 1;
  }

  sub_1CA103038(a2);
  sub_1CA10BCDC(*(v5 + 48) + 40 * v8, a1);
  return v9 == 0;
}

uint64_t sub_1CA128C70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4335A8);
    v2 = sub_1CA19C8C8();
    v14 = v2;
    sub_1CA19C7D8();
    while (1)
    {
      if (!sub_1CA19C848())
      {

        return v2;
      }

      type metadata accessor for AMSUIDTimeout();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1CA128E48();
      }

      v2 = v14;
      sub_1CA19CBD8();
      AMSUIDTimeout.hash(into:)();
      result = sub_1CA19CC18();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1CA128E48()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4335A8);
  result = sub_1CA19C8B8();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1CA1766A0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_1CA19CBD8();
    AMSUIDTimeout.hash(into:)();
    result = sub_1CA19CC18();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1CA129094()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4335A0);
  result = sub_1CA19C8B8();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_1CA1766A0(0, (v25 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 40 * (v12 | (v5 << 6));
    v26 = *v15;
    v27 = *(v15 + 16);
    v28 = *(v15 + 32);
    result = sub_1CA19C878();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v4 + 48) + 40 * v19;
    *v24 = v26;
    *(v24 + 16) = v27;
    *(v24 + 32) = v28;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1CA1292F0(uint64_t a1, uint64_t a2)
{
  sub_1CA19CBD8();
  AMSUIDTimeout.hash(into:)();
  sub_1CA19CC18();
  result = sub_1CA19C7B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1CA129394(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA128E48();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1CA129904();
LABEL_10:
      v12 = *v3;
      sub_1CA19CBD8();
      AMSUIDTimeout.hash(into:)();
      result = sub_1CA19CC18();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for AMSUIDTimeout();
        if (static AMSUIDTimeout.== infix(_:_:)(*(*(v12 + 48) + 8 * a2), v5))
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1CA129640();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1CA19CB48();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1CA1294E0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA129094();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1CA129B28();
LABEL_10:
      v15 = *v3;
      result = sub_1CA19C878();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1CA10BCDC(*(v15 + 48) + 40 * a2, v18);
        v17 = MEMORY[0x1CCA99EE0](v18, v6);
        sub_1CA103038(v18);
        if (v17)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1CA129790();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *(v6 + 16);
  *v10 = *v6;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(v6 + 32);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_1CA19CB48();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }

  return result;
}

void *sub_1CA129640()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4335A8);
  v2 = *v0;
  v3 = sub_1CA19C8A8();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1CA129790()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4335A0);
  v2 = *v0;
  v3 = sub_1CA19C8A8();
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
        v18 = 5 * v17;
        result = sub_1CA10BCDC(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

uint64_t sub_1CA129904()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4335A8);
  result = sub_1CA19C8B8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_1CA19CBD8();

        AMSUIDTimeout.hash(into:)();
        result = sub_1CA19CC18();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CA129B28()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4335A0);
  result = sub_1CA19C8B8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        sub_1CA10BCDC(*(v2 + 48) + 40 * (v11 | (v5 << 6)), v25);
        result = sub_1CA19C878();
        v14 = -1 << *(v4 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v10 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v10 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v22 = *(v4 + 48) + 40 * v17;
        v23 = v25[0];
        v24 = v25[1];
        *(v22 + 32) = v26;
        *v22 = v23;
        *(v22 + 16) = v24;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v10 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1CA129D50()
{
  result = qword_1EE03E1D8;
  if (!qword_1EE03E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03E1D8);
  }

  return result;
}

unint64_t sub_1CA129DA4()
{
  result = qword_1EE03EA50;
  if (!qword_1EE03EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03EA50);
  }

  return result;
}

uint64_t sub_1CA129EB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CA129EFC()
{
  result = qword_1EC4335B0;
  if (!qword_1EC4335B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4335B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicGridLayoutMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1CA12A014(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA12A0F4()
{
  result = qword_1EC4335B8;
  if (!qword_1EC4335B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4335B8);
  }

  return result;
}

unint64_t sub_1CA12A14C()
{
  result = qword_1EC4335C0;
  if (!qword_1EC4335C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4335C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return sub_1CA19BE18();
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return swift_allocObject();
}

id static CollectionLayoutItemProvider.horizontalLayoutSize(for:)()
{
  v0 = objc_opt_self();
  v1 = [v0 estimatedDimension_];
  v2 = [v0 estimatedDimension_];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  return v3;
}

id static CollectionLayoutItemProvider.verticalLayoutSize(for:)(void *a1)
{
  v2 = sub_1CA19B018();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v3 + 104))(v5, *MEMORY[0x1E698C478], v2), v6 = sub_1CA19B008(), (*(v3 + 8))(v5, v2), (v6 & 1) != 0))
  {
    v7 = objc_opt_self();
    [objc_msgSend(a1 container)];
    v9 = v8;
    swift_unknownObjectRelease();
    v10 = [a1 container];
    swift_getObjectType();
    sub_1CA164A04();
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = [v7 absoluteDimension_];
  }

  else
  {
    [objc_msgSend(a1 container)];
    v15 = v14;
    swift_unknownObjectRelease();
    v7 = objc_opt_self();
    v13 = [v7 absoluteDimension_];
  }

  v16 = v13;
  v17 = [v7 estimatedDimension_];
  v18 = [objc_opt_self() sizeWithWidthDimension:v16 heightDimension:v17];

  return v18;
}

uint64_t sub_1CA12A58C()
{
  v0 = sub_1CA19ABF8();
  __swift_allocate_value_buffer(v0, qword_1EC4335C8);
  __swift_project_value_buffer(v0, qword_1EC4335C8);
  return sub_1CA19ABA8();
}

UIColor_optional __swiftcall UIColor.init(hexString:)(Swift::String hexString)
{
  v2 = v1;
  object = hexString._object;
  countAndFlagsBits = hexString._countAndFlagsBits;
  v5 = sub_1CA19ABF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = countAndFlagsBits;
  v81 = object;
  if (qword_1EC432C48 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_1EC4335C8);
  sub_1CA19ABE8();
  sub_1CA0FB77C();
  v9 = sub_1CA19C728();
  v11 = v10;
  (*(v6 + 8))(v8, v5);

  if (sub_1CA19C1A8() != 6)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_12();
  v12 = sub_1CA19C1B8();
  OUTLINED_FUNCTION_3_12();
  v13 = sub_1CA19C1B8();
  OUTLINED_FUNCTION_3_12();
  v14 = sub_1CA19C248();
  if (v13 >> 14 < v12 >> 14)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = v14;
  v17 = v15;
  v77 = v2;
  OUTLINED_FUNCTION_3_12();
  v18 = sub_1CA19C248();
  v78 = v20;
  v79 = v18;
  v21 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v21 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 >> 14 > 4 * v21)
  {
    goto LABEL_27;
  }

  v22 = v19;
  OUTLINED_FUNCTION_3_12();
  v23 = sub_1CA19C248();
  v75 = v24;
  v76 = v23;
  v74[1] = v25;

  if (!((v16 ^ v17) >> 14))
  {
LABEL_28:

LABEL_12:

    goto LABEL_13;
  }

  v26 = OUTLINED_FUNCTION_2_13();
  v31 = sub_1CA12B3F4(v26, v27, v28, v29, v30);
  if ((v32 & 0x100) != 0)
  {
    v33 = OUTLINED_FUNCTION_2_13();
    v31 = sub_1CA12A964(v33, v34, v35, v36, v37);
  }

  v38 = v31;
  v39 = v32;

  if ((v39 & 1) != 0 || !((v79 ^ v22) >> 14))
  {
    goto LABEL_12;
  }

  v42 = OUTLINED_FUNCTION_1_17();
  v47 = sub_1CA12B3F4(v42, v43, v44, v45, v46);
  if ((v48 & 0x100) == 0)
  {
    v49 = v47;
    v50 = v48;

    if ((v50 & 1) == 0)
    {
      v51 = v49;
      goto LABEL_21;
    }

LABEL_13:

    goto LABEL_14;
  }

  v52 = OUTLINED_FUNCTION_1_17();
  v57 = sub_1CA12A964(v52, v53, v54, v55, v56);
  v59 = v58;

  if (v59)
  {
    goto LABEL_13;
  }

  v51 = v57;
LABEL_21:
  if (!((v76 ^ v75) >> 14))
  {
    goto LABEL_13;
  }

  v60 = OUTLINED_FUNCTION_0_18();
  v65 = sub_1CA12B3F4(v60, v61, v62, v63, v64);
  if ((v66 & 0x100) != 0)
  {
    v67 = OUTLINED_FUNCTION_0_18();
    v65 = sub_1CA12A964(v67, v68, v69, v70, v71);
  }

  v72 = v65;
  v73 = v66;

  if ((v73 & 1) == 0)
  {
    v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:v38 / 255.0 green:v51 / 255.0 blue:v72 / 255.0 alpha:1.0];
    goto LABEL_29;
  }

LABEL_14:
  v41 = 0;
LABEL_29:
  result.value.super.isa = v41;
  result.is_nil = v40;
  return result;
}

unsigned __int8 *sub_1CA12A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1CA12B4D0();

  result = sub_1CA19C238();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1CA12AEF8();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1CA19C978();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1CA12AEF8()
{
  v0 = sub_1CA12AF64();
  v4 = sub_1CA12AF98(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1CA12AF98(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1CA19C708();
    if (!v9 || (v10 = v9, v11 = sub_1CA12B0F8(v9, 0), v12 = sub_1CA12B168(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1CA19C188();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1CA19C188();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1CA19C978();
LABEL_4:

  return sub_1CA19C188();
}

void *sub_1CA12B0F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4335E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_1CA12B168(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1CA12B378(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1CA19C208();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1CA19C978();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1CA12B378(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1CA19C1D8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CA12B378(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1CA19C218();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1CCA99840](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1CA12B3F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1CA19C978();
  }

  result = sub_1CA12B528(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1CA12B4D0()
{
  result = qword_1EC4335E0;
  if (!qword_1EC4335E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4335E0);
  }

  return result;
}

uint64_t sub_1CA12B528(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1CA12B378(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1CA19C1F8();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1CA12B378(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1CA12B378(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1CA19C1F8();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1CA12B9F0()
{
  v0 = sub_1CA19CA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CA12BA3C(char a1)
{
  if (!a1)
  {
    return 6449010;
  }

  if (a1 == 1)
  {
    return 0x64656D616ELL;
  }

  return 0x63696D616E7964;
}

uint64_t sub_1CA12BAB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA12B9F0();
  *a1 = result;
  return result;
}

uint64_t sub_1CA12BAE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA12BA3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1CA12BB0C(char a1)
{
  v1 = [objc_opt_self() *off_1E8366780[a1]];

  return v1;
}

uint64_t sub_1CA12BB64()
{
  v0 = sub_1CA19CA48();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1CA12BBB0(char a1)
{
  result = 0x6B63616C62;
  switch(a1)
  {
    case 1:
      result = 1702194274;
      break;
    case 2:
      v3 = 2003792482;
      goto LABEL_11;
    case 3:
      result = 0x7261656C63;
      break;
    case 4:
      result = 2036429415;
      break;
    case 5:
      v3 = 1701147239;
LABEL_11:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
      break;
    case 6:
      result = 0x6F6769646E69;
      break;
    case 7:
      result = 0x65676E61726FLL;
      break;
    case 8:
      result = 1802398064;
      break;
    case 9:
      result = 0x656C70727570;
      break;
    case 10:
      result = 6579570;
      break;
    case 11:
      result = 0x6574696877;
      break;
    case 12:
      result = 0x776F6C6C6579;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA12BCD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA12BB64();
  *a1 = result;
  return result;
}

unint64_t sub_1CA12BD08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CA12BBB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1CA12BD34(char a1)
{
  v1 = [objc_opt_self() *off_1E83667E8[a1]];

  return v1;
}

uint64_t sub_1CA12BD8C()
{
  v0 = sub_1CA19CB18();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1CA12BDE0(char a1)
{
  result = 0x746E6954707061;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ELL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0x467972616D697270;
      break;
    case 7:
    case 14:
      result = 0x7261646E6F636573;
      break;
    case 8:
    case 15:
      result = 0x7972616974726574;
      break;
    case 9:
    case 16:
      result = 0x616E726574617571;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x4C746C7561666564;
      break;
    case 13:
      result = 0x547972616D697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA12C004@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA12BD8C();
  *a1 = result;
  return result;
}

unint64_t sub_1CA12C034@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CA12BDE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void ColorFactory.color(deserializing:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  sub_1CA0FD11C(1701869940, 0xE400000000000000, *v10, a4, a5, a6, a7, a8);
  if (!v9)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        ColorFactory.namedColor(deserializing:using:)();
      }

      else
      {
        ColorFactory.dynamicColor(deserializing:using:)(a1, a2);
      }
    }

    else
    {
      sub_1CA12C2B8();
    }
  }
}

uint64_t sub_1CA12C120()
{
  v0 = sub_1CA19B4A8();
  if (!v1 || (v2 = v0, v3 = v1, sub_1CA12CA28(), v4._countAndFlagsBits = v2, v4._object = v3, (result = UIColor.init(hexString:)(v4)) == 0))
  {
    sub_1CA12C83C();
    OUTLINED_FUNCTION_0_19();
    return swift_willThrow();
  }

  return result;
}

id sub_1CA12C1A0()
{
  result = sub_1CA16211C();
  if (!v0)
  {
    v3 = v2;
    sub_1CA16211C();
    v5 = v4;
    sub_1CA16211C();
    v7 = v6;
    sub_1CA16211C();
    return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v3 green:v5 blue:v7 alpha:v8];
  }

  return result;
}

id sub_1CA12C2B8()
{
  result = sub_1CA12C120();
  if (v0)
  {

    return sub_1CA12C1A0();
  }

  return result;
}

id ColorFactory.namedColor(deserializing:using:)()
{
  sub_1CA0FCE6C();
  if (!v0)
  {
    return sub_1CA12BB0C(v1);
  }

  sub_1CA0FCFC4();
  return sub_1CA12BD34(v2);
}

uint64_t ColorFactory.dynamicColor(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA19B4D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v17 = *v3;
  v38 = a1;
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    v18 = sub_1CA19BFA8();
    sub_1CA12C890();
    OUTLINED_FUNCTION_0_19();
    *v19 = 0x6C6F43746867696CLL;
    v19[1] = 0xEA0000000000726FLL;
    v19[2] = v17;
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x1E69AB690], v18);
    swift_willThrow();
    return (*(v7 + 8))(v14, v6);
  }

  v20 = v14;
  v21 = *(v7 + 32);
  v40 = v6;
  v21(v16, v20);
  v22 = v41;
  v23 = ColorFactory.color(deserializing:using:)(v16, a2);
  if (v22)
  {
    v14 = v16;
    v6 = v40;
    return (*(v7 + 8))(v14, v6);
  }

  v36 = a2;
  v41 = v23;
  v25 = *(v7 + 8);
  v25(v16, v40);
  v26 = v39;
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    v27 = sub_1CA19BFA8();
    sub_1CA12C890();
    v28 = OUTLINED_FUNCTION_0_19();
    *v29 = 0x6F6C6F436B726164;
    v29[1] = 0xE900000000000072;
    v29[2] = v17;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69AB690], v27);
    swift_willThrow();
    v25(v26, v40);

    return v41;
  }

  else
  {
    v30 = v37;
    (v21)(v37, v26, v40);
    v31 = ColorFactory.color(deserializing:using:)(v30, v36);
    v25(v30, v40);
    v32 = objc_opt_self();
    v33 = v41;
    v34 = [v32 dynamicColorWithLightColor:v41 darkColor:v31 lightHighContrastColor:v41 darkHighContrastColor:v31];

    return v34;
  }
}

unint64_t sub_1CA12C83C()
{
  result = qword_1EC4335F0;
  if (!qword_1EC4335F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4335F0);
  }

  return result;
}

unint64_t sub_1CA12C890()
{
  result = qword_1EE03C2B8;
  if (!qword_1EE03C2B8)
  {
    sub_1CA19BFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C2B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ColorFactory.DecodingError(_BYTE *result, int a2, int a3)
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