void sub_18B2B6C5C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  if (a3)
  {
    sub_18B2C8F74();
    v10 = sub_18B2C8F84();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_18B2C8F84();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a1;
  a4(v9);
}

uint64_t AXSettings.TripleClick.accessibilityHelpBannerLastShownTimestamp.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerLastShownTimestamp);
  v12 = v1;
  v9 = sub_18B2B8844;
  v10 = &v11;

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v13);
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2B82BC(a1, v5);
  sub_18B2C9484();

  return sub_18B2B832C(a1);
}

uint64_t sub_18B2B6E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_18B2B82BC(a1, &v11 - v8);
  return a5(v9);
}

void (*AXSettings.TripleClick.accessibilityHelpBannerLastShownTimestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77D0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerLastShownTimestamp;
  v5[3] = v7;
  v5[4] = v8;
  v9 = *(v1 + v8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);

  os_unfair_lock_lock(v9 + 4);
  sub_18B22F010(&v12);
  v5[5] = 0;
  os_unfair_lock_unlock(v9 + 4);

  sub_18B2C9474();

  return sub_18B2B70C0;
}

void sub_18B2B70C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v4 = *v2;
    v5 = sub_18B2B82BC(v2[3], v2[1]);
    v6 = *(v4 + v3);
    v7 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock(v6 + 4);
    sub_18B22F010(v13);
    os_unfair_lock_unlock(v6 + 4);
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];

    sub_18B2B82BC(v10, v9);
    sub_18B2C9484();

    sub_18B2B832C(v10);
  }

  else
  {
    v11 = *(*v2 + v3);
    v12 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v12);

    os_unfair_lock_lock(v11 + 4);
    sub_18B22F010(v13);
    os_unfair_lock_unlock(v11 + 4);
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];

    sub_18B2B82BC(v8, v9);
    sub_18B2C9484();
  }

  sub_18B2B832C(v8);
  free(v8);
  free(v9);
  free(v10);
  free(v2);
}

uint64_t AXSettings.TripleClick._$accessibilityHelpBannerTemporaryTripleClickOptions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerTemporaryTripleClickOptions);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2B7340@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerTemporaryTripleClickOptions_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerTemporaryTripleClickOptions_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerTemporaryTripleClickOptions_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6500);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2B8584();
    sub_18B2B862C();
    sub_18B2B87E0(&qword_1EA9B7860, v8, type metadata accessor for AXSettings.TripleClick);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2B7520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerTemporaryTripleClickOptions);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.TripleClick.accessibilityHelpBannerTemporaryTripleClickOptions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerTemporaryTripleClickOptions);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.TripleClick.accessibilityHelpBannerTemporaryTripleClickOptions.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerTemporaryTripleClickOptions);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.TripleClick.accessibilityHelpBannerTemporaryTripleClickOptions.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerTemporaryTripleClickOptions;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B2B7910;
}

void sub_18B2B7910(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.TripleClick.settings.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerFirstShownTimestamp);
  v31 = sub_18B2B882C;
  v32 = &v33;

  os_unfair_lock_lock(v2 + 4);
  sub_18B22F010(&v37);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v37;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6510);
  v38 = v4;
  v5 = sub_18B29D578(&qword_1EA9B6518, &qword_1EA9B6510);
  v39 = v5;
  *&v37 = v3;
  sub_18B22C7E4(&v37, v35);
  v6 = MEMORY[0x1E69E7CC8];
  LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
  v34 = v6;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v9);
  sub_18B22CAEC(*v9, 0xD00000000000002BLL, 0x800000018B2F70E0, v3, &v34);
  v11 = __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v12 = v34;
  v13 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerLastShownTimestamp);
  v14 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v14);

  os_unfair_lock_lock(v13 + 4);
  sub_18B22F010(&v37);
  os_unfair_lock_unlock(v13 + 4);
  v15 = v37;

  v38 = v4;
  v39 = v5;
  *&v37 = v15;
  sub_18B22C7E4(&v37, v35);
  LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
  v34 = v12;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18);
  sub_18B22CAEC(*v18, 0xD00000000000002ALL, 0x800000018B2F7110, v15, &v34);
  v20 = __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v21 = v34;
  v22 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerTemporaryTripleClickOptions);
  v23 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v23);

  os_unfair_lock_lock(v22 + 4);
  sub_18B22F010(&v37);
  os_unfair_lock_unlock(v22 + 4);
  v24 = v37;

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6500);
  v39 = sub_18B29D578(&qword_1EA9B6508, &qword_1EA9B6500);
  *&v37 = v24;
  sub_18B22C7E4(&v37, v35);
  LOBYTE(v1) = swift_isUniquelyReferenced_nonNull_native();
  v34 = v21;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v30[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27);
  sub_18B22CB08(*v27, 0xD000000000000033, 0x800000018B2F7140, v1, &v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return v34;
}

id AXSettings.TripleClick.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerFirstShownTimestamp_Storage] = 0;
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerFirstShownTimestamp;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerLastShownTimestamp_Storage] = 0;
  v4 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerLastShownTimestamp;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerTemporaryTripleClickOptions_Storage] = 0;
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerTemporaryTripleClickOptions;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v0[v6] = v7;
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v0[v8] = sub_18B2C9584();
  v9 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v0[v9] = sub_18B2C9564();
  sub_18B2C95B4();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id AXSettings.TripleClick.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B2B82BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B2B832C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSo10AXSettingsC22AccessibilityUtilitiesE11TripleClickC9selectorsShy10ObjectiveC8SelectorVGvg_0()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_accessibilityHelpBannerFirstShownTimestamp);
  sub_18B232DFC(&v1, sel_setAccessibilityHelpBannerFirstShownTimestamp_);
  sub_18B232DFC(&v1, sel_accessibilityHelpBannerLastShownTimestamp);
  sub_18B232DFC(&v1, sel_setAccessibilityHelpBannerLastShownTimestamp_);
  sub_18B232DFC(&v1, sel_accessibilityHelpBannerTemporaryTripleClickOptions);
  sub_18B232DFC(&v1, sel_setAccessibilityHelpBannerTemporaryTripleClickOptions_);
  return v2;
}

unint64_t sub_18B2B8584()
{
  result = qword_1EA9B7838;
  if (!qword_1EA9B7838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B77E8);
    sub_18B2B86D4(&qword_1EA9B7840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7838);
  }

  return result;
}

unint64_t sub_18B2B862C()
{
  result = qword_1EA9B7850;
  if (!qword_1EA9B7850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B77E8);
    sub_18B2B86D4(&qword_1EA9B7858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7850);
  }

  return result;
}

uint64_t sub_18B2B86D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B7848);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B2B8740(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B77D0);
    sub_18B2B87E0(a2, 255, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B2B87E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_18B2B8874@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = (a1 + 40);
    do
    {
      v7 = *v6;
      v6 += 2;
      v8 = v7 | v5;
      if ((v7 & v5) != v7)
      {
        v4 = v8;
        v5 = v8;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

id AXSettings.GuestPass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t GuestPassFeature.init(rawValue:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = result;
  return result;
}

int64x2_t sub_18B2B8958()
{
  result = vdupq_n_s64(1uLL);
  xmmword_1EA9B7888 = result;
  return result;
}

int64x2_t sub_18B2B8994()
{
  result = vdupq_n_s64(2uLL);
  xmmword_1EA9B7898 = result;
  return result;
}

int64x2_t sub_18B2B89D0()
{
  result = vdupq_n_s64(4uLL);
  xmmword_1EA9B78A8 = result;
  return result;
}

int64x2_t sub_18B2B8A0C()
{
  result = vdupq_n_s64(8uLL);
  xmmword_1EA9B78B8 = result;
  return result;
}

int64x2_t sub_18B2B8A48()
{
  result = vdupq_n_s64(0x10uLL);
  xmmword_1EA9B78C8 = result;
  return result;
}

int64x2_t sub_18B2B8A84()
{
  result = vdupq_n_s64(0x20uLL);
  xmmword_1EA9B78D8 = result;
  return result;
}

int64x2_t sub_18B2B8AC0()
{
  result = vdupq_n_s64(0x40uLL);
  xmmword_1EA9B78E8 = result;
  return result;
}

int64x2_t sub_18B2B8AFC()
{
  result = vdupq_n_s64(0x80uLL);
  xmmword_1EA9B78F8 = result;
  return result;
}

int64x2_t sub_18B2B8B38()
{
  result = vdupq_n_s64(0x100uLL);
  xmmword_1EA9B7908 = result;
  return result;
}

int64x2_t sub_18B2B8B74()
{
  result = vdupq_n_s64(0x200uLL);
  xmmword_1EA9B7918 = result;
  return result;
}

int64x2_t sub_18B2B8BB0()
{
  result = vdupq_n_s64(0x400uLL);
  xmmword_1EA9B7928 = result;
  return result;
}

int64x2_t sub_18B2B8BEC()
{
  result = vdupq_n_s64(0x800uLL);
  xmmword_1EA9B7938 = result;
  return result;
}

int64x2_t sub_18B2B8C28()
{
  result = vdupq_n_s64(0x1000uLL);
  xmmword_1EA9B7948 = result;
  return result;
}

int64x2_t sub_18B2B8C64()
{
  result = vdupq_n_s64(0x2000uLL);
  xmmword_1EA9B7958 = result;
  return result;
}

int64x2_t sub_18B2B8CA0()
{
  result = vdupq_n_s64(0x4000uLL);
  xmmword_1EA9B7968 = result;
  return result;
}

int64x2_t sub_18B2B8CDC()
{
  result = vdupq_n_s64(0x8000uLL);
  xmmword_1EA9B7978 = result;
  return result;
}

int64x2_t sub_18B2B8D18()
{
  result = vdupq_n_s64(0x10000uLL);
  xmmword_1EA9B7988 = result;
  return result;
}

int64x2_t sub_18B2B8D54()
{
  result = vdupq_n_s64(0x20000uLL);
  xmmword_1EA9B7998 = result;
  return result;
}

int64x2_t sub_18B2B8D90()
{
  result = vdupq_n_s64(0x40000uLL);
  xmmword_1EA9B79A8 = result;
  return result;
}

uint64_t sub_18B2B8DCC()
{
  if (qword_1EA9B62E0 != -1)
  {
    result = swift_once();
  }

  v6 = *(&xmmword_1EA9B7888 + 1);
  if (qword_1EA9B62E8 != -1)
  {
    result = swift_once();
  }

  v7 = *(&xmmword_1EA9B7898 + 1);
  if (qword_1EA9B62F0 != -1)
  {
    result = swift_once();
  }

  v8 = *(&xmmword_1EA9B78A8 + 1);
  if (qword_1EA9B62F8 != -1)
  {
    result = swift_once();
  }

  v9 = *(&xmmword_1EA9B78B8 + 1);
  if (qword_1EA9B6300 != -1)
  {
    result = swift_once();
  }

  v10 = *(&xmmword_1EA9B78C8 + 1);
  if (qword_1EA9B6308 != -1)
  {
    result = swift_once();
  }

  v11 = *(&xmmword_1EA9B78D8 + 1);
  if (qword_1EA9B6310 != -1)
  {
    result = swift_once();
  }

  v12 = *(&xmmword_1EA9B78E8 + 1);
  if (qword_1EA9B6318 != -1)
  {
    result = swift_once();
  }

  v13 = *(&xmmword_1EA9B78F8 + 1);
  if (qword_1EA9B6320 != -1)
  {
    result = swift_once();
  }

  v14 = *(&xmmword_1EA9B7908 + 1);
  if (qword_1EA9B6328 != -1)
  {
    result = swift_once();
  }

  v15 = *(&xmmword_1EA9B7918 + 1);
  if (qword_1EA9B6330 != -1)
  {
    result = swift_once();
  }

  v16 = *(&xmmword_1EA9B7928 + 1);
  if (qword_1EA9B6338 != -1)
  {
    result = swift_once();
  }

  v17 = *(&xmmword_1EA9B7938 + 1);
  if (qword_1EA9B6340 != -1)
  {
    result = swift_once();
  }

  v18 = *(&xmmword_1EA9B7948 + 1);
  if (qword_1EA9B6348 != -1)
  {
    result = swift_once();
  }

  v19 = *(&xmmword_1EA9B7958 + 1);
  if (qword_1EA9B6350 != -1)
  {
    result = swift_once();
  }

  v20 = *(&xmmword_1EA9B7968 + 1);
  if (qword_1EA9B6358 != -1)
  {
    result = swift_once();
  }

  v21 = *(&xmmword_1EA9B7978 + 1);
  if (qword_1EA9B6360 != -1)
  {
    result = swift_once();
  }

  v22 = *(&xmmword_1EA9B7988 + 1);
  if (qword_1EA9B6368 != -1)
  {
    result = swift_once();
  }

  v23 = *(&xmmword_1EA9B7998 + 1);
  if (qword_1EA9B6370 != -1)
  {
    result = swift_once();
  }

  v0 = 0;
  v1 = 0;
  v24 = *(&xmmword_1EA9B79A8 + 1);
  for (i = 40; i != 344; i += 16)
  {
    v3 = *&v5[i];
    if ((v3 & v1) != v3)
    {
      v0 = v3 | v1;
      v1 |= v3;
    }
  }

  *&xmmword_1EA9B79B8 = v0;
  *(&xmmword_1EA9B79B8 + 1) = v1;
  return result;
}

__n128 sub_18B2B92C8@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

uint64_t *sub_18B2B9318@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_18B2B93D4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8) | *(result + 8);
  *a2 = v3;
  a2[1] = v3;
  return result;
}

uint64_t sub_18B2B93E8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8) & *(result + 8);
  *a2 = v3;
  a2[1] = v3;
  return result;
}

uint64_t sub_18B2B93FC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8) ^ *(result + 8);
  *a2 = v3;
  a2[1] = v3;
  return result;
}

BOOL sub_18B2B941C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v5 = a3;
  if ((v4 & a3) != a3)
  {
    *v3 = v4 | a3;
    v3[1] = v4 | a3;
    v5 = a2;
  }

  *a1 = v5;
  a1[1] = a3;
  return (v4 & a3) != a3;
}

void sub_18B2B945C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  v4 = v3 & a1;
  if ((v3 & a1) != 0)
  {
    v5 = v3 & ~a1;
    *v2 = v5;
    v2[1] = v5;
  }

  *a2 = v4;
  *(a2 + 8) = v4;
  *(a2 + 16) = v4 == 0;
}

void sub_18B2B9490(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  *v2 = v3 | a1;
  v2[1] = v3 | a1;
  v4 = v3 & a1;
  *a2 = v4;
  *(a2 + 8) = v4;
  *(a2 + 16) = v4 == 0;
}

uint64_t sub_18B2B94B0(uint64_t result)
{
  v2 = v1[1] | *(result + 8);
  *v1 = v2;
  v1[1] = v2;
  return result;
}

uint64_t sub_18B2B94C4(uint64_t result)
{
  v2 = v1[1] & *(result + 8);
  *v1 = v2;
  v1[1] = v2;
  return result;
}

uint64_t sub_18B2B94D8(uint64_t result)
{
  v2 = v1[1] ^ *(result + 8);
  *v1 = v2;
  v1[1] = v2;
  return result;
}

uint64_t sub_18B2B94EC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8) & ~*(result + 8);
  *a2 = v3;
  a2[1] = v3;
  return result;
}

uint64_t sub_18B2B9550(uint64_t result)
{
  v2 = v1[1] & ~*(result + 8);
  *v1 = v2;
  v1[1] = v2;
  return result;
}

uint64_t *sub_18B2B9564@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  return result;
}

uint64_t AXSettings.GuestPass._$shouldSyncToiCloud.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_shouldSyncToiCloud);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2B9624@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___shouldSyncToiCloud_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___shouldSyncToiCloud_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___shouldSyncToiCloud_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2BDA9C(&qword_1EA9B56B8, v8, type metadata accessor for AXSettings.GuestPass);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2B9830@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_shouldSyncToiCloud);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.GuestPass.shouldSyncToiCloud.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_shouldSyncToiCloud);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.GuestPass.shouldSyncToiCloud.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_shouldSyncToiCloud);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.GuestPass.shouldSyncToiCloud.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_shouldSyncToiCloud;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2B9B60;
}

uint64_t sub_18B2B9B60(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.GuestPass._$settingsToIncludeInTransfer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_settingsToIncludeInTransfer);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22C68C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2B9CD8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___settingsToIncludeInTransfer_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___settingsToIncludeInTransfer_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___settingsToIncludeInTransfer_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64F0);
    a1;
    sub_18B2C9674();
    sub_18B2BDAE4();
    sub_18B2BDB38();
    sub_18B2BD734();
    sub_18B2BDA9C(&qword_1EA9B56B8, v7, type metadata accessor for AXSettings.GuestPass);
    v6 = sub_18B2C9464();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

double sub_18B2B9EA8@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EA9B6378 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EA9B79B8;
  *a1 = xmmword_1EA9B79B8;
  return result;
}

uint64_t sub_18B2B9F38(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_settingsToIncludeInTransfer);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();
}

uint64_t AXSettings.GuestPass.settingsToIncludeInTransfer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_settingsToIncludeInTransfer);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();
}

uint64_t AXSettings.GuestPass.settingsToIncludeInTransfer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_settingsToIncludeInTransfer);

  os_unfair_lock_lock(v4 + 4);
  sub_18B22F010(v6);
  os_unfair_lock_unlock(v4 + 4);

  v6[0] = v2;
  v6[1] = v3;
  sub_18B2C9484();
}

void (*AXSettings.GuestPass.settingsToIncludeInTransfer.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_settingsToIncludeInTransfer;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  *(v4 + 48) = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  return sub_18B2BA240;
}

void sub_18B2BA240(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = *((*a1)[4] + (*a1)[5]);

  os_unfair_lock_lock(v4 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v4 + 4);

  v1[2] = v2;
  v1[3] = v3;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.GuestPass._$deviceUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_deviceUUID);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2BA3CC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___deviceUUID_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___deviceUUID_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___deviceUUID_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6580);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2BD9FC(&qword_1ED653C18, &qword_1ED653C30);
    sub_18B2BD9FC(&qword_1ED653C20, &qword_1ED653C38);
    sub_18B2BDA9C(&qword_1EA9B56B8, v8, type metadata accessor for AXSettings.GuestPass);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t AXSettings.GuestPass.deviceUUIDStream.getter()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  sub_18B2C96C4();
}

uint64_t sub_18B2BA680(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_deviceUUID);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();
}

uint64_t AXSettings.GuestPass.deviceUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_deviceUUID);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();
}

uint64_t sub_18B2BA7B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_18B2BD5C8(a1, &v6 - v3);
  return AXSettings.GuestPass.deviceUUID.setter(v4);
}

uint64_t AXSettings.GuestPass.deviceUUID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_deviceUUID);
  v12 = v1;
  v9 = sub_18B2BDBBC;
  v10 = &v11;

  os_unfair_lock_lock(v6 + 4);
  sub_18B23602C(&v13);
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2BD5C8(a1, v5);
  sub_18B2C9484();

  return sub_18B2BD638(a1);
}

void (*AXSettings.GuestPass.deviceUUID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_deviceUUID;
  v5[3] = v7;
  v5[4] = v8;
  v9 = *(v1 + v8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);

  os_unfair_lock_lock(v9 + 4);
  sub_18B23602C(&v12);
  v5[5] = 0;
  os_unfair_lock_unlock(v9 + 4);

  sub_18B2C9474();

  return sub_18B2BAAF8;
}

void sub_18B2BAAF8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v4 = *v2;
    v5 = sub_18B2BD5C8(v2[3], v2[1]);
    v6 = *(v4 + v3);
    v7 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock(v6 + 4);
    sub_18B23602C(v13);
    os_unfair_lock_unlock(v6 + 4);
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];

    sub_18B2BD5C8(v10, v9);
    sub_18B2C9484();

    sub_18B2BD638(v10);
  }

  else
  {
    v11 = *(*v2 + v3);
    v12 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v12);

    os_unfair_lock_lock(v11 + 4);
    sub_18B23602C(v13);
    os_unfair_lock_unlock(v11 + 4);
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];

    sub_18B2BD5C8(v8, v9);
    sub_18B2C9484();
  }

  sub_18B2BD638(v8);
  free(v8);
  free(v9);
  free(v10);
  free(v2);
}

uint64_t AXSettings.GuestPass._$didShowOnboarding.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_didShowOnboarding);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2BAD78@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___didShowOnboarding_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___didShowOnboarding_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___didShowOnboarding_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2BDA9C(&qword_1EA9B56B8, v8, type metadata accessor for AXSettings.GuestPass);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2BAF4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_didShowOnboarding);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.GuestPass.didShowOnboarding.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_didShowOnboarding);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.GuestPass.didShowOnboarding.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_didShowOnboarding);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.GuestPass.didShowOnboarding.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_didShowOnboarding;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2BB1F4;
}

uint64_t sub_18B2BB1F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.GuestPass._$presentDevicePicker.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentDevicePicker);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2BB36C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentDevicePicker_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentDevicePicker_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentDevicePicker_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2BDA9C(&qword_1EA9B56B8, v8, type metadata accessor for AXSettings.GuestPass);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2BB540@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentDevicePicker);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.GuestPass.presentDevicePicker.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentDevicePicker);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.GuestPass.presentDevicePicker.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentDevicePicker);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.GuestPass.presentDevicePicker.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentDevicePicker;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2BB7E8;
}

uint64_t sub_18B2BB7E8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.GuestPass._$presentOnboarding.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentOnboarding);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2BB960@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentOnboarding_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentOnboarding_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentOnboarding_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2BDA9C(&qword_1EA9B56B8, v8, type metadata accessor for AXSettings.GuestPass);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2BBB34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentOnboarding);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.GuestPass.presentOnboarding.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentOnboarding);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.GuestPass.presentOnboarding.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentOnboarding);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.GuestPass.presentOnboarding.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentOnboarding;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2BBDDC;
}

uint64_t sub_18B2BBDDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.GuestPass._$presentProfilePicker.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentProfilePicker);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2BBF54@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentProfilePicker_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentProfilePicker_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentProfilePicker_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2BDA9C(&qword_1EA9B56B8, v8, type metadata accessor for AXSettings.GuestPass);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2BC128@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentProfilePicker);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.GuestPass.presentProfilePicker.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentProfilePicker);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.GuestPass.presentProfilePicker.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentProfilePicker);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.GuestPass.presentProfilePicker.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentProfilePicker;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2BC3D0;
}

uint64_t sub_18B2BC3D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.GuestPass.settings.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_shouldSyncToiCloud);
  v67 = sub_18B2BDB8C;
  v68 = &v69;

  os_unfair_lock_lock(v2 + 4);
  sub_18B23602C(&v73);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v73;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v74 = v4;
  v5 = sub_18B29D578(&qword_1EA9B6428, &qword_1EA9B6420);
  v75 = v5;
  *&v73 = v3;
  sub_18B22C7E4(&v73, v71);
  v6 = MEMORY[0x1E69E7CC8];
  LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
  v70 = v6;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v9);
  sub_18B22C8D8(*v9, 0xD000000000000013, 0x800000018B2F7490, v3, &v70);
  v11 = __swift_destroy_boxed_opaque_existential_1Tm(v71);
  v12 = v70;
  v13 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_settingsToIncludeInTransfer);
  v14 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v14);

  os_unfair_lock_lock(v13 + 4);
  sub_18B22F010(&v73);
  os_unfair_lock_unlock(v13 + 4);
  v15 = v73;

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64F0);
  v75 = sub_18B29D578(&qword_1EA9B64F8, &qword_1EA9B64F0);
  *&v73 = v15;
  sub_18B22C7E4(&v73, v71);
  LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
  v70 = v12;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18);
  sub_18B22CB24(*v18, 0xD00000000000001CLL, 0x800000018B2F74B0, v6, &v70);
  v20 = __swift_destroy_boxed_opaque_existential_1Tm(v71);
  v21 = v70;
  v22 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_deviceUUID);
  v23 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v23);

  os_unfair_lock_lock(v22 + 4);
  sub_18B23602C(&v73);
  os_unfair_lock_unlock(v22 + 4);
  v24 = v73;

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6580);
  v75 = sub_18B29D578(&qword_1EA9B6588, &qword_1EA9B6580);
  *&v73 = v24;
  sub_18B22C7E4(&v73, v71);
  LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
  v70 = v21;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27);
  sub_18B22CA28(*v27, 0x5565636976656424, 0xEB00000000444955, v6, &v70);
  v29 = __swift_destroy_boxed_opaque_existential_1Tm(v71);
  v30 = v70;
  v31 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_didShowOnboarding);
  v32 = MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v32);

  os_unfair_lock_lock(v31 + 4);
  sub_18B23602C(&v73);
  os_unfair_lock_unlock(v31 + 4);
  v33 = v73;

  v74 = v4;
  v75 = v5;
  *&v73 = v33;
  sub_18B22C7E4(&v73, v71);
  LOBYTE(v33) = swift_isUniquelyReferenced_nonNull_native();
  v70 = v30;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v66[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v37 + 16))(v36);
  sub_18B22C8D8(*v36, 0xD000000000000012, 0x800000018B2F74D0, v33, &v70);
  v38 = __swift_destroy_boxed_opaque_existential_1Tm(v71);
  v39 = v70;
  v40 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentDevicePicker);
  v41 = MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v41);

  os_unfair_lock_lock(v40 + 4);
  sub_18B23602C(&v73);
  os_unfair_lock_unlock(v40 + 4);
  v42 = v73;

  v74 = v4;
  v75 = v5;
  *&v73 = v42;
  sub_18B22C7E4(&v73, v71);
  LOBYTE(v42) = swift_isUniquelyReferenced_nonNull_native();
  v70 = v39;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v66[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v46 + 16))(v45);
  sub_18B22C8D8(*v45, 0xD000000000000014, 0x800000018B2F74F0, v42, &v70);
  v47 = __swift_destroy_boxed_opaque_existential_1Tm(v71);
  v48 = v70;
  v49 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentOnboarding);
  v50 = MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v50);

  os_unfair_lock_lock(v49 + 4);
  sub_18B23602C(&v73);
  os_unfair_lock_unlock(v49 + 4);
  v51 = v73;

  v74 = v4;
  v75 = v5;
  *&v73 = v51;
  sub_18B22C7E4(&v73, v71);
  LOBYTE(v51) = swift_isUniquelyReferenced_nonNull_native();
  v70 = v48;
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v66[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v55 + 16))(v54);
  sub_18B22C8D8(*v54, 0xD000000000000012, 0x800000018B2F7510, v51, &v70);
  v56 = __swift_destroy_boxed_opaque_existential_1Tm(v71);
  v57 = v70;
  v58 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentProfilePicker);
  v59 = MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v59);

  os_unfair_lock_lock(v58 + 4);
  sub_18B23602C(&v73);
  os_unfair_lock_unlock(v58 + 4);
  v60 = v73;

  v74 = v4;
  v75 = v5;
  *&v73 = v60;
  sub_18B22C7E4(&v73, v71);
  LOBYTE(v60) = swift_isUniquelyReferenced_nonNull_native();
  v70 = v57;
  v61 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v66[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v64 + 16))(v63);
  sub_18B22C8D8(*v63, 0xD000000000000015, 0x800000018B2F7530, v60, &v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  return v70;
}

uint64_t AXSettings.GuestPass.selectors.getter()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_guestPassShouldSyncToiCloud);
  sub_18B232DFC(&v1, sel_setGuestPassShouldSyncToiCloud_);
  return v2;
}

id AXSettings.GuestPass.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___shouldSyncToiCloud_Storage] = 0;
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_shouldSyncToiCloud;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___settingsToIncludeInTransfer_Storage] = 0;
  v4 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_settingsToIncludeInTransfer;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___deviceUUID_Storage] = 0;
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_deviceUUID;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___didShowOnboarding_Storage] = 0;
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_didShowOnboarding;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentDevicePicker_Storage] = 0;
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentDevicePicker;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v0[v10] = v11;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentOnboarding_Storage] = 0;
  v12 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentOnboarding;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v0[v12] = v13;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___presentProfilePicker_Storage] = 0;
  v14 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass___lock_presentProfilePicker;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v0[v14] = v15;
  v16 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v0[v16] = sub_18B2C9584();
  v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9GuestPass_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v0[v17] = sub_18B2C9564();
  sub_18B2C95B4();
  v19.receiver = v0;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

id AXSettings.GuestPass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B2BD51C()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_guestPassShouldSyncToiCloud);
  sub_18B232DFC(&v1, sel_setGuestPassShouldSyncToiCloud_);
  return v2;
}

uint64_t sub_18B2BD5C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B2BD638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18B2BD734()
{
  result = qword_1EA9B7A50;
  if (!qword_1EA9B7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7A50);
  }

  return result;
}

unint64_t sub_18B2BD78C()
{
  result = qword_1EA9B7A58;
  if (!qword_1EA9B7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7A58);
  }

  return result;
}

unint64_t sub_18B2BD7F0()
{
  result = qword_1EA9B7A60;
  if (!qword_1EA9B7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7A60);
  }

  return result;
}

unint64_t sub_18B2BD848()
{
  result = qword_1EA9B7A68;
  if (!qword_1EA9B7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7A68);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GuestPassFeature(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GuestPassFeature(uint64_t result, int a2, int a3)
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

uint64_t sub_18B2BD9FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9B74F0);
    sub_18B2BDA9C(a2, 255, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B2BDA9C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_18B2BDAE4()
{
  result = qword_1EA9B7A70;
  if (!qword_1EA9B7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7A70);
  }

  return result;
}

unint64_t sub_18B2BDB38()
{
  result = qword_1EA9B7A78;
  if (!qword_1EA9B7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7A78);
  }

  return result;
}

uint64_t sub_18B2BDC38()
{
  result = sub_18B2C9864();
  qword_1EA9B7A80 = result;
  return result;
}

uint64_t (*kAXSpeakScreenControllerStateChanged.modify())()
{
  if (qword_1EA9B6380 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18B2BDD40()
{
  result = sub_18B2C9864();
  qword_1EA9B7A88 = result;
  return result;
}

id sub_18B2BDD9C(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_18B2BDE28(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*kAXVoiceOverTutorialOpenFromSettings.modify())()
{
  if (qword_1EA9B6388 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t AccessibilityObservableSettings.AccessibilityShortcut.localizedTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

Swift::Void __swiftcall AccessibilityObservableSettings.AccessibilityShortcut.toggle()()
{
  v1 = *v0;
  v2 = objc_opt_self();

  [v2 toggleAccessibilityShortcutOption_];
}

uint64_t static AccessibilityObservableSettings.AccessibilityShortcut.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v4 || (sub_18B2C9F24() & 1) != 0)
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t AccessibilityObservableSettings.AccessibilityShortcut.hashValue.getter()
{
  sub_18B2C9F64();
  sub_18B2C9F94();
  sub_18B2C9F84();
  return sub_18B2C9FB4();
}

uint64_t sub_18B2BE0BC()
{
  sub_18B2C9F64();
  sub_18B2C9F94();
  sub_18B2C9F84();
  return sub_18B2C9FB4();
}

uint64_t sub_18B2BE15C()
{
  sub_18B2C9F64();
  sub_18B2C9F94();
  sub_18B2C9F84();
  return sub_18B2C9FB4();
}

uint64_t sub_18B2BE1B8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v4 || (sub_18B2C9F24() & 1) != 0)
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

char *sub_18B2BE234()
{
  type metadata accessor for AccessibilityObservableSettings();
  swift_allocObject();
  result = sub_18B2BF584();
  qword_1EA9B7A90 = result;
  return result;
}

uint64_t static AccessibilityObservableSettings.shared.getter()
{
  if (qword_1EA9B6390 != -1)
  {
    swift_once();
  }
}

uint64_t sub_18B2BE310()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_18B2BE390()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_18B2BE430()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7A98);
  sub_18B22EBD8(&qword_1EA9B7AA0, &qword_1EA9B7A98);
  return sub_18B2C97C4();
}

double sub_18B2BE4BC()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_18B2BE53C()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

id sub_18B2BE5BC()
{
  if (qword_1ED653E68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return [qword_1ED653E70 accessibilityReaderEnabled];
}

uint64_t sub_18B2BE63C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7A98);
  sub_18B22EBD8(&qword_1EA9B7AA0, &qword_1EA9B7A98);
  return sub_18B2C97C4();
}

uint64_t sub_18B2BE748()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_18B2BE7C8()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_18B2BE848()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

double sub_18B2BE8C8()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_18B2BE948()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

double sub_18B2BE9F0()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

double sub_18B2BEA70()
{
  v0 = objc_opt_self();

  v2 = [v0 sharedInstance];
  swift_getAtKeyPath();

  return v3;
}

id sub_18B2BEAF0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 fullKeyboardAccessFocusRingColor];

  return v1;
}

id sub_18B2BEB80(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  return v3;
}

uint64_t sub_18B2BEC18@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B2C9794();

  *a1 = v3;
  return result;
}

uint64_t sub_18B2BEC98()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_18B2C97A4();
}

uint64_t sub_18B2BED14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B2C9794();

  return v1;
}

uint64_t sub_18B2BED88()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_18B2C97A4();
}

void (*sub_18B2BEDF8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_18B2C9784();
  return sub_18B2BEE9C;
}

void sub_18B2BEE9C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_18B2BEF04()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AB0);
  sub_18B2C9764();
  return swift_endAccess();
}

uint64_t sub_18B2BEF7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AB8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AB0);
  sub_18B2C9774();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_18B2BF100()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AB0);
  sub_18B2C9764();
  return swift_endAccess();
}

uint64_t sub_18B2BF174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AB0);
  sub_18B2C9774();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_18B2BF2AC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AB8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22AccessibilityUtilities31AccessibilityObservableSettings__cachedTripleClickOptions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AB0);
  sub_18B2C9764();
  swift_endAccess();
  return sub_18B2BF41C;
}

void sub_18B2BF41C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_18B2C9774();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_18B2C9774();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

char *sub_18B2BF584()
{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - v4;
  *(v0 + 2) = swift_getKeyPath();
  *(v0 + 3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7A98);
  swift_allocObject();
  *(v0 + 4) = sub_18B2C9734();
  *(v0 + 5) = swift_getKeyPath();
  *(v0 + 6) = swift_getKeyPath();
  swift_allocObject();
  *(v0 + 7) = sub_18B2C9734();
  *(v0 + 8) = swift_getKeyPath();
  *(v0 + 9) = swift_getKeyPath();
  *(v0 + 10) = swift_getKeyPath();
  *(v0 + 11) = swift_getKeyPath();
  *(v0 + 12) = swift_getKeyPath();
  *(v0 + 13) = swift_getKeyPath();
  *(v0 + 14) = swift_getKeyPath();
  v6 = OBJC_IVAR____TtC22AccessibilityUtilities31AccessibilityObservableSettings__cachedTripleClickOptions;
  v55 = sub_18B2C137C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AE0);
  sub_18B2C9754();
  (*(v3 + 32))(&v1[v6], v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AF0);
  inited = swift_initStackObject();
  v8 = MEMORY[0x1E69E4C78];
  *(inited + 16) = xmmword_18B2FBCB0;
  v9 = *MEMORY[0x1E69E4C60];
  *(inited + 32) = *v8;
  *(inited + 40) = v9;
  v10 = *MEMORY[0x1E69E4D28];
  *(inited + 48) = *MEMORY[0x1E69E4CD8];
  *(inited + 56) = v10;
  v11 = *MEMORY[0x1E69E4D68];
  v12 = MEMORY[0x1E69E4F80];
  *(inited + 64) = *MEMORY[0x1E69E4D38];
  *(inited + 72) = v11;
  v13 = *MEMORY[0x1E69E4FA0];
  *(inited + 80) = *v12;
  *(inited + 88) = v13;
  v14 = *MEMORY[0x1E69E4E58];
  *(inited + 96) = *MEMORY[0x1E69E4E50];
  *(inited + 104) = v14;
  v15 = *MEMORY[0x1E69E4CE0];
  v16 = MEMORY[0x1E69E4DD8];
  *(inited + 112) = *MEMORY[0x1E69E4E48];
  *(inited + 120) = v15;
  v17 = *MEMORY[0x1E69E4EB8];
  *(inited + 128) = *v16;
  *(inited + 136) = v17;
  v18 = *MEMORY[0x1E69E4FB8];
  *(inited + 144) = *MEMORY[0x1E69E4F48];
  *(inited + 152) = v18;
  v19 = *MEMORY[0x1E69E4E08];
  v20 = sub_18B2C1278(1, 17, 1, inited);
  *(v20 + 2) = 17;
  *(v20 + 20) = v19;
  for (i = 32; i != 168; i += 8)
  {
    v22 = *&v20[i];
    if (v22)
    {
      v23 = CFNotificationCenterGetLocalCenter();
      v24 = v22;
      CFNotificationCenterAddObserver(v23, v1, sub_18B2BFE20, v24, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  v25 = CFNotificationCenterGetLocalCenter();
  if (!*MEMORY[0x1E69E4EF8])
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v25;
  v27 = *MEMORY[0x1E69E4EF8];
  CFNotificationCenterAddObserver(v26, v1, sub_18B2BFF00, v27, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v28 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_1EA9B6380 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CFNotificationCenterAddObserver(v28, v1, sub_18B2BFF00, qword_1EA9B7A80, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v29 = CFNotificationCenterGetDarwinNotifyCenter();
  v30 = *MEMORY[0x1E69E4ED0];
  if (!*MEMORY[0x1E69E4ED0])
  {
LABEL_14:
    __break(1u);
  }

  v31 = v29;

  v32 = v30;
  CFNotificationCenterAddObserver(v31, v1, sub_18B2BFE20, v32, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v33 = objc_opt_self();
  v34 = &selRef_setHIDEventTapPriority_;
  v35 = [v33 sharedInstance];
  v36 = swift_allocObject();
  swift_weakInit();
  v59 = sub_18B2C1F10;
  v60 = v36;
  v55 = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v53 = &v57;
  v57 = sub_18B2C040C;
  v58 = &block_descriptor;
  v37 = _Block_copy(&v55);

  [v35 registerUpdateBlock:v37 forRetrieveSelector:sel_accessibilityReaderEnabled withListener:v1];
  _Block_release(v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AF8);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_18B2FBCC0;
  *(v38 + 32) = sel_assistiveTouchScannerCursorHighVisibilityEnabled;
  *(v38 + 40) = sel_assistiveTouchMouseDwellControlActivationTimeout;
  *(v38 + 48) = sel_assistiveTouchMouseDwellControlKeyboardKeyActivationTimeout;
  *(v38 + 56) = sel_assistiveTouchAxisSweepSpeed;
  *(v38 + 64) = sel_assistiveTouchCursorColor;
  *(v38 + 72) = sel_enableVoiceOverCaptions;
  *(v38 + 80) = sel_switchControlPointPickerSelectionStyle;
  *(v38 + 88) = sel_voiceOverAudioDuckingEnabled;
  *(v38 + 96) = sel_voiceOverMagicTapDefaultToMediaPlayback;
  *(v38 + 104) = sel_voiceOverSoundEffectsEnabled;
  *(v38 + 112) = sel_voiceOverSoundVolume;
  *(v38 + 120) = sel_voiceOverSpeakingRate;
  *(v38 + 128) = sel_voiceOverHintsEnabled;
  *(v38 + 136) = sel_voiceOverNavigationStyle;
  *(v38 + 144) = sel_voiceOverLargeCursorEnabled;
  *(v38 + 152) = sel_zoomPreferredMaximumZoomScale;
  *(v38 + 160) = sel_liveRecognitionActive;
  *(v38 + 168) = sel_speechControllerIdleOpacity;
  *(v38 + 176) = sel_increaseContrastEnabled;
  *(v38 + 184) = sel_showSpeechController;
  v54 = v38;
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_18B2FBCD0;
  *(v39 + 32) = sel_zoomPreferredCurrentLensMode;
  *(v39 + 40) = sel_zoomShouldShowSlug;
  *(v39 + 48) = sel_fullKeyboardAccessFocusRingColor;
  *(v39 + 56) = sel_fullKeyboardAccessLargeFocusRingEnabled;
  *(v39 + 64) = sel_fullKeyboardAccessFocusRingHighContrastEnabled;
  sub_18B28B17C(v39);
  v52 = v54;
  v40 = *(v54 + 16);
  if (v40)
  {
    v41 = (v52 + 32);
    do
    {
      v42 = *v41++;
      v43 = v33;
      v44 = [v33 v34[372]];
      v45 = v34;
      v46 = swift_allocObject();
      swift_weakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v42;
      *(v47 + 24) = v46;
      v59 = sub_18B2C1F30;
      v60 = v47;
      v55 = MEMORY[0x1E69E9820];
      v56 = 1107296256;
      v57 = sub_18B2C040C;
      v58 = &block_descriptor_67;
      v48 = _Block_copy(&v55);

      [v44 registerUpdateBlock:v48 forRetrieveSelector:v42 withListener:v1];
      v49 = v48;
      v34 = v45;
      _Block_release(v49);

      v33 = v43;
      --v40;
    }

    while (v40);
  }

  return v1;
}

void sub_18B2BFE20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for AccessibilityObservableSettings();
    sub_18B2C1F94(&qword_1EA9B7B30, type metadata accessor for AccessibilityObservableSettings);

    sub_18B2C9714();
    sub_18B2C9744();

    sub_18B2C137C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_18B2C97A4();
  }
}

uint64_t sub_18B2BFF08(uint64_t a1)
{
  v2 = sub_18B2C97D4();
  v12 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18B2C97F4();
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B2862C0(0, &qword_1EA9B7B00);
  v8 = sub_18B2C9BA4();
  aBlock[4] = sub_18B2C1FDC;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B2C040C;
  aBlock[3] = &block_descriptor_76;
  v9 = _Block_copy(aBlock);

  sub_18B2C97E4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_18B2C1F94(&qword_1EA9B7B08, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7B10);
  sub_18B22EBD8(&qword_1EA9B7B18, &qword_1EA9B7B10);
  sub_18B2C9C64();
  MEMORY[0x18CFF0CC0](0, v7, v4, v9);
  _Block_release(v9);

  (*(v12 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v11);
}

uint64_t sub_18B2C01E8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for AccessibilityObservableSettings();
    sub_18B2C1F94(&qword_1EA9B7B30, type metadata accessor for AccessibilityObservableSettings);
    sub_18B2C9714();

    sub_18B2C9744();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for AccessibilityObservableSettings();
    sub_18B2C1F94(&qword_1EA9B7B30, type metadata accessor for AccessibilityObservableSettings);
    sub_18B2C9714();
    sub_18B2C9744();

    v0 = qword_1ED653E68;

    if (v0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    [qword_1ED653E70 accessibilityReaderEnabled];
    sub_18B2C9724();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_18B2C137C();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_18B2C97A4();
  }

  return result;
}

uint64_t sub_18B2C040C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_18B2C0450(uint64_t a1, uint64_t a2)
{
  v4 = sub_18B2C97D4();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18B2C97F4();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B2862C0(0, &qword_1EA9B7B00);
  v10 = sub_18B2C9BA4();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_18B2C1F38;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B2C040C;
  aBlock[3] = &block_descriptor_73;
  v12 = _Block_copy(aBlock);

  sub_18B2C97E4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_18B2C1F94(&qword_1EA9B7B08, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7B10);
  sub_18B22EBD8(&qword_1EA9B7B18, &qword_1EA9B7B10);
  sub_18B2C9C64();
  MEMORY[0x18CFF0CC0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

id sub_18B2C074C(const char *a1)
{
  result = AXLogCommon();
  if (result)
  {
    v3 = result;
    sub_18B2C9B64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7B20);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18B2F88F0;
    v5 = NSStringFromSelector(a1);
    v6 = sub_18B2C9894();
    v8 = v7;

    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_18B2C1F40();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    sub_18B2C96E4();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      type metadata accessor for AccessibilityObservableSettings();
      sub_18B2C1F94(&qword_1EA9B7B30, type metadata accessor for AccessibilityObservableSettings);
      sub_18B2C9714();

      sub_18B2C9744();
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_18B2C137C();
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_18B2C97A4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18B2C093C()
{
  sub_18B2C137C();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_18B2C97A4();
}

uint64_t AccessibilityObservableSettings.deinit()
{

  v1 = OBJC_IVAR____TtC22AccessibilityUtilities31AccessibilityObservableSettings__cachedTripleClickOptions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AccessibilityObservableSettings.__deallocating_deinit()
{
  AccessibilityObservableSettings.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_18B2C0ADC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccessibilityObservableSettings();
  result = sub_18B2C9714();
  *a1 = result;
  return result;
}

void *sub_18B2C0B1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7B38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6C70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_18B2C0C50(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7108);
  v10 = *(type metadata accessor for UserVoiceConfiguration() - 8);
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
  v15 = *(type metadata accessor for UserVoiceConfiguration() - 8);
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

char *sub_18B2C0E28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7100);
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

void *sub_18B2C0F34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B71C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B70F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B2C1068(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B2C1174(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AF8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_18B2C1278(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7AF0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_18B2C137C()
{
  v0 = objc_opt_self();
  v1 = [v0 tripleClickOptionsForAccessibilityShortcutControlCenterModuleIncludingGuidedAccess_];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v25 = v0;
  sub_18B2862C0(0, &qword_1ED653B98);
  v3 = sub_18B2C99F4();

  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v25;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

LABEL_20:
  v21 = v4;
  v5 = sub_18B2C9CB4();
  v4 = v21;
  v6 = v25;
  if (!v5)
  {
LABEL_21:
    v8 = MEMORY[0x1E69E7CC0];
LABEL_22:

    return v8;
  }

LABEL_4:
  v7 = 0;
  v23 = v4 & 0xFFFFFFFFFFFFFF8;
  v24 = v4 & 0xC000000000000001;
  v8 = MEMORY[0x1E69E7CC0];
  v22 = v4;
  while (1)
  {
    if (v24)
    {
      v4 = MEMORY[0x18CFF0E80](v7, v4);
    }

    else
    {
      if (v7 >= *(v23 + 16))
      {
        goto LABEL_19;
      }

      v4 = *(v4 + 8 * v7 + 32);
    }

    v9 = v4;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v11 = [v4 intValue];
    result = [v6 localizedTitleForAccessibilityShortcutOption_];
    if (!result)
    {
      break;
    }

    v13 = result;
    v14 = sub_18B2C9894();
    v16 = v15;

    v17 = [v6 valueForAccessibilityShortcutOption_];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_18B2C1068(0, *(v8 + 2) + 1, 1, v8);
    }

    v19 = *(v8 + 2);
    v18 = *(v8 + 3);
    if (v19 >= v18 >> 1)
    {
      v8 = sub_18B2C1068((v18 > 1), v19 + 1, 1, v8);
    }

    *(v8 + 2) = v19 + 1;
    v20 = &v8[32 * v19];
    *(v20 + 8) = v11;
    *(v20 + 5) = v14;
    *(v20 + 6) = v16;
    v20[56] = v17;
    ++v7;
    v4 = v22;
    v6 = v25;
    if (v10 == v5)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18B2C15EC()
{
  result = qword_1EA9B7AC0;
  if (!qword_1EA9B7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7AC0);
  }

  return result;
}

uint64_t type metadata accessor for AccessibilityObservableSettings()
{
  result = qword_1EA9B7AC8;
  if (!qword_1EA9B7AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B2C16A0()
{
  sub_18B2C1D78();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18B2C1D78()
{
  if (!qword_1EA9B7AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B7AE0);
    v0 = sub_18B2C97B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9B7AD8);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_18B2C1DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B2C1E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_18B2C1F40()
{
  result = qword_1EA9B7B28;
  if (!qword_1EA9B7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7B28);
  }

  return result;
}

uint64_t sub_18B2C1F94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B2C1FE4(uint64_t result)
{
  if (result)
  {
    type metadata accessor for AccessibilityObservableSettings();
    sub_18B2C1F94(&qword_1EA9B7B30, type metadata accessor for AccessibilityObservableSettings);

    sub_18B2C9714();
    sub_18B2C9744();

    _AXSSpeakThisEnabled();
    sub_18B2C9724();
  }

  return result;
}

void __getVTPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVTPreferencesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXUtilitiesCommon.m" lineNumber:15 description:{@"Unable to find class %s", "VTPreferences"}];

  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VoiceTriggerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXUtilitiesCommon.m" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

void soft_AXUIAssistiveTouchStringForName_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *soft_AXUIAssistiveTouchStringForName(NSString *__strong, BOOL)"}];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_paCurrentRouteSupportsTransparencyAccommodations_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_paCurrentRouteSupportsTransparencyAccommodations(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:87 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_paBluetoothDeviceSupportsSSL_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_paBluetoothDeviceSupportsSSL(BluetoothDevice *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:88 description:{@"%s", dlerror()}];

  __break(1u);
}

void AXGuestPassManager_Soft_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<AXGuestPassServiceProtocol> AXGuestPassManager_Soft(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:94 description:{@"%s", dlerror()}];

  __break(1u);
}

void AccessibilityUIUtilitiesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityUIUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXTripleClickHelpers.m" lineNumber:40 description:{@"%s", *a1}];

  __break(1u);
}

void __getHUComfortSoundsSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHUComfortSoundsSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:36 description:{@"Unable to find class %s", "HUComfortSoundsSettings"}];

  __break(1u);
}

void __getHUComfortSoundsSettingsClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HearingUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXTripleClickHelpers.m" lineNumber:35 description:{@"%s", *a1}];

  __break(1u);
}

void PersonalAudioLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PersonalAudioLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXTripleClickHelpers.m" lineNumber:84 description:{@"%s", *a1}];

  __break(1u);
}

void __getPASettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPASettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:85 description:{@"Unable to find class %s", "PASettings"}];

  __break(1u);
}

void __getWatchControlSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWatchControlSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:54 description:{@"Unable to find class %s", "WatchControlSettings"}];

  __break(1u);
}

void __getWatchControlSettingsClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WatchControlSettingsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXTripleClickHelpers.m" lineNumber:53 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXUIClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXUIClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:60 description:{@"Unable to find class %s", "AXUIClient"}];

  __break(1u);
}

void __getAXUIClientClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXTripleClickHelpers.m" lineNumber:59 description:{@"%s", *a1}];

  __break(1u);
}

void __getSpeakThisServicesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSpeakThisServicesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:71 description:{@"Unable to find class %s", "SpeakThisServices"}];

  __break(1u);
}

void __getSpeakThisServicesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpeakThisServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXTripleClickHelpers.m" lineNumber:70 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXPISystemActionHelperClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXPISystemActionHelperClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:46 description:{@"Unable to find class %s", "AXPISystemActionHelper"}];

  __break(1u);
}

void __getAXPISystemActionHelperClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityPhysicalInteractionLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXTripleClickHelpers.m" lineNumber:45 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXGuestPassManagerSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AXGuestPassServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXTripleClickHelpers.m" lineNumber:93 description:{@"%s", *a1}];

  __break(1u);
}

void __getAVCCaptionsClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVCCaptionsClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXCapabilityManager.m" lineNumber:39 description:{@"Unable to find class %s", "AVCCaptionsClient"}];

  __break(1u);
}

void __getAVCCaptionsClientClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVConferenceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXCapabilityManager.m" lineNumber:38 description:{@"%s", *a1}];

  __break(1u);
}

void __getUITextInputModeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUITextInputModeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXCapabilityManager.m" lineNumber:26 description:{@"Unable to find class %s", "UITextInputMode"}];

  __break(1u);
}

void __getUITextInputModeClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXCapabilityManager.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getRTTTelephonyUtilitiesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRTTTelephonyUtilitiesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXCapabilityManager.m" lineNumber:21 description:{@"Unable to find class %s", "RTTTelephonyUtilities"}];

  __break(1u);
}

void __getRTTTelephonyUtilitiesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RTTUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXCapabilityManager.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSPreferencesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXCapabilityManager.m" lineNumber:32 description:{@"Unable to find class %s", "CSPreferences"}];

  __break(1u);
}

void __getCSPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpeechLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXCapabilityManager.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void __getUIWindowClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIWindowClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXIPCServer.m" lineNumber:47 description:{@"Unable to find class %s", "UIWindow"}];

  __break(1u);
}

void __getUIWindowClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXIPCServer.m" lineNumber:46 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXUIClientClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXUIClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXBannerServices.m" lineNumber:16 description:{@"Unable to find class %s", "AXUIClient"}];

  __break(1u);
}

void __getAXUIClientClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXBannerServices.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void AXDeviceSupportsWatchRemoteScreen_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_AXWatchRemoteScreenIsPairedGizmoSupported(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXDevice.m" lineNumber:89 description:{@"%s", dlerror()}];

  __break(1u);
}

void AXDeviceSupportsWatchRemoteScreen_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_AXWatchRemoteScreenIsTwiceFeatureOn(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXDevice.m" lineNumber:88 description:{@"%s", dlerror()}];

  __break(1u);
}

void AXDeviceHasJindo_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_SBUIIsSystemApertureEnabled(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXDevice.m" lineNumber:73 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getPKPassLibraryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPKPassLibraryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXDevice.m" lineNumber:51 description:{@"Unable to find class %s", "PKPassLibrary"}];

  __break(1u);
}

void __getPKPassLibraryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PassKitCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXDevice.m" lineNumber:50 description:{@"%s", *a1}];

  __break(1u);
}

void __getSOSManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSOSManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXDevice.m" lineNumber:81 description:{@"Unable to find class %s", "SOSManager"}];

  __break(1u);
}

void __getSOSManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SOSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXDevice.m" lineNumber:80 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXMDisplayManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXMDisplayManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXDevice.m" lineNumber:625 description:{@"Unable to find class %s", "AXMDisplayManager"}];

  __break(1u);
}

void __getAXMDisplayManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AXMediaUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXDevice.m" lineNumber:624 description:{@"%s", *a1}];

  __break(1u);
}

void AXWatchRemoteScreenServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AXWatchRemoteScreenServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXDevice.m" lineNumber:87 description:{@"%s", *a1}];

  __break(1u);
}

void __getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardUIServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXDevice.m" lineNumber:72 description:{@"%s", *a1}];

  __break(1u);
}

void __getCMMotionManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCMMotionManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXDevice.m" lineNumber:95 description:{@"Unable to find class %s", "CMMotionManager"}];

  __break(1u);
}

void __getCMMotionManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreMotionLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXDevice.m" lineNumber:94 description:{@"%s", *a1}];

  __break(1u);
}

void __getGMAvailabilityWrapperClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGMAvailabilityWrapperClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXDevice.m" lineNumber:58 description:{@"Unable to find class %s", "GMAvailabilityWrapper"}];

  __break(1u);
}

void __getGMAvailabilityWrapperClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GenerativeModelsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXDevice.m" lineNumber:57 description:{@"%s", *a1}];

  __break(1u);
}

void __getSCRCPunctuationVerbosenessClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSCRCPunctuationVerbosenessClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXLocalization.m" lineNumber:24 description:{@"Unable to find class %s", "SCRCPunctuationVerboseness"}];

  __break(1u);
}

void __getSCRCPunctuationVerbosenessClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ScreenReaderCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXLocalization.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getUIKeyboardInputModeControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIKeyboardInputModeControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXEventKeyInfoRepresentation.m" lineNumber:19 description:{@"Unable to find class %s", "UIKeyboardInputModeController"}];

  __break(1u);
}

void __getUIKeyboardInputModeControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXEventKeyInfoRepresentation.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getTLToneManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTLToneManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettings.m" lineNumber:83 description:{@"Unable to find class %s", "TLToneManager"}];

  __break(1u);
}

void ToneLibraryLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ToneLibraryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettings.m" lineNumber:81 description:{@"%s", *a1}];

  __break(1u);
}

void ScreenReaderOutputLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ScreenReaderOutputLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettings.m" lineNumber:59 description:{@"%s", *a1}];

  __break(1u);
}

void __getVOSVoiceOverGreyCommandInfoClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVOSVoiceOverGreyCommandInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettings.m" lineNumber:91 description:{@"Unable to find class %s", "VOSVoiceOverGreyCommandInfo"}];

  __break(1u);
}

void __getVOSVoiceOverGreyCommandInfoClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VoiceOverServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettings.m" lineNumber:90 description:{@"%s", *a1}];

  __break(1u);
}

void __getZoomServicesGreyCommandInfoClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getZoomServicesGreyCommandInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettings.m" lineNumber:95 description:{@"Unable to find class %s", "ZoomServicesGreyCommandInfo"}];

  __break(1u);
}

void __getZoomServicesGreyCommandInfoClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ZoomServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettings.m" lineNumber:94 description:{@"%s", *a1}];

  __break(1u);
}

void SpringBoardServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettings.m" lineNumber:98 description:{@"%s", *a1}];

  __break(1u);
}

void _AXApplicationNameLabelForBundleIdentifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_AXApplicationNameLabelForBundleIdentifier(NSString *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"AccessibilitySPI.m" lineNumber:50 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getSFAccessibilityClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFAccessibilityClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AccessibilitySPI.m" lineNumber:53 description:{@"Unable to find class %s", "SFAccessibilityClient"}];

  __break(1u);
}

void __getSFAccessibilityClientClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharingLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AccessibilitySPI.m" lineNumber:52 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXApplicationNameLabelForBundleIdentifierSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AXFrontBoardUtilsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AccessibilitySPI.m" lineNumber:49 description:{@"%s", *a1}];

  __break(1u);
}

void __getSLDServiceProxyClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLDServiceProxyClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AccessibilitySPI.m" lineNumber:64 description:{@"Unable to find class %s", "SLDServiceProxy"}];

  __break(1u);
}

void SocialLayerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SocialLayerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AccessibilitySPI.m" lineNumber:59 description:{@"%s", *a1}];

  __break(1u);
}

void __getSLDPillServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLDPillServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AccessibilitySPI.m" lineNumber:60 description:{@"Unable to find class %s", "SLDPillService"}];

  __break(1u);
}

void __getSLDCollaborationAttributionViewServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLDCollaborationAttributionViewServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AccessibilitySPI.m" lineNumber:62 description:{@"Unable to find class %s", "SLDCollaborationAttributionViewService"}];

  __break(1u);
}

void __getVCVoiceShortcutClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVCVoiceShortcutClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSiriShortcutsManager.m" lineNumber:27 description:{@"Unable to find class %s", "VCVoiceShortcutClient"}];

  __break(1u);
}

void VoiceShortcutClientLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VoiceShortcutClientLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSiriShortcutsManager.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}

void __getWFAccessibilityWorkflowRunnerClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFAccessibilityWorkflowRunnerClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSiriShortcutsManager.m" lineNumber:28 description:{@"Unable to find class %s", "WFAccessibilityWorkflowRunnerClient"}];

  __break(1u);
}

void AXMIDILogError_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSPoint NSPointFromString(NSString *aString)
{
  MEMORY[0x1EEDC7078](aString);
  result.y = v2;
  result.x = v1;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}