unint64_t sub_1CA171BA8()
{
  result = qword_1EC4340D8;
  if (!qword_1EC4340D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4340D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PageLoaderError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1CA171CCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1CA171D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1CA171D7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CGSizeMake(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA171DA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA0EAF10(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA171DD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA0EAF24(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA171E10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA0EAF2C(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_1CA171E50(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1CA171E7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CA0EAF60(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1CA171EB0(unsigned int a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {
    *v1 = v2 & ~a1;
    v4 = v2 & a1;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

uint64_t sub_1CA171EF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CA0EAF84(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1CA171F24(unsigned int a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1 | (((v2 & a1) == 0) << 32);
}

uint64_t sub_1CA171F8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA0EAFC0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA17201C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = CGSizeMake(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CA17204C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA171D20(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA172074()
{
  v1 = v0;
  v2 = sub_1CA19B868();
  MEMORY[0x1EEE9AC00](v2);

  *(v0 + 24) = 0;
  sub_1CA19B608();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  sub_1CA19BCA8();
  swift_allocObject();
  v3 = sub_1CA19BC98();

  *(v1 + 16) = v3;
  return v1;
}

void PageRenderMetricsPresenterWrapper.start(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_14();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_7_14();
  if (v25)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v27 = sub_1CA19AFF8();
    OUTLINED_FUNCTION_16_6(v27, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v28 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7_3(v28);
    v29 = OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_13_7(v29, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_4_11();
    if (AMSLogKey())
    {
      sub_1CA19C118();
      OUTLINED_FUNCTION_12_11();
    }

    else
    {
      OUTLINED_FUNCTION_6_16();
    }

    OUTLINED_FUNCTION_4_18();

    __swift_destroy_boxed_opaque_existential_2(&a9);
    OUTLINED_FUNCTION_3_22();
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }

  else
  {
    OUTLINED_FUNCTION_15_5();
    sub_1CA19BC88();

    v26 = *(v22 + 24);
    if ((v26 & 1) == 0)
    {
      *(v22 + 24) = v26 | 1;
    }
  }

  OUTLINED_FUNCTION_11_11();
}

void PageRenderMetricsPresenterWrapper.end(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_14();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_7_14();
  if ((v25 & 2) != 0)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v27 = sub_1CA19AFF8();
    OUTLINED_FUNCTION_16_6(v27, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v28 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7_3(v28);
    v29 = OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_13_7(v29, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_4_11();
    if (AMSLogKey())
    {
      sub_1CA19C118();
      OUTLINED_FUNCTION_12_11();
    }

    else
    {
      OUTLINED_FUNCTION_6_16();
    }

    OUTLINED_FUNCTION_4_18();

    __swift_destroy_boxed_opaque_existential_2(&a9);
    OUTLINED_FUNCTION_3_22();
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }

  else
  {
    OUTLINED_FUNCTION_15_5();
    sub_1CA19BC78();

    v26 = *(v22 + 24);
    if ((v26 & 2) == 0)
    {
      *(v22 + 24) = v26 | 2;
    }
  }

  OUTLINED_FUNCTION_11_11();
}

Swift::Void __swiftcall PageRenderMetricsPresenterWrapper.viewDidLoad()()
{
  OUTLINED_FUNCTION_10_14();
  v9 = v1;
  v10 = v2;
  OUTLINED_FUNCTION_7_14();
  if ((v3 & 4) != 0)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v5 = sub_1CA19AFF8();
    OUTLINED_FUNCTION_16_6(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v6 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7_3(v6);
    v7 = OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_13_7(v7, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_4_11();
    if (AMSLogKey())
    {
      sub_1CA19C118();
      OUTLINED_FUNCTION_12_11();
    }

    else
    {
      OUTLINED_FUNCTION_6_16();
    }

    OUTLINED_FUNCTION_4_18();

    __swift_destroy_boxed_opaque_existential_2(&v8);
    OUTLINED_FUNCTION_3_22();
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }

  else
  {
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_18_4();
    sub_1CA19BBC8();

    v4 = *(v0 + 24);
    if ((v4 & 4) == 0)
    {
      *(v0 + 24) = v4 | 4;
    }
  }

  OUTLINED_FUNCTION_11_11();
}

Swift::Void __swiftcall PageRenderMetricsPresenterWrapper.viewWillAppear()()
{
  OUTLINED_FUNCTION_10_14();
  v9 = v1;
  v10 = v2;
  OUTLINED_FUNCTION_7_14();
  if ((v3 & 8) != 0)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v5 = sub_1CA19AFF8();
    OUTLINED_FUNCTION_16_6(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v6 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7_3(v6);
    v7 = OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_13_7(v7, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_4_11();
    if (AMSLogKey())
    {
      sub_1CA19C118();
      OUTLINED_FUNCTION_12_11();
    }

    else
    {
      OUTLINED_FUNCTION_6_16();
    }

    OUTLINED_FUNCTION_4_18();

    __swift_destroy_boxed_opaque_existential_2(&v8);
    OUTLINED_FUNCTION_3_22();
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }

  else
  {
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_18_4();
    sub_1CA19BBD8();

    v4 = *(v0 + 24);
    if ((v4 & 8) == 0)
    {
      *(v0 + 24) = v4 | 8;
    }
  }

  OUTLINED_FUNCTION_11_11();
}

Swift::Void __swiftcall PageRenderMetricsPresenterWrapper.viewDidAppear()()
{
  OUTLINED_FUNCTION_10_14();
  v9 = v1;
  v10 = v2;
  OUTLINED_FUNCTION_7_14();
  if ((v3 & 0x10) != 0)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v5 = sub_1CA19AFF8();
    OUTLINED_FUNCTION_16_6(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v6 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7_3(v6);
    v7 = OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_13_7(v7, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_4_11();
    if (AMSLogKey())
    {
      sub_1CA19C118();
      OUTLINED_FUNCTION_12_11();
    }

    else
    {
      OUTLINED_FUNCTION_6_16();
    }

    OUTLINED_FUNCTION_4_18();

    __swift_destroy_boxed_opaque_existential_2(&v8);
    OUTLINED_FUNCTION_3_22();
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }

  else
  {

    sub_1CA19BC58();

    v4 = *(v0 + 24);
    if ((v4 & 0x10) == 0)
    {
      *(v0 + 24) = v4 | 0x10;
    }
  }

  OUTLINED_FUNCTION_11_11();
}

Swift::Void __swiftcall PageRenderMetricsPresenterWrapper.viewDidDisappear()()
{
  OUTLINED_FUNCTION_10_14();
  v9 = v1;
  v10 = v2;
  OUTLINED_FUNCTION_7_14();
  if ((v3 & 0x20) != 0)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v5 = sub_1CA19AFF8();
    OUTLINED_FUNCTION_16_6(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v6 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7_3(v6);
    v7 = OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_13_7(v7, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_4_11();
    if (AMSLogKey())
    {
      sub_1CA19C118();
      OUTLINED_FUNCTION_12_11();
    }

    else
    {
      OUTLINED_FUNCTION_6_16();
    }

    OUTLINED_FUNCTION_4_18();

    __swift_destroy_boxed_opaque_existential_2(&v8);
    OUTLINED_FUNCTION_3_22();
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }

  else
  {
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_18_4();
    sub_1CA19BBE8();

    v4 = *(v0 + 24);
    if ((v4 & 0x20) == 0)
    {
      *(v0 + 24) = v4 | 0x20;
    }
  }

  OUTLINED_FUNCTION_11_11();
}

void PageRenderMetricsPresenterWrapper.viewWillDisappear(forReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_14();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_7_14();
  if ((v25 & 0x40) != 0)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v27 = sub_1CA19AFF8();
    OUTLINED_FUNCTION_16_6(v27, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v28 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7_3(v28);
    v29 = OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_13_7(v29, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_4_11();
    if (AMSLogKey())
    {
      sub_1CA19C118();
      OUTLINED_FUNCTION_12_11();
    }

    else
    {
      OUTLINED_FUNCTION_6_16();
    }

    OUTLINED_FUNCTION_4_18();

    __swift_destroy_boxed_opaque_existential_2(&a9);
    OUTLINED_FUNCTION_3_22();
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }

  else
  {
    OUTLINED_FUNCTION_15_5();
    sub_1CA19BC68();

    v26 = *(v22 + 24);
    if ((v26 & 0x40) == 0)
    {
      *(v22 + 24) = v26 | 0x40;
    }
  }

  OUTLINED_FUNCTION_11_11();
}

Swift::Void __swiftcall PageRenderMetricsPresenterWrapper.viewDidReceiveMemoryWarning()()
{
  OUTLINED_FUNCTION_10_14();
  v9 = v1;
  v10 = v2;
  OUTLINED_FUNCTION_7_14();
  if (v3 < 0)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v5 = sub_1CA19AFF8();
    OUTLINED_FUNCTION_16_6(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v6 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7_3(v6);
    v7 = OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_13_7(v7, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_4_11();
    if (AMSLogKey())
    {
      sub_1CA19C118();
      OUTLINED_FUNCTION_12_11();
    }

    else
    {
      OUTLINED_FUNCTION_6_16();
    }

    OUTLINED_FUNCTION_4_18();

    __swift_destroy_boxed_opaque_existential_2(&v8);
    OUTLINED_FUNCTION_3_22();
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }

  else
  {
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_18_4();
    sub_1CA19BBF8();

    v4 = *(v0 + 24);
    if ((v4 & 0x80) == 0)
    {
      *(v0 + 24) = v4 | 0x80;
    }
  }

  OUTLINED_FUNCTION_11_11();
}

uint64_t PageRenderMetricsPresenterWrapper.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1CA172D48()
{
  result = qword_1EC4340E0;
  if (!qword_1EC4340E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4340E0);
  }

  return result;
}

unint64_t sub_1CA172DA0()
{
  result = qword_1EC4340E8;
  if (!qword_1EC4340E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4340E8);
  }

  return result;
}

unint64_t sub_1CA172DF8()
{
  result = qword_1EC4340F0;
  if (!qword_1EC4340F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4340F0);
  }

  return result;
}

unint64_t sub_1CA172E50()
{
  result = qword_1EC4340F8;
  if (!qword_1EC4340F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4340F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return sub_1CA19AF58();
}

void OUTLINED_FUNCTION_12_11()
{
}

uint64_t OUTLINED_FUNCTION_13_7(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for PageRenderMetricsPresenterWrapper();
}

uint64_t OUTLINED_FUNCTION_15_5()
{
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_1CA19BCA8();
}

uint64_t OUTLINED_FUNCTION_18_4()
{
}

uint64_t type metadata accessor for PageUrlFieldsProvider()
{
  result = qword_1EE03D020;
  if (!qword_1EE03D020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA17307C()
{
  result = sub_1CA19ADF8();
  if (v1 <= 0x3F)
  {
    result = sub_1CA19BD28();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA173100(uint64_t a1)
{
  v2 = sub_1CA19AD78();
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = v2;
  v5[1] = v3;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1CA19B9E8();
  return __swift_destroy_boxed_opaque_existential_2(v5);
}

uint64_t sub_1CA17319C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1CA19BD28();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1CA173228()
{
  sub_1CA0F2110(0, &qword_1EE03C170);
  result = sub_1CA19C6B8();
  qword_1EC434100 = result;
  return result;
}

char *sub_1CA17327C()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_backgroundView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69585B8]) init];
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_glyphView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = &v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_tapActionBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_tapGestureRecognizer] = 0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for PlayButton();
  v4 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 boldSystemFontOfSize_];
  v8 = [objc_opt_self() configurationWithFont_];
  sub_1CA0F2110(0, &qword_1EE03C168);
  v9 = v8;
  v10 = sub_1CA173530(0xD000000000000010, 0x80000001CA1AE5D0, v8);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 imageWithRenderingMode_];
  }

  else
  {
    v12 = 0;
  }

  v13 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_glyphView;
  [*&v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_glyphView] setImage_];
  v14 = qword_1EC432C70;
  v15 = *&v6[v13];
  if (v14 != -1)
  {
    swift_once();
  }

  [v15 setTintColor_];

  [*&v6[v13] setUserInteractionEnabled_];
  v16 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_backgroundView;
  [*&v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_backgroundView] addSubview:*&v6[v13] applyingMaterialStyle:0 tintEffectStyle:0];
  [*&v6[v16] setUserInteractionEnabled_];
  [*&v6[v16] setCircular_];
  [v6 addSubview_];
  [v6 addTarget:v6 action:sel_didTap forControlEvents:64];

  return v6;
}

id sub_1CA173530(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA19C0E8();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

void sub_1CA1735C4()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69585B8]) init];
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_glyphView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = (v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_tapActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_tapGestureRecognizer) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

double sub_1CA1736A4(double a1, double a2)
{
  result = OUTLINED_FUNCTION_0_40(a1, a2);
  if (v5 ^ v6 | v4)
  {
    return v3;
  }

  return result;
}

id sub_1CA1736DC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PlayButton();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_backgroundView];
  OUTLINED_FUNCTION_1_32();
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_glyphView];
  OUTLINED_FUNCTION_1_32();
  [v2 sizeThatFits_];
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_1_32();
  v9 = CGRectGetMidX(v12) - v6 * 0.5;
  OUTLINED_FUNCTION_1_32();
  return [v2 setFrame_];
}

void sub_1CA173808()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_tapActionBlock);
  if (v1)
  {

    v1(v2);

    sub_1CA153B20(v1);
  }
}

id sub_1CA1738F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double OUTLINED_FUNCTION_0_40(double result, double a2)
{
  if (a2 < result)
  {
    result = a2;
  }

  if (result > 60.0)
  {
    return 60.0;
  }

  return result;
}

id OUTLINED_FUNCTION_1_32()
{

  return [v0 (v1 + 3832)];
}

uint64_t PluginComponent.location.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t PluginComponent.id.getter()
{
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_2_24();
  return sub_1CA19B708();
}

uint64_t PluginComponent.segue.getter()
{
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_2_24();
  return sub_1CA19B718();
}

uint64_t PluginComponent.impressionMetrics.getter()
{
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_2_24();
  return sub_1CA19BFF8();
}

uint64_t PluginComponent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v50 = v7;
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v49 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE03D050 != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E10);
  __swift_project_value_buffer(v15, qword_1EE040C68);
  type metadata accessor for ComponentLoader();
  v16 = sub_1CA19B5D8();
  if (!v53[0])
  {
    v23 = v10;
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v24 = sub_1CA19AFF8();
    __swift_project_value_buffer(v24, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0C20;
    sub_1CA19AF18();
    sub_1CA19AFB8();

    v25 = sub_1CA19BFA8();
    sub_1CA12C890();
    swift_allocError();
    v27 = v26;
    *v26 = sub_1CA19B598();
    v27[1] = v28;
    v27[2] = &type metadata for PluginComponent;
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    (*(v49 + 8))(v52, v23);
    return (*(v50 + 8))(a2, v51);
  }

  v45 = v14;
  *&v46 = v9;
  v17 = a3;
  v47 = v53[0];
  v48 = v10;
  MEMORY[0x1EEE9AC00](v16);
  v42[-2] = a2;
  v18 = v52;
  sub_1CA0FC214();
  if (v3)
  {
    (*(v49 + 8))(v18, v48);

    return (*(v50 + 8))(a2, v51);
  }

  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v44 = a2;
  *(v17 + 56) = v19;
  *(v17 + 64) = v20;
  *(v17 + 72) = v21;
  *(v17 + 80) = v22;

  ComponentLoader.componentDefinition(withLocation:)(v30, v31, v32, v33, v56);
  v42[1] = v33;

  v42[0] = v31;

  v43 = v56[2];
  *v17 = v56[0];
  v34 = v57;
  v35 = v49;
  (*(v49 + 16))(v45, v52, v48);
  v36 = v50;
  v37 = v44;
  v38 = v51;
  (*(v50 + 16))(v46, v44);
  v54 = v43;
  v55 = v34;
  __swift_allocate_boxed_opaque_existential_2Tm(v53);
  sub_1CA19B888();
  v46 = v54;
  v39 = v54;
  v40 = __swift_project_boxed_opaque_existential_2(v53, v54);
  *(v17 + 40) = v46;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm((v17 + 16));
  (*(*(v39 - 8) + 16))(boxed_opaque_existential_2Tm, v40, v39);

  sub_1CA174368(v56);
  (*(v35 + 8))(v52, v48);
  (*(v36 + 8))(v37, v38);
  return __swift_destroy_boxed_opaque_existential_2(v53);
}

uint64_t sub_1CA174334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1CA193C5C(a1, a2);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

unint64_t sub_1CA1743C0()
{
  result = qword_1EE03DD20[0];
  if (!qword_1EE03DD20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE03DD20);
  }

  return result;
}

uint64_t sub_1CA174414(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1CA174454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_1_33()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_2((v0 + 16), v2);
}

id sub_1CA174500()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA19C0E8();

  v2 = [v0 initWithPath_];

  return v2;
}

uint64_t sub_1CA174574(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1CA17687C(a1, sub_1CA17680C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

unint64_t sub_1CA1745F8(uint64_t a1, uint64_t a2)
{
  sub_1CA19C8F8();

  MEMORY[0x1CCA99820](a1, a2);
  MEMORY[0x1CCA99820](46, 0xE100000000000000);
  return 0xD000000000000026;
}

uint64_t sub_1CA174690()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434168);
  *(v0 + 24) = sub_1CA19C038();
  v2 = sub_1CA1751D0();
  if (v1)
  {
  }

  else
  {
    *(v0 + 16) = v2;
  }

  return v0;
}

uint64_t sub_1CA174720(void *a1, uint64_t a2)
{
  v3 = v2;
  v75 = a1;
  v83 = *MEMORY[0x1E69E9840];
  v5 = sub_1CA19AEF8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_8_14();
  v63 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v63 - v8;
  v72 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v65 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_0_0();
  v64 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v63 - v14;
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v71 = v9;
  v73 = a2;
  v15 = sub_1CA19AFF8();
  v74 = __swift_project_value_buffer(v15, qword_1EE040B90);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v17 = *(sub_1CA19AF88() - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v76 = *(v17 + 72);
  v68 = v16;
  v19 = swift_allocObject();
  v67 = xmmword_1CA1A0930;
  *(v19 + 16) = xmmword_1CA1A0930;
  v70 = v18;
  v69 = type metadata accessor for PluginLoader();
  v82 = v69;
  v80 = v3;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_20_5();
  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v80);
  sub_1CA19AF18();
  v22 = MEMORY[0x1E69E6158];
  v82 = MEMORY[0x1E69E6158];
  v23 = v75;
  v24 = v73;
  v80 = v75;
  v81 = v73;

  sub_1CA19AF38();
  sub_1CA0F54A0(&v80, &qword_1EC433830);
  sub_1CA19AFC8();

  v25 = v23 == 0xD000000000000025 && 0x80000001CA1ADB20 == v24;
  if (v25 || (sub_1CA19CAF8() & 1) != 0)
  {
    return type metadata accessor for FrameworkDynamicUIPlugin();
  }

  v28 = v3;
  swift_beginAccess();
  v29 = v23;
  v30 = v3[3];

  ObjCClassMetadata = sub_1CA181C30(v29, v24, v30);

  if (ObjCClassMetadata)
  {
    return ObjCClassMetadata;
  }

  ObjCClassMetadata = 2 * v76;
  v31 = v3[2];
  if (!v31)
  {
    v32 = v71;
    __swift_storeEnumTagSinglePayload(v71, 1, 1, v72);
    goto LABEL_20;
  }

  v32 = v71;
  sub_1CA181C7C(v75, v24, v31, v71);

  v33 = v72;
  if (__swift_getEnumTagSinglePayload(v32, 1, v72) == 1)
  {
LABEL_20:
    sub_1CA0F54A0(v32, &qword_1EC433170);
    v40 = OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_0_41(v40, v67);
    v41 = AMSLogKey();
    if (v41)
    {
      v42 = v41;
      sub_1CA19C118();
    }

    OUTLINED_FUNCTION_20_5();
    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v80);
    OUTLINED_FUNCTION_15_6();
    sub_1CA19AF18();
    v82 = v22;
    v43 = v75;
    v44 = v73;
    v80 = v75;
    v81 = v73;

    sub_1CA19AF38();
    sub_1CA0F54A0(&v80, &qword_1EC433830);
    OUTLINED_FUNCTION_23_5();

    sub_1CA177228();
    swift_allocError();
    *v45 = v43;
    v45[1] = v44;
    swift_willThrow();

    return ObjCClassMetadata;
  }

  v34 = v65;
  v35 = v66;
  (*(v65 + 32))(v66, v32, v33);
  sub_1CA11575C();
  v36 = v64;
  (*(v34 + 16))(v64, v35, v33);
  v37 = sub_1CA175134(v36);
  if (v37)
  {
    v38 = v37;
    v80 = 0;
    if ([v37 loadAndReturnError_])
    {
      v39 = v80;
      if ([v38 principalClass])
      {
        ObjCClassMetadata = swift_getObjCClassMetadata();
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v77 = v28[3];
        sub_1CA17A868(ObjCClassMetadata, v75, v24);
        v28[3] = v77;
        swift_endAccess();

        (*(v34 + 8))(v66, v33);
        return ObjCClassMetadata;
      }

      v55 = OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_0_41(v55, xmmword_1CA1A0B80);
      v56 = AMSLogKey();
      if (v56)
      {
        v57 = v56;
        sub_1CA19C118();
      }

      OUTLINED_FUNCTION_20_5();
      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&v80);
      OUTLINED_FUNCTION_15_6();
      sub_1CA19AF18();
      OUTLINED_FUNCTION_23_5();

      sub_1CA177228();
      v61 = swift_allocError();
      OUTLINED_FUNCTION_17_7(v61, v62);
    }

    else
    {
      v75 = v38;
      v49 = v80;
      sub_1CA19AD28();

      swift_willThrow();
      *(OUTLINED_FUNCTION_10_15() + 16) = xmmword_1CA1A0B80;
      v82 = v69;
      v80 = v28;

      v50 = AMSLogKey();
      if (v50)
      {
        v51 = v50;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&v80);
      sub_1CA19AEE8();
      sub_1CA19AED8();
      swift_getErrorValue();
      v59 = v78;
      v58 = v79;
      v82 = v79;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v80);
      (*(*(v58 - 8) + 16))(boxed_opaque_existential_2Tm, v59, v58);
      sub_1CA19AEB8();
      sub_1CA0F54A0(&v80, &qword_1EC433830);
      sub_1CA19AED8();
      sub_1CA19AF08();
      OUTLINED_FUNCTION_23_5();

      swift_willThrow();
    }

    (*(v34 + 8))(v66, v72);
    return ObjCClassMetadata;
  }

  v46 = OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_0_41(v46, xmmword_1CA1A0B80);
  v47 = AMSLogKey();
  if (v47)
  {
    v48 = v47;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_20_5();
  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v80);
  sub_1CA19AF18();
  OUTLINED_FUNCTION_23_5();

  sub_1CA177228();
  v52 = swift_allocError();
  OUTLINED_FUNCTION_17_7(v52, v53);
  v54 = *(v34 + 8);

  v54(v66, v72);
  return ObjCClassMetadata;
}

id sub_1CA175134(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1CA19AD88();
  v4 = [v2 initWithURL_];

  v5 = sub_1CA19ADF8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1CA1751D0()
{
  result = sub_1CA175264(0xD00000000000002DLL, 0x80000001CA1AE6E0, 0x736E4967756C50, 0xE700000000000000);
  if (!v0)
  {
    v2 = result;
    sub_1CA19ADF8();
    v3 = sub_1CA19C038();
    return sub_1CA174574(v3, v2);
  }

  return result;
}

uint64_t sub_1CA175264(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v93 = a3;
  isUniquelyReferenced_nonNull_native = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v94 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_14();
  v95 = v13;
  v101 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v87 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_0_0();
  v78 = v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v97 = v70 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v79 = v70 - v20;
  v21 = sub_1CA19AEF8();
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_8_14();
  v88 = v22;
  if (qword_1EE03B230 != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_0_2();
  }

  v96 = isUniquelyReferenced_nonNull_native;
  v90 = __swift_project_value_buffer(isUniquelyReferenced_nonNull_native, qword_1EE040B90);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v24 = *(sub_1CA19AF88() - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~v25;
  v89 = *(v24 + 72);
  v82 = v26 + 2 * v89;
  v83 = v25;
  v85 = v23;
  v27 = swift_allocObject();
  v81 = xmmword_1CA1A0B80;
  *(v27 + 16) = xmmword_1CA1A0B80;
  v84 = v26;
  v80 = type metadata accessor for PluginLoader();
  v100 = v80;
  v98 = v4;
  v86 = v4;

  v28 = AMSLogKey();
  if (v28)
  {
    v29 = v28;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v98);
  sub_1CA19AEE8();
  sub_1CA19AED8();
  v100 = MEMORY[0x1E69E6158];
  v98 = a1;
  v99 = a2;

  sub_1CA19AEB8();
  sub_1CA0F54A0(&v98, &qword_1EC433830);
  sub_1CA19AED8();
  sub_1CA19AF08();
  sub_1CA19AFA8();

  v30 = sub_1CA11575C();

  v31 = sub_1CA174500();
  if (!v31)
  {
    *(swift_allocObject() + 16) = v81;
    OUTLINED_FUNCTION_18_5();
    v35 = AMSLogKey();
    if (v35)
    {
      v36 = v35;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v98);
    sub_1CA19AF18();
    sub_1CA19AFB8();

    return sub_1CA19C038();
  }

  v32 = v31;
  v33 = sub_1CA19C0E8();
  v72 = v6;
  if (a4)
  {
    v34 = sub_1CA19C0E8();
  }

  else
  {
    v34 = 0;
  }

  v37 = [v32 pathsForResourcesOfType:v33 inDirectory:v34];

  v38 = sub_1CA19C2B8();
  v39 = *(v38 + 16);
  if (!v39)
  {

    return MEMORY[0x1E69E7CC8];
  }

  v71 = v32;
  v91 = (v87 + 32);
  v73 = v87 + 40;
  v76 = v94 + 16;
  v75 = (v87 + 8);
  v74 = v94 + 8;
  v70[1] = v38;
  a2 = v38 + 40;
  v40 = MEMORY[0x1E69E7CC8];
  v77 = v30;
  while (1)
  {

    v41 = sub_1CA174500();
    if (!v41)
    {
      goto LABEL_26;
    }

    v42 = v41;
    v43 = sub_1CA176C74(v42);
    if (!v44)
    {

      goto LABEL_26;
    }

    v45 = v43;
    v46 = v44;
    v93 = v39;
    v94 = v42;
    v47 = [v42 bundleURL];
    v48 = v79;
    sub_1CA19ADA8();

    v49 = *v91;
    (*v91)(v97, v48, v101);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v40;
    v6 = v45;
    v4 = v40;
    v50 = sub_1CA184158(v45, v46);
    v52 = v40[2];
    v53 = (v51 & 1) == 0;
    a1 = (v52 + v53);
    if (__OFADD__(v52, v53))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v54 = v50;
    a4 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434128);
    v4 = &v98;
    if (sub_1CA19C9A8())
    {
      break;
    }

LABEL_18:
    isUniquelyReferenced_nonNull_native = v98;
    if (a4)
    {
      (*(v87 + 40))(v98[7] + *(v87 + 72) * v54, v97, v101);
    }

    else
    {
      v98[(v54 >> 6) + 8] |= 1 << v54;
      v57 = (isUniquelyReferenced_nonNull_native[6] + 16 * v54);
      *v57 = v6;
      v57[1] = v46;
      v49((isUniquelyReferenced_nonNull_native[7] + *(v87 + 72) * v54), v97, v101);
      v58 = isUniquelyReferenced_nonNull_native[2];
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_32;
      }

      isUniquelyReferenced_nonNull_native[2] = v60;
    }

    (*v76)(v95, v90, v96);
    *(swift_allocObject() + 16) = v81;
    OUTLINED_FUNCTION_18_5();
    v61 = AMSLogKey();
    v39 = v93;
    v92 = isUniquelyReferenced_nonNull_native;
    if (v61)
    {
      v62 = v61;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v98);
    sub_1CA19AEE8();
    sub_1CA19AED8();
    v63 = v94;
    v64 = [v94 bundleURL];
    v65 = v78;
    sub_1CA19ADA8();

    v66 = sub_1CA19AD78();
    a4 = v67;
    (*v75)(v65, v101);
    v100 = MEMORY[0x1E69E6158];
    v98 = v66;
    v99 = a4;
    sub_1CA19AEB8();
    sub_1CA0F54A0(&v98, &qword_1EC433830);
    sub_1CA19AED8();
    sub_1CA19AF08();
    v68 = v95;
    sub_1CA19AFA8();

    (*v74)(v68, v96);
    v40 = v92;
LABEL_26:
    a2 += 16;
    if (!--v39)
    {

      return v40;
    }
  }

  v4 = v98;
  v55 = sub_1CA184158(v6, v46);
  if ((a4 & 1) == (v56 & 1))
  {
    v54 = v55;
    goto LABEL_18;
  }

  result = sub_1CA19CB58();
  __break(1u);
  return result;
}

uint64_t sub_1CA175BFC()
{

  return v0;
}

uint64_t sub_1CA175C24()
{
  sub_1CA175BFC();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1CA175C7C(uint64_t a1, char a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_21_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C08);
  v37 = a2;
  v6 = sub_1CA19CA18();
  if (!v3[2])
  {
LABEL_29:

LABEL_30:
    *v4 = v6;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_19_2();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v13 = v6 + 64;
  if ((v9 & v8) == 0)
  {
LABEL_4:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v3[v7])
      {
        OUTLINED_FUNCTION_13_8();
        v10 = v17 & v16;
        goto LABEL_9;
      }
    }

    if ((v37 & 1) == 0)
    {

      v4 = v2;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_11_12();
    v4 = v2;
    if (v35 != v36)
    {
      OUTLINED_FUNCTION_12_12(v34);
    }

    else
    {
      OUTLINED_FUNCTION_9_15(v34);
    }

    v3[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_9:
    v18 = v14 | (v7 << 6);
    v19 = (v3[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v3[7] + 32 * v18);
    if (v37)
    {
      sub_1CA0F11E8(v22, v38);
    }

    else
    {
      sub_1CA0F1200(v22, v38);
    }

    sub_1CA19CBD8();
    sub_1CA19C198();
    sub_1CA19CC18();
    OUTLINED_FUNCTION_16_7();
    if (((v25 << v24) & ~*(v13 + 8 * v23)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_7_15();
LABEL_21:
    OUTLINED_FUNCTION_2_25();
    *(v13 + v30) |= v31;
    v33 = (*(v6 + 48) + 16 * v32);
    *v33 = v20;
    v33[1] = v21;
    sub_1CA0F11E8(v38, (*(v6 + 56) + 32 * v32));
    OUTLINED_FUNCTION_14_8();
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_17();
  while (++v26 != v28 || (v27 & 1) == 0)
  {
    v29 = v26 == v28;
    if (v26 == v28)
    {
      v26 = 0;
    }

    v27 |= v29;
    if (*(v13 + 8 * v26) != -1)
    {
      OUTLINED_FUNCTION_3_24();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1CA175E9C(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1CA19ADF8();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434148);
  v42 = a2;
  result = sub_1CA19CA18();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v38 = v2;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = (v5 + 16);
  v40 = v7;
  v41 = v5;
  v43 = (v5 + 32);
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      sub_1CA1766A0(0, (v36 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = (*(v7 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v41 + 72);
    v26 = v21 + v25 * v20;
    if (v42)
    {
      (*v43)(v44, v26, v45);
    }

    else
    {
      (*v39)(v44, v26, v45);
    }

    sub_1CA19CBD8();
    sub_1CA19C198();
    result = sub_1CA19CC18();
    v27 = -1 << *(v9 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v9 + 48) + 16 * v30);
    *v35 = v24;
    v35[1] = v23;
    result = (*v43)(*(v9 + 56) + v25 * v30, v44, v45);
    ++*(v9 + 16);
    v7 = v40;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v16 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1CA17621C(uint64_t a1, char a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_21_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4340A0);
  v6 = sub_1CA19CA18();
  if (!v3[2])
  {

LABEL_33:
    *v4 = v6;
    return;
  }

  v36 = v2;
  v7 = 0;
  OUTLINED_FUNCTION_4_19();
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v8;
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  if ((v10 & v8) == 0)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v3[v7])
      {
        OUTLINED_FUNCTION_13_8();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_11_12();
      if (v34 != v35)
      {
        OUTLINED_FUNCTION_12_12(v33);
      }

      else
      {
        OUTLINED_FUNCTION_9_15(v33);
      }

      v3[2] = 0;
    }

    v4 = v36;
    goto LABEL_33;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v18 = v14 | (v7 << 6);
    v19 = v3[6] + 40 * v18;
    if (a2)
    {
      v20 = *v19;
      v21 = *(v19 + 16);
      v40 = *(v19 + 32);
      v38 = v20;
      v39 = v21;
      sub_1CA0F11E8((v3[7] + 32 * v18), v37);
    }

    else
    {
      sub_1CA10BCDC(v19, &v38);
      sub_1CA0F1200(v3[7] + 32 * v18, v37);
    }

    v22 = sub_1CA19C878() & ~(-1 << *(v6 + 32));
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_7_15();
LABEL_24:
    OUTLINED_FUNCTION_2_25();
    *(v13 + v27) |= v28;
    v30 = *(v6 + 48) + 40 * v29;
    v31 = v38;
    v32 = v39;
    *(v30 + 32) = v40;
    *v30 = v31;
    *(v30 + 16) = v32;
    sub_1CA0F11E8(v37, (*(v6 + 56) + 32 * v29));
    OUTLINED_FUNCTION_14_8();
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_6_17();
  while (++v23 != v25 || (v24 & 1) == 0)
  {
    v26 = v23 == v25;
    if (v23 == v25)
    {
      v23 = 0;
    }

    v24 |= v26;
    if (*(v13 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_3_24();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1CA176458(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434170);
  v43 = a2;
  v6 = sub_1CA19CA18();
  if (!v5[2])
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v42 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_19_2();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  v15 = 24;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v17;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_13_8();
        v11 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_11_12();
    v3 = v2;
    if (v40 != v41)
    {
      OUTLINED_FUNCTION_12_12(v39);
    }

    else
    {
      OUTLINED_FUNCTION_9_15(v39);
    }

    v5[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v20 = v16 | (v7 << 6);
    v21 = (v5[6] + 16 * v20);
    v22 = v21[1];
    v45 = *v21;
    v23 = v5[7] + v20 * v15;
    v44 = *v23;
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
    if ((v43 & 1) == 0)
    {
      v26 = v24;
    }

    sub_1CA19CBD8();
    sub_1CA19C198();
    sub_1CA19CC18();
    OUTLINED_FUNCTION_16_7();
    if (((v29 << v28) & ~*(v14 + 8 * v27)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_7_15();
LABEL_20:
    OUTLINED_FUNCTION_2_25();
    *(v14 + v34) |= v35;
    v37 = (*(v6 + 48) + 16 * v36);
    *v37 = v45;
    v37[1] = v22;
    v38 = *(v6 + 56) + 24 * v36;
    *v38 = v44;
    *(v38 + 8) = v25;
    *(v38 + 16) = v24;
    OUTLINED_FUNCTION_14_8();
    v5 = v42;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_17();
  while (++v30 != v32 || (v31 & 1) == 0)
  {
    v33 = v30 == v32;
    if (v30 == v32)
    {
      v30 = 0;
    }

    v31 |= v33;
    if (*(v14 + 8 * v30) != -1)
    {
      OUTLINED_FUNCTION_3_24();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1CA1766A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1CA1A6D00;
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

uint64_t sub_1CA176704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CA0F1200(a4, a1);

  return a2;
}

uint64_t sub_1CA176744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CA19ADF8();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_1CA1767C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CA10BCDC(a3, a1);

  return sub_1CA0F1200(a4, a2);
}

uint64_t sub_1CA17680C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434130) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434138);
  result = sub_1CA176744(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1CA17687C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v44 = sub_1CA19ADF8();
  v9 = *(v44 - 8);
  v10 = MEMORY[0x1EEE9AC00](v44);
  v41 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434140);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v40 - v15);
  sub_1CA176CE4(a1, a2, a3, v49);
  v45 = v49[0];
  v46 = v49[1];
  v47 = v49[2];
  v48 = v50;
  v42 = v9;
  v43 = (v9 + 32);
  v40[4] = v9 + 8;
  v40[5] = v9 + 16;
  v40[3] = v9 + 40;
  v40[1] = a1;

  v40[0] = a3;

  while (1)
  {
    sub_1CA176E70(v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434138);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_1CA0F11F8();
    }

    v19 = *v16;
    v18 = v16[1];
    v20 = *v43;
    v21 = v13;
    (*v43)(v13, v16 + *(v17 + 48), v44);
    v22 = *v51;
    v24 = sub_1CA184158(v19, v18);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434128);
        sub_1CA19C9B8();
      }
    }

    else
    {
      sub_1CA175E9C(v27, a4 & 1);
      v29 = sub_1CA184158(v19, v18);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_16;
      }

      v24 = v29;
    }

    v31 = *v51;
    if (v28)
    {
      v33 = v41;
      v32 = v42;
      v13 = v21;
      v34 = v44;
      (*(v42 + 16))(v41, v21, v44);
      (*(v32 + 8))(v21, v34);

      (*(v32 + 40))(v31[7] + *(v32 + 72) * v24, v33, v34);
      a4 = 1;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v35 = (v31[6] + 16 * v24);
      *v35 = v19;
      v35[1] = v18;
      v13 = v21;
      v20((v31[7] + *(v42 + 72) * v24), v21, v44);
      v36 = v31[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_15;
      }

      v31[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1CA19CB58();
  __break(1u);
  return result;
}

uint64_t sub_1CA176C74(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA19C118();

  return v3;
}

uint64_t sub_1CA176CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1CA176D20@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1CA0F1200(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_1CA0F11E8(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_1CA0F54A0(v18, &qword_1EC434160);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CA176E70@<X0>(uint64_t a1@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434130);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v36 - v3;
  v5 = sub_1CA19ADF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434150);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v36 = v4;
  v40 = v17;
  if (v19)
  {
    v38 = a1;
    v20 = v18;
LABEL_7:
    v37 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v20 << 6);
    v22 = (*(v15 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v21, v5);
    v25 = v39;
    v26 = *(v39 + 48);
    *v14 = v23;
    *(v14 + 1) = v24;
    v27 = v8;
    v28 = v25;
    (*(v6 + 32))(&v14[v26], v27, v5);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);

    v29 = v37;
    a1 = v38;
LABEL_8:
    *v1 = v15;
    v1[1] = v16;
    v30 = v41;
    v1[2] = v40;
    v1[3] = v18;
    v1[4] = v29;
    v31 = v1[5];
    sub_1CA1771C0(v14, v30, &qword_1EC434150);
    v32 = 1;
    if (__swift_getEnumTagSinglePayload(v30, 1, v28) != 1)
    {
      v33 = v30;
      v34 = v36;
      sub_1CA1771C0(v33, v36, &qword_1EC434130);
      v31(v34);
      sub_1CA0F54A0(v34, &qword_1EC434130);
      v32 = 0;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434138);
    return __swift_storeEnumTagSinglePayload(a1, v32, 1, v35);
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= ((v17 + 64) >> 6))
      {
        v28 = v39;
        __swift_storeEnumTagSinglePayload(&v36 - v13, 1, 1, v39);
        v29 = 0;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v20);
      ++v18;
      if (v19)
      {
        v38 = a1;
        v18 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CA1771C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CA177228()
{
  result = qword_1EC434158;
  if (!qword_1EC434158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434158);
  }

  return result;
}

_OWORD *sub_1CA17727C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_1CA10BCDC(*(v3 + 48) + 40 * v10, &v14);
    sub_1CA0F1200(*(v3 + 56) + 32 * v10, v19);
    v20 = v14;
    v21 = v15;
    *&v22 = v16;
    result = sub_1CA0F11E8(v19, (&v22 + 8));
    v12 = *(&v21 + 1);
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v12)
    {
      v13 = v1[5];
      v14 = v20;
      *&v15 = v21;
      *(&v15 + 1) = v12;
      v16 = v22;
      v17 = v23;
      v18 = v24;
      v13(&v14);
      return sub_1CA0F54A0(&v14, &qword_1EC433C10);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v12 = 0;
        v9 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_41(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 - 104) = *(v3 - 264);
  *(v3 - 128) = v2;
}

uint64_t OUTLINED_FUNCTION_9_15@<X0>(uint64_t a1@<X8>)
{

  return sub_1CA1766A0(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_10_15()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t a1, void *a2)
{
  v4 = *(v2 - 224);
  *a2 = *(v2 - 208);
  a2[1] = v4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_5()
{
  *(v0 - 96) = *(v0 - 280);
  *(v0 - 120) = *(v0 - 216);
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_1CA19AFB8();
}

void sub_1CA17762C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CA177710(a1, &v9);
  if (v11 == 2)
  {
    sub_1CA177780(&v9);
    if (!a2)
    {
      sub_1CA1777E8();
      a2 = swift_allocError();
    }

    sub_1CA177780(a1);
    *a3 = a2;
    *(a3 + 32) = 0;
  }

  else
  {
    sub_1CA177780(a1);

    v6 = v11;
    v8 = v10;
    if (v11 == 1)
    {
      v6 = 0;
      *a3 = 0;
      *(a3 + 8) = 0;
      v7 = 2;
      *(a3 + 16) = 0;
    }

    else
    {
      *a3 = v9;
      *(a3 + 16) = v8;
      v7 = 1;
    }

    *(a3 + 24) = v6;
    *(a3 + 32) = v7;
  }
}

uint64_t sub_1CA177710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA177780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CA1777E8()
{
  result = qword_1EC434178;
  if (!qword_1EC434178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434178);
  }

  return result;
}

_BYTE *_s19InitializationErrorOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA1778EC()
{
  result = qword_1EC434180;
  if (!qword_1EC434180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434180);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27AppleMediaServicesUIDynamic30PreviousResultingActionOutcomeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CA177970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA1779AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA1779F8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

void sub_1CA177A2C(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;

  v7 = a1;
  dispatch_group_leave(a3);
}

uint64_t sub_1CA177AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_42(a1, a2, a3);
  return sub_1CA19CAF8();
}

uint64_t sub_1CA177AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_42(a1, a2, a3);
    v5 = sub_1CA19CAF8() ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1CA177B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CA19CAF8() ^ 1;
  }

  return v5 & 1;
}

unint64_t sub_1CA177B6C()
{
  result = qword_1EE03C1C0;
  if (!qword_1EE03C1C0)
  {
    type metadata accessor for QueuePriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C1C0);
  }

  return result;
}

uint64_t sub_1CA177C14@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  if (a1 - 2 < 2)
  {
    v10 = [objc_opt_self() settingsURL];
    if (v10)
    {
      v11 = v10;
      sub_1CA19ADA8();

      v12 = sub_1CA19ADF8();
      v13 = 0;
    }

    else
    {
      v12 = sub_1CA19ADF8();
      v13 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v13, 1, v12);
    v20 = v7;
    return sub_1CA162D74(v20, a2);
  }

  if (a1)
  {
    v16 = [objc_opt_self() settingsURL];
    if (v16)
    {
      v17 = v16;
      sub_1CA19ADA8();

      v18 = sub_1CA19ADF8();
      v19 = 0;
    }

    else
    {
      v18 = sub_1CA19ADF8();
      v19 = 1;
    }

    __swift_storeEnumTagSinglePayload(v9, v19, 1, v18);
    v20 = v9;
    return sub_1CA162D74(v20, a2);
  }

  v14 = sub_1CA19ADF8();

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
}

uint64_t sub_1CA177DD8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      v4 = 0xD000000000000013;
      v3 = 0x80000001CA1AE8C0;
      break;
    case 2:
      v4 = 0xD00000000000001ALL;
      v3 = 0x80000001CA1AE8A0;
      break;
    case 3:
      v4 = 0xD000000000000017;
      v3 = 0x80000001CA1AE880;
      break;
    default:
      v3 = 0x80000001CA1AE8E0;
      v4 = 0xD000000000000012;
      break;
  }

  return sub_1CA177E90(v4, v3, a1);
}

uint64_t sub_1CA177E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() wapiCapability];
  type metadata accessor for Localizations();
  if (v6)
  {
    v7 = 1312902231;
  }

  else
  {
    v7 = 1229343063;
  }

  v10 = v7 & 0xFFFF0000FFFFFFFFLL | 0x5F00000000;
  MEMORY[0x1CCA99820](a1, a2);
  v8 = sub_1CA166B54(v10, 0xE500000000000000, a3);

  return v8;
}

uint64_t ResultingActionDispatcher.__allocating_init()()
{
  v0 = swift_allocObject();
  ResultingActionDispatcher.init()();
  return v0;
}

unint64_t ResultingActionDispatcher.PerformError.errorDescription.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000049;
  }

  else
  {
    return 0xD000000000000057;
  }
}

uint64_t ResultingActionDispatcher.PerformError.hashValue.getter(char a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1 & 1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA178088()
{
  v1 = *v0;
  sub_1CA19CBD8();
  ResultingActionDispatcher.PerformError.hash(into:)(v3, v1);
  return sub_1CA19CC18();
}

void *ResultingActionDispatcher.init()()
{
  sub_1CA19B778();
  type metadata accessor for ResultingActionImplementationBox();
  sub_1CA17B83C(&qword_1EE03C338, MEMORY[0x1E69AB090]);
  v0[3] = 0;
  v0[2] = 0;
  v0[4] = sub_1CA19C038();
  swift_beginAccess();
  v0[2] = 0;

  return v0;
}

uint64_t ResultingActionDispatcher.next.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void *ResultingActionDispatcher.targetQueue.getter()
{
  OUTLINED_FUNCTION_4_5();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void ResultingActionDispatcher.targetQueue.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void ResultingActionDispatcher.add<A>(_:)()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v9 = v8 - v7;
  v10 = sub_1CA19B778();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  v16 = v15 - v14;
  swift_getAssociatedTypeWitness();
  sub_1CA19B788();
  type metadata accessor for ConcreteResultingActionImplementationBox();
  (*(v6 + 16))(v9, v5, v3);
  v17 = ConcreteResultingActionImplementationBox.__allocating_init(_:)();
  OUTLINED_FUNCTION_14_5();
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v1 + 32);
  sub_1CA17A938(v17, v16);
  *(v1 + 32) = v18;
  swift_endAccess();
  (*(v12 + 8))(v16, v10);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA1784F4(uint64_t a1)
{
  v3 = sub_1CA19B778();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  v9 = v8 - v7;
  sub_1CA19B788();
  OUTLINED_FUNCTION_14_5();

  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 32);
  sub_1CA17A938(a1, v9);
  *(v1 + 32) = v11;
  swift_endAccess();
  return (*(v5 + 8))(v9, v3);
}

Swift::Void __swiftcall ResultingActionDispatcher.removeAllImplementations()()
{
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434188);
  sub_1CA19C048();
  swift_endAccess();
}

uint64_t ResultingActionDispatcher.removeImplementation(forType:)()
{
  v0 = sub_1CA19B778();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_3();
  v6 = v5 - v4;
  swift_getMetatypeMetadata();
  sub_1CA19B768();
  OUTLINED_FUNCTION_14_5();
  sub_1CA17A398();
  swift_endAccess();

  return (*(v2 + 8))(v6, v0);
}

void ResultingActionDispatcher.perform(_:withMetrics:asPartOf:previousActionOutcome:)()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  v55 = v4;
  v6 = v5;
  v47 = v5;
  v8 = v7;
  v46 = v7;
  v50 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v54 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  v48 = v12 - v11;
  OUTLINED_FUNCTION_39_1();
  sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v51 = v14;
  v52 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  v17 = v16 - v15;
  v18 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  v19 = OUTLINED_FUNCTION_7_3(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
  v53 = sub_1CA19BF08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DB0);
  v25 = sub_1CA19BF08();
  v49 = sub_1CA0F78AC();
  v44 = sub_1CA19C598();
  sub_1CA0F2ACC(v8, v63);
  sub_1CA17B280(v6, v24);
  sub_1CA10BC7C(v3, v61, &unk_1EC433740);
  v26 = *(v21 + 80);
  v27 = ((v26 + 64) & ~v26) + v23;
  v45 = (v26 + 64) & ~v26;
  v28 = (v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = v28;
  v29 = (v27 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v42[1] = v1;
  *(v30 + 16) = v1;
  sub_1CA0EBE94(v63, v30 + 24);
  sub_1CA17B2E4(v24, v30 + ((v26 + 64) & ~v26));
  v31 = v30 + v28;
  v32 = v61[1];
  *v31 = v61[0];
  *(v31 + 16) = v32;
  *(v31 + 32) = v62;
  *(v30 + v29) = v55;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v59 = sub_1CA17B348;
  v60 = v30;
  *&v56 = MEMORY[0x1E69E9820];
  *(&v56 + 1) = 1107296256;
  v57 = sub_1CA0F4068;
  v58 = &block_descriptor_15;
  v33 = _Block_copy(&v56);

  sub_1CA19B2F8();
  *&v56 = MEMORY[0x1E69E7CC0];
  sub_1CA17B83C(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA10B7BC(&qword_1EE03C2A0, &unk_1EC433C70);
  v34 = v48;
  v35 = v50;
  sub_1CA19C788();
  v36 = v44;
  MEMORY[0x1CCA99C20](0, v17, v34, v33);
  _Block_release(v33);

  (*(v54 + 8))(v34, v35);
  (*(v51 + 8))(v17, v52);
  v37 = swift_allocObject();
  swift_weakInit();
  sub_1CA0F2ACC(v46, &v56);
  sub_1CA17B280(v47, v24);
  v38 = v43;
  v39 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  sub_1CA0EBE94(&v56, v40 + 24);
  sub_1CA17B2E4(v24, v40 + v45);
  *(v40 + v38) = v55;
  *(v40 + v39) = v53;

  v41 = sub_1CA19C598();
  sub_1CA17B4BC(v41, sub_1CA17B404, v40);

  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA178CBC()
{
  sub_1CA1791BC();
  v1 = v0;
  sub_1CA0F78AC();
  v2 = sub_1CA19C598();
  sub_1CA17B8F0(v1, v2);
}

uint64_t sub_1CA178D64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  sub_1CA10BC7C(a1, &v31, &qword_1EC433DE0);
  if (*(&v32 + 1) == 1)
  {
    sub_1CA15ECF4(&v31);
    sub_1CA17B630();
    v12 = swift_allocError();
    *v13 = 1;
  }

  else
  {
    if (*(&v32 + 1) == 2)
    {
      sub_1CA10BDC8(&v31, &qword_1EC433DE0);
    }

    else
    {
      sub_1CA15ECF4(&v31);
    }

    v14 = a2;
    v12 = a2;
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_1CA0F2ACC(a4, &v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4341F0);
  if (swift_dynamicCast())
  {
    sub_1CA0EBE94(&v22, v28);
    v15 = v29;
    v16 = v30;
    __swift_project_boxed_opaque_existential_2(v28, v29);
    if (v12)
    {
      (*(v16 + 16))(&v25, v15, v16);
    }

    else
    {
      (*(v16 + 24))(&v25, v15, v16);
    }

    goto LABEL_15;
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1CA10BDC8(&v22, &qword_1EC4341F8);
  sub_1CA0F2ACC(a4, &v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434200);
  if (swift_dynamicCast())
  {
    sub_1CA0EBE94(&v22, v28);
    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_2(v28, v29);
    (*(v18 + 16))(&v25, v17, v18);
LABEL_15:
    sub_1CA10BDC8(&v31, &unk_1EC433730);
    v31 = v25;
    v32 = v26;
    v33 = v27;
    __swift_destroy_boxed_opaque_existential_2(v28);
    goto LABEL_16;
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1CA10BDC8(&v22, &qword_1EC434208);
LABEL_16:
  sub_1CA10BC7C(&v31, &v25, &unk_1EC433730);
  if (*(&v26 + 1))
  {
    sub_1CA0EBE94(&v25, v28);
    sub_1CA10BC7C(a1, &v22, &qword_1EC433DE0);
    v19 = a2;
    sub_1CA17762C(&v22, a2, &v25);
    sub_1CA17B894(&v25, &v22);
    v20 = ResultingActionDispatcher.perform(_:withMetrics:asPartOf:previousActionOutcome:)(v28, a5, a6, &v22);
    sub_1CA10BDC8(&v22, &unk_1EC433740);
    sub_1CA0F78AC();
    v21 = sub_1CA19C598();
    sub_1CA17B8F0(v20, v21);

    sub_1CA17B990(&v25);
    __swift_destroy_boxed_opaque_existential_2(v28);
  }

  else
  {
    sub_1CA10BDC8(&v25, &unk_1EC433730);
    sub_1CA19BEC8();
  }

  return sub_1CA10BDC8(&v31, &unk_1EC433730);
}

void sub_1CA1791BC()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v33 = v3;
  v5 = v4;
  v7 = v6;
  v34 = sub_1CA19B778();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  v13 = v12 - v11;
  v14 = sub_1CA19B388();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_3();
  v20 = (v19 - v18);
  OUTLINED_FUNCTION_4_5();
  v21 = v0[3];
  if (!v21 || (*v20 = v21, (*(v16 + 104))(v20, *MEMORY[0x1E69E8020], v14), v22 = v21, v23 = sub_1CA19B3C8(), (*(v16 + 8))(v20, v14), (v23 & 1) != 0))
  {
    v24 = v7[3];
    v25 = __swift_project_boxed_opaque_existential_2(v7, v24);
    v39 = v24;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v37);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_2Tm, v25, v24);
    sub_1CA19B768();
    OUTLINED_FUNCTION_4_5();
    v27 = v0[4];

    v28 = sub_1CA181F40(v13, v27);

    if (v28)
    {
      sub_1CA1797E4(v7, v5, v2);
      OUTLINED_FUNCTION_4_5();
      v29 = v0[2];
      if (v29)
      {
        v30 = *(*v28 + 80);

        v30(v7, v33, v2);
        sub_1CA0F2ACC(v7, &v37);
        sub_1CA10BC7C(v33, v35, &unk_1EC433740);
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        sub_1CA0EBE94(&v37, v31 + 24);
        v32 = v35[1];
        *(v31 + 64) = v35[0];
        *(v31 + 80) = v32;
        *(v31 + 96) = v36;
        *(v31 + 104) = v2;
        v39 = sub_1CA19B8B8();
        v40 = MEMORY[0x1E69AB218];
        __swift_allocate_boxed_opaque_existential_2Tm(&v37);

        sub_1CA19B8A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DB0);
        sub_1CA10B7BC(&qword_1EC4341D0, &qword_1EC433DB0);
        sub_1CA19BEB8();

        (*(v9 + 8))(v13, v34);
        __swift_destroy_boxed_opaque_existential_2(&v37);
        goto LABEL_9;
      }

      (*(*v28 + 80))(v7, v33, v2);
    }

    else
    {
      OUTLINED_FUNCTION_4_5();
      if (!v0[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DB0);
        v37 = 0uLL;
        v38 = 0;
        v39 = 1;
        sub_1CA19BE88();
        goto LABEL_8;
      }

      sub_1CA1791BC(v7, v5, v33, v2);
    }

LABEL_8:
    (*(v9 + 8))(v13, v34);
LABEL_9:
    OUTLINED_FUNCTION_20_0();
    return;
  }

  __break(1u);
}

uint64_t sub_1CA179690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CA15EF38(a1, &v17);
  if (*(&v18 + 1) == 1)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339E0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    v13 = sub_1CA1791BC(a3, v11, a4, a5);
    sub_1CA12E180(v11);
  }

  else
  {
    v16[0] = v17;
    v16[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DB0);
    sub_1CA10BC7C(v16, v15, &qword_1EC433830);
    v13 = sub_1CA19BE88();
    sub_1CA10BDC8(v16, &qword_1EC433830);
  }

  return v13;
}

uint64_t sub_1CA1797E4(void *a1, void (*a2)(uint64_t, uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v97 = a2;
  v87 = a1;
  sub_1CA19B5F8();
  OUTLINED_FUNCTION_1_0();
  v80 = v4;
  v81 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v79 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4341B0);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v75 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4341B8);
  OUTLINED_FUNCTION_1_0();
  v91 = v10;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v75 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4341C0);
  OUTLINED_FUNCTION_1_0();
  v85 = v14;
  v86 = v13;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v75 - v16;
  OUTLINED_FUNCTION_39_1();
  v82 = sub_1CA19B878();
  OUTLINED_FUNCTION_1_0();
  v84 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_3();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_39_1();
  v90 = sub_1CA19B6E8();
  OUTLINED_FUNCTION_1_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1_3();
  v95 = v26 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4341C8);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  v30 = sub_1CA19B868();
  OUTLINED_FUNCTION_1_0();
  v92 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1_3();
  v93 = v34 - v33;
  OUTLINED_FUNCTION_39_1();
  v35 = sub_1CA19BA68();
  OUTLINED_FUNCTION_1_0();
  v37 = v36;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v94 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v75 - v41;
  OUTLINED_FUNCTION_39_1();
  v43 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  MEMORY[0x1EEE9AC00](v43 - 8);
  OUTLINED_FUNCTION_1_3();
  v46 = v45 - v44;
  sub_1CA17B280(v97, v45 - v44);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339E0);
  result = __swift_getEnumTagSinglePayload(v46, 1, v47);
  if (result != 1)
  {
    (*(v37 + 32))(v42, v46, v35);
    v97 = a3;
    sub_1CA19B7C8();
    if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
    {
      sub_1CA10BDC8(v29, &qword_1EC4341C8);
      sub_1CA17B630();
      v49 = swift_allocError();
      *v50 = 0;
      v96 = v49;
      swift_willThrow();
      return (*(v37 + 8))(v42, v35);
    }

    else
    {
      v77 = v23;
      v51 = *(v92 + 32);
      v75 = v30;
      v51(v93, v29, v30);
      __swift_project_boxed_opaque_existential_2(v87, v87[3]);
      sub_1CA19B548();
      v76 = v37;
      v52 = *(v37 + 16);
      v87 = v35;
      v52(v94, v42, v35);
      sub_1CA19B6D8();
      v53 = v83;
      sub_1CA19BA08();
      v54 = v82;
      sub_1CA19BA48();
      (*(v85 + 8))(v53, v86);
      (*(v84 + 8))(v21, v54);
      v55 = v88;
      sub_1CA19B9F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434078);
      v56 = sub_1CA19BA28();
      v57 = v91 + 8;
      v58 = *(v91 + 1);
      v59 = v89;
      v58(v55, v89);
      if ((v56 & 1) == 0)
      {
        v91 = v57;
        sub_1CA19BA98();
        sub_1CA19B7C8();
        if (v98)
        {
          v60 = v78;
          sub_1CA19BA88();
          v61 = sub_1CA19B628();
          if (__swift_getEnumTagSinglePayload(v60, 1, v61))
          {

            sub_1CA10BDC8(v60, &qword_1EC4341B0);
          }

          else
          {
            v62 = v60;
            v63 = sub_1CA19B618();
            sub_1CA10BDC8(v62, &qword_1EC4341B0);
            if (v63)
            {
              v98 = v63;
              sub_1CA19B9F8();
              sub_1CA19BA48();

              v58(v55, v59);
            }

            else
            {
            }
          }
        }
      }

      v91 = v42;
      v64 = sub_1CA19B6C8();
      v65 = *(v64 + 16);
      if (v65)
      {
        v66 = v80;
        v97 = *(v81 + 16);
        v67 = *(v81 + 80);
        v89 = v64;
        v68 = v64 + ((v67 + 32) & ~v67);
        v69 = *(v81 + 72);
        v70 = (v81 + 8);
        v71 = v79;
        do
        {
          v97(v71, v68, v66);
          sub_1CA19B848();

          (*v70)(v71, v66);
          v68 += v69;
          --v65;
        }

        while (v65);
      }

      v72 = v90;
      v73 = *(v76 + 8);
      v74 = v87;
      v73(v94, v87);
      (*(v77 + 8))(v95, v72);
      (*(v92 + 8))(v93, v75);
      return (v73)(v91, v74);
    }
  }

  return result;
}

uint64_t ResultingActionDispatcher.deinit()
{

  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 16);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t ResultingActionDispatcher.__deallocating_deinit()
{
  ResultingActionDispatcher.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t ResultingActionDispatcher.debugDescription.getter()
{
  OUTLINED_FUNCTION_4_5();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434190);
  sub_1CA10B7BC(&qword_1EC434198, &qword_1EC434190);
  sub_1CA0FB77C();
  v1 = sub_1CA19C288();
  v3 = v2;

  OUTLINED_FUNCTION_4_5();
  if (*(v0 + 16))
  {
    type metadata accessor for ResultingActionDispatcher();

    v4 = sub_1CA19C168();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  sub_1CA19C8F8();
  v7 = sub_1CA19CC68();

  MEMORY[0x1CCA99820](0xD000000000000013, 0x80000001CA1AE9B0);
  MEMORY[0x1CCA99820](v1, v3);

  MEMORY[0x1CCA99820](0x3A7478656E202C5DLL, 0xE900000000000020);
  MEMORY[0x1CCA99820](v4, v6);

  return v7;
}

uint64_t sub_1CA17A2F8@<X0>(uint64_t *a1@<X8>)
{
  sub_1CA19B778();
  sub_1CA17B83C(&qword_1EC4341E8, MEMORY[0x1E69AB090]);
  result = sub_1CA19CAB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA17A398()
{
  v1 = v0;
  v2 = sub_1CA1841D0();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434210);
  sub_1CA19C9A8();
  v5 = *(v9 + 48);
  v6 = sub_1CA19B778();
  (*(*(v6 - 8) + 8))(v5 + *(*(v6 - 8) + 72) * v4, v6);
  v7 = *(*(v9 + 56) + 8 * v4);
  type metadata accessor for ResultingActionImplementationBox();
  sub_1CA17B83C(&qword_1EE03C338, MEMORY[0x1E69AB090]);
  sub_1CA19C9C8();
  *v1 = v9;
  return v7;
}

double sub_1CA17A4D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1CA184158(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_17_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D70);
    OUTLINED_FUNCTION_6_18();

    sub_1CA0F11E8((*(v9 + 56) + 32 * v7), a3);
    sub_1CA19C9C8();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1CA17A5A4()
{
  v1 = v0;
  v2 = sub_1CA1842C0();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4341E0);
  OUTLINED_FUNCTION_6_18();
  v5 = *(*(v7 + 56) + 8 * v4);
  type metadata accessor for QueuePriority(0);
  sub_1CA17B83C(&qword_1EE03BD58, type metadata accessor for QueuePriority);
  sub_1CA19C9C8();
  *v1 = v7;
  return v5;
}

uint64_t sub_1CA17A6A0()
{
  v1 = v0;
  v2 = sub_1CA184264();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433278);
  sub_1CA19C9A8();
  memcpy(__dst, (*(v7 + 48) + 88 * v4), sizeof(__dst));
  sub_1CA1030E8(__dst);
  v5 = *(*(v7 + 56) + 8 * v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433250);
  sub_1CA107CDC();
  sub_1CA19C9C8();
  *v1 = v7;
  return v5;
}

double sub_1CA17A79C@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_1CA184118();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_17_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C50);
    OUTLINED_FUNCTION_6_18();
    sub_1CA103038(*(v7 + 48) + 40 * v5);
    sub_1CA0F11E8((*(v7 + 56) + 32 * v5), a1);
    sub_1CA19C9C8();
    *v1 = v7;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_1CA17A868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_17(a1, a2, a3);
  OUTLINED_FUNCTION_2_26();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1CA19CB58();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4341D8);
  if (OUTLINED_FUNCTION_7_16())
  {
    sub_1CA184158(v5, v3);
    OUTLINED_FUNCTION_9_16();
    if (!v13)
    {
      goto LABEL_12;
    }

    v10 = v12;
  }

  if (v11)
  {
    *(*(*v6 + 56) + 8 * v10) = v4;
    OUTLINED_FUNCTION_19_3();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_16_8();
    sub_1CA17AF84(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_19_3();
  }
}

uint64_t sub_1CA17A938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA19B778();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_1CA1841D0();
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434210);
  if ((sub_1CA19C9A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1CA1841D0();
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_1CA19CB58();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v3;
  if (v14)
  {
    *(v17[7] + 8 * v13) = a1;
  }

  else
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_1CA17AFCC(v13, v9, a1, v17);
  }
}

uint64_t sub_1CA17AB20()
{
  OUTLINED_FUNCTION_19_0();
  v5 = v4;
  OUTLINED_FUNCTION_5_17(v6, v7, v8);
  OUTLINED_FUNCTION_2_26();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1CA19CB58();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  if (OUTLINED_FUNCTION_7_16())
  {
    sub_1CA184158(v2, v0);
    OUTLINED_FUNCTION_9_16();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  if (v13)
  {
    *(*(*v3 + 56) + 8 * v12) = v1;
    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_16_8();
    sub_1CA17B1EC(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_20_0();
  }
}

_OWORD *sub_1CA17AC14(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_1CA184158(a2, a3);
  OUTLINED_FUNCTION_2_26();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1CA19CB58();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D70);
  if (OUTLINED_FUNCTION_7_16())
  {
    sub_1CA184158(a2, a3);
    OUTLINED_FUNCTION_9_16();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v3;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_2(v14[7] + 32 * v10);
    OUTLINED_FUNCTION_19_3();

    return sub_1CA0F11E8(v15, v16);
  }

  else
  {
    sub_1CA17B084(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_19_3();
  }
}

uint64_t sub_1CA17AD30()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1CA184158(v3, v1);
  OUTLINED_FUNCTION_2_26();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332C8);
  if ((sub_1CA19C9A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1CA184158(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1CA19CB58();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (*(v16 + 56) + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    sub_1CA17B0F0(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_20_0();
  }
}

void sub_1CA17AE60(uint64_t a1)
{
  sub_1CA1842C0();
  OUTLINED_FUNCTION_2_26();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4341E0);
  if ((sub_1CA19C9A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_1CA1842C0();
  if ((v7 & 1) != (v9 & 1))
  {
LABEL_11:
    type metadata accessor for QueuePriority(0);
    sub_1CA19CB58();
    __break(1u);
    return;
  }

  v6 = v8;
LABEL_5:
  if (v7)
  {
    *(*(*v1 + 56) + 8 * v6) = a1;
    OUTLINED_FUNCTION_19_3();
  }

  else
  {
    OUTLINED_FUNCTION_19_3();

    sub_1CA17B13C(v10, v11, v12, v13);
  }
}

unint64_t sub_1CA17AF84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1CA17AFCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1CA19B778();
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

_OWORD *sub_1CA17B084(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CA0F11E8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1CA17B0F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_14_9(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

unint64_t sub_1CA17B13C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_1CA17B180(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_14_9(a1, a4 + 8 * (a1 >> 6));
  result = memcpy((*(v8 + 48) + 88 * v7), v9, 0x58uLL);
  *(*(a4 + 56) + 8 * a1) = a3;
  v11 = *(a4 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }

  return result;
}

uint64_t sub_1CA17B1EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_14_9(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t type metadata accessor for ResultingActionDispatcher.MetricsBehavior()
{
  result = qword_1EE03CAE0;
  if (!qword_1EE03CAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA17B280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA17B2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA17B348()
{
  v0 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  OUTLINED_FUNCTION_7_3(v0);

  return sub_1CA178CBC();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA17B404(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  OUTLINED_FUNCTION_7_3(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v11 = *(v2 + 16);
  v12 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CA178D64(a1, a2, v11, v2 + 24, v2 + v10, v12);
}

uint64_t sub_1CA17B4BC(void *a1, uint64_t a2, uint64_t a3)
{
  v10[3] = sub_1CA0F78AC();
  v10[4] = MEMORY[0x1E69AB720];
  v10[0] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  swift_retain_n();
  v8 = a1;
  sub_1CA19BE68();

  return __swift_destroy_boxed_opaque_existential_2(v10);
}

unint64_t sub_1CA17B5D8()
{
  result = qword_1EC4341A0;
  if (!qword_1EC4341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4341A0);
  }

  return result;
}

unint64_t sub_1CA17B630()
{
  result = qword_1EC4341A8;
  if (!qword_1EC4341A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4341A8);
  }

  return result;
}

uint64_t sub_1CA17B6AC()
{
  sub_1CA17B704();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1CA17B704()
{
  if (!qword_1EE03B498)
  {
    v0 = sub_1CA19BA68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE03B498);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ResultingActionDispatcher.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CA17B83C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA17B8F0(uint64_t a1, void *a2)
{
  v5[3] = sub_1CA0F78AC();
  v5[4] = MEMORY[0x1E69AB720];
  v5[0] = a2;
  swift_retain_n();
  v3 = a2;
  sub_1CA19BE68();

  return __swift_destroy_boxed_opaque_existential_2(v5);
}

unint64_t OUTLINED_FUNCTION_5_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1CA184158(a2, a3);
}

uint64_t OUTLINED_FUNCTION_6_18()
{

  return sub_1CA19C9A8();
}

uint64_t OUTLINED_FUNCTION_7_16()
{

  return sub_1CA19C9A8();
}

uint64_t OUTLINED_FUNCTION_18_6()
{
}

uint64_t ConcreteResultingActionImplementationBox.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  ConcreteResultingActionImplementationBox.init(_:)();
  return v0;
}

uint64_t ConcreteResultingActionImplementationBox.init(_:)()
{
  OUTLINED_FUNCTION_0_43();
  (*(*(*(v2 + 96) - 8) + 32))(v0 + *(v1 + 112));
  return v0;
}

uint64_t sub_1CA17BC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_43();
  v7 = *(v6 + 104);
  v9 = *(v8 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v17[-v12 - 8];
  sub_1CA0F2ACC(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433A08);
  swift_dynamicCast();
  v14 = (*(v7 + 24))(v13, a2, a3, v9, v7);
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  return v14;
}

uint64_t ConcreteResultingActionImplementationBox.deinit()
{
  OUTLINED_FUNCTION_0_43();
  (*(*(*(v2 + 96) - 8) + 8))(v0 + *(v1 + 112));
  return v0;
}

uint64_t ConcreteResultingActionImplementationBox.__deallocating_deinit()
{
  ConcreteResultingActionImplementationBox.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA17BEEC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27AppleMediaServicesUIDynamic22ResultingActionOutcomeO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA17BFCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA17C028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void *sub_1CA17C088(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = a2;
  }

  return result;
}

uint64_t type metadata accessor for SendMethodFieldsProvider()
{
  result = qword_1EE03CB48;
  if (!qword_1EE03CB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA17C13C(uint64_t a1)
{
  v2[3] = MEMORY[0x1E69E6158];
  v2[0] = 0x646975736D61;
  v2[1] = 0xE600000000000000;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1CA19B9E8();
  return __swift_destroy_boxed_opaque_existential_2(v2);
}

uint64_t sub_1CA17C1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1CA19AEF8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = objc_allocWithZone(MEMORY[0x1E696AE70]);

  v14 = sub_1CA17C660(a1, a2, 0);
  v15 = sub_1CA19C0E8();
  v39 = a3;
  v40 = a4;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434240);
  sub_1CA17C73C();
  sub_1CA0FB77C();
  v17 = sub_1CA19C6E8();
  v19 = [v14 matchesInString:v15 options:0 range:{v17, v18}];

  sub_1CA17C7A0();
  v20 = sub_1CA19C2B8();

  v21 = sub_1CA0F04EC(v20);
  if (v21)
  {
    v22 = v21;
    v35 = v14;
    v39 = MEMORY[0x1E69E7CC0];
    result = sub_1CA17C804(0, v21 & ~(v21 >> 63), 0);
    if (v22 < 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v24 = 0;
    v13 = v39;
    v37 = v20;
    v38 = v20 & 0xC000000000000001;
    v36 = v20 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v38)
      {
        v26 = MEMORY[0x1CCA99FB0](v24, v20);
      }

      else
      {
        if (v24 >= *(v36 + 16))
        {
          goto LABEL_19;
        }

        v26 = *(v20 + 8 * v24 + 32);
      }

      v27 = v26;
      [v26 range];
      result = sub_1CA19C4A8();
      if (v28)
      {
        goto LABEL_21;
      }

      v29 = sub_1CA19C248();
      v16 = MEMORY[0x1CCA997D0](v29);
      v31 = v30;

      v39 = v13;
      v33 = *(v13 + 16);
      v32 = *(v13 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1CA17C804(v32 > 1, v33 + 1, 1);
        v13 = v39;
      }

      *(v13 + 16) = v33 + 1;
      v34 = v13 + 16 * v33;
      *(v34 + 32) = v16;
      *(v34 + 40) = v31;
      ++v24;
      v20 = v37;
      if (v25 == v22)
      {

        return v13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    swift_once();
    v10 = sub_1CA19AFF8();
    __swift_project_value_buffer(v10, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0C20;
    sub_1CA19AEE8();
    sub_1CA19AED8();
    swift_getErrorValue();
    v11 = sub_1CA19CB88();
    v41 = MEMORY[0x1E69E6158];
    v39 = v11;
    v40 = v12;
    sub_1CA19AEB8();
    sub_1CA0F0440(&v39);
    sub_1CA19AED8();
    sub_1CA19AF08();
    sub_1CA19AFB8();
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1CA17C660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1CA19C0E8();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1CA19AD28();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1CA17C73C()
{
  result = qword_1EE03ADB8;
  if (!qword_1EE03ADB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC434240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03ADB8);
  }

  return result;
}

unint64_t sub_1CA17C7A0()
{
  result = qword_1EE03AE00;
  if (!qword_1EE03AE00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03AE00);
  }

  return result;
}

uint64_t sub_1CA17C7E4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA17C824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA17C804(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA17C93C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA17C824(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434248);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_1CA16B734((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433290);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA17C93C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433FD8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1CA16B75C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1CA17CA80()
{
  v1 = *(v0 + qword_1EC434250);
  v2 = v1;
  return v1;
}

void sub_1CA17CAB0()
{
  *(v0 + qword_1EC434250) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

void sub_1CA17CB30()
{
  OUTLINED_FUNCTION_0_44();
  OUTLINED_FUNCTION_0_44();
  v17.receiver = v0;
  v17.super_class = type metadata accessor for SwiftUIHostingViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v1 = sub_1CA17CA80();
  if (v1)
  {
    v2 = v1;
    [v0 addChildViewController_];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v4 setFrame_];
      v14 = [v2 view];

      if (v14)
      {
        [v14 setAutoresizingMask_];

        v15 = [v0 view];
        v16 = [v2 view];

        if (v16)
        {
          [v15 addSubview_];

          [v2 didMoveToParentViewController_];
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1CA17CD14(void *a1)
{
  v1 = a1;
  sub_1CA17CB30();
}

void sub_1CA17CDCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_1CA19C118();
  }

  v5 = a4;
  sub_1CA17CD9C();
}

id sub_1CA17CDF4()
{
  OUTLINED_FUNCTION_0_44();
  OUTLINED_FUNCTION_0_44();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIHostingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA17CE90()
{
  result = sub_1CA19C0E8();
  qword_1EE03ADD0 = result;
  return result;
}

id sub_1CA17CECC()
{
  sub_1CA0F2110(0, &qword_1EE03BD48);
  result = sub_1CA166F98();
  qword_1EE03B1C8 = result;
  return result;
}

uint64_t SymbolFactory.__allocating_init(asPartOf:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

UIImage_optional __swiftcall SymbolFactory.symbol(withName:configuration:)(Swift::String withName, UIImageSymbolConfiguration configuration)
{
  v3 = v2;
  object = withName._object;
  countAndFlagsBits = withName._countAndFlagsBits;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v7 = sub_1CA19AFF8();
  __swift_project_value_buffer(v7, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A19C0;
  v26 = type metadata accessor for SymbolFactory();
  v25[0] = v3;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v25);
  sub_1CA19AF18();
  v26 = MEMORY[0x1E69E6158];
  v25[0] = countAndFlagsBits;
  v25[1] = object;

  sub_1CA19AF38();
  sub_1CA0F0440(v25);
  sub_1CA19AF18();
  v26 = sub_1CA0F2110(0, &qword_1EE03ADF8);
  v25[0] = configuration.super.super.isa;
  v10 = configuration.super.super.isa;
  sub_1CA19AF38();
  sub_1CA0F0440(v25);
  sub_1CA19AFC8();

  sub_1CA17D294();
  v12 = v11;
  v13 = OUTLINED_FUNCTION_0_12();
  v16 = sub_1CA17D46C(v13, v14, v15, v12);
  v18 = v17;

  if (qword_1EE03B1C0 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE03B1C8;
  v20 = sub_1CA17D504(v16, v18, v10, qword_1EE03B1C8);

  if (!v20)
  {
    v22 = OUTLINED_FUNCTION_0_12();
    v20 = sub_1CA17D504(v22, v23, v10, v19);
  }

  v24 = v20;
  result.value.super.isa = v24;
  result.is_nil = v21;
  return result;
}

uint64_t sub_1CA17D294()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433EB8);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1CA19BDA8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19B7D8();

  sub_1CA19BE18();

  if (qword_1EE03ADC8 != -1)
  {
    swift_once();
  }

  sub_1CA19BD98();
  sub_1CA19BD88();
  v7 = OUTLINED_FUNCTION_0_12();
  v8(v7);
  (*(v3 + 8))(v6, v1);
  return v10;
}

uint64_t sub_1CA17D46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a4)
  {

    MEMORY[0x1CCA99820](45, 0xE100000000000000);

    v5 = OUTLINED_FUNCTION_0_12();
    MEMORY[0x1CCA99820](v5);

    return a1;
  }

  else
  {
  }

  return v4;
}

id sub_1CA17D504(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1CA0F2110(0, &qword_1EE03C168);
  v8 = a4;
  v9 = a3;

  return sub_1CA17D584(a1, a2, a4, a3);
}

id sub_1CA17D584(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1CA19C0E8();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 withConfiguration:a4];

  return v7;
}

uint64_t SymbolFactory.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1CA17D660(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EE03D340);
  [v5 lock];
  v6 = (v2 + qword_1EE03D348);
  v7 = *(v2 + qword_1EE03D348);
  *v6 = a1;
  v6[1] = a2;
  sub_1CA10FCD4(a1);
  sub_1CA0EBE84(v7);
  [v5 unlock];

  return sub_1CA0EBE84(a1);
}

uint64_t sub_1CA17D704()
{
  v1 = *(v0 + qword_1EE03D340);
  [v1 lock];
  v2 = *(v0 + qword_1EE03D348);
  sub_1CA10FCD4(v2);
  [v1 unlock];
  return v2;
}

uint64_t sub_1CA17D778(uint64_t a1, char a2)
{
  LOBYTE(v6) = a2 & 1;
  result = [v2 isCancelled];
  if ((result & 1) == 0)
  {
    result = sub_1CA17D704();
    if (result)
    {
      v4 = result;
      sub_1CA17D660(0, 0);
      v4(&v5);

      return sub_1CA0EBE84(v4);
    }
  }

  return result;
}

void sub_1CA17D81C()
{
  sub_1CA115CA0();
  v1 = *(v0 + qword_1EC4342D8);
  v2 = *(v0 + qword_1EC4342D8 + 8);

  v3 = sub_1CA17D90C(v1, v2);
  if (v3)
  {
    v7 = v3;
    sub_1CA17D778(v3, 0);
    v4 = v7;
  }

  else
  {
    sub_1CA10BD74();
    v5 = swift_allocError();
    *v6 = xmmword_1CA1A26C0;
    *(v6 + 16) = 3;
    sub_1CA17D778(v5, 1);
    v4 = v5;
  }
}

id sub_1CA17D90C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1CA19C0E8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

void sub_1CA17D97C(void *a1)
{
  v1 = a1;
  sub_1CA17D81C();
}

uint64_t type metadata accessor for SystemImageFetchOperation()
{
  result = qword_1EC4342E0;
  if (!qword_1EC4342E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA17DB0C()
{

  sub_1CA17DBC0();

  return v0;
}

uint64_t sub_1CA17DB74()
{
  sub_1CA17DB0C();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_1CA17DBC0()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v8[3] = v2;
  v8[0] = v0;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v8);
  sub_1CA19AF18();
  sub_1CA19AF68();
  sub_1CA19AFA8();

  v6 = v0[2];
  [v1[2] lock];
  sub_1CA17E20C();
  return [v6 unlock];
}

uint64_t sub_1CA17DE04()
{
  sub_1CA17E68C();
  type metadata accessor for TieredAssetCacheArena.Segment();
  sub_1CA19C378();
  sub_1CA19BF78();
  return v1;
}

uint64_t sub_1CA17DEC8()
{
  v0 = sub_1CA19B2D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CA1A0C20;
  sub_1CA19B2C8();
  v6[1] = v4;
  sub_1CA0F7938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  sub_1CA19C788();
  sub_1CA19C5A8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1CA17E070()
{
  swift_beginAccess();
  type metadata accessor for BinaryMultiMap();
  sub_1CA113A1C();
  return swift_endAccess();
}

uint64_t sub_1CA17E118@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  type metadata accessor for TieredAssetCacheArena.Segment();
  sub_1CA19C378();

  swift_getWitnessTable();
  result = sub_1CA19C388();
  *a1 = result;
  return result;
}

uint64_t sub_1CA17E20C()
{
  swift_beginAccess();
  sub_1CA19C378();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1CA19C498();
  result = swift_endAccess();
  if (v0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA17E324()
{
  v1 = *v0;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v2 = sub_1CA19AFF8();
  __swift_project_value_buffer(v2, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v7[3] = v1;
  v7[0] = v0;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v7);
  sub_1CA19AF18();
  sub_1CA19AF68();
  sub_1CA19AFA8();

  sub_1CA17DE04();
  type metadata accessor for TieredAssetCacheArena.Segment();
  v7[0] = sub_1CA19C2C8();
  while (v7[0] != sub_1CA19C328())
  {
    v6 = sub_1CA19C308();
    sub_1CA19C2E8();
    if (v6)
    {
    }

    else
    {
      sub_1CA19C948();
    }

    sub_1CA19C358();
    sub_1CA17DEC8();
  }
}

uint64_t sub_1CA17E5E8()
{

  sub_1CA17E324();
}

unint64_t sub_1CA17E68C()
{
  result = qword_1EE03C290;
  if (!qword_1EE03C290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C290);
  }

  return result;
}

void sub_1CA17E6EC(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CA19C7D8();
    sub_1CA17EAC8();
    sub_1CA17EB0C();
    sub_1CA19C3D8();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1CA19C848() || (sub_1CA17EAC8(), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_24:
        sub_1CA0F11F8();
        return;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_13:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_17:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_7;
    }

    v15 = [v14 keyWindow];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x1CCA998F0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA19C2F8();
      }

      sub_1CA19C318();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *static UIApplication.isCompact()()
{
  result = static UIApplication.window.getter();
  if (result)
  {
    v1 = result;
    [result frame];
    Width = CGRectGetWidth(v3);

    return (Width < 375.0);
  }

  return result;
}

uint64_t static UIApplication.window.getter()
{
  v0 = [swift_getObjCClassFromMetadata() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_1CA17EAC8();
  sub_1CA17EB0C();
  v2 = sub_1CA19C3B8();

  sub_1CA17E6EC(v2);
  v4 = v3;

  result = sub_1CA0F04EC(v4);
  if (!result)
  {

    return 0;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1CCA99FB0](0, v4);
    goto LABEL_5;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_5:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CA17EAC8()
{
  result = qword_1EE03C160;
  if (!qword_1EE03C160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C160);
  }

  return result;
}

unint64_t sub_1CA17EB0C()
{
  result = qword_1EE03C158;
  if (!qword_1EE03C158)
  {
    sub_1CA17EAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C158);
  }

  return result;
}

void *static UIApplication.hasNotch()()
{
  result = static UIApplication.window.getter();
  if (result)
  {
    v1 = result;
    [result safeAreaInsets];
    v3 = v2;

    return (v3 > 0.0);
  }

  return result;
}

unint64_t sub_1CA17EBB0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1CA17EBD8()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  return !v2 && [v0 verticalSizeClass] == 1;
}

void sub_1CA17EC58(double a1)
{
  v3 = [v1 layer];
  [v3 setCornerRadius_];

  v4 = [v1 layer];
  [v4 setMasksToBounds_];
}

void sub_1CA17ECFC(void (*a1)(), uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a3;
  v15 = sub_1CA17EF24;
  v16 = v9;
  OUTLINED_FUNCTION_0_46();
  v12 = 1107296256;
  v13 = sub_1CA0F4068;
  v14 = &block_descriptor_16;
  v10 = _Block_copy(&v11);

  if (a1)
  {
    v15 = a1;
    v16 = a2;
    OUTLINED_FUNCTION_0_46();
    v12 = 1107296256;
    v13 = sub_1CA17EED0;
    v14 = &block_descriptor_6_0;
    a1 = _Block_copy(&v11);
  }

  [objc_opt_self() animateWithDuration:134 delay:v10 options:a1 animations:a4 completion:0.0];
  _Block_release(a1);
  _Block_release(v10);
}

void sub_1CA17EE64(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setAlpha_];
  }
}

uint64_t sub_1CA17EED0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA17EF6C()
{
  v0 = [swift_getObjCClassFromMetadata() defaultSessionConfiguration];
  [v0 setHTTPShouldUsePipelining_];
  [v0 setTimeoutIntervalForRequest_];
  return v0;
}

void sub_1CA17EFD0()
{
  sub_1CA17F034();
  v0 = sub_1CA17EF6C();
  v1 = [objc_opt_self() sessionWithConfiguration_];

  qword_1EE040BF8 = v1;
}

unint64_t sub_1CA17F034()
{
  result = qword_1EE03BD50;
  if (!qword_1EE03BD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03BD50);
  }

  return result;
}

uint64_t Video.__allocating_init(id:videoUrl:preview:allowsAutoPlay:looping:canPlayFullScreen:playbackControls:autoPlayPlaybackControls:templateMediaEvent:templateClickEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v17 = swift_allocObject();
  Video.init(id:videoUrl:preview:allowsAutoPlay:looping:canPlayFullScreen:playbackControls:autoPlayPlaybackControls:templateMediaEvent:templateClickEvent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10 & 1, a11, a12);
  return v17;
}

uint64_t Video.init(id:videoUrl:preview:allowsAutoPlay:looping:canPlayFullScreen:playbackControls:autoPlayPlaybackControls:templateMediaEvent:templateClickEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  sub_1CA19AE68();
  OUTLINED_FUNCTION_1_0();
  v37 = v21;
  v38 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_3();
  v24 = v23 - v22;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v25 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_videoUrl;
  v26 = sub_1CA19ADF8();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v13 + v25, a3, v26);
  *(v13 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_preview) = a4;
  *(v13 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_allowsAutoPlay) = a5;
  *(v13 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_looping) = a6;
  *(v13 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_canPlayFullScreen) = a7;
  *(v13 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_playbackControls) = a8;
  if (a10)
  {
    a9 = a8;
  }

  *(v13 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_autoPlayPlaybackControls) = a9;
  sub_1CA17F388(a11, v13 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_templateMediaEvent);
  sub_1CA17F388(a12, v13 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_templateClickEvent);

  sub_1CA19AE58();
  v29 = sub_1CA19AE48();
  v31 = v30;

  sub_1CA10BDC8(a12, &unk_1EC434480);
  sub_1CA10BDC8(a11, &unk_1EC434480);
  (*(v27 + 8))(a3, v26);
  (*(v37 + 8))(v24, v38);
  v32 = (v13 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_playbackId);
  *v32 = v29;
  v32[1] = v31;
  return v13;
}

uint64_t sub_1CA17F388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC434480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Video.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Video.init(deserializing:using:)(a1, a2);
  return v4;
}

void *Video.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v113 = a2;
  v105 = a1;
  sub_1CA19AE68();
  OUTLINED_FUNCTION_1_0();
  v100 = v3;
  v101 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_3();
  v99 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC434480);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = v93 - v7;
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v110 = v9;
  v111 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_0();
  v103 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v94 = v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v104 = (v93 - v14);
  v15 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_0_0();
  v97 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v93 - v25;
  v27 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v107 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1_3();
  v106 = v31 - v30;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v32 = sub_1CA19AFF8();
  v108 = __swift_project_value_buffer(v32, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  sub_1CA19AF18();
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_1CA19C8F8();
  MEMORY[0x1CCA99820](0x6C61697265736564, 0xEE0020676E697A69);
  v33 = v105;
  sub_1CA19C998();
  v112[3] = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA10BDC8(v112, &qword_1EC433830);
  sub_1CA19AFC8();

  sub_1CA19B4E8();
  v34 = v104;
  sub_1CA19B458();
  v35 = *(v17 + 8);
  v35(v26, v15);
  v36 = v15;
  v37 = v17 + 8;
  if (__swift_getEnumTagSinglePayload(v34, 1, v27) == 1)
  {
    sub_1CA10BDC8(v34, &qword_1EC433170);
    v38 = sub_1CA19BFA8();
    sub_1CA12C890();
    swift_allocError();
    v39 = v109;
    v40 = *v109;
    *v41 = 0x6C72556F65646976;
    v41[1] = 0xE800000000000000;
    v41[2] = v40;
    (*(*(v38 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v38);
    swift_willThrow();
    (*(v110 + 8))(v113, v111);
    v35(v33, v36);
    type metadata accessor for Video();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v108 = v15;
    v43 = v106;
    v42 = v107;
    (*(v107 + 32))(v106, v34, v27);
    v44 = *(v42 + 16);
    v45 = v109;
    v93[0] = v27;
    v44(v109 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_videoUrl, v43, v27);
    type metadata accessor for Artwork();
    v46 = v93[1];
    sub_1CA19B4E8();
    v47 = v110 + 16;
    v48 = *(v110 + 16);
    v49 = v94;
    v48(v94, v113, v111);
    v50 = v95;
    v51 = Artwork.__allocating_init(deserializing:using:)(v46, v49);
    v102 = v47;
    v104 = v48;
    if (v50)
    {

      v51 = 0;
    }

    v94 = 0;
    *(v45 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_preview) = v51;
    sub_1CA19B4E8();
    sub_1CA19B468();
    v52 = OUTLINED_FUNCTION_5_18();
    v53 = v108;
    v35(v52, v108);
    OUTLINED_FUNCTION_4_20();
    *(v45 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_allowsAutoPlay) = v54 & 1;
    sub_1CA19B4E8();
    sub_1CA19B468();
    v55 = OUTLINED_FUNCTION_5_18();
    v35(v55, v53);
    OUTLINED_FUNCTION_4_20();
    *(v45 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_looping) = v56 & 1;
    sub_1CA19B4E8();
    sub_1CA19B468();
    v57 = OUTLINED_FUNCTION_5_18();
    v35(v57, v53);
    OUTLINED_FUNCTION_4_20();
    *(v45 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_canPlayFullScreen) = v58 & 1;
    v59 = v35;
    v60 = v97;
    OUTLINED_FUNCTION_11_13();
    v61 = sub_1CA19B498();
    v95 = v59;
    v59(v60, v53);
    v96 = v37;
    if (v61)
    {
      v62 = 15;
    }

    else
    {
      OUTLINED_FUNCTION_11_13();
      v63 = v103;
      v104(v103, v113, v111);
      v62 = VideoControls.init(deserializing:using:)(v60, v63);
    }

    v64 = v60;
    v65 = v33;
    v66 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_playbackControls;
    *(v45 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_playbackControls) = v62;
    sub_1CA19B4E8();
    v67 = sub_1CA19B498();
    v68 = v60;
    v69 = v45;
    v95(v68, v108);
    if (v67)
    {
      v70 = *(v45 + v66);
      v71 = v113;
      v72 = v103;
    }

    else
    {
      sub_1CA19B4E8();
      v72 = v103;
      v71 = v113;
      v104(v103, v113, v111);
      v70 = VideoControls.init(deserializing:using:)(v64, v72);
    }

    *(v69 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_autoPlayPlaybackControls) = v70;
    sub_1CA19B5F8();
    sub_1CA19B4E8();
    v73 = v111;
    v104(v72, v71, v111);
    v74 = v69;
    v75 = v64;
    v76 = v65;
    v77 = v72;
    v78 = v98;
    OUTLINED_FUNCTION_10_16();
    sub_1CA19B898();
    sub_1CA180074(v78, v74 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_templateMediaEvent);
    sub_1CA19B4E8();
    v79 = v71;
    v80 = v73;
    v104(v77, v79, v73);
    OUTLINED_FUNCTION_10_16();
    sub_1CA19B898();
    v81 = v74;
    sub_1CA180074(v78, v74 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_templateClickEvent);
    v82 = v99;
    sub_1CA19AE58();
    v83 = sub_1CA19AE48();
    v85 = v84;
    (*(v100 + 8))(v82, v101);
    v86 = (v81 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_playbackId);
    *v86 = v83;
    v86[1] = v85;
    sub_1CA19B4E8();
    v87 = sub_1CA19B4A8();
    v89 = v88;
    (*(v110 + 8))(v113, v80);
    v90 = v108;
    v91 = v95;
    v95(v76, v108);
    v91(v75, v90);
    (*(v107 + 8))(v106, v93[0]);
    v39 = v81;
    v81[2] = v87;
    v81[3] = v89;
  }

  return v39;
}

uint64_t type metadata accessor for Video()
{
  result = qword_1EE03AFE0;
  if (!qword_1EE03AFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA180074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC434480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Video.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Video.videoUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_videoUrl;
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_0_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Video.playbackId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_playbackId);

  return v1;
}

BOOL static Video.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1CA19AD98() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_preview);
  v5 = *(a2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_preview);
  result = (v4 | v5) == 0;
  if (v4)
  {
    if (v5)
    {
      type metadata accessor for Artwork();

      v7 = static Artwork.== infix(_:_:)(v4, v5);

      return v7 & 1;
    }
  }

  return result;
}

uint64_t Video.deinit()
{

  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_videoUrl;
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_0_4();
  (*(v2 + 8))(v0 + v1);

  sub_1CA10BDC8(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_templateMediaEvent, &unk_1EC434480);
  sub_1CA10BDC8(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_templateClickEvent, &unk_1EC434480);
  return v0;
}

uint64_t Video.__deallocating_deinit()
{
  Video.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA1803FC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Video.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1CA180454()
{
  sub_1CA19ADF8();
  if (v0 <= 0x3F)
  {
    sub_1CA180558();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1CA180558()
{
  if (!qword_1EE03AE18[0])
  {
    sub_1CA19B5F8();
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, qword_1EE03AE18);
    }
  }
}

uint64_t OUTLINED_FUNCTION_11_13()
{

  return sub_1CA19B4E8();
}

uint64_t VideoFillMode.contentMode.getter(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id VideoFillMode.videoGravity.getter(char a1)
{
  v1 = MEMORY[0x1E69874F0];
  if ((a1 & 1) == 0)
  {
    v1 = MEMORY[0x1E69874E8];
  }

  return *v1;
}

uint64_t VideoFillMode.hashValue.getter(char a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1 & 1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA1806E0()
{
  v1 = *v0;
  sub_1CA19CBD8();
  VideoFillMode.hash(into:)(v3, v1);
  return sub_1CA19CC18();
}

uint64_t VideoConfiguration.aspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoConfiguration() + 20);

  return sub_1CA1807E8(v3, a1);
}

uint64_t type metadata accessor for VideoConfiguration()
{
  result = qword_1EC434310;
  if (!qword_1EC434310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA1807E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4342F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VideoConfiguration.aspectRatio.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_28() + 20);

  return sub_1CA180894(v0, v2);
}

uint64_t sub_1CA180894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4342F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VideoConfiguration.playbackControls.setter()
{
  result = OUTLINED_FUNCTION_2_28();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t VideoConfiguration.autoPlayPlaybackControls.setter()
{
  result = OUTLINED_FUNCTION_2_28();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t VideoConfiguration.canPlayFullScreen.setter()
{
  result = OUTLINED_FUNCTION_2_28();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t VideoConfiguration.allowsAutoPlay.setter()
{
  result = OUTLINED_FUNCTION_2_28();
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t VideoConfiguration.looping.setter()
{
  result = OUTLINED_FUNCTION_2_28();
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t VideoConfiguration.roundedCorners.setter()
{
  result = OUTLINED_FUNCTION_2_28();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t VideoConfiguration.deviceCornerRadiusFactor.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for VideoConfiguration();
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, _BYTE *a9@<X8>, uint64_t a10, char a11)
{
  v17 = type metadata accessor for VideoConfiguration();
  v18 = v17[5];
  v19 = sub_1CA19B078();
  __swift_storeEnumTagSinglePayload(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[12]];
  *a9 = a1 & 1;
  result = sub_1CA180894(a2, &a9[v18]);
  *&a9[v17[6]] = a3;
  *&a9[v17[7]] = a4;
  a9[v17[8]] = a5;
  a9[v17[9]] = a6;
  a9[v17[10]] = a7;
  a9[v17[11]] = a8;
  *v20 = a10;
  v20[8] = a11 & 1;
  return result;
}

uint64_t static VideoConfiguration.defaultConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4342F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1CA19B078();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = type metadata accessor for VideoConfiguration();
  v7 = v6[5];
  __swift_storeEnumTagSinglePayload(&a1[v7], 1, 1, v5);
  v8 = &a1[v6[12]];
  *a1 = 1;
  result = sub_1CA180894(v4, &a1[v7]);
  *&a1[v6[6]] = 15;
  *&a1[v6[7]] = 15;
  a1[v6[8]] = 0;
  a1[v6[9]] = 1;
  a1[v6[10]] = 1;
  a1[v6[11]] = 0;
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t static VideoConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1CA19B078();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4342F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4342F8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = type metadata accessor for VideoConfiguration();
  v15 = v14[5];
  v16 = *(v11 + 48);
  sub_1CA1807E8(&a1[v15], v13);
  sub_1CA1807E8(&a2[v15], &v13[v16]);
  OUTLINED_FUNCTION_4_21(v13);
  if (v17)
  {
    OUTLINED_FUNCTION_4_21(&v13[v16]);
    if (v17)
    {
      sub_1CA0F54A0(v13, &qword_1EC4342F0);
      goto LABEL_12;
    }

LABEL_10:
    sub_1CA0F54A0(v13, &qword_1EC4342F8);
    return 0;
  }

  sub_1CA1807E8(v13, v10);
  OUTLINED_FUNCTION_4_21(&v13[v16]);
  if (v17)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_10;
  }

  (*(v5 + 32))(v7, &v13[v16], v4);
  sub_1CA181268();
  v18 = sub_1CA19C0D8();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1CA0F54A0(v13, &qword_1EC4342F0);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (*&a1[v14[6]] != *&a2[v14[6]])
  {
    return 0;
  }

  if (*&a1[v14[7]] != *&a2[v14[7]])
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_47();
  if (!v17)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_47();
  if (!v17)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_47();
  if (!v17)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_47();
  if (!v17)
  {
    return 0;
  }

  v21 = v14[12];
  v22 = &a1[v21];
  v23 = a1[v21 + 8];
  v24 = &a2[v21];
  result = v24[8];
  if ((v23 & 1) == 0)
  {
    return (*v22 == *v24) & ~result;
  }

  return result;
}

unint64_t sub_1CA181268()
{
  result = qword_1EC434300;
  if (!qword_1EC434300)
  {
    sub_1CA19B078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434300);
  }

  return result;
}

unint64_t sub_1CA1812C4()
{
  result = qword_1EC434308;
  if (!qword_1EC434308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434308);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoFillMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1CA181420()
{
  sub_1CA1814D8();
  if (v0 <= 0x3F)
  {
    sub_1CA181530();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CA1814D8()
{
  if (!qword_1EC434320)
  {
    sub_1CA19B078();
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC434320);
    }
  }
}

void sub_1CA181530()
{
  if (!qword_1EC434328)
  {
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC434328);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_28()
{

  return type metadata accessor for VideoConfiguration();
}

uint64_t VideoControls.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v38 = a2;
  v4 = sub_1CA19B4D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v36 = &v35 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  sub_1CA19B4E8();
  v18 = sub_1CA19B468();
  v19 = *(v5 + 8);
  v19(v17, v4);
  sub_1CA19B4E8();
  sub_1CA19B468();
  v20 = OUTLINED_FUNCTION_0_48();
  (v19)(v20);
  v21 = v18 & 1 | 2;
  if ((v15 & 1) == 0)
  {
    v21 = v18 & 1;
  }

  if (v2 == 2)
  {
    v22 = v18 & 1;
  }

  else
  {
    v22 = v21;
  }

  v23 = a1;
  sub_1CA19B4E8();
  v24 = sub_1CA19B468();
  v19(v12, v4);
  v25 = v22 | 4;
  if ((v24 & 1) == 0)
  {
    v25 = v22;
  }

  if (v24 != 2)
  {
    v22 = v25;
  }

  v26 = v36;
  sub_1CA19B4E8();
  v27 = sub_1CA19B468();
  v19(v26, v4);
  v28 = v22 | 8;
  if ((v27 & 1) == 0)
  {
    v28 = v22;
  }

  if (v27 == 2)
  {
    v29 = v22;
  }

  else
  {
    v29 = v28;
  }

  v30 = v37;
  sub_1CA19B4E8();
  sub_1CA19B468();
  v31 = OUTLINED_FUNCTION_0_48();
  (v19)(v31);
  if (v22 == 2 || (v30 & 1) == 0)
  {
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_4_6();
    (*(v33 + 8))(v38);
    v19(v23, v4);
  }

  else
  {
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_4_6();
    (*(v32 + 8))(v38);
    v19(v23, v4);
    return v29 | 0x10;
  }

  return v29;
}

uint64_t sub_1CA181A1C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = VideoControls.init(deserializing:using:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA181A4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA172EA4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA181A7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA172EE8(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_1CA181AB0()
{
  result = qword_1EC434330;
  if (!qword_1EC434330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434330);
  }

  return result;
}

unint64_t sub_1CA181B08()
{
  result = qword_1EC434338;
  if (!qword_1EC434338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434338);
  }

  return result;
}

unint64_t sub_1CA181B60()
{
  result = qword_1EC434340;
  if (!qword_1EC434340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434340);
  }

  return result;
}

unint64_t sub_1CA181BB8()
{
  result = qword_1EC434348;
  if (!qword_1EC434348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434348);
  }

  return result;
}

uint64_t sub_1CA181C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1CA184158(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA181C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1CA184158(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1CA19ADF8();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_1CA19ADF8();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

double sub_1CA181D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_13_9();
  }

  v3 = sub_1CA184158(a1, a2);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_13_9();
  }

  v5 = OUTLINED_FUNCTION_10_17(v3);

  sub_1CA0F1200(v5, v6);
  return result;
}

uint64_t sub_1CA181D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1CA184158(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_5();
  return v3;
}

uint64_t sub_1CA181DE0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1CA1842C0();
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

double sub_1CA181E38(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_13_9();
  }

  v2 = sub_1CA184118();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_13_9();
  }

  v4 = OUTLINED_FUNCTION_10_17(v2);

  sub_1CA0F1200(v4, v5);
  return result;
}

double sub_1CA181E90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1CA184158(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_1CA0F2ACC(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    return OUTLINED_FUNCTION_13_9();
  }

  return result;
}

uint64_t sub_1CA181EF8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1CA184320();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_5();
  return v2;
}

uint64_t sub_1CA181F40(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1CA1841D0();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1CA181F90(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_13_9();
  }

  sub_1CA184320();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_13_9();
  }

  v4 = OUTLINED_FUNCTION_10_17(v2);

  sub_1CA0F1200(v4, v5);
  return result;
}

double sub_1CA181FE8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1CA0F1200(a1 + 32 * v2, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1CA182020(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

char *sub_1CA182054(unint64_t a1, void (*a2)(char *, BOOL, unint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return MEMORY[0x1CCA99FB0](v5, a1);
  }

  result = sub_1CA19C818();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1CA1820F0()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_playerObserversAdded;
  if ((*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_playerObserversAdded) & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_21_5();
    v3 = OUTLINED_FUNCTION_4_22();
    [v3 v4];

    *(v0 + v1) = 1;
  }
}

void sub_1CA18215C()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_playerObserversAdded;
  if (*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_playerObserversAdded) == 1)
  {
    v2 = OUTLINED_FUNCTION_21_5();
    v3 = OUTLINED_FUNCTION_4_22();
    [v3 v4];

    *(v0 + v1) = 0;
  }
}

void sub_1CA1821BC()
{
  OUTLINED_FUNCTION_19_0();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_playerItemObserversAdded;
    if ((*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_playerItemObserversAdded) & 1) == 0)
    {
      v4 = v2;
      v5 = OUTLINED_FUNCTION_17_9();
      v6 = OUTLINED_FUNCTION_4_22();
      [v6 v7];

      v8 = sub_1CA19C0E8();
      v9 = OUTLINED_FUNCTION_4_22();
      [v9 v10];

      v11 = objc_opt_self();
      v12 = [v11 defaultCenter];
      v13 = sub_1CA19C0E8();
      v14 = OUTLINED_FUNCTION_3_25();
      [v14 v15];

      v16 = [v11 defaultCenter];
      v17 = sub_1CA19C0E8();
      v18 = OUTLINED_FUNCTION_3_25();
      [v18 v19];

      v20 = [v11 defaultCenter];
      v21 = sub_1CA19C0E8();
      v22 = OUTLINED_FUNCTION_3_25();
      [v22 v23];

      v24 = [v11 defaultCenter];
      v25 = sub_1CA19C0E8();
      [v24 addObserver:v1 selector:sel_playbackErrorOccurredWithNotification_ name:v25 object:v0];

      *(v1 + v3) = 1;
    }
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA1823EC()
{
  OUTLINED_FUNCTION_19_0();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_playerItemObserversAdded;
    if (*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_playerItemObserversAdded) == 1)
    {
      v4 = v2;
      v5 = OUTLINED_FUNCTION_17_9();
      v6 = OUTLINED_FUNCTION_4_22();
      [v6 v7];

      v8 = sub_1CA19C0E8();
      v9 = OUTLINED_FUNCTION_4_22();
      [v9 v10];

      v11 = objc_opt_self();
      v12 = [v11 defaultCenter];
      v13 = sub_1CA19C0E8();
      v14 = OUTLINED_FUNCTION_3_25();
      [v14 v15];

      v16 = [v11 defaultCenter];
      v17 = sub_1CA19C0E8();
      v18 = OUTLINED_FUNCTION_3_25();
      [v18 v19];

      v20 = [v11 defaultCenter];
      v21 = sub_1CA19C0E8();
      v22 = OUTLINED_FUNCTION_3_25();
      [v22 v23];

      v24 = [v11 defaultCenter];
      v25 = sub_1CA19C0E8();
      [v24 removeObserver:v1 name:v25 object:v0];

      *(v1 + v3) = 0;
    }
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA1825EC(void *a1, void *a2)
{
  v4 = v2;
  v6 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_3();
  v10 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  v16 = v15 - v14;
  v17 = sub_1CA19C0E8();
  v18 = [a1 statusOfValueForKey:v17 error:0];

  if (v18 == 2)
  {
    [a1 duration];
    Seconds = CMTimeGetSeconds(&time);
    if (Seconds >= 5.0)
    {
      v20 = Seconds + -5.0;
    }

    else
    {
      v20 = Seconds;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1CA1A0C40;
    v22 = sub_1CA19C668();
    v24 = v23;
    v42 = v8;
    v43 = v12;
    v26 = v25;
    v27 = HIDWORD(v23);
    v44 = v10;
    v28 = objc_opt_self();
    time.value = v22;
    time.timescale = v24;
    time.flags = v27;
    time.epoch = v26;
    *(v21 + 32) = [v28 valueWithCMTime_];
    sub_1CA0F2110(0, &qword_1EC434390);
    OUTLINED_FUNCTION_20_6();
    v29 = sub_1CA19C2A8();

    sub_1CA0F2110(0, &qword_1EE03C230);
    v30 = sub_1CA19C598();
    OUTLINED_FUNCTION_14_2();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = Seconds;
    *(v32 + 32) = v20;
    v49 = sub_1CA184D08;
    v50 = v32;
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 1107296256;
    time.epoch = sub_1CA0F4068;
    v48 = &block_descriptor_30;
    v33 = _Block_copy(&time);

    v34 = [a2 addBoundaryTimeObserverForTimes:v29 queue:v30 usingBlock:v33];
    _Block_release(v33);

    sub_1CA19C768();
    swift_unknownObjectRelease();
    v35 = sub_1CA19C598();
    sub_1CA0F1200(v51, v46);
    v36 = swift_allocObject();
    *(v36 + 16) = v4;
    sub_1CA0F11E8(v46, (v36 + 24));
    v49 = sub_1CA184D14;
    v50 = v36;
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 1107296256;
    time.epoch = sub_1CA0F4068;
    v48 = &block_descriptor_36;
    v37 = _Block_copy(&time);
    v38 = v4;

    sub_1CA19B2F8();
    time.value = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_0_49();
    sub_1CA184D90(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA0F40C4();
    OUTLINED_FUNCTION_7_18();
    sub_1CA19C788();
    v41 = OUTLINED_FUNCTION_13_1();
    MEMORY[0x1CCA99C20](v41);
    _Block_release(v37);

    (*(v42 + 8))(v3, v6);
    (*(v43 + 8))(v16, v44);
    __swift_destroy_boxed_opaque_existential_2(v51);
  }
}

void sub_1CA182AC4(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      v7 = a1 - a2;
      v8 = 0u;
      v9 = 0u;
      v10 = 0;
      v11 = 3;
      sub_1CA188B20(&v7);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1CA182B68(uint64_t a1, uint64_t a2)
{
  sub_1CA0F1200(a2, v5);
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_timeBoundaryObserver;
  swift_beginAccess();
  sub_1CA184D20(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t sub_1CA182BD0(void *a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_timeBoundaryObserver;
  swift_beginAccess();
  sub_1CA132AF0(v1 + v3, &v5);
  if (!*(&v6 + 1))
  {
    return sub_1CA0F0440(&v5);
  }

  sub_1CA0F11E8(&v5, &v7);
  __swift_project_boxed_opaque_existential_2(&v7, v8);
  [a1 removeTimeObserver_];
  swift_unknownObjectRelease();
  v5 = 0u;
  v6 = 0u;
  swift_beginAccess();
  sub_1CA184D20(&v5, v1 + v3);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_2(&v7);
}

void sub_1CA182CB8()
{
  OUTLINED_FUNCTION_19_0();
  v6 = v4;
  v7 = v3;
  v8 = v2;
  if (v5 != &unk_1EC434350)
  {
    v12 = v5;
    if (v2)
    {
      v8 = sub_1CA19C0E8();
    }

    sub_1CA132AF0(v7, v25);
    v13 = v26;
    if (v26)
    {
      v14 = __swift_project_boxed_opaque_existential_2(v25, v26);
      v15 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v14);
      OUTLINED_FUNCTION_1_3();
      v18 = v17 - v16;
      (*(v15 + 16))(v17 - v16);
      v19 = sub_1CA19CAE8();
      (*(v15 + 8))(v18, v13);
      __swift_destroy_boxed_opaque_existential_2(v25);
      if (!v6)
      {
LABEL_12:
        v20 = type metadata accessor for VideoObserver();
        v24.receiver = v0;
        v24.super_class = v20;
        objc_msgSendSuper2(&v24, sel_observeValueForKeyPath_ofObject_change_context_, v8, v19, v6, v12);

        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    else
    {
      v19 = 0;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1CA184D90(&qword_1EC433070, type metadata accessor for NSKeyValueChangeKey);
    v6 = sub_1CA19C008();
    goto LABEL_12;
  }

  if (v2 && v4)
  {
    sub_1CA132AF0(v3, v25);
    if (v26)
    {
      sub_1CA0F2110(0, &qword_1EC434378);
      if (OUTLINED_FUNCTION_22_4())
      {
        v9 = OUTLINED_FUNCTION_18_7();
        sub_1CA1830A8(v9, v10, v11, v1);
LABEL_20:

        goto LABEL_13;
      }
    }

    else
    {
      sub_1CA0F0440(v25);
    }

    sub_1CA132AF0(v7, v25);
    if (!v26)
    {
      sub_1CA0F0440(v25);
      goto LABEL_13;
    }

    sub_1CA0F2110(0, &qword_1EC434398);
    if (OUTLINED_FUNCTION_22_4())
    {
      v21 = OUTLINED_FUNCTION_18_7();
      sub_1CA1833B4(v21, v22, v23);
      goto LABEL_20;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA1830A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a2 == 0x737574617473 && a3 == 0xE600000000000000;
  v9 = v8;
  v10 = MEMORY[0x1E696A4F0];
  if (!v8 && (OUTLINED_FUNCTION_14_10() & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = *v10;
  sub_1CA181F90(*v10, a1);
  if (v19[3])
  {
    if ((OUTLINED_FUNCTION_8_15() & 1) != 0 && v18 == 1)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v12 = [a4 error];
      if (v12)
      {
        v19[0] = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480);
        sub_1CA0F2110(0, &qword_1EC434388);
        v13 = OUTLINED_FUNCTION_16_9() != 0;
      }

      else
      {
        v13 = 0;
      }

      v17 = 1;
LABEL_44:
      v19[0] = v17;
      v19[1] = v13;
      memset(&v19[2], 0, 32);
      v20 = 0;
      sub_1CA188B20(v19);
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    sub_1CA0F0440(v19);
  }

  if ((v9 & 1) == 0)
  {
LABEL_17:
    if ((OUTLINED_FUNCTION_14_10() & 1) == 0)
    {
      goto LABEL_28;
    }

    v11 = *v10;
  }

  sub_1CA181F90(v11, a1);
  if (v19[3])
  {
    if ((OUTLINED_FUNCTION_8_15() & 1) != 0 && v18 == 2)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v14 = [a4 error];
      if (v14)
      {
        v19[0] = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480);
        sub_1CA0F2110(0, &qword_1EC434388);
        if (OUTLINED_FUNCTION_16_9())
        {
          v13 = 2;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v17 = 2;
      goto LABEL_44;
    }
  }

  else
  {
    sub_1CA0F0440(v19);
  }

LABEL_28:
  v15 = a2 == 0xD000000000000016 && 0x80000001CA1AEF30 == a3;
  if (v15 || (sub_1CA19CAF8()) && swift_unknownObjectWeakLoadStrong())
  {
    sub_1CA181F90(*v10, a1);
    if (v19[3])
    {
      if (OUTLINED_FUNCTION_8_15())
      {
        v16 = v18;
LABEL_39:
        v19[0] = v16;
        memset(&v19[1], 0, 40);
        v20 = 1;
        sub_1CA188B20(v19);
        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_1CA0F0440(v19);
    }

    v16 = 0;
    goto LABEL_39;
  }
}

void sub_1CA1833B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 == 1702125938 && a3 == 0xE400000000000000;
  if (v4 || (sub_1CA19CAF8() & 1) != 0)
  {
    if (*(a1 + 16))
    {
      sub_1CA184320();
      if (v6)
      {
        sub_1CA0F1200(*(a1 + 56) + 32 * v5, &v8);
        if (swift_dynamicCast())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v8 = v7;
            v9 = 0u;
            v10 = 0u;
            v11 = 0;
            v12 = 4;
            sub_1CA188B20(&v8);
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

void sub_1CA1834D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = 1;
      v4 = 0u;
      v5 = 0u;
      v6 = 0;
      v7 = 5;
      sub_1CA188B20(&v3);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1CA1835D4()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v22 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_3();
  v14 = v13 - v12;
  sub_1CA0F2110(0, &qword_1EE03C230);
  v15 = sub_1CA19C598();
  OUTLINED_FUNCTION_14_2();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23[4] = v4;
  v23[5] = v16;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1(COERCE_DOUBLE(1107296256));
  v23[2] = v17;
  v23[3] = v2;
  v18 = _Block_copy(v23);

  sub_1CA19B2F8();
  v23[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_49();
  sub_1CA184D90(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  OUTLINED_FUNCTION_7_18();
  sub_1CA19C788();
  v21 = OUTLINED_FUNCTION_13_1();
  MEMORY[0x1CCA99C20](v21);
  _Block_release(v18);

  (*(v7 + 8))(v0, v5);
  (*(v10 + 8))(v14, v22);
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA1837F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      memset(v3, 0, sizeof(v3));
      v4 = 5;
      sub_1CA188B20(v3);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1CA1838CC()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v3 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  v7 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  v13 = v12 - v11;
  sub_1CA0F2110(0, &qword_1EE03C230);
  v14 = sub_1CA19C598();
  OUTLINED_FUNCTION_14_2();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v15;
  v23[4] = sub_1CA1840F8;
  v23[5] = v16;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1(COERCE_DOUBLE(1107296256));
  v23[2] = v17;
  v23[3] = &block_descriptor_17;
  v18 = _Block_copy(v23);
  v19 = v2;

  sub_1CA19B2F8();
  v23[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_49();
  sub_1CA184D90(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  OUTLINED_FUNCTION_7_18();
  sub_1CA19C788();
  v22 = OUTLINED_FUNCTION_13_1();
  MEMORY[0x1CCA99C20](v22);
  _Block_release(v18);

  (*(v5 + 8))(v0, v3);
  (*(v9 + 8))(v13, v7);
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA183B24(void *a1)
{
  v2 = [a1 name];
  v3 = sub_1CA19C0E8();
  v4 = sub_1CA19C118();
  v6 = v5;
  v7 = sub_1CA19C118();
  v9 = v8;

  if (v4 == v7 && v6 == v9)
  {

    goto LABEL_13;
  }

  v11 = sub_1CA19CAF8();

  if (v11)
  {
LABEL_13:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = swift_unknownObjectWeakLoadStrong();

      if (v24)
      {
        *v42 = 2;
        memset(&v42[8], 0, 32);
        v43 = 0;
        v44 = 5;
        sub_1CA188B20(v42);
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  v12 = [a1 name];
  v13 = sub_1CA19C0E8();
  v14 = sub_1CA19C118();
  v16 = v15;
  v17 = sub_1CA19C118();
  v19 = v18;

  if (v14 == v17 && v16 == v19)
  {
  }

  else
  {
    v21 = sub_1CA19CAF8();

    if ((v21 & 1) == 0)
    {
      return;
    }
  }

  if ([a1 object])
  {
    sub_1CA19C768();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  *v42 = v40;
  *&v42[16] = v41;
  if (*(&v41 + 1))
  {
    sub_1CA0F2110(0, &qword_1EC434378);
    if (swift_dynamicCast())
    {
      v25 = [v39 errorLog];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 events];

        sub_1CA0F2110(0, &qword_1EC434380);
        v28 = sub_1CA19C2B8();

        v29 = sub_1CA182054(v28, sub_1CA17EBD4);

        if (v29)
        {
          swift_beginAccess();
          v30 = swift_unknownObjectWeakLoadStrong();
          if (v30)
          {
            v31 = v30;
            v32 = swift_unknownObjectWeakLoadStrong();

            if (v32)
            {
              v33 = [v29 errorStatusCode];
              v34 = [v29 errorDomain];
              v35 = sub_1CA19C118();
              v37 = v36;

              *v42 = v33;
              *&v42[16] = v35;
              *&v42[24] = v37;
              *&v42[32] = sub_1CA184C94(v29);
              v43 = v38;
              v44 = 2;
              sub_1CA188B20(v42);

              swift_unknownObjectRelease();

              return;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1CA0F0440(v42);
  }
}

id sub_1CA183FB4()
{
  *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_playerItemObserversAdded] = 0;
  v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_playerObserversAdded] = 0;
  type metadata accessor for VideoObserver();
  v1 = OUTLINED_FUNCTION_13_9();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init, v1);
}

id sub_1CA184054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CA184118()
{
  sub_1CA19C878();
  v0 = OUTLINED_FUNCTION_20_6();

  return sub_1CA1843B0(v0, v1);
}

unint64_t sub_1CA184158(uint64_t a1, uint64_t a2)
{
  sub_1CA19CBD8();
  sub_1CA19C198();
  v4 = sub_1CA19CC18();

  return sub_1CA184474(a1, a2, v4);
}

unint64_t sub_1CA1841D0()
{
  sub_1CA19B778();
  sub_1CA184D90(&qword_1EE03C338, MEMORY[0x1E69AB090]);
  sub_1CA19C068();
  v0 = OUTLINED_FUNCTION_20_6();

  return sub_1CA184528(v0, v1);
}

unint64_t sub_1CA184264()
{
  OUTLINED_FUNCTION_23_6();
  ArtworkRequest.hash(into:)(v3);
  v1 = sub_1CA19CC18();

  return sub_1CA1846E4(v0, v1);
}

unint64_t sub_1CA1842C0()
{
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x1CCA9A240](v0);
  v1 = sub_1CA19CC18();

  return sub_1CA184B4C(v0, v1);
}

void sub_1CA184320()
{
  sub_1CA19C118();
  sub_1CA19CBD8();
  sub_1CA19C198();
  sub_1CA19CC18();

  sub_1CA184BAC();
}

unint64_t sub_1CA1843B0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1CA10BCDC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1CCA99EE0](v8, a1);
    sub_1CA103038(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1CA184474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1CA19CAF8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1CA184528(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1CA19B778();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1CA184D90(&qword_1EE03C330, MEMORY[0x1E69AB090]);
    v9 = sub_1CA19C0D8();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1CA1846E4(double *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    v8 = *(a1 + 1);
    while (1)
    {
      memcpy(__dst, (*(v2 + 48) + 88 * v4), 0x58uLL);
      v9 = __dst[0] == *&v7 && __dst[1] == v8;
      if (!v9 && (sub_1CA19CAF8() & 1) == 0 || *&__dst[2] != a1[2] || *&__dst[3] != a1[3])
      {
        goto LABEL_47;
      }

      v10 = 0xEB00000000646569;
      v11 = 0x6669636570736E75;
      switch(LOBYTE(__dst[4]))
      {
        case 1:
          v11 = 0x526465646E756F72;
          v10 = 0xEB00000000746365;
          break;
        case 2:
          v10 = 0xE500000000000000;
          v11 = 0x646E756F72;
          break;
        case 3:
          v10 = 0xE400000000000000;
          v11 = 1819044208;
          break;
        case 4:
          v10 = 0xE300000000000000;
          v11 = 7364969;
          break;
        case 5:
          v10 = 0xE600000000000000;
          v11 = 0x746365527674;
          break;
        case 6:
          v11 = 0x656E726F64616E75;
          v10 = 0xE900000000000064;
          break;
        default:
          break;
      }

      v12 = 0x6669636570736E75;
      v13 = 0xEB00000000646569;
      switch(*(a1 + 32))
      {
        case 1:
          v12 = 0x526465646E756F72;
          v13 = 0xEB00000000746365;
          break;
        case 2:
          v13 = 0xE500000000000000;
          v12 = 0x646E756F72;
          break;
        case 3:
          v13 = 0xE400000000000000;
          v12 = 1819044208;
          break;
        case 4:
          v13 = 0xE300000000000000;
          v12 = 7364969;
          break;
        case 5:
          v13 = 0xE600000000000000;
          v12 = 0x746365527674;
          break;
        case 6:
          v12 = 0x656E726F64616E75;
          v13 = 0xE900000000000064;
          break;
        default:
          break;
      }

      if (v11 == v12 && v10 == v13)
      {
        sub_1CA10308C(__dst, v26);
      }

      else
      {
        v15 = sub_1CA19CAF8();
        sub_1CA10308C(__dst, v26);

        if ((v15 & 1) == 0)
        {
          break;
        }
      }

      v16 = __dst[5] == *(a1 + 5) && __dst[6] == *(a1 + 6);
      if (!v16 && (sub_1CA19CAF8() & 1) == 0)
      {
        break;
      }

      v17 = *(a1 + 8);
      if (__dst[8])
      {
        if (!v17)
        {
          break;
        }

        v18 = __dst[7] == *(a1 + 7) && __dst[8] == v17;
        if (!v18 && (sub_1CA19CAF8() & 1) == 0)
        {
          break;
        }
      }

      else if (v17)
      {
        break;
      }

      v19 = 0xE300000000000000;
      v20 = 6778480;
      switch(LOBYTE(__dst[9]))
      {
        case 1:
          v19 = 0xE400000000000000;
          v20 = 1734701162;
          break;
        case 2:
          v19 = 0xE400000000000000;
          v20 = 1667851624;
          break;
        case 3:
          v20 = 7496556;
          break;
        default:
          break;
      }

      v21 = 0xE300000000000000;
      v22 = 6778480;
      switch(*(a1 + 72))
      {
        case 1:
          v21 = 0xE400000000000000;
          v22 = 1734701162;
          break;
        case 2:
          v21 = 0xE400000000000000;
          v22 = 1667851624;
          break;
        case 3:
          v22 = 7496556;
          break;
        default:
          break;
      }

      if (v20 == v22 && v19 == v21)
      {

        sub_1CA1030E8(__dst);
      }

      else
      {
        v24 = sub_1CA19CAF8();

        sub_1CA1030E8(__dst);
        if ((v24 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      if (__dst[10] == *(a1 + 10))
      {
        return v4;
      }

LABEL_47:
      v4 = (v4 + 1) & v6;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    sub_1CA1030E8(__dst);
    goto LABEL_47;
  }

  return v4;
}

unint64_t sub_1CA184B4C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1CA184BAC()
{
  OUTLINED_FUNCTION_19_0();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = sub_1CA19C118();
    v6 = v5;
    if (v4 == sub_1CA19C118() && v6 == v7)
    {

      break;
    }

    v9 = sub_1CA19CAF8();

    if (v9)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA184C94(void *a1)
{
  v1 = [a1 errorComment];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA19C118();

  return v3;
}

uint64_t sub_1CA184D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA184D90(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_6();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27AppleMediaServicesUIDynamic13VideoObserverC6ChangeO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CA184E0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 49))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 5)
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

uint64_t sub_1CA184E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA184EA0(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_13_9()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_1CA19CAF8();
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return sub_1CA19B318();
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return sub_1CA19C0E8();
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return sub_1CA19C0E8();
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_23_6()
{

  return sub_1CA19CBD8();
}

uint64_t OUTLINED_FUNCTION_24_5()
{
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoPlaybackChecks(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoPlaybackChecks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

Float64 CMTime.seconds.getter(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3)
{
  time.value = a1;
  *&time.timescale = a2;
  time.epoch = a3;
  return CMTimeGetSeconds(&time);
}

uint64_t sub_1CA185218()
{
  result = sub_1CA19C118();
  qword_1EC4343A0 = result;
  *algn_1EC4343A8 = v1;
  return result;
}

uint64_t sub_1CA185248()
{
  v0 = sub_1CA19BF28();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CA19BF48();
  __swift_allocate_value_buffer(v1, qword_1EC43C8E8);
  __swift_project_value_buffer(v1, qword_1EC43C8E8);
  sub_1CA19BF18();
  return sub_1CA19BF38();
}

uint64_t sub_1CA185328(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_1CA19B2D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CA19B318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state;
  result = swift_beginAccess();
  v14 = v2[v12];
  if (v14 != a1)
  {
    sub_1CA0F2110(0, &qword_1EE03C230);
    v15 = sub_1CA19C598();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v14;
    aBlock[4] = sub_1CA189FCC;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0F4068;
    aBlock[3] = &block_descriptor_60;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    sub_1CA19B2F8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CA189DE8(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA0F40C4();
    sub_1CA19C788();
    MEMORY[0x1CCA99C20](0, v11, v7, v17);
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1CA18561C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a2, a1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t VideoPlayer.state.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state;
  OUTLINED_FUNCTION_1_5();
  return *(v0 + v1);
}

uint64_t sub_1CA1856EC(char a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state;
  OUTLINED_FUNCTION_13();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_1CA185328(v4);
}

uint64_t VideoPlayer.videoUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoUrl;
  OUTLINED_FUNCTION_4_5();
  return sub_1CA10BC7C(v1 + v3, a1, &qword_1EC433170);
}

uint64_t VideoPlayer.videoUrl.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoUrl;
  OUTLINED_FUNCTION_14_5();
  sub_1CA1538CC(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1CA18583C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CA1859B8(v1);
}

id sub_1CA18586C()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem;
  swift_beginAccess();
  v2 = *&v0[v1];
  sub_1CA1823EC();

  [v0 replaceCurrentItemWithPlayerItem_];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoPlayer(0);
  return objc_msgSendSuper2(&v4, sel_pause);
}

void sub_1CA18590C()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  sub_1CA1821BC();
}

void *VideoPlayer.playerItem.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem;
  OUTLINED_FUNCTION_1_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1CA1859B8(void *a1)
{
  sub_1CA18586C();
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem;
  OUTLINED_FUNCTION_13();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1CA18590C();
}

id sub_1CA185A14()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem;
  OUTLINED_FUNCTION_1_5();
  result = *(v0 + v1);
  if (result)
  {
    return [result asset];
  }

  return result;
}

uint64_t sub_1CA185A60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_1CA19BF48();
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4343F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for VideoPlaybackFailure(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_failure;
  swift_beginAccess();
  sub_1CA10BC7C(v1 + v14, v10, &qword_1EC4343F0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    return sub_1CA10BDC8(v10, &qword_1EC4343F0);
  }

  sub_1CA189EA0(v10, v13);
  if (qword_1EC432C88 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EC43C8E8);
  v17 = v28;
  (*(v28 + 16))(v7, v16, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434440);
  sub_1CA19B538();
  *(swift_allocObject() + 16) = xmmword_1CA1A1A40;
  sub_1CA19B4F8();
  *(&v30 + 1) = v11;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v29);
  sub_1CA189F04(v13, boxed_opaque_existential_2Tm);
  sub_1CA19B518();
  sub_1CA10BDC8(&v29, &qword_1EC433830);
  sub_1CA19B4F8();
  v19 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoUrl;
  swift_beginAccess();
  sub_1CA10BC7C(v1 + v19, v4, &qword_1EC433170);
  v20 = sub_1CA19ADF8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v20) == 1)
  {
    sub_1CA10BDC8(v4, &qword_1EC433170);
    v29 = 0u;
    v30 = 0u;
  }

  else
  {
    *(&v30 + 1) = v20;
    v21 = __swift_allocate_boxed_opaque_existential_2Tm(&v29);
    (*(*(v20 - 8) + 32))(v21, v4, v20);
  }

  sub_1CA19B508();
  sub_1CA10BDC8(&v29, &qword_1EC433830);
  sub_1CA19BDC8();

  (*(v17 + 8))(v7, v5);
  v22 = v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 56))(v13, ObjectType, v23);
    result = swift_unknownObjectRelease();
  }

  v25 = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_failureCount);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_failureCount) = v27;
    sub_1CA186000();
    return sub_1CA189F68(v13);
  }

  return result;
}

uint64_t sub_1CA185F8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_failure;
  OUTLINED_FUNCTION_14_5();
  sub_1CA189E30(a1, v1 + v3);
  swift_endAccess();
  sub_1CA185A60();
  return sub_1CA10BDC8(a1, &qword_1EC4343F0);
}

void sub_1CA186000()
{
  if ((*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_failureCount) - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    VideoPlayer.releaseAssets()();

    VideoPlayer.startPreloading()();
  }
}

uint64_t sub_1CA186048()
{
  v1 = v0;
  v2 = sub_1CA19B2D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1CA19B318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks) == 1 && *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks + 1) != 0 && *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks + 2) != 0)
  {
    v12 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state;
    swift_beginAccess();
    v13 = *(v1 + v12);
    if (v13 == 6 || v13 == 1)
    {
      sub_1CA1856EC(2);
    }
  }

  v15 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldBePlaying;
  result = swift_beginAccess();
  if (*(v1 + v15) == 1)
  {
    sub_1CA0F2110(0, &qword_1EE03C230);
    v17 = sub_1CA19C598();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1CA189FC4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0F4068;
    aBlock[3] = &block_descriptor_54;
    v19 = _Block_copy(aBlock);

    sub_1CA19B2F8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CA189DE8(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA0F40C4();
    sub_1CA19C788();
    MEMORY[0x1CCA99C20](0, v9, v5, v19);
    _Block_release(v19);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_1CA186398()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong play];
  }
}

uint64_t VideoPlayer.isPlaying.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state;
  OUTLINED_FUNCTION_1_5();
  if (v0[v1] == 7)
  {
    return 0;
  }

  [v0 rate];
  if (v2 <= 0.0)
  {
    return 0;
  }

  v3 = [v0 error];
  if (v3)
  {

    return 0;
  }

  return 1;
}

uint64_t VideoPlayer.shouldBePlaying.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldBePlaying;
  OUTLINED_FUNCTION_1_5();
  return *(v0 + v1);
}

uint64_t VideoPlayer.shouldBePlaying.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldBePlaying;
  result = OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VideoPlayer.shouldLoopPlayback.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldLoopPlayback;
  OUTLINED_FUNCTION_1_5();
  return *(v0 + v1);
}

uint64_t VideoPlayer.shouldLoopPlayback.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldLoopPlayback;
  result = OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CA1865FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_lastPlaybackTimeGuard);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_lastPlaybackTimeUnsynchronized);
  [v1 unlock];
  return v2;
}

id sub_1CA18667C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_lastPlaybackTimeGuard);
  [v9 lock];
  v10 = v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_lastPlaybackTimeUnsynchronized;
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4 & 1;

  return [v9 unlock];
}

uint64_t VideoPlayer.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*VideoPlayer.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_14_5();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1CA186844;
}

void sub_1CA186844(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *VideoPlayer.init(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  OUTLINED_FUNCTION_12_4(v3);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state] = 0;
  v7 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoUrl;
  v8 = sub_1CA19ADF8();
  __swift_storeEnumTagSinglePayload(&v1[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoObserver;
  *&v1[v9] = [objc_allocWithZone(type metadata accessor for VideoObserver()) init];
  *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem] = 0;
  v10 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_failure;
  v11 = type metadata accessor for VideoPlaybackFailure(0);
  __swift_storeEnumTagSinglePayload(&v1[v10], 1, 1, v11);
  *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_failureCount] = 0;
  v12 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks];
  *v12 = 0;
  v12[2] = 0;
  v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldBePlaying] = 0;
  v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldLoopPlayback] = 0;
  v13 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_lastPlaybackTimeGuard;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  v14 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_lastPlaybackTimeUnsynchronized];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v14[24] = 1;
  *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = *(v8 - 8);
  (*(v15 + 16))(v6, a1, v8);
  OUTLINED_FUNCTION_12_13();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v8);
  OUTLINED_FUNCTION_14_5();
  sub_1CA1538CC(v6, &v1[v7]);
  swift_endAccess();
  v19 = type metadata accessor for VideoPlayer(0);
  v25.receiver = v1;
  v25.super_class = v19;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  [v20 setPreventsDisplaySleepDuringVideoPlayback_];
  [v20 setMuted_];
  [v20 setActionAtItemEnd_];
  v21 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoObserver;
  *(*&v20[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoObserver] + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13VideoObserver_delegate + 8) = &off_1F49D2868;
  swift_unknownObjectWeakAssign();
  v22 = *&v20[v21];
  sub_1CA1820F0();

  (*(v15 + 8))(a1, v8);
  return v20;
}

id VideoPlayer.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoObserver;
  v3 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoObserver];
  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem;
  OUTLINED_FUNCTION_4_5();
  v5 = *&v1[v4];
  v6 = v3;
  sub_1CA1823EC();

  v7 = *&v1[v2];
  v8 = v1;
  sub_1CA18215C();

  v9 = *&v1[v2];
  sub_1CA182BD0(v8);

  v11.receiver = v8;
  v11.super_class = type metadata accessor for VideoPlayer(0);
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

Swift::Void __swiftcall VideoPlayer.play()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  v1[v2] = 1;
  if ((VideoPlayer.isPlaying.getter() & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state;
    OUTLINED_FUNCTION_4_5();
    if (v1[v3])
    {
      v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem;
      OUTLINED_FUNCTION_4_5();
      v5 = *&v1[v4];
      if (v5)
      {
        v6 = v5;
        v7 = [v1 currentItem];
        if (v7)
        {
        }

        else
        {
          sub_1CA1820F0();
          [v1 replaceCurrentItemWithPlayerItem_];
        }

        v8 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks];
        if (v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks] == 1 && (v8[1] & 1) != 0 && (v8[2] & 1) != 0)
        {
          v9.receiver = v1;
          v9.super_class = type metadata accessor for VideoPlayer(0);
          objc_msgSendSuper2(&v9, sel_play);
        }
      }
    }

    else
    {
      VideoPlayer.startPreloading()();
    }
  }
}