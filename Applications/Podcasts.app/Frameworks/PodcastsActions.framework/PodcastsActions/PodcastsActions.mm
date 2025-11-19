uint64_t AcceptEpisodeLimitRecommendationActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6CF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_E5C74())
  {
    sub_1DE0(a1, a2);
  }

  else
  {
    sub_33B8(a1);
    sub_39B0(a1, a2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CD40, &qword_E8810);
  (*(v5 + 104))(v8, enum case for ActionOutcome.performed(_:), v4);
  return sub_E6F14();
}

uint64_t sub_1DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6BA4();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_E6BC4();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12CDE8, UIViewController_ptr);
  sub_E6DA4();
  v12 = aBlock;
  v38._object = 0x80000000000F65F0;
  v38._countAndFlagsBits = 0xD00000000000002ALL;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_E63A4(v38, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_E87F0;
  v14 = sub_E5C74();
  *(v13 + 56) = &type metadata for UInt;
  *(v13 + 64) = &protocol witness table for UInt;
  *(v13 + 32) = v14;
  sub_E7034();

  v15 = sub_E7024();

  v16 = [objc_opt_self() alertControllerWithTitle:0 message:v15 preferredStyle:0];

  v17 = sub_231C(a1, a2);
  [v16 addAction:v17];

  v18 = sub_2590(a1, a2);
  [v16 addAction:v18];

  v39._countAndFlagsBits = 0x435F4E4F49544341;
  v39._object = 0xED00004C45434E41;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_E63A4(v39, v41);
  v19 = sub_E7024();

  v36 = sub_2C34;
  v37 = 0;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_2A3C;
  v35 = &block_descriptor;
  v20 = _Block_copy(&aBlock);

  v21 = [objc_opt_self() actionWithTitle:v19 style:1 handler:v20];
  _Block_release(v20);

  [v16 addAction:v21];
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v22 = sub_E75C4();
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = v12;
  v36 = sub_4174;
  v37 = v23;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_2D68;
  v35 = &block_descriptor_63;
  v24 = _Block_copy(&aBlock);
  v25 = v16;
  v26 = v12;

  sub_E6BB4();
  aBlock = &_swiftEmptyArrayStorage;
  sub_40D4(&qword_12CE00, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE08, &qword_E8AB0);
  sub_4190();
  sub_E7874();
  sub_E75D4();
  _Block_release(v24);

  (*(v31 + 8))(v7, v4);
  return (*(v29 + 8))(v11, v30);
}

id sub_231C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptEpisodeLimitRecommendationAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v16._object = 0x80000000000F6660;
  v16._countAndFlagsBits = 0xD000000000000022;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_E63A4(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_E87F0;
  v8 = sub_E5C74();
  *(v7 + 56) = &type metadata for UInt;
  *(v7 + 64) = &protocol witness table for UInt;
  *(v7 + 32) = v8;
  sub_E7034();

  sub_42A4(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_44C0(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  v11 = sub_E7024();

  aBlock[4] = sub_4778;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2A3C;
  aBlock[3] = &block_descriptor_75;
  v12 = _Block_copy(aBlock);

  v13 = [objc_opt_self() actionWithTitle:v11 style:2 handler:v12];
  _Block_release(v12);

  return v13;
}

id sub_2590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptEpisodeLimitRecommendationAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_E7534();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE18, &qword_E8AB8);
  sub_E6DA4();
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v9 + 104))(v12, enum case for NSUserDefaults.Name.shared(_:), v8);
  sub_423C();
  sub_E6DB4();
  (*(v9 + 8))(v12, v8);
  v13 = aBlock[0];
  v26._object = 0x80000000000F6640;
  v26._countAndFlagsBits = 0xD00000000000001DLL;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_E63A4(v26, v27);
  sub_42A4(a1, v7);
  sub_48FC(v25, v24);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_44C0(v7, v17 + v14);
  *(v17 + v15) = v13;
  *(v17 + v16) = a2;
  sub_4524(v24, v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = v13;

  v19 = sub_E7024();

  aBlock[4] = sub_453C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2A3C;
  aBlock[3] = &block_descriptor_69;
  v20 = _Block_copy(aBlock);

  v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

id sub_28E4(void *a1, void *a2)
{
  v4 = [a1 presentationController];
  if (v4)
  {
    v5 = v4;
    v6 = [a2 view];
    [v5 setSourceView:v6];
  }

  v7 = [a1 presentationController];
  if (v7)
  {
    v8 = v7;
    result = [a2 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    [result bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v20.origin.x = v12;
    v20.origin.y = v14;
    v20.size.width = v16;
    v20.size.height = v18;
    [v8 setSourceRect:{0.0, 0.0, 240.0, CGRectGetHeight(v20)}];
  }

  return [a2 presentViewController:a1 animated:1 completion:0];
}

void sub_2A3C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2AA4(uint64_t a1, uint64_t a2, NSUserDefaults *a3, uint64_t a4, void *a5)
{
  v9 = sub_E6974();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6954();
  v14 = sub_E6964();
  v15 = sub_E7494();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "User requested to see more options in settings", v16, 2u);
  }

  (*(v10 + 8))(v13, v9);
  sub_E5C54(a3);
  sub_39B0(a2, a4);
  v17 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  return sub_E5B54();
}

uint64_t sub_2C34()
{
  v0 = sub_E6974();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6954();
  v5 = sub_E6964();
  v6 = sub_E7494();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "User dismissed tip sheet", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2D68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2DAC()
{
  v0 = sub_E5BB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionMetricsBehavior.notProcessed(_:), v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE30, &unk_E8AC0);
  sub_E6E04();

  return (*(v1 + 8))(v4, v0);
}

Swift::Int sub_2ED0()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7CE4(v1);
  return sub_E7CF4();
}

Swift::Int sub_2F44()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7CE4(v1);
  return sub_E7CF4();
}

void *sub_2F94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2FC0(uint64_t a1, id *a2)
{
  result = sub_E7044();
  *a2 = 0;
  return result;
}

uint64_t sub_3038(uint64_t a1, id *a2)
{
  v3 = sub_E7054();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_30B8@<X0>(void *a1@<X8>)
{
  sub_E7064();
  v2 = sub_E7024();

  *a1 = v2;
  return result;
}

uint64_t sub_30FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_E7024();

  *a2 = v5;
  return result;
}

uint64_t sub_3144@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_E7064();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_3170(uint64_t a1)
{
  v2 = sub_40D4(&qword_12CE68, type metadata accessor for Name);
  v3 = sub_40D4(&unk_12CE70, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_322C()
{
  v1 = *v0;
  sub_E7064();
  v2 = sub_E7154();

  return v2;
}

uint64_t sub_3268()
{
  v1 = *v0;
  sub_E7064();
  sub_E7124();
}

Swift::Int sub_32BC()
{
  v1 = *v0;
  sub_E7064();
  sub_E7CC4();
  sub_E7124();
  v2 = sub_E7CF4();

  return v2;
}

uint64_t sub_3330(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_E7064();
  v6 = v5;
  if (v4 == sub_E7064() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_E7BD4();
  }

  return v9 & 1;
}

uint64_t sub_33B8(uint64_t a1)
{
  v40 = a1;
  v1 = sub_E6BA4();
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = *(v45 + 64);
  __chkstk_darwin();
  v44 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_E6BC4();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin();
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_E5C84();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_E6974();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_E7534();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12CE40, MPMediaLibrary_ptr);
  sub_E6DA4();
  v37 = aBlock[0];
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v15 + 104))(v18, enum case for NSUserDefaults.Name.shared(_:), v14);
  sub_423C();
  sub_E6DB4();
  (*(v15 + 8))(v18, v14);
  v19 = aBlock[0];
  sub_E6954();
  v20 = sub_E6964();
  v21 = sub_E7494();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "User accepted the new global default", v22, 2u);
  }

  (*(v10 + 8))(v13, v9);
  v23 = v40;
  sub_E5C44();
  sub_E7524();
  sub_E5C54(v19);
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v24 = sub_E7584();
  v26 = v38;
  v25 = v39;
  (*(v7 + 16))(v38, v23, v39);
  v27 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v28 = swift_allocObject();
  v29 = v37;
  *(v28 + 16) = v37;
  (*(v7 + 32))(v28 + v27, v26, v25);
  aBlock[4] = sub_4BC8;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2D68;
  aBlock[3] = &block_descriptor_87;
  v30 = _Block_copy(aBlock);
  v31 = v29;
  v32 = v41;
  sub_E6BB4();
  v47 = &_swiftEmptyArrayStorage;
  sub_40D4(&qword_12CE00, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE08, &qword_E8AB0);
  sub_4190();
  v33 = v44;
  v34 = v46;
  sub_E7874();
  sub_E75D4();
  _Block_release(v30);

  (*(v45 + 8))(v33, v34);
  (*(v42 + 8))(v32, v43);
}

uint64_t sub_39B0(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_E6BA4();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  (__chkstk_darwin)();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_E6BC4();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  (__chkstk_darwin)();
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE30, &unk_E8AC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (__chkstk_darwin)();
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for AcceptEpisodeLimitRecommendationAction();
  sub_4824(a1 + *(v17 + 20), &aBlock);
  if (!v41)
  {
    return sub_4894(&aBlock);
  }

  sub_4524(&aBlock, v45);
  v34 = v16;
  v18 = v36;
  sub_E6DA4();
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v32 = sub_E75C4();
  (*(v11 + 16))(v14, v16, v10);
  sub_48FC(v45, v44);
  v19 = *(v11 + 80);
  v31 = v6;
  v20 = (v19 + 16) & ~v19;
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v7;
  v22 = v37;
  v23 = v3;
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v20, v14, v10);
  sub_4524(v44, v24 + v21);
  *(v24 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v42 = sub_4A18;
  v43 = v24;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v40 = sub_2D68;
  v41 = &block_descriptor_81;
  v25 = _Block_copy(&aBlock);

  v26 = v38;
  sub_E6BB4();
  *&aBlock = &_swiftEmptyArrayStorage;
  sub_40D4(&qword_12CE00, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE08, &qword_E8AB0);
  sub_4190();
  v27 = v31;
  sub_E7874();
  v28 = v32;
  sub_E75D4();
  _Block_release(v25);

  (*(v22 + 8))(v27, v23);
  (*(v35 + 8))(v26, v33);
  (*(v11 + 8))(v34, v10);
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AcceptEpisodeLimitRecommendationActionImplementation(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AcceptEpisodeLimitRecommendationActionImplementation(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_4008(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4028(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_40D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4134()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_4190()
{
  result = qword_12CE10;
  if (!qword_12CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12CE08, &qword_E8AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12CE10);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_423C()
{
  result = qword_12D040;
  if (!qword_12D040)
  {
    sub_4ABC(255, &qword_12CE20, NSUserDefaults_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D040);
  }

  return result;
}

uint64_t sub_42A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptEpisodeLimitRecommendationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4308()
{
  v1 = type metadata accessor for AcceptEpisodeLimitRecommendationAction();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_E5C84();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = (v0 + v3 + *(v1 + 20));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 24);
  v12 = sub_E6CE4();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  v13 = *(v0 + v9);

  __swift_destroy_boxed_opaque_existential_1((v0 + v10));

  return _swift_deallocObject(v0, v10 + 40, v2 | 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_44C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptEpisodeLimitRecommendationAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4524(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_453C(uint64_t a1)
{
  v3 = *(type metadata accessor for AcceptEpisodeLimitRecommendationAction() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);

  return sub_2AA4(a1, v1 + v4, v7, v8, (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_4634()
{
  v1 = type metadata accessor for AcceptEpisodeLimitRecommendationAction();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_E5C84();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = (v0 + v3 + *(v1 + 20));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 24);
  v10 = sub_E6CE4();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_4778()
{
  v1 = *(type metadata accessor for AcceptEpisodeLimitRecommendationAction() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_33B8(v0 + v2);

  return sub_39B0(v0 + v2, v3);
}

uint64_t sub_4824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE38, &qword_E92E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE38, &qword_E92E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_48FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4960()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE30, &unk_E8AC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_4A18()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE30, &unk_E8AC0) - 8);
  v2 = *(v0 + ((((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_2DAC();
}

uint64_t sub_4ABC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_4B04()
{
  v1 = sub_E5C84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_4BC8()
{
  v1 = *(sub_E5C84() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  sub_E5C44();
  return sub_E74E4();
}

void sub_4C44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t DeclineEpisodeLimitRecommendationActionImplementation.perform(_:asPartOf:)()
{
  v0 = sub_E6CF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_E7534();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4FD4();
  (*(v6 + 104))(v9, enum case for NSUserDefaults.Name.shared(_:), v5);
  sub_5068(&qword_12D040, sub_4FD4);
  sub_E6DB4();
  (*(v6 + 8))(v9, v5);
  v10 = v14;
  sub_E5C54(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CD40, &qword_E8810);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0);
  v11 = sub_E6F14();

  return v11;
}

unint64_t sub_4FD4()
{
  result = qword_12CE20;
  if (!qword_12CE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12CE20);
  }

  return result;
}

uint64_t sub_5068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = *(a4 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_51F8, 0, 0);
}

uint64_t sub_51F8()
{
  v12 = v0[6];
  v1 = v0[4];
  (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
  v2 = *(v12 + 24);

  v11 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_5344;
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  return v11(v5, v9, v6);
}

uint64_t sub_5344()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_56DC, 0, 0);
  }

  else
  {
    v11 = (v3[6] + 32);
    v12 = (*v11 + **v11);
    v4 = (*v11)[1];
    v5 = swift_task_alloc();
    v3[14] = v5;
    *v5 = v3;
    v5[1] = sub_553C;
    v6 = v3[11];
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[2];

    return v12(v9, v7, v8);
  }
}

uint64_t sub_553C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_574C;
  }

  else
  {
    v3 = sub_5650;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_5650()
{
  v1 = v0[9];
  (*(v0[10] + 8))(v0[11], v0[5]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_56DC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_574C()
{
  (*(v0[10] + 8))(v0[11], v0[5]);
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_57D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *v9 = v4;
  v9[1] = sub_588C;

  return sub_50C0(a1, a2, a3, v10, v11);
}

uint64_t sub_588C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, WitnessTable);
}

uint64_t static ActionDispatcher.Builder<>.buildExpression<A>(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE30, &unk_E8AC0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  sub_E6DF4();
  sub_E6E24();
  type metadata accessor for _EphemeralActionImplementationWrapper();
  swift_getWitnessTable();
  sub_E6E14();
  return (*(v1 + 8))(v4, v0);
}

uint64_t dispatch thunk of EphemeralActionImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_5E10;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of EphemeralActionImplementation.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_588C;

  return v11(a1, a2, a3);
}

uint64_t sub_5DC4(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t IgnoreAbandonedDownloadsActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_E5A54();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = sub_E7724();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v10 = *(type metadata accessor for IgnoreAbandonedDownloadsAction() - 8);
  v3[19] = v10;
  v3[20] = *(v10 + 64);
  v3[21] = swift_task_alloc();
  v11 = sub_E7534();
  v3[22] = v11;
  v12 = *(v11 - 8);
  v3[23] = v12;
  v13 = *(v12 + 64) + 15;
  v3[24] = swift_task_alloc();
  v14 = sub_E7324();
  v3[25] = v14;
  v15 = *(v14 - 8);
  v3[26] = v15;
  v16 = *(v15 + 64) + 15;
  v3[27] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  v3[28] = v19;
  *v19 = v3;
  v19[1] = sub_60A8;

  return BaseObjectGraph.inject<A>(_:)(v3 + 7, v17, v17);
}

uint64_t sub_60A8()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_6A88;
  }

  else
  {
    v3 = sub_61BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_61BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  swift_getObjectType();
  sub_E7374();
  *(v0 + 240) = sub_E7764();
  if (v2)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    swift_unknownObjectRelease();
    v4 = *(v0 + 216);
    v5 = *(v0 + 192);
    v6 = *(v0 + 168);
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 192);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 96);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    swift_unknownObjectRelease();
    *(v0 + 248) = sub_4FD4();
    *(v0 + 344) = enum case for NSUserDefaults.Name.shared(_:);
    v15 = *(v13 + 104);
    *(v0 + 256) = v15;
    *(v0 + 264) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v15(v11);
    *(v0 + 272) = sub_7198(&qword_12D040, sub_4FD4);
    sub_E6DB4();
    v16 = *(v13 + 8);
    *(v0 + 280) = v16;
    *(v0 + 288) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v11, v12);
    v17 = *(v0 + 64);
    *(v0 + 296) = v17;
    sub_E7114();
    v18 = sub_E7024();

    [v17 setBool:1 forKey:v18];

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D048, &qword_E90B0);
    v20 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v21 = swift_task_alloc();
    *(v0 + 304) = v21;
    *v21 = v0;
    v21[1] = sub_6484;
    v22 = *(v0 + 96);

    return BaseObjectGraph.inject<A>(_:)(v0 + 16, v19, v19);
  }
}

uint64_t sub_6484()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_6B2C;
  }

  else
  {
    v3 = sub_6598;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_6598()
{
  v1 = v0[30];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v17 = v0[18];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[11];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  TipProvider.requestRefresh()();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_6E20(v7, v2);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[40] = v10;
  *(v10 + 16) = v1;
  sub_6F74(v2, v10 + v9);
  (*(v6 + 104))(v17, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v12 = v1;
  v13 = swift_task_alloc();
  v0[41] = v13;
  *v13 = v0;
  v13[1] = sub_6728;
  v14 = v0[30];
  v15 = v0[18];

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_6728()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = v2[40];
  (*(v2[17] + 8))(v2[18], v2[16]);

  if (v0)
  {
    v6 = sub_6BE0;
  }

  else
  {
    v6 = sub_68AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_68AC()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v21 = *(v0 + 240);
  v22 = *(v0 + 296);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v24 = *(v0 + 144);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 96);
  v20 = *(v0 + 104);
  v23 = *(v0 + 80);
  (*(v0 + 256))(v7, *(v0 + 344), v8);
  sub_E6DB4();
  v3(v7, v8);
  v12 = *(v0 + 72);
  sub_E5A44();
  sub_E5A14();
  v14 = v13;
  (*(v10 + 8))(v9, v20);
  v15 = kMTEpisodeAbandonedRemovalTipLastDisplayedTimeKey;
  [v12 setDouble:v15 forKey:v14];

  v16 = enum case for ActionOutcome.performed(_:);
  v17 = sub_E6CF4();
  (*(*(v17 - 8) + 104))(v23, v16, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_6A88()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_6B2C()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 312);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_6BE0()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 336);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_6C98(void *a1, uint64_t *a2)
{
  v4 = *a2;
  result = sub_E7714();
  if (!v2)
  {
    v6 = result;
    if (result >> 62)
    {
      v7 = sub_E7AC4();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_E79B4();
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
          }

          v10 = v9;
          [v9 setDownloadBehavior:2];
        }
      }
    }

    v12 = 0;
    if ([a1 save:&v12])
    {
      return v12;
    }

    else
    {
      v11 = v12;
      sub_E5904();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_6E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IgnoreAbandonedDownloadsAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6E84()
{
  v1 = (type metadata accessor for IgnoreAbandonedDownloadsAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_E6CE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IgnoreAbandonedDownloadsAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_704C()
{
  result = qword_12D050;
  if (!qword_12D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D050);
  }

  return result;
}

uint64_t sub_70A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return IgnoreAbandonedDownloadsActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_7198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_71E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7244();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_7244()
{
  result = qword_12D060;
  if (!qword_12D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D060);
  }

  return result;
}

uint64_t IgnorePurgedEpisodesActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v6 = swift_task_alloc();
  v3[13] = v6;
  *v6 = v3;
  v6[1] = sub_735C;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_735C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_7750;
  }

  else
  {
    v3 = sub_7470;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7470()
{
  v1 = v0[11];
  v2 = *v1;
  v0[15] = *v1;
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v2;
  v0[8] = 1;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];

  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = sub_77D4();
  *v6 = v0;
  v6[1] = sub_7578;
  v8 = v0[12];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 9, v0 + 7, v8, &type metadata for UpdateEpisodeDownloadBehavior, v7, v3, v4);
}

uint64_t sub_7578()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_7768;
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 72);

    v4 = sub_76A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_76A0()
{
  v1 = v0[10];
  v2 = enum case for ActionOutcome.performed(_:);
  v3 = sub_E6CF4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_7768()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

unint64_t sub_77D4()
{
  result = qword_130950;
  if (!qword_130950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130950);
  }

  return result;
}

unint64_t sub_782C()
{
  result = qword_12D070;
  if (!qword_12D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D070);
  }

  return result;
}

uint64_t sub_7880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return IgnorePurgedEpisodesActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

unint64_t sub_7934()
{
  result = qword_12D078;
  if (!qword_12D078)
  {
    type metadata accessor for IgnorePurgedEpisodesAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D078);
  }

  return result;
}

uint64_t sub_798C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_79F0();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_79F0()
{
  result = qword_12D080;
  if (!qword_12D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D080);
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_E5A54();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = sub_E7534();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = sub_E72F4();
  v3[15] = sub_E72E4();
  v12 = sub_E7294();
  v3[16] = v12;
  v3[17] = v11;

  return _swift_task_switch(sub_7BD4, v12, v11);
}

uint64_t sub_7BD4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[6];
  sub_4FD4();
  (*(v2 + 104))(v1, enum case for NSUserDefaults.Name.shared(_:), v3);
  sub_8908(&qword_12D040, sub_4FD4);
  sub_E6DB4();
  (*(v2 + 8))(v1, v3);
  v0[18] = v0[2];
  v5 = sub_E5C14();
  v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_7D40;
  v8 = v0[6];

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v5, v5);
}

uint64_t sub_7D40()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_80D8;
  }

  else
  {
    v7 = sub_7E7C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_7E7C()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v23 = v0[7];
  v7 = v0[5];
  v24 = v0[4];
  v25 = v0[13];

  v8 = v0[3];
  sub_E66A4();
  v9 = v1;
  v10 = sub_E6674();
  v11 = *v7;
  v12 = sub_E6694();

  sub_E6684(v9);
  sub_E7304();
  v13 = sub_E7324();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);

  v14 = sub_E72E4();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v8;
  sub_854C(0, 0, v5, &unk_E8FE8, v15);

  sub_E5A44();
  sub_E5A14();
  v17 = v16;
  (*(v6 + 8))(v4, v23);
  v18 = kMTEpisodeAbandonedRemovalTipLastDisplayedTimeKey;
  [(NSUserDefaults *)v9 setDouble:v18 forKey:v17];

  v19 = enum case for ActionOutcome.performed(_:);
  v20 = sub_E6CF4();
  (*(*(v20 - 8) + 104))(v24, v19, v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_80D8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  v5 = *(v0 + 8);
  v6 = *(v0 + 160);

  return v5();
}

uint64_t sub_8170()
{
  v0[2] = sub_E72F4();
  v0[3] = sub_E72E4();
  v1 = *(&async function pointer to dispatch thunk of DownloadRemovalObserver.removeDownloadsRecordedInUserDefaults() + 1);
  v4 = (&async function pointer to dispatch thunk of DownloadRemovalObserver.removeDownloadsRecordedInUserDefaults() + async function pointer to dispatch thunk of DownloadRemovalObserver.removeDownloadsRecordedInUserDefaults());
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_8234;

  return v4();
}

uint64_t sub_8234()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_E7294();
  if (v2)
  {
    v8 = sub_83F4;
  }

  else
  {
    v8 = sub_8390;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_8390()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_83F4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_8458()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8498()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_588C;

  return sub_8170();
}

uint64_t sub_854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_8A08(a3, v24 - v10);
  v12 = sub_E7324();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_8A78(v11);
  }

  else
  {
    sub_E7314();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_E7294();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_E70A4() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_8A78(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_8A78(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

unint64_t sub_87BC()
{
  result = qword_12D088;
  if (!qword_12D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D088);
  }

  return result;
}

uint64_t sub_8810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return RemoveAbandonedDownloadsActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_8908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_89B4();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_89B4()
{
  result = qword_12D098;
  if (!qword_12D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D098);
  }

  return result;
}

uint64_t sub_8A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int RequestTipProviderRefreshActionImplementation.PerformError.hashValue.getter()
{
  sub_E7CC4();
  sub_E7CD4(0);
  return sub_E7CF4();
}

Swift::Int sub_8B54()
{
  sub_E7CC4();
  sub_E7CD4(0);
  return sub_E7CF4();
}

uint64_t RequestTipProviderRefreshActionImplementation.perform(_:asPartOf:)(void *a1)
{
  v2 = sub_E6CF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D048, &qword_E90B0);
  sub_E6D74();
  if (v12)
  {
    sub_4524(&v11, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v8 + 16))(*a1, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CD40, &qword_E8810);
    (*(v3 + 104))(v6, enum case for ActionOutcome.performed(_:), v2);
    v9 = sub_E6F14();
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v9;
  }

  else
  {
    sub_8D60(&v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CD40, &qword_E8810);
    sub_8DC8();
    swift_allocError();
    return sub_E6F04();
  }
}

uint64_t sub_8D60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D0A0, &unk_E90B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_8DC8()
{
  result = qword_12D0A8;
  if (!qword_12D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0A8);
  }

  return result;
}

unint64_t sub_8E20()
{
  result = qword_12D0B0;
  if (!qword_12D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0B0);
  }

  return result;
}

unint64_t sub_8E78()
{
  result = qword_12D0B8;
  if (!qword_12D0B8)
  {
    type metadata accessor for RequestTipProviderRefreshAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0B8);
  }

  return result;
}

uint64_t RestorePurgedEpisodesActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v6 = swift_task_alloc();
  v3[13] = v6;
  *v6 = v3;
  v6[1] = sub_8FE4;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_8FE4()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_7750;
  }

  else
  {
    v3 = sub_90F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_90F8()
{
  v1 = v0[11];
  v2 = *v1;
  v0[15] = *v1;
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v2;
  v0[8] = 0;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];

  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = sub_77D4();
  *v6 = v0;
  v6[1] = sub_91FC;
  v8 = v0[12];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 9, v0 + 7, v8, &type metadata for UpdateEpisodeDownloadBehavior, v7, v3, v4);
}

uint64_t sub_91FC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_7768;
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 72);

    v4 = sub_9324;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9324()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_9568();
  *v4 = v0;
  v4[1] = sub_93F0;
  v7 = v0[12];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v5, v6, v7, &type metadata for ReevaluateAutoDownloadsIntent, v5, v1, v2);
}

uint64_t sub_93F0()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_9504;
  }

  else
  {
    v3 = sub_76A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_9504()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

unint64_t sub_9568()
{
  result = qword_12D0C0;
  if (!qword_12D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0C0);
  }

  return result;
}

unint64_t sub_95C0()
{
  result = qword_12D0C8;
  if (!qword_12D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0C8);
  }

  return result;
}

uint64_t sub_9614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return RestorePurgedEpisodesActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

unint64_t sub_96C8()
{
  result = qword_12D0D0;
  if (!qword_12D0D0)
  {
    type metadata accessor for RestorePurgedEpisodesAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0D0);
  }

  return result;
}

uint64_t sub_9720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_9784();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_9784()
{
  result = qword_12D0D8;
  if (!qword_12D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0D8);
  }

  return result;
}

uint64_t AcceptEpisodeLimitRecommendationAction.init(recommendation:confirmationAction:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_E5C84();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AcceptEpisodeLimitRecommendationAction();
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(a2 + 32);
  v12 = *(v9 + 24);
  v13 = sub_E6CE4();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t type metadata accessor for AcceptEpisodeLimitRecommendationAction()
{
  result = qword_12D138;
  if (!qword_12D138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeclineEpisodeLimitRecommendationAction.recommendation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_E5C84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AcceptEpisodeLimitRecommendationAction.confirmationAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AcceptEpisodeLimitRecommendationAction() + 20);

  return sub_4824(v3, a1);
}

uint64_t AcceptEpisodeLimitRecommendationAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AcceptEpisodeLimitRecommendationAction() + 24);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_9A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_E6CE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_9AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E5C84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_E6CE4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_9BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E5C84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  else
  {
    v11 = sub_E6CE4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_9D20()
{
  sub_E5C84();
  if (v0 <= 0x3F)
  {
    sub_9DBC();
    if (v1 <= 0x3F)
    {
      sub_E6CE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_9DBC()
{
  if (!qword_12D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_12D150, &qword_E9368);
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_12D148);
    }
  }
}

uint64_t DeclineEpisodeLimitRecommendationAction.init(recommendation:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E5C84();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for DeclineEpisodeLimitRecommendationAction() + 20);
  v8 = sub_E6CE4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for DeclineEpisodeLimitRecommendationAction()
{
  result = qword_12D1E0;
  if (!qword_12D1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeclineEpisodeLimitRecommendationAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeclineEpisodeLimitRecommendationAction() + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_9FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_E6CE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_A030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E5C84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_E6CE4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_A134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_E5C84();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_E6CE4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_A230()
{
  result = sub_E5C84();
  if (v1 <= 0x3F)
  {
    result = sub_E6CE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t UpdateEpisodeDownloadBehaviorAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_E6CE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DownloadEpisodesAction.actionMetrics.setter(uint64_t a1)
{
  v3 = sub_E6CE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DownloadEpisodesAction.episodeIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for DownloadEpisodesAction() + 20));
}

uint64_t type metadata accessor for DownloadEpisodesAction()
{
  result = qword_12D290;
  if (!qword_12D290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DownloadEpisodesAction.intent.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for DownloadEpisodesAction() + 20));
}

uint64_t DownloadEpisodesAction.init(actionMetrics:episodeIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_E6CD4();
  *(a3 + *(type metadata accessor for DownloadEpisodesAction() + 20)) = a2;
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 40);

  return v7(a3, a1, v6);
}

unint64_t sub_A4F8()
{
  result = qword_1305E0;
  if (!qword_1305E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1305E0);
  }

  return result;
}

uint64_t sub_A570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_A640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E6CE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_A6F8()
{
  sub_E6CE4();
  if (v0 <= 0x3F)
  {
    sub_A77C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A77C()
{
  if (!qword_12D2A0)
  {
    v0 = sub_E7284();
    if (!v1)
    {
      atomic_store(v0, &qword_12D2A0);
    }
  }
}

uint64_t IgnoreAbandonedDownloadsAction.init(episodeIDs:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for IgnoreAbandonedDownloadsAction() + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for IgnoreAbandonedDownloadsAction()
{
  result = qword_12D328;
  if (!qword_12D328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IgnoreAbandonedDownloadsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreAbandonedDownloadsAction() + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_A934(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_A9F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_AA98()
{
  sub_A77C();
  if (v0 <= 0x3F)
  {
    sub_E6CE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t IgnorePurgedEpisodesAction.init(episodeIDs:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for IgnorePurgedEpisodesAction() + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for IgnorePurgedEpisodesAction()
{
  result = qword_12D3B8;
  if (!qword_12D3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IgnorePurgedEpisodesAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnorePurgedEpisodesAction() + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_AC7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_AD3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t OpenAppLocationError.localizedStringResource.getter()
{
  v1 = sub_E7014();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = *v0;
  sub_E7004();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_E6FF4(v5);
  sub_AEBC();
  sub_E6FE4();
  v6._object = 0x80000000000F6710;
  v6._countAndFlagsBits = 0xD000000000000011;
  sub_E6FF4(v6);
  return sub_E5924();
}

unint64_t sub_AEBC()
{
  result = qword_12D3F0;
  if (!qword_12D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D3F0);
  }

  return result;
}

uint64_t type metadata accessor for OpenAppLocationAction()
{
  result = qword_12D450;
  if (!qword_12D450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OpenAppLocationAction.init(actionMetrics:location:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_E6CE4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for OpenAppLocationAction();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_B16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xC)
    {
      return v10 - 11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_B238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E6CE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 11;
  }

  return result;
}

uint64_t sub_B2F0()
{
  result = sub_E6CE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OpenAudioAction.audioEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OpenAudioAction() + 20);

  return sub_B3F4(v3, a1);
}

uint64_t type metadata accessor for OpenAudioAction()
{
  result = qword_12D4E0;
  if (!qword_12D4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OpenAudioAction.audioEntity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OpenAudioAction() + 20);

  return sub_B49C(a1, v3);
}

uint64_t sub_B49C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEntity();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OpenAudioAction.init(actionMetrics:audioEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E6CE4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for OpenAudioAction() + 20);

  return sub_B5D8(a2, v7);
}

uint64_t sub_B5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AudioEntity();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_B754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_E6CE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AudioEntity();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_B850()
{
  result = sub_E6CE4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AudioEntity();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OpenStoreURLAction.shareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenStoreURLAction() + 20);
  v4 = sub_E59C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OpenStoreURLAction()
{
  result = qword_12D570;
  if (!qword_12D570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OpenStoreURLAction.init(actionMetrics:shareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E6CE4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for OpenStoreURLAction() + 20);
  v8 = sub_E59C4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_BA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_E59C4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_BB74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_E6CE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_E59C4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_BC70()
{
  result = sub_E6CE4();
  if (v1 <= 0x3F)
  {
    result = sub_E59C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsAction.init(episodeIDs:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for RemoveAbandonedDownloadsAction() + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for RemoveAbandonedDownloadsAction()
{
  result = qword_12D600;
  if (!qword_12D600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveAbandonedDownloadsAction() + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_BE54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_BF14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t RemoveDownloadedEpisodesAction.init(episodeIDs:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for RemoveDownloadedEpisodesAction() + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for RemoveDownloadedEpisodesAction()
{
  result = qword_12D6B0;
  if (!qword_12D6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoveDownloadedEpisodesAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveDownloadedEpisodesAction() + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_C140(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_C200(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_C2A8()
{
  result = qword_12D6E8;
  if (!qword_12D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D6E8);
  }

  return result;
}

uint64_t RequestTipProviderRefreshAction.init(groups:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for RequestTipProviderRefreshAction() + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for RequestTipProviderRefreshAction()
{
  result = qword_12D750;
  if (!qword_12D750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RequestTipProviderRefreshAction.init(group:actionMetrics:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D6F0, &qword_E9820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_E87F0;
  *(inited + 32) = v5;
  v7 = sub_C50C(inited);
  swift_setDeallocating();
  *a3 = v7;
  v8 = *(type metadata accessor for RequestTipProviderRefreshAction() + 20);
  v9 = sub_E6CE4();
  return (*(*(v9 - 8) + 32))(a3 + v8, a2, v9);
}

uint64_t RequestTipProviderRefreshAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RequestTipProviderRefreshAction() + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int sub_C50C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D798, &unk_E9890);
    v3 = sub_E7964();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_E7CC4();
      sub_E7CD4(v10);
      result = sub_E7CF4();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_C65C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_C71C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C7C0()
{
  sub_C844();
  if (v0 <= 0x3F)
  {
    sub_E6CE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C844()
{
  if (!qword_12D760)
  {
    sub_C8A0();
    v0 = sub_E73E4();
    if (!v1)
    {
      atomic_store(v0, &qword_12D760);
    }
  }
}

unint64_t sub_C8A0()
{
  result = qword_12D768;
  if (!qword_12D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D768);
  }

  return result;
}

uint64_t RestorePurgedEpisodesAction.init(episodeIDs:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for RestorePurgedEpisodesAction() + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for RestorePurgedEpisodesAction()
{
  result = qword_12D7F8;
  if (!qword_12D7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RestorePurgedEpisodesAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RestorePurgedEpisodesAction() + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_CA54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_CB14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t SwitchNewsProviderIntent.topicID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SearchAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchAction() + 24);

  return sub_CC80(v3, a1);
}

uint64_t type metadata accessor for SearchAction()
{
  result = qword_12D890;
  if (!qword_12D890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchAction.hintIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchAction() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SearchAction.hintIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SearchAction();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SearchAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchAction() + 36);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchAction.init(origin:term:url:hintIndex:activatesSearchBar:actionMetrics:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for SearchAction();
  v18 = a9 + v17[7];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_CF40(a4, a9 + v17[6]);
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  *(a9 + v17[8]) = a7;
  v19 = v17[9];
  v20 = sub_E6CE4();
  v21 = *(*(v20 - 8) + 32);

  return v21(a9 + v19, a8, v20);
}

uint64_t sub_CF40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_E6CE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SearchAction.with(hintIndex:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_D07C(v3, a3);
  result = type metadata accessor for SearchAction();
  v8 = a3 + *(result + 28);
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  return result;
}

uint64_t sub_D07C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v59 = a3;
  v5 = sub_E6CE4();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  __chkstk_darwin(v5);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v64 = &v50 - v10;
  v11 = sub_E6C94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v61 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v66 = sub_E6C34();
  v68 = *(v66 - 8);
  v18 = *(v68 + 64);
  v19 = __chkstk_darwin(v66);
  v60 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v63 = &v50 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v50 - v24;
  __chkstk_darwin(v23);
  v27 = &v50 - v26;
  v67 = a1;
  sub_E6C44();
  v28 = *(v12 + 16);
  v28(v17, a2, v11);
  v29 = v65;
  v30 = sub_D700(v27, v17);
  if (v29)
  {
    (*(v12 + 8))(a2, v11);
    return (*(v68 + 8))(v67, v66);
  }

  else
  {
    v54 = v28;
    v52 = v30;
    v32 = v63;
    v56 = v11;
    v65 = a2;
    sub_E6C44();
    v51 = sub_E6C14();
    v34 = v33;
    v35 = *(v68 + 8);
    v36 = v66;
    v68 += 8;
    v55 = v35;
    v35(v25, v66);
    if (v34)
    {
      v53 = v34;
      sub_E6C44();
      sub_E6BF4();
      v37 = v32;
      v38 = v55;
      v55(v37, v36);
      sub_E6C44();
      v39 = v65;
      v40 = v56;
      v54(v61, v65, v56);
      v41 = v62;
      sub_E6CC4();
      (*(v12 + 8))(v39, v40);
      v38(v67, v66);
      v46 = type metadata accessor for SearchAction();
      v47 = v59;
      v48 = &v59[v46[7]];
      *v59 = v52;
      v49 = v53;
      *(v47 + 1) = v51;
      *(v47 + 2) = v49;
      sub_CF40(v64, &v47[v46[6]]);
      *v48 = 0;
      v48[8] = 1;
      v47[v46[8]] = 0;
      return (*(v57 + 32))(&v47[v46[9]], v41, v58);
    }

    else
    {
      v42 = sub_E6F54();
      sub_E528(&qword_12D830, &type metadata accessor for JSONError);
      swift_allocError();
      v44 = v43;
      v45 = type metadata accessor for SearchAction();
      *v44 = 1836213620;
      v44[1] = 0xE400000000000000;
      v44[2] = v45;
      (*(*(v42 - 8) + 104))(v44, enum case for JSONError.missingProperty(_:), v42);
      swift_willThrow();
      (*(v12 + 8))(v65, v56);
      return (v55)(v67, v36);
    }
  }
}

uint64_t sub_D700(uint64_t a1, uint64_t a2)
{
  v5 = sub_E79C4();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  v7 = __chkstk_darwin(v5);
  v30 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_E6C94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  (*(v12 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  sub_E6F94();
  sub_E570();
  sub_E6C04();
  if (v2)
  {
    v27 = a2;
    v28 = a1;

    v31 = v2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    if (swift_dynamicCast())
    {

      v15 = v29;
      (*(v29 + 32))(v30, v10, v5);
      v16 = sub_E6F54();
      sub_E528(&qword_12D830, &type metadata accessor for JSONError);
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D8F0, &unk_E99B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_E87F0;
      *(v19 + 32) = swift_allocError();
      v20 = v30;
      (*(v15 + 16))(v21, v30, v5);
      *v18 = &type metadata for SearchOrigin;
      v18[1] = v19;
      (*(*(v16 - 8) + 104))(v18, enum case for JSONError.malformedDocument(_:), v16);
      swift_willThrow();
      (*(v12 + 8))(v27, v11);
      v22 = sub_E6C34();
      (*(*(v22 - 8) + 8))(v28, v22);
      (*(v15 + 8))(v20, v5);
    }

    else
    {
      (*(v12 + 8))(v27, v11);
      v25 = sub_E6C34();
      (*(*(v25 - 8) + 8))(v28, v25);
    }
  }

  else
  {

    (*(v12 + 8))(a2, v11);
    v23 = sub_E6C34();
    (*(*(v23 - 8) + 8))(a1, v23);
    return v32;
  }
}

uint64_t sub_DB70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v39 = a6;
  v37 = a5;
  v36 = sub_E79C4();
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  v11 = __chkstk_darwin(v36);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v15 = sub_E6C94();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3(0);
  (*(v16 + 16))(v19, a2, v15);
  sub_E6F94();
  sub_E528(a4, v37);
  v39 = a1;
  v21 = v38;
  sub_E6C04();
  if (v21)
  {
    v37 = v15;
    v38 = a2;

    v40 = v21;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v22 = v36;
    if (swift_dynamicCast())
    {

      v23 = v34;
      (*(v34 + 32))(v35, v14, v22);
      v24 = sub_E6F54();
      sub_E528(&qword_12D830, &type metadata accessor for JSONError);
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D8F0, &unk_E99B0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_E87F0;
      *(v27 + 32) = swift_allocError();
      v28 = v35;
      (*(v23 + 16))(v29, v35, v22);
      *v26 = v20;
      v26[1] = v27;
      (*(*(v24 - 8) + 104))(v26, enum case for JSONError.malformedDocument(_:), v24);
      swift_willThrow();
      (*(v16 + 8))(v38, v37);
      v30 = sub_E6C34();
      (*(*(v30 - 8) + 8))(v39, v30);
      (*(v23 + 8))(v28, v22);
    }

    else
    {
      (*(v16 + 8))(v38, v37);
      v33 = sub_E6C34();
      (*(*(v33 - 8) + 8))(v39, v33);
    }
  }

  else
  {

    (*(v16 + 8))(a2, v15);
    v31 = sub_E6C34();
    return (*(*(v31 - 8) + 8))(v39, v31);
  }
}

uint64_t sub_E150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
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
      v13 = sub_E6CE4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_E294(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
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
      v13 = sub_E6CE4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_E3C4()
{
  sub_E480();
  if (v0 <= 0x3F)
  {
    sub_E4D8();
    if (v1 <= 0x3F)
    {
      sub_E6CE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_E480()
{
  if (!qword_12D8A0)
  {
    sub_E59C4();
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_12D8A0);
    }
  }
}

void sub_E4D8()
{
  if (!qword_12D8A8)
  {
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_12D8A8);
    }
  }
}

uint64_t sub_E528(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_E570()
{
  result = qword_12D900;
  if (!qword_12D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D900);
  }

  return result;
}

uint64_t UpdateEpisodeDownloadBehaviorAction.contentIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for UpdateEpisodeDownloadBehaviorAction() + 20));
}

uint64_t type metadata accessor for UpdateEpisodeDownloadBehaviorAction()
{
  result = qword_12D980;
  if (!qword_12D980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UpdateEpisodeDownloadBehaviorAction.intent.getter@<X0>(void *a1@<X8>)
{
  updated = type metadata accessor for UpdateEpisodeDownloadBehaviorAction();
  v4 = *(v1 + *(updated + 24));
  *a1 = *(v1 + *(updated + 20));
  a1[1] = v4;
}

uint64_t UpdateEpisodeDownloadBehaviorAction.init(actionMetrics:contentIDs:newBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_E6CE4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for UpdateEpisodeDownloadBehaviorAction();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_E754@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 24));
  *a2 = *(v2 + *(a1 + 20));
  a2[1] = v3;
}

uint64_t sub_E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_E84C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E6CE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_E904()
{
  sub_E6CE4();
  if (v0 <= 0x3F)
  {
    sub_A77C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MTEpisodeDownloadBehavior(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_E9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[8] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_EB44, 0, 0);
}

uint64_t sub_EB44()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  (*(v2 + 24))(v3, v2);
  v8 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_EC48;
  v10 = v0[14];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[5];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v10, v11, v14, v13, v12, v6, v7);
}

uint64_t sub_EC48()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_EEA0;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    v7 = sub_EDD8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_EDD8()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[2];
  v4 = enum case for ActionOutcome.performed(_:);
  v5 = sub_E6CF4();
  (*(*(v5 - 8) + 104))(v3, v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_EEA0()
{
  v1 = v0[14];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_EF10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_E6CF4();
  v6[3] = v8;
  v9 = *(v8 - 8);
  v6[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[5] = v11;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_F070;

  return v15(v11);
}

uint64_t sub_F070()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_F214;
  }

  else
  {
    v3 = sub_F184;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_F184()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_E6F34();
  (*(v2 + 8))(v1, v4);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_F214()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_E6F24();

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v23 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  sub_E6DA4();
  sub_48FC(v24, v23);
  (*(v15 + 16))(v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v17 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  sub_4524(v23, (v18 + 40));
  (*(v15 + 32))(&v18[v17], v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *&v18[(v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CD40, &qword_E8810);

  v19 = sub_E6F44();
  v20 = sub_E7324();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_E9B20;
  v21[5] = v18;
  v21[6] = v19;

  sub_8E218(0, 0, v14, &unk_E9B38, v21);

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v19;
}

uint64_t sub_F580()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_F650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v8 = *(v1 + ((*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_588C;

  return sub_E9B4(a1, (v1 + 5), v1 + v7, v8, v4, v5, v6);
}

uint64_t sub_F77C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_F7C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_588C;

  return sub_EF10(a1, v4, v5, v6, v7, v8);
}

uint64_t LibraryEntityIDAligner.init(originalIDs:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10C40(a1);

  *a2 = v3;
  return result;
}

uint64_t LibraryEntityIDAligner.normalizing(identifiers:for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = sub_E59C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v29 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v29 - v21;
  __chkstk_darwin(v20);
  v24 = &v29 - v23;
  v31 = &_swiftEmptySetSingleton;
  if (swift_conformsToProtocol2() && a2)
  {
    v30 = a1;
    sub_E6534();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_110AC(v10, &unk_12DFA0, &qword_E9B50);
    }

    else
    {
      (*(v12 + 32))(v24, v10, v11);
      (*(v12 + 16))(v19, v24, v11);
      sub_BEC98(v22, v19);
      v25 = *(v12 + 8);
      v25(v22, v11);
      v25(v24, v11);
    }

    a1 = v30;
  }

  if (swift_conformsToProtocol2() && a2)
  {
    sub_E65C4();
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_110AC(v8, &unk_12DFA0, &qword_E9B50);
    }

    else
    {
      (*(v12 + 32))(v16, v8, v11);
      (*(v12 + 16))(v19, v16, v11);
      sub_BEC98(v22, v19);
      v26 = *(v12 + 8);
      v26(v22, v11);
      v26(v16, v11);
    }
  }

  v27 = sub_FEC8(a1, &v31);

  return v27;
}

uint64_t sub_FCAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v30[0] = a3;
  v32 = sub_E59C4();
  v5 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = *a2;
  v14 = *(*a2 + 56);
  v13 = *a2 + 56;
  v12 = v14;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v30[3] = v6 + 16;
  v31 = v6;
  v30[2] = v6 + 8;

  v33 = v11;

  for (i = 0; v17; result = )
  {
    v34 = v10;
    v35 = v9;
    v21 = i;
LABEL_9:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v32;
    v24 = v31;
    (*(v31 + 16))(v8, *(v33 + 48) + *(v31 + 72) * (v22 | (v21 << 6)), v32);
    v25 = sub_E5974();
    v27 = v26;
    (*(v24 + 8))(v8, v23);
    v36._countAndFlagsBits = v25;
    v36._object = v27;
    v9 = sub_E70B4(v36);
    v10 = v28;
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v29 = v30[0];
      *v30[0] = v9;
      *(v29 + 8) = v10;
      return result;
    }

    v17 = *(v13 + 8 * v21);
    ++i;
    if (v17)
    {
      v34 = v10;
      v35 = v9;
      i = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_FEC8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v18 = &_swiftEmptyArrayStorage;
  sub_15D18(0, v4, 0);
  v5 = &_swiftEmptyArrayStorage;
  for (i = (a1 + 40); ; i += 2)
  {
    v9 = *i;
    v16[0] = *(i - 1);
    v16[1] = v9;

    sub_FCAC(v16, a2, v17);
    if (v3)
    {
      break;
    }

    v3 = 0;

    v10 = v17[0];
    v11 = v17[1];
    v18 = v5;
    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      sub_15D18((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    v5[2] = v13 + 1;
    v14 = &v5[2 * v13];
    v14[4] = v10;
    v14[5] = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t LibraryEntityIDAligner.alignIdentifiers<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = sub_E7814();
  v11 = *(v38 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v38);
  v37 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = (v32 - v15);
  v33 = *v3;
  v40 = a1;
  v39[3] = a1;
  v17 = sub_E7284();

  swift_getWitnessTable();
  sub_E7184();
  v39[2] = v39[0];
  sub_E7AB4();
  sub_E7A84();
  v32[2] = v17;
  v18 = sub_E7AA4();
  v19 = (v11 + 32);
  v35 = TupleTypeMetadata2 - 8;
  v36 = v18;
  v32[0] = v6 + 8;
  v32[1] = v6 + 32;
  v20 = v34;
  while (1)
  {
    v21 = v37;
    sub_E7A94();
    (*v19)(v16, v21, v38);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v22 = *v16;
    v23 = *(TupleTypeMetadata2 + 48);
    v39[0] = v33;
    (*(v6 + 32))(v9, v16 + v23, a2);
    v24 = sub_1081C(v9, v39, a2, *(v20 + 8));
    v26 = v25;
    (*(v6 + 8))(v9, a2);
    v39[0] = v24;
    v39[1] = v26;
    sub_E7244();
    v27 = v40;
    sub_107C8(v22, v40);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v29 = v27 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v29 = v27;
    }

    v30 = v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22;
    sub_E63F4();
  }

  return v40;
}

uint64_t LibraryEntityIDAligner.originalIdentifier(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1081C(v4, v1, v2, v3);
}

uint64_t sub_103AC(void *a1)
{
  v2 = sub_E59C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = sub_E6554();
  v32 = v8;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = sub_E6584();
  v34 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_E6574();
  if (result)
  {
    v13 = result;
    v14 = [result URIRepresentation];

    sub_E5994();
    v15 = sub_E5974();
    v17 = v16;
    result = (*(v3 + 8))(v6, v2);
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = 0;
  v35 = v15;
  v36 = v17;
  v19 = &_swiftEmptyArrayStorage;
LABEL_5:
  if (v18 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = 16 * v18 + 40;
  while (1)
  {
    if (v18 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
      swift_arrayDestroy();
      v29 = sub_10C40(v19);

      return v29;
    }

    if (v21 == ++v18)
    {
      break;
    }

    v23 = v22 + 16;
    v24 = *&v30[v22];
    v22 += 16;
    if (v24)
    {
      v25 = *&v30[v23 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22FBC(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        result = sub_22FBC((v26 > 1), v27 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 2) = v27 + 1;
      v28 = &v19[16 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = v24;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10640(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_E65E4();
  sub_10D78();
  sub_E7854();
  v17[0] = v3;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = 0;
  v17[1] = sub_E65A4();
  v17[2] = v6;
  v7 = &_swiftEmptyArrayStorage;
LABEL_2:
  v8 = &v17[2 * v5];
  while (++v5 != 3)
  {
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10)
    {
      v11 = *(v9 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22FBC(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_22FBC((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
  swift_arrayDestroy();
  v15 = sub_10C40(v7);

  return v15;
}

uint64_t sub_107C8(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1081C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_E6974();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = a3;
  v39[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v14 = *a2;
  v38 = &_swiftEmptySetSingleton;
  sub_48FC(v39, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA58, &qword_E9BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E150, &qword_E9BF0);
  if (swift_dynamicCast())
  {
    sub_4524(&v33, v37);
    v36[0] = v14;
    v15 = sub_103AC(v37);
    sub_3D918(v15);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_110AC(&v33, &qword_12DA60, &qword_E9BF8);
  }

  sub_48FC(v39, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E160, &qword_E9C00);
  if (swift_dynamicCast())
  {
    sub_4524(&v33, v37);
    v36[0] = v14;
    v16 = sub_10640(v37);
    sub_3D918(v16);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_110AC(&v33, &qword_12DA68, &qword_E9C08);
  }

  v17 = v38;

  v18 = sub_422A0(v17, v14);

  v19 = sub_3DA1C(v18);
  v21 = v20;

  if (!v21)
  {
    sub_E6914();
    sub_48FC(v39, v37);
    v22 = sub_E6964();
    v23 = sub_E74B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[1] = a4;
      v26 = v9;
      v27 = v25;
      *&v33 = v25;
      *v24 = 136315138;
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      sub_E7994();
      v32[0] = v8;
      v28 = v36[0];
      v29 = v36[1];
      __swift_destroy_boxed_opaque_existential_1(v37);
      v30 = sub_23E64(v28, v29, &v33);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_0, v22, v23, "Unable to find original identifier for entity, this may result in the entity being discarded: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);

      (*(v26 + 8))(v12, v32[0]);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    sub_E7994();
    v19 = v37[0];
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  return v19;
}

uint64_t sub_10C40(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_E73C4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_BEB48(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _s18ChannelEntityQueryVwet(uint64_t *a1, int a2)
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

uint64_t _s18ChannelEntityQueryVwst(uint64_t result, int a2, int a3)
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

unint64_t sub_10D78()
{
  result = qword_12DA40;
  if (!qword_12DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DA40);
  }

  return result;
}

uint64_t sub_10DCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_E73C4();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_BEF78(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10EA0(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    sub_4ABC(0, a2, a3);
    sub_10FF8(a4, a2, a3);
    result = sub_E73C4();
    v16 = result;
    if (v10)
    {
      break;
    }

    v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v14 = sub_E79B4();
      }

      else
      {
        if (a2 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v14 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v16;
      a5(&v15, v14);

      ++a2;
      if (v10 == v13)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_E7AC4();
  }

  a4 = result;
  v13 = sub_E7AC4();
  result = a4;
  if (v13)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10FF8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4ABC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_110AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1110C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_E7424();
  if (!v26)
  {
    return sub_E7254();
  }

  v48 = v26;
  v52 = sub_E7A54();
  v39 = sub_E7A64();
  sub_E7A04(v48);
  result = sub_E73F4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_E7444();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_E7A44();
      result = sub_E7434();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t LibraryEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_E6014();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_11608, 0, 0);
}

uint64_t sub_11608()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v16 = v0[4];
  v0[11] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_E65D4();
  v7 = sub_E6004();
  (*(v1 + 8))(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DFE0, &qword_EABA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_E87F0;

  *(v8 + 32) = sub_E6284();
  v9 = objc_allocWithZone(sub_E6134());
  v10 = sub_E6114();
  v0[12] = v10;
  v11 = swift_task_alloc();
  v0[13] = v11;
  v11[2] = v5;
  v11[3] = v3;
  v11[4] = v10;
  v11[5] = v7;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  v0[14] = v13;
  swift_getAssociatedTypeWitness();
  v14 = sub_E7284();
  v0[15] = v14;
  *v13 = v0;
  v13[1] = sub_11844;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x80000000000F6740, sub_16A1C, v11, v14);
}

uint64_t sub_11844()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_11CCC;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_11960;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_11960()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  *(v0 + 24) = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v0 + 48);
  WitnessTable = swift_getWitnessTable();
  *(v0 + 136) = sub_1110C(sub_16A28, v4, v2, v3, &type metadata for Never, WitnessTable, &protocol witness table for Never, v6);

  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_11AA0;
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);

  return sub_16A48();
}

uint64_t sub_11AA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_11C58;
  }

  else
  {
    *(v4 + 160) = a1;

    v7 = sub_11BDC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_11BDC()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[20];

  return v4(v5);
}

uint64_t sub_11C58()
{
  v1 = v0[17];
  v2 = v0[12];

  v3 = v0[19];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_11CCC()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 128);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_11D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_E7284();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131CF0, &unk_EA7F0);
  v9 = sub_E72C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a3;
  (*(v10 + 32))(&v15[v14], v13, v9);
  sub_E6124();
}

uint64_t sub_11F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = [swift_unknownObjectRetain() itemsFor:a3];
    sub_E71F4();

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    v5 = sub_E7B24();

    if (v5)
    {
      sub_E7284();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131CF0, &unk_EA7F0);
      sub_E72C4();
      sub_E72B4();
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    sub_18814();
    swift_allocError();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_E7284();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131CF0, &unk_EA7F0);
  sub_E72C4();
  return sub_E72A4();
}

uint64_t sub_12190(uint64_t *a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_unknownObjectRetain();
  return sub_E65B4();
}

uint64_t LibraryEntityQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_12264, 0, 0);
}

uint64_t sub_12264()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = sub_10C40(v5);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v7 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v4, AssociatedTypeWitness);
  v8 = sub_126A4(v7, v3, v2);
  v10 = v9;
  v12 = v11;
  v0[8] = v8;
  v0[9] = v9;
  v0[10] = v11;

  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_12418;
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[3];

  return LibraryEntityQuery.findAndPrepareEntities(for:adamIDs:uuids:)(v8, v12, v10, v16, v14);
}

uint64_t sub_12418(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_12618;
  }

  else
  {
    v9 = v4[9];
    v8 = v4[10];
    v10 = v4[8];

    v4[13] = a1;
    v7 = sub_1255C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1255C()
{
  v1 = v0[13];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v9 = v0[6];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = LibraryEntityIDAligner.alignIdentifiers<A>(for:)(v1, v2, *(AssociatedConformanceWitness + 8));

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_12618()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];

  v5 = v0[12];
  v6 = v0[1];

  return v6();
}

uint64_t sub_126A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  sub_2727C(sub_1858C, v15, a1);
  if (!v4)
  {
    v5 = sub_E7224();
    v3 = v6;

    sub_10C40(v7);

    v8 = *(v5 + 16);
    if (v8)
    {
      v18 = &_swiftEmptyArrayStorage;
      sub_15D38(0, v8, 0);
      v9 = v18;
      v10 = v18[2];
      v11 = 32;
      do
      {
        v12 = *(v5 + v11);
        v18 = v9;
        v13 = v9[3];
        if (v10 >= v13 >> 1)
        {
          sub_15D38((v13 > 1), v10 + 1, 1);
          v9 = v18;
        }

        v9[2] = v10 + 1;
        v9[v10 + 4] = v12;
        v11 += 8;
        ++v10;
        --v8;
      }

      while (v8);
    }

    else
    {

      v9 = &_swiftEmptyArrayStorage;
    }

    sub_10DCC(v9);
  }

  return v3;
}

uint64_t LibraryEntityQuery.findAndPrepareEntities(for:adamIDs:uuids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_12914;

  return sub_12AFC(a1, a3, a2, a4, a5);
}

uint64_t sub_12914(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  v4[3] = a1;
  v4[4] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_12A48, 0, 0);
  }
}

uint64_t sub_12A48()
{
  v1 = v0[4];
  sub_E7384();
  if (v1)
  {
    v2 = v0[3];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[1];
    v6 = v0[3];

    return v5(v6);
  }
}

uint64_t sub_12AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_E6974();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return _swift_task_switch(sub_12BE8, 0, 0);
}

uint64_t sub_12BE8()
{
  v0[3] = v0[14];
  v0[2] = v0[13];
  v2 = v0[15];
  v1 = v0[16];

  v3 = sub_169A4();
  v0[24] = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_12D4C;
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v10 = v0[13];

  return sub_13C04(v11, v10, v8, v4, v9, v6);
}

uint64_t sub_12D4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_13A44;
  }

  else
  {

    v5 = sub_12E68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_12E68()
{
  v80 = v0;
  v1 = v0[27];
  v3 = v0[15];
  v2 = v0[16];
  v75 = v0[26];
  v77 = v0[14];
  v0[4] = v75;
  v4 = swift_task_alloc();
  *v4 = v3;
  v4[1] = v2;
  KeyPath = swift_getKeyPath();

  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[28] = AssociatedTypeWitness;
  v74 = AssociatedTypeWitness;
  v8 = sub_E7284();
  v0[29] = v8;
  v0[30] = swift_getWitnessTable();
  v9 = sub_E7174();

  sub_3DA98(v9);

  v0[5] = v75;
  v10 = swift_task_alloc();
  *v10 = v3;
  v10[1] = v2;
  v11 = swift_getKeyPath();

  v12 = swift_task_alloc();
  v12[2] = v3;
  v12[3] = v2;
  v12[4] = v11;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1110C(sub_16CD8, v12, v8, &type metadata for UInt64, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);

  if (*(v77 + 16))
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 32;
      do
      {
        sub_42AF4(*(v15 + v17));
        v17 += 8;
        --v16;
      }

      while (v16);
    }
  }

  v18 = v0[2];
  v0[31] = v18;
  v0[6] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_16D14(&qword_12DB70, &unk_12DF70, &qword_E9E80);
  if (sub_E7404() & 1) != 0 || (v0[7] = v0[3], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88), sub_16D14(&qword_12DAE8, &unk_12DF80, &qword_E9E88), (sub_E7404()))
  {
    sub_E7384();
    if (v1)
    {
      v19 = v0[26];

      v20 = v0[3];

      v22 = v0[22];
      v21 = v0[23];
      v24 = v0[20];
      v23 = v0[21];

      v25 = v0[1];

      return v25();
    }

    else
    {
      v27 = v0[23];
      sub_E6914();
      v28 = sub_E6964();
      v29 = sub_E7494();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Some entities are lingering, checking remote source for episode content.", v30, 2u);
      }

      v31 = v0[23];
      v32 = v0[18];
      v33 = v0[19];

      v34 = *(v33 + 8);
      v0[32] = v34;
      v34(v31, v32);
      v0[8] = v18;
      if (sub_E7404())
      {
        v35 = v0[22];
        sub_E6914();
        v36 = sub_E6964();
        v37 = sub_E74B4();
        v38 = os_log_type_enabled(v36, v37);
        v78 = v0[22];
        v39 = v0[18];
        v40 = v0[19];
        if (v38)
        {
          v41 = swift_slowAlloc();
          v79[0] = swift_slowAlloc();
          *v41 = 136315394;
          v0[11] = v74;
          swift_getMetatypeMetadata();
          v42 = sub_E7084();
          v76 = v39;
          v44 = sub_23E64(v42, v43, v79);

          *(v41 + 4) = v44;
          *(v41 + 12) = 2080;

          v45 = sub_E73B4();
          v47 = v46;

          v48 = sub_23E64(v45, v47, v79);

          *(v41 + 14) = v48;
          _os_log_impl(&dword_0, v36, v37, "Failed to find requested local entities (%s) with identifiers: %s", v41, 0x16u);
          swift_arrayDestroy();

          v50 = v76;
          v49 = v78;
        }

        else
        {

          v49 = v78;
          v50 = v39;
        }

        v34(v49, v50);
      }

      v65 = v0[16];
      v66 = v0[17];
      v67 = v0[15];
      v0[33] = v0[3];

      v69 = sub_273C0(v68);
      v0[34] = v69;
      v0[35] = 0;

      v70 = (*(v65 + 40))(v67, v65);
      v0[36] = v70;
      v71 = swift_task_alloc();
      v0[37] = v71;
      *v71 = v0;
      v71[1] = sub_135F0;
      v72 = v0[15];
      v73 = v0[16];

      return sub_17B58(v69, v70, v72, v73);
    }
  }

  else
  {
    v51 = v0[20];
    sub_E6914();
    v52 = sub_E6964();
    v53 = sub_E7494();
    v54 = os_log_type_enabled(v52, v53);
    v56 = v0[19];
    v55 = v0[20];
    v57 = v0[18];
    if (v54)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v52, v53, "Found episodes using local-only identifiers", v58, 2u);
    }

    (*(v56 + 8))(v55, v57);
    v59 = v0[26];
    v61 = v0[22];
    v60 = v0[23];
    v63 = v0[20];
    v62 = v0[21];

    v64 = v0[1];

    return v64(v59);
  }
}

uint64_t sub_135F0(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 304) = a1;

  return _swift_task_switch(sub_1372C, 0, 0);
}

uint64_t sub_1372C()
{
  v37 = v0;
  *(v0 + 72) = *(v0 + 304);
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  *(swift_task_alloc() + 16) = *(v0 + 120);
  v5 = sub_E7174();

  if (*(v2 + 16))
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 32;
      do
      {
        sub_42AF4(*(v5 + v7));
        v7 += 8;
        --v6;
      }

      while (v6);
    }
  }

  *(v0 + 80) = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88);
  sub_16D14(&qword_12DAE8, &unk_12DF80, &qword_E9E88);
  if (sub_E7404())
  {
    v8 = *(v0 + 168);
    sub_E6914();
    v9 = sub_E6964();
    v10 = sub_E74B4();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 256);
    v35 = *(v0 + 168);
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    if (v11)
    {
      v34 = *(v0 + 256);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v16;
      *v15 = 136315138;

      v17 = sub_E73B4();
      v19 = v18;

      v20 = sub_23E64(v17, v19, &v36);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_0, v9, v10, "Failed to find requested remote episodes with identifiers: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);

      v34(v35, v14);
    }

    else
    {

      v12(v35, v14);
    }
  }

  v21 = *(v0 + 304);
  v22 = *(v0 + 248);
  v23 = *(v0 + 224);
  v24 = *(v0 + 208);
  v25 = sub_E7234();

  v26 = *(v0 + 304);
  v27 = *(v0 + 208);
  v29 = *(v0 + 176);
  v28 = *(v0 + 184);
  v31 = *(v0 + 160);
  v30 = *(v0 + 168);

  v32 = *(v0 + 8);

  return v32(v25);
}

uint64_t sub_13A44()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8();
}

void sub_13AE8(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v6 = a1[1];
  v14 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_E6544();
  v7 = sub_169A4();
  if (v3)
  {

    *a2 = v3;
  }

  else
  {
    v8 = v7;
    v9 = sub_E6834();
    v11 = v10;
    v13 = v12;

    *a3 = v9;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
  }
}

uint64_t sub_13C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_E7724();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_13CD0, 0, 0);
}

uint64_t sub_13CD0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v20 = v0[6];
  v21 = v0[12];
  v18 = v0[5];
  v19 = v0[4];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAD8, &unk_E9E00);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_E6544();
  swift_getAssociatedTypeWitness();
  v5 = sub_188E0();
  v0[13] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_E9C10;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v6 + 32) = sub_E7544();
  *(v6 + 40) = (*(v1 + 48))(v18, v3, v1);
  *(v6 + 48) = (*(v1 + 56))(v19, v3, v1);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v8 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v5 setPredicate:v8];
  v9 = swift_allocObject();
  v0[14] = v9;
  v9[2] = v3;
  v9[3] = v1;
  v9[4] = v20;
  v9[5] = v5;
  v10 = sub_E7284();
  sub_1886C(v21);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v12 = v20;
  v13 = v5;
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_13FE0;
  v15 = v0[12];
  v16 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v15, sub_16C78, v9, v10);
}

uint64_t sub_13FE0()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_141E8;
  }

  else
  {
    v7 = sub_14174;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_14174()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_141E8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 128);

  return v2();
}

uint64_t sub_14254@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_E6554();
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_142E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_E65E4();
  *a3 = result;
  return result;
}

uint64_t sub_14374@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_E65E4();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1441C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_E7734();
  if (!v3)
  {
    v13[9] = result;
    v13[7] = result;
    v8 = swift_checkMetadataState();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = __chkstk_darwin(v8);
    v9 = sub_E7284();
    WitnessTable = swift_getWitnessTable();
    v12 = sub_1110C(sub_16C98, v13, v9, v8, &type metadata for Never, WitnessTable, &protocol witness table for Never, v11);

    *a3 = v12;
  }

  return result;
}

uint64_t sub_145C4(void **a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = v1;
  return sub_E6564();
}

uint64_t sub_14670(uint64_t *a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_unknownObjectRetain();
  return sub_E65B4();
}

uint64_t LibraryEntityQuery.fetchEntities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_E7324();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_147E4, 0, 0);
}

uint64_t sub_147E4()
{
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v1 = sub_E7774();
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_E7374();
  v5 = sub_E7764();
  v0[9] = v5;
  (*(v3 + 8))(v2, v4);

  v6 = v0[2];
  v7 = sub_E7224();
  v9 = v8;
  v11 = v10;
  v0[10] = v7;
  v0[11] = v8;
  v0[12] = v10;

  v12 = sub_10C40(v11);
  v0[13] = v12;

  v13 = *(v7 + 16);
  if (v13)
  {
    sub_15D38(0, v13, 0);
    v14 = (v7 + 32);
    v15 = _swiftEmptyArrayStorage[2];
    do
    {
      v17 = *v14++;
      v16 = v17;
      v18 = _swiftEmptyArrayStorage[3];
      if (v15 >= v18 >> 1)
      {
        sub_15D38((v18 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      _swiftEmptyArrayStorage[v15++ + 4] = v16;
      --v13;
    }

    while (v13);
  }

  v19 = sub_10DCC(_swiftEmptyArrayStorage);
  v0[14] = v19;

  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_14A44;
  v21 = v0[4];
  v22 = v0[5];
  v23 = v0[3];

  return sub_13C04(v9, v12, v19, v5, v23, v21);
}

uint64_t sub_14A44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_14E2C, 0, 0);
  }

  else
  {
    v8 = v4[13];
    v7 = v4[14];
    v10 = v4[11];
    v9 = v4[12];
    v11 = v4[10];

    v12 = swift_task_alloc();
    v4[18] = v12;
    *v12 = v6;
    v12[1] = sub_14C04;
    v13 = v4[3];
    v14 = v4[4];

    return sub_16A48();
  }
}

uint64_t sub_14C04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_14DB8;
  }

  else
  {
    *(v4 + 160) = a1;

    v7 = sub_14D40;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_14D40()
{
  v1 = v0[16];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];
  v5 = v0[20];

  return v4(v5);
}

uint64_t sub_14DB8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);

  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_14E2C()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = v0[17];
  v7 = v0[14];

  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t LibraryEntityQuery.artworkData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_E6974();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_E61A4();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v12 = sub_E5FD4();
  v4[19] = v12;
  v13 = *(v12 - 8);
  v4[20] = v13;
  v14 = *(v13 + 64) + 15;
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_1508C, 0, 0);
}

uint64_t sub_1508C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_16A60(v0[7], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[18], &unk_12DB10, &qword_EAC60);
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[18];
    v7 = v0[16];
    v8 = v0[13];

    v9 = v0[1];

    return v9(0, 0xF000000000000000);
  }

  else
  {
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[8];
    sub_16AD0(v0[18], v0[21]);
    v0[22] = (*(v11 + 40))(v13, v11);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
    v15 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_15248;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v14, v14);
  }
}

uint64_t sub_15248()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_15B74;
  }

  else
  {
    v4 = sub_15378;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_15378()
{
  v1 = v0[21];
  v2 = v0[17];
  sub_E5FA4();
  v4 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v5 = async function pointer to ImageProvider.data(for:)[1];
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_15444;
  v7 = v0[17];

  return ImageProvider.data(for:)(v7, v4, v3);
}

uint64_t sub_15444(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 200);
  v8 = *v3;

  if (v2)
  {

    v9 = sub_15654;
  }

  else
  {
    *(v6 + 208) = a2;
    *(v6 + 216) = a1;
    v9 = sub_1557C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1557C()
{
  v1 = v0[21];
  (*(v0[15] + 8))(v0[17], v0[14]);
  sub_16B34(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v0[13];

  v9 = v0[1];

  return v9(v3, v2);
}

uint64_t sub_15654()
{
  v1 = v0[17];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_E6174();
  v5 = v4;
  v7 = v6;
  v8 = *(&async function pointer to ImageProvider.placeholderData(with:) + 1);
  v9 = swift_task_alloc();
  v0[28] = v9;
  *v9 = v0;
  v9[1] = sub_1572C;
  v10.n128_u64[0] = v5;
  v11.n128_u64[0] = v7;

  return ImageProvider.placeholderData(with:)(v2, v3, v10, v11);
}

uint64_t sub_1572C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 224);
  v8 = *v3;

  if (v2)
  {

    v9 = sub_1593C;
  }

  else
  {
    *(v6 + 232) = a2;
    *(v6 + 240) = a1;
    v9 = sub_15864;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_15864()
{
  v1 = v0[21];
  (*(v0[15] + 8))(v0[17], v0[14]);
  sub_16B34(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v0[13];

  v9 = v0[1];

  return v9(v3, v2);
}

uint64_t sub_1593C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  sub_E6914();
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_E6964();
  v7 = sub_E74B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  if (v8)
  {
    v26 = v0[14];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = sub_E6184();
    v15 = *(v10 + 8);
    v15(v9, v26);
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_0, v6, v7, "Episode entity was unable to prepare artwork or placeholder for %@.", v12, 0xCu);
    sub_110AC(v13, &unk_12DB20, &unk_F0760);
  }

  else
  {

    v15 = *(v10 + 8);
    v15(v9, v11);
  }

  v16 = v0[21];
  v17 = v0[17];
  v18 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v15(v17, v18);
  sub_16B34(v16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v19 = v0[21];
  v20 = v0[17];
  v21 = v0[18];
  v22 = v0[16];
  v23 = v0[13];

  v24 = v0[1];

  return v24(0, 0xF000000000000000);
}

uint64_t sub_15B74()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[13];
  sub_16B34(v0[21]);

  v5 = v0[1];
  v6 = v0[24];

  return v5();
}

uint64_t sub_15C20(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_15C6C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_15CA4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

char *sub_15D18(char *a1, int64_t a2, char a3)
{
  result = sub_15EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_15D38(char *a1, int64_t a2, char a3)
{
  result = sub_15FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_15D58(char *a1, int64_t a2, char a3)
{
  result = sub_160F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_15D78(size_t a1, int64_t a2, char a3)
{
  result = sub_164A4(a1, a2, a3, *v3, &qword_12DA90, &qword_E9DA8, type metadata accessor for ChannelEntity);
  *v3 = result;
  return result;
}

char *sub_15DBC(char *a1, int64_t a2, char a3)
{
  result = sub_16214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_15DDC(size_t a1, int64_t a2, char a3)
{
  result = sub_164A4(a1, a2, a3, *v3, &qword_12DAB8, &qword_E9DD8, type metadata accessor for StationEntity);
  *v3 = result;
  return result;
}

void *sub_15E20(void *a1, int64_t a2, char a3)
{
  result = sub_16348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_15E40(size_t a1, int64_t a2, char a3)
{
  result = sub_164A4(a1, a2, a3, *v3, &qword_12DA88, &qword_E9DA0, type metadata accessor for EpisodeEntity);
  *v3 = result;
  return result;
}

size_t sub_15E84(size_t a1, int64_t a2, char a3)
{
  result = sub_164A4(a1, a2, a3, *v3, &qword_12DA80, &qword_E9D98, type metadata accessor for ShowEntity);
  *v3 = result;
  return result;
}

size_t sub_15EC8(size_t a1, int64_t a2, char a3)
{
  result = sub_16680(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_15EE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_15FF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAE0, &qword_E9E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_160F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAB0, &qword_E9DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_16214(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAD0, &unk_E9DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_16348(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAC0, &unk_E9DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAC8, &qword_EA550);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_164A4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_16680(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA8, &unk_E9DC0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_16870(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA98, &unk_E9DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA0, &unk_F59F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_169A4()
{
  v1 = sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v2 = sub_E7774();
  if (!v0)
  {
    v3 = v2;
    v1 = sub_E7754();
  }

  return v1;
}

uint64_t sub_16A28(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_12190(a1);
}

uint64_t sub_16A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_E5FD4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16B34(uint64_t a1)
{
  v2 = sub_E5FD4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_16B94()
{
  result = qword_12DA78;
  if (!qword_12DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DA78);
  }

  return result;
}

uint64_t sub_16C38()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_16C78@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1441C(v1[2], v1[3], a1);
}

uint64_t sub_16C98(void **a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_145C4(a1);
}

__n128 sub_16CCC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_16D14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_16D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = swift_getAssociatedTypeWitness();
  v4[13] = swift_getAssociatedConformanceWitness();
  v4[14] = swift_getAssociatedTypeWitness();
  v5 = sub_E6324();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v14 = sub_E5FE4();
  v4[24] = v14;
  v15 = *(v14 - 8);
  v4[25] = v15;
  v16 = *(v15 + 64) + 15;
  v4[26] = swift_task_alloc();
  v17 = sub_E6084();
  v4[27] = v17;
  v18 = *(v17 - 8);
  v4[28] = v18;
  v19 = *(v18 + 64) + 15;
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_170B4, 0, 0);
}

uint64_t sub_170B4()
{
  v1 = v0[26];
  v23 = v0[29];
  v2 = v0[24];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[12];
  v10 = v0[13];
  v22 = v0[8];
  (*(v0[25] + 104))();
  v0[30] = swift_checkMetadataState();
  sub_E65D4();
  v11 = sub_E6014();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  v12 = sub_E60A4();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = sub_E6034();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = sub_E6024();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = sub_E6094();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = sub_E59C4();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);

  sub_AF0E8(&_swiftEmptyArrayStorage);
  sub_AF0E8(&_swiftEmptyArrayStorage);
  sub_AF2D0(&_swiftEmptyArrayStorage);
  sub_AF4B8(&_swiftEmptyArrayStorage);
  sub_AF5BC(&_swiftEmptyArrayStorage);
  sub_AF5BC(&_swiftEmptyArrayStorage);
  sub_AF7A4(&_swiftEmptyArrayStorage);
  sub_AF98C(&_swiftEmptyArrayStorage);
  sub_AFB74(&_swiftEmptyArrayStorage);
  sub_AFD5C(&_swiftEmptyArrayStorage);
  sub_E6074();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  v0[31] = v19;
  *v19 = v0;
  v19[1] = sub_17490;
  v20 = v0[9];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v17, v17);
}

uint64_t sub_17490()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_17970;
  }

  else
  {
    v3 = sub_175A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_175A4()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = async function pointer to MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)[1];
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_17674;
  v4 = v0[29];
  v5 = v0[17];
  v6 = v0[14];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v5, v4);
}

uint64_t sub_17674()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_17A60;
  }

  else
  {
    v3 = sub_17788;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_17788()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v17 = *(v0 + 216);
  v18 = *(v0 + 232);
  v19 = *(v0 + 208);
  v20 = *(v0 + 184);
  v21 = *(v0 + 176);
  v22 = *(v0 + 168);
  v23 = *(v0 + 160);
  v24 = *(v0 + 152);
  v25 = *(v0 + 144);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v16 = *(v0 + 80);
  v8 = sub_E6314();
  (*(v5 + 8))(v4, v6);
  *(v0 + 56) = v8;
  v9 = swift_task_alloc();
  *(v9 + 16) = v16;
  *(v9 + 32) = v2;
  v10 = sub_E7284();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1110C(sub_18568, v9, v10, v2, &type metadata for Never, WitnessTable, &protocol witness table for Never, v12);

  (*(v3 + 8))(v18, v17);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_17970()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_17A60()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[34];
  v2 = v0[29];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_17B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_E68B4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = sub_E6874();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v11 = sub_E68A4();
  v4[16] = v11;
  v12 = *(v11 - 8);
  v4[17] = v12;
  v13 = *(v12 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_17D28, 0, 0);
}

uint64_t sub_17D28()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  sub_E6884();
  sub_E6884();
  sub_E6894();
  sub_E6844();
  v6 = *(v4 + 8);
  v0[22] = v6;
  v0[23] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = sub_E6894();
  v8 = sub_E7674();
  if (sub_E77F4())
  {
    v9 = v0[15];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v7, v8, v11, "LibraryAppIntentMediaAPIFetch", "", v10, 2u);
  }

  v12 = v0[21];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[11];

  (*(v17 + 16))(v15, v14, v16);
  v18 = sub_E68F4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[24] = sub_E68E4();
  v21 = *(v17 + 8);
  v0[25] = v21;
  v0[26] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v14, v16);
  v6(v12, v13);
  v22 = swift_task_alloc();
  v0[27] = v22;
  *v22 = v0;
  v22[1] = sub_17F40;
  v23 = v0[4];
  v24 = v0[5];
  v26 = v0[2];
  v25 = v0[3];

  return sub_16D68(v26, v25, v23, v24);
}

uint64_t sub_17F40(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_182D4;
  }

  else
  {
    v5 = sub_18054;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_18054()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[13];
  sub_E6884();
  v4 = sub_E6894();
  sub_E68D4();
  v5 = sub_E7664();
  if (sub_E77F4())
  {
    v6 = v0[24];
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[7];

    sub_E6904();

    if ((*(v9 + 88))(v7, v8) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[7] + 8))(v0[9], v0[6]);
      v10 = "SUCCESS";
    }

    v39 = v0[25];
    v40 = v0[26];
    v20 = v0[24];
    v41 = v0[22];
    v42 = v0[23];
    v21 = v0[19];
    v22 = v0[16];
    v23 = v0[13];
    v24 = v0[10];
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v4, v5, v26, "LibraryAppIntentMediaAPIFetch", v10, v25, 2u);

    v39(v23, v24);
    v41(v21, v22);
  }

  else
  {
    v12 = v0[25];
    v11 = v0[26];
    v14 = v0[23];
    v13 = v0[24];
    v15 = v0[22];
    v16 = v0[19];
    v17 = v0[16];
    v18 = v0[13];
    v19 = v0[10];

    v12(v18, v19);
    v15(v16, v17);
  }

  v43 = v0[28];
  v28 = v0[20];
  v27 = v0[21];
  v30 = v0[18];
  v29 = v0[19];
  v32 = v0[14];
  v31 = v0[15];
  v34 = v0[12];
  v33 = v0[13];
  v35 = v0[8];
  v36 = v0[9];

  v37 = v0[1];

  return v37(v43);
}

uint64_t sub_182D4()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[12];
  sub_E6884();
  v4 = sub_E6894();
  sub_E68D4();
  v5 = sub_E7664();
  if (sub_E77F4())
  {
    v6 = v0[24];
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];

    sub_E6904();

    if ((*(v8 + 88))(v7, v9) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[7] + 8))(v0[8], v0[6]);
      v10 = "FAILURE";
    }

    v11 = v0[12];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v4, v5, v13, "LibraryAppIntentMediaAPIFetch", v10, v12, 2u);
  }

  v14 = v4;
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[23];
  v36 = v0[29];
  v37 = v0[24];
  v18 = v0[22];
  v19 = v0[18];
  v20 = v0[16];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[4];
  v38 = v0[5];

  v16(v21, v22);
  v18(v19, v20);
  swift_getAssociatedTypeWitness();
  v39 = sub_E7254();

  v25 = v0[20];
  v24 = v0[21];
  v27 = v0[18];
  v26 = v0[19];
  v29 = v0[14];
  v28 = v0[15];
  v31 = v0[12];
  v30 = v0[13];
  v32 = v0[8];
  v33 = v0[9];

  v34 = v0[1];

  return v34(v39);
}

uint64_t sub_1854C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_14374(a1);
}

uint64_t sub_18568(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_14670(a1);
}

void sub_1858C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  sub_13AE8(a1, a2, a3);
}

uint64_t sub_185B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_E7284();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131CF0, &unk_EA7F0);
  v3 = sub_E72C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_186DC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v5 = v2[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_E7284();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131CF0, &unk_EA7F0);
  v7 = *(*(sub_E72C4() - 8) + 80);
  v8 = v2[4];

  return sub_11F30(a1, a2, v8);
}

unint64_t sub_18814()
{
  result = qword_12DAF0;
  if (!qword_12DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DAF0);
  }

  return result;
}

uint64_t sub_1886C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v3 = sub_E7724();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t LocalLibraryEntityQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_E7324();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_189F4, 0, 0);
}

uint64_t sub_189F4()
{
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v1 = sub_E7774();
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_E7374();
  v5 = sub_E7764();
  v0[9] = v5;
  (*(v3 + 8))(v2, v4);

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_18B64;
  v7 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v9 = v0[3];

  return LocalLibraryEntityQuery.entities(for:in:)(v10, v5, v9, v7);
}

uint64_t sub_18B64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_18CFC;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_18C8C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_18C8C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 96);

  return v2(v3);
}

uint64_t sub_18CFC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t LocalLibraryEntityQuery.entities(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_18D90, 0, 0);
}

uint64_t sub_18D90()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];

  v0[7] = sub_10C40(v4);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v6 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v3, AssociatedTypeWitness);
  v0[9] = v6;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_18ED0;
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return sub_1BCB4(v6, v10, v8, v9);
}

uint64_t sub_18ED0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 72);
  v8 = *v2;
  v5[11] = a1;
  v5[12] = a2;

  v9 = swift_task_alloc();
  v5[13] = v9;
  *v9 = v8;
  v9[1] = sub_1908C;
  v10 = v5[6];
  v11 = v5[5];
  v12 = v5[4];
  v13 = v5[3];

  return sub_192F8(a1, a2, v13, v12, v11);
}

uint64_t sub_1908C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_19280;
  }

  else
  {
    v8 = v4[11];
    v9 = v4[12];

    v4[15] = a1;
    v7 = sub_191C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_191C4()
{
  v1 = v0[15];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v9 = v0[7];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = LibraryEntityIDAligner.alignIdentifiers<A>(for:)(v1, v2, *(AssociatedConformanceWitness + 8));

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_19280()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_192F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = sub_E6974();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_193C0, 0, 0);
}

uint64_t sub_193C0()
{
  v0[2] = v0[7];

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1946C;
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  return sub_19A08(v7, v6, v4, v5, v2);
}

uint64_t sub_1946C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_198B8;
  }

  else
  {
    v5 = sub_19580;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_19580()
{
  v30 = v0;
  v1 = v0[17];
  v3 = v0[9];
  v2 = v0[10];
  v0[3] = v0[16];
  v4 = swift_task_alloc();
  *v4 = v3;
  v4[1] = v2;
  KeyPath = swift_getKeyPath();

  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_E7284();
  swift_getWitnessTable();
  v8 = sub_E7174();

  sub_3DA98(v8);

  v0[4] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_1BFDC();
  if (sub_E7404())
  {
    v9 = v0[14];
    sub_E6914();
    v10 = sub_E6964();
    v11 = sub_E74B4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    if (v12)
    {
      v28 = v0[14];
      v16 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v16 = 136315394;
      v0[5] = AssociatedTypeWitness;
      swift_getMetatypeMetadata();
      v17 = sub_E7084();
      v19 = sub_23E64(v17, v18, v29);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;

      v20 = sub_E73B4();
      v22 = v21;

      v23 = sub_23E64(v20, v22, v29);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_0, v10, v11, "Failed to find requested local entities (%s) with identifiers: %s", v16, 0x16u);
      swift_arrayDestroy();

      (*(v13 + 8))(v28, v15);
    }

    else
    {

      (*(v13 + 8))(v14, v15);
    }
  }

  v24 = v0[14];

  v25 = v0[1];
  v26 = v0[16];

  return v25(v26);
}

uint64_t sub_198B8()
{
  v1 = v0[14];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_19928@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_E6544();
  v5 = sub_E6834();
  v7 = v6;
  LOBYTE(v3) = v8;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_19A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_E7724();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_19AD0, 0, 0);
}

uint64_t sub_19AD0()
{
  v1 = v0[7];
  v21 = v0[8];
  v2 = v0[6];
  v22 = v0[5];
  v23 = v0[11];
  v4 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAD8, &unk_E9E00);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_E6544();
  swift_getAssociatedTypeWitness();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_1BC5C();
  v0[12] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_E9EE0;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v7 + 32) = sub_E7544();
  *(v7 + 40) = (*(v1 + 40))(v3, v2, v1);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v9 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v6 setPredicate:v9];
  v10 = swift_allocObject();
  v0[13] = v10;
  v10[2] = v2;
  v10[3] = v1;
  v10[4] = v22;
  v10[5] = v6;
  v11 = sub_E7284();
  v12 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v13 = sub_E7724();
  (*(*(v13 - 8) + 104))(v23, v12, v13);
  v14 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v15 = v22;
  v16 = v6;
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = sub_19E0C;
  v18 = v0[11];
  v19 = v0[5];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v18, sub_1BF7C, v10, v11);
}

uint64_t sub_19E0C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1A014;
  }

  else
  {
    v7 = sub_19FA0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_19FA0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1A014()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_1A080@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_E6554();
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_1A110@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_E7734();
  if (!v3)
  {
    v13[9] = result;
    v13[7] = result;
    v8 = swift_checkMetadataState();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = __chkstk_darwin(v8);
    v9 = sub_E7284();
    WitnessTable = swift_getWitnessTable();
    v12 = sub_1110C(sub_1BF9C, v13, v9, v8, &type metadata for Never, WitnessTable, &protocol witness table for Never, v11);

    *a3 = v12;
  }

  return result;
}

uint64_t sub_1A2B8(void **a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = v1;
  return sub_E6564();
}

uint64_t LocalLibraryEntityQuery.fetchEntities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_E7324();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1A428, 0, 0);
}

uint64_t sub_1A428()
{
  v1 = v0[6];
  v0[10] = (*(v0[5] + 32))(v0[4]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1A504;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_1A504()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1A99C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1A620;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1A620()
{
  v1 = v0[2];
  v2 = v0[12];
  v3 = v0[9];
  swift_getObjectType();
  sub_6C94();
  v4 = sub_E7764();
  v0[13] = v4;
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v2)
  {
    (*(v6 + 8))(v5, v7);
    swift_unknownObjectRelease();
    v8 = v0[9];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[3];
    (*(v6 + 8))(v5, v7);
    swift_unknownObjectRelease();
    v12 = sub_E7224();
    v14 = v13;
    v16 = v15;
    v0[14] = v12;
    v0[15] = v13;
    v0[16] = v15;

    v17 = sub_10C40(v16);
    v0[17] = v17;

    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_1A7D4;
    v19 = v0[5];
    v20 = v0[6];
    v21 = v0[4];

    return sub_19A08(v14, v17, v4, v21, v19);
  }
}

uint64_t sub_1A7D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_1AA08;
  }

  else
  {
    v9 = v4[16];
    v8 = v4[17];
    v11 = v4[14];
    v10 = v4[15];

    v4[20] = a1;
    v7 = sub_1A928;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1A928()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2(v3);
}

uint64_t sub_1A99C()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AA08()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = v0[19];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t LocalLibraryEntityQuery.artworkData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_E6974();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_E61A4();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v12 = sub_E5FD4();
  v4[19] = v12;
  v13 = *(v12 - 8);
  v4[20] = v13;
  v14 = *(v13 + 64) + 15;
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_1AC60, 0, 0);
}

uint64_t sub_1AC60()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_16A60(v0[7], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[18], &unk_12DB10, &qword_EAC60);
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[18];
    v7 = v0[16];
    v8 = v0[13];

    v9 = v0[1];

    return v9(0, 0xF000000000000000);
  }

  else
  {
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[8];
    sub_16AD0(v0[18], v0[21]);
    v0[22] = (*(v11 + 32))(v13, v11);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
    v15 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_15248;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v14, v14);
  }
}

uint64_t LocalLibraryEntityQuery.search(for:property:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = sub_E7724();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v11 = sub_E7324();
  v7[14] = v11;
  v12 = *(v11 - 8);
  v7[15] = v12;
  v13 = *(v12 + 64) + 15;
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_1AF44, 0, 0);
}

uint64_t sub_1AF44()
{
  v1 = v0[10];
  v0[17] = (*(v0[9] + 32))(v0[8]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1B020;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_1B020()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1B7BC;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_1B13C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1B13C()
{
  v1 = v0[2];
  v2 = v0[19];
  v3 = v0[16];
  swift_getObjectType();
  sub_6C94();
  v4 = sub_E7764();
  v0[20] = v4;
  if (v2)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    swift_unknownObjectRelease();
    v5 = v0[16];
    v6 = v0[13];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v4;
    v10 = v0[9];
    v34 = v10;
    v35 = v0[13];
    v11 = v0[6];
    v31 = v0[7];
    v12 = v0[5];
    v32 = v0[4];
    v33 = v0[8];
    (*(v0[15] + 8))(v0[16], v0[14]);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAD8, &unk_E9E00);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_E6544();
    swift_getAssociatedTypeWitness();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = sub_1BC5C();
    v0[21] = v14;
    sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_E9EF0;
    *(v15 + 56) = &type metadata for String;
    v16 = sub_1BE80();
    *(v15 + 32) = v11;
    *(v15 + 40) = v31;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v16;
    *(v15 + 64) = v16;
    *(v15 + 72) = v32;
    *(v15 + 80) = v12;

    v17 = sub_E7454();
    v0[22] = v17;
    [v14 setPredicate:v17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_E9F00;
    v19 = objc_allocWithZone(NSSortDescriptor);
    v20 = sub_E7024();
    v21 = [v19 initWithKey:v20 ascending:1];

    *(v18 + 32) = v21;
    sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
    isa = sub_E71E4().super.isa;

    [v14 setSortDescriptors:isa];

    v23 = swift_allocObject();
    v0[23] = v23;
    v23[2] = v33;
    v23[3] = v34;
    v23[4] = v9;
    v23[5] = v14;
    v24 = sub_E7284();
    v25 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v26 = sub_E7724();
    (*(*(v26 - 8) + 104))(v35, v25, v26);
    v27 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v9;
    v28 = v14;
    v29 = swift_task_alloc();
    v0[24] = v29;
    *v29 = v0;
    v29[1] = sub_1B5CC;
    v30 = v0[13];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v30, sub_1BF14, v23, v24);
  }
}

uint64_t sub_1B5CC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[23];
    (*(v2[12] + 8))(v2[13], v2[11]);

    return _swift_task_switch(sub_1B724, 0, 0);
  }
}

uint64_t sub_1B724()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);

  v5 = *(v0 + 24);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1B7BC()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B834@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = sub_E6974();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v11 = sub_E7734();
  if (v3)
  {
    sub_E6914();
    swift_errorRetain();
    v12 = sub_E6964();
    v13 = sub_E74B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v14 = 136315138;
      v28 = v3;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
      v15 = sub_E7084();
      v17 = a3;
      v18 = sub_23E64(v15, v16, &v29);

      *(v14 + 4) = v18;
      a3 = v17;
      _os_log_impl(&dword_0, v12, v13, "Unable to search for podcasts: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    (*(v26 + 8))(v10, v27);
    swift_checkMetadataState();
    v19 = sub_E7254();
  }

  else
  {
    v27 = &v25;
    v29 = v11;
    __chkstk_darwin(v11);
    *(&v25 - 2) = a1;
    *(&v25 - 1) = a2;
    v21 = sub_E7284();
    v22 = swift_checkMetadataState();
    WitnessTable = swift_getWitnessTable();
    v19 = sub_1110C(sub_1BF5C, (&v25 - 4), v21, v22, &type metadata for Never, WitnessTable, &protocol witness table for Never, v24);
  }

  *a3 = v19;
  return result;
}

uint64_t sub_1BBB0(void **a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = v1;
  return sub_E6564();
}

id sub_1BC5C()
{
  v1 = sub_E7024();

  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1BCD8, 0, 0);
}

uint64_t sub_1BCD8()
{
  v23 = v0;
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_15D58(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = v0[4];
      v4 = v0[5];
      v6 = v0[3];
      v7 = *v3;
      v22[0] = *(v3 - 1);
      v22[1] = v7;

      sub_19928(v22, &v20);

      v8 = v20;
      v9 = v21;
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        v19 = v20;
        sub_15D58((v10 > 1), v11 + 1, 1);
        v8 = v19;
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[3 * v11];
      *(v12 + 2) = v8;
      *(v12 + 48) = v9;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_E7224();
  v14 = v13;

  v16 = sub_10C40(v15);
  swift_bridgeObjectRelease_n();

  v17 = v0[1];

  return v17(v14, v16);
}

unint64_t sub_1BE80()
{
  result = qword_12DB40;
  if (!qword_12DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DB40);
  }

  return result;
}

uint64_t sub_1BED4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1BF14@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1B834(*(v1 + 16), *(v1 + 24), a1);
}

uint64_t sub_1BF5C(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1BBB0(a1);
}

uint64_t sub_1BF7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1A110(v1[2], v1[3], a1);
}

uint64_t sub_1BF9C(void **a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1A2B8(a1);
}

__n128 sub_1BFD0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1BFDC()
{
  result = qword_12DB70;
  if (!qword_12DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_12DF70, &qword_E9E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DB70);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15PodcastsActions10QueryErrorO(uint64_t a1)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1C0BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1C100(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}