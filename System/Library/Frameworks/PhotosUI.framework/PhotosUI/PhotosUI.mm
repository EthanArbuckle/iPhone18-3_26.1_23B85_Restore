uint64_t sub_1D2129EB0(uint64_t *a1)
{
  v1 = *a1;
  sub_1D2129EDC();
  return OUTLINED_FUNCTION_1(v2, v3);
}

uint64_t sub_1D2129F28(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_1D2129F50(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D2129F58(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_1D2129F80(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D2129FB4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1D212A004(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1D212A034(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_1D212A05C(v2, v3);
  *v1 = result;
  return result;
}

void *sub_1D212A0E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D212A100@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D212AB30(a1);
  *a2 = result;
  return result;
}

BOOL sub_1D212A190(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

char *sub_1D212A1DC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[8 * a2] <= __dst)
  {
    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

uint64_t sub_1D212A208()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D212A248()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration.Update.edgesWithoutContentMargins.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D212A27C()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration.Update.prompt.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D212A2D0()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration.Update.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D212A324()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration.Update._sharedAlbumSheetConfiguration.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D212A350()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration.edgesWithoutContentMargins.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D212A39C()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._disabledFeatures.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D212A3F0()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._searchText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D212A444()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._disabledPrivateCapabilities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D212A490()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._containerIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D212A4E4()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration.prompt.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D212A538()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D212A58C()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._primaryButtonType.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D212A5D8()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._secondaryButtonType.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D212A624()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._allowsDownscaling.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D212A678()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._allowsEncodingPolicyModification.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D212A77C()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._excludedCollections.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D212A7C8()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._desiredCollectionSuggestions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D212A814()
{
  OUTLINED_FUNCTION_8();
  result = PHPickerConfiguration._sharedAlbumSheetConfiguration.getter();
  *v0 = result;
  return result;
}

id sub_1D212A840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = PHPickerViewController.delegate.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

id sub_1D212A898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = PHPickerViewController._privateDelegate.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:errorStorage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_2(a1, a2, a3, a4, a5);
  sub_1D215323C();
  if (v6)
  {
    sub_1D212ACB4();
    v10 = *(*a3 + 16);
    sub_1D212AD00(v10);
    v11 = *a3;
    *(v11 + 16) = v10 + 1;
    *(v11 + 8 * v10 + 32) = v6;
    *a3 = v11;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v12, 1, a5);
}

uint64_t KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:errorStorage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_2(a1, a2, a3, a4, a5);
  result = sub_1D215322C();
  if (v6)
  {
    sub_1D212ACB4();
    v11 = *(*a3 + 16);
    sub_1D212AD00(v11);
    v12 = *a3;
    *(v12 + 16) = v11 + 1;
    *(v12 + 8 * v11 + 32) = v6;
    *a3 = v12;

    return __swift_storeEnumTagSinglePayload(a6, 1, 1, a5);
  }

  return result;
}

uint64_t sub_1D212AB30(uint64_t a1)
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

uint64_t sub_1D212AB84(uint64_t a1)
{
  sub_1D215325C();
  MEMORY[0x1D38971B0](a1);
  return sub_1D215328C();
}

uint64_t sub_1D212ABCC(uint64_t a1, uint64_t a2)
{
  sub_1D215325C();
  MEMORY[0x1D38971B0](a2);
  return sub_1D215328C();
}

uint64_t sub_1D212AC10()
{
  v1 = OUTLINED_FUNCTION_3();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1D212AC4C@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_20();
  *a1 = result;
  return result;
}

uint64_t sub_1D212AC74(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_1D213412C(v2, v3);
  *v1 = result;
  return result;
}

void *sub_1D212ACB4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1D21361C4(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1D212AD00(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1D21361C4((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void sub_1D212AE58(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1D212AF34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static PHPickerMode.compact.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EC6CEE70;
  return result;
}

uint64_t static PHPickerMode.compact.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EC6CEE70 = v1;
  return result;
}

uint64_t (*static PHPickerMode.compact.modify())()
{
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  return j__swift_endAccess;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1D212B76C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EC6CEE70;
  return result;
}

uint64_t sub_1D212B7B8(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EC6CEE70 = v1;
  return result;
}

uint64_t PHPickerMode.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_36();
  MEMORY[0x1D38971B0](v1);
  return sub_1D215328C();
}

uint64_t sub_1D212B88C()
{
  v1 = *v0;
  sub_1D215325C();
  MEMORY[0x1D38971B0](v1);
  return sub_1D215328C();
}

id static PHPickerFilter.playbackStyle(_:)()
{
  OUTLINED_FUNCTION_50();
  result = [objc_opt_self() playbackStyleFilter_];
  *v1 = result;
  return result;
}

void sub_1D212BC30(uint64_t a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D21531EC();
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      sub_1D21531CC();
      v10 = *(v14 + 16);
      sub_1D21531FC();
      sub_1D215320C();
      sub_1D21531DC();
      --v5;
    }

    while (v5);
  }

  v11 = objc_opt_self();
  sub_1D2133F88(0, &unk_1EC6CEF58, off_1E83F6AB8);
  v12 = sub_1D215310C();

  v13 = [v11 *a2];

  *a3 = v13;
}

id static PHPickerFilter.not(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() notFilterOfSubfilter_];
  *a2 = result;
  return result;
}

void static PHPickerFilter._itemIdentifiers(_:)()
{
  OUTLINED_FUNCTION_50();
  v1 = objc_opt_self();
  v2 = sub_1D215310C();
  v3 = [v1 _itemIdentifiersFilter_];

  *v0 = v3;
}

uint64_t static PHPickerFilter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D2133F88(0, &qword_1EC6CEC50, 0x1E69E58C0);
  OUTLINED_FUNCTION_14();
  return sub_1D215313C() & 1;
}

uint64_t sub_1D212BF88()
{
  v1 = *v0;
  OUTLINED_FUNCTION_36();
  MEMORY[0x1D38971B0](v1);
  return sub_1D215328C();
}

uint64_t sub_1D212BFC8()
{
  v1 = *v0;
  sub_1D215325C();
  MEMORY[0x1D38971B0](v1);
  return sub_1D215328C();
}

uint64_t PHPickerConfiguration.Update.selectionLimit.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PHPickerConfiguration.Update.selectionLimit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PHPickerConfiguration.Update.edgesWithoutContentMargins.getter()
{
  if (*(v0 + 72))
  {
    return 0;
  }

  else
  {
    return *(v0 + 64);
  }
}

uint64_t PHPickerConfiguration.Update.edgesWithoutContentMargins.setter(uint64_t result, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  *(v2 + 64) = v3;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t *(*PHPickerConfiguration.Update.edgesWithoutContentMargins.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  if (v3)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_1D212C100;
}

uint64_t *sub_1D212C100(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  v3 = *(result + 8);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t PHPickerConfiguration.Update.prompt.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  if (v2 != 1)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
  }

  sub_1D21328E0(v1, v2);
  return OUTLINED_FUNCTION_14();
}

uint64_t PHPickerConfiguration.Update.prompt.setter()
{
  OUTLINED_FUNCTION_21();
  result = sub_1D21328F4(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t PHPickerConfiguration.Update.prompt.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_11(v2) + 16) = v0;
  v3 = *(v0 + 80);
  v1[3] = v3;
  v4 = *(v0 + 88);
  v1[4] = v4;
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  *v1 = v5;
  v1[1] = v6;
  sub_1D21328E0(v3, v4);
  return OUTLINED_FUNCTION_48();
}

void sub_1D212C200(uint64_t **a1)
{
  OUTLINED_FUNCTION_51(a1);
  if (v5)
  {

    v6 = OUTLINED_FUNCTION_27();
    sub_1D21328F4(v6, v7);
    *(v4 + 80) = v3;
    *(v4 + 88) = v2;
    v8 = v1[1];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_27();
    sub_1D21328F4(v9, v10);
    *(v4 + 80) = v3;
    *(v4 + 88) = v2;
  }

  free(v1);
}

uint64_t PHPickerConfiguration.Update.title.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  if (v2 != 1)
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
  }

  sub_1D21328E0(v1, v2);
  return OUTLINED_FUNCTION_14();
}

uint64_t sub_1D212C2A8(uint64_t *a1)
{
  OUTLINED_FUNCTION_52(a1);
  v2 = OUTLINED_FUNCTION_18();
  return v1(v2);
}

uint64_t PHPickerConfiguration.Update.title.setter()
{
  OUTLINED_FUNCTION_21();
  result = sub_1D21328F4(*(v1 + 96), *(v1 + 104));
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t PHPickerConfiguration.Update.title.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_11(v2) + 16) = v0;
  v3 = *(v0 + 96);
  v1[3] = v3;
  v4 = *(v0 + 104);
  v1[4] = v4;
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  *v1 = v5;
  v1[1] = v6;
  sub_1D21328E0(v3, v4);
  return OUTLINED_FUNCTION_48();
}

void sub_1D212C388(uint64_t **a1)
{
  OUTLINED_FUNCTION_51(a1);
  if (v5)
  {

    v6 = OUTLINED_FUNCTION_27();
    sub_1D21328F4(v6, v7);
    *(v4 + 96) = v3;
    *(v4 + 104) = v2;
    v8 = v1[1];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_27();
    sub_1D21328F4(v9, v10);
    *(v4 + 96) = v3;
    *(v4 + 104) = v2;
  }

  free(v1);
}

uint64_t PHPickerConfiguration.Update._primaryButtonType.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t PHPickerConfiguration.Update._primaryButtonType.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t PHPickerConfiguration.Update._secondaryButtonType.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t PHPickerConfiguration.Update._secondaryButtonType.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

double PHPickerConfiguration.Update.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  result = 0.0;
  *(a1 + 80) = xmmword_1D2157BF0;
  *(a1 + 96) = xmmword_1D2157BF0;
  *(a1 + 112) = 1;
  return result;
}

uint64_t PHPickerConfiguration.Update._sharedAlbumSheetConfiguration.getter()
{
  v1 = *(v0 + 112);
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 112);
  }

  sub_1D2132908(v1);
  return v2;
}

void sub_1D212C4D4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PHPickerConfiguration.Update._sharedAlbumSheetConfiguration.setter(v1);
}

void (*PHPickerConfiguration.Update._sharedAlbumSheetConfiguration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 112);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a1 = v4;
  sub_1D2132908(v3);
  return sub_1D212C584;
}

void sub_1D212C584(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    sub_1D2132918(v2);
    *(v3 + 112) = v4;
  }

  else
  {
    sub_1D2132918(*(a1 + 16));
    *(v3 + 112) = v4;
  }
}

BOOL static PHPickerConfiguration.Update.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v30 = *(a1 + 112);
  v17 = *(a2 + 88);
  v19 = *(a2 + 96);
  v18 = *(a2 + 104);
  v20 = *(a2 + 112);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v21 = *(a2 + 8);
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 16))
    {
      v22 = *(a2 + 24);
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v7 == *(a2 + 32))
    {
      v23 = *(a2 + 40);
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v9 == *(a2 + 48))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v12)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v11 == *(a2 + 64))
    {
      v25 = *(a2 + 72);
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (v14 == 1)
  {
    if (v17 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v17 == 1)
    {
      return 0;
    }

    if (v14)
    {
      if (!v17)
      {
        return 0;
      }

      v27 = v13 == *(a2 + 80) && v14 == v17;
      if (!v27 && (sub_1D215324C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v17)
    {
      return 0;
    }
  }

  if (v16 == 1)
  {
    if (v18 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v18 == 1)
    {
      return 0;
    }

    if (v16)
    {
      if (!v18)
      {
        return 0;
      }

      v28 = v15 == v19 && v16 == v18;
      if (!v28 && (sub_1D215324C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }
  }

  if (v30 == 1)
  {
    if (v20 == 1)
    {
      return 1;
    }
  }

  else if (v20 != 1)
  {
    if (v30)
    {
      if (!v20)
      {
        return 0;
      }

      sub_1D2133F88(0, &qword_1EC6CEF68, off_1E83F6B68);
      sub_1D2132908(v20);
      sub_1D2132908(v30);
      OUTLINED_FUNCTION_30();
      v29 = sub_1D215313C();
      sub_1D2132918(v20);
      sub_1D2132918(v30);
      return (v29 & 1) != 0;
    }

    if (!v20)
    {
      sub_1D2132908(0);
      sub_1D2132908(0);
      return 1;
    }
  }

  return 0;
}

void PHPickerConfiguration.Update.hash(into:)()
{
  v1 = *(v0 + 24);
  v15 = v0[2];
  v16 = v0[4];
  v2 = v0[6];
  v17 = *(v0 + 40);
  v18 = *(v0 + 56);
  v3 = v0[8];
  v4 = *(v0 + 72);
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[14];
  if (*(v0 + 8) == 1)
  {
    sub_1D215327C();
    if (!v1)
    {
LABEL_3:
      sub_1D215327C();
      MEMORY[0x1D38971B0](v15);
      goto LABEL_6;
    }
  }

  else
  {
    v10 = v0[13];
    v11 = v0[14];
    v12 = *v0;
    sub_1D215327C();
    v13 = v12;
    v9 = v11;
    v7 = v10;
    MEMORY[0x1D38971B0](v13);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  sub_1D215327C();
LABEL_6:
  sub_1D215327C();
  if (!v17)
  {
    MEMORY[0x1D38971B0](v16);
  }

  if (!v18)
  {
    sub_1D215327C();
    MEMORY[0x1D38971B0](v2);
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_1D215327C();
    goto LABEL_13;
  }

  sub_1D215327C();
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1D215327C();
  MEMORY[0x1D38971B0](v3);
LABEL_13:
  if (v5 == 1 || (sub_1D215327C(), !v5))
  {
    sub_1D215327C();
  }

  else
  {
    sub_1D215327C();
    sub_1D21530EC();
  }

  if (v7 == 1 || (sub_1D215327C(), !v7))
  {
    sub_1D215327C();
  }

  else
  {
    sub_1D215327C();
    sub_1D21530EC();
  }

  if (v9 == 1 || (sub_1D215327C(), !v9))
  {
    sub_1D215327C();
  }

  else
  {
    sub_1D215327C();
    v14 = v9;
    sub_1D215314C();

    sub_1D2132918(v9);
  }
}

uint64_t PHPickerConfiguration.Update.hashValue.getter()
{
  OUTLINED_FUNCTION_36();
  PHPickerConfiguration.Update.hash(into:)();
  return sub_1D215328C();
}

uint64_t sub_1D212CAF8()
{
  sub_1D215325C();
  PHPickerConfiguration.Update.hash(into:)();
  return sub_1D215328C();
}

id PHPickerConfiguration.filter.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

void PHPickerConfiguration.filter.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
}

uint64_t PHPickerConfiguration.preselectedAssetIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

void *(*PHPickerConfiguration.edgesWithoutContentMargins.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 288);
  a1[1] = v1;
  return sub_1D212CCF8;
}

uint64_t PHPickerConfiguration.disabledCapabilities.modify()
{
  v2 = OUTLINED_FUNCTION_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4(v3);
  sub_1D2133FC8(v0 + 128, v1, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v1[3])
  {
    sub_1D213409C(v1, &qword_1EC6CEF70, &qword_1D2157C20);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEF78, &qword_1D2157C28);
  if ((OUTLINED_FUNCTION_19() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = v1[6];
LABEL_6:
  v1[5] = v4;
  return OUTLINED_FUNCTION_17();
}

void PHPickerConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1D2157C00;
  *(a1 + 24) = 1;
  OUTLINED_FUNCTION_45(MEMORY[0x1E69E7CC0]);
  *(a1 + 88) = 514;
  bzero((a1 + 96), 0x161uLL);
  *(a1 + 449) = 1;
  *(a1 + 80) = 0;
  OUTLINED_FUNCTION_2_0((a1 + 456));
  *(a1 + 568) = 0;
}

void PHPickerConfiguration.init(photoLibrary:)()
{
  OUTLINED_FUNCTION_50();
  *v2 = 0;
  *(v1 + 8) = xmmword_1D2157C00;
  *(v1 + 24) = 1;
  OUTLINED_FUNCTION_44(MEMORY[0x1E69E7CC0]);
  *(v1 + 88) = 514;
  bzero((v1 + 96), 0x161uLL);
  *(v1 + 449) = 1;
  OUTLINED_FUNCTION_2_0((v1 + 456));
  *(v1 + 568) = 0;
  *(v1 + 80) = v0;
}

uint64_t PHPickerConfiguration.photoLibrary.getter()
{
  v1 = *(v0 + 80);
  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v1;
  }

  return v2;
}

uint64_t PHPickerConfiguration._suggestionGroup.getter@<X0>(void *a1@<X8>)
{
  sub_1D2133FC8(v1 + 376, v4, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v5)
  {
    result = sub_1D213409C(v4, &qword_1EC6CEF70, &qword_1D2157C20);
    goto LABEL_5;
  }

  result = OUTLINED_FUNCTION_43();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1D212CF7C@<X0>(void *a1@<X8>)
{
  result = PHPickerConfiguration._suggestionGroup.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D212CFB8(id *a1)
{
  v3 = *a1;
  v1 = v3;
  return PHPickerConfiguration._suggestionGroup.setter(&v3);
}

uint64_t PHPickerConfiguration._suggestionGroup.setter(uint64_t *a1)
{
  if (*a1)
  {
    v3 = *a1;
    sub_1D2132A2C();
    sub_1D21531AC();
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
  }

  return sub_1D21329BC(v4, v1 + 376);
}

uint64_t PHPickerConfiguration._suggestionGroup.modify()
{
  v2 = OUTLINED_FUNCTION_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4(v3);
  sub_1D2133FC8(v0 + 376, v1, &qword_1EC6CEF70, &qword_1D2157C20);
  if (*(v1 + 24))
  {
    if ((OUTLINED_FUNCTION_42() & 1) == 0)
    {
      *(v1 + 40) = 0;
    }
  }

  else
  {
    sub_1D213409C(v1, &qword_1EC6CEF70, &qword_1D2157C20);
    *(v1 + 40) = 0;
  }

  return OUTLINED_FUNCTION_17();
}

void sub_1D212D100(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    if (v3)
    {
      *(v2 + 48) = v3;
      sub_1D2132A2C();
      v4 = v3;
      sub_1D21531AC();
    }

    else
    {
      OUTLINED_FUNCTION_6();
    }

    sub_1D21329BC(v2, *(v2 + 56) + 376);
  }

  else
  {
    if (v3)
    {
      *(v2 + 48) = v3;
      sub_1D2132A2C();
      sub_1D21531AC();
    }

    else
    {
      OUTLINED_FUNCTION_6();
    }

    sub_1D21329BC(v2, *(v2 + 56) + 376);
  }

  free(v2);
}

uint64_t PHPickerConfiguration._searchText.getter()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);

  return OUTLINED_FUNCTION_14();
}

uint64_t PHPickerConfiguration._searchText.setter()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v1 + 424);

  *(v1 + 416) = v2;
  *(v1 + 424) = v0;
  return result;
}

uint64_t PHPickerConfiguration._searchText.modify()
{
  OUTLINED_FUNCTION_47(*(v0 + 424), *(v0 + 416));

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1D212D27C(uint64_t *a1)
{
  OUTLINED_FUNCTION_46(a1);
  if (v4)
  {

    *(v3 + 416) = v2;
    *(v3 + 424) = v1;
  }

  else
  {

    *(v3 + 416) = v2;
    *(v3 + 424) = v1;
  }

  return result;
}

uint64_t PHPickerConfiguration._disabledPrivateCapabilities.getter()
{
  sub_1D2133FC8(v0 + 168, v3, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEF90, &qword_1D2157C30);
    if (OUTLINED_FUNCTION_15())
    {
      return v2;
    }
  }

  else
  {
    sub_1D213409C(v3, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  return 0;
}

uint64_t PHPickerConfiguration._disabledPrivateCapabilities.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v4 = OUTLINED_FUNCTION_54(&qword_1EC6CEF98);
  OUTLINED_FUNCTION_5(v4, v5, v6, v7, v8, v9, v10, v11, a1);
  sub_1D21531AC();
  return sub_1D21329BC(v14, v1 + 168);
}

uint64_t PHPickerConfiguration._disabledPrivateCapabilities.modify()
{
  v2 = OUTLINED_FUNCTION_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4(v3);
  sub_1D2133FC8(v0 + 168, v1, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v1[3])
  {
    sub_1D213409C(v1, &qword_1EC6CEF70, &qword_1D2157C20);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEF90, &qword_1D2157C30);
  if ((OUTLINED_FUNCTION_19() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = v1[6];
LABEL_6:
  v1[5] = v4;
  return OUTLINED_FUNCTION_17();
}

void sub_1D212D4A8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v3 = OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_53(&qword_1EC6CEF98);
  OUTLINED_FUNCTION_7();
  sub_1D21531AC();
  sub_1D21329BC(v1, v2 + 168);

  free(v1);
}

uint64_t PHPickerConfiguration._containerIdentifier.getter()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);

  return OUTLINED_FUNCTION_14();
}

uint64_t PHPickerConfiguration._containerIdentifier.setter()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v1 + 440);

  *(v1 + 432) = v2;
  *(v1 + 440) = v0;
  return result;
}

uint64_t PHPickerConfiguration._containerIdentifier.modify()
{
  OUTLINED_FUNCTION_47(*(v0 + 440), *(v0 + 432));

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1D212D604(uint64_t *a1)
{
  OUTLINED_FUNCTION_46(a1);
  if (v4)
  {

    *(v3 + 432) = v2;
    *(v3 + 440) = v1;
  }

  else
  {

    *(v3 + 432) = v2;
    *(v3 + 440) = v1;
  }

  return result;
}

uint64_t PHPickerConfiguration.preselectedItemIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t PHPickerConfiguration.prompt.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_14();
}

uint64_t PHPickerConfiguration.prompt.setter()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t PHPickerConfiguration.prompt.modify()
{
  OUTLINED_FUNCTION_47(*(v0 + 104), *(v0 + 96));

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1D212D770(uint64_t *a1)
{
  OUTLINED_FUNCTION_46(a1);
  if (v4)
  {

    *(v3 + 96) = v2;
    *(v3 + 104) = v1;
  }

  else
  {

    *(v3 + 96) = v2;
    *(v3 + 104) = v1;
  }

  return result;
}

uint64_t PHPickerConfiguration.title.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_14();
}

uint64_t sub_1D212D80C(uint64_t *a1)
{
  OUTLINED_FUNCTION_52(a1);
  v2 = OUTLINED_FUNCTION_18();
  return v1(v2);
}

uint64_t PHPickerConfiguration.title.setter()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t PHPickerConfiguration.title.modify()
{
  OUTLINED_FUNCTION_47(*(v0 + 120), *(v0 + 112));

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1D212D8BC(uint64_t *a1)
{
  OUTLINED_FUNCTION_46(a1);
  if (v4)
  {

    *(v3 + 112) = v2;
    *(v3 + 120) = v1;
  }

  else
  {

    *(v3 + 112) = v2;
    *(v3 + 120) = v1;
  }

  return result;
}

uint64_t PHPickerConfiguration._primaryButtonType.getter()
{
  sub_1D2133FC8(v0 + 208, v3, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v4)
  {
    type metadata accessor for _PHPickerPrimaryButtonType(0);
    if (OUTLINED_FUNCTION_15())
    {
      return v2;
    }
  }

  else
  {
    sub_1D213409C(v3, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  return 0;
}

uint64_t PHPickerConfiguration._primaryButtonType.setter(uint64_t a1)
{
  type metadata accessor for _PHPickerPrimaryButtonType(0);
  OUTLINED_FUNCTION_13();
  v4 = sub_1D2132A80(v2, v3);
  OUTLINED_FUNCTION_5(v4, v5, v6, v7, v8, v9, v10, v11, a1);
  sub_1D21531AC();
  return sub_1D21329BC(v14, v1 + 208);
}

uint64_t PHPickerConfiguration._primaryButtonType.modify()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4(v2);
  *(v0 + 40) = PHPickerConfiguration._primaryButtonType.getter();
  return OUTLINED_FUNCTION_48();
}

void sub_1D212DA70(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_29(a1);
  type metadata accessor for _PHPickerPrimaryButtonType(v3);
  OUTLINED_FUNCTION_13();
  sub_1D2132A80(v4, v5);
  OUTLINED_FUNCTION_7();
  sub_1D21531AC();
  sub_1D21329BC(v1, v2 + 208);

  free(v1);
}

uint64_t PHPickerConfiguration._secondaryButtonType.getter()
{
  sub_1D2133FC8(v0 + 248, v3, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v4)
  {
    type metadata accessor for _PHPickerSecondaryButtonType(0);
    if (OUTLINED_FUNCTION_15())
    {
      return v2;
    }
  }

  else
  {
    sub_1D213409C(v3, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  return 0;
}

uint64_t PHPickerConfiguration._secondaryButtonType.setter(uint64_t a1)
{
  type metadata accessor for _PHPickerSecondaryButtonType(0);
  OUTLINED_FUNCTION_12();
  v4 = sub_1D2132A80(v2, v3);
  OUTLINED_FUNCTION_5(v4, v5, v6, v7, v8, v9, v10, v11, a1);
  sub_1D21531AC();
  return sub_1D21329BC(v14, v1 + 248);
}

uint64_t PHPickerConfiguration._secondaryButtonType.modify()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4(v2);
  *(v0 + 40) = PHPickerConfiguration._secondaryButtonType.getter();
  return OUTLINED_FUNCTION_48();
}

void sub_1D212DC34(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_29(a1);
  type metadata accessor for _PHPickerSecondaryButtonType(v3);
  OUTLINED_FUNCTION_12();
  sub_1D2132A80(v4, v5);
  OUTLINED_FUNCTION_7();
  sub_1D21531AC();
  sub_1D21329BC(v1, v2 + 248);

  free(v1);
}

_BYTE *(*PHPickerConfiguration._allowsDownscaling.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 448);
  return sub_1D212DD20;
}

_BYTE *(*PHPickerConfiguration._allowsEncodingPolicyModification.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 449);
  return sub_1D212DD6C;
}

double PHPickerConfiguration._albumsConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_1D2133FC8(v1 + 456, v4, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v5)
  {
    sub_1D213409C(v4, &qword_1EC6CEF70, &qword_1D2157C20);
    goto LABEL_5;
  }

  if ((OUTLINED_FUNCTION_43() & 1) == 0)
  {
LABEL_5:
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t PHPickerConfiguration._albumsConfiguration.setter(__int128 *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = *a1;
    v5 = a1[1];
    sub_1D2132AC8();
    sub_1D21531AC();
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
  }

  return sub_1D21329BC(v6, v1 + 456);
}

uint64_t PHPickerConfiguration._albumsConfiguration.modify()
{
  v2 = __swift_coroFrameAllocStub(0x70uLL);
  *(OUTLINED_FUNCTION_11(v2) + 104) = v0;
  sub_1D2133FC8(v0 + 456, v1, &qword_1EC6CEF70, &qword_1D2157C20);
  if (*(v1 + 24))
  {
    if ((OUTLINED_FUNCTION_42() & 1) == 0)
    {
      *(v1 + 56) = 0u;
      *(v1 + 40) = 0u;
    }
  }

  else
  {
    sub_1D213409C(v1, &qword_1EC6CEF70, &qword_1D2157C20);
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
  }

  return OUTLINED_FUNCTION_17();
}

void sub_1D212DF30(uint64_t a1)
{
  OUTLINED_FUNCTION_35(a1);
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_55();

      OUTLINED_FUNCTION_49();
      sub_1D21531AC();
    }

    else
    {
      OUTLINED_FUNCTION_6();
    }

    sub_1D21329BC(v1, v1[13] + 456);
    v4 = v1[6];
    v5 = v1[7];
    v6 = v1[8];
    sub_1D2132B1C(v1[5]);
  }

  else
  {
    if (v2)
    {
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_49();
      sub_1D21531AC();
    }

    else
    {
      OUTLINED_FUNCTION_6();
    }

    sub_1D21329BC(v1, v1[13] + 456);
  }

  free(v1);
}

double PHPickerConfiguration._peopleConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_1D2133FC8(v1 + 496, v4, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v5)
  {
    sub_1D213409C(v4, &qword_1EC6CEF70, &qword_1D2157C20);
    goto LABEL_5;
  }

  if ((OUTLINED_FUNCTION_43() & 1) == 0)
  {
LABEL_5:
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double sub_1D212E09C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1D212E0DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  sub_1D2133F24(v10[0]);
  return a5(v10);
}

uint64_t PHPickerConfiguration._peopleConfiguration.setter(__int128 *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = *a1;
    v5 = a1[1];
    sub_1D2132AC8();
    sub_1D21531AC();
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
  }

  return sub_1D21329BC(v6, v1 + 496);
}

uint64_t PHPickerConfiguration._peopleConfiguration.modify()
{
  v2 = __swift_coroFrameAllocStub(0x70uLL);
  *(OUTLINED_FUNCTION_11(v2) + 104) = v0;
  sub_1D2133FC8(v0 + 496, v1, &qword_1EC6CEF70, &qword_1D2157C20);
  if (*(v1 + 24))
  {
    if ((OUTLINED_FUNCTION_42() & 1) == 0)
    {
      *(v1 + 56) = 0u;
      *(v1 + 40) = 0u;
    }
  }

  else
  {
    sub_1D213409C(v1, &qword_1EC6CEF70, &qword_1D2157C20);
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
  }

  return OUTLINED_FUNCTION_17();
}

void sub_1D212E258(uint64_t a1)
{
  OUTLINED_FUNCTION_35(a1);
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_55();

      OUTLINED_FUNCTION_49();
      sub_1D21531AC();
    }

    else
    {
      OUTLINED_FUNCTION_6();
    }

    sub_1D21329BC(v1, v1[13] + 496);
    v4 = v1[6];
    v5 = v1[7];
    v6 = v1[8];
    sub_1D2132B1C(v1[5]);
  }

  else
  {
    if (v2)
    {
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_49();
      sub_1D21531AC();
    }

    else
    {
      OUTLINED_FUNCTION_6();
    }

    sub_1D21329BC(v1, v1[13] + 496);
  }

  free(v1);
}

uint64_t PHPickerConfiguration._excludedCollections.getter()
{
  sub_1D2133FC8(v0 + 296, v3, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEFB8, &qword_1D2157C38);
    if (OUTLINED_FUNCTION_15())
    {
      return v2;
    }
  }

  else
  {
    sub_1D213409C(v3, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  return 0;
}

uint64_t PHPickerConfiguration._excludedCollections.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v4 = OUTLINED_FUNCTION_54(&qword_1EC6CEFC0);
  OUTLINED_FUNCTION_5(v4, v5, v6, v7, v8, v9, v10, v11, a1);
  sub_1D21531AC();
  return sub_1D21329BC(v14, v1 + 296);
}

uint64_t PHPickerConfiguration._excludedCollections.modify()
{
  v2 = OUTLINED_FUNCTION_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4(v3);
  sub_1D2133FC8(v0 + 296, v1, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v1[3])
  {
    sub_1D213409C(v1, &qword_1EC6CEF70, &qword_1D2157C20);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEFB8, &qword_1D2157C38);
  if ((OUTLINED_FUNCTION_19() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = v1[6];
LABEL_6:
  v1[5] = v4;
  return OUTLINED_FUNCTION_17();
}

void sub_1D212E4F8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v3 = OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_53(&qword_1EC6CEFC0);
  OUTLINED_FUNCTION_7();
  sub_1D21531AC();
  sub_1D21329BC(v1, v2 + 296);

  free(v1);
}

uint64_t PHPickerConfiguration._desiredCollectionSuggestions.getter()
{
  sub_1D2133FC8(v0 + 336, v3, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEFC8, &qword_1D2157C40);
    if (OUTLINED_FUNCTION_15())
    {
      return v2;
    }
  }

  else
  {
    sub_1D213409C(v3, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  return 0;
}

uint64_t PHPickerConfiguration._desiredCollectionSuggestions.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v4 = OUTLINED_FUNCTION_54(&qword_1EC6CEFD0);
  OUTLINED_FUNCTION_5(v4, v5, v6, v7, v8, v9, v10, v11, a1);
  sub_1D21531AC();
  return sub_1D21329BC(v14, v1 + 336);
}

uint64_t PHPickerConfiguration._desiredCollectionSuggestions.modify()
{
  v2 = OUTLINED_FUNCTION_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4(v3);
  sub_1D2133FC8(v0 + 336, v1, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v1[3])
  {
    sub_1D213409C(v1, &qword_1EC6CEF70, &qword_1D2157C20);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEFC8, &qword_1D2157C40);
  if ((OUTLINED_FUNCTION_19() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = v1[6];
LABEL_6:
  v1[5] = v4;
  return OUTLINED_FUNCTION_17();
}

void sub_1D212E738(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v3 = OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_53(&qword_1EC6CEFD0);
  OUTLINED_FUNCTION_7();
  sub_1D21531AC();
  sub_1D21329BC(v1, v2 + 336);

  free(v1);
}

void PHPickerConfiguration.init(photoLibraryAndOnlyReturnsIdentifiers:)()
{
  OUTLINED_FUNCTION_50();
  *v2 = 0;
  *(v1 + 8) = xmmword_1D2157C00;
  *(v1 + 24) = 1;
  OUTLINED_FUNCTION_44(MEMORY[0x1E69E7CC0]);
  *(v1 + 89) = 2;
  bzero((v1 + 96), 0x161uLL);
  *(v1 + 449) = 1;
  OUTLINED_FUNCTION_2_0((v1 + 456));
  *(v1 + 568) = 0;
  *(v1 + 80) = v0;
  *(v1 + 88) = 1;
}

uint64_t PHPickerConfiguration._sharedAlbumSheetConfiguration.getter()
{
  sub_1D2133FC8(v0 + 536, v3, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v4)
  {
    v1 = sub_1D215317C();
    sub_1D2132BD0(v3);
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    sub_1D213409C(v3, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  return 0;
}

uint64_t sub_1D212E8D0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return PHPickerConfiguration._sharedAlbumSheetConfiguration.setter(v1);
}

uint64_t PHPickerConfiguration._sharedAlbumSheetConfiguration.setter(uint64_t a1)
{
  if (a1)
  {
    sub_1D2133F88(0, &qword_1EC6CEF68, off_1E83F6B68);
    sub_1D2132C24();
    sub_1D21531AC();
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
  }

  return sub_1D21329BC(v3, v1 + 536);
}

void (*PHPickerConfiguration._sharedAlbumSheetConfiguration.modify())(uint64_t *a1, char a2)
{
  v2 = OUTLINED_FUNCTION_16();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[7] = v1;
  sub_1D2133FC8(v1 + 536, v3, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v3[3])
  {
    sub_1D213409C(v3, &qword_1EC6CEF70, &qword_1D2157C20);
    goto LABEL_5;
  }

  v4 = sub_1D215317C();
  sub_1D2132BD0(v3);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_5:
    v5 = 0;
  }

  v3[5] = v5;
  return sub_1D212EA50;
}

void sub_1D212EA50(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = v3;
    PHPickerConfiguration._sharedAlbumSheetConfiguration.setter(v3);
  }

  else
  {
    if (v3)
    {
      *(v2 + 48) = v3;
      sub_1D2133F88(0, &qword_1EC6CEF68, off_1E83F6B68);
      sub_1D2132C24();
      sub_1D21531AC();
    }

    else
    {
      OUTLINED_FUNCTION_6();
    }

    sub_1D21329BC(v2, *(v2 + 56) + 536);
  }

  free(v2);
}

uint64_t PHPickerConfiguration.init(photoLibraryAndOnlyForOpenPanel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_1D2157C00;
  *(a2 + 24) = 1;
  OUTLINED_FUNCTION_45(MEMORY[0x1E69E7CC0]);
  *(a2 + 88) = 2;
  bzero((a2 + 96), 0x161uLL);
  *(a2 + 449) = 1;
  OUTLINED_FUNCTION_2_0((a2 + 456));
  *(a2 + 568) = 0;
  *(a2 + 80) = a1;
  *(a2 + 89) = 1;
  *(a2 + 1) = 3;
  *(a2 + 288) = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEF78, &qword_1D2157C28);
  v4 = sub_1D2132B7C(&qword_1EC6CEF80, &qword_1EC6CEF78, &qword_1D2157C28);
  OUTLINED_FUNCTION_5(v4, v5, v6, v7, v8, v9, v10, v11, 15);
  sub_1D21531AC();
  return sub_1D21329BC(v13, a2 + 128);
}

BOOL static PHPickerConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v244 = v3;
  v245 = v2;
  v246 = v4;
  v247 = v5;
  OUTLINED_FUNCTION_21();
  if (*(v6 + 1) != *(v7 + 1) || *(v3 + 8) != *(v2 + 8))
  {
    return 0;
  }

  v8 = *(v2 + 24);
  if (*(v3 + 24))
  {
    if (!*(v2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(v3 + 16) != *(v2 + 16))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v10 = *(v3 + 32);
  v11 = *(v2 + 32);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    v16 = 0;
    v10 = v11;
LABEL_27:
    v25 = v10;

    return 0;
  }

  if (!v11)
  {
    v16 = *(v3 + 32);
    goto LABEL_27;
  }

  sub_1D2133F88(0, &qword_1EC6CEC50, 0x1E69E58C0);
  v12 = v10;
  v13 = v11;
  v14 = v12;
  v15 = sub_1D215313C();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if ((sub_1D212F504(*(v3 + 40), *(v2 + 40)) & 1) == 0 || *(v3 + 48) != *(v2 + 48) || *(v3 + 56) != *(v2 + 56) || (sub_1D212F504(*(v3 + 64), *(v2 + 64)) & 1) == 0 || *(v3 + 72) != *(v2 + 72))
  {
    return 0;
  }

  v22 = *(v2 + 80);
  if (*(v3 + 80))
  {
    if (!v22)
    {
      return 0;
    }

    sub_1D2133F88(0, &qword_1EC6CEC50, 0x1E69E58C0);
    v23 = v22;
    v24 = sub_1D215313C();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v26 = *(v3 + 88);
  v27 = *(v2 + 88);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
    {
      return result;
    }
  }

  v28 = *(v3 + 89);
  v29 = *(v2 + 89);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }

LABEL_41:
    v30 = *(v3 + 104);
    v31 = *(v2 + 104);
    if (v30)
    {
      if (!v31)
      {
        return 0;
      }

      v17 = *(v2 + 96);
      v32 = *(v3 + 96) == v17 && v30 == v31;
      if (!v32 && (sub_1D215324C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v31)
    {
      return 0;
    }

    v33 = *(v3 + 120);
    v34 = *(v2 + 120);
    if (v33)
    {
      if (!v34)
      {
        return 0;
      }

      v17 = *(v2 + 112);
      v35 = *(v3 + 112) == v17 && v33 == v34;
      if (!v35 && (sub_1D215324C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v34)
    {
      return 0;
    }

    OUTLINED_FUNCTION_10(v3 + 128, v33, v17, v34, v18, v19, v20, v21, v237, v238, v239);
    v36 = OUTLINED_FUNCTION_9(v2 + 128);
    if (v242)
    {
      OUTLINED_FUNCTION_32(v36, v37, &qword_1EC6CEF70, &qword_1D2157C20, v38, v39, v40, v41, v237);
      if (!v243)
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_34(v42, v43, v44, v45, v46, v47, v48, v49, v237);
      sub_1D2132BD0(v240);
      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
      if ((&qword_1EC6CEF70 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v243)
      {
        goto LABEL_139;
      }

      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
    }

    OUTLINED_FUNCTION_10(v3 + 168, v50, v51, v52, v53, v54, v55, v56, v237, v238, v239);
    v57 = OUTLINED_FUNCTION_9(v2 + 168);
    if (v242)
    {
      OUTLINED_FUNCTION_32(v57, v58, &qword_1EC6CEF70, &qword_1D2157C20, v59, v60, v61, v62, v237);
      if (!v243)
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_34(v63, v64, v65, v66, v67, v68, v69, v70, v237);
      sub_1D2132BD0(v240);
      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
      if ((&qword_1EC6CEF70 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v243)
      {
        goto LABEL_139;
      }

      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
    }

    OUTLINED_FUNCTION_10(v3 + 208, v71, v72, v73, v74, v75, v76, v77, v237, v238, v239);
    v78 = OUTLINED_FUNCTION_9(v2 + 208);
    if (v242)
    {
      OUTLINED_FUNCTION_32(v78, v79, &qword_1EC6CEF70, &qword_1D2157C20, v80, v81, v82, v83, v237);
      if (!v243)
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_34(v84, v85, v86, v87, v88, v89, v90, v91, v237);
      sub_1D2132BD0(v240);
      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
      if ((&qword_1EC6CEF70 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v243)
      {
        goto LABEL_139;
      }

      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
    }

    OUTLINED_FUNCTION_10(v3 + 248, v92, v93, v94, v95, v96, v97, v98, v237, v238, v239);
    v99 = OUTLINED_FUNCTION_9(v2 + 248);
    if (v242)
    {
      OUTLINED_FUNCTION_32(v99, v100, &qword_1EC6CEF70, &qword_1D2157C20, v101, v102, v103, v104, v237);
      if (!v243)
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_34(v105, v106, v107, v108, v109, v110, v111, v112, v237);
      sub_1D2132BD0(v240);
      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
      if ((&qword_1EC6CEF70 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v243)
      {
        goto LABEL_139;
      }

      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
    }

    if (*(v3 + 288) != *(v2 + 288))
    {
      return 0;
    }

    OUTLINED_FUNCTION_10(v3 + 296, v113, v114, v115, v116, v117, v118, v119, v237, v238, v239);
    v120 = OUTLINED_FUNCTION_9(v2 + 296);
    if (v242)
    {
      OUTLINED_FUNCTION_32(v120, v121, &qword_1EC6CEF70, &qword_1D2157C20, v122, v123, v124, v125, v237);
      if (!v243)
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_34(v126, v127, v128, v129, v130, v131, v132, v133, v237);
      sub_1D2132BD0(v240);
      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
      if ((&qword_1EC6CEF70 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v243)
      {
        goto LABEL_139;
      }

      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
    }

    OUTLINED_FUNCTION_10(v3 + 336, v134, v135, v136, v137, v138, v139, v140, v237, v238, v239);
    v141 = OUTLINED_FUNCTION_9(v2 + 336);
    if (v242)
    {
      OUTLINED_FUNCTION_32(v141, v142, &qword_1EC6CEF70, &qword_1D2157C20, v143, v144, v145, v146, v237);
      if (!v243)
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_34(v147, v148, v149, v150, v151, v152, v153, v154, v237);
      sub_1D2132BD0(v240);
      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
      if ((&qword_1EC6CEF70 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v243)
      {
        goto LABEL_139;
      }

      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
    }

    OUTLINED_FUNCTION_10(v3 + 376, v155, v156, v157, v158, v159, v160, v161, v237, v238, v239);
    v162 = OUTLINED_FUNCTION_9(v2 + 376);
    if (v242)
    {
      OUTLINED_FUNCTION_32(v162, v163, &qword_1EC6CEF70, &qword_1D2157C20, v164, v165, v166, v167, v237);
      if (!v243)
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_34(v168, v169, v170, v171, v172, v173, v174, v175, v237);
      sub_1D2132BD0(v240);
      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
      if ((&qword_1EC6CEF70 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v243)
      {
        goto LABEL_139;
      }

      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
    }

    v181 = *(v3 + 424);
    v182 = *(v2 + 424);
    if (v181)
    {
      if (!v182)
      {
        return 0;
      }

      v176 = *(v2 + 416);
      v183 = *(v3 + 416) == v176 && v181 == v182;
      if (!v183 && (sub_1D215324C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v182)
    {
      return 0;
    }

    v184 = *(v3 + 440);
    v185 = *(v2 + 440);
    if (v184)
    {
      if (!v185)
      {
        return 0;
      }

      v176 = *(v2 + 432);
      v186 = *(v3 + 432) == v176 && v184 == v185;
      if (!v186 && (sub_1D215324C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v185)
    {
      return 0;
    }

    if (*(v3 + 448) != *(v2 + 448) || *(v3 + 449) != *(v2 + 449))
    {
      return 0;
    }

    OUTLINED_FUNCTION_10(v3 + 456, v184, v176, v185, v177, v178, v179, v180, v237, v238, v239);
    v187 = OUTLINED_FUNCTION_9(v2 + 456);
    if (v242)
    {
      OUTLINED_FUNCTION_32(v187, v188, &qword_1EC6CEF70, &qword_1D2157C20, v189, v190, v191, v192, v237);
      if (!v243)
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_34(v193, v194, v195, v196, v197, v198, v199, v200, v237);
      sub_1D2132BD0(v240);
      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
      if ((&qword_1EC6CEF70 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v243)
      {
        goto LABEL_139;
      }

      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
    }

    OUTLINED_FUNCTION_10(v3 + 496, v201, v202, v203, v204, v205, v206, v207, v237, v238, v239);
    v208 = OUTLINED_FUNCTION_9(v2 + 496);
    if (v242)
    {
      OUTLINED_FUNCTION_32(v208, v209, &qword_1EC6CEF70, &qword_1D2157C20, v210, v211, v212, v213, v237);
      if (v243)
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_34(v214, v215, v216, v217, v218, v219, v220, v221, v237);
        sub_1D2132BD0(v240);
        sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
        if ((&qword_1EC6CEF70 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_134;
      }

LABEL_138:
      sub_1D2132BD0(v240);
      goto LABEL_139;
    }

    if (!v243)
    {
      sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
LABEL_134:
      OUTLINED_FUNCTION_10(v3 + 536, v222, v223, v224, v225, v226, v227, v228, v237, v238, v239);
      v229 = OUTLINED_FUNCTION_9(v2 + 536);
      if (!v242)
      {
        if (!v243)
        {
          sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
          return 1;
        }

        goto LABEL_139;
      }

      OUTLINED_FUNCTION_32(v229, v230, &qword_1EC6CEF70, &qword_1D2157C20, v231, v232, v233, v234, v237);
      if (v243)
      {
        OUTLINED_FUNCTION_1_0();
        v236 = v235;
        sub_1D2132BD0(&v237);
        sub_1D2132BD0(v240);
        sub_1D213409C(v241, &qword_1EC6CEF70, &qword_1D2157C20);
        return (v236 & 1) != 0;
      }

      goto LABEL_138;
    }

LABEL_139:
    sub_1D213409C(v241, &qword_1EC6CEFE0, &qword_1D2157C48);
    return 0;
  }

  result = 0;
  if (v29 != 2 && ((v29 ^ v28) & 1) == 0)
  {
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_1D212F504(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D215324C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D212F590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  sub_1D21530FC();
  sub_1D21530FC();
  v14 = *(a5 + 8);
  v15 = sub_1D21530AC();
  v16 = *(v7 + 8);
  v16(v11, AssociatedTypeWitness);
  v16(v13, AssociatedTypeWitness);
  return v15 & 1;
}

uint64_t PHPickerConfiguration.hash(into:)(uint64_t a1)
{
  MEMORY[0x1D38971B0](*v1);
  MEMORY[0x1D38971B0](v1[1]);
  MEMORY[0x1D38971B0](*(v1 + 1));
  if (v1[24] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v3 = *(v1 + 2);
    OUTLINED_FUNCTION_24();
    MEMORY[0x1D38971B0](v3);
  }

  if (*(v1 + 4))
  {
    OUTLINED_FUNCTION_24();
    sub_1D215314C();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_1D2132F04(a1, *(v1 + 5));
  MEMORY[0x1D38971B0](*(v1 + 6));
  MEMORY[0x1D38971B0](*(v1 + 7));
  sub_1D2132F04(a1, *(v1 + 8));
  v4 = v1[72];
  sub_1D215327C();
  if (*(v1 + 10))
  {
    OUTLINED_FUNCTION_24();
    sub_1D215314C();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v1[88] != 2)
  {
    OUTLINED_FUNCTION_24();
  }

  sub_1D215327C();
  if (v1[89] != 2)
  {
    OUTLINED_FUNCTION_24();
  }

  sub_1D215327C();
  if (*(v1 + 13))
  {
    v5 = *(v1 + 12);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (*(v1 + 15))
  {
    v6 = *(v1 + 14);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_1D2133FC8((v1 + 128), v13, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v14)
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_33();
    sub_1D2132BD0(v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_1D2133FC8((v1 + 168), v13, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v14)
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_33();
    sub_1D2132BD0(v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_1D2133FC8((v1 + 208), v13, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v14)
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_33();
    sub_1D2132BD0(v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_1D2133FC8((v1 + 248), v13, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v14)
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_33();
    sub_1D2132BD0(v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  MEMORY[0x1D38971B0](*(v1 + 36));
  sub_1D2133FC8((v1 + 296), v13, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v14)
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_33();
    sub_1D2132BD0(v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_1D2133FC8((v1 + 336), v13, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v14)
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_33();
    sub_1D2132BD0(v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_1D2133FC8((v1 + 376), v13, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v14)
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_33();
    sub_1D2132BD0(v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (*(v1 + 53))
  {
    v7 = *(v1 + 52);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (*(v1 + 55))
  {
    v8 = *(v1 + 54);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = v1[448];
  sub_1D215327C();
  v10 = v1[449];
  sub_1D215327C();
  sub_1D2133FC8((v1 + 456), v13, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v14)
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_33();
    sub_1D2132BD0(v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_1D2133FC8((v1 + 496), v13, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v14)
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_33();
    sub_1D2132BD0(v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_1D2133FC8((v1 + 536), v13, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v14)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_33();
  return sub_1D2132BD0(v12);
}

uint64_t PHPickerConfiguration.hashValue.getter()
{
  OUTLINED_FUNCTION_36();
  PHPickerConfiguration.hash(into:)(v1);
  return sub_1D215328C();
}

uint64_t sub_1D212FB64()
{
  sub_1D215325C();
  PHPickerConfiguration.hash(into:)(v1);
  return sub_1D215328C();
}

uint64_t sub_1D212FBC0(SEL *a1)
{
  v2 = [*(v1 + 8) *a1];
  if (v2)
  {
    v3 = v2;
    sub_1D21530DC();
  }

  return OUTLINED_FUNCTION_14();
}

id PHPickerResult._metadata.getter()
{
  v1 = [*(v0 + 8) _metadata];

  return v1;
}

void PHPickerResult._requestThumbnailImageURL(preferredSize:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_1D2132F7C;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D2130018;
  v10[3] = &block_descriptor;
  v9 = _Block_copy(v10);

  [v7 _requestThumbnailImageURLForPreferredSize_resultHandler_];
  _Block_release(v9);
}

uint64_t sub_1D212FD50(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v30 = a4;
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF1B0, &qword_1D2158578);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_1D215306C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF1B8, &unk_1D2158580);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  sub_1D2133FC8(a1, v9, &qword_1EC6CF1B0, &qword_1D2158578);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v23 = *(v11 + 32);
    v23(v14, v9, v10);
    v23(v19, v14, v10);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

  sub_1D213409C(v9, &qword_1EC6CF1B0, &qword_1D2158578);
  if (!a2)
  {
    v24 = *MEMORY[0x1E696A250];
    v25 = sub_1D21530DC();
    v27 = v26;
    v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    *v19 = sub_1D2132830(v25, v27, -1, 0);
    goto LABEL_6;
  }

  *v19 = a2;
  swift_storeEnumTagMultiPayload();
  v22 = a2;
LABEL_7:
  sub_1D213402C(v19, v21);
  v31(v21);
  return sub_1D213409C(v21, &qword_1EC6CF1B8, &unk_1D2158580);
}

uint64_t sub_1D2130018(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF1B0, &qword_1D2158578) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v15 - v7;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_1D215305C();
    v11 = sub_1D215306C();
    v12 = 0;
  }

  else
  {
    v11 = sub_1D215306C();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v12, 1, v11);

  v13 = a3;
  v10(v8, a3);

  return sub_1D213409C(v8, &qword_1EC6CF1B0, &qword_1D2158578);
}

CGRect __swiftcall PHPickerResult._preferredContentsRect(targetSize:)(CGSize targetSize)
{
  [*(v1 + 8) _preferredContentsRectForTargetSize_];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t PHPickerResult._filePromiseURL(contentType:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  sub_1D215307C();
  v4 = sub_1D21530BC();

  v5 = [v3 _filePromiseURLForTypeIdentifier_];

  if (v5)
  {
    sub_1D215305C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1D215306C();

  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

uint64_t static PHPickerResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_1D2133F88(0, &qword_1EC6CEC50, 0x1E69E58C0);
  if ((sub_1D215313C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_30();
  return sub_1D215313C() & 1;
}

uint64_t PHPickerResult.hash(into:)()
{
  v1 = v0[1];
  v2 = *v0;
  sub_1D215314C();
  return sub_1D215314C();
}

uint64_t PHPickerResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_36();
  sub_1D215314C();
  sub_1D215314C();
  return sub_1D215328C();
}

uint64_t sub_1D2130300()
{
  v2 = *v0;
  sub_1D215325C();
  PHPickerResult.hash(into:)();
  return sub_1D215328C();
}

void PHPickerViewController.configuration.getter(uint64_t a1@<X8>)
{
  if ([v1 _overlayStorage])
  {
    sub_1D215315C();
    swift_unknownObjectRelease();
    sub_1D2132F9C(&v4, &v5);
    type metadata accessor for _PHPickerOverlayStorage();
    OUTLINED_FUNCTION_26();
    sub_1D2132FD0(v3 + OBJC_IVAR____TtC8PhotosUIP33_E2E20DF4EAC1FCE07E5336962A6E0BEF23_PHPickerOverlayStorage_configuration, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*PHPickerViewController.delegate.modify(id *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = PHPickerViewController.delegate.getter();
  a1[1] = v3;
  return sub_1D2130444;
}

id PHPickerViewController.init(configuration:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D213053C();
  v4 = [v2 initWithConfiguration_];

  sub_1D2132FD0(a1, v10);
  v5 = objc_allocWithZone(type metadata accessor for _PHPickerOverlayStorage());
  v6 = v4;
  v7 = sub_1D21321FC(v10);
  [v6 setDelegate_];
  v8 = v7;
  [v6 _setOverlayStorage_];

  sub_1D2133008(a1);
  return v6;
}

void *sub_1D213053C()
{
  v1 = v0;
  v2 = &selRef_slomoVideosFilter;
  if (*(v0 + 10))
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v0[88];
      if (v4 != 2 && (v4 & 1) != 0)
      {
        v5 = v3;
        v6 = objc_allocWithZone(PHPickerConfiguration);
        v7 = sel_initWithPhotoLibraryAndOnlyReturnsIdentifiers_;
LABEL_10:
        v10 = v5;
LABEL_13:
        v13 = [v6 v7];
        goto LABEL_15;
      }
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v0[89];
      if (v9 != 2 && (v9 & 1) != 0)
      {
        v5 = v8;
        v6 = objc_allocWithZone(PHPickerConfiguration);
        v7 = sel_initWithPhotoLibraryAndOnlyForOpenPanel_;
        goto LABEL_10;
      }
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v6 = objc_allocWithZone(PHPickerConfiguration);
      v7 = sel_initWithPhotoLibrary_;
      v10 = v12;
      goto LABEL_13;
    }
  }

  v13 = [objc_allocWithZone(PHPickerConfiguration) init];
LABEL_15:
  v14 = v13;
  [v13 setPreferredAssetRepresentationMode_];
  [v14 setSelection_];
  [v14 setSelectionLimit_];
  v15 = *(v1 + 8);
  v16 = sub_1D215310C();
  [v14 setPreselectedItemIdentifiers_];

  sub_1D2133FC8((v1 + 456), v51, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v52)
  {
    if (swift_dynamicCast())
    {
      v17 = v53;
      if (v53)
      {
        v18 = v55;

        sub_1D2132B1C(v17);
        if (v18)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    sub_1D213409C(v51, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  sub_1D2133FC8((v1 + 496), v51, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v52)
  {
    if (swift_dynamicCast())
    {
      v19 = v53;
      if (v53)
      {
        v20 = v55;

        sub_1D2132B1C(v19);
        if (v20)
        {
LABEL_25:
          v21 = sub_1D215310C();

          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    sub_1D213409C(v51, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  v21 = sub_1D215310C();
LABEL_28:
  [v14 setPreselectedItemIdentifiers_];

  if (*(v1 + 13))
  {
    v22 = *(v1 + 12);
    v23 = sub_1D21530BC();
  }

  else
  {
    v23 = 0;
  }

  [v14 setPrompt_];

  if (*(v1 + 15))
  {
    v24 = *(v1 + 14);
    v25 = sub_1D21530BC();
  }

  else
  {
    v25 = 0;
  }

  [v14 setTitle_];

  if (v1[24] == 1)
  {
    v26 = sub_1D215304C();
  }

  else
  {
    v26 = *(v1 + 2);
  }

  [v14 setMinimumSelectionLimit_];
  [v14 setFilter_];
  [v14 setMode_];
  [v14 _setSourceType_];
  [v14 _setAlwaysShowLoadingPlaceholder_];
  [v14 setEdgesWithoutContentMargins_];
  sub_1D2133FC8((v1 + 128), v51, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEF78, &qword_1D2157C28);
    if (swift_dynamicCast())
    {
      v27 = v53;
      goto LABEL_42;
    }
  }

  else
  {
    sub_1D213409C(v51, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  v27 = 0;
LABEL_42:
  [v14 setDisabledCapabilities_];
  sub_1D2133FC8((v1 + 376), v51, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v52)
  {
    if (swift_dynamicCast())
    {
      v28 = v53;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    sub_1D213409C(v51, &qword_1EC6CEF70, &qword_1D2157C20);
    v28 = 0;
  }

  [v14 set:v28 suggestionGroup:?];

  if (*(v1 + 53))
  {
    v29 = *(v1 + 52);
    v30 = sub_1D21530BC();
  }

  else
  {
    v30 = 0;
  }

  [v14 set:v30 searchText:?];

  sub_1D2133FC8((v1 + 168), v51, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEF90, &qword_1D2157C30);
    if (swift_dynamicCast())
    {
      v31 = v53;
      goto LABEL_55;
    }
  }

  else
  {
    sub_1D213409C(v51, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  v31 = 0;
LABEL_55:
  [v14 _setDisabledPrivateCapabilities_];
  [v14 _setPrimaryButtonType_];
  [v14 _setSecondaryButtonType_];
  if (*(v1 + 55))
  {
    v32 = *(v1 + 54);
    v33 = sub_1D21530BC();
  }

  else
  {
    v33 = 0;
  }

  [v14 set:v33 containerIdentifier:?];

  sub_1D2133FC8((v1 + 456), v51, &qword_1EC6CEF70, &qword_1D2157C20);
  v34 = 0x1E83F6000uLL;
  if (!v52)
  {
    sub_1D213409C(v51, &qword_1EC6CEF70, &qword_1D2157C20);
LABEL_64:
    v37 = 0;
    goto LABEL_65;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_64;
  }

  v35 = v53;
  if (!v53)
  {
    goto LABEL_64;
  }

  v49 = v55;
  if (v54)
  {
    sub_1D2133F88(0, &qword_1EC6CF1A8, off_1E83F6B58);

    v36 = sub_1D21327BC();
  }

  else
  {
    v36 = [objc_allocWithZone(_PHPickerCollectionConfiguration) init];
  }

  v37 = v36;
  v45 = sub_1D215310C();
  [v37 setSuggestedIdentifiers_];

  v46 = sub_1D215310C();
  [v37 setDisabledIdentifiers_];

  sub_1D2132B1C(v35);
  v2 = &selRef_slomoVideosFilter;
  v34 = 0x1E83F6000;
LABEL_65:
  [v14 _setAlbumsConfiguration_];

  sub_1D2133FC8((v1 + 496), v51, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v52)
  {
    sub_1D213409C(v51, &qword_1EC6CEF70, &qword_1D2157C20);
LABEL_71:
    v40 = 0;
    goto LABEL_72;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_71;
  }

  v38 = v53;
  if (!v53)
  {
    goto LABEL_71;
  }

  v50 = v55;
  if (v54)
  {
    sub_1D2133F88(0, &qword_1EC6CF1A8, off_1E83F6B58);

    v39 = sub_1D21327BC();
  }

  else
  {
    v39 = [objc_allocWithZone(*(v34 + 2904)) v2[316]];
  }

  v40 = v39;
  v47 = sub_1D215310C();
  [v40 byte_1E83F787D];

  v48 = sub_1D215310C();
  [v40 setDisabledIdentifiers_];

  sub_1D2132B1C(v38);
LABEL_72:
  [v14 _setPeopleConfiguration_];

  sub_1D2133FC8((v1 + 296), v51, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEFB8, &qword_1D2157C38);
    if (swift_dynamicCast())
    {
      v41 = v53;
      goto LABEL_77;
    }
  }

  else
  {
    sub_1D213409C(v51, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  v41 = 0;
LABEL_77:
  [v14 _setExcludedCollections_];
  sub_1D2133FC8((v1 + 336), v51, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v52)
  {
    sub_1D213409C(v51, &qword_1EC6CEF70, &qword_1D2157C20);
    goto LABEL_81;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEFC8, &qword_1D2157C40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_81:
    v42 = 0;
    goto LABEL_82;
  }

  v42 = v53;
LABEL_82:
  [v14 _setDesiredCollectionSuggestions_];
  [v14 _setAllowsDownscaling_];
  [v14 _setAllowsEncodingPolicyModification_];
  v43 = PHPickerConfiguration._sharedAlbumSheetConfiguration.getter();
  [v14 set:v43 sharedAlbumSheetConfiguration:?];

  return v14;
}

void PHPickerViewController.updatePicker(using:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_1D2130FE4();
  [v1 updatePickerUsingConfiguration_];
}

void *sub_1D2130FE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v18 = v0[4];
  v19 = v0[6];
  v20 = *(v0 + 40);
  v21 = *(v0 + 56);
  v5 = v0[8];
  v6 = *(v0 + 72);
  v7 = v0[11];
  v8 = v0[13];
  v16 = v0[10];
  v17 = v0[12];
  v9 = v0[14];
  v10 = [objc_allocWithZone(PHPickerUpdateConfiguration) init];
  v11 = v10;
  if (v6)
  {
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v10 setEdgesWithoutContentMargins_];
    if (v2)
    {
LABEL_3:
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  [v11 setSelectionLimit_];
  if ((v4 & 1) == 0)
  {
LABEL_4:
    [v11 setMinimumSelectionLimit_];
  }

LABEL_5:
  v12 = v9;
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_13;
    }

    v13 = sub_1D21530BC();
  }

  else
  {
    v13 = 0;
  }

  [v11 setPrompt_];

LABEL_13:
  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_18;
    }

    v14 = sub_1D21530BC();
  }

  else
  {
    v14 = 0;
  }

  [v11 setTitle_];

LABEL_18:
  if ((v20 & 1) == 0)
  {
    [v11 _setPrimaryButtonType_];
  }

  if ((v21 & 1) == 0)
  {
    [v11 _setSecondaryButtonType_];
  }

  if (v12 != 1)
  {
    [v11 _setSharedAlbumSheetConfiguration_];
  }

  return v11;
}

id sub_1D21311B8(void *a1)
{
  result = [v1 _overlayStorage];
  if (result)
  {
    sub_1D215315C();
    swift_unknownObjectRelease();
    sub_1D2132F9C(&v7, &v8);
    type metadata accessor for _PHPickerOverlayStorage();
    OUTLINED_FUNCTION_26();
    v4 = &v6[*a1];
    swift_unknownObjectWeakLoadStrong();
    v5 = *(v4 + 1);

    return OUTLINED_FUNCTION_23();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2131264(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v9 = swift_unknownObjectRetain();
  return a5(v9, v6);
}

id sub_1D21312B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  result = [v5 _overlayStorage];
  if (result)
  {
    sub_1D215315C();
    swift_unknownObjectRelease();
    sub_1D2132F9C(&v9, &v10);
    type metadata accessor for _PHPickerOverlayStorage();
    OUTLINED_FUNCTION_26();
    *&v8[*a3 + 8] = a2;
    swift_unknownObjectWeakAssign();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*PHPickerViewController._privateDelegate.modify(id *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = PHPickerViewController._privateDelegate.getter();
  a1[1] = v3;
  return sub_1D21313B4;
}

uint64_t sub_1D21313CC(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = *a1;
    v8 = swift_unknownObjectRetain();
    a3(v8, v5);

    return swift_unknownObjectRelease();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_18();
    return (a3)(v10);
  }
}

uint64_t _PHPickerCollectionConfiguration.init(identifiers:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  a2[2] = result;
  a2[3] = 0;
  return result;
}

void _PHPickerCollectionConfiguration.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t _PHPickerCollectionConfiguration.suggestedIdentifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _PHPickerCollectionConfiguration.disabledIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t static _PHPickerCollectionConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1D212F504(*a1, *a2) & 1) == 0 || (sub_1D212F504(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = OUTLINED_FUNCTION_18();
    if ((sub_1D212F504(v8, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {
      v10 = OUTLINED_FUNCTION_14();
      if (sub_1D212F504(v10, v11))
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t _PHPickerCollectionConfiguration.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1D2132F04(a1, *v1);
  sub_1D2132F04(a1, v3);
  if (!v5)
  {
    sub_1D215327C();
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1D215327C();
  }

  sub_1D215327C();
  v6 = OUTLINED_FUNCTION_27();
  sub_1D2132F04(v6, v7);
  if (!v4)
  {
    return sub_1D215327C();
  }

LABEL_3:
  sub_1D215327C();

  return sub_1D2132F04(a1, v4);
}

uint64_t _PHPickerCollectionConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_36();
  sub_1D2132F04(v6, v1);
  sub_1D2132F04(v6, v2);
  sub_1D215327C();
  if (v4)
  {
    sub_1D2132F04(v6, v4);
  }

  sub_1D215327C();
  if (v3)
  {
    sub_1D2132F04(v6, v3);
  }

  return sub_1D215328C();
}

uint64_t sub_1D213171C()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_1D215325C();
  _PHPickerCollectionConfiguration.hash(into:)(v3);
  return sub_1D215328C();
}

id sub_1D2131A80(uint64_t a1, uint64_t *a2, SEL *a3, void *a4)
{
  v5 = *a2;
  result = [objc_opt_self() *a3];
  *a4 = result;
  return result;
}

id sub_1D2131AE4@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  *a3 = *a2;

  return v5;
}

void static _PHPickerSuggestionGroup.assetCollection(identifier:extendedCuratedAssetsOnly:shouldReverseSortOrder:)(char a1@<W2>, char a2@<W3>, void *a3@<X8>)
{
  v6 = objc_opt_self();
  OUTLINED_FUNCTION_27();
  v7 = sub_1D21530BC();
  v8 = [v6 assetCollectionSuggestionGroup:v7 extendedCuratedAssetsOnly:a1 & 1 shouldReverseSortOrder:a2 & 1];

  *a3 = v8;
}

uint64_t _s8PhotosUI14PHPickerFilterV9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_36();
  sub_1D215314C();
  return sub_1D215328C();
}

uint64_t sub_1D2131C00()
{
  v1 = *v0;
  sub_1D215325C();
  sub_1D215314C();
  return sub_1D215328C();
}

void *(*PHPickerConfiguration._edgesWithoutContentMargins.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 288);
  a1[1] = v1;
  return sub_1D2134164;
}

uint64_t PHPickerConfiguration._disabledFeatures.getter()
{
  sub_1D2133FC8(v0 + 128, v3, &qword_1EC6CEF70, &qword_1D2157C20);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEF78, &qword_1D2157C28);
    if (OUTLINED_FUNCTION_15())
    {
      return v2;
    }
  }

  else
  {
    sub_1D213409C(v3, &qword_1EC6CEF70, &qword_1D2157C20);
  }

  return 0;
}

uint64_t sub_1D2131CF8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v4 = OUTLINED_FUNCTION_54(&qword_1EC6CEF80);
  OUTLINED_FUNCTION_5(v4, v5, v6, v7, v8, v9, v10, v11, a1);
  sub_1D21531AC();
  return sub_1D21329BC(v14, v1 + 128);
}

uint64_t PHPickerConfiguration._disabledFeatures.modify()
{
  v2 = OUTLINED_FUNCTION_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4(v3);
  sub_1D2133FC8(v0 + 128, v1, &qword_1EC6CEF70, &qword_1D2157C20);
  if (!v1[3])
  {
    sub_1D213409C(v1, &qword_1EC6CEF70, &qword_1D2157C20);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEF78, &qword_1D2157C28);
  if ((OUTLINED_FUNCTION_19() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = v1[6];
LABEL_6:
  v1[5] = v4;
  return OUTLINED_FUNCTION_17();
}

void sub_1D2131E2C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v3 = OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_53(&qword_1EC6CEF80);
  OUTLINED_FUNCTION_7();
  sub_1D21531AC();
  sub_1D21329BC(v1, v2 + 128);

  free(v1);
}

uint64_t _PHPickerCollectionConfiguration.preselectedIdentifiers.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1D2131EE8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = _PHPickerCollectionConfiguration.preselectedIdentifiers.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1D2131F24(uint64_t *a1)
{
  v1 = *a1;

  return _PHPickerCollectionConfiguration.preselectedIdentifiers.setter(v2);
}

uint64_t _PHPickerCollectionConfiguration.preselectedIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t _PHPickerCollectionConfiguration.preselectedIdentifiers.modify(void *a1)
{
  v3 = *(v1 + 24);
  a1[2] = v3;
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v4 = v3;
  }

  *a1 = v4;
  a1[1] = v1;

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1D2131FD8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 24) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 24) = v4;
  }

  return result;
}

uint64_t sub_1D213204C(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  sub_1D21530FC();
  v10 = a2[4];
  sub_1D215309C();
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_1D2132158(void *a1)
{
  sub_1D215325C();
  sub_1D213204C(v3, a1);
  return sub_1D215328C();
}

uint64_t sub_1D21321A8(uint64_t a1, void *a2)
{
  sub_1D215325C();
  sub_1D213204C(v4, a2);
  return sub_1D215328C();
}

id sub_1D21321FC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8PhotosUIP33_E2E20DF4EAC1FCE07E5336962A6E0BEF23_PHPickerOverlayStorage_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8PhotosUIP33_E2E20DF4EAC1FCE07E5336962A6E0BEF23_PHPickerOverlayStorage_privateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1D2132FD0(a1, &v1[OBJC_IVAR____TtC8PhotosUIP33_E2E20DF4EAC1FCE07E5336962A6E0BEF23_PHPickerOverlayStorage_configuration]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _PHPickerOverlayStorage();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1D2133008(a1);
  return v3;
}

uint64_t sub_1D2132294(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8PhotosUIP33_E2E20DF4EAC1FCE07E5336962A6E0BEF23_PHPickerOverlayStorage_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(v5 + 8);
    v9 = sub_1D2132C8C(a2);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v11 = v9;
      v23 = MEMORY[0x1E69E7CC0];
      result = sub_1D2132CB0(0, v9 & ~(v9 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v20 = v8;
      v21 = a1;
      v22 = v7;
      v12 = 0;
      v10 = v23;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1D3897100](v12, a2);
        }

        else
        {
          v13 = *(a2 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = [v13 itemProvider];
        v17 = *(v23 + 16);
        v16 = *(v23 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D2132CB0((v16 > 1), v17 + 1, 1);
        }

        ++v12;
        *(v23 + 16) = v17 + 1;
        v18 = v23 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v14;
      }

      while (v11 != v12);
      a1 = v21;
      v8 = v20;
    }

    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, v10, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D2132538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PHPickerOverlayStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D21325CC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8PhotosUIP33_E2E20DF4EAC1FCE07E5336962A6E0BEF23_PHPickerOverlayStorage_privateDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D21326C4(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8PhotosUIP33_E2E20DF4EAC1FCE07E5336962A6E0BEF23_PHPickerOverlayStorage_privateDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D21327BC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D215310C();

  v2 = [v0 initWithIdentifiers_];

  return v2;
}

id sub_1D2132830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D21530BC();

  if (a4)
  {
    v8 = sub_1D215308C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1D21328E0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D21328F4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

id sub_1D2132908(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1D2132918(id a1)
{
  if (a1 != 1)
  {
  }
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

uint64_t sub_1D21329BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CEF70, &qword_1D2157C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2132A2C()
{
  result = qword_1EC6CEF88;
  if (!qword_1EC6CEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CEF88);
  }

  return result;
}

uint64_t sub_1D2132A80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2132AC8()
{
  result = qword_1EC6CEFB0;
  if (!qword_1EC6CEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CEFB0);
  }

  return result;
}

uint64_t sub_1D2132B1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D2132B7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1D2132C24()
{
  result = qword_1EC6CEFD8;
  if (!qword_1EC6CEFD8)
  {
    sub_1D2133F88(255, &qword_1EC6CEF68, off_1E83F6B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CEFD8);
  }

  return result;
}

uint64_t sub_1D2132C8C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

char *sub_1D2132CB0(char *a1, int64_t a2, char a3)
{
  result = sub_1D2132CF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D2132CD0(char *a1, int64_t a2, char a3)
{
  result = sub_1D2132DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D2132CF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF190, &qword_1D2158568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D2132DF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF1A0, &qword_1D2158570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D2132F04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D38971B0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1D21530EC();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_1D2132F9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1D213303C()
{
  result = qword_1EC6CF000;
  if (!qword_1EC6CF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF000);
  }

  return result;
}

unint64_t sub_1D2133094()
{
  result = qword_1EC6CF008;
  if (!qword_1EC6CF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF008);
  }

  return result;
}

unint64_t sub_1D21330EC()
{
  result = qword_1EC6CF010;
  if (!qword_1EC6CF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF010);
  }

  return result;
}

unint64_t sub_1D2133144()
{
  result = qword_1EC6CEC88;
  if (!qword_1EC6CEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CEC88);
  }

  return result;
}

unint64_t sub_1D213319C()
{
  result = qword_1EC6CF020;
  if (!qword_1EC6CF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF020);
  }

  return result;
}

unint64_t sub_1D21331F4()
{
  result = qword_1EC6CF028;
  if (!qword_1EC6CF028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF028);
  }

  return result;
}

unint64_t sub_1D213324C()
{
  result = qword_1EC6CF030;
  if (!qword_1EC6CF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF030);
  }

  return result;
}

unint64_t sub_1D21332A4()
{
  result = qword_1EC6CF038;
  if (!qword_1EC6CF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF038);
  }

  return result;
}

unint64_t sub_1D21332FC()
{
  result = qword_1EC6CF040;
  if (!qword_1EC6CF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF040);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PHPickerMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PHPickerMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_s11AnyHashableVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D21333E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 576))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1D2133428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 568) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 576) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 576) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PHPickerConfiguration.AssetRepresentationMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PHPickerConfiguration.AssetRepresentationMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PHPickerConfiguration.Selection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PHPickerConfiguration.Selection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SSSgSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t get_enum_tag_for_layout_string_So37_PHPickerShareAlbumSheetConfigurationCSgSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D2133834(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 120))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 88);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2133894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D213391C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D213395C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D21339F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D2133A30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D2133A80(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D2133AC0(uint64_t result, int a2, int a3)
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

uint64_t sub_1D2133B14(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2133B84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1D2133CE8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D2133F24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D2133F88(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D2133FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_14();
  v7(v6);
  return a2;
}

uint64_t sub_1D213402C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF1B8, &unk_1D2158580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D213409C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return sub_1D215327C();
}

void OUTLINED_FUNCTION_1_0()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);

  JUMPOUT(0x1D38970D0);
}

double OUTLINED_FUNCTION_2_0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t result)
{
  v1 = *(*result + 56);
  *(*result + 48) = *(*result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t result)
{
  *v1 = result;
  *(result + 56) = v2;
  return result;
}

double OUTLINED_FUNCTION_6()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1)
{

  return sub_1D2133FC8(a1, v3 + 40, v1, v2);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_1D2133FC8(a1, va, v11, v12);
}

uint64_t OUTLINED_FUNCTION_15()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return sub_1D215327C();
}

uint64_t OUTLINED_FUNCTION_25()
{

  return sub_1D215327C();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{
  v1 = *(*a1 + 56);
  *(*a1 + 48) = *(*a1 + 40);
  return 0;
}

uint64_t OUTLINED_FUNCTION_31()
{

  return sub_1D21530EC();
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  return sub_1D2133FC8(va1, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return MEMORY[0x1EEE6A278](v0);
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D2132BD0(&a9);
}

uint64_t OUTLINED_FUNCTION_35(uint64_t result)
{
  v1 = *(*result + 40);
  v3 = *(*result + 48);
  v2 = *(*result + 56);
  v4 = *(*result + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_1D215325C();
}

uint64_t OUTLINED_FUNCTION_37()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_44(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = a1;
  *(v1 + 72) = 0;
}

void OUTLINED_FUNCTION_45(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = a1;
  *(v1 + 72) = 0;
}

uint64_t *OUTLINED_FUNCTION_46(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v4 = result[2];
  v3 = result[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_47@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[2] = v3;
  v2[3] = result;
  *v2 = a2;
  v2[1] = result;
  return result;
}

uint64_t **OUTLINED_FUNCTION_51(uint64_t **result)
{
  v2 = **result;
  v1 = (*result)[1];
  v4 = (*result)[3];
  v3 = (*result)[4];
  v5 = (*result)[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_52(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
}

uint64_t OUTLINED_FUNCTION_53(unint64_t *a1)
{

  return sub_1D2132B7C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_54(unint64_t *a1)
{

  return sub_1D2132B7C(a1, v1, v2);
}

unint64_t OUTLINED_FUNCTION_55()
{
  v0[9] = v4;
  v0[10] = v3;
  v0[11] = v2;
  v0[12] = v1;

  return sub_1D2132AC8();
}

id static PickerSuggestionAvailableClasses.all()()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1D21363C8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2158590;
  *(inited + 32) = type metadata accessor for PickerSuggestionAll();
  *(inited + 40) = type metadata accessor for PickerSearchBasedSuggestion();
  *(inited + 48) = type metadata accessor for PickerWallpaperSuggestion();
  *(inited + 56) = type metadata accessor for PickerAssetCollectionSuggestion();
  *(inited + 64) = type metadata accessor for PickerLivePhotoWithPossibleMotionEffectSuggestion();
  *(inited + 72) = type metadata accessor for PickerPhotoWithGyroPosterSuggestion();
  *(inited + 80) = type metadata accessor for PickerPanoramasSuggestion();
  *(inited + 88) = type metadata accessor for PickerSpatialSuggestion();
  *(inited + 96) = type metadata accessor for PickerGenerativeFeaturedSuggestion();
  v1 = type metadata accessor for PickerStyleablePhotoSuggestion();
  v2 = sub_1D21362D4(1, 10, 1, inited);
  v2[2] = 10;
  v2[13] = v1;
  sub_1D2133F88(0, &qword_1EC6CF228, 0x1E695DFD8);
  v3 = OUTLINED_FUNCTION_1_1();
  sub_1D213471C(v3);

  result = sub_1D213482C();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D213471C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D2132CD0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF338, &qword_1D21589F8);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D2132CD0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D2132F9C(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1D213482C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D215310C();

  v2 = [v0 initWithArray_];

  return v2;
}

id PickerSuggestionAvailableClasses.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerSuggestionAvailableClasses();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PickerSuggestionAvailableClasses.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerSuggestionAvailableClasses();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PickerSuggestionAll.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PickerSuggestionAll.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerSuggestionAll.init(coder:)(v1);
}

unint64_t PickerSearchBasedSuggestion.Mode.init(rawValue:)(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D2134A80@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PickerSearchBasedSuggestion.Mode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id PickerSearchBasedSuggestion.__allocating_init(mode:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerSearchBasedSuggestion.init(mode:)(v1);
}

uint64_t sub_1D2134B70(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1D215315C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1D213662C(v10);
  return v8 & 1;
}

id PickerSearchBasedSuggestion.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerSearchBasedSuggestion.init(coder:)(v1);
}

uint64_t PickerAssetCollectionSuggestion.localIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PUPickerAssetCollectionSuggestion_localIdentifier);
  v2 = *(v0 + OBJC_IVAR___PUPickerAssetCollectionSuggestion_localIdentifier + 8);

  return v1;
}

id PickerAssetCollectionSuggestion.init(localIdentifier:extendedCuratedAssetsOnly:shouldReverseSortOrder:)()
{
  OUTLINED_FUNCTION_5_0();
  ObjectType = swift_getObjectType();
  v6 = &v1[OBJC_IVAR___PUPickerAssetCollectionSuggestion_localIdentifier];
  *v6 = v4;
  v6[1] = v3;
  v1[OBJC_IVAR___PUPickerAssetCollectionSuggestion_extendedCuratedAssetsOnly] = v2;
  v1[OBJC_IVAR___PUPickerAssetCollectionSuggestion_shouldReverseSortOrder] = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t PickerAssetCollectionSuggestion.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_1D21365BC(a1, v19);
  if (v20)
  {
    OUTLINED_FUNCTION_4_0(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17);
    if (swift_dynamicCast())
    {
      v11 = *(v1 + OBJC_IVAR___PUPickerAssetCollectionSuggestion_localIdentifier) == *&v18[OBJC_IVAR___PUPickerAssetCollectionSuggestion_localIdentifier] && *(v1 + OBJC_IVAR___PUPickerAssetCollectionSuggestion_localIdentifier + 8) == *&v18[OBJC_IVAR___PUPickerAssetCollectionSuggestion_localIdentifier + 8];
      if (v11 || (sub_1D215324C()) && *(v1 + OBJC_IVAR___PUPickerAssetCollectionSuggestion_extendedCuratedAssetsOnly) == v18[OBJC_IVAR___PUPickerAssetCollectionSuggestion_extendedCuratedAssetsOnly])
      {
        v14 = *(v1 + OBJC_IVAR___PUPickerAssetCollectionSuggestion_shouldReverseSortOrder);
        v15 = v18[OBJC_IVAR___PUPickerAssetCollectionSuggestion_shouldReverseSortOrder];

        v12 = v14 ^ v15 ^ 1;
        return v12 & 1;
      }
    }
  }

  else
  {
    sub_1D213662C(v19);
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t static PickerAssetCollectionSuggestion.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC6CF220 = a1;
  return result;
}

uint64_t sub_1D2135164@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC6CF220;
  return result;
}

uint64_t sub_1D21351B0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC6CF220 = v1;
  return result;
}

uint64_t PickerAssetCollectionSuggestion.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerAssetCollectionSuggestion.init(coder:)(v1);
}

uint64_t PickerAssetCollectionSuggestion.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1D2133F88(0, &qword_1EC6CF268, 0x1E696AEC0);
  v2 = sub_1D215312C();
  if (v2)
  {
    v3 = v2;
    v5 = 0;
    sub_1D21530CC();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall PickerAssetCollectionSuggestion.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___PUPickerAssetCollectionSuggestion_localIdentifier);
  v4 = *(v1 + OBJC_IVAR___PUPickerAssetCollectionSuggestion_localIdentifier + 8);
  v5 = sub_1D21530BC();
  v6 = sub_1D21530BC();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___PUPickerAssetCollectionSuggestion_extendedCuratedAssetsOnly);
  v8 = sub_1D21530BC();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___PUPickerAssetCollectionSuggestion_shouldReverseSortOrder);
  v10 = sub_1D21530BC();
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];
}

unint64_t PickerWallpaperSuggestion.Mode.init(rawValue:)(unint64_t result)
{
  if (result > 0x11)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D21355C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PickerWallpaperSuggestion.Mode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id PickerWallpaperSuggestion.__allocating_init(mode:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerWallpaperSuggestion.init(mode:)(v1);
}

id PickerWallpaperSuggestion.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerWallpaperSuggestion.init(coder:)(v1);
}

id PickerLivePhotoWithPossibleMotionEffectSuggestion.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerLivePhotoWithPossibleMotionEffectSuggestion.init(coder:)(v1);
}

id PickerPhotoWithGyroPosterSuggestion.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerPhotoWithGyroPosterSuggestion.init(coder:)(v1);
}

unint64_t PickerStyleablePhotoSuggestion.Mode.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D21359A0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PickerStyleablePhotoSuggestion.Mode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id PickerStyleablePhotoSuggestion.__allocating_init(mode:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerStyleablePhotoSuggestion.init(mode:)(v1);
}

id sub_1D2135A44(uint64_t a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v3[*a2] = 0;
  *&v3[*a3] = a1;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

BOOL sub_1D2135ADC(uint64_t a1, uint64_t *a2)
{
  swift_getObjectType();
  v5 = sub_1D21365BC(a1, v20);
  if (v21)
  {
    OUTLINED_FUNCTION_4_0(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18);
    if (swift_dynamicCast())
    {
      v13 = *a2;
      v14 = *(v2 + *a2);
      v15 = *&v19[v13];

      return v14 == v15;
    }
  }

  else
  {
    sub_1D213662C(v20);
  }

  return 0;
}

id PickerStyleablePhotoSuggestion.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerStyleablePhotoSuggestion.init(coder:)(v1);
}

id sub_1D2135BF0(uint64_t a1, void *a2, uint64_t (*a3)(id), void *a4)
{
  OUTLINED_FUNCTION_0_1();
  ObjectType = swift_getObjectType();
  v5[*a2] = 0;
  v10 = OUTLINED_FUNCTION_7_0();
  v11 = [v4 decodeIntegerForKey_];

  v12 = a3(v11);
  if (v13)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v5[*a4] = v12;
    v16.receiver = v5;
    v16.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v16, sel_init);
  }

  return v14;
}

void sub_1D2135CFC(void *a1, void *a2)
{
  v4 = *(v2 + *a2);
  v5 = OUTLINED_FUNCTION_7_0();
  [a1 encodeInteger:v4 forKey:v5];
}

id PickerPanoramasSuggestion.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerPanoramasSuggestion.init(coder:)(v1);
}

BOOL _s8PhotosUI19PickerSuggestionAllC7isEqualySbypSgF_0(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_1D21365BC(a1, v16);
  if (!v17)
  {
    sub_1D213662C(v16);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_4_0(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = v15;
LABEL_6:
  v11 = v10 != 0;

  return v11;
}

id PickerSpatialSuggestion.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerSpatialSuggestion.init(coder:)(v1);
}

id sub_1D213603C()
{
  OUTLINED_FUNCTION_0_1();
  ObjectType = swift_getObjectType();
  v1[*v0] = 0;
  v4.receiver = v1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id PickerGenerativeFeaturedSuggestion.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_1());
  v1 = OUTLINED_FUNCTION_1_1();
  return PickerGenerativeFeaturedSuggestion.init(coder:)(v1);
}

id sub_1D21360EC(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v2[*a2] = 0;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id _s8PhotosUI19PickerSuggestionAllCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D21361C4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF350, &qword_1D2158A10);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1D2134140(a4 + 4, v8, v10 + 4);
        a4[2] = 0;
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF358, &qword_1D2158A18);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1D21362D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
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
      v10 = sub_1D21363C8();
      v11 = *(v10 + 52);
      v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      v13[2] = v8;
      v13[3] = 2 * ((v14 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1D2134140(a4 + 4, v8, v13 + 4);
        a4[2] = 0;
LABEL_16:

        return v13;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v13 + 4, a4 + 4, 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21363C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF338, &qword_1D21589F8);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &unk_1EC6CF348;
    v2 = &unk_1D2158A08;
  }

  else
  {
    v1 = &unk_1EC6CF340;
    v2 = &unk_1D2158A00;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_1D21365BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF238, &qword_1D21585A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D213662C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6CF238, &qword_1D21585A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2136698()
{
  result = qword_1EC6CF2B8;
  if (!qword_1EC6CF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF2B8);
  }

  return result;
}

unint64_t sub_1D21366F0()
{
  result = qword_1EC6CF2C0;
  if (!qword_1EC6CF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF2C0);
  }

  return result;
}

unint64_t sub_1D2136748()
{
  result = qword_1EC6CF2C8;
  if (!qword_1EC6CF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6CF2C8);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_1D21530BC();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

uint64_t PUPickerFilterAvailableClasses()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
}

uint64_t PUPhotosAssetViewShowDebugOverlayView()
{
  result = MEMORY[0x1D3897370]();
  if (result)
  {
    CFPreferencesAppSynchronize(@"-g");
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"EnablePhotosAssetDebugOverlay", @"-g", &keyExistsAndHasValidFormat))
    {
      v1 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v1 = 1;
    }

    return !v1;
  }

  return result;
}

void sub_1D21414B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D2142638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D21430C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D21434B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2143938(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1D21444B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2146944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D21476A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v54 - 248), 8);
  _Block_object_dispose((v54 - 200), 8);
  _Block_object_dispose((v54 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D215087C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak((v32 + 48));
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a32);
  objc_destroyWeak((v33 - 120));
  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

void sub_1D21510A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D215138C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2151530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}