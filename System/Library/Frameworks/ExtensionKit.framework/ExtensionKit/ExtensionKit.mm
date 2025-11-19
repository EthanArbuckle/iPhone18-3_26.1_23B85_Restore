uint64_t sub_1D29CDE08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D29CDE28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D29CDE54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CDEA8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29CDF14()
{
  MEMORY[0x1D38A60B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CDF4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CDFC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CDFFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CE050()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29CE09C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CE15C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D29FFD78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D29CE188()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D29CE20C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1D29E8374;
  a2[1] = v5;
}

id sub_1D29CE280(uint64_t a1, id *a2)
{
  if (*a1)
  {
    v2 = *(*a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return [*a2 setSession_];
}

uint64_t sub_1D29CE2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29FFE08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D29CE364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D29FFE08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D29CE420()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CE458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D29CE4F0()
{
  MEMORY[0x1D38A60B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CE538()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CE574()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29CE5AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CE60C()
{
  MEMORY[0x1D38A60B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CE654()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CE690(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ExtensionHostingViewControllerRepresentable(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1D29CE73C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ExtensionHostingViewControllerRepresentable(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D29CE814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29FFE08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D29CE8D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D29FFE08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D29CE98C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29CE9CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1D29CEA24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 configuration];
  *a2 = result;
  return result;
}

uint64_t sub_1D29CEA7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for _EXHostViewController.Configuration() + 28));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1D29CEAF4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1D29F6E50;
  a2[1] = v5;
}

id sub_1D29CEB68(uint64_t a1, id *a2)
{
  if (*a1)
  {
    v2 = *(*a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return [*a2 setSession_];
}

uint64_t sub_1D29CEB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29FFE08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D29CEC4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D29FFE08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D29CED08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CED4C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29CED84()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D29CEDC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CEDFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CEE68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D29CEEBC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1D29CEF00@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

void sub_1D29D2684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location, id a50, uint64_t a51, char a52)
{
  objc_destroyWeak(&a42);
  objc_destroyWeak(&a48);
  objc_destroyWeak(&a47);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a50);
  _Block_object_dispose(&a52, 8);
  objc_destroyWeak((v52 - 208));
  objc_destroyWeak((v52 - 200));
  _Block_object_dispose((v52 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D29D30A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __copy_constructor_8_8_t0w16_s16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t __move_assignment_8_8_t0w16_s16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  v3 = *(a1 + 16);
  *(a1 + 16) = v2;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t *OUTLINED_FUNCTION_7@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D29D8A64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D29D8A84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL sub_1D29D8AE0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D29D8B44()
{
  v1 = *v0;
  v2 = sub_1D2A003E8();
  v3 = MEMORY[0x1D38A5320](v2);

  return v3;
}

uint64_t sub_1D29D8B80()
{
  v1 = *v0;
  sub_1D2A003E8();
  sub_1D2A00428();
}

uint64_t sub_1D29D8BD4()
{
  v1 = *v0;
  sub_1D2A003E8();
  sub_1D2A00738();
  sub_1D2A00428();
  v2 = sub_1D2A00748();

  return v2;
}

uint64_t sub_1D29D8C50(uint64_t a1, id *a2)
{
  result = sub_1D2A003C8();
  *a2 = 0;
  return result;
}

uint64_t sub_1D29D8CC8(uint64_t a1, id *a2)
{
  v3 = sub_1D2A003D8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D29D8D48@<X0>(uint64_t *a1@<X8>)
{
  sub_1D2A003E8();
  v2 = sub_1D2A003B8();

  *a1 = v2;
  return result;
}

uint64_t sub_1D29D8D98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1D2A003E8();
  v6 = v5;
  if (v4 == sub_1D2A003E8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D2A00708();
  }

  return v9 & 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1D29D8E68(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1D29D8EB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D2A003B8();

  *a2 = v5;
  return result;
}

uint64_t sub_1D29D8EFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D2A003E8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D29D8F28(uint64_t a1)
{
  v2 = sub_1D29D9028(&qword_1EC700A88);
  v3 = sub_1D29D9028(&unk_1EC700A90);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D29D9028(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D29D90C0(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers))
  {
    v3 = *(v1 + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers);

    v4 = sub_1D2A00498();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1D2A003B8();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = *(v1 + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_options);
  v7 = sub_1D2A003B8();
  [a1 encodeInteger:v6 forKey:v7];
}

id sub_1D29D9378()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXAppExtensionBrowserViewControllerConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D29D93E0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers;
  *&v2[OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700BE0, ":h");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D2A03430;
  *(v5 + 32) = sub_1D29D95F8(0, &qword_1EC700BE8, 0x1E695DEC8);
  *(v5 + 40) = sub_1D29D95F8(0, &qword_1EC700BF0, 0x1E696AEC0);
  sub_1D2A005E8();

  if (!v14[3])
  {
    sub_1D29D9640(v14);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700C00, &qword_1D2A03498);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v14[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700C08, &qword_1D2A034A0);
  v6 = swift_dynamicCast();
  v7 = v12;
  if (!v6)
  {
    v7 = 0;
  }

LABEL_8:
  v8 = *&v2[v4];
  *&v2[v4] = v7;

  v9 = sub_1D2A003B8();
  v10 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_options] = v10;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for _EXAppExtensionBrowserViewControllerConfiguration();
  return objc_msgSendSuper2(&v13, sel_init);
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

uint64_t sub_1D29D95F8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D29D9640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700BF8, &qword_1D2A03490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D29D96A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_1D29DB948;
  a3[1] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  a3[2] = sub_1D29DB940;
  a3[3] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  a3[4] = sub_1D29DB944;
  a3[5] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  a3[6] = sub_1D29DB93C;
  a3[7] = v9;
  return swift_bridgeObjectRetain_n();
}

uint64_t static _AppExtension<>.main()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v5 = *(v23 + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v22 - v7;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2A00598();
  sub_1D29D9A60();
  v14 = sub_1D2A00608();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = a3;
    v17 = v16;
    *v15 = 138412290;
    type metadata accessor for _EXRunningUIExtension(0);
    v18 = sub_1D29FFC98();
    *(v15 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_1D29CC000, v14, v13, "Launching UI _AppExtension %@", v15, 0xCu);
    sub_1D29DB7F4(v17, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v17, -1, -1);
    MEMORY[0x1D38A6000](v15, -1, -1);
  }

  sub_1D29FFE48();
  type metadata accessor for _EXRunningUIExtension(0);
  v19 = sub_1D29FFC98();
  v20 = AssociatedTypeWitness;
  type metadata accessor for _UIAppExtensionWrapper();
  sub_1D29FFE38();
  sub_1D29DAD30(v8);
  (*(v23 + 8))(v8, v20);
  sub_1D29FFC68();

  return (*(v9 + 8))(v12, a1);
}

{
  v24 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v5 = *(v23 + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v22 - v7;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2A00598();
  sub_1D29D9A60();
  v14 = sub_1D2A00608();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = a3;
    v17 = v16;
    *v15 = 138412290;
    type metadata accessor for _EXRunningUIExtension(0);
    v18 = sub_1D29FFC98();
    *(v15 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_1D29CC000, v14, v13, "Launching UI _AppExtension for scene configuration %@", v15, 0xCu);
    sub_1D29DB7F4(v17, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v17, -1, -1);
    MEMORY[0x1D38A6000](v15, -1, -1);
  }

  sub_1D29FFE48();
  type metadata accessor for _EXRunningUIExtension(0);
  v19 = sub_1D29FFC98();
  v20 = AssociatedTypeWitness;
  type metadata accessor for _UIAppExtensionSceneConfigWrapper();
  sub_1D29FFE38();
  sub_1D29F1B68(v8);
  (*(v23 + 8))(v8, v20);
  sub_1D29FFC68();

  return (*(v9 + 8))(v12, a1);
}

unint64_t sub_1D29D9A60()
{
  result = qword_1ED8477D0[0];
  if (!qword_1ED8477D0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED8477D0);
  }

  return result;
}

uint64_t sub_1D29D9ACC(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v10 - v7, &v1[*((v5 & v4) + 0x60)], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700D80, "nX");
  if (swift_dynamicCast())
  {
    sub_1D29DAEB8(v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v8 = sub_1D29FFFA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1D29DB7F4(v10, &unk_1EC701610, &qword_1D2A03570);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D29D9C54(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_1D29D9ACC(v4);

  return a1 & 1;
}

id sub_1D29D9CA4(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v36 = v4;
  (*(v3 + 8))(v45);
  v6 = *v45;
  v7 = *&v45[8];
  v37 = a1;
  v8 = [a1 role];
  v9 = sub_1D2A003E8();
  v11 = v10;

  *&v41 = v6;
  *(&v41 + 1) = v7;
  *v40 = v9;
  *&v40[8] = v11;
  sub_1D29EB2D4(v40, v45);
  v46 = *&v45[8];
  v47 = *&v45[24];
  v48 = *&v45[40];
  v12 = *v45;
  v49 = *&v45[56];
  if (*v45)
  {
    v13 = sub_1D2A00598();
    sub_1D29D9A60();
    v14 = sub_1D2A00608();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v15 = 136315394;
      *v40 = v12;
      *&v40[8] = *&v45[8];
      *&v40[24] = *&v45[24];
      *&v40[40] = *&v45[40];
      *&v40[56] = *&v45[56];
      v43 = *&v45[32];
      v44 = *&v45[48];
      v41 = *v45;
      v42 = *&v45[16];
      sub_1D29DB798(&v41, v39);
      v16 = sub_1D2A003F8();
      v18 = sub_1D29F87C4(v16, v17, &v38);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = sub_1D29F87C4(v9, v11, &v38);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1D29CC000, v14, v13, "Using %s for requested role %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A6000](v35, -1, -1);
      MEMORY[0x1D38A6000](v15, -1, -1);
    }

    else
    {
    }

    v32 = sub_1D29DB67C();
    *&v41 = v36;
    *(&v41 + 1) = &type metadata for _AnyViewConfiguration;
    *&v42 = v3;
    *(&v42 + 1) = v32;
    type metadata accessor for _UIAppExtensionWrapper._Scene();
    *v39 = v12;
    *&v39[8] = v46;
    *&v39[24] = v47;
    *&v39[40] = v48;
    *&v39[56] = v49;
    *&v40[32] = *&v45[32];
    *&v40[48] = *&v45[48];
    *v40 = *v45;
    *&v40[16] = *&v45[16];
    sub_1D29DB798(v40, &v41);
    v33 = [v37 parameters];
    v31 = sub_1D29DB594(v39, v33);

    v41 = *v39;
    v42 = *&v39[16];
    v43 = *&v39[32];
    v44 = *&v39[48];
    sub_1D29DB6F8(&v41);
    sub_1D29DB7F4(v45, &qword_1EC700D98, &qword_1D2A03578);
  }

  else
  {
    v20 = sub_1D2A005A8();
    sub_1D29D9A60();
    v21 = sub_1D2A00608();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v41 = v23;
      *v22 = 136315138;

      v24 = sub_1D29F87C4(v9, v11, &v41);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_1D29CC000, v21, v20, "No configuration found for requested role %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1D38A6000](v23, -1, -1);
      MEMORY[0x1D38A6000](v22, -1, -1);
    }

    v25 = sub_1D29DB67C();
    *&v41 = v36;
    *(&v41 + 1) = &type metadata for _AnyViewConfiguration;
    *&v42 = v3;
    *(&v42 + 1) = v25;
    type metadata accessor for _UIAppExtensionWrapper._Scene();
    if (qword_1EC700920 != -1)
    {
      swift_once();
    }

    v26 = swift_allocObject();
    *(v26 + 16) = v9;
    *(v26 + 24) = v11;
    v27 = swift_allocObject();
    *(v27 + 16) = v9;
    *(v27 + 24) = v11;
    v28 = swift_allocObject();
    *(v28 + 16) = v9;
    *(v28 + 24) = v11;
    v29 = swift_allocObject();
    *(v29 + 16) = v9;
    *(v29 + 24) = v11;
    *v40 = sub_1D29DB6D0;
    *&v40[8] = v26;
    *&v40[16] = sub_1D29DB6D4;
    *&v40[24] = v27;
    *&v40[32] = sub_1D29DB6E8;
    *&v40[40] = v28;
    *&v40[48] = sub_1D29DB6F0;
    *&v40[56] = v29;
    swift_bridgeObjectRetain_n();
    v30 = [v37 parameters];
    v31 = sub_1D29DB594(v40, v30);

    v41 = *v40;
    v42 = *&v40[16];
    v43 = *&v40[32];
    v44 = *&v40[48];
    sub_1D29DB6F8(&v41);
  }

  return v31;
}

id sub_1D29DA24C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D29D9CA4(v4);

  return v6;
}

id sub_1D29DA2AC()
{
  v0 = sub_1D29DB5F0();

  return v0;
}

void sub_1D29DA2E0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1D29DA33C(a3);
}

uint64_t sub_1D29DA33C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D29DA36C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v10 - v7, &v1[*((v5 & v4) + 0x78)], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700D80, "nX");
  if (swift_dynamicCast())
  {
    sub_1D29DAEB8(v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v8 = sub_1D29FFFA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1D29DB7F4(v10, &unk_1EC701610, &qword_1D2A03570);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D29DA4F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_1D29DA36C(v4);

  return a1 & 1;
}

void sub_1D29DA544(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  sub_1D29DB61C();
}

id sub_1D29DA5AC()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UIAppExtensionWrapper._Scene();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t sub_1D29DA624(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *(*(*((v4 & v3) + 0x58) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x78);

  return v5(v6);
}

void sub_1D29DA6E0(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1D29DB64C();
}

id sub_1D29DA720()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UIAppExtensionWrapper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D29DA7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  v8 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700D80, "nX");
  if (swift_dynamicCast())
  {
    sub_1D29DAEB8(v5, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v3 = sub_1D29FFFA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1D29DB7F4(v5, &unk_1EC701610, &qword_1D2A03570);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1D29DA8D0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1D29DA91C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1D29DA954(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

void sub_1D29DA9C8()
{
  sub_1D2A00598();
  sub_1D29D9A60();
  v0 = sub_1D2A00608();
  sub_1D29FFFD8();
}

id sub_1D29DAA48(_BYTE *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v30 = *MEMORY[0x1E69E7D40] & *v1;
  v7 = *((v6 & v4) + 0x50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28[-v13];
  v15 = sub_1D2A00598();
  sub_1D29D9A60();
  v16 = sub_1D2A00608();
  v17 = *(v8 + 16);
  v31 = a1;
  v32 = v17;
  v17(v14, a1, v7);
  v29 = v15;
  if (os_log_type_enabled(v16, v15))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315138;
    v32(v12, v14, v7);
    v20 = sub_1D2A003F8();
    v22 = v21;
    (*(v8 + 8))(v14, v7);
    v23 = sub_1D29F87C4(v20, v22, &v33);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1D29CC000, v16, v29, "Creating _UIAppExtensionWrapper with content %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v24 = v19;
    v5 = MEMORY[0x1E69E7D40];
    MEMORY[0x1D38A6000](v24, -1, -1);
    MEMORY[0x1D38A6000](v18, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v14, v7);
  }

  v32(v2 + *((*v5 & *v2) + 0x60), v31, v7);
  v25 = *(v30 + 88);
  v26 = type metadata accessor for _UIAppExtensionWrapper();
  v34.receiver = v2;
  v34.super_class = v26;
  return objc_msgSendSuper2(&v34, sel_init);
}

id sub_1D29DAD30(_BYTE *a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for _UIAppExtensionWrapper());
  return sub_1D29DAA48(a1);
}

uint64_t sub_1D29DAD6C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D29DAE00(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D29DAEB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1D29DAF14(char *a1, void *a2)
{
  v3 = v2;
  v61 = a2;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v68 = *MEMORY[0x1E69E7D40] & v5;
  v7 = *((v6 & v5) + 0x58);
  v69 = *((v6 & v5) + 0x68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC700DA0, &unk_1D2A03580);
  v63 = sub_1D2A00098();
  v9 = *(*(v63 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v63);
  v65 = &v56 - v11;
  v67 = AssociatedTypeWitness;
  v66 = *(AssociatedTypeWitness - 8);
  v12 = *(v66 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v64 = &v56 - v14;
  v15 = *(v7 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - v20;
  v22 = v6 & v5;
  v23 = a1;
  v62 = *(v22 + 112);
  *&v3[v62] = 0;
  v24 = sub_1D2A00598();
  v60 = sub_1D29D9A60();
  v25 = sub_1D2A00608();
  v26 = *(v15 + 16);
  v26(v21, a1, v7);
  v58 = v24;
  if (os_log_type_enabled(v25, v24))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v59 = v26;
    v29 = v28;
    v71[0] = v28;
    *v27 = 136315138;
    v59(v19, v21, v7);
    v30 = sub_1D2A003F8();
    v57 = a1;
    v32 = v31;
    (*(v15 + 8))(v21, v7);
    v33 = sub_1D29F87C4(v30, v32, v71);
    v23 = v57;

    *(v27 + 4) = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v34 = v29;
    v26 = v59;
    MEMORY[0x1D38A6000](v34, -1, -1);
    MEMORY[0x1D38A6000](v27, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v21, v7);
  }

  v26(&v3[*((*MEMORY[0x1E69E7D40] & *v3) + 0x78)], v23, v7);
  v35 = [v61 initializationParametersPromise];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1D2A00598();
    v38 = sub_1D2A00608();
    if (os_log_type_enabled(v38, v37))
    {
      v39 = swift_slowAlloc();
      v61 = v7;
      v40 = v39;
      v41 = swift_slowAlloc();
      v70 = v36;
      v71[0] = v41;
      *v40 = 136315138;
      v42 = v36;
      v43 = sub_1D2A003F8();
      v45 = sub_1D29F87C4(v43, v44, v71);

      *(v40 + 4) = v45;
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x1D38A6000](v41, -1, -1);
      v7 = v61;
      MEMORY[0x1D38A6000](v40, -1, -1);
    }

    v71[0] = v36;
    (*(v69 + 40))(v71, v7);
  }

  v46 = v69;
  v47 = v64;
  (*(v69 + 32))(v7, v69);
  v48 = v67;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = sub_1D29DB89C();
  v73 = AssociatedConformanceWitness;
  v74 = v50;
  swift_getWitnessTable();
  sub_1D2A00168();
  v71[0] = sub_1D2A002E8();
  sub_1D2A00218();
  sub_1D2A002B8();

  v51 = sub_1D2A00148();
  (*(v66 + 8))(v47, v48);
  v52 = *&v3[v62];
  *&v3[v62] = v51;

  v53 = *(v68 + 96);
  v71[0] = *(v68 + 80);
  v71[1] = v7;
  v71[2] = v53;
  v71[3] = v46;
  v54 = type metadata accessor for _UIAppExtensionWrapper._Scene();
  v72.receiver = v3;
  v72.super_class = v54;
  return objc_msgSendSuper2(&v72, sel_init);
}

id sub_1D29DB594(char *a1, void *a2)
{
  v7 = *(v2 + 80);
  v8 = *(v2 + 96);
  v5 = objc_allocWithZone(type metadata accessor for _UIAppExtensionWrapper._Scene());
  return sub_1D29DAF14(a1, a2);
}

unint64_t sub_1D29DB67C()
{
  result = qword_1EC700D90;
  if (!qword_1EC700D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC700D90);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1D29DB7F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

unint64_t sub_1D29DB89C()
{
  result = qword_1EC700DA8;
  if (!qword_1EC700DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC700DA0, &unk_1D2A03580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC700DA8);
  }

  return result;
}

uint64_t sub_1D29DB900@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void sub_1D29DB960()
{
  sub_1D2A00598();
  sub_1D29D9A60();
  v0 = sub_1D2A00608();
  sub_1D29FFFD8();
}

void _ViewScene.consume(initializationParameters:)()
{
  sub_1D2A00598();
  sub_1D29D9A60();
  v0 = sub_1D2A00608();
  sub_1D29FFFD8();
}

uint64_t _ContentViewScene.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EC700918 != -1)
  {
    swift_once();
  }

  v10 = unk_1EC701320;
  *a5 = qword_1EC701318;
  a5[1] = v10;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;
  a5[2] = sub_1D29DD354;
  a5[3] = v11;
}

uint64_t sub_1D29DBB30@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v17 = a4;
  v18 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = *(v6 + 16);
  v16(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *(v6 + 32);
  v10(v9 + v8, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  (v16)(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18, a2);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v10(v11 + v8, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v10(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18, a2);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  result = (v10)(v12 + v8, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v14 = v17;
  *v17 = sub_1D29DD1B0;
  v14[1] = v9;
  v14[2] = sub_1D29DD1EC;
  v14[3] = v11;
  v14[4] = sub_1D29DD2D8;
  v14[5] = v12;
  return result;
}

void *_ContentViewScene.init<A>(role:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = a1[1];
  *a6 = *a1;
  a6[1] = v11;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a2;
  result[5] = a3;
  a6[2] = sub_1D29DD354;
  a6[3] = result;
  return result;
}

void *_ContentViewScene.init<A>(id:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a3;
  result[5] = a4;
  a7[2] = sub_1D29DC894;
  a7[3] = result;
  return result;
}

double sub_1D29DBE1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  sub_1D29DBB30(v10, a2, a3, v13);
  v11 = v13[1];
  *a4 = v13[0];
  a4[1] = v11;
  result = *&v14;
  a4[2] = v14;
  return result;
}

uint64_t _ConfigurationScene.init(main:scenes:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1D29DAEB8(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t _ConfigurationScene.init(scenes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D29FFF98();
  v5 = MEMORY[0x1E6966C88];
  a2[3] = v4;
  a2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(a2);
  result = sub_1D29FFF88();
  a2[5] = a1;
  return result;
}

Swift::Bool __swiftcall _ConfigurationScene.shouldAccept(connection:)(NSXPCConnection connection)
{
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_1D29FFFB8() & 1;
}

uint64_t sub_1D29DBF9C()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return sub_1D29FFFB8() & 1;
}

NSObject_optional __swiftcall _ConfigurationScene._makeScene(with:)(NSObject with)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = [v2 role];
  v26 = v3;
  v5 = *(v1 + 40);
  v6 = *(v5 + 16);
  v7 = sub_1D29DCCC8;
  v8 = sub_1D29DB950;
  v9 = sub_1D29DB6D4;
  if (v6)
  {
    v25 = v2;
    v10 = 0;
    v11 = (v5 + 56);
    while (v10 < *(v5 + 16))
    {
      v13 = *(v11 - 3);
      v12 = *(v11 - 2);
      v15 = *(v11 - 1);
      v14 = *v11;
      if (v13 == sub_1D2A003E8() && v12 == v16)
      {

LABEL_13:

        v15(v27, v21);

        v7 = v27[4];
        v6 = v27[5];
        v8 = v27[2];
        v20 = v27[3];
        v9 = v27[0];
        v19 = v27[1];
LABEL_14:
        v2 = v25;
        goto LABEL_15;
      }

      v18 = sub_1D2A00708();

      if (v18)
      {
        goto LABEL_13;
      }

      ++v10;

      v11 += 4;
      v7 = sub_1D29DCCC8;
      v8 = sub_1D29DB950;
      v9 = sub_1D29DB6D4;
      if (v6 == v10)
      {
        v19 = 0;
        v20 = 0;
        v6 = 0;
        v13 = 0;
        v12 = 0;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v13 = 0;
    v12 = 0;
LABEL_15:
    v28[0] = v9;
    v28[1] = v19;
    v28[2] = v8;
    v28[3] = v20;
    v28[4] = v7;
    v28[5] = v6;

    v22 = [v2 parameters];
    v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700E18, &qword_1D2A035A0));
    v24 = sub_1D29DC9C4(v28, v22);

    sub_1D29DCC84(v13, v12);

    v3 = v24;
  }

  result.value.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t static _SceneBuilder.buildBlock(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D29FFF98();
  v5 = MEMORY[0x1E6966C88];
  a2[3] = v4;
  a2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1D29FFF88();
  a2[5] = a1;
}

uint64_t static _SceneBuilder.buildBlock(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D29DCCCC(a1, a3);
  *(a3 + 40) = a2;
}

id sub_1D29DC3C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _ViewSceneFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D29DC410()
{
  v0 = sub_1D29DD154();

  return v0;
}

void sub_1D29DC444(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1D29DC4A0(a3);
}

uint64_t sub_1D29DC4A0(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D29DC4D0(uint64_t a1)
{
  v2 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  return v2(a1, v3) & 1;
}

uint64_t sub_1D29DC554(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_1D29DC4D0(v4);

  return a1 & 1;
}

void sub_1D29DC5A4(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1D29DD180();
}

id sub_1D29DC5E4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _ViewSceneAdaptor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D29DC654(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x68);

  return v5(v6);
}

uint64_t sub_1D29DC710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(a3 + 24))(a2, a3);
  swift_getAssociatedConformanceWitness();
  return sub_1D2A00318();
}

uint64_t sub_1D29DC7FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1D29DC82C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1D29DC858(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *a1;
  return v2(&v5);
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

uint64_t sub_1D29DC918()
{
  if (qword_1EC700920 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC701340;
  v1 = *algn_1EC701348;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700EB0, "r]");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D2A03590;

  sub_1D29D96A8(v0, v1, (v2 + 32));
  return v2;
}

id sub_1D29DC9C4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  *(v3 + v6) = 0;
  v7 = (v3 + *((*v5 & *v3) + 0x68));
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 16);
  *v7 = *a1;
  v7[1] = v13;
  v7[2] = *(a1 + 32);

  v14 = [a2 initializationParametersPromise];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D2A00598();
    sub_1D29D9A60();
    v17 = sub_1D2A00608();
    if (os_log_type_enabled(v17, v16))
    {
      buf = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *buf = 136315138;
      v18 = v15;
      v19 = sub_1D2A003F8();
      v21 = v6;
      v22 = sub_1D29F87C4(v19, v20, &v30);

      *(buf + 4) = v22;
      v6 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1D38A6000](v28, -1, -1);
      MEMORY[0x1D38A6000](buf, -1, -1);
    }

    v30 = v15;
    v11(&v30);
  }

  v23 = v9();

  v30 = v23;
  sub_1D2A00318();
  sub_1D2A00178();

  objc_opt_self();
  v24 = swift_dynamicCastObjCClassUnconditional();
  v25 = *(v3 + v6);
  *(v3 + v6) = v24;

  v29.receiver = v3;
  v29.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700E18, &qword_1D2A035A0);
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t sub_1D29DCC84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D29DCCCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for _EmptyViewScene(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for _EmptyViewScene(_WORD *result, int a2, int a3)
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

uint64_t sub_1D29DCE68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D29DCEB0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D29DCF14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D29DCF5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D29DCFDC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D29DD094(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D29DD0DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D29DD2D8(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v5 = *a1;
  return (*(v2 + 40))(&v5);
}

id sub_1D29DD3B8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for _EXRunningUIExtension(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D29DD3FC()
{
  v1 = CFRunLoopGetMain();
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_1D29DF724;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D29ECA40;
    aBlock[3] = &block_descriptor_35;
    v4 = _Block_copy(aBlock);
    v5 = v0;

    v6 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0, v4);
    _Block_release(v4);
    v7 = qword_1ED847918;
    qword_1ED847918 = v6;

    CFRunLoopAddObserver(v2, v6, *MEMORY[0x1E695E8D0]);
    getpid();
    return memorystatus_control();
  }

  else
  {
    result = sub_1D2A006A8();
    __break(1u);
  }

  return result;
}

void sub_1D29DD570()
{
  v0 = sub_1D2A00008();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v5 = sub_1D29FFFF8();
  v6 = sub_1D2A00598();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D29CC000, v5, v6, "Pinging launchd", v7, 2u);
    MEMORY[0x1D38A6000](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_1D29FFCD8();
  v8 = sub_1D29FFCE8();
  v8();
  v9 = qword_1ED847918;
  qword_1ED847918 = 0;
}

id sub_1D29DD720()
{
  v0 = sub_1D2A003B8();

  return v0;
}

uint64_t sub_1D29DD760(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  if (a5)
  {
    sub_1D29FFC38();
    v13 = sub_1D29FFC48();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_1D29FFC48();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  v16 = a4;
  v17 = a1;
  sub_1D29DE898(a4, v12);

  return sub_1D29DF638(v12);
}

uint64_t sub_1D29DD8C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D29DD950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2A00348();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D2A00368();
  v70 = *(v72 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2A00008();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v75 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v77 = &v68 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v76 = &v68 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v68 - v23;
  sub_1D29FFFE8();
  v25 = sub_1D29FFFF8();
  v26 = sub_1D2A00598();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v11;
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1D29CC000, v25, v26, "Bootstrapping _UIViewServiceSessionManager", v28, 2u);
    v29 = v28;
    v11 = v27;
    MEMORY[0x1D38A6000](v29, -1, -1);
  }

  v30 = *(v12 + 8);
  v30(v24, v11);
  [objc_opt_self() startViewServiceSessionWithDelegate_];
  type metadata accessor for _EXRunningUIExtension(0);
  v31 = sub_1D29FFCE8();
  result = v31(a1, a2);
  if (!result)
  {
    v33 = v11;
    sub_1D29FFCB8();
    sub_1D29FFFE8();
    v34 = sub_1D29FFFF8();
    v35 = sub_1D2A00598();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D29CC000, v34, v35, "Configuring internal mach service listener", v36, 2u);
      MEMORY[0x1D38A6000](v36, -1, -1);
    }

    v30(v22, v33);
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1D29DF4D4;
    *(v38 + 24) = v37;
    v82 = sub_1D29DF510;
    v83 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1D29EE4E8;
    v81 = &block_descriptor_8;
    v39 = _Block_copy(&aBlock);
    v40 = objc_opt_self();

    v41 = v40;
    v42 = [v40 listenerWithConfigurator_];
    _Block_release(v39);

    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if ((v39 & 1) == 0)
    {
      [v42 activate];
      sub_1D29FFFE8();
      v43 = sub_1D29FFFF8();
      v44 = sub_1D2A00598();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1D29CC000, v43, v44, "Checking in with launchd", v45, 2u);
        MEMORY[0x1D38A6000](v45, -1, -1);
      }

      v30(v76, v33);
      v46 = CFRunLoopGetMain();
      if (!v46)
      {
        goto LABEL_15;
      }

      v47 = v46;
      v48 = swift_allocObject();
      *(v48 + 16) = v3;
      v82 = sub_1D29DF518;
      v83 = v48;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_1D29ECA40;
      v81 = &block_descriptor_14;
      v49 = _Block_copy(&aBlock);
      v3 = v3;

      v50 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0, v49);
      _Block_release(v49);
      v51 = qword_1ED847918;
      qword_1ED847918 = v50;

      CFRunLoopAddObserver(v47, v50, *MEMORY[0x1E695E8D0]);
      getpid();
      memorystatus_control();
      sub_1D29FFFE8();
      v52 = sub_1D29FFFF8();
      v53 = sub_1D2A00598();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1D29CC000, v52, v53, "Configuring service listener", v54, 2u);
        MEMORY[0x1D38A6000](v54, -1, -1);
      }

      v30(v77, v33);
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      *(v56 + 16) = sub_1D29DF520;
      *(v56 + 24) = v55;
      v82 = sub_1D29DF744;
      v83 = v56;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_1D29EE4E8;
      v81 = &block_descriptor_22;
      v57 = _Block_copy(&aBlock);

      v42 = [v41 listenerWithConfigurator_];
      _Block_release(v57);

      LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

      if ((v57 & 1) == 0)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
LABEL_15:
    sub_1D2A006A8();
    __break(1u);
LABEL_16:
    [v42 activate];
    sub_1D29D95F8(0, &qword_1EC7013E0, 0x1E69E9610);
    v58 = sub_1D2A005C8();
    v59 = swift_allocObject();
    *(v59 + 16) = v3;
    v82 = sub_1D29DF558;
    v83 = v59;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1D29DE600;
    v81 = &block_descriptor_28;
    v60 = _Block_copy(&aBlock);
    v61 = v3;

    v62 = v69;
    sub_1D2A00358();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D29DF57C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700FB8, &qword_1D2A03828);
    sub_1D29DF5D4();
    v63 = v71;
    v64 = v74;
    sub_1D2A00658();
    MEMORY[0x1D38A5470](0, v62, v63, v60);
    _Block_release(v60);

    (*(v73 + 8))(v63, v64);
    (*(v70 + 8))(v62, v72);
    sub_1D29FFFE8();
    v65 = sub_1D29FFFF8();
    v66 = sub_1D2A00598();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1D29CC000, v65, v66, "Resuming service listener", v67, 2u);
      MEMORY[0x1D38A6000](v67, -1, -1);
    }

    v30(v75, v33);
    result = [objc_opt_self() activateXPCService];
    __break(1u);
  }

  return result;
}

void sub_1D29DE410(void *a1)
{
  v2 = sub_1D2A00008();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1D2A003B8();
    [a1 setDomain_];

    v10 = sub_1D2A003B8();
    [a1 setService_];

    [a1 setDelegate_];
  }

  else
  {
    sub_1D29FFFE8();
    v11 = sub_1D29FFFF8();
    v12 = sub_1D2A005A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D29CC000, v11, v12, "Could not find _EXRunningUIKitSceneHostedExtension when configuring listener", v13, 2u);
      MEMORY[0x1D38A6000](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1D29DE600(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_1D29DE644(char *a1)
{
  *&a1[qword_1EC700F20] = 0;
  *&a1[qword_1EC700F28] = 0;
  *&a1[qword_1EC700F30] = 0;
  v2.receiver = a1;
  v2.super_class = type metadata accessor for _EXRunningUIViewServiceExtension(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_1D29DE6AC()
{
  v1 = *(v0 + qword_1EC700F30);
}

id sub_1D29DE714(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D29DE754(uint64_t a1)
{
  v2 = *(a1 + qword_1EC700F30);
}

id sub_1D29DE7B8(void *a1)
{
  [a1 setActivateOnResume];

  return [a1 setFaultOnSuspend];
}

void sub_1D29DE800(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1D29DEFA0(v6, v7);

  swift_unknownObjectRelease();
}

void sub_1D29DE898(void *a1, uint64_t a2)
{
  v65 = a1;
  v4 = sub_1D2A00008();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  v10 = *(*(v66 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v66);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v64 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v64 - v20;
  v22 = [objc_opt_self() sharedInstance];
  sub_1D29DF6A0(a2, v21);
  v23 = sub_1D29FFC48();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = sub_1D29FFC28();
  (*(v24 + 8))(v21, v23);
  v26 = [v22 sessionForIdentifier_];

  if (v26)
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v29 = v26;
      sub_1D29FFFE8();
      sub_1D29DF6A0(a2, v19);
      v30 = sub_1D29FFFF8();
      v31 = sub_1D2A00598();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v70 = v33;
        *v32 = 136315138;
        sub_1D29DF6A0(v19, v16);
        v34 = sub_1D2A003F8();
        v36 = v35;
        sub_1D29DF638(v19);
        v37 = sub_1D29F87C4(v34, v36, &v70);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_1D29CC000, v30, v31, "Received UI session %s root view controller from UIKit", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x1D38A6000](v33, -1, -1);
        MEMORY[0x1D38A6000](v32, -1, -1);
      }

      else
      {

        sub_1D29DF638(v19);
      }

      (*(v68 + 8))(v9, v69);
      v2 = v65;
      if (v65)
      {
        objc_opt_self();
        v58 = swift_dynamicCastObjCClass();
        if (v58)
        {
          v59 = v58;
          v60 = v2;
          v61 = sub_1D29FFC58();
          [v59 setExtension_];

          [v28 setRootViewController_];
          return;
        }
      }

LABEL_16:
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_1D2A00678();

      v70 = 0xD000000000000025;
      v71 = 0x80000001D2A07C40;
      v72 = v2;
      v62 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700FE0, &unk_1D2A03840);
      v63 = sub_1D2A003F8();
      MEMORY[0x1D38A52F0](v63);

      MEMORY[0x1D38A52F0](96, 0xE100000000000000);
      sub_1D2A006A8();
      __break(1u);
      return;
    }
  }

  v38 = v67;
  sub_1D29FFFE8();
  sub_1D29DF6A0(a2, v13);
  v39 = v26;
  v40 = sub_1D29FFFF8();
  v41 = sub_1D2A005A8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v70 = v43;
    *v42 = 136315650;
    v72 = v26;
    v44 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700FD0, &qword_1D2A03838);
    v45 = sub_1D2A003F8();
    v47 = sub_1D29F87C4(v45, v46, &v70);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    sub_1D29DF6A0(v13, v16);
    v48 = sub_1D2A003F8();
    v50 = v49;
    sub_1D29DF638(v13);
    v51 = sub_1D29F87C4(v48, v50, &v70);

    *(v42 + 14) = v51;
    *(v42 + 22) = 2080;
    sub_1D29D95F8(0, &qword_1EC700FD8, off_1E8401738);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = NSStringFromClass(ObjCClassFromMetadata);
    v54 = sub_1D2A003E8();
    v56 = v55;

    v57 = sub_1D29F87C4(v54, v56, &v70);

    *(v42 + 24) = v57;
    swift_arrayDestroy();
    MEMORY[0x1D38A6000](v43, -1, -1);
    MEMORY[0x1D38A6000](v42, -1, -1);

    (*(v68 + 8))(v67, v69);
  }

  else
  {

    sub_1D29DF638(v13);
    (*(v68 + 8))(v38, v69);
  }
}

void sub_1D29DEFA0(void *a1, void *a2)
{
  v5 = sub_1D2A00008();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v48 = sub_1D29DE7B8;
  v49 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1D29EE4E8;
  v47 = &block_descriptor;
  v13 = _Block_copy(&aBlock);

  v14 = [a2 extractNSXPCConnectionWithConfigurator_];
  _Block_release(v13);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v40 = a1;
    v41 = v14;
    v42 = v5;
    v43 = v2;
    v15 = a2;
    v16 = [a2 service];
    v17 = sub_1D2A003E8();
    v19 = v18;

    if (v17 == 0x767265536E69614DLL && v19 == 0xEB00000000656369)
    {

      goto LABEL_6;
    }

    v20 = sub_1D2A00708();

    if (v20)
    {
LABEL_6:
      sub_1D29FFFE8();
      v21 = sub_1D29FFFF8();
      v22 = sub_1D2A00598();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D29CC000, v21, v22, "Received connection request on service listener", v23, 2u);
        MEMORY[0x1D38A6000](v23, -1, -1);
      }

      (*(v6 + 8))(v12, v42);
      v24 = v41;
      if (sub_1D29FFC78())
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v25 = [v15 service];
    v26 = sub_1D2A003E8();
    v28 = v27;

    if (v26 == 0x6C616E7265746E49 && v28 == 0xEF65636976726553)
    {

      goto LABEL_15;
    }

    v29 = sub_1D2A00708();

    if (v29)
    {
LABEL_15:
      sub_1D29FFFE8();
      v30 = sub_1D29FFFF8();
      v31 = sub_1D2A00598();
      v32 = os_log_type_enabled(v30, v31);
      v24 = v41;
      if (v32)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D29CC000, v30, v31, "Received scene session connection request on internal mach service listener", v33, 2u);
        MEMORY[0x1D38A6000](v33, -1, -1);
      }

      (*(v6 + 8))(v10, v42);
      v34 = sub_1D29FFC58();
      v35 = [objc_allocWithZone(_EXUISceneSession) initWithExtension_];

      LOBYTE(v34) = [v35 shouldAcceptXPCConnection_];
      if (v34)
      {
        goto LABEL_10;
      }

LABEL_9:
      [v15 invalidate];
LABEL_10:

      return;
    }
  }

  aBlock = 0;
  v45 = 0xE000000000000000;
  sub_1D2A00678();

  aBlock = 0xD000000000000030;
  v45 = 0x80000001D2A07B90;
  v36 = [v40 description];
  v37 = sub_1D2A003E8();
  v39 = v38;

  MEMORY[0x1D38A52F0](v37, v39);

  sub_1D2A006A8();
  __break(1u);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D29DF57C()
{
  result = qword_1EC700FB0;
  if (!qword_1EC700FB0)
  {
    sub_1D2A00348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC700FB0);
  }

  return result;
}

unint64_t sub_1D29DF5D4()
{
  result = qword_1EC700FC0;
  if (!qword_1EC700FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC700FB8, &qword_1D2A03828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC700FC0);
  }

  return result;
}

uint64_t sub_1D29DF638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D29DF6A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double AppExtensionManager.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D29F7868;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

id AppExtensionManagerScene.body.getter@<X0>(uint64_t (**a1)()@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for ExtensionPickerView.Model(0)) init];
  v2 = swift_allocObject();
  *(v2 + 16) = v6;
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  *a1 = sub_1D29F7B58;
  a1[1] = 0;
  a1[2] = 0x746C7561666564;
  a1[3] = 0xE700000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D29E3224;
  *(v4 + 24) = v2;
  a1[4] = sub_1D29E3288;
  a1[5] = v4;
  a1[6] = sub_1D29E322C;
  a1[7] = v3;

  return v6;
}

uint64_t sub_1D29DF890@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ExtensionPickerView.Model(0);
  sub_1D29E5DA8(&qword_1EC7010E0, type metadata accessor for ExtensionPickerView.Model);
  v4 = a1;
  result = sub_1D2A00068();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D29DF914(void *a1, uint64_t a2)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

id sub_1D29DF9A0@<X0>(uint64_t (**a1)()@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for ExtensionPickerView.Model(0)) init];
  v2 = swift_allocObject();
  *(v2 + 16) = v6;
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  *a1 = sub_1D29F7B58;
  a1[1] = 0;
  a1[2] = 0x746C7561666564;
  a1[3] = 0xE700000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D29E68EC;
  *(v4 + 24) = v2;
  a1[4] = sub_1D29E68E8;
  a1[5] = v4;
  a1[6] = sub_1D29E68F0;
  a1[7] = v3;

  return v6;
}

uint64_t sub_1D29DFABC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  return v1;
}

id sub_1D29DFB30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7010C8, &qword_1D2A03B98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtCV12ExtensionKit19ExtensionPickerViewP33_ABD14ED04C699754E7718E30E84C391A5Model__containerApps;
  v20 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701020, &qword_1D2A03928);
  sub_1D2A00028();
  (*(v3 + 32))(&v1[v7], v6, v2);
  type metadata accessor for _EXRunningUIExtension(0);
  v8 = sub_1D29FFC98();
  sub_1D29D95F8(0, &qword_1EC7010D0, 0x1E6963620);
  v9 = v8;
  v10 = sub_1D29FFC88();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_1D29DFD2C(v10, v12, v14, v16);
  objc_opt_self();
  *&v1[OBJC_IVAR____TtCV12ExtensionKit19ExtensionPickerViewP33_ABD14ED04C699754E7718E30E84C391A5Model_hostAppRecord] = swift_dynamicCastObjCClassUnconditional();
  v17 = type metadata accessor for ExtensionPickerView.Model(0);
  v19.receiver = v1;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_1D29DFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v9 error:v10];
  if (v4)
  {
    v5 = v10[0];
  }

  else
  {
    v6 = v10[0];
    sub_1D29FFB98();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1D29DFE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_1D29FFE98();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = sub_1D29FFE78();
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v11 = *(v10 + 64) + 15;
  v5[21] = swift_task_alloc();
  v12 = sub_1D29FFEA8();
  v5[22] = v12;
  v13 = *(v12 - 8);
  v5[23] = v13;
  v14 = *(v13 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v15 = sub_1D29FFBB8();
  v5[28] = v15;
  v16 = *(v15 - 8);
  v5[29] = v16;
  v17 = *(v16 + 64) + 15;
  v5[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D29E0050, 0, 0);
}

uint64_t sub_1D29E0050()
{
  v1 = *(*(v0 + 112) + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *(v0 + 184);
      v4 = ( + 40);
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = *(v0 + 208);
        v6 = *(v0 + 216);
        v8 = *(v0 + 176);
        v9 = *(v4 - 1);
        v10 = *v4;

        sub_1D29FFE68();
        (*(v3 + 16))(v7, v6, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D29E3874(0, v5[2] + 1, 1, v5, &qword_1EC7010C0, &qword_1D2A03B90, MEMORY[0x1E6966C40]);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = sub_1D29E3874(v11 > 1, v12 + 1, 1, v5, &qword_1EC7010C0, &qword_1D2A03B90, MEMORY[0x1E6966C40]);
        }

        v13 = *(v0 + 208);
        v14 = *(v0 + 176);
        (*(v3 + 8))(*(v0 + 216), v14);
        v5[2] = v12 + 1;
        (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
        v4 += 2;
        --v2;
      }

      while (v2);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

LABEL_22:
    *(v0 + 248) = v5;
    v27 = *(v0 + 168);
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 128);
    *(v0 + 80) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701098, &qword_1D2A03B80);
    sub_1D29E67A4(&qword_1EC7010A0, &qword_1EC701098, &qword_1D2A03B80);
    sub_1D2A00578();
    sub_1D29FFE88();
    (*(v29 + 8))(v28, v30);
    v31 = sub_1D29E5DA8(&qword_1EC7010A8, MEMORY[0x1E6966C20]);
    v32 = *(MEMORY[0x1E69E85A8] + 4);
    v33 = swift_task_alloc();
    *(v0 + 256) = v33;
    *v33 = v0;
    v33[1] = sub_1D29E062C;
    v34 = *(v0 + 168);
    v35 = *(v0 + 152);

    return MEMORY[0x1EEE6D8C8](v0 + 88, v35, v31);
  }

  v15 = *(v0 + 240);
  v37 = [objc_opt_self() enumeratorWithParentApplicationRecord_];
  sub_1D2A00588();
  sub_1D29FFBA8();
  if (!*(v0 + 40))
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_21:
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    goto LABEL_22;
  }

  v16 = *(v0 + 184);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D29E5DF0((v0 + 16), (v0 + 48));
    sub_1D29D95F8(0, &qword_1EC7010B8, 0x1E6963668);
    if (!swift_dynamicCast())
    {
      return sub_1D2A006A8();
    }

    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    v19 = *(v0 + 176);
    v20 = *(v0 + 104);
    sub_1D29FFE58();
    (*(v16 + 16))(v18, v17, v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1D29E3874(0, v5[2] + 1, 1, v5, &qword_1EC7010C0, &qword_1D2A03B90, MEMORY[0x1E6966C40]);
    }

    v22 = v5[2];
    v21 = v5[3];
    if (v22 >= v21 >> 1)
    {
      v5 = sub_1D29E3874(v21 > 1, v22 + 1, 1, v5, &qword_1EC7010C0, &qword_1D2A03B90, MEMORY[0x1E6966C40]);
    }

    v23 = *(v0 + 240);
    v25 = *(v0 + 192);
    v24 = *(v0 + 200);
    v26 = *(v0 + 176);

    (*(v16 + 8))(v24, v26);
    v5[2] = v22 + 1;
    (*(v16 + 32))(v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22, v25, v26);
    sub_1D29FFBA8();
    if (!*(v0 + 40))
    {
      goto LABEL_21;
    }
  }
}

uint64_t sub_1D29E062C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1D29E0A80;
  }

  else
  {
    v3 = sub_1D29E0740;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D29E0764()
{
  v1 = v0[34];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[35] = v2;
    *v2 = v0;
    v2[1] = sub_1D29E08C0;
    v3 = v0[15];

    return sub_1D29E0FE0(v1);
  }

  else
  {
    v5 = v0[30];
    v6 = v0[31];
    v8 = v0[26];
    v7 = v0[27];
    v10 = v0[24];
    v9 = v0[25];
    v11 = v0[18];
    (*(v0[20] + 8))(v0[21], v0[19]);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1D29E08C0()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *v0;

  v5 = sub_1D29E5DA8(&qword_1EC7010A8, MEMORY[0x1E6966C20]);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v1[32] = v7;
  *v7 = v4;
  v7[1] = sub_1D29E062C;
  v8 = v1[21];
  v9 = v1[19];

  return MEMORY[0x1EEE6D8C8](v1 + 11, v9, v5);
}

uint64_t sub_1D29E0A80()
{
  *(v0 + 96) = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7010B0, &qword_1D2A03B88);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D29E0B14, 0, 0);
}

uint64_t sub_1D29E0B14()
{
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[18];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v8 = v0[1];
  v9 = v0[33];

  return v8();
}

uint64_t sub_1D29E0BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701090, &qword_1D2A03B68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D29E6028(a3, v24 - v10, &qword_1EC701090, &qword_1D2A03B68);
  v12 = sub_1D2A00568();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D29DB7F4(v11, &qword_1EC701090, &qword_1D2A03B68);
  }

  else
  {
    sub_1D2A00558();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D2A004F8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D2A00408() + 32;

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

      sub_1D29DB7F4(a3, &qword_1EC701090, &qword_1D2A03B68);

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

  sub_1D29DB7F4(a3, &qword_1EC701090, &qword_1D2A03B68);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D29E0FE0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D29FFE08();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = sub_1D29FFF18();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D29E1108, 0, 0);
}

uint64_t sub_1D29E1108()
{
  v61 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v6 = MEMORY[0x1E69E7CC8];
LABEL_27:
    v0[12] = v6;
    v45 = *(v6 + 2);
    if (v45)
    {
      v46 = sub_1D29E3A50(*(v6 + 2), 0);
      v47 = sub_1D29E584C(&v60, v46 + 2, v45, v6);
      swift_bridgeObjectRetain_n();
      sub_1D29E59CC();
      if (v47 == v45)
      {
LABEL_31:
        v60 = v46;
        sub_1D29E3B4C(&v60);

        v0[13] = v60;
        sub_1D2A00548();
        v0[14] = sub_1D2A00538();
        v49 = sub_1D2A004F8();

        return MEMORY[0x1EEE6DFA0](sub_1D29E16CC, v49, v48);
      }

      __break(1u);
    }

    v46 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v3 = v0[10];
  v4 = v0[6];
  v56 = *(v3 + 16);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v52 = (v4 + 16);
  v53 = v4;
  v54 = (v4 + 8);
  v55 = *(v3 + 72);
  v6 = MEMORY[0x1E69E7CC8];
  v7 = &off_1E8402000;
  while (1)
  {
    v8 = v0[8];
    v56(v0[11], v5, v0[9]);
    sub_1D29FFE28();
    v9 = sub_1D29FFD88();
    if (v9)
    {
      break;
    }

    (*v54)(v0[8], v0[5]);
LABEL_4:
    v5 += v55;
    if (!--v2)
    {
      goto LABEL_27;
    }
  }

  v58 = v2;
  v10 = v9;
  v11 = [v10 v7[106]];
  v12 = sub_1D29FFBF8();
  v14 = v13;

  if (*(v6 + 2) && (v15 = sub_1D29E3AD4(v12, v14), (v16 & 1) != 0))
  {
    v17 = *(v6 + 7) + 16 * v15;
    v18 = *(v17 + 8);
    v59 = *v17;

    sub_1D29E59D4(v12, v14);
  }

  else
  {
    sub_1D29E59D4(v12, v14);
    v59 = v10;
    v18 = MEMORY[0x1E69E7CC0];
  }

  (*v52)(v0[7], v0[8], v0[5]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1D29E3874(0, v18[2] + 1, 1, v18, &qword_1EC701070, &qword_1D2A03B50, MEMORY[0x1E6966C00]);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1D29E3874(v19 > 1, v20 + 1, 1, v18, &qword_1EC701070, &qword_1D2A03B50, MEMORY[0x1E6966C00]);
  }

  v21 = v0[7];
  v22 = v0[5];
  v18[2] = v20 + 1;
  (*(v53 + 32))(v18 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v20, v21, v22);
  v23 = [v10 v7[106]];
  v57 = v10;

  v24 = sub_1D29FFBF8();
  v26 = v25;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v6;
  v29 = sub_1D29E3AD4(v24, v26);
  v30 = *(v6 + 2);
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    return MEMORY[0x1EEE6B550](v32);
  }

  v33 = v28;
  if (*(v6 + 3) >= v32)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v28)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v32 = sub_1D29E56C0();
      v6 = v60;
      if (v33)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    *&v6[8 * (v29 >> 6) + 64] |= 1 << v29;
    v38 = (*(v6 + 6) + 16 * v29);
    *v38 = v24;
    v38[1] = v26;
    v39 = (*(v6 + 7) + 16 * v29);
    *v39 = v59;
    v39[1] = v18;
    v40 = *(v6 + 2);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_38;
    }

    *(v6 + 2) = v42;
    goto LABEL_25;
  }

  sub_1D29E4B9C(v32, isUniquelyReferenced_nonNull_native);
  v6 = v60;
  v32 = sub_1D29E3AD4(v24, v26);
  if ((v33 & 1) == (v34 & 1))
  {
    v29 = v32;
    if ((v33 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    v35 = *(v6 + 7) + 16 * v29;
    v36 = *v35;
    v37 = *(v35 + 8);
    *v35 = v59;
    *(v35 + 8) = v18;

    sub_1D29E59D4(v24, v26);
LABEL_25:
    v0 = v51;
    v43 = v51[8];
    v44 = v51[5];

    (*v54)(v43, v44);

    v2 = v58;
    v7 = &off_1E8402000;
    goto LABEL_4;
  }

  v32 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6B550](v32);
}

uint64_t sub_1D29E16CC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;
  v4 = v3;
  sub_1D2A00048();

  return MEMORY[0x1EEE6DFA0](sub_1D29E1788, 0, 0);
}

uint64_t sub_1D29E1788()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

id sub_1D29E180C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionPickerView.Model(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D29E18CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ExtensionPickerView.Model(0);
  result = sub_1D2A00018();
  *a1 = result;
  return result;
}

uint64_t sub_1D29E190C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v37 = a1;
  v40 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7010F0, &qword_1D2A03C48);
  v38 = *(v41 - 8);
  v4 = *(v38 + 64);
  v5 = MEMORY[0x1EEE9AC00](v41);
  v39 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35[-v7];
  v9 = sub_1D2A00108();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1D2A000F8();
  sub_1D2A000E8();
  v11 = [*(a2 + OBJC_IVAR____TtCV12ExtensionKit19ExtensionPickerViewP33_ABD14ED04C699754E7718E30E84C391A5Model_hostAppRecord) localizedName];
  sub_1D2A003E8();

  sub_1D2A000D8();

  sub_1D2A000E8();
  sub_1D2A00128();
  *&v42 = sub_1D2A00278();
  *(&v42 + 1) = v12;
  v14 = v13;
  v43 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7010F8, &qword_1D2A03C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2A03850;
  v17 = sub_1D2A00228();
  *(inited + 32) = v17;
  v18 = sub_1D2A00238();
  *(inited + 33) = v18;
  v19 = sub_1D2A00258();
  *(inited + 34) = v19;
  v20 = sub_1D2A00248();
  sub_1D2A00248();
  if (sub_1D2A00248() != v17)
  {
    v20 = sub_1D2A00248();
  }

  sub_1D2A00248();
  if (sub_1D2A00248() != v18)
  {
    v20 = sub_1D2A00248();
  }

  sub_1D2A00248();
  v21 = sub_1D2A00248();
  if (v21 != v19)
  {
    v21 = sub_1D2A00248();
    v20 = v21;
  }

  v22 = v14 & 1;
  v59 = v14 & 1;
  v36 = v14 & 1;
  v56 = 1;
  MEMORY[0x1EEE9AC00](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701100, &qword_1D2A03C58);
  sub_1D29E618C(&qword_1EC701108, &qword_1EC701100, &qword_1D2A03C58, sub_1D29E5FD4);
  v23 = v8;
  sub_1D2A00268();
  v24 = v38;
  v25 = *(v38 + 16);
  v26 = v39;
  v27 = v41;
  v25(v39, v23, v41);
  v44 = v42;
  LOBYTE(v45) = v22;
  *(&v45 + 1) = *v58;
  DWORD1(v45) = *&v58[3];
  *(&v45 + 1) = v43;
  v46[0] = v20;
  *&v46[1] = *v57;
  *&v46[4] = *&v57[3];
  memset(&v46[8], 0, 32);
  v46[40] = 1;
  v28 = *&v46[16];
  v29 = v40;
  v40[2] = *v46;
  v29[3] = v28;
  *(v29 + 57) = *&v46[25];
  v30 = v45;
  *v29 = v44;
  v29[1] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701118, &qword_1D2A03C60);
  v25(v29 + *(v31 + 48), v26, v27);
  v32 = v29 + *(v31 + 64);
  *v32 = 0;
  v32[8] = 1;
  sub_1D29E6028(&v44, &v47, &qword_1EC701120, &qword_1D2A03C68);
  v33 = *(v24 + 8);
  v33(v23, v27);
  v33(v26, v27);
  v47 = v42;
  v48 = v36;
  *v49 = *v58;
  *&v49[3] = *&v58[3];
  v50 = v43;
  v51 = v20;
  *v52 = *v57;
  *&v52[3] = *&v57[3];
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  return sub_1D29DB7F4(&v47, &qword_1EC701120, &qword_1D2A03C68);
}

uint64_t sub_1D29E1ED4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701020, &qword_1D2A03928);
  sub_1D29E67A4(&qword_1EC701128, &qword_1EC701020, &qword_1D2A03928);
  sub_1D29E5DA8(&qword_1EC701058, MEMORY[0x1E6968FB0]);
  sub_1D29E5FD4();
  return sub_1D2A00328();
}

void sub_1D29E2058(void *a1)
{
  v1 = [a1 URL];
  sub_1D29FFBD8();
}

void sub_1D29E20B4(id *a1)
{
  v1 = [*a1 URL];
  sub_1D29FFBD8();
}

id sub_1D29E2114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a2 + OBJC_IVAR____TtCV12ExtensionKit19ExtensionPickerViewP33_ABD14ED04C699754E7718E30E84C391A5Model_hostAppRecord);
  *a3 = *a1;
  a3[1] = v4;
  a3[2] = v7;
  v5 = v3;

  return v7;
}

uint64_t sub_1D29E2174@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_1D2A00138();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7010E8, &qword_1D2A03C40);
  return sub_1D29E190C(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t sub_1D29E21D8(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  swift_bridgeObjectRetain_n();
  v7 = a1;
  v8 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011B0, &qword_1D2A03DA8);
  sub_1D29E67A4(&qword_1EC7011B8, &qword_1EC7011B0, &qword_1D2A03DA8);
  sub_1D29E6208();
  return sub_1D2A00328();
}

void sub_1D29E22F8(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1D29FFE08();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  v11 = a2;
  v12 = sub_1D29E625C(v9, v11);
  v14 = v13;
  v16 = v15;

  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16 & 1;
}

uint64_t sub_1D29E23F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D29E6464(a1);
  v5 = [a1 localizedName];
  sub_1D2A003E8();

  sub_1D29E5A94();
  v6 = sub_1D2A00288();
  v8 = v7;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  v10 = v9 & 1;
  *(a2 + 24) = v9 & 1;
  *(a2 + 32) = v11;

  sub_1D29E6098(v6, v8, v10);

  sub_1D29E60A8(v6, v8, v10);
}

uint64_t sub_1D29E24E4()
{
  v1 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v2 = sub_1D2A000C8();
  sub_1D29E23F8(v1, &v9);
  v3 = v9;
  v4 = v12;
  v5 = v10;
  v16 = 1;
  v15 = v11;
  v9 = v2;
  *&v10 = 0;
  BYTE8(v10) = 1;
  v11 = v3;
  v12 = v5;
  v13 = v15;
  v14 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701188, &qword_1D2A03D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701190, &qword_1D2A03D70);
  sub_1D29E67A4(&qword_1EC701198, &qword_1EC701188, &qword_1D2A03D68);
  sub_1D29E618C(&qword_1EC7011A0, &qword_1EC701190, &qword_1D2A03D70, sub_1D29E6208);
  return sub_1D2A00338();
}

uint64_t sub_1D29E264C@<X0>(char a1@<W2>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = sub_1D2A000B8();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701138, &qword_1D2A03CA0);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v35 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701140, &qword_1D2A03CA8);
  v9 = *(v48 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v48);
  v45 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v35 - v13;
  v14 = 0;
  if (a1)
  {
    v14 = sub_1D29E2C38();
  }

  v35 = v14;
  v50 = sub_1D29FFD68();
  v51 = v15;
  sub_1D29E5A94();
  v36 = sub_1D2A00288();
  v38 = v16;
  v39 = v17;
  v37 = v18;
  sub_1D2A00118();
  type metadata accessor for AppExtensionView.ObservableAppExtensionIdentity(0);
  sub_1D29E5DA8(&qword_1EC701148, type metadata accessor for AppExtensionView.ObservableAppExtensionIdentity);
  sub_1D2A00078();
  swift_getKeyPath();
  sub_1D2A00088();

  v19 = v41;
  sub_1D2A00308();
  v20 = v44;
  sub_1D2A000A8();
  sub_1D29E67A4(&qword_1EC701150, &qword_1EC701138, &qword_1D2A03CA0);
  sub_1D29E5DA8(&qword_1EC701158, MEMORY[0x1E697C488]);
  v21 = v49;
  v22 = v43;
  v23 = v47;
  sub_1D2A002C8();
  (*(v46 + 8))(v20, v23);
  (*(v42 + 8))(v19, v22);
  v24 = v9[2];
  v25 = v45;
  v26 = v48;
  v24(v45, v21, v48);
  v28 = v39;
  v27 = v40;
  *v40 = v14;
  v29 = v36;
  v30 = v38;
  v27[1] = v36;
  v27[2] = v30;
  v31 = v37 & 1;
  *(v27 + 24) = v37 & 1;
  v27[4] = v28;
  v27[5] = 0;
  *(v27 + 48) = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701160, &qword_1D2A03CB0);
  v24(v27 + *(v32 + 80), v25, v26);

  sub_1D29E6098(v29, v30, v31);

  v33 = v9[1];
  v33(v49, v26);
  v33(v25, v26);
  sub_1D29E60A8(v29, v30, v31);
}

uint64_t sub_1D29E2B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  *a2 = v5;
  return result;
}

uint64_t sub_1D29E2BC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D2A00048();
  return sub_1D29E2ED4();
}

uint64_t sub_1D29E2C38()
{
  v0 = sub_1D2A00108();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1D29FFD98();
  v3 = [v2 symbol];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 imageForSize:32.0 scale:{32.0, 2.0}];
    if (v5)
    {
      v6 = v5;
      if ([v5 CGImage])
      {
LABEL_8:
        [v6 scale];
        sub_1D2A000F8();
        sub_1D2A000E8();
        sub_1D29FFD68();
        sub_1D2A000D8();

        sub_1D2A000E8();
        sub_1D2A00128();
        sub_1D2A00278();
        v8 = sub_1D2A002F8();

        return v8;
      }

      __break(1u);
    }
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) init];
  [v4 setSize_];
  v7 = [v2 prepareImageForDescriptor_];
  if (v7)
  {
    v6 = v7;
    if ([v7 CGImage])
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  result = sub_1D2A006A8();
  __break(1u);
  return result;
}

uint64_t sub_1D29E2ED4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  v1 = *(v0 + OBJC_IVAR____TtCV12ExtensionKitP33_ABD14ED04C699754E7718E30E84C391A16AppExtensionView30ObservableAppExtensionIdentity_host);
  if (v3 == 1)
  {
    return sub_1D29FFDC8();
  }

  else
  {
    return sub_1D29FFDE8();
  }
}

uint64_t sub_1D29E2F8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  return v1;
}

uint64_t sub_1D29E3000()
{
  v1 = OBJC_IVAR____TtCV12ExtensionKitP33_ABD14ED04C699754E7718E30E84C391A16AppExtensionView30ObservableAppExtensionIdentity_inner;
  v2 = sub_1D29FFE08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV12ExtensionKitP33_ABD14ED04C699754E7718E30E84C391A16AppExtensionView30ObservableAppExtensionIdentity__enabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701060, &qword_1D2A03AF8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1D29E30F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppExtensionView.ObservableAppExtensionIdentity(0);
  result = sub_1D2A00018();
  *a1 = result;
  return result;
}

uint64_t sub_1D29E3138@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  *a1 = sub_1D2A000C8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701130, &qword_1D2A03C98);
  return sub_1D29E264C(v5, (a1 + *(v6 + 44)));
}

void sub_1D29E31A4()
{
  v1 = [*v0 URL];
  sub_1D29FFBD8();
}

uint64_t sub_1D29E3234(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_1D29E5E00();
  return sub_1D2A00318();
}

unint64_t sub_1D29E3290(uint64_t a1)
{
  result = sub_1D29E32B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D29E32B8()
{
  result = qword_1EC700FF0;
  if (!qword_1EC700FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC700FF0);
  }

  return result;
}

void sub_1D29E3340()
{
  sub_1D29E33DC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D29E33DC()
{
  if (!qword_1EC701018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC701020, &qword_1D2A03928);
    v0 = sub_1D2A00058();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC701018);
    }
  }
}

void sub_1D29E3468()
{
  v0 = sub_1D29FFE08();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D29E3540();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D29E3540()
{
  if (!qword_1EC701050)
  {
    v0 = sub_1D2A00058();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC701050);
    }
  }
}

uint64_t sub_1D29E3590(uint64_t *a1, int a2)
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

uint64_t sub_1D29E35D8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D29E3678@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  *a2 = v5;
  return result;
}

uint64_t sub_1D29E36F8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_1D2A00048();
}

char *sub_1D29E3770(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701080, &qword_1D2A03B58);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1D29E3874(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

void *sub_1D29E3A50(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701088, &qword_1D2A03B60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1D29E3AD4(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D2A00738();
  sub_1D29FFC08();
  v6 = sub_1D2A00748();

  return sub_1D29E4E5C(a1, a2, v6);
}

uint64_t sub_1D29E3B4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D29E5A80(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D29E3BB8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D29E3BB8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D2A006E8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D2A004C8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D29E3E50(v7, v8, a1, v4);
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
    return sub_1D29E3CB0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D29E3CB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
LABEL_5:
    v19 = a3;
    v6 = *(v20 + 16 * a3);
    v17 = v5;
    v18 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = *(v4 + 8);
      v9 = v6;

      v10 = v7;

      v11 = [v9 localizedName];
      sub_1D2A003E8();

      v12 = [v10 localizedName];
      sub_1D2A003E8();

      sub_1D29E5A94();
      v13 = sub_1D2A00628();

      if (v13 != -1)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 16;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v14 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v14;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D29E3E50(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v107 = result;
    while (1)
    {
      v11 = v9;
      v108 = v9;
      if (v9 + 1 >= v8)
      {
        v21 = v9 + 1;
      }

      else
      {
        v114 = v8;
        v103 = v10;
        v105 = v5;
        v12 = *v6 + 16 * (v9 + 1);
        v109 = 16 * v9;
        v13 = *v6 + 16 * v9;
        v14 = *v13;
        v15 = *(v13 + 8);
        v118 = *(v12 + 8);
        v16 = *v12;

        v9 = v14;

        v17 = [v16 localizedName];
        sub_1D2A003E8();

        v18 = [v9 localizedName];
        sub_1D2A003E8();

        sub_1D29E5A94();
        v112 = sub_1D2A00628();

        v19 = v11 + 2;
        v20 = v13 + 24;
        while (1)
        {
          v21 = v114;
          if (v114 == v19)
          {
            break;
          }

          v9 = *v20;
          v22 = v20 + 16;
          v116 = *(v20 + 16);
          v23 = *(v20 - 8);
          v24 = *(v20 + 8);

          v25 = v23;

          v26 = [v24 localizedName];
          sub_1D2A003E8();

          v27 = [v25 localizedName];
          sub_1D2A003E8();

          v28 = sub_1D2A00628();

          ++v19;
          v20 = v22;
          if ((v112 == -1) == (v28 != -1))
          {
            v21 = v19 - 1;
            break;
          }
        }

        v10 = v103;
        v5 = v105;
        v6 = a3;
        v7 = v107;
        v11 = v108;
        if (v112 == -1)
        {
          if (v21 < v108)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            return result;
          }

          if (v108 < v21)
          {
            v29 = 16 * v21 - 16;
            v30 = v108;
            v31 = v21;
            v32 = v109;
            do
            {
              if (v30 != --v31)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_128;
                }

                v33 = *(v34 + v32);
                *(v34 + v32) = *(v34 + v29);
                *(v34 + v29) = v33;
              }

              ++v30;
              v29 -= 16;
              v32 += 16;
            }

            while (v30 < v31);
            v11 = v108;
          }
        }
      }

      v35 = v6[1];
      if (v21 >= v35)
      {
        break;
      }

      if (__OFSUB__(v21, v11))
      {
        goto LABEL_120;
      }

      if (v21 - v11 >= a4)
      {
        v9 = v21;
        if (v21 < v108)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v11 = v108;
        if (__OFADD__(v108, a4))
        {
          goto LABEL_121;
        }

        if (v108 + a4 >= v35)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = v108 + a4;
        }

        if (v9 < v108)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v21 == v9)
        {
          break;
        }

        v104 = v10;
        v106 = v5;
        v117 = *v6;
        v36 = *v6 + 16 * v21 - 16;
        v37 = v108 - v21;
        v110 = v9;
        do
        {
          v113 = v36;
          v115 = v21;
          v38 = *(v117 + 16 * v21);
          v111 = v37;
          do
          {
            v39 = *v36;
            v40 = *(v36 + 8);
            v41 = v38;

            v42 = v39;

            v43 = [v41 localizedName];
            sub_1D2A003E8();

            v44 = [v42 localizedName];
            sub_1D2A003E8();

            sub_1D29E5A94();
            v45 = sub_1D2A00628();

            if (v45 != -1)
            {
              break;
            }

            if (!v117)
            {
              goto LABEL_125;
            }

            v46 = *v36;
            v38 = *(v36 + 16);
            *v36 = v38;
            *(v36 + 16) = v46;
            v36 -= 16;
          }

          while (!__CFADD__(v37++, 1));
          v21 = v115 + 1;
          v36 = v113 + 16;
          v9 = v110;
          v37 = v111 - 1;
        }

        while ((v115 + 1) != v110);
        v10 = v104;
        v5 = v106;
        v6 = a3;
        v7 = v107;
        if (v110 < v108)
        {
          goto LABEL_119;
        }
      }

LABEL_41:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D29E3770(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v49 = *(v10 + 16);
      v48 = *(v10 + 24);
      v50 = v49 + 1;
      v51 = v108;
      if (v49 >= v48 >> 1)
      {
        result = sub_1D29E3770((v48 > 1), v49 + 1, 1, v10);
        v51 = v108;
        v10 = result;
      }

      *(v10 + 16) = v50;
      v52 = v10 + 16 * v49;
      *(v52 + 32) = v51;
      *(v52 + 40) = v9;
      v53 = *v7;
      if (!*v7)
      {
        goto LABEL_129;
      }

      if (v49)
      {
        while (1)
        {
          v54 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v55 = *(v10 + 32);
            v56 = *(v10 + 40);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_60:
            if (v58)
            {
              goto LABEL_108;
            }

            v71 = (v10 + 16 * v50);
            v73 = *v71;
            v72 = v71[1];
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_111;
            }

            v77 = (v10 + 32 + 16 * v54);
            v79 = *v77;
            v78 = v77[1];
            v65 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v65)
            {
              goto LABEL_114;
            }

            if (__OFADD__(v75, v80))
            {
              goto LABEL_115;
            }

            if (v75 + v80 >= v57)
            {
              if (v57 < v80)
              {
                v54 = v50 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v81 = (v10 + 16 * v50);
          v83 = *v81;
          v82 = v81[1];
          v65 = __OFSUB__(v82, v83);
          v75 = v82 - v83;
          v76 = v65;
LABEL_74:
          if (v76)
          {
            goto LABEL_110;
          }

          v84 = v10 + 16 * v54;
          v86 = *(v84 + 32);
          v85 = *(v84 + 40);
          v65 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v65)
          {
            goto LABEL_113;
          }

          if (v87 < v75)
          {
            goto LABEL_3;
          }

LABEL_81:
          v92 = v54 - 1;
          if (v54 - 1 >= v50)
          {
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
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          if (!*v6)
          {
            goto LABEL_126;
          }

          v93 = *(v10 + 32 + 16 * v92);
          v94 = *(v10 + 32 + 16 * v54 + 8);
          sub_1D29E46D0((*v6 + 16 * v93), (*v6 + 16 * *(v10 + 32 + 16 * v54)), (*v6 + 16 * v94), v53);
          if (v5)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D29E4B88(v10);
          }

          if (v92 >= *(v10 + 16))
          {
            goto LABEL_105;
          }

          v95 = v10 + 16 * v92;
          *(v95 + 32) = v93;
          *(v95 + 40) = v94;
          result = sub_1D29E4AFC(v54);
          v50 = *(v10 + 16);
          if (v50 <= 1)
          {
            goto LABEL_3;
          }
        }

        v59 = v10 + 32 + 16 * v50;
        v60 = *(v59 - 64);
        v61 = *(v59 - 56);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_106;
        }

        v64 = *(v59 - 48);
        v63 = *(v59 - 40);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_107;
        }

        v66 = (v10 + 16 * v50);
        v68 = *v66;
        v67 = v66[1];
        v65 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v65)
        {
          goto LABEL_109;
        }

        v65 = __OFADD__(v57, v69);
        v70 = v57 + v69;
        if (v65)
        {
          goto LABEL_112;
        }

        if (v70 >= v62)
        {
          v88 = (v10 + 32 + 16 * v54);
          v90 = *v88;
          v89 = v88[1];
          v65 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v65)
          {
            goto LABEL_116;
          }

          if (v57 < v91)
          {
            v54 = v50 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v107;
      if (v9 >= v8)
      {
        goto LABEL_92;
      }
    }

    v9 = v21;
    if (v21 < v11)
    {
      goto LABEL_119;
    }

    goto LABEL_41;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_130;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_123:
    result = sub_1D29E4B88(v10);
    v10 = result;
  }

  v96 = *(v10 + 16);
  if (v96 >= 2)
  {
    while (*v6)
    {
      v97 = *(v10 + 16 * v96);
      v98 = v10;
      v99 = *(v10 + 16 * (v96 - 1) + 32);
      v10 = *(v10 + 16 * (v96 - 1) + 40);
      sub_1D29E46D0((*v6 + 16 * v97), (*v6 + 16 * v99), (*v6 + 16 * v10), v9);
      if (v5)
      {
      }

      if (v10 < v97)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_1D29E4B88(v98);
      }

      if (v96 - 2 >= *(v98 + 2))
      {
        goto LABEL_118;
      }

      v100 = &v98[16 * v96];
      *v100 = v97;
      *(v100 + 1) = v10;
      result = sub_1D29E4AFC(v96 - 1);
      v10 = v98;
      v96 = *(v98 + 2);
      if (v96 <= 1)
      {
      }
    }

    goto LABEL_127;
  }
}

uint64_t sub_1D29E46D0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v12] <= a4)
    {
      v25 = a3;
      memmove(a4, __dst, 16 * v12);
      a3 = v25;
    }

    v46 = &v4[16 * v12];
    if (v10 >= 16 && v5 > v6)
    {
      v41 = v6;
LABEL_26:
      v38 = v5 - 16;
      v26 = a3 - 16;
      v27 = v46;
      v45 = v5;
      do
      {
        v43 = v26;
        v28 = v26 + 16;
        v29 = *(v27 - 2);
        v30 = *(v27 - 1);
        v27 -= 16;
        v31 = *(v5 - 2);
        v39 = *(v5 - 1);
        v32 = v29;

        v33 = v31;

        v34 = [v32 localizedName];
        sub_1D2A003E8();

        v35 = [v33 localizedName];
        sub_1D2A003E8();

        sub_1D29E5A94();
        v36 = sub_1D2A00628();

        if (v36 == -1)
        {
          a3 = v43;
          if (v28 != v45)
          {
            *v43 = *v38;
          }

          if (v46 <= v4 || (v5 = v38, v38 <= v41))
          {
            v5 = v38;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        if (v28 != v46)
        {
          *v43 = *v27;
        }

        v26 = v43 - 16;
        v46 = v27;
        v5 = v45;
      }

      while (v27 > v4);
      v46 = v27;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v9] <= a4)
    {
      v13 = a3;
      memmove(a4, __src, 16 * v9);
      a3 = v13;
    }

    v46 = &v4[16 * v9];
    if (v7 >= 16 && v5 < a3)
    {
      v42 = a3;
      while (1)
      {
        v44 = v5;
        v40 = v6;
        v14 = *(v5 + 1);
        v15 = *v4;
        v16 = *(v4 + 1);
        v17 = *v5;

        v18 = v15;

        v19 = [v17 localizedName];
        sub_1D2A003E8();

        v20 = [v18 localizedName];
        sub_1D2A003E8();
        v21 = v4;

        sub_1D29E5A94();
        v22 = sub_1D2A00628();

        if (v22 != -1)
        {
          break;
        }

        v23 = v44;
        v5 = v44 + 16;
        v24 = v40;
        if (v40 != v44)
        {
          goto LABEL_14;
        }

LABEL_15:
        v6 = v24 + 16;
        if (v4 >= v46 || v5 >= v42)
        {
          goto LABEL_36;
        }
      }

      v23 = v4;
      v4 += 16;
      v24 = v40;
      v5 = v44;
      if (v40 == v21)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v24 = *v23;
      goto LABEL_15;
    }

LABEL_36:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v4 || v5 >= &v4[(v46 - v4 + (v46 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v4, 16 * ((v46 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D29E4AFC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D29E4B88(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D29E4B9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701068, &qword_1D2A03B48);
  result = sub_1D2A006C8();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = *(*(v5 + 48) + v22);
      v35 = *(*(v5 + 56) + v22);
      v36 = v23;
      if ((a2 & 1) == 0)
      {
        sub_1D29E5A28(v23, *(&v23 + 1));
        v24 = v35;
      }

      v25 = *(v8 + 40);
      sub_1D2A00738();
      sub_1D29FFC08();
      result = sub_1D2A00748();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v17 = v36;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v17 = v36;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = 16 * v16;
      *(*(v8 + 48) + v18) = v17;
      *(*(v8 + 56) + v18) = v35;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D29E4E5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_139:
    v63 = *MEMORY[0x1E69E9840];
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v75 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v72 = v14;
  __n = BYTE6(a2);
  v70 = a1;
  v71 = HIDWORD(a1) - a1;
  v66 = (a1 >> 32) - a1;
  v67 = a1 >> 32;
  v73 = v10;
  v74 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v75) & 1) == 0)
      {
        goto LABEL_139;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v71;
          if (v72)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        goto LABEL_139;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      goto LABEL_139;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_1D29E5A28(v17, v16);
      v35 = sub_1D29FFB68();
      if (v35)
      {
        v40 = sub_1D29FFB88();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_1D29FFB78();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v65 = *(a1 + 24);
        v37 = sub_1D29FFB68();
        if (v37)
        {
          v60 = sub_1D29FFB88();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v65, v59);
        v61 = v65 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_1D29FFB78();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v67 < v70)
        {
          goto LABEL_154;
        }

        v37 = sub_1D29FFB68();
        if (v37)
        {
          v41 = sub_1D29FFB88();
          if (__OFSUB__(v70, v41))
          {
            goto LABEL_161;
          }

          v37 += v70 - v41;
        }

        result = sub_1D29FFB78();
        v39 = v66;
        if (result < v66)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v68;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_1D29E5A28(v17, v16);
      v32 = sub_1D29FFB68();
      if (v32)
      {
        v49 = sub_1D29FFB88();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_1D29FFB78();
      v7 = v69;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v67 < v70)
    {
      goto LABEL_146;
    }

    sub_1D29E5A28(v17, v16);
    v29 = sub_1D29FFB68();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_1D29FFB88();
    if (__OFSUB__(v70, v31))
    {
      goto LABEL_152;
    }

    v32 = v70 - v31 + v30;
    result = sub_1D29FFB78();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v66)
    {
      v50 = v66;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_1D29E59D4(v17, v16);
LABEL_135:
    v10 = v73;
    v4 = v74;
    if (!v62)
    {
      goto LABEL_139;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_139;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_1D29E5A28(v17, v16);
    v35 = sub_1D29FFB68();
    if (v35)
    {
      v36 = sub_1D29FFB88();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_1D29FFB78();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v64 = *(a1 + 24);
      v37 = sub_1D29FFB68();
      if (v37)
      {
        v57 = sub_1D29FFB88();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v64, v56);
      v58 = v64 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_1D29FFB78();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v67 < v70)
      {
        goto LABEL_148;
      }

      v37 = sub_1D29FFB68();
      if (v37)
      {
        v38 = sub_1D29FFB88();
        if (__OFSUB__(v70, v38))
        {
          goto LABEL_159;
        }

        v37 += v70 - v38;
      }

      result = sub_1D29FFB78();
      v39 = v66;
      if (result < v66)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_1D29E59D4(v17, v16);
        goto LABEL_139;
      }

      v62 = memcmp(v35, v37, v39);
      sub_1D29E59D4(v17, v16);
      v7 = v69;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v68;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v78 = BYTE2(a1);
    v79 = BYTE3(a1);
    v80 = v68;
    v81 = BYTE5(a1);
    v82 = BYTE6(a1);
    v83 = HIBYTE(a1);
    v84 = a2;
    v85 = BYTE2(a2);
    v86 = BYTE3(a2);
    v87 = BYTE4(a2);
    v88 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      goto LABEL_139;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_1D29E5A28(v17, v16);
    v32 = sub_1D29FFB68();
    if (v32)
    {
      v44 = sub_1D29FFB88();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_1D29FFB78();
    v7 = v69;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v67 < v70)
  {
    goto LABEL_147;
  }

  sub_1D29E5A28(v17, v16);
  v51 = sub_1D29FFB68();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1D29FFB88();
    if (__OFSUB__(v70, v53))
    {
      goto LABEL_151;
    }

    v32 = v70 - v53 + v52;
    result = sub_1D29FFB78();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_1D29FFB78();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_1D29FFB78();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

void *sub_1D29E56C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701068, &qword_1D2A03B48);
  v2 = *v0;
  v3 = sub_1D2A006B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        v20 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v20;
        sub_1D29E5A28(v18, *(&v18 + 1));
        v19 = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D29E584C(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;

        goto LABEL_24;
      }

      ++v11;
      v19 = v18;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D29E59D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D29E5A28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1D29E5A94()
{
  result = qword_1EC701078;
  if (!qword_1EC701078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701078);
  }

  return result;
}

char *sub_1D29E5AE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701088, &qword_1D2A03B60);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D29E5BF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D29E5CB4;

  return sub_1D29DFE58(a1, v4, v5, v7, v6);
}

uint64_t sub_1D29E5CB4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D29E5DA8(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_1D29E5DF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1D29E5E00()
{
  result = qword_1EC7010D8;
  if (!qword_1EC7010D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7010D8);
  }

  return result;
}

uint64_t sub_1D29E5E54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D29E5E9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D29E5EFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D29E5F44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D29E5FD4()
{
  result = qword_1EC701110;
  if (!qword_1EC701110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701110);
  }

  return result;
}

uint64_t sub_1D29E6028(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D29E6098(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D29E60A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D29E60CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D29E6114(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D29E618C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D29E6208()
{
  result = qword_1EC7011A8;
  if (!qword_1EC7011A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7011A8);
  }

  return result;
}

uint64_t sub_1D29E625C(_BYTE *a1, void *a2)
{
  v4 = sub_1D29FFE08();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v5[2];
  v9(v8, a1, v4);
  v10 = type metadata accessor for AppExtensionView.ObservableAppExtensionIdentity(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v9((v13 + OBJC_IVAR____TtCV12ExtensionKitP33_ABD14ED04C699754E7718E30E84C391A16AppExtensionView30ObservableAppExtensionIdentity_inner), v8, v4);
  v14 = a2;
  LOBYTE(a2) = sub_1D29FFDF8();
  swift_beginAccess();
  v18[7] = a2 & 1;
  sub_1D2A00028();
  swift_endAccess();
  v15 = v5[1];
  v15(v8, v4);
  *(v13 + OBJC_IVAR____TtCV12ExtensionKitP33_ABD14ED04C699754E7718E30E84C391A16AppExtensionView30ObservableAppExtensionIdentity_host) = v14;
  sub_1D29E5DA8(&qword_1EC701148, type metadata accessor for AppExtensionView.ObservableAppExtensionIdentity);
  v16 = sub_1D2A00068();
  v15(a1, v4);
  return v16;
}

uint64_t sub_1D29E6464(void *a1)
{
  v2 = sub_1D2A00108();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1D29FFBE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 URL];
  sub_1D29FFBD8();

  v10 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v11 = sub_1D29FFBC8();
  v12 = [v10 initWithURL_];

  (*(v5 + 8))(v8, v4);
  v13 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) init];
  [v13 setSize_];
  v14 = [v12 prepareImageForDescriptor_];
  if (v14)
  {
    v15 = v14;
    if ([v14 CGImage])
    {
      [v15 scale];
      sub_1D2A000F8();
      sub_1D2A000E8();
      v16 = [a1 localizedName];
      sub_1D2A003E8();

      sub_1D2A000D8();

      sub_1D2A000E8();
      sub_1D2A00128();
      sub_1D2A00278();
      v17 = sub_1D2A002F8();

      return v17;
    }

    __break(1u);
  }

  result = sub_1D2A006A8();
  __break(1u);
  return result;
}

void sub_1D29E6798(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1D29E22F8(a1, *(v2 + 32), a2);
}

uint64_t sub_1D29E67A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1D29E67EC()
{
  result = qword_1EC7011C0;
  if (!qword_1EC7011C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7011C8, &qword_1D2A03DB0);
    sub_1D29E67A4(&qword_1EC701198, &qword_1EC701188, &qword_1D2A03D68);
    sub_1D29E618C(&qword_1EC7011A0, &qword_1EC701190, &qword_1D2A03D70, sub_1D29E6208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7011C0);
  }

  return result;
}

uint64_t EXHostViewController.Configuration.appExtension.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D29FFE08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EXHostViewController.Configuration.appExtension.setter(uint64_t a1)
{
  v3 = sub_1D29FFE08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EXHostViewController.Configuration.sceneID.getter()
{
  v1 = (v0 + *(type metadata accessor for EXHostViewController.Configuration() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for EXHostViewController.Configuration()
{
  result = qword_1EC7011E8;
  if (!qword_1EC7011E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EXHostViewController.Configuration.sceneID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EXHostViewController.Configuration() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EXHostViewController.Configuration.init(appExtension:sceneID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D29FFE08();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for EXHostViewController.Configuration();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t EXHostViewController.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 configuration];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 extensionIdentity];
    sub_1D29FFDA8();
    v6 = [v4 role];
    v7 = sub_1D2A003E8();
    v9 = v8;

    v10 = type metadata accessor for EXHostViewController.Configuration();
    v11 = (a1 + *(v10 + 20));
    *v11 = v7;
    v11[1] = v9;
    v12 = *(*(v10 - 8) + 56);
    v13 = v10;
    v14 = a1;
    v15 = 0;
  }

  else
  {
    v16 = type metadata accessor for EXHostViewController.Configuration();
    v12 = *(*(v16 - 8) + 56);
    v13 = v16;
    v14 = a1;
    v15 = 1;
  }

  return v12(v14, v15, 1, v13);
}

uint64_t sub_1D29E6CA8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011D0, &qword_1D2A03DB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D29E6F9C(a1, &v10 - v6);
  v8 = *a2;
  return EXHostViewController.configuration.setter(v7);
}

uint64_t EXHostViewController.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011D0, &qword_1D2A03DB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for EXHostViewController.Configuration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  sub_1D29E6F9C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D29E700C(v7);
    [v2 setConfiguration_];
    return sub_1D29E700C(a1);
  }

  else
  {
    sub_1D29E7074(v7, v15);
    sub_1D29E70D8(v15, v13);
    v17 = objc_allocWithZone(_EXHostViewControllerConfiguration);
    sub_1D29FFDB8();
    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();
    v19 = [v17 initWithExtensionIdentity_];

    v20 = &v13[*(v8 + 20)];
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = v19;
    v24 = sub_1D2A003B8();
    [v23 setRole_];

    sub_1D29E713C(v13);
    [v2 setConfiguration_];

    sub_1D29E700C(a1);
    return sub_1D29E713C(v15);
  }
}

uint64_t sub_1D29E6F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011D0, &qword_1D2A03DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29E700C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011D0, &qword_1D2A03DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D29E7074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EXHostViewController.Configuration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29E70D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EXHostViewController.Configuration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29E713C(uint64_t a1)
{
  v2 = type metadata accessor for EXHostViewController.Configuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EXHostViewController.configuration.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011D0, &qword_1D2A03DB8) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 configuration];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 extensionIdentity];
    sub_1D29FFDA8();
    v10 = [v8 role];
    v11 = sub_1D2A003E8();
    v13 = v12;

    v14 = type metadata accessor for EXHostViewController.Configuration();
    v15 = (v6 + *(v14 + 20));
    *v15 = v11;
    v15[1] = v13;
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for EXHostViewController.Configuration();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  }

  return sub_1D29E7340;
}

void sub_1D29E7340(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D29E6F9C(v3, v2);
    EXHostViewController.configuration.setter(v2);
    sub_1D29E700C(v3);
  }

  else
  {
    EXHostViewController.configuration.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t EXHostViewController._Session.__allocating_init(process:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D29E73F0, 0, 0);
}

uint64_t sub_1D29E73F0()
{
  v1 = v0[14];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = sub_1D29E7AA4();
  *v4 = v0;
  v4[1] = sub_1D29E74F0;

  return MEMORY[0x1EEE6DE38](v0 + 13, 0, 0, 0xD00000000000001CLL, 0x80000001D2A07DF0, sub_1D29E7A9C, v2, v5);
}

uint64_t sub_1D29E74F0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1D29E76D4;
  }

  else
  {
    v5 = *(v2 + 128);
    sub_1D29E7AF0(v2 + 16);

    v4 = sub_1D29E7618;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D29E7618()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_1D29FFD38();
  (*(*(v5 - 8) + 8))(v2, v5);
  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_1D29E76D4()
{
  v1 = v0[16];
  v2 = v0[14];
  sub_1D29E7AF0((v0 + 2));

  v3 = sub_1D29FFD38();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

void sub_1D29E7780(uint64_t a1, double *a2)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = objc_allocWithZone(_EXHostViewControllerSessionConfiguration);
  v11 = sub_1D2A003B8();
  v12 = [v10 initWithSceneIdentifier_];

  v13 = *(a2 + 7);
  v28 = *(a2 + 6);
  v29 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v22 = &v26;
  v26 = sub_1D29DE600;
  v27 = &block_descriptor_0;
  v14 = _Block_copy(&aBlock);

  [v12 setInvalidationHandler_];
  _Block_release(v14);
  [v12 setInitialFrame_];
  [v12 setRetryOnHostingFailure_];
  [v12 set:*(a2 + 80) shouldHostRemoteTextEffectsWindow:?];
  v15 = sub_1D29FFD28();
  objc_opt_self();
  v16 = swift_dynamicCastObjCClassUnconditional();
  v17 = objc_opt_self();
  v18 = v3;
  (*(v4 + 16))(v7, v23, v3);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v19, v7, v18);
  v28 = sub_1D29E8394;
  v29 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1D29F3848;
  v27 = &block_descriptor_24;
  v21 = _Block_copy(&aBlock);

  [v17 sessionWithProcess:v16 configuration:v12 completion:v21];
  _Block_release(v21);
}

unint64_t sub_1D29E7AA4()
{
  result = qword_1EC7011D8;
  if (!qword_1EC7011D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7011D8);
  }

  return result;
}

uint64_t sub_1D29E7B20(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  return sub_1D2A00518();
}

NSXPCConnection __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EXHostViewController._Session.makeXPCConnection()()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v7[0] = 0;
  v2 = [v1 _makeXPCConnectionWithError_];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1D29FFB98();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t EXHostViewController._Session.identity.getter()
{
  v1 = [*(v0 + 16) extensionProcess];
  v2 = [v1 extensionIdentity];

  return MEMORY[0x1EEDC0988](v2);
}

double EXHostViewController._Session.Configuration.init(sceneID:onInvalidation:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = 1;
  *a5 = a1;
  *(a5 + 8) = a2;
  result = 0.0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t EXHostViewController._Session.Configuration.sceneID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EXHostViewController._Session.Configuration.sceneID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double EXHostViewController._Session.Configuration.initialFrame.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

void EXHostViewController._Session.Configuration.initialFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t sub_1D29E7D94(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 56);

  *(a2 + 48) = sub_1D29E836C;
  *(a2 + 56) = v5;
  return result;
}

uint64_t EXHostViewController._Session.Configuration.onInvalidation.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t EXHostViewController._Session.Configuration.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t EXHostViewController._Session.Configuration._initializationParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 72);
  result = swift_unknownObjectRelease();
  *(v1 + 72) = a1;
  return result;
}

uint64_t EXHostViewController._Session.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void *EXHostViewController._session.getter()
{
  result = [v0 session];
  if (result)
  {
    v2 = result;
    type metadata accessor for EXHostViewController._Session();
    result = swift_allocObject();
    result[2] = v2;
  }

  return result;
}

void *sub_1D29E800C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 session];
  if (result)
  {
    v4 = result;
    type metadata accessor for EXHostViewController._Session();
    result = swift_allocObject();
    result[2] = v4;
  }

  *a2 = result;
  return result;
}

id EXHostViewController._session.setter(uint64_t a1)
{
  if (a1)
  {
    [v1 setSession_];
  }

  else
  {

    return [v1 setSession_];
  }
}

id (*EXHostViewController._session.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 session];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for EXHostViewController._Session();
    v3 = swift_allocObject();
    v3[2] = v4;
  }

  *a1 = v3;
  return sub_1D29E8154;
}

id sub_1D29E8154(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      v3 = *(v2 + 16);
    }

    else
    {
      v3 = 0;
    }

    v4 = a1[1];
    goto LABEL_8;
  }

  v4 = a1[1];
  if (v2)
  {
    v3 = *(v2 + 16);
LABEL_8:
    [v4 setSession_];
  }

  return [v4 setSession_];
}

uint64_t sub_1D29E820C()
{
  result = sub_1D29FFE08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D29E82BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1D29E8304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D29E8394(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68) - 8) + 80);

  return sub_1D29E7B20(a1);
}

uint64_t type metadata accessor for _EXRunningUISceneExtension()
{
  result = qword_1ED8477B8;
  if (!qword_1ED8477B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D29E84C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = sub_1D2A00008();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  type metadata accessor for _EXSceneComponent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v16)
  {
    sub_1D2A003E8();
    v16 = sub_1D2A003B8();
  }

  v17 = objc_opt_self();
  v18 = [objc_opt_self() predicateWithValue_];
  [v17 _registerSceneComponentClass_withKey_predicate_];

  type metadata accessor for _EXRunningUIExtension(0);
  v19 = sub_1D29FFCE8();
  if (v19(a1, a2))
  {
    return 1;
  }

  sub_1D29FFFE8();
  v21 = sub_1D29FFFF8();
  v22 = sub_1D2A005B8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D29CC000, v21, v22, "Configuring service listener", v23, 2u);
    MEMORY[0x1D38A6000](v23, -1, -1);
  }

  v24 = *(v6 + 8);
  v24(v14, v44);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1D29EAD10;
  *(v26 + 24) = v25;
  v49 = sub_1D29DF510;
  v50 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D29EE4E8;
  v48 = &block_descriptor_23;
  v27 = _Block_copy(&aBlock);
  v28 = objc_opt_self();

  v29 = [v28 listenerWithConfigurator_];
  _Block_release(v27);

  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  [v29 activate];
  sub_1D29FFFE8();
  v30 = sub_1D29FFFF8();
  v31 = sub_1D2A005B8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D29CC000, v30, v31, "Checking in with launchd", v32, 2u);
    MEMORY[0x1D38A6000](v32, -1, -1);
  }

  v24(v12, v44);
  v33 = CFRunLoopGetMain();
  if (v33)
  {
    v34 = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = v3;
    v49 = sub_1D29DF518;
    v50 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1D29ECA40;
    v48 = &block_descriptor_29;
    v36 = _Block_copy(&aBlock);
    v37 = v3;

    v38 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0, v36);
    _Block_release(v36);
    v39 = qword_1ED847918;
    qword_1ED847918 = v38;

    CFRunLoopAddObserver(v34, v38, *MEMORY[0x1E695E8D0]);
    getpid();
    memorystatus_control();
    sub_1D29FFFE8();
    v40 = sub_1D29FFFF8();
    v41 = sub_1D2A005B8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D29CC000, v40, v41, "Resuming service listener", v42, 2u);
      MEMORY[0x1D38A6000](v42, -1, -1);
    }

    v24(v43, v44);
    [objc_opt_self() activateXPCService];
    __break(1u);
  }

  result = sub_1D2A006A8();
  __break(1u);
  return result;
}

void sub_1D29E8AFC(void *a1)
{
  v2 = sub_1D2A00008();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1D2A003B8();
    [a1 setDomain_];

    v10 = sub_1D2A003B8();
    [a1 setService_];

    [a1 setDelegate_];
  }

  else
  {
    sub_1D29FFFE8();
    v11 = sub_1D29FFFF8();
    v12 = sub_1D2A005A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D29CC000, v11, v12, "Could not find _EXRunningUIKitSceneHostedExtension when configuring listener", v13, 2u);
      MEMORY[0x1D38A6000](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_1D29E8D14(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1D29E9F30(v6, v7);

  swift_unknownObjectRelease();
}

uint64_t sub_1D29E8E04(void *a1)
{
  v3 = sub_1D2A00008();
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v79 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v87 = v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v78 - v10;
  v12 = sub_1D29FFC48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v80 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v78 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v78 - v20;
  v83 = v1;
  *&v1[OBJC_IVAR____EXSceneComponent__scene] = a1;
  v81 = a1;
  v82 = [v81 _FBSScene];
  v22 = [v82 identifier];
  sub_1D2A003E8();

  v23 = v12;
  sub_1D29FFC18();

  if ((*(v13 + 6))(v11, 1, v12) == 1)
  {
    sub_1D29DB7F4(v11, &qword_1EC701300, &qword_1D2A03830);
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1D2A00678();

    v92 = 0xD000000000000027;
    v93 = 0x80000001D2A07F90;
    v69 = [v82 identifier];
    v70 = sub_1D2A003E8();
    v72 = v71;

    MEMORY[0x1D38A52F0](v70, v72);
  }

  else
  {
    (*(v13 + 4))(v21, v11, v12);
    sub_1D29FFFE8();
    v24 = *(v13 + 2);
    v84 = v21;
    v78[0] = v24;
    v78[1] = v13 + 16;
    v24(v19, v21, v12);
    v25 = v13;
    v26 = sub_1D29FFFF8();
    v27 = sub_1D2A00598();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v92 = v29;
      *v28 = 136315138;
      sub_1D29EACB0(&qword_1EC701308, MEMORY[0x1E69695A8]);
      v30 = sub_1D2A006F8();
      v32 = v31;
      v33 = *(v25 + 1);
      v33(v19, v12);
      v34 = sub_1D29F87C4(v30, v32, &v92);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1D29CC000, v26, v27, "UIScene connection with identifier: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1D38A6000](v29, -1, -1);
      v35 = v28;
      v23 = v12;
      MEMORY[0x1D38A6000](v35, -1, -1);
    }

    else
    {

      v33 = *(v25 + 1);
      v33(v19, v12);
    }

    v36 = *(v85 + 8);
    v36(v87, v86);
    v37 = v25;
    v38 = v80;
    v39 = [objc_opt_self() sharedInstance];
    v40 = v84;
    v41 = sub_1D29FFC28();
    v42 = [v39 sessionForIdentifier_];

    if (!v42)
    {
      v87 = v37;
      v51 = v33;
      v52 = v79;
      sub_1D29FFFE8();
      (v78[0])(v38, v40, v23);
      v53 = sub_1D29FFFF8();
      v54 = sub_1D2A005A8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = v23;
        v57 = swift_slowAlloc();
        v92 = v57;
        *v55 = 136315138;
        sub_1D29EACB0(&qword_1EC701308, MEMORY[0x1E69695A8]);
        v58 = sub_1D2A006F8();
        v59 = v38;
        v60 = v52;
        v62 = v61;
        v51(v59, v56);
        v63 = sub_1D29F87C4(v58, v62, &v92);

        *(v55 + 4) = v63;
        v64 = v54;
        v33 = v51;
        _os_log_impl(&dword_1D29CC000, v53, v64, "Session not found for identifier %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        v65 = v57;
        v23 = v56;
        v40 = v84;
        MEMORY[0x1D38A6000](v65, -1, -1);
        MEMORY[0x1D38A6000](v55, -1, -1);

        v66 = v60;
      }

      else
      {

        v33 = v51;
        v51(v38, v23);
        v66 = v52;
      }

      v36(v66, v86);
      v67 = type metadata accessor for _EXSceneComponent();
      v91.receiver = v83;
      v91.super_class = v67;
      v50 = objc_msgSendSuper2(&v91, sel_init);

      goto LABEL_14;
    }

    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      v44 = v43;
      v45 = v42;
      if ([v44 scene])
      {
        v89 = &unk_1F4E13B18;
        v46 = swift_dynamicCastObjCProtocolConditional();
        if (v46)
        {
          v47 = [v46 sceneDelegate];
          v48 = v81;
          [v81 setDelegate_];
          swift_unknownObjectRelease();
          v49 = type metadata accessor for _EXSceneComponent();
          v88.receiver = v83;
          v88.super_class = v49;
          v50 = objc_msgSendSuper2(&v88, sel_init);

          swift_unknownObjectRelease();
LABEL_14:

          v33(v40, v23);
          return v50;
        }

        swift_unknownObjectRelease();
      }

      v92 = 0;
      v93 = 0xE000000000000000;
      sub_1D2A00678();

      v92 = 0xD000000000000016;
      v93 = 0x80000001D2A07FE0;
      v90 = [v44 scene];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701310, &qword_1D2A03F08);
      v77 = sub_1D2A003F8();
      MEMORY[0x1D38A52F0](v77);
    }

    else
    {
      v92 = 0;
      v93 = 0xE000000000000000;
      sub_1D2A00678();

      v92 = 0xD00000000000001ELL;
      v93 = 0x80000001D2A07FC0;
      v73 = [v42 description];
      v74 = sub_1D2A003E8();
      v76 = v75;

      MEMORY[0x1D38A52F0](v74, v76);
    }
  }

  result = sub_1D2A006A8();
  __break(1u);
  return result;
}

uint64_t sub_1D29E9894(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1D29EACB0(&qword_1EC700A88, type metadata accessor for LaunchOptionsKey);
    sub_1D2A003A8();
  }

  v6 = a3;
  v7 = a1;
  v8 = sub_1D29EA4D8(v6);

  return v8 & 1;
}

void sub_1D29E9958(void *a1)
{
  v1 = a1;
  sub_1D29FFCA8();
}

void sub_1D29E99E0()
{
  type metadata accessor for _EXSceneComponent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v1)
  {
    sub_1D2A003E8();
    v1 = sub_1D2A003B8();
  }

  v2 = objc_opt_self();
  v3 = [objc_opt_self() predicateWithValue_];
  [v2 _registerSceneComponentClass_withKey_predicate_];

  byte_1ED847770 = 1;
}

id sub_1D29E9AAC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_1D29EA7C4(v9, v10);

  return v12;
}

id sub_1D29E9B44(int a1, int a2, int a3, id a4)
{
  v4 = [a4 configuration];

  return v4;
}

id sub_1D29E9E74(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5.receiver = a1;
  v5.super_class = a4(a3);
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1D29E9ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1D29E9F30(void *a1, void *a2)
{
  v5 = sub_1D2A00008();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D29DE7B8;
  v33 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1D29EE4E8;
  v31 = &block_descriptor_1;
  v10 = _Block_copy(&aBlock);

  v11 = [a2 extractNSXPCConnectionWithConfigurator_];
  _Block_release(v10);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_12;
  }

  v25 = a1;
  v26 = v5;
  v27 = v2;
  v12 = [a2 service];
  v13 = sub_1D2A003E8();
  v15 = v14;

  if (v13 != 0x767265536E69614DLL || v15 != 0xEB00000000656369)
  {
    v16 = sub_1D2A00708();

    if (v16)
    {
      goto LABEL_6;
    }

LABEL_12:
    aBlock = 0;
    v29 = 0xE000000000000000;
    sub_1D2A00678();

    aBlock = 0xD000000000000030;
    v29 = 0x80000001D2A07B90;
    v20 = [v25 description];
    v21 = sub_1D2A003E8();
    v23 = v22;

    MEMORY[0x1D38A52F0](v21, v23);

    sub_1D2A006A8();
    __break(1u);
    return;
  }

LABEL_6:
  sub_1D29FFFE8();
  v17 = sub_1D29FFFF8();
  v18 = sub_1D2A00598();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D29CC000, v17, v18, "Received connection request on service listener", v19, 2u);
    MEMORY[0x1D38A6000](v19, -1, -1);
  }

  (*(v6 + 8))(v9, v26);
  if ((sub_1D29FFC78() & 1) == 0)
  {
    [a2 invalidate];
  }
}

uint64_t sub_1D29EA2B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_1D29FFC48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 _FBSScene];
  v12 = [v11 identifier];
  sub_1D2A003E8();

  sub_1D29FFC18();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    return sub_1D29DB7F4(v5, &qword_1EC701300, &qword_1D2A03830);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v14 = [objc_opt_self() sharedInstance];
    v15 = sub_1D29FFC28();
    [v14 removeSessionForIdentifier_];

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1D29EA4D8(void *a1)
{
  v2 = sub_1D2A00008();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v7 = a1;
  v8 = sub_1D29FFFF8();
  v9 = sub_1D2A00598();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    sub_1D29DB7F4(v11, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v11, -1, -1);
    MEMORY[0x1D38A6000](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_1D29FFCB8();
  return 1;
}

uint64_t sub_1D29EA688(const char *a1)
{
  v2 = sub_1D2A00008();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v7 = sub_1D29FFFF8();
  v8 = sub_1D2A00598();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D29CC000, v7, v8, a1, v9, 2u);
    MEMORY[0x1D38A6000](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_1D29EA7C4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D2A00008();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  sub_1D29FFFE8();
  v14 = sub_1D29FFFF8();
  v15 = sub_1D2A00598();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    MEMORY[0x1D38A6000](v16, -1, -1);
  }

  v17 = *(v7 + 8);
  v17(v13, v6);
  sub_1D29FFFE8();
  v18 = a2;
  v19 = sub_1D29FFFF8();
  v20 = sub_1D2A00598();

  if (os_log_type_enabled(v19, v20))
  {
    v37 = v17;
    v38 = v6;
    v39 = v3;
    v40 = a1;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v22;
    *v21 = 136315138;
    v23 = [v18 sourceApplication];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1D2A003E8();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v41 = v25;
    v42 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7012F0, &unk_1D2A03EF8);
    v28 = sub_1D2A003F8();
    v30 = sub_1D29F87C4(v28, v29, &v43);

    *(v21 + 4) = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1D38A6000](v22, -1, -1);
    MEMORY[0x1D38A6000](v21, -1, -1);

    v37(v11, v38);
    a1 = v40;
  }

  else
  {

    v17(v11, v6);
  }

  v31 = sub_1D29FFC58();
  v32 = [objc_allocWithZone(_EXFBSSceneSession) initWithExtension_];

  result = [v18 _fbsScene];
  if (result)
  {
    v34 = result;
    [v32 connectWithFBSScene_];

    if (qword_1ED847760 != -1)
    {
      swift_once();
    }

    v35 = [a1 configuration];
    [v35 setDelegateClass_];

    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D29EAB78()
{
  v0 = sub_1D2A00008();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v5 = sub_1D29FFFF8();
  v6 = sub_1D2A00598();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D29CC000, v5, v6, "_wantsApplicationBehaviorAsExtension returning true", v7, 2u);
    MEMORY[0x1D38A6000](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 1;
}

uint64_t sub_1D29EACB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D29EAD28()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D2A00738();
  sub_1D2A00428();
  return sub_1D2A00748();
}

uint64_t sub_1D29EAD74()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D2A00428();
}

uint64_t sub_1D29EAD7C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D2A00738();
  sub_1D2A00428();
  return sub_1D2A00748();
}

uint64_t sub_1D29EADC4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Role.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D29EAE08(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2A00708();
  }
}

uint64_t sub_1D29EAE38()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D29EAE68()
{
  v0 = *MEMORY[0x1E6966D28];
  result = sub_1D2A003E8();
  qword_1EC701318 = result;
  unk_1EC701320 = v2;
  return result;
}

uint64_t static Role.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC700918 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = unk_1EC701320;
  *a1 = qword_1EC701318;
  a1[1] = v2;
}

unint64_t sub_1D29EAF10()
{
  result = qword_1EC701328;
  if (!qword_1EC701328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701328);
  }

  return result;
}

unint64_t sub_1D29EAF68()
{
  result = qword_1EC701330;
  if (!qword_1EC701330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701330);
  }

  return result;
}

unint64_t sub_1D29EAFCC()
{
  result = qword_1EC701338;
  if (!qword_1EC701338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701338);
  }

  return result;
}

uint64_t _AnyViewConfiguration.init<A>(erasing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v22 = v10;
  v23 = v12;
  v12(v11, a1, a2);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v21 = *(v8 + 32);
  v21(v14 + v13, v11, a2);
  *a4 = sub_1D29EBF98;
  a4[1] = v14;
  v20 = a1;
  v23(v11, a1, a2);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v21(v15 + v13, v11, a2);
  a4[2] = sub_1D29EC0EC;
  a4[3] = v15;
  v23(v11, a1, a2);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = v21;
  v21(v16 + v13, v11, a2);
  a4[4] = sub_1D29EC278;
  a4[5] = v16;
  v17(v11, v20, a2);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  result = (v17)(v18 + v13, v11, a2);
  a4[6] = sub_1D29EC2B4;
  a4[7] = v18;
  return result;
}

uint64_t sub_1D29EB2D4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = *a1;
  v48 = a1[1];
  v3 = *v2;
  v4 = *(v2 + 8);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;

  v6 = v3(v5);
  v7 = sub_1D2A00598();
  v8 = sub_1D29D9A60();
  v9 = sub_1D2A00608();
  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v52 = v11;
    *v10 = 136315138;
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v4;
    *&v56 = sub_1D29EC96C;
    *(&v56 + 1) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701350, &qword_1D2A040D8);
    v13 = sub_1D2A003F8();
    v15 = sub_1D29F87C4(v13, v14, &v52);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D29CC000, v9, v7, "Content %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D38A6000](v11, -1, -1);
    MEMORY[0x1D38A6000](v10, -1, -1);
  }

  else
  {
  }

  v16 = *(v6 + 16);
  v17 = v47;
  if (v16)
  {
    v18 = 0;
    v19 = v16 - 1;
    v20 = 32;
    v46 = v16 - 1;
    while (1)
    {
      v21 = *(v6 + v20 + 48);
      v23 = *(v6 + v20);
      v22 = *(v6 + v20 + 16);
      v58 = *(v6 + v20 + 32);
      v59 = v21;
      v56 = v23;
      v57 = v22;
      v49 = v23;
      sub_1D29DB798(&v56, &v52);
      v24 = sub_1D2A00598();
      v25 = sub_1D2A00608();
      if (os_log_type_enabled(v25, v24))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v51[0] = v27;
        *v26 = 136315394;
        v49(&v52);
        v28 = v6;
        v29 = v8;
        v30 = sub_1D29F87C4(v52, *(&v52 + 1), v51);

        *(v26 + 4) = v30;
        v8 = v29;
        v6 = v28;
        v17 = v47;
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_1D29F87C4(v47, v48, v51);
        _os_log_impl(&dword_1D29CC000, v25, v24, "Evaluating %s) for role %s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38A6000](v27, -1, -1);
        v31 = v26;
        v19 = v46;
        MEMORY[0x1D38A6000](v31, -1, -1);
      }

      v49(&v52);
      if (v52 == __PAIR128__(v48, v17))
      {
        break;
      }

      v32 = sub_1D2A00708();

      if (v32)
      {
        goto LABEL_15;
      }

      sub_1D29DB6F8(&v56);
      if (v19 == v18)
      {
        goto LABEL_14;
      }

      ++v18;
      v20 += 64;
      if (v18 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

LABEL_15:
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    sub_1D29DB7F4(&v52, &qword_1EC700D98, &qword_1D2A03578);

    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v59;
  }

  else
  {
LABEL_14:
  }

  v33 = sub_1D2A00598();
  v34 = sub_1D2A00608();
  v56 = v60;
  v57 = v61;
  v58 = v62;
  v59 = v63;
  if (os_log_type_enabled(v34, v33))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50[0] = v36;
    *v35 = 136315138;
    v52 = v56;
    v53 = v57;
    v54 = v58;
    v55 = v59;
    sub_1D29EC8FC(&v56, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700D98, &qword_1D2A03578);
    v37 = sub_1D2A003F8();
    v39 = sub_1D29F87C4(v37, v38, v50);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1D29CC000, v34, v33, "Made View configuration: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1D38A6000](v36, -1, -1);
    MEMORY[0x1D38A6000](v35, -1, -1);
  }

  swift_beginAccess();
  v40 = v60;
  v41 = v61;
  v51[0] = v60;
  v51[1] = v61;
  v43 = v63;
  v51[2] = v62;
  v42 = v62;
  *a2 = v60;
  a2[1] = v41;
  a2[2] = v42;
  a2[3] = v43;
  v51[3] = v43;
  v52 = v40;
  v54 = v42;
  v55 = v43;
  v53 = v41;
  sub_1D29EC8FC(v51, v50);
  return sub_1D29DB7F4(&v52, &qword_1EC700D98, &qword_1D2A03578);
}

ExtensionKit::_EmptyViewConfiguration __swiftcall _EmptyViewConfiguration.init()()
{
  if (qword_1EC700920 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v2 = *algn_1EC701348;
  *v0 = qword_1EC701340;
  v0[1] = v2;

  result.role.rawValue._object = v4;
  result.role.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static _ViewConfigurationBuilder.buildBlock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700EB0, "r]");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D2A03590;
  (*(v6 + 16))(v9, a1, a2);
  _AnyViewConfiguration.init<A>(erasing:)(v9, a2, a3, (v10 + 32));
  return v10;
}

uint64_t _ViewConfigurationGroup.init<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  swift_getFunctionTypeMetadata0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701350, &qword_1D2A040D8);
  if (swift_dynamicCast())
  {

    result = swift_allocObject();
    *(result + 16) = v12;
    v11 = sub_1D29EC33C;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = a3;
    *(result + 24) = a4;
    *(result + 32) = a1;
    *(result + 40) = a2;
    v11 = sub_1D29EC330;
  }

  *a5 = v11;
  a5[1] = result;
  return result;
}

uint64_t _Role.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D29EBACC()
{
  v0 = *MEMORY[0x1E6966D28];
  result = sub_1D2A003E8();
  qword_1EC701340 = result;
  *algn_1EC701348 = v2;
  return result;
}

uint64_t static _Role.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC700920 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EC701348;
  *a1 = qword_1EC701340;
  a1[1] = v2;
}

uint64_t _ViewConfiguration.role.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC700920 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EC701348;
  *a1 = qword_1EC701340;
  a1[1] = v2;
}

void sub_1D29EBC1C()
{
  sub_1D2A00598();
  sub_1D29D9A60();
  v0 = sub_1D2A00608();
  sub_1D29FFFD8();
}

uint64_t sub_1D29EBCAC@<X0>(void *a1@<X8>)
{
  if (qword_1EC700920 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EC701348;
  *a1 = qword_1EC701340;
  a1[1] = v2;
}

uint64_t _EmptyViewConfiguration.role.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t _EmptyViewConfiguration.role.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_1D29EBE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - v12;
  v11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700EB0, "r]");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D2A03590;
  (*(v6 + 16))(v10, v13, a3);
  _AnyViewConfiguration.init<A>(erasing:)(v10, a3, a4, (v14 + 32));
  (*(v6 + 8))(v13, a3);
  return v14;
}

uint64_t _AnyViewConfiguration.role.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1D29EBF98()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 24))();
}

uint64_t sub_1D29EC000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(a3 + 32))(a2, a3);
  swift_getAssociatedConformanceWitness();
  return sub_1D2A00318();
}

uint64_t sub_1D29EC128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700D80, "nX");
  if (swift_dynamicCast())
  {
    sub_1D29DAEB8(v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_1D29FFFA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D29DB7F4(v8, &unk_1EC701610, &qword_1D2A03570);
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D29EC2B4(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v5 = *a1;
  return (*(v2 + 40))(&v5);
}

uint64_t sub_1D29EC33C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t _AnyViewConfiguration.view.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

Swift::Bool __swiftcall _AnyViewConfiguration.shouldAccept(connection:)(NSXPCConnection connection)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(connection.super.isa) & 1;
}

uint64_t _AnyViewConfiguration.consume(initializationParameters:)(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_1D29EC40C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1D29EC434@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1D29EC464(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_1D29EC4A0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1() & 1;
}

uint64_t _InitializationParameters.resolve<A>()()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v11[0] = 0;
  v2 = [v1 resolveObjectOfClass:swift_getObjCClassFromMetadata() error:v11];
  v3 = v11[0];
  if (v2)
  {
    v4 = swift_dynamicCastUnknownClass();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      result = v5;
    }

    else
    {
      v9 = v3;
      swift_unknownObjectRelease();
      result = 0;
    }
  }

  else
  {
    v8 = v11[0];
    sub_1D29FFB98();

    result = swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D29EC5C4()
{
  result = qword_1EC701358;
  if (!qword_1EC701358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701358);
  }

  return result;
}

unint64_t sub_1D29EC61C()
{
  result = qword_1EC701360;
  if (!qword_1EC701360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701360);
  }

  return result;
}

unint64_t sub_1D29EC674()
{
  result = qword_1EC701368;
  if (!qword_1EC701368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701368);
  }

  return result;
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

uint64_t sub_1D29EC7A0(uint64_t *a1, int a2)
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

uint64_t sub_1D29EC7E8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D29EC854(uint64_t *a1, int a2)
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

uint64_t sub_1D29EC89C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D29EC8FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700D98, &qword_1D2A03578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29EC96C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for _EXRunningUIKitSceneHostedExtension()
{
  result = qword_1EC701370;
  if (!qword_1EC701370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D29ECA40(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_1D29ECAE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_1D29ECB34(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for _EXRunningUIKitSceneHostedExtension();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D29ECB78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2A00008();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v50 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - v18;
  type metadata accessor for _EXRunningUIExtension(0);
  v20 = sub_1D29FFCE8();
  result = v20(a1, a2);
  if (result)
  {
    return result;
  }

  sub_1D29FFFE8();
  v22 = sub_1D29FFFF8();
  v23 = sub_1D2A005B8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1D29CC000, v22, v23, "Configuring internal listener", v24, 2u);
    MEMORY[0x1D38A6000](v24, -1, -1);
  }

  v51 = *(v7 + 8);
  v51(v19, v6);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1D29EE434;
  *(v26 + 24) = v25;
  v56 = sub_1D29EE470;
  v57 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1D29EE4E8;
  v55 = &block_descriptor_8_0;
  v27 = _Block_copy(&aBlock);
  v28 = objc_opt_self();

  v50 = v28;
  v29 = [v28 listenerWithConfigurator_];
  _Block_release(v27);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    isEscapingClosureAtFileLocation = &off_1E8402000;
    [v29 activate];
    sub_1D29FFFE8();
    v31 = sub_1D29FFFF8();
    v32 = sub_1D2A005B8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D29CC000, v31, v32, "Configuring service listener", v33, 2u);
      MEMORY[0x1D38A6000](v33, -1, -1);
    }

    v51(v17, v6);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1D29EE498;
    *(v35 + 24) = v34;
    v56 = sub_1D29EE4EC;
    v57 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1D29EE4E8;
    v55 = &block_descriptor_16;
    v36 = _Block_copy(&aBlock);

    v29 = [v50 listenerWithConfigurator_];
    _Block_release(v36);

    LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

    if ((v36 & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
LABEL_10:
  [v29 *(isEscapingClosureAtFileLocation + 1208)];
  sub_1D29FFFE8();
  v37 = sub_1D29FFFF8();
  v38 = sub_1D2A005B8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D29CC000, v37, v38, "Checking in with launchd", v39, 2u);
    MEMORY[0x1D38A6000](v39, -1, -1);
  }

  v51(v14, v6);
  v40 = CFRunLoopGetMain();
  if (v40)
  {
    v41 = v40;
    v42 = swift_allocObject();
    *(v42 + 16) = v3;
    v56 = sub_1D29DF518;
    v57 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1D29ECA40;
    v55 = &block_descriptor_22_0;
    v43 = _Block_copy(&aBlock);
    v44 = v3;

    v45 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0, v43);
    _Block_release(v43);
    v46 = qword_1ED847918;
    qword_1ED847918 = v45;

    CFRunLoopAddObserver(v41, v45, *MEMORY[0x1E695E8D0]);
    getpid();
    memorystatus_control();
    sub_1D29FFFE8();
    v47 = sub_1D29FFFF8();
    v48 = sub_1D2A005B8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1D29CC000, v47, v48, "Resuming service listener", v49, 2u);
      MEMORY[0x1D38A6000](v49, -1, -1);
    }

    v51(v11, v6);
    [objc_opt_self() activateXPCService];
    __break(1u);
  }

  result = sub_1D2A006A8();
  __break(1u);
  return result;
}