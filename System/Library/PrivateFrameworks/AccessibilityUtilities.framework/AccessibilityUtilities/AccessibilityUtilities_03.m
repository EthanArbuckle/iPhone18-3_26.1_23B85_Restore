uint64_t sub_18B23DEA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.listAnnotation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.listAnnotation.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.listAnnotation.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation;
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
  return sub_18B23E238;
}

void sub_18B23E238(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$useSiriSounds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23E3B8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useSiriSounds_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useSiriSounds_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useSiriSounds_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B23E58C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.useSiriSounds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.useSiriSounds.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.useSiriSounds.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23E8BC;
}

uint64_t sub_18B23E8BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$cursorOutputStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23EA34@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___cursorOutputStyle_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___cursorOutputStyle_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___cursorOutputStyle_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6600);
    v16[3] = "utoTurnsReadingContent";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D80, 255, type metadata accessor for AXVoiceOverCursorOutputStyle);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9444();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B23EE28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.cursorOutputStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.cursorOutputStyle.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.cursorOutputStyle.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle;
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
  return sub_18B23F1C0;
}

void sub_18B23F1C0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$braillePanningAutoTurnsReadingContent.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23F340@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___braillePanningAutoTurnsReadingContent_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___braillePanningAutoTurnsReadingContent_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___braillePanningAutoTurnsReadingContent_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "hBrailleDisplayOutputMode";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B23F6EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23FA1C;
}

uint64_t sub_18B23FA1C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleDisplayOutputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23FB94@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputMode_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputMode_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputMode_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65F0);
    v17[3] = "hBrailleDisplayInputMode";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5538, 255, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B26FC84(&qword_1EA9B6D70, 255, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B26FC84(&qword_1EA9B6D78, 255, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B23FFEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleDisplayOutputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleDisplayOutputMode.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleDisplayOutputMode.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode;
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
  return sub_18B240384;
}

void sub_18B240384(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleDisplayInputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B240504@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputMode_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputMode_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputMode_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65F0);
    v17[3] = "hBrailleGesturesInputMode";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5538, 255, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B26FC84(&qword_1EA9B6D70, 255, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B26FC84(&qword_1EA9B6D78, 255, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B24095C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleDisplayInputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleDisplayInputMode.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleDisplayInputMode.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode;
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
  return sub_18B240CF4;
}

void sub_18B240CF4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleGesturesInputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B240E74@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputMode_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputMode_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputMode_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65F0);
    v17[3] = "yncInputOutputTables";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5538, 255, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B26FC84(&qword_1EA9B6D70, 255, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B26FC84(&qword_1EA9B6D78, 255, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B2412CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesInputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesInputMode.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleGesturesInputMode.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode;
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
  return sub_18B241664;
}

void sub_18B241664(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleDisplaySyncInputOutputTables.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2417E4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplaySyncInputOutputTables_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplaySyncInputOutputTables_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplaySyncInputOutputTables_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65E0);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26F910(&qword_1ED653BC8);
    sub_18B26F910(&qword_1ED653BD0);
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B241A0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleDisplaySyncInputOutputTables.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleDisplaySyncInputOutputTables.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleDisplaySyncInputOutputTables.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B22F010(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B241CB4;
}

uint64_t sub_18B241CB4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3 & 1;
}

uint64_t AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1 & 1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.getter() & 1;
  return sub_18B241FCC;
}

uint64_t sub_18B241FCC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 9) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleDisplayInputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B242150@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputTableIdentifier_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputTableIdentifier_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputTableIdentifier_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650);
    v16[3] = "utputTableIdentifier";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8);
    sub_18B26F4B0(&qword_1ED653BE0);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

double sub_18B24254C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = v5[0];
  *a2 = *v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleDisplayInputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleDisplayInputTableIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleDisplayInputTableIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier;
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

  *v4 = *(v4 + 16);
  return sub_18B242898;
}

void sub_18B242898(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$brailleDisplayOutputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B242A5C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputTableIdentifier_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputTableIdentifier_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputTableIdentifier_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650);
    v16[3] = "InputTableIdentifier";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8);
    sub_18B26F4B0(&qword_1ED653BE0);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

double sub_18B242E58@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = v5[0];
  *a2 = *v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleDisplayOutputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleDisplayOutputTableIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleDisplayOutputTableIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier;
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

  *v4 = *(v4 + 16);
  return sub_18B2431A4;
}

void sub_18B2431A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$brailleGesturesInputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B243368@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputTableIdentifier_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputTableIdentifier_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputTableIdentifier_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650);
    v16[3] = "ActivationGestureEnabled";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8);
    sub_18B26F4B0(&qword_1ED653BE0);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

void sub_18B243734(void *a1@<X8>)
{
  v2 = sub_18B2C90B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v6 userLocale];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v9 = v8;

  v10 = objc_opt_self();
  sub_18B2C9074();

  v11 = sub_18B2C9064();
  (*(v3 + 8))(v5, v2);
  v12 = [v10 defaultTableForLocale_];

  if (v12)
  {
    v13 = [v12 identifier];

    v12 = sub_18B2C9894();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  *a1 = v12;
  a1[1] = v15;
}

double sub_18B243908@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = v5[0];
  *a2 = *v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesInputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesInputTableIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleGesturesInputTableIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier;
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

  *v4 = *(v4 + 16);
  return sub_18B243C54;
}

void sub_18B243C54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$brailleGesturesActivationGestureEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B243E18@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesActivationGestureEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesActivationGestureEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesActivationGestureEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "hBrailleGesturesSoundOption";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B2441C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2444F4;
}

uint64_t sub_18B2444F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesSoundOption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24466C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSoundOption_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSoundOption_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSoundOption_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65D0);
    v17[3] = "UsesHapticFeedback";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D58, 255, type metadata accessor for AXSVoiceOverBrailleGesturesSoundOption);
    sub_18B26FC84(&qword_1EA9B6D60, 255, type metadata accessor for AXSVoiceOverBrailleGesturesSoundOption);
    sub_18B26FC84(&qword_1EA9B6D68, 255, type metadata accessor for AXSVoiceOverBrailleGesturesSoundOption);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B244AD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSoundOption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSoundOption.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleGesturesSoundOption.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption;
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
  return sub_18B244E68;
}

void sub_18B244E68(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleGesturesUsesHapticFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B244FE8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesHapticFeedback_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesHapticFeedback_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesHapticFeedback_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "UsesTypingSoundFeedback";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B245394@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2456C4;
}

uint64_t sub_18B2456C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesUsesTypingSoundFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24583C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesTypingSoundFeedback_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesTypingSoundFeedback_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesTypingSoundFeedback_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "tNumbersFeedback";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B245BE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B245F18;
}

uint64_t sub_18B245F18(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesSingleHandUsesDotNumbersFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B246090@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandUsesDotNumbersFeedback_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandUsesDotNumbersFeedback_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandUsesDotNumbersFeedback_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "DisplaysEnteredText";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24643C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24676C;
}

uint64_t sub_18B24676C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesDisplayEnteredText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2468E4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesDisplayEnteredText_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesDisplayEnteredText_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesDisplayEnteredText_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "LearnsDotPositions";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B246C90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B246FC0;
}

uint64_t sub_18B246FC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesLearnsDotPositions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B247138@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesLearnsDotPositions_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesLearnsDotPositions_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesLearnsDotPositions_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "AutoActivateOnTextFields";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B2474E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B247814;
}

uint64_t sub_18B247814(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesAutoActivateOnTextFields.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24798C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesAutoActivateOnTextFields_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesAutoActivateOnTextFields_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesAutoActivateOnTextFields_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "lleGesturesSingleHandStyle";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B247D38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B248068;
}

uint64_t sub_18B248068(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesSingleHandStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2481E0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandStyle_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandStyle_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandStyle_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65C0);
    v16[3] = "cterAcceptanceTestBraille";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D50, 255, type metadata accessor for AXSVoiceOverBrailleGesturesSingleHandStyle);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9444();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B2485D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSingleHandStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSingleHandStyle.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleGesturesSingleHandStyle.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle;
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
  return sub_18B24896C;
}

void sub_18B24896C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleGesturesCharacterAcceptanceTestBraille.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B248AEC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesCharacterAcceptanceTestBraille_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesCharacterAcceptanceTestBraille_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesCharacterAcceptanceTestBraille_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8);
    sub_18B26F4B0(&qword_1ED653BE0);
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

double sub_18B248D14@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = v5[0];
  *a2 = *v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesCharacterAcceptanceTestBraille.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesCharacterAcceptanceTestBraille.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleGesturesCharacterAcceptanceTestBraille.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille;
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

  *v4 = *(v4 + 16);
  return sub_18B249060;
}

void sub_18B249060(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$perkinsKeyboardInputEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B249224@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsKeyboardInputEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsKeyboardInputEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsKeyboardInputEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2493F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.perkinsKeyboardInputEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.perkinsKeyboardInputEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.perkinsKeyboardInputEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B249728;
}

uint64_t sub_18B249728(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$perkinsChordKeyboardInputEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2498A0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsChordKeyboardInputEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsChordKeyboardInputEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsChordKeyboardInputEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B249A74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B249DA4;
}

uint64_t sub_18B249DA4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleHIMSUsesDot7ForCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B249F1C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleHIMSUsesDot7ForCommand_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleHIMSUsesDot7ForCommand_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleHIMSUsesDot7ForCommand_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B24A0F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24A420;
}

uint64_t sub_18B24A420(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$keyboardBrailleUIEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24A598@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___keyboardBrailleUIEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___keyboardBrailleUIEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___keyboardBrailleUIEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B24A76C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.keyboardBrailleUIEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.keyboardBrailleUIEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.keyboardBrailleUIEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24AA9C;
}

uint64_t sub_18B24AA9C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIShouldReopenViewsWhenRestart.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24AC14@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShouldReopenViewsWhenRestart_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShouldReopenViewsWhenRestart_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShouldReopenViewsWhenRestart_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B24ADE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24B118;
}

uint64_t sub_18B24B118(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIReadListItemsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24B290@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIReadListItemsEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIReadListItemsEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIReadListItemsEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "hBrailleUIVisualsEnabled";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24B63C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIReadListItemsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIReadListItemsEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIReadListItemsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24B96C;
}

uint64_t sub_18B24B96C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIVisualsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24BAE4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIVisualsEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIVisualsEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIVisualsEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "hBrailleUIBrailleNotesSortType";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24BE90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIVisualsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIVisualsEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIVisualsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24C1C0;
}

uint64_t sub_18B24C1C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIBrailleNotesSortType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24C338@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortType_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortType_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortType_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65B0);
    v17[3] = "eNotesSortDirection";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D38, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortType);
    sub_18B26FC84(&qword_1EA9B6D40, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortType);
    sub_18B26FC84(&qword_1EA9B6D48, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortType);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B24C790@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIBrailleNotesSortType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIBrailleNotesSortType.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleUIBrailleNotesSortType.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType;
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
  return sub_18B24CB28;
}

void sub_18B24CB28(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleUIBrailleNotesSortDirection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24CCA8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortDirection_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortDirection_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortDirection_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65A0);
    v17[3] = "SpeechFeedbackEnabled";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D20, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortDirection);
    sub_18B26FC84(&qword_1EA9B6D28, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortDirection);
    sub_18B26FC84(&qword_1EA9B6D30, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortDirection);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B24D100@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection;
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
  return sub_18B24D498;
}

void sub_18B24D498(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleUITypingSpeechFeedbackEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24D618@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUITypingSpeechFeedbackEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUITypingSpeechFeedbackEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUITypingSpeechFeedbackEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "hBrailleUIBRFReflowEnabled";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24D9C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24DCF4;
}

uint64_t sub_18B24DCF4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIBRFReflowEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24DE6C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFReflowEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFReflowEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFReflowEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "ipPageIndicatorsEnabled";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24E218@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIBRFReflowEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIBRFReflowEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIBRFReflowEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24E548;
}

uint64_t sub_18B24E548(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIBRFStripPageIndicatorsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24E6C0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFStripPageIndicatorsEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFStripPageIndicatorsEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFStripPageIndicatorsEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "hBrailleUICalculatorUsesUEBMath";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24EA6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24ED9C;
}

uint64_t sub_18B24ED9C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUICalculatorUsesUEBMath.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24EF14@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUICalculatorUsesUEBMath_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUICalculatorUsesUEBMath_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUICalculatorUsesUEBMath_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "hBrailleUILiveCaptionsSource";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24F2C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24F5F0;
}

uint64_t sub_18B24F5F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUILiveCaptionsSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24F768@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUILiveCaptionsSource_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUILiveCaptionsSource_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUILiveCaptionsSource_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6590);
    v16[3] = "ionMessageAnnounced";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D18, 255, type metadata accessor for AXSVoiceOverBrailleUILiveCaptionsSource);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9444();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24FB5C(uint64_t a1, void (*a2)(void))
{
  *(swift_allocObject() + 16) = v2;
  a2(0);
  v4 = v2;
  sub_18B2C96C4();
}

uint64_t sub_18B24FBE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUILiveCaptionsSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUILiveCaptionsSource.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleUILiveCaptionsSource.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource;
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
  return sub_18B24FF7C;
}

void sub_18B24FF7C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleUIMigrationMessageAnnounced.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2500FC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIMigrationMessageAnnounced_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIMigrationMessageAnnounced_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIMigrationMessageAnnounced_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2502D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B250600;
}

uint64_t sub_18B250600(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIShowsBackButton.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B250778@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShowsBackButton_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShowsBackButton_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShowsBackButton_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B25094C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIShowsBackButton.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIShowsBackButton.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIShowsBackButton.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B250C7C;
}

uint64_t sub_18B250C7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleZoomOutNumCellsPerElement.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B250DF4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleZoomOutNumCellsPerElement_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleZoomOutNumCellsPerElement_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleZoomOutNumCellsPerElement_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6630);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B250FD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.modify(uint64_t *a1))(uint64_t **a1)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement;
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
  return sub_18B25136C;
}

void sub_18B25136C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleUsesUnderlineCursor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2514EC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUsesUnderlineCursor_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUsesUnderlineCursor_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUsesUnderlineCursor_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2516C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUsesUnderlineCursor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUsesUnderlineCursor.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUsesUnderlineCursor.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2519F0;
}

uint64_t sub_18B2519F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$defaultPunctuationGroup.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22C68C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B251B68@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultPunctuationGroup_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultPunctuationGroup_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultPunctuationGroup_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6580);
    v16[3] = "VO_ACTIVITY_PROGRAMMING";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26F7A0();
    sub_18B26F858();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B251EEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18B2C8FD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_18B251F88(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();
}

uint64_t AXSettings.VoiceOver.defaultPunctuationGroup.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();
}

uint64_t AXSettings.VoiceOver.defaultPunctuationGroup.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup);
  v12 = v1;
  v9 = sub_18B2701FC;
  v10 = &v11;

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v13);
  os_unfair_lock_unlock(v6 + 4);

  sub_18B163044(a1, v5, &unk_1EA9B74F0);
  sub_18B2C9484();

  return sub_18B1630AC(a1, &unk_1EA9B74F0);
}

uint64_t sub_18B252424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_18B163044(a1, &v6 - v3, &unk_1EA9B74F0);
  return AXSettings.VoiceOver.defaultPunctuationGroup.setter(v4);
}

void (*AXSettings.VoiceOver.defaultPunctuationGroup.modify(void *a1))(uint64_t **a1, char a2)
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

  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup;
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

  return sub_18B252678;
}

void sub_18B252678(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v4 = *v2;
    v5 = sub_18B163044(v2[3], v2[1], &unk_1EA9B74F0);
    v6 = *(v4 + v3);
    v7 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock(v6 + 4);
    sub_18B22F010(v13);
    os_unfair_lock_unlock(v6 + 4);
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];

    sub_18B163044(v10, v9, &unk_1EA9B74F0);
    sub_18B2C9484();

    sub_18B1630AC(v10, &unk_1EA9B74F0);
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

    sub_18B163044(v8, v9, &unk_1EA9B74F0);
    sub_18B2C9484();
  }

  sub_18B1630AC(v8, &unk_1EA9B74F0);
  free(v8);
  free(v9);
  free(v10);
  free(v2);
}

uint64_t sub_18B2528BC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  sub_18B2C9664();
  MEMORY[0x1EEE9AC00]();
  v4 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___activities_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___activities_Storage])
  {
    v5 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___activities_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6570);
    v6 = a1;
    sub_18B2C9674();
    sub_18B26F51C();
    sub_18B26F5D4();
    sub_18B26FC84(&qword_1EA9B5550, v7, type metadata accessor for AXSettings.VoiceOver);
    v5 = sub_18B2C9454();
    *&a1[v4] = v5;
  }

  *a2 = v5;
}

void sub_18B252A88(void *a1@<X8>)
{
  v39 = a1;
  v1 = sub_18B2C8FD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  MEMORY[0x1EEE9AC00]();
  v38 = &v35 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00]();
  v7 = &v35 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6D08);
  v8 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v9 = (*(*(v8 - 1) + 80) + 32) & ~*(*(v8 - 1) + 80);
  v10 = swift_allocObject();
  v37 = xmmword_18B2F88F0;
  *(v10 + 16) = xmmword_18B2F88F0;
  v11 = sub_18B2C9864();
  v12 = AXLocalizedString(v11);

  if (v12)
  {
    v13 = v10 + v9;
    v36 = sub_18B2C9894();
    v15 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6D10);
    inited = swift_initStackObject();
    *(inited + 16) = v37;
    v17 = *MEMORY[0x1E69893F8];
    *&v37 = v10;
    *(inited + 32) = v17;
    v18 = v17;
    v19 = sub_18B295898(inited);
    swift_setDeallocating();
    sub_18B26F68C(inited + 32, type metadata accessor for AXSSVoiceOverTextualContext);
    sub_18B26F6EC();
    [swift_getObjCClassFromMetadata() initialize];
    sub_18B2C8FB4();
    (*(v2 + 56))(v7, 0, 1, v1);
    v20 = sub_18B2C9424();
    v21 = v38;
    (*(*(v20 - 8) + 56))(v38, 1, 1, v20);
    sub_18B2C8FC4();
    (*(v2 + 32))(v13, v4, v1);
    v22 = (v13 + v8[5]);
    *v22 = v36;
    v22[1] = v15;
    *(v13 + v8[6]) = v19;
    *(v13 + v8[7]) = 0;
    sub_18B26F738(v7, v13 + v8[8], &unk_1EA9B74F0);
    *(v13 + v8[9]) = 2;
    *(v13 + v8[10]) = 2;
    *(v13 + v8[11]) = 2;
    *(v13 + v8[12]) = 2;
    *(v13 + v8[13]) = 2;
    v23 = v13 + v8[14];
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = v13 + v8[15];
    *v24 = 0;
    *(v24 + 8) = 1;
    v25 = v13 + v8[16];
    *v25 = 0;
    *(v25 + 8) = 1;
    v26 = v13 + v8[17];
    *v26 = 0;
    *(v26 + 8) = 1;
    sub_18B26F738(v21, v13 + v8[18], &qword_1EA9B63D8);
    *(v13 + v8[19]) = 2;
    *(v13 + v8[20]) = 2;
    v27 = v13 + v8[21];
    *v27 = 0;
    *(v27 + 8) = 1;
    v28 = v13 + v8[22];
    *v28 = 0;
    *(v28 + 4) = 1;
    v29 = v13 + v8[23];
    *v29 = 0;
    *(v29 + 8) = 1;
    *(v13 + v8[24]) = 2;
    *(v13 + v8[25]) = 2;
    v30 = (v13 + v8[26]);
    *v30 = 0;
    v30[1] = 0;
    v31 = (v13 + v8[27]);
    *v31 = 0;
    v31[1] = 0;
    v32 = v13 + v8[28];
    *v32 = 0;
    *(v32 + 8) = 1;
    v33 = v13 + v8[29];
    *v33 = 0;
    *(v33 + 8) = 1;
    v34 = v13 + v8[30];
    *v34 = 0;
    *(v34 + 8) = 1;
    *(v13 + v8[31]) = 2;
    *(v13 + v8[32]) = 2;
    *(v13 + v8[33]) = 2;
    *v39 = v37;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18B252FB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.activities.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

void sub_18B253124(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  v7 = sub_18B2C99F4();
  v8 = a1;
  a5(v7);
}

uint64_t AXSettings.VoiceOver.activities.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.activities.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities;
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
  return sub_18B253378;
}

void sub_18B253378(uint64_t **a1, char a2)
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

uint64_t AXSettings.VoiceOver._$selectedActivityId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B253534@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedActivityId_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedActivityId_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedActivityId_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8);
    sub_18B26F4B0(&qword_1ED653BE0);
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

double sub_18B253778@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = v5[0];
  *a2 = *v5;
  return result;
}

uint64_t AXSettings.VoiceOver.selectedActivityId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.selectedActivityId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.selectedActivityId.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId;
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

  *v4 = *(v4 + 16);
  return sub_18B253A94;
}

void sub_18B253A94(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$languageDetectionEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B253C58@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___languageDetectionEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___languageDetectionEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___languageDetectionEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "tchChangePreference";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B254004@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.languageDetectionEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.languageDetectionEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.languageDetectionEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B254334;
}

uint64_t sub_18B254334(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$pitchChangeEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2544AC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v14 - v5);
  v7 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___pitchChangeEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___pitchChangeEnabled_Storage])
  {
    v9 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___pitchChangeEnabled_Storage];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v14[1] = "VoiceOverSelectedLanguage";
    v14[2] = v10;
    *v6 = swift_getKeyPath();
    v11 = a1;
    sub_18B2C94D4();
    v14[5] = v6;
    v14[3] = sub_18B2C9504();
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v12, type metadata accessor for AXSettings.VoiceOver);
    v9 = sub_18B2C9454();
    *&a1[v8] = v9;
  }

  *a2 = v9;
}

uint64_t sub_18B254704@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.pitchChangeEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.pitchChangeEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.pitchChangeEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B254A34;
}

uint64_t sub_18B254A34(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$selectedLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B254BAC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedLanguage_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedLanguage_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedLanguage_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8);
    sub_18B26F4B0(&qword_1ED653BE0);
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

double sub_18B254DD4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = v5[0];
  *a2 = *v5;
  return result;
}

uint64_t AXSettings.VoiceOver.selectedLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

id sub_18B254F2C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_18B2C9864();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_18B254FC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_18B2C9894();
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

uint64_t AXSettings.VoiceOver.selectedLanguage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.selectedLanguage.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage;
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

  *v4 = *(v4 + 16);
  return sub_18B255228;
}

void sub_18B255228(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$speakUpEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2553EC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___speakUpEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___speakUpEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___speakUpEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "Duplicate values for key: '";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94D4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B255798()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_18B2C96C4();
}

uint64_t sub_18B255810@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.speakUpEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.speakUpEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.speakUpEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B255B40;
}

uint64_t sub_18B255B40(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

float sub_18B255C68()
{
  v1 = *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage];

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  sub_18B2C95A4();

  return *&v4;
}

uint64_t sub_18B255E04(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B255EA0, 0, 0);
}

uint64_t sub_18B255EA0()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for UserVoiceConfiguration();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_18B255F78;
  v4 = *(v0 + 32);

  return AXSettings.VoiceOver.effectiveSpeakingRate(currentRotor:)(v4);
}

uint64_t sub_18B255F78(float a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  sub_18B1630AC(v2, &qword_1EA9B6A40);

  return MEMORY[0x1EEE6DFA0](sub_18B2560A4, 0, 0);
}

uint64_t sub_18B2560A4()
{
  **(v0 + 16) = *(v0 + 48);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AXSettings.VoiceOver.effectiveSpeakingRate(currentRotor:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_18B2C9424();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B256214, 0, 0);
}

uint64_t sub_18B256214()
{
  v1 = v0[8];
  sub_18B163044(v0[2], v1, &qword_1EA9B6A40);
  v2 = type metadata accessor for UserVoiceConfiguration();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[8];
  if (v3 == 1)
  {
    sub_18B1630AC(v4, &qword_1EA9B6A40);
LABEL_7:
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_18B256414;
    v15 = v0[6];

    return AXSettings.VoiceOver.systemDefaultVoiceSelection()(v15);
  }

  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v4 + *(v2 + 20);
  v9 = v0[8];
  (*(v7 + 16))(v5, v8, v6);
  sub_18B26F68C(v9, type metadata accessor for UserVoiceConfiguration);
  v10 = sub_18B2C9374();
  (*(v7 + 8))(v5, v6);
  if ((v10 & 0x100000000) != 0)
  {
    goto LABEL_7;
  }

  v11 = v0[1];
  v12.n128_u32[0] = v10;

  return v11(v12);
}

uint64_t sub_18B256414()
{

  return MEMORY[0x1EEE6DFA0](sub_18B256510, 0, 0);
}

uint64_t sub_18B256510()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_18B2C9374();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 0x100000000) != 0)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = *&v4;
  }

  v6 = v0[1];
  v7.n128_f32[0] = v5;

  return v6(v7);
}

uint64_t sub_18B2565D0(float a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  *(v3 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B256670, 0, 0);
}

uint64_t sub_18B256670()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for UserVoiceConfiguration();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_18B25674C;
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);

  return AXSettings.VoiceOver.setEffectiveSpeakingRate(currentRotor:value:)(v5, v4);
}

uint64_t sub_18B25674C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  sub_18B1630AC(v1, &qword_1EA9B6A40);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AXSettings.VoiceOver.setEffectiveSpeakingRate(currentRotor:value:)(uint64_t a1, float a2)
{
  *(v3 + 320) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_18B2C9424();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v5 = sub_18B2C9094();
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = sub_18B2C9014();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v7 = sub_18B2C90B4();
  *(v3 + 192) = v7;
  *(v3 + 200) = *(v7 - 8);
  *(v3 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  *(v3 + 216) = swift_task_alloc();
  v8 = type metadata accessor for UserVoiceConfiguration();
  *(v3 + 224) = v8;
  *(v3 + 232) = *(v8 - 8);
  *(v3 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B256B80, 0, 0);
}

uint64_t sub_18B256B80()
{
  v25 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_18B163044(*(v0 + 56), v3, &qword_1EA9B6A40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B1630AC(*(v0 + 216), &qword_1EA9B6A40);
    *(v0 + 248) = AXSettings.VoiceOver.resolver.getter();
    v23 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v4[1] = sub_18B256F60;
    v5 = *(v0 + 208);

    return v23(v5);
  }

  else
  {
    v7 = *(v0 + 64);
    sub_18B26C784(*(v0 + 216), *(v0 + 240));
    v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors;
    v9 = *(v7 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);
    v10 = swift_task_alloc();
    *(v10 + 16) = v7;
    v11 = swift_task_alloc();
    *(v11 + 16) = sub_18B26FD4C;
    *(v11 + 24) = v10;

    os_unfair_lock_lock(v9 + 4);
    sub_18B22F010(v24);
    os_unfair_lock_unlock(v9 + 4);
    v12 = *(v0 + 240);
    v13 = *(v0 + 64);
    v14 = *(v0 + 320);

    sub_18B2C9474();

    v15 = *(v0 + 40);
    v16 = swift_task_alloc();
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    v17 = sub_18B237B6C(sub_18B26C7E8, v16, v15);

    v18 = *(v7 + v8);
    v19 = swift_task_alloc();
    *(v19 + 16) = v13;
    v20 = swift_task_alloc();
    *(v20 + 16) = sub_18B26FD4C;
    *(v20 + 24) = v19;

    os_unfair_lock_lock(v18 + 4);
    sub_18B22F010(v24);
    os_unfair_lock_unlock(v18 + 4);
    v21 = *(v0 + 240);

    *(v0 + 48) = v17;
    sub_18B2C9484();

    sub_18B26F68C(v21, type metadata accessor for UserVoiceConfiguration);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_18B256F60()
{

  return MEMORY[0x1EEE6DFA0](sub_18B257078, 0, 0);
}

uint64_t sub_18B257078()
{
  v27 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v7 = v0[16];
    (*(v0[25] + 8))(v0[26], v0[24]);
    sub_18B1630AC(v7, &qword_1EA9B63D0);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[8];
    (*(v0[21] + 32))(v0[23], v0[16], v0[20]);
    v11 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
    v0[33] = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
    v12 = *(v10 + v11);
    v13 = swift_task_alloc();
    *(v13 + 16) = v10;
    v14 = swift_task_alloc();
    *(v14 + 16) = sub_18B26FD34;
    *(v14 + 24) = v13;

    os_unfair_lock_lock(v12 + 4);
    sub_18B23602C(&v26);
    v0[34] = 0;
    os_unfair_lock_unlock(v12 + 4);
    v15 = v0[23];
    v16 = v0[20];
    v17 = v0[21];
    v18 = v0[15];
    v19 = v0[8];

    sub_18B2C9474();

    v20 = v0[2];
    v0[35] = v20;
    v21 = *(v17 + 16);
    v0[36] = v21;
    v0[37] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v18, v15, v16);
    (*(v17 + 56))(v18, 0, 1, v16);
    v22 = *(v19 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver);
    v0[38] = v22;

    v23 = swift_task_alloc();
    v0[39] = v23;
    *v23 = v0;
    v23[1] = sub_18B2573FC;
    v24 = v0[14];
    v25 = v0[15];

    return Dictionary<>.selection(forLanguage:withResolver:exists:)(v24, v25, v22, 0, v20);
  }
}

uint64_t sub_18B2573FC()
{
  v1 = *(*v0 + 120);

  sub_18B1630AC(v1, &qword_1EA9B63D0);

  return MEMORY[0x1EEE6DFA0](sub_18B257564, 0, 0);
}

uint64_t sub_18B257564()
{
  v35 = v0;
  v1 = *(v0 + 112);
  v2 = *(*(v0 + 80) + 48);
  if (!v2(v1, 1, *(v0 + 72)))
  {
    LOBYTE(v34[0]) = 0;
    sub_18B2C9384();
    v1 = *(v0 + 112);
  }

  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 104);
  v6 = *(v0 + 64);
  (*(v0 + 288))(*(v0 + 176), *(v0 + 184), *(v0 + 160));
  sub_18B163044(v1, v5, &qword_1EA9B63D8);
  v7 = *(v6 + v4);
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_18B26FD34;
  *(v9 + 24) = v8;

  os_unfair_lock_lock(v7 + 4);
  sub_18B23602C(v34);
  os_unfair_lock_unlock(v7 + 4);
  if (v3)
  {
  }

  else
  {
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);

    sub_18B2C9474();

    v12 = *(v0 + 24);
    v13 = v2(v10, 1, v11);
    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v16 = *(v0 + 160);
    if (v13 == 1)
    {
      v17 = *(v0 + 96);
      sub_18B1630AC(*(v0 + 104), &qword_1EA9B63D8);
      sub_18B268108(v14, v17);
      sub_18B1630AC(v17, &qword_1EA9B63D8);
      v18 = *(v15 + 8);
      v18(v14, v16);
      v19 = v12;
    }

    else
    {
      v20 = *(v0 + 88);
      (*(*(v0 + 80) + 32))(v20, *(v0 + 104), *(v0 + 72));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v12;
      sub_18B269DFC(v20, v14, isUniquelyReferenced_nonNull_native);
      v18 = *(v15 + 8);
      v18(v14, v16);
      v19 = v34[0];
    }

    v22 = *(v0 + 64);
    v23 = *(v22 + *(v0 + 264));
    v24 = swift_task_alloc();
    *(v24 + 16) = v22;
    v25 = swift_task_alloc();
    *(v25 + 16) = sub_18B26FD34;
    *(v25 + 24) = v24;

    os_unfair_lock_lock(v23 + 4);
    sub_18B23602C(v34);
    os_unfair_lock_unlock(v23 + 4);
    v27 = *(v0 + 200);
    v31 = *(v0 + 192);
    v32 = *(v0 + 208);
    v30 = *(v0 + 184);
    v28 = *(v0 + 160);
    v33 = *(v0 + 112);

    *(v0 + 32) = v19;
    sub_18B2C9484();

    v18(v30, v28);
    (*(v27 + 8))(v32, v31);
    sub_18B1630AC(v33, &qword_1EA9B63D8);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t AXSettings.VoiceOver.currentVoiceRotor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UserVoiceConfiguration();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);
  v24 = v1;
  v21 = sub_18B26FD4C;
  v22 = &v23;

  os_unfair_lock_lock(v7 + 4);
  sub_18B22F010(&v25);
  os_unfair_lock_unlock(v7 + 4);

  sub_18B2C9474();

  v8 = v25;
  v9 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier);
  v20 = v1;
  v17 = sub_18B26FD64;
  v18 = &v19;

  os_unfair_lock_lock(v9 + 4);
  sub_18B22F010(&v25);
  os_unfair_lock_unlock(v9 + 4);

  sub_18B2C9474();

  v11 = v26;
  if (v26)
  {
    v12 = *(v8 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = v25;
      while (v13 < *(v8 + 16))
      {
        sub_18B230B70(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v6);
        v15 = *v6 == v14 && v11 == v6[1];
        if (v15 || (sub_18B2C9F24() & 1) != 0)
        {

          sub_18B26C784(v6, a1);
          return (*(v4 + 56))(a1, 0, 1, v3);
        }

        ++v13;
        result = sub_18B26F68C(v6, type metadata accessor for UserVoiceConfiguration);
        if (v12 == v13)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:

      return (*(v4 + 56))(a1, 1, 1, v3);
    }
  }

  else
  {
    (*(v4 + 56))(a1, 1, 1, v3);
  }

  return result;
}

uint64_t AXSettings.VoiceOver.systemDefaultVoiceSelection()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B257D08, 0, 0);
}

uint64_t sub_18B257D08()
{
  v16 = v0;
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_18B26FD34;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_18B23602C(&v15);
  v5 = v0[5];
  os_unfair_lock_unlock(v2 + 4);

  sub_18B2C9474();

  v6 = v0[2];
  v0[7] = v6;
  v7 = sub_18B2C9014();
  v0[8] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v0[9] = v9;
  v0[10] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v5, 1, 1, v7);
  v10 = AXSettings.VoiceOver.resolver.getter();
  v0[11] = v10;
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_18B257F00;
  v13 = v0[5];
  v12 = v0[6];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v12, v13, v10, 0, v6);
}

uint64_t sub_18B257F00()
{
  v1 = *(*v0 + 40);

  sub_18B1630AC(v1, &qword_1EA9B63D0);

  return MEMORY[0x1EEE6DFA0](sub_18B258068, 0, 0);
}

uint64_t sub_18B258068()
{
  v1 = *(v0 + 48);
  v2 = sub_18B2C9424();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    (*(v0 + 72))(*(v0 + 40), 1, 1, *(v0 + 64));
    sub_18B2C93F4();
    if (v4(v1, 1, v2) != 1)
    {
      sub_18B1630AC(*(v0 + 48), &qword_1EA9B63D8);
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 24), v1, v2);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t AXSettings.VoiceOver.voiceSelection(locale:withActivity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A48);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B7520);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = sub_18B2C9094();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v6 = sub_18B2C9014();
  v4[40] = v6;
  v4[41] = *(v6 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A50);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v7 = sub_18B2C9274();
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  v4[52] = swift_task_alloc();
  v8 = type metadata accessor for UserVoiceConfiguration();
  v4[53] = v8;
  v4[54] = *(v8 - 8);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v9 = sub_18B2C9424();
  v4[57] = v9;
  v4[58] = *(v9 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v10 = sub_18B2C90B4();
  v4[62] = v10;
  v4[63] = *(v10 - 8);
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B258714, 0, 0);
}

uint64_t sub_18B258714()
{
  AXSettings.VoiceOver.resolver.getter();
  sub_18B2C9114();

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_18B2C90E4();
  sub_18B2C9034();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v1 = swift_task_alloc();
  v0[67] = v1;
  *v1 = v0;
  v1[1] = sub_18B258820;
  v2 = v0[61];

  return AXSettings.VoiceOver.systemDefaultVoiceSelection()(v2);
}

uint64_t sub_18B258820()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25891C, 0, 0);
}

uint64_t sub_18B25891C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  AXSettings.VoiceOver.currentVoiceRotor.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B1630AC(*(v0 + 416), &qword_1EA9B6A40);
  }

  else
  {
    v4 = *(v0 + 424);
    sub_18B26C784(*(v0 + 416), *(v0 + 448));
    *(v0 + 696) = *(v4 + 20);
    v5 = sub_18B2C9404();
    *(v0 + 544) = v6;
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      *(v0 + 552) = *(*(v0 + 144) + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver);
      v36 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);

      v9 = swift_task_alloc();
      *(v0 + 560) = v9;
      *v9 = v0;
      v9[1] = sub_18B258F4C;
      v10 = *(v0 + 368);

      return v36(v10, v7, v8);
    }

    sub_18B26F68C(*(v0 + 448), type metadata accessor for UserVoiceConfiguration);
  }

  *(v0 + 568) = 0;
  v12 = *(v0 + 176);
  sub_18B163044(*(v0 + 136), v12, &unk_1EA9B7520);
  v13 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  v15 = *(v0 + 456);
  v16 = *(v0 + 464);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v14 == 1)
  {
    sub_18B1630AC(v17, &unk_1EA9B7520);
    (*(v16 + 56))(v18, 1, 1, v15);
LABEL_11:
    v21 = *(v0 + 144);
    sub_18B1630AC(*(v0 + 184), &qword_1EA9B63D8);
    v22 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver;
    *(v0 + 576) = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver;
    *(v0 + 584) = *(v21 + v22);
    v37 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);

    v23 = swift_task_alloc();
    *(v0 + 592) = v23;
    *v23 = v0;
    v23[1] = sub_18B2598C0;
    v24 = *(v0 + 520);

    return v37(v24);
  }

  v19 = *(v13 + 72);
  v20 = *(v0 + 176);
  sub_18B163044(v17 + v19, *(v0 + 184), &qword_1EA9B63D8);
  sub_18B26F68C(v20, type metadata accessor for AXSettings.VoiceOver.Activity);
  if ((*(v16 + 48))(v18, 1, v15) == 1)
  {
    goto LABEL_11;
  }

  v25 = *(v0 + 528);
  v26 = *(v0 + 496);
  v27 = *(v0 + 504);
  v28 = *(v0 + 480);
  v29 = *(v0 + 488);
  v30 = *(v0 + 456);
  v31 = *(v0 + 464);
  v32 = *(v0 + 192);
  v33 = *(v0 + 120);
  (*(v31 + 32))(v28, *(v0 + 184), v30);
  (*(v31 + 16))(v32, v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  VoiceSelection.fallingBack(to:)(v32, v33);
  sub_18B1630AC(v32, &qword_1EA9B63D8);
  v34 = *(v31 + 8);
  v34(v28, v30);
  v34(v29, v30);
  (*(v27 + 8))(v25, v26);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_18B258F4C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B259080, 0, 0);
}

uint64_t sub_18B259080()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B26F68C(v0[56], type metadata accessor for UserVoiceConfiguration);
    v4 = &qword_1EA9B6A50;
LABEL_5:
    sub_18B1630AC(v3, v4);
    goto LABEL_6;
  }

  v5 = v0[41];
  v57 = v0[40];
  v6 = v0[39];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[32];
  (*(v2 + 32))(v0[51], v3, v1);
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v7 + 8))(v6, v8);
  v10 = (*(v5 + 48))(v9, 1, v57);
  v3 = v0[32];
  if (v10 == 1)
  {
    v11 = v0[56];
    (*(v0[48] + 8))(v0[51], v0[47]);
    sub_18B26F68C(v11, type metadata accessor for UserVoiceConfiguration);
    v4 = &qword_1EA9B63D0;
    goto LABEL_5;
  }

  v26 = v0[43];
  (*(v0[41] + 32))(v26, v0[32], v0[40]);
  sub_18B2C9264();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v0[14] = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A58);
  sub_18B2C9924();
  v27 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  LOBYTE(v26) = sub_18B25B214(v26, v27);

  if (v26)
  {
    v28 = v0[63];
    v56 = v0[62];
    v59 = v0[66];
    v29 = v0[57];
    v30 = v0[58];
    v31 = v0[56];
    v54 = v0[51];
    v55 = v0[61];
    v32 = v0[48];
    v52 = v0[43];
    v53 = v0[47];
    v33 = v0[41];
    v51 = v0[40];
    v34 = v0[24];
    v35 = v0[15];
    (*(v30 + 16))(v34);
    (*(v30 + 56))(v34, 0, 1, v29);
    VoiceSelection.fallingBack(to:)(v34, v35);
    sub_18B1630AC(v34, &qword_1EA9B63D8);
    (*(v33 + 8))(v52, v51);
    (*(v32 + 8))(v54, v53);
    sub_18B26F68C(v31, type metadata accessor for UserVoiceConfiguration);
    (*(v30 + 8))(v55, v29);
    (*(v28 + 8))(v59, v56);
    goto LABEL_15;
  }

  v47 = v0[56];
  v48 = v0[51];
  v49 = v0[47];
  v50 = v0[48];
  (*(v0[41] + 8))(v0[43], v0[40]);
  (*(v50 + 8))(v48, v49);
  sub_18B26F68C(v47, type metadata accessor for UserVoiceConfiguration);
LABEL_6:
  v0[71] = 0;
  v12 = v0[22];
  sub_18B163044(v0[17], v12, &unk_1EA9B7520);
  v13 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  v15 = v0[57];
  v16 = v0[58];
  v17 = v0[22];
  v18 = v0[23];
  if (v14 == 1)
  {
    sub_18B1630AC(v17, &unk_1EA9B7520);
    (*(v16 + 56))(v18, 1, 1, v15);
LABEL_9:
    v21 = v0[18];
    sub_18B1630AC(v0[23], &qword_1EA9B63D8);
    v22 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver;
    v0[72] = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver;
    v0[73] = *(v21 + v22);
    v58 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);

    v23 = swift_task_alloc();
    v0[74] = v23;
    *v23 = v0;
    v23[1] = sub_18B2598C0;
    v24 = v0[65];

    return v58(v24);
  }

  v19 = *(v13 + 72);
  v20 = v0[22];
  sub_18B163044(v17 + v19, v0[23], &qword_1EA9B63D8);
  sub_18B26F68C(v20, type metadata accessor for AXSettings.VoiceOver.Activity);
  if ((*(v16 + 48))(v18, 1, v15) == 1)
  {
    goto LABEL_9;
  }

  v36 = v0[66];
  v37 = v0[62];
  v38 = v0[63];
  v39 = v0[60];
  v40 = v0[61];
  v41 = v0[57];
  v42 = v0[58];
  v43 = v0[24];
  v44 = v0[15];
  (*(v42 + 32))(v39, v0[23], v41);
  (*(v42 + 16))(v43, v40, v41);
  (*(v42 + 56))(v43, 0, 1, v41);
  VoiceSelection.fallingBack(to:)(v43, v44);
  sub_18B1630AC(v43, &qword_1EA9B63D8);
  v45 = *(v42 + 8);
  v45(v39, v41);
  v45(v40, v41);
  (*(v38 + 8))(v36, v37);
LABEL_15:

  v46 = v0[1];

  return v46();
}

uint64_t sub_18B2598C0()
{

  return MEMORY[0x1EEE6DFA0](sub_18B2599D8, 0, 0);
}

uint64_t sub_18B2599D8()
{
  v58 = v0;
  v1 = *(v0 + 328);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v51 = *(v0 + 168);
  v52 = *(v0 + 152);
  v53 = *(v0 + 320);
  sub_18B2C90A4();
  sub_18B2C9084();
  v8 = *(v4 + 8);
  *(v0 + 600) = v8;
  *(v0 + 608) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v5);
  sub_18B2C90A4();
  sub_18B2C9084();
  v8(v3, v5);
  v9 = *(v52 + 48);
  sub_18B163044(v6, v51, &qword_1EA9B63D0);
  sub_18B163044(v7, v51 + v9, &qword_1EA9B63D0);
  v10 = *(v1 + 48);
  *(v0 + 616) = v10;
  *(v0 + 624) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v11 = v10(v51, 1, v53);
  v12 = *(v0 + 320);
  if (v11 == 1)
  {
    v13 = *(v0 + 248);
    sub_18B1630AC(*(v0 + 240), &qword_1EA9B63D0);
    sub_18B1630AC(v13, &qword_1EA9B63D0);
    if (v10(v51 + v9, 1, v12) == 1)
    {
      sub_18B1630AC(*(v0 + 168), &qword_1EA9B63D0);
LABEL_12:
      v32 = *(v0 + 528);
      v33 = *(v0 + 496);
      v34 = *(*(v0 + 504) + 8);
      v34(*(v0 + 520), v33);
      v34(v32, v33);
      (*(*(v0 + 464) + 32))(*(v0 + 120), *(v0 + 488), *(v0 + 456));

      v35 = *(v0 + 8);

      return v35();
    }

    goto LABEL_6;
  }

  sub_18B163044(*(v0 + 168), *(v0 + 232), &qword_1EA9B63D0);
  if (v10(v51 + v9, 1, v12) == 1)
  {
    v14 = *(v0 + 320);
    v15 = *(v0 + 328);
    v16 = *(v0 + 248);
    v17 = *(v0 + 232);
    sub_18B1630AC(*(v0 + 240), &qword_1EA9B63D0);
    sub_18B1630AC(v16, &qword_1EA9B63D0);
    (*(v15 + 8))(v17, v14);
LABEL_6:
    sub_18B1630AC(*(v0 + 168), &qword_1EA9B6A48);
    goto LABEL_7;
  }

  v24 = *(v0 + 328);
  v25 = *(v0 + 336);
  v26 = *(v0 + 320);
  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v29 = *(v0 + 232);
  v54 = *(v0 + 168);
  (*(v24 + 32))(v25, v51 + v9, v26);
  sub_18B26FC84(&qword_1EA9B56A0, 255, MEMORY[0x1E6969610]);
  v30 = sub_18B2C9854();
  v31 = *(v24 + 8);
  v31(v25, v26);
  sub_18B1630AC(v28, &qword_1EA9B63D0);
  sub_18B1630AC(v27, &qword_1EA9B63D0);
  v31(v29, v26);
  sub_18B1630AC(v54, &qword_1EA9B63D0);
  if (v30)
  {
    goto LABEL_12;
  }

LABEL_7:
  v18 = *(v0 + 568);
  v19 = *(v0 + 144);
  v20 = *(v19 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);
  v21 = swift_task_alloc();
  *(v21 + 16) = v19;
  v22 = swift_task_alloc();
  *(v22 + 16) = sub_18B26FD4C;
  *(v22 + 24) = v21;

  os_unfair_lock_lock(v20 + 4);
  sub_18B22F010(v57);
  os_unfair_lock_unlock(v20 + 4);
  if (v18)
  {
  }

  else
  {

    sub_18B2C9474();

    result = *(v0 + 96);
    *(v0 + 632) = result;
    v36 = *(result + 16);
    *(v0 + 640) = v36;
    if (v36)
    {
      v37 = 0;
      *(v0 + 700) = *(*(v0 + 432) + 80);
      while (1)
      {
        *(v0 + 648) = v37;
        v38 = *(v0 + 632);
        if (v37 >= *(v38 + 16))
        {
          __break(1u);
          return result;
        }

        v39 = *(v0 + 424);
        sub_18B230B70(v38 + ((*(v0 + 700) + 32) & ~*(v0 + 700)) + *(*(v0 + 432) + 72) * v37, *(v0 + 440));
        *(v0 + 704) = *(v39 + 20);
        v40 = sub_18B2C9404();
        *(v0 + 656) = v41;
        if (v41)
        {
          break;
        }

        result = sub_18B26F68C(*(v0 + 440), type metadata accessor for UserVoiceConfiguration);
        v37 = *(v0 + 648) + 1;
        if (v37 == *(v0 + 640))
        {
          goto LABEL_20;
        }
      }

      *(v0 + 664) = *(*(v0 + 144) + *(v0 + 576));
      v56 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
      v47 = v40;
      v48 = v41;

      v49 = swift_task_alloc();
      *(v0 + 672) = v49;
      *v49 = v0;
      v49[1] = sub_18B25A238;
      v50 = *(v0 + 360);

      return v56(v50, v47, v48);
    }

    else
    {
LABEL_20:
      v42 = *(v0 + 576);
      v43 = *(v0 + 144);

      *(v0 + 680) = *(v43 + v42);
      v55 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);

      v44 = swift_task_alloc();
      *(v0 + 688) = v44;
      *v44 = v0;
      v44[1] = sub_18B25AC94;
      v45 = *(v0 + 528);
      v46 = *(v0 + 352);

      return v55(v46, v45);
    }
  }
}

uint64_t sub_18B25A238()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25A36C, 0, 0);
}

uint64_t sub_18B25A36C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v65 = *(v0 + 616);
    v59 = *(v0 + 600);
    v5 = *(v0 + 504);
    v6 = *(v0 + 512);
    v56 = *(v0 + 496);
    v63 = *(v0 + 320);
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v55 = *(v0 + 224);
    v57 = *(v0 + 264);
    v58 = *(v0 + 216);
    v9 = *(v0 + 160);
    v61 = *(v0 + 152);
    (*(v2 + 32))(*(v0 + 400), v3, v1);
    v10 = v9;
    sub_18B2C91A4();
    sub_18B2C90A4();
    v11 = *(v5 + 8);
    v11(v6, v56);
    sub_18B2C9084();
    v59(v7, v57);
    sub_18B2C90A4();
    sub_18B2C9084();
    v59(v8, v57);
    v12 = *(v61 + 48);
    sub_18B163044(v55, v9, &qword_1EA9B63D0);
    sub_18B163044(v58, v9 + v12, &qword_1EA9B63D0);
    v13 = v65(v9, 1, v63);
    v14 = *(v0 + 616);
    v15 = *(v0 + 320);
    if (v13 == 1)
    {
      v16 = *(v0 + 224);
      sub_18B1630AC(*(v0 + 216), &qword_1EA9B63D0);
      sub_18B1630AC(v16, &qword_1EA9B63D0);
      if (v14(v10 + v12, 1, v15) == 1)
      {
        v68 = v11;
        sub_18B1630AC(*(v0 + 160), &qword_1EA9B63D0);
LABEL_11:
        v64 = *(v0 + 520);
        v67 = *(v0 + 528);
        v33 = *(v0 + 488);
        v32 = *(v0 + 496);
        v34 = *(v0 + 456);
        v35 = *(v0 + 464);
        v36 = *(v0 + 440);
        v37 = *(v0 + 384);
        v60 = *(v0 + 376);
        v62 = *(v0 + 400);
        v38 = *(v0 + 192);
        v39 = *(v0 + 120);

        (*(v35 + 16))(v38, v33, v34);
        (*(v35 + 56))(v38, 0, 1, v34);
        VoiceSelection.fallingBack(to:)(v38, v39);
        sub_18B1630AC(v38, &qword_1EA9B63D8);
        (*(v37 + 8))(v62, v60);
        sub_18B26F68C(v36, type metadata accessor for UserVoiceConfiguration);
        v68(v64, v32);
        (*(v35 + 8))(v33, v34);
        v68(v67, v32);

        v40 = *(v0 + 8);

        return v40();
      }
    }

    else
    {
      sub_18B163044(*(v0 + 160), *(v0 + 208), &qword_1EA9B63D0);
      if (v14(v9 + v12, 1, v15) != 1)
      {
        v23 = v9;
        v25 = *(v0 + 328);
        v24 = *(v0 + 336);
        v26 = *(v0 + 320);
        v28 = *(v0 + 216);
        v27 = *(v0 + 224);
        v29 = *(v0 + 208);
        v66 = *(v0 + 160);
        v68 = v11;
        (*(v25 + 32))(v24, v23 + v12, v26);
        sub_18B26FC84(&qword_1EA9B56A0, 255, MEMORY[0x1E6969610]);
        v30 = sub_18B2C9854();
        v31 = *(v25 + 8);
        v31(v24, v26);
        sub_18B1630AC(v28, &qword_1EA9B63D0);
        sub_18B1630AC(v27, &qword_1EA9B63D0);
        v31(v29, v26);
        sub_18B1630AC(v66, &qword_1EA9B63D0);
        if (v30)
        {
          goto LABEL_11;
        }

LABEL_9:
        v21 = *(v0 + 440);
        (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
        v22 = v21;
        goto LABEL_17;
      }

      v17 = *(v0 + 320);
      v18 = *(v0 + 328);
      v19 = *(v0 + 224);
      v20 = *(v0 + 208);
      sub_18B1630AC(*(v0 + 216), &qword_1EA9B63D0);
      sub_18B1630AC(v19, &qword_1EA9B63D0);
      (*(v18 + 8))(v20, v17);
    }

    sub_18B1630AC(*(v0 + 160), &qword_1EA9B6A48);
    goto LABEL_9;
  }

  sub_18B26F68C(*(v0 + 440), type metadata accessor for UserVoiceConfiguration);
  for (result = sub_18B1630AC(v3, &qword_1EA9B6A50); ; result = sub_18B26F68C(v22, type metadata accessor for UserVoiceConfiguration))
  {
    v45 = *(v0 + 648) + 1;
    if (v45 == *(v0 + 640))
    {
      v46 = *(v0 + 576);
      v47 = *(v0 + 144);

      *(v0 + 680) = *(v47 + v46);
      v69 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);

      v48 = swift_task_alloc();
      *(v0 + 688) = v48;
      *v48 = v0;
      v48[1] = sub_18B25AC94;
      v49 = *(v0 + 528);
      v50 = *(v0 + 352);

      return v69(v50, v49);
    }

    *(v0 + 648) = v45;
    v41 = *(v0 + 632);
    if (v45 >= *(v41 + 16))
    {
      __break(1u);
      return result;
    }

    v42 = *(v0 + 424);
    sub_18B230B70(v41 + ((*(v0 + 700) + 32) & ~*(v0 + 700)) + *(*(v0 + 432) + 72) * v45, *(v0 + 440));
    *(v0 + 704) = *(v42 + 20);
    v43 = sub_18B2C9404();
    *(v0 + 656) = v44;
    if (v44)
    {
      break;
    }

    v22 = *(v0 + 440);
LABEL_17:
    ;
  }

  *(v0 + 664) = *(*(v0 + 144) + *(v0 + 576));
  v70 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
  v51 = v43;
  v52 = v44;

  v53 = swift_task_alloc();
  *(v0 + 672) = v53;
  *v53 = v0;
  v53[1] = sub_18B25A238;
  v54 = *(v0 + 360);

  return v70(v54, v51, v52);
}

uint64_t sub_18B25AC94()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25ADAC, 0, 0);
}

uint64_t sub_18B25ADAC()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[44];
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = v0[66];
  v6 = v0[62];
  v7 = v0[63];
  if (v4 == 1)
  {
    v8 = *(v7 + 8);
    v8(v0[65], v0[62]);
    v8(v5, v6);
    sub_18B1630AC(v3, &qword_1EA9B6A50);
    (*(v0[58] + 32))(v0[15], v0[61], v0[57]);
  }

  else
  {
    v20 = v0[61];
    v18 = v0[59];
    v25 = v0[66];
    v9 = v0[58];
    v19 = v0[57];
    v24 = v0[62];
    v10 = v0[41];
    v17 = v0[40];
    v12 = v0[24];
    v11 = v0[25];
    v21 = v0[15];
    v22 = v0[49];
    v23 = v0[65];
    (*(v1 + 32))();
    sub_18B2C9194();
    (*(v10 + 56))(v11, 1, 1, v17);
    sub_18B2C93F4();
    (*(v9 + 16))(v12, v20, v19);
    (*(v9 + 56))(v12, 0, 1, v19);
    VoiceSelection.fallingBack(to:)(v12, v21);
    sub_18B1630AC(v12, &qword_1EA9B63D8);
    v13 = *(v9 + 8);
    v13(v18, v19);
    (*(v1 + 8))(v22, v2);
    v14 = *(v7 + 8);
    v14(v23, v24);
    v13(v20, v19);
    v14(v25, v24);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_18B25B214(uint64_t a1, uint64_t a2)
{
  v3 = sub_18B2C9014();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_18B26FC84(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610]), v7 = sub_18B2C9834(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v17 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v16 = ~v8;
    v10 = v4 + 16;
    v11 = *(v4 + 16);
    v12 = *(v10 + 56);
    v13 = (v10 - 8);
    do
    {
      v11(v6, *(a2 + 48) + v12 * v9, v3);
      sub_18B26FC84(&qword_1EA9B56A0, 255, MEMORY[0x1E6969610]);
      v14 = sub_18B2C9854();
      (*v13)(v6, v3);
      if (v14)
      {
        break;
      }

      v9 = (v9 + 1) & v16;
    }

    while (((*(v17 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t VoiceSelection.fallingBack(to:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v34 = &v32 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = sub_18B2C9424();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a2, v2, v20);
  if ((sub_18B2C9394() & 0x100000000) != 0)
  {
    v22 = a1;
    sub_18B163044(a1, v19, &qword_1EA9B63D8);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_18B1630AC(v19, &qword_1EA9B63D8);
      LOBYTE(a1) = 1;
    }

    else
    {
      a1 = (sub_18B2C9394() >> 32) & 1;
      (*(v21 + 8))(v19, v20);
    }
  }

  else
  {
    v22 = a1;
    LOBYTE(a1) = 0;
  }

  v38 = a1;
  sub_18B2C93A4();
  if ((sub_18B2C93B4() & 0x100000000) != 0)
  {
    v24 = v22;
    sub_18B163044(v22, v17, &qword_1EA9B63D8);
    if ((*(v21 + 48))(v17, 1, v20) == 1)
    {
      sub_18B1630AC(v17, &qword_1EA9B63D8);
      LOBYTE(v23) = 1;
    }

    else
    {
      v23 = (sub_18B2C93B4() >> 32) & 1;
      (*(v21 + 8))(v17, v20);
    }
  }

  else
  {
    LOBYTE(v23) = 0;
    v24 = v22;
  }

  v37 = v23;
  sub_18B2C93C4();
  if ((sub_18B2C9374() & 0x100000000) != 0)
  {
    sub_18B163044(v24, v14, &qword_1EA9B63D8);
    if ((*(v21 + 48))(v14, 1, v20) == 1)
    {
      sub_18B1630AC(v14, &qword_1EA9B63D8);
      LOBYTE(v25) = 1;
    }

    else
    {
      v25 = (sub_18B2C9374() >> 32) & 1;
      (*(v21 + 8))(v14, v20);
    }
  }

  else
  {
    LOBYTE(v25) = 0;
  }

  v36 = v25;
  sub_18B2C9384();
  if (!sub_18B2C93D4())
  {
    v26 = v33;
    sub_18B163044(v24, v33, &qword_1EA9B63D8);
    if ((*(v21 + 48))(v26, 1, v20) == 1)
    {
      sub_18B1630AC(v26, &qword_1EA9B63D8);
    }

    else
    {
      sub_18B2C93D4();
      (*(v21 + 8))(v26, v20);
    }
  }

  sub_18B2C93E4();
  sub_18B2C9404();
  if (v27)
  {
  }

  v29 = v34;
  sub_18B163044(v24, v34, &qword_1EA9B63D8);
  v30 = *(v21 + 48);
  if (v30(v29, 1, v20) == 1)
  {
    sub_18B1630AC(v29, &qword_1EA9B63D8);
  }

  else
  {
    sub_18B2C9404();
    (*(v21 + 8))(v29, v20);
  }

  v31 = v35;
  sub_18B2C9414();
  sub_18B163044(v24, v31, &qword_1EA9B63D8);
  if (v30(v31, 1, v20) == 1)
  {
    sub_18B1630AC(v31, &qword_1EA9B63D8);
  }

  else
  {
    sub_18B2C9344();
    (*(v21 + 8))(v31, v20);
  }

  return sub_18B2C9354();
}

uint64_t AXSettings.VoiceOver.defaultVoiceSelectionStream.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A60);
  v2 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v24 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A68);
  v26 = *(v32 - 8);
  v5 = v26;
  v6 = MEMORY[0x1EEE9AC00](v32);
  v30 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70);
  v10 = *(v29 - 8);
  v28 = *(v10 + 64);
  v11 = MEMORY[0x1EEE9AC00](v29);
  v27 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v39 = v1;
  v36 = sub_18B26FD34;
  v37 = &v38;

  os_unfair_lock_lock(v15 + 4);
  sub_18B23602C(&v40);
  os_unfair_lock_unlock(v15 + 4);

  sub_18B2C9434();

  sub_18B2C9154();
  v16 = sub_18B2C9144();
  v34 = v16;
  v35 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A78);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v31);
  v25 = v9;
  sub_18B2C9AC4();
  v17 = *(v5 + 16);
  v18 = v32;
  v17(v30, v9, v32);
  v19 = v27;
  v20 = v29;
  (*(v10 + 16))(v27, v14, v29);
  v21 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  (*(v10 + 32))(v22 + v21, v19, v20);
  sub_18B2C9534();
  (*(v26 + 8))(v25, v18);
  return (*(v10 + 8))(v14, v20);
}

uint64_t AXSettings.VoiceOver.speechVoiceIdentifier(forLanguage:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_18B2C9094();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_18B2C90B4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25BFC8, 0, 0);
}

uint64_t sub_18B25BFC8()
{
  v21 = v0;
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_18B26FD34;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_18B23602C(&v20);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v0[4];

  sub_18B2C9474();

  v6 = v0[2];
  v0[14] = v6;
  v7 = AXSettings.VoiceOver.resolver.getter();
  v0[15] = v7;
  if (v5)
  {
    v8 = v0[11];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    v19 = v0[6];

    sub_18B2C9054();
    sub_18B2C90A4();
    (*(v10 + 8))(v8, v9);
    sub_18B2C9084();
    (*(v11 + 8))(v12, v19);
  }

  else
  {
    v13 = v0[12];
    v14 = sub_18B2C9014();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_18B25C234;
  v17 = v0[12];
  v16 = v0[13];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v16, v17, v7, 0, v6);
}

uint64_t sub_18B25C234()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25C34C, 0, 0);
}

uint64_t sub_18B25C34C()
{
  v1 = v0[12];
  v2 = v0[13];

  sub_18B1630AC(v1, &qword_1EA9B63D0);
  v3 = sub_18B2C9424();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[13];
  if (v5 == 1)
  {
    sub_18B1630AC(v0[13], &qword_1EA9B63D8);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = sub_18B2C9404();
    v8 = v9;
    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[1];

  return v10(v7, v8);
}

uint64_t sub_18B25C63C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_18B2284F4;

  return AXSettings.VoiceOver.speechVoiceIdentifier(forLanguage:)(a1, v7);
}

uint64_t AXSettings.VoiceOver.set(voiceId:forLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18B25C748, 0, 0);
}

uint64_t sub_18B25C748()
{
  v14 = v0;
  v1 = v0[9];
  v2 = AXSettings.VoiceOver.resolver.getter();
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
  v0[10] = v2;
  v0[11] = v3;
  v4 = *(v1 + v3);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_18B26FD34;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v13);
  v0[12] = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  v0[2] = v0[3];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_18B25C8E0;
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  return Dictionary<>.set(voiceId:forLanguage:withResolver:)(v11, v10, v8, v9, v2);
}

uint64_t sub_18B25C8E0()
{
  v13 = v0;
  v13 = *v0;
  v1 = v13;
  v2 = v13[12];
  v3 = v13[11];
  v4 = v13[9];
  v5 = *v0;
  v13 = *v0;

  v6 = v1[2];
  v7 = *(v4 + v3);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_18B26FD34;
  *(v9 + 24) = v8;

  os_unfair_lock_lock(v7 + 4);
  sub_18B23602C(&v12);
  if (v2)
  {
    os_unfair_lock_unlock(v7 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);

    v1[4] = v6;
    sub_18B2C9484();

    v11 = *(v5 + 8);

    return v11();
  }
}

uint64_t sub_18B25CCB0(uint64_t a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
  }

  else
  {
    v7 = 0;
  }

  v4[4] = v7;
  v8 = v7;
  v9 = sub_18B2C9894();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_18B22A184;

  return AXSettings.VoiceOver.set(voiceId:forLanguage:)(a1, v8, v9, v11);
}

Swift::Void __swiftcall AXSettings.VoiceOver.set(voiceId:forLanguage:rate:volume:pitch:)(Swift::String_optional voiceId, Swift::String forLanguage, Swift::Float rate, Swift::Float volume, Swift::Float pitch)
{
  object = voiceId.value._object;
  countAndFlagsBits = voiceId.value._countAndFlagsBits;
  v10 = sub_18B2C9424();
  v100 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v97 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v94 = v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v96 = v92 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v99 = v92 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v92 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v92 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v98 = v92 - v28;
  v103 = sub_18B2C9014();
  v101 = *(v103 - 8);
  v29 = MEMORY[0x1EEE9AC00](v103);
  v31 = v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v95 = v92 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = v92 - v34;

  v104 = v35;
  sub_18B2C9024();
  if (!object)
  {
LABEL_7:
    v47 = v101;
    (*(v101 + 16))(v31, v104, v103);
    v48 = v100;
    v49 = (*(v100 + 56))(v17, 1, 1, v10);
    v50 = v102;
    v99 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
    v51 = *(v102 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
    v52 = MEMORY[0x1EEE9AC00](v49);
    v92[-2] = v50;
    MEMORY[0x1EEE9AC00](v52);
    v92[-2] = sub_18B26FD34;
    v92[-1] = v53;

    os_unfair_lock_lock(v51 + 4);
    sub_18B23602C(v106);
    os_unfair_lock_unlock(v51 + 4);

    sub_18B2C9474();

    if ((*(v48 + 48))(v17, 1, v10) == 1)
    {
      sub_18B1630AC(v17, &qword_1EA9B63D8);
      v54 = v96;
      sub_18B268108(v31, v96);
      sub_18B1630AC(v54, &qword_1EA9B63D8);
      v55 = *(v47 + 8);
      v56 = v103;
      v57 = v55(v31, v103);
      v58 = v106[0];
    }

    else
    {
      v59 = v97;
      (*(v48 + 32))(v97, v17, v10);
      v60 = v106[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v60;
      sub_18B269DFC(v59, v31, isUniquelyReferenced_nonNull_native);
      v55 = *(v47 + 8);
      v56 = v103;
      v57 = v55(v31, v103);
      v58 = v105[0];
      v106[0] = v105[0];
    }

    v62 = *&v99[v50];
    v63 = MEMORY[0x1EEE9AC00](v57);
    v92[-2] = v50;
    MEMORY[0x1EEE9AC00](v63);
    v92[-2] = sub_18B26FD34;
    v92[-1] = v64;

    os_unfair_lock_lock(v62 + 4);
    sub_18B23602C(v105);
    os_unfair_lock_unlock(v62 + 4);

    v105[0] = v58;
    sub_18B2C9484();

    v55(v104, v56);
    return;
  }

  v36 = sub_18B2C98E4();
  if (v36 < 1)
  {

    goto LABEL_7;
  }

  v92[0] = countAndFlagsBits;
  v93 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
  v37 = *(v102 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v92[-2] = v39;
  MEMORY[0x1EEE9AC00](v38);
  v92[-2] = sub_18B26FD34;
  v92[-1] = v40;

  os_unfair_lock_lock(v37 + 4);
  sub_18B23602C(v106);
  v92[1] = 0;
  os_unfair_lock_unlock(v37 + 4);

  sub_18B2C9474();

  v41 = v106[0];
  if (*(v106[0] + 16))
  {
    v42 = sub_18B293C80(v104);
    v43 = v100;
    v44 = v98;
    if (v45)
    {
      (*(v100 + 16))(v98, *(v41 + 56) + *(v100 + 72) * v42, v10);
      v46 = 0;
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 1;
    v43 = v100;
    v44 = v98;
  }

  v65 = *(v43 + 56);
  v65(v44, v46, 1, v10);
  sub_18B163044(v44, v24, &qword_1EA9B63D8);
  v66 = *(v43 + 48);
  if (v66(v24, 1, v10) == 1)
  {
    (*(v101 + 56))(v94, 1, 1, v103);

    LOBYTE(v106[0]) = 1;
    sub_18B2C93F4();
    v67 = v66;
    v68 = v66(v24, 1, v10);
    v69 = v99;
    v70 = v95;
    if (v68 != 1)
    {
      sub_18B1630AC(v24, &qword_1EA9B63D8);
    }
  }

  else
  {
    v67 = v66;
    (*(v43 + 32))(v27, v24, v10);
    v69 = v99;
    v70 = v95;
  }

  v65(v27, 0, 1, v10);
  v71 = v98;
  sub_18B26C918(v27, v98);
  if (v67(v71, 1, v10))
  {
  }

  else
  {
    sub_18B2C9414();
  }

  v72 = v102;
  if (volume > 0.0 && !v67(v71, 1, v10))
  {
    LOBYTE(v106[0]) = 0;
    sub_18B2C93C4();
  }

  if (rate > 0.0 && !v67(v71, 1, v10))
  {
    LOBYTE(v106[0]) = 0;
    sub_18B2C9384();
  }

  if (pitch > 0.0 && !v67(v71, 1, v10))
  {
    LOBYTE(v106[0]) = 0;
    sub_18B2C93A4();
  }

  v73 = v10;
  v74 = v101;
  (*(v101 + 16))(v70, v104, v103);
  v75 = sub_18B163044(v71, v69, &qword_1EA9B63D8);
  v76 = *(v72 + v93);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v92[-2] = v72;
  MEMORY[0x1EEE9AC00](v77);
  v92[-2] = sub_18B26FD34;
  v92[-1] = v78;

  os_unfair_lock_lock(v76 + 4);
  sub_18B23602C(v106);
  os_unfair_lock_unlock(v76 + 4);
  v79 = v99;

  sub_18B2C9474();

  if (v67(v79, 1, v73) == 1)
  {
    sub_18B1630AC(v79, &qword_1EA9B63D8);
    v80 = v96;
    sub_18B268108(v70, v96);
    sub_18B1630AC(v80, &qword_1EA9B63D8);
    v81 = *(v74 + 8);
    v82 = v103;
    v83 = v81(v70, v103);
    v84 = v106[0];
  }

  else
  {
    v85 = v97;
    (*(v100 + 32))(v97, v79, v73);
    v86 = v106[0];
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v105[0] = v86;
    sub_18B269DFC(v85, v70, v87);
    v81 = *(v74 + 8);
    v82 = v103;
    v83 = v81(v70, v103);
    v84 = v105[0];
    v106[0] = v105[0];
  }

  v88 = *(v102 + v93);
  v89 = MEMORY[0x1EEE9AC00](v83);
  v92[-2] = v90;
  MEMORY[0x1EEE9AC00](v89);
  v92[-2] = sub_18B26FD34;
  v92[-1] = v91;

  os_unfair_lock_lock(v88 + 4);
  sub_18B23602C(v105);
  os_unfair_lock_unlock(v88 + 4);

  v105[0] = v84;
  sub_18B2C9484();

  v81(v104, v82);
  sub_18B1630AC(v71, &qword_1EA9B63D8);
}

uint64_t AXSettings.VoiceOver.effectiveSpeakingVolume()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25DB8C, 0, 0);
}

uint64_t sub_18B25DB8C()
{
  AXSettings.VoiceOver.currentVoiceRotor.getter(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B2702C0;
  v2 = *(v0 + 24);

  return AXSettings.VoiceOver.effectiveSpeakingVolume(currentRotor:)(v2);
}

uint64_t AXSettings.VoiceOver.effectiveSpeakingVolume(currentRotor:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_18B2C9424();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25DD2C, 0, 0);
}

uint64_t sub_18B25DD2C()
{
  v1 = v0[8];
  sub_18B163044(v0[2], v1, &qword_1EA9B6A40);
  v2 = type metadata accessor for UserVoiceConfiguration();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[8];
  if (v3 == 1)
  {
    sub_18B1630AC(v4, &qword_1EA9B6A40);
LABEL_7:
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_18B25DF2C;
    v15 = v0[6];

    return AXSettings.VoiceOver.systemDefaultVoiceSelection()(v15);
  }

  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v4 + *(v2 + 20);
  v9 = v0[8];
  (*(v7 + 16))(v5, v8, v6);
  sub_18B26F68C(v9, type metadata accessor for UserVoiceConfiguration);
  v10 = sub_18B2C93B4();
  (*(v7 + 8))(v5, v6);
  if ((v10 & 0x100000000) != 0)
  {
    goto LABEL_7;
  }

  v11 = v0[1];
  v12.n128_u32[0] = v10;

  return v11(v12);
}

uint64_t sub_18B25DF2C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25E028, 0, 0);
}

uint64_t sub_18B25E028()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_18B2C93B4();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 0x100000000) != 0)
  {
    v5 = 0.8;
  }

  else
  {
    v5 = *&v4;
  }

  v6 = v0[1];
  v7.n128_f32[0] = v5;

  return v6(v7);
}

uint64_t AXSettings.VoiceOver.setEffectiveSpeakingVolume(_:)(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25E190, 0, 0);
}

uint64_t sub_18B25E190()
{
  AXSettings.VoiceOver.currentVoiceRotor.getter(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B2702BC;
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);

  return AXSettings.VoiceOver.setEffectiveSpeakingVolume(currentRotor:value:)(v2, v3);
}

uint64_t AXSettings.VoiceOver.setEffectiveSpeakingVolume(currentRotor:value:)(uint64_t a1, float a2)
{
  *(v3 + 320) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_18B2C9424();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v5 = sub_18B2C9094();
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = sub_18B2C9014();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v7 = sub_18B2C90B4();
  *(v3 + 192) = v7;
  *(v3 + 200) = *(v7 - 8);
  *(v3 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  *(v3 + 216) = swift_task_alloc();
  v8 = type metadata accessor for UserVoiceConfiguration();
  *(v3 + 224) = v8;
  *(v3 + 232) = *(v8 - 8);
  *(v3 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25E53C, 0, 0);
}

uint64_t sub_18B25E53C()
{
  v25 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_18B163044(*(v0 + 56), v3, &qword_1EA9B6A40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B1630AC(*(v0 + 216), &qword_1EA9B6A40);
    *(v0 + 248) = AXSettings.VoiceOver.resolver.getter();
    v23 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v4[1] = sub_18B25E91C;
    v5 = *(v0 + 208);

    return v23(v5);
  }

  else
  {
    v7 = *(v0 + 64);
    sub_18B26C784(*(v0 + 216), *(v0 + 240));
    v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors;
    v9 = *(v7 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);
    v10 = swift_task_alloc();
    *(v10 + 16) = v7;
    v11 = swift_task_alloc();
    *(v11 + 16) = sub_18B26FD4C;
    *(v11 + 24) = v10;

    os_unfair_lock_lock(v9 + 4);
    sub_18B22F010(v24);
    os_unfair_lock_unlock(v9 + 4);
    v12 = *(v0 + 240);
    v13 = *(v0 + 64);
    v14 = *(v0 + 320);

    sub_18B2C9474();

    v15 = *(v0 + 40);
    v16 = swift_task_alloc();
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    v17 = sub_18B237B6C(sub_18B26C988, v16, v15);

    v18 = *(v7 + v8);
    v19 = swift_task_alloc();
    *(v19 + 16) = v13;
    v20 = swift_task_alloc();
    *(v20 + 16) = sub_18B26FD4C;
    *(v20 + 24) = v19;

    os_unfair_lock_lock(v18 + 4);
    sub_18B22F010(v24);
    os_unfair_lock_unlock(v18 + 4);
    v21 = *(v0 + 240);

    *(v0 + 48) = v17;
    sub_18B2C9484();

    sub_18B26F68C(v21, type metadata accessor for UserVoiceConfiguration);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_18B25E91C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25EA34, 0, 0);
}

uint64_t sub_18B25EA34()
{
  v27 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v7 = v0[16];
    (*(v0[25] + 8))(v0[26], v0[24]);
    sub_18B1630AC(v7, &qword_1EA9B63D0);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[8];
    (*(v0[21] + 32))(v0[23], v0[16], v0[20]);
    v11 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
    v0[33] = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
    v12 = *(v10 + v11);
    v13 = swift_task_alloc();
    *(v13 + 16) = v10;
    v14 = swift_task_alloc();
    *(v14 + 16) = sub_18B26FD34;
    *(v14 + 24) = v13;

    os_unfair_lock_lock(v12 + 4);
    sub_18B23602C(&v26);
    v0[34] = 0;
    os_unfair_lock_unlock(v12 + 4);
    v15 = v0[23];
    v16 = v0[20];
    v17 = v0[21];
    v18 = v0[15];
    v19 = v0[8];

    sub_18B2C9474();

    v20 = v0[2];
    v0[35] = v20;
    v21 = *(v17 + 16);
    v0[36] = v21;
    v0[37] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v18, v15, v16);
    (*(v17 + 56))(v18, 0, 1, v16);
    v22 = *(v19 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver);
    v0[38] = v22;

    v23 = swift_task_alloc();
    v0[39] = v23;
    *v23 = v0;
    v23[1] = sub_18B25EDB8;
    v24 = v0[14];
    v25 = v0[15];

    return Dictionary<>.selection(forLanguage:withResolver:exists:)(v24, v25, v22, 0, v20);
  }
}

uint64_t sub_18B25EDB8()
{
  v1 = *(*v0 + 120);

  sub_18B1630AC(v1, &qword_1EA9B63D0);

  return MEMORY[0x1EEE6DFA0](sub_18B25EF20, 0, 0);
}

uint64_t sub_18B25EF20()
{
  v35 = v0;
  v1 = *(v0 + 112);
  v2 = *(*(v0 + 80) + 48);
  if (!v2(v1, 1, *(v0 + 72)))
  {
    LOBYTE(v34[0]) = 0;
    sub_18B2C93C4();
    v1 = *(v0 + 112);
  }

  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 104);
  v6 = *(v0 + 64);
  (*(v0 + 288))(*(v0 + 176), *(v0 + 184), *(v0 + 160));
  sub_18B163044(v1, v5, &qword_1EA9B63D8);
  v7 = *(v6 + v4);
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_18B26FD34;
  *(v9 + 24) = v8;

  os_unfair_lock_lock(v7 + 4);
  sub_18B23602C(v34);
  os_unfair_lock_unlock(v7 + 4);
  if (v3)
  {
  }

  else
  {
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);

    sub_18B2C9474();

    v12 = *(v0 + 24);
    v13 = v2(v10, 1, v11);
    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v16 = *(v0 + 160);
    if (v13 == 1)
    {
      v17 = *(v0 + 96);
      sub_18B1630AC(*(v0 + 104), &qword_1EA9B63D8);
      sub_18B268108(v14, v17);
      sub_18B1630AC(v17, &qword_1EA9B63D8);
      v18 = *(v15 + 8);
      v18(v14, v16);
      v19 = v12;
    }

    else
    {
      v20 = *(v0 + 88);
      (*(*(v0 + 80) + 32))(v20, *(v0 + 104), *(v0 + 72));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v12;
      sub_18B269DFC(v20, v14, isUniquelyReferenced_nonNull_native);
      v18 = *(v15 + 8);
      v18(v14, v16);
      v19 = v34[0];
    }

    v22 = *(v0 + 64);
    v23 = *(v22 + *(v0 + 264));
    v24 = swift_task_alloc();
    *(v24 + 16) = v22;
    v25 = swift_task_alloc();
    *(v25 + 16) = sub_18B26FD34;
    *(v25 + 24) = v24;

    os_unfair_lock_lock(v23 + 4);
    sub_18B23602C(v34);
    os_unfair_lock_unlock(v23 + 4);
    v27 = *(v0 + 200);
    v31 = *(v0 + 192);
    v32 = *(v0 + 208);
    v30 = *(v0 + 184);
    v28 = *(v0 + 160);
    v33 = *(v0 + 112);

    *(v0 + 32) = v19;
    sub_18B2C9484();

    v18(v30, v28);
    (*(v27 + 8))(v32, v31);
    sub_18B1630AC(v33, &qword_1EA9B63D8);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t AXSettings.VoiceOver.effectiveSpeakingRate()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25F3CC, 0, 0);
}

uint64_t sub_18B25F3CC()
{
  AXSettings.VoiceOver.currentVoiceRotor.getter(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B25F468;
  v2 = *(v0 + 24);

  return AXSettings.VoiceOver.effectiveSpeakingRate(currentRotor:)(v2);
}

uint64_t sub_18B25F468(float a1)
{
  v3 = *(*v1 + 24);
  v7 = *v1;

  sub_18B1630AC(v3, &qword_1EA9B6A40);

  v4 = *(v7 + 8);
  v5.n128_f32[0] = a1;

  return v4(v5);
}

uint64_t AXSettings.VoiceOver.setEffectiveSpeakingRate(_:)(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25F638, 0, 0);
}

uint64_t sub_18B25F638()
{
  AXSettings.VoiceOver.currentVoiceRotor.getter(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B2702BC;
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);

  return AXSettings.VoiceOver.setEffectiveSpeakingRate(currentRotor:value:)(v2, v3);
}

uint64_t sub_18B25F6D8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>, unsigned int a5@<S0>)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    v9 = a1;
    v10 = sub_18B2C9F24();
    a1 = v9;
    if ((v10 & 1) == 0)
    {
      return sub_18B230B70(v9, a4);
    }
  }

  sub_18B230B70(a1, a4);
  type metadata accessor for UserVoiceConfiguration();
  return a3(a5);
}

uint64_t AXSettings.VoiceOver.settings.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v563 = sub_18B26FD34;
  v564 = &v565;

  os_unfair_lock_lock(v2 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6400);
  v571 = sub_18B22EBD8(&qword_1EA9B6408, &qword_1EA9B6400);
  *&v569 = v3;
  sub_18B22C7E4(&v569, v567);
  v4 = MEMORY[0x1E69E7CC8];
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v4;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v553 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  sub_18B22C84C(*v7, 0xD000000000000021, 0x800000018B2F1AC0, v2, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v9 = v566;

  v11 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);
  v12 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);

  os_unfair_lock_lock(v11 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v11 + 4);
  v13 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6670);
  v571 = sub_18B22EBD8(&qword_1EA9B6678, &qword_1EA9B6670);
  *&v569 = v13;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v9;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v553 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  sub_18B22C868(*v16, 0x6F526563696F7624, 0xEC00000073726F74, v4, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v18 = v566;

  v20 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock__oldDomainRotors);
  v21 = MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v21);

  os_unfair_lock_lock(v20 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v20 + 4);
  v22 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6660);
  v571 = sub_18B22EBD8(&qword_1EA9B6668, &qword_1EA9B6660);
  *&v569 = v22;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v18;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v553 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v556 = 0xD000000000000011;
  sub_18B22C884(v27, 0xD000000000000011, 0x800000018B2F1AF0, v4, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v28 = v566;

  v30 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier);
  v31 = MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v31);

  os_unfair_lock_lock(v30 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v30 + 4);
  v32 = v569;

  v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650);
  v570 = v561;
  v33 = sub_18B22EBD8(&qword_1EA9B6658, &qword_1EA9B6650);
  v571 = v33;
  *&v569 = v32;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v28;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v553 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  sub_18B22C8A0(*v36, 0xD00000000000001CLL, 0x800000018B2F1B10, v4, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v38 = v566;

  v40 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_rotorItems);
  v41 = MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v41);

  os_unfair_lock_lock(v40 + 4);
  sub_18B22F010(&v569);
  v560 = v33;
  os_unfair_lock_unlock(v40 + 4);
  v42 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6640);
  v571 = sub_18B22EBD8(&qword_1EA9B6648, &qword_1EA9B6640);
  *&v569 = v42;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v38;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v43);
  v45 = (&v553 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  sub_18B22C8BC(*v45, 0x7449726F746F7224, 0xEB00000000736D65, v4, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v47 = v566;

  v49 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_largeCursorEnabled);
  v50 = MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v50);

  os_unfair_lock_lock(v49 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v49 + 4);
  v51 = v569;

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v570 = v52;
  v53 = sub_18B22EBD8(&qword_1EA9B6428, &qword_1EA9B6420);
  v571 = v53;
  *&v569 = v51;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v47;
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v54);
  v56 = (&v553 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = *v56;
  v557 = 0xD000000000000013;
  sub_18B22C8D8(v58, 0xD000000000000013, 0x800000018B2F1B30, v4, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v59 = v566;

  v61 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_magicTapDefaultToMediaPlayback);
  v62 = MEMORY[0x1EEE9AC00](v60);
  MEMORY[0x1EEE9AC00](v62);

  os_unfair_lock_lock(v61 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v61 + 4);
  v63 = v569;

  v559 = v53;
  v570 = v52;
  v571 = v53;
  v562 = v52;
  *&v569 = v63;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v63) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v59;
  v64 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v64);
  v66 = (&v553 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66);
  sub_18B22C8D8(*v66, 0xD00000000000001FLL, 0x800000018B2F1B50, v63, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v68 = v566;

  v70 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_contentDescriptionLevel);
  v71 = MEMORY[0x1EEE9AC00](v69);
  MEMORY[0x1EEE9AC00](v71);

  os_unfair_lock_lock(v70 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v70 + 4);
  v72 = v569;

  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6630);
  v570 = v555;
  v554 = sub_18B22EBD8(&qword_1EA9B6638, &qword_1EA9B6630);
  v571 = v554;
  *&v569 = v72;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v63) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v68;
  v73 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v73);
  v75 = (&v553 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v76 + 16))(v75);
  v77 = *v75;
  v558 = 0xD000000000000018;
  sub_18B22C8F4(v77, 0xD000000000000018, 0x800000018B2F1B70, v63, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v78 = v566;

  v80 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useDigitalCrownNavigation);
  v81 = MEMORY[0x1EEE9AC00](v79);
  MEMORY[0x1EEE9AC00](v81);

  os_unfair_lock_lock(v80 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v80 + 4);
  v82 = v569;

  v83 = v559;
  v84 = v562;
  v570 = v562;
  v571 = v559;
  *&v569 = v82;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v82) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v78;
  v85 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v85);
  v87 = (&v553 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v88 + 16))(v87);
  sub_18B22C8D8(*v87, 0xD00000000000001ALL, 0x800000018B2F1B90, v82, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v89 = v566;

  v91 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_imageCaptionsEnabled);
  v92 = MEMORY[0x1EEE9AC00](v90);
  MEMORY[0x1EEE9AC00](v92);

  os_unfair_lock_lock(v91 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v91 + 4);
  v93 = v569;

  v570 = v84;
  v571 = v83;
  *&v569 = v93;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v93) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v89;
  v94 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v94);
  v96 = (&v553 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v97 + 16))(v96);
  sub_18B22C8D8(*v96, 0xD000000000000015, 0x800000018B2F1BB0, v93, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v98 = v566;

  v100 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useTVToggleStyleNavigation);
  v101 = MEMORY[0x1EEE9AC00](v99);
  MEMORY[0x1EEE9AC00](v101);

  os_unfair_lock_lock(v100 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v100 + 4);
  v102 = v569;

  v570 = v84;
  v571 = v83;
  *&v569 = v102;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v102) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v98;
  v103 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v103);
  v105 = (&v553 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v106 + 16))(v105);
  sub_18B22C8D8(*v105, 0xD00000000000001BLL, 0x800000018B2F1BD0, v102, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v107 = v566;

  v109 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_continuousPathKeyboardStartTimeout);
  v110 = MEMORY[0x1EEE9AC00](v108);
  MEMORY[0x1EEE9AC00](v110);

  os_unfair_lock_lock(v109 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v109 + 4);
  v111 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6620);
  v571 = sub_18B22EBD8(&qword_1EA9B6628, &qword_1EA9B6620);
  *&v569 = v111;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v102) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v107;
  v112 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v112);
  v114 = (&v553 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v115 + 16))(v114);
  sub_18B22C910(*v114, 0xD000000000000023, 0x800000018B2F1BF0, v102, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v116 = v566;

  v118 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled);
  v119 = MEMORY[0x1EEE9AC00](v117);
  MEMORY[0x1EEE9AC00](v119);

  os_unfair_lock_lock(v118 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v118 + 4);
  v120 = v569;

  v121 = v562;
  v570 = v562;
  v571 = v83;
  *&v569 = v120;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v120) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v116;
  v122 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v122);
  v124 = (&v553 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v125 + 16))(v124);
  sub_18B22C8D8(*v124, 0xD000000000000019, 0x800000018B2F1C20, v120, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v126 = v566;

  v128 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation);
  v129 = MEMORY[0x1EEE9AC00](v127);
  MEMORY[0x1EEE9AC00](v129);

  os_unfair_lock_lock(v128 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v128 + 4);
  v130 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6610);
  v571 = sub_18B22EBD8(&qword_1EA9B6618, &qword_1EA9B6610);
  *&v569 = v130;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v120) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v126;
  v131 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v131);
  v133 = (&v553 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v134 + 16))(v133);
  sub_18B22C92C(*v133, 0x6E6E417473696C24, 0xEF6E6F697461746FLL, v120, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v135 = v566;

  v137 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds);
  v138 = MEMORY[0x1EEE9AC00](v136);
  MEMORY[0x1EEE9AC00](v138);

  os_unfair_lock_lock(v137 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v137 + 4);
  v139 = v569;

  v570 = v121;
  v571 = v83;
  *&v569 = v139;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v139) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v135;
  v140 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v140);
  v142 = (&v553 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v143 + 16))(v142);
  sub_18B22C8D8(*v142, 0x6972695365737524, 0xEE0073646E756F53, v139, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v144 = v566;

  v146 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle);
  v147 = MEMORY[0x1EEE9AC00](v145);
  MEMORY[0x1EEE9AC00](v147);

  os_unfair_lock_lock(v146 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v146 + 4);
  v148 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6600);
  v571 = sub_18B22EBD8(&qword_1EA9B6608, &qword_1EA9B6600);
  *&v569 = v148;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v139) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v144;
  v149 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v149);
  v151 = (&v553 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v152 + 16))(v151);
  sub_18B22C948(*v151, 0xD000000000000012, 0x800000018B2F1C40, v139, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v153 = v566;

  v155 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent);
  v156 = MEMORY[0x1EEE9AC00](v154);
  MEMORY[0x1EEE9AC00](v156);

  os_unfair_lock_lock(v155 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v155 + 4);
  v157 = v569;

  v570 = v562;
  v571 = v83;
  *&v569 = v157;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v157) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v153;
  v158 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v158);
  v160 = (&v553 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v161 + 16))(v160);
  sub_18B22C8D8(*v160, 0xD000000000000026, 0x800000018B2F1C60, v157, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v162 = v566;

  v164 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode);
  v165 = MEMORY[0x1EEE9AC00](v163);
  MEMORY[0x1EEE9AC00](v165);

  os_unfair_lock_lock(v164 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v164 + 4);
  v166 = v569;

  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65F0);
  v570 = v167;
  v168 = sub_18B22EBD8(&qword_1EA9B65F8, &qword_1EA9B65F0);
  v571 = v168;
  *&v569 = v166;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v157) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v162;
  v169 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v169);
  v171 = (&v553 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v172 + 16))(v171);
  sub_18B22C964(*v171, 0xD000000000000019, 0x800000018B2F1C90, v157, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v173 = v566;

  v175 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode);
  v176 = MEMORY[0x1EEE9AC00](v174);
  MEMORY[0x1EEE9AC00](v176);

  os_unfair_lock_lock(v175 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v175 + 4);
  v177 = v569;

  v570 = v167;
  v571 = v168;
  *&v569 = v177;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v177) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v173;
  v178 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v178);
  v180 = (&v553 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v181 + 16))(v180);
  sub_18B22C964(*v180, v558, 0x800000018B2F1CB0, v177, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v182 = v566;

  v184 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode);
  v185 = MEMORY[0x1EEE9AC00](v183);
  MEMORY[0x1EEE9AC00](v185);

  os_unfair_lock_lock(v184 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v184 + 4);
  v186 = v569;

  v570 = v167;
  v571 = v168;
  *&v569 = v186;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v186) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v182;
  v187 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v187);
  v189 = (&v553 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v190 + 16))(v189);
  sub_18B22C964(*v189, 0xD000000000000019, 0x800000018B2F1CD0, v186, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v191 = v566;

  v193 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);
  v194 = MEMORY[0x1EEE9AC00](v192);
  MEMORY[0x1EEE9AC00](v194);

  os_unfair_lock_lock(v193 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v193 + 4);
  v195 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65E0);
  v571 = sub_18B22EBD8(&qword_1EA9B65E8, &qword_1EA9B65E0);
  *&v569 = v195;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v186) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v191;
  v196 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v196);
  v198 = (&v553 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v199 + 16))(v198);
  sub_18B22C980(*v198, 0xD000000000000024, 0x800000018B2F1CF0, v186, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v200 = v566;

  v202 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier);
  v203 = MEMORY[0x1EEE9AC00](v201);
  MEMORY[0x1EEE9AC00](v203);

  os_unfair_lock_lock(v202 + 4);
  sub_18B22F010(&v569);
  v204 = v561;
  os_unfair_lock_unlock(v202 + 4);
  v205 = v569;

  v206 = v560;
  v570 = v204;
  v571 = v560;
  *&v569 = v205;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v205) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v200;
  v207 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v207);
  v209 = (&v553 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v210 + 16))(v209);
  sub_18B22C8A0(*v209, 0xD000000000000023, 0x800000018B2F1D20, v205, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v211 = v566;

  v213 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier);
  v214 = MEMORY[0x1EEE9AC00](v212);
  MEMORY[0x1EEE9AC00](v214);

  os_unfair_lock_lock(v213 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v213 + 4);
  v215 = v569;

  v570 = v204;
  v571 = v206;
  *&v569 = v215;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v215) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v211;
  v216 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v216);
  v218 = (&v553 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v219 + 16))(v218);
  sub_18B22C8A0(*v218, 0xD000000000000024, 0x800000018B2F1D50, v215, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v220 = v566;

  v222 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier);
  v223 = MEMORY[0x1EEE9AC00](v221);
  MEMORY[0x1EEE9AC00](v223);

  os_unfair_lock_lock(v222 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v222 + 4);
  v224 = v569;

  v570 = v204;
  v571 = v206;
  *&v569 = v224;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v224) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v220;
  v225 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v225);
  v227 = (&v553 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v228 + 16))(v227);
  sub_18B22C8A0(*v227, 0xD000000000000024, 0x800000018B2F1D80, v224, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v229 = v566;

  v231 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled);
  v232 = MEMORY[0x1EEE9AC00](v230);
  MEMORY[0x1EEE9AC00](v232);

  os_unfair_lock_lock(v231 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v231 + 4);
  v233 = v569;

  v570 = v562;
  v571 = v559;
  *&v569 = v233;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v233) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v229;
  v234 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v234);
  v236 = (&v553 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v237 + 16))(v236);
  sub_18B22C8D8(*v236, 0xD000000000000028, 0x800000018B2F1DB0, v233, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v238 = v566;

  v240 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption);
  v241 = MEMORY[0x1EEE9AC00](v239);
  MEMORY[0x1EEE9AC00](v241);

  os_unfair_lock_lock(v240 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v240 + 4);
  v242 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65D0);
  v571 = sub_18B22EBD8(&qword_1EA9B65D8, &qword_1EA9B65D0);
  *&v569 = v242;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v233) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v238;
  v243 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v243);
  v245 = (&v553 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v246 + 16))(v245);
  sub_18B22C99C(*v245, 0xD00000000000001BLL, 0x800000018B2F1DE0, v233, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v247 = v566;

  v249 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback);
  v250 = MEMORY[0x1EEE9AC00](v248);
  MEMORY[0x1EEE9AC00](v250);

  os_unfair_lock_lock(v249 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v249 + 4);
  v251 = v569;

  v252 = v559;
  v253 = v562;
  v570 = v562;
  v571 = v559;
  *&v569 = v251;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v251) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v247;
  v254 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v254);
  v256 = (&v553 - ((v255 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v257 + 16))(v256);
  sub_18B22C8D8(*v256, 0xD000000000000022, 0x800000018B2F1E00, v251, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v258 = v566;

  v260 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback);
  v261 = MEMORY[0x1EEE9AC00](v259);
  MEMORY[0x1EEE9AC00](v261);

  os_unfair_lock_lock(v260 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v260 + 4);
  v262 = v569;

  v570 = v253;
  v571 = v252;
  *&v569 = v262;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v262) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v258;
  v263 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v263);
  v265 = (&v553 - ((v264 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v266 + 16))(v265);
  sub_18B22C8D8(*v265, 0xD000000000000027, 0x800000018B2F1E30, v262, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v267 = v566;

  v269 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback);
  v270 = MEMORY[0x1EEE9AC00](v268);
  MEMORY[0x1EEE9AC00](v270);

  os_unfair_lock_lock(v269 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v269 + 4);
  v271 = v569;

  v570 = v253;
  v571 = v252;
  *&v569 = v271;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v271) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v267;
  v272 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v272);
  v274 = (&v553 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v275 + 16))(v274);
  sub_18B22C8D8(*v274, 0xD000000000000030, 0x800000018B2F1E60, v271, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v276 = v566;

  v278 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText);
  v279 = MEMORY[0x1EEE9AC00](v277);
  MEMORY[0x1EEE9AC00](v279);

  os_unfair_lock_lock(v278 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v278 + 4);
  v280 = v569;

  v570 = v253;
  v571 = v252;
  *&v569 = v280;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v280) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v276;
  v281 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v281);
  v283 = (&v553 - ((v282 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v284 + 16))(v283);
  sub_18B22C8D8(*v283, 0xD000000000000022, 0x800000018B2F1EA0, v280, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v285 = v566;

  v287 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions);
  v288 = MEMORY[0x1EEE9AC00](v286);
  MEMORY[0x1EEE9AC00](v288);

  os_unfair_lock_lock(v287 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v287 + 4);
  v289 = v569;

  v570 = v253;
  v571 = v252;
  *&v569 = v289;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v289) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v285;
  v290 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v290);
  v292 = (&v553 - ((v291 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v293 + 16))(v292);
  sub_18B22C8D8(*v292, 0xD000000000000022, 0x800000018B2F1ED0, v289, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v294 = v566;

  v296 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields);
  v297 = MEMORY[0x1EEE9AC00](v295);
  MEMORY[0x1EEE9AC00](v297);

  os_unfair_lock_lock(v296 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v296 + 4);
  v298 = v569;

  v570 = v253;
  v571 = v252;
  *&v569 = v298;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v298) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v294;
  v299 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v299);
  v301 = (&v553 - ((v300 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v302 + 16))(v301);
  sub_18B22C8D8(*v301, 0xD000000000000028, 0x800000018B2F1F00, v298, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v303 = v566;

  v305 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle);
  v306 = MEMORY[0x1EEE9AC00](v304);
  MEMORY[0x1EEE9AC00](v306);

  os_unfair_lock_lock(v305 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v305 + 4);
  v307 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65C0);
  v571 = sub_18B22EBD8(&qword_1EA9B65C8, &qword_1EA9B65C0);
  *&v569 = v307;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v298) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v303;
  v308 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v308);
  v310 = (&v553 - ((v309 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v311 + 16))(v310);
  sub_18B22C9B8(*v310, 0xD00000000000001FLL, 0x800000018B2F1F30, v298, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v312 = v566;

  v314 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille);
  v315 = MEMORY[0x1EEE9AC00](v313);
  MEMORY[0x1EEE9AC00](v315);

  os_unfair_lock_lock(v314 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v314 + 4);
  v316 = v569;

  v570 = v561;
  v571 = v560;
  *&v569 = v316;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v316) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v312;
  v317 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v317);
  v319 = (&v553 - ((v318 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v320 + 16))(v319);
  sub_18B22C8A0(*v319, 0xD00000000000002ELL, 0x800000018B2F1F50, v316, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v321 = v566;

  v323 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled);
  v324 = MEMORY[0x1EEE9AC00](v322);
  MEMORY[0x1EEE9AC00](v324);

  os_unfair_lock_lock(v323 + 4);
  sub_18B23602C(&v569);
  v325 = v562;
  os_unfair_lock_unlock(v323 + 4);
  v326 = v569;

  v570 = v325;
  v571 = v252;
  *&v569 = v326;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v326) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v321;
  v327 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v327);
  v329 = (&v553 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v330 + 16))(v329);
  sub_18B22C8D8(*v329, 0xD00000000000001CLL, 0x800000018B2F1F80, v326, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v331 = v566;

  v333 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled);
  v334 = MEMORY[0x1EEE9AC00](v332);
  MEMORY[0x1EEE9AC00](v334);

  os_unfair_lock_lock(v333 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v333 + 4);
  v335 = v569;

  v570 = v325;
  v571 = v252;
  *&v569 = v335;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v335) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v331;
  v336 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v336);
  v338 = (&v553 - ((v337 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v339 + 16))(v338);
  sub_18B22C8D8(*v338, 0xD000000000000021, 0x800000018B2F1FA0, v335, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v340 = v566;

  v342 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand);
  v343 = MEMORY[0x1EEE9AC00](v341);
  MEMORY[0x1EEE9AC00](v343);

  os_unfair_lock_lock(v342 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v342 + 4);
  v344 = v569;

  v570 = v325;
  v571 = v252;
  *&v569 = v344;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v344) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v340;
  v345 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v345);
  v347 = (&v553 - ((v346 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v348 + 16))(v347);
  sub_18B22C8D8(*v347, 0xD00000000000001ELL, 0x800000018B2F1FD0, v344, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v349 = v566;

  v351 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled);
  v352 = MEMORY[0x1EEE9AC00](v350);
  MEMORY[0x1EEE9AC00](v352);

  os_unfair_lock_lock(v351 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v351 + 4);
  v353 = v569;

  v570 = v325;
  v571 = v252;
  *&v569 = v353;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v353) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v349;
  v354 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v354);
  v356 = (&v553 - ((v355 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v357 + 16))(v356);
  sub_18B22C8D8(*v356, 0xD000000000000019, 0x800000018B2F1FF0, v353, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v358 = v566;

  v360 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart);
  v361 = MEMORY[0x1EEE9AC00](v359);
  MEMORY[0x1EEE9AC00](v361);

  os_unfair_lock_lock(v360 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v360 + 4);
  v362 = v569;

  v570 = v325;
  v571 = v252;
  *&v569 = v362;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v362) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v358;
  v363 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v363);
  v365 = (&v553 - ((v364 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v366 + 16))(v365);
  sub_18B22C8D8(*v365, 0xD000000000000026, 0x800000018B2F2010, v362, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v367 = v566;

  v369 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled);
  v370 = MEMORY[0x1EEE9AC00](v368);
  MEMORY[0x1EEE9AC00](v370);

  os_unfair_lock_lock(v369 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v369 + 4);
  v371 = v569;

  v570 = v325;
  v571 = v252;
  *&v569 = v371;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v371) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v367;
  v372 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v372);
  v374 = (&v553 - ((v373 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v375 + 16))(v374);
  sub_18B22C8D8(*v374, 0xD00000000000001ELL, 0x800000018B2F2040, v371, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v376 = v566;

  v378 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled);
  v379 = MEMORY[0x1EEE9AC00](v377);
  MEMORY[0x1EEE9AC00](v379);

  os_unfair_lock_lock(v378 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v378 + 4);
  v380 = v569;

  v570 = v325;
  v571 = v252;
  *&v569 = v380;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v380) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v376;
  v381 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v381);
  v383 = (&v553 - ((v382 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v384 + 16))(v383);
  sub_18B22C8D8(*v383, v558, 0x800000018B2F2060, v380, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v385 = v566;

  v387 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType);
  v388 = MEMORY[0x1EEE9AC00](v386);
  MEMORY[0x1EEE9AC00](v388);

  os_unfair_lock_lock(v387 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v387 + 4);
  v389 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65B0);
  v571 = sub_18B22EBD8(&qword_1EA9B65B8, &qword_1EA9B65B0);
  *&v569 = v389;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v380) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v385;
  v390 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v390);
  v392 = (&v553 - ((v391 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v393 + 16))(v392);
  sub_18B22C9D4(*v392, 0xD00000000000001ELL, 0x800000018B2F2080, v380, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v394 = v566;

  v396 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection);
  v397 = MEMORY[0x1EEE9AC00](v395);
  MEMORY[0x1EEE9AC00](v397);

  os_unfair_lock_lock(v396 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v396 + 4);
  v398 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65A0);
  v571 = sub_18B22EBD8(&qword_1EA9B65A8, &qword_1EA9B65A0);
  *&v569 = v398;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v380) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v394;
  v399 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v399);
  v401 = (&v553 - ((v400 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v402 + 16))(v401);
  sub_18B22C9F0(*v401, 0xD000000000000023, 0x800000018B2F20A0, v380, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v403 = v566;

  v405 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled);
  v406 = MEMORY[0x1EEE9AC00](v404);
  MEMORY[0x1EEE9AC00](v406);

  os_unfair_lock_lock(v405 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v405 + 4);
  v407 = v569;

  v408 = v562;
  v570 = v562;
  v571 = v252;
  *&v569 = v407;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v407) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v403;
  v409 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v409);
  v411 = (&v553 - ((v410 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v412 + 16))(v411);
  sub_18B22C8D8(*v411, 0xD000000000000025, 0x800000018B2F20D0, v407, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v413 = v566;

  v415 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled);
  v416 = MEMORY[0x1EEE9AC00](v414);
  MEMORY[0x1EEE9AC00](v416);

  os_unfair_lock_lock(v415 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v415 + 4);
  v417 = v569;

  v570 = v408;
  v571 = v252;
  *&v569 = v417;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v417) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v413;
  v418 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v418);
  v420 = (&v553 - ((v419 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v421 + 16))(v420);
  sub_18B22C8D8(*v420, 0xD00000000000001ALL, 0x800000018B2F2100, v417, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v422 = v566;

  v424 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled);
  v425 = MEMORY[0x1EEE9AC00](v423);
  MEMORY[0x1EEE9AC00](v425);

  os_unfair_lock_lock(v424 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v424 + 4);
  v426 = v569;

  v570 = v408;
  v571 = v252;
  *&v569 = v426;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v426) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v422;
  v427 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v427);
  v429 = (&v553 - ((v428 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v430 + 16))(v429);
  sub_18B22C8D8(*v429, 0xD000000000000027, 0x800000018B2F2120, v426, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v431 = v566;

  v433 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath);
  v434 = MEMORY[0x1EEE9AC00](v432);
  MEMORY[0x1EEE9AC00](v434);

  os_unfair_lock_lock(v433 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v433 + 4);
  v435 = v569;

  v570 = v408;
  v571 = v252;
  *&v569 = v435;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v435) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v431;
  v436 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v436);
  v438 = (&v553 - ((v437 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v439 + 16))(v438);
  sub_18B22C8D8(*v438, 0xD00000000000001FLL, 0x800000018B2F2150, v435, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v440 = v566;

  v442 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource);
  v443 = MEMORY[0x1EEE9AC00](v441);
  MEMORY[0x1EEE9AC00](v443);

  os_unfair_lock_lock(v442 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v442 + 4);
  v444 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6590);
  v571 = sub_18B22EBD8(&qword_1EA9B6598, &qword_1EA9B6590);
  *&v569 = v444;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v435) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v440;
  v445 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v445);
  v447 = (&v553 - ((v446 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v448 + 16))(v447);
  sub_18B22CA0C(*v447, 0xD00000000000001CLL, 0x800000018B2F2170, v435, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v449 = v566;

  v451 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced);
  v452 = MEMORY[0x1EEE9AC00](v450);
  MEMORY[0x1EEE9AC00](v452);

  os_unfair_lock_lock(v451 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v451 + 4);
  v453 = v569;

  v454 = v562;
  v570 = v562;
  v571 = v252;
  *&v569 = v453;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v453) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v449;
  v455 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v455);
  v457 = (&v553 - ((v456 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v458 + 16))(v457);
  sub_18B22C8D8(*v457, 0xD000000000000023, 0x800000018B2F2190, v453, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v459 = v566;

  v461 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton);
  v462 = MEMORY[0x1EEE9AC00](v460);
  MEMORY[0x1EEE9AC00](v462);

  os_unfair_lock_lock(v461 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v461 + 4);
  v463 = v569;

  v570 = v454;
  v571 = v252;
  *&v569 = v463;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v463) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v459;
  v464 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v464);
  v466 = (&v553 - ((v465 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v467 + 16))(v466);
  sub_18B22C8D8(*v466, 0xD000000000000019, 0x800000018B2F21C0, v463, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v468 = v566;

  v470 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement);
  v471 = MEMORY[0x1EEE9AC00](v469);
  MEMORY[0x1EEE9AC00](v471);

  os_unfair_lock_lock(v470 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v470 + 4);
  v472 = v569;

  v570 = v555;
  v571 = v554;
  *&v569 = v472;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v472) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v468;
  v473 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v473);
  v475 = (&v553 - ((v474 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v476 + 16))(v475);
  sub_18B22C8F4(*v475, 0xD000000000000021, 0x800000018B2F21E0, v472, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v477 = v566;

  v479 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor);
  v480 = MEMORY[0x1EEE9AC00](v478);
  MEMORY[0x1EEE9AC00](v480);

  os_unfair_lock_lock(v479 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v479 + 4);
  v481 = v569;

  v570 = v454;
  v571 = v252;
  *&v569 = v481;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v481) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v477;
  v482 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v482);
  v484 = (&v553 - ((v483 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v485 + 16))(v484);
  sub_18B22C8D8(*v484, 0xD00000000000001BLL, 0x800000018B2F2210, v481, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v486 = v566;

  v488 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup);
  v489 = MEMORY[0x1EEE9AC00](v487);
  MEMORY[0x1EEE9AC00](v489);

  os_unfair_lock_lock(v488 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v488 + 4);
  v490 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6580);
  v571 = sub_18B22EBD8(&qword_1EA9B6588, &qword_1EA9B6580);
  *&v569 = v490;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v481) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v486;
  v491 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v491);
  v493 = (&v553 - ((v492 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v494 + 16))(v493);
  sub_18B22CA28(*v493, v558, 0x800000018B2F2230, v481, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v495 = v566;

  v497 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities);
  v498 = MEMORY[0x1EEE9AC00](v496);
  MEMORY[0x1EEE9AC00](v498);

  os_unfair_lock_lock(v497 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v497 + 4);
  v499 = v569;

  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6570);
  v571 = sub_18B22EBD8(&qword_1EA9B6578, &qword_1EA9B6570);
  *&v569 = v499;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v481) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v495;
  v500 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v500);
  v502 = (&v553 - ((v501 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v503 + 16))(v502);
  sub_18B22CA44(*v502, 0x7469766974636124, 0xEB00000000736569, v481, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v504 = v566;

  v506 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId);
  v507 = MEMORY[0x1EEE9AC00](v505);
  MEMORY[0x1EEE9AC00](v507);

  os_unfair_lock_lock(v506 + 4);
  sub_18B22F010(&v569);
  v508 = v560;
  os_unfair_lock_unlock(v506 + 4);
  v509 = v569;

  v570 = v561;
  v571 = v508;
  *&v569 = v509;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v509) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v504;
  v510 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v510);
  v512 = (&v553 - ((v511 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v513 + 16))(v512);
  sub_18B22C8A0(*v512, v557, 0x800000018B2F2250, v509, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v514 = v566;

  v516 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled);
  v517 = MEMORY[0x1EEE9AC00](v515);
  MEMORY[0x1EEE9AC00](v517);

  os_unfair_lock_lock(v516 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v516 + 4);
  v518 = v569;

  v519 = v562;
  v570 = v562;
  v571 = v252;
  *&v569 = v518;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v518) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v514;
  v520 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v520);
  v522 = (&v553 - ((v521 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v523 + 16))(v522);
  sub_18B22C8D8(*v522, 0xD000000000000019, 0x800000018B2F2270, v518, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v524 = v566;

  v526 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled);
  v527 = MEMORY[0x1EEE9AC00](v525);
  MEMORY[0x1EEE9AC00](v527);

  os_unfair_lock_lock(v526 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v526 + 4);
  v528 = v569;

  v570 = v519;
  v571 = v252;
  *&v569 = v528;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v528) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v524;
  v529 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v529);
  v531 = (&v553 - ((v530 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v532 + 16))(v531);
  sub_18B22C8D8(*v531, v557, 0x800000018B2F2290, v528, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v533 = v566;

  v535 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage);
  v536 = MEMORY[0x1EEE9AC00](v534);
  MEMORY[0x1EEE9AC00](v536);

  os_unfair_lock_lock(v535 + 4);
  sub_18B22F010(&v569);
  os_unfair_lock_unlock(v535 + 4);
  v537 = v569;

  v570 = v561;
  v571 = v508;
  *&v569 = v537;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v537) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v533;
  v538 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v538);
  v540 = (&v553 - ((v539 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v541 + 16))(v540);
  sub_18B22C8A0(*v540, v556, 0x800000018B2F22B0, v537, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v542 = v566;

  v544 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled);
  v545 = MEMORY[0x1EEE9AC00](v543);
  MEMORY[0x1EEE9AC00](v545);

  os_unfair_lock_lock(v544 + 4);
  sub_18B23602C(&v569);
  os_unfair_lock_unlock(v544 + 4);
  v546 = v569;

  v570 = v562;
  v571 = v252;
  *&v569 = v546;
  sub_18B22C7E4(&v569, v567);
  LOBYTE(v546) = swift_isUniquelyReferenced_nonNull_native();
  v566 = v542;
  v547 = __swift_mutable_project_boxed_opaque_existential_1(v567, v568);
  MEMORY[0x1EEE9AC00](v547);
  v549 = (&v553 - ((v548 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v550 + 16))(v549);
  sub_18B22C8D8(*v549, 0x70556B6165707324, 0xEF64656C62616E45, v546, &v566);
  __swift_destroy_boxed_opaque_existential_1Tm(v567);
  v551 = v566;

  return v551;
}