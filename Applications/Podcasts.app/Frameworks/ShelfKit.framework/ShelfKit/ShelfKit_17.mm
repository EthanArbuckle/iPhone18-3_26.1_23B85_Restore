Swift::Int sub_1C680C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_3EE794(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for LegacyLockup();
        v8 = sub_3ED5E4();
        *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_1C4378(v9, v10, a1, v6, a2);

      *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1C5DB0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1C6968(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_2A67E8(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1C680C(v8, a2);

  sub_3EE4A4();
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1C6A14()
{
  result = qword_4F7710;
  if (!qword_4F7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7710);
  }

  return result;
}

unint64_t sub_1C6A68()
{
  result = qword_4F7778;
  if (!qword_4F7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7778);
  }

  return result;
}

unint64_t sub_1C6ABC()
{
  result = qword_4F77C8;
  if (!qword_4F77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F77C8);
  }

  return result;
}

unint64_t sub_1C6B10()
{
  result = qword_4F7830;
  if (!qword_4F7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7830);
  }

  return result;
}

uint64_t static SearchContent.emptyResults.getter@<X0>(uint64_t a1@<X8>)
{
  static GroupedSearchResultsPage.empty.getter(a1);
  type metadata accessor for SearchContent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for SearchContent()
{
  result = qword_4F78B8;
  if (!qword_4F78B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6C14()
{
  sub_17C6B0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ModernPage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GroupedSearchResultsPage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ContentUnavailablePage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void SearchContentRequest.hash(into:)()
{
  v1 = *(v0 + 32);
  if (v1 >> 6)
  {
    v2 = *(v0 + 24);
    if (v1 >> 6 == 1)
    {
      sub_3EE964(3uLL);
      sub_3ED394();
      if (v2)
      {
        sub_3EE974(1u);
        sub_3ED394();
      }

      else
      {
        sub_3EE974(0);
      }

      sub_3E6244();
      sub_3ED394();
    }

    else
    {
      if (*(v0 + 16) | *(v0 + 8) | *v0 | v2 || v1 != 128)
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }

      sub_3EE964(v3);
    }
  }

  else
  {
    sub_3EE964(1uLL);

    sub_3ED394();
  }
}

Swift::Int SearchContentRequest.hashValue.getter()
{
  sub_3EE954();
  SearchContentRequest.hash(into:)();
  return sub_3EE9A4();
}

Swift::Int sub_1C6E50()
{
  sub_3EE954();
  SearchContentRequest.hash(into:)();
  return sub_3EE9A4();
}

uint64_t sub_1C6E8C(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s8ShelfKit20SearchContentRequestO2eeoiySbAC_ACtFZ_0(v5, v7) & 1;
}

double SearchContentRequest.init(from:with:)@<D0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C7390(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t SearchContentRequest.merge(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v22 = v6;
  if ((v4 & 0xC0) != 0x40)
  {
    goto LABEL_9;
  }

  v9 = *v2;
  v10 = v2[3];
  v11 = v2[1];
  if (v8 >> 6 == 1)
  {
    v21 = *(v2 + 1);
    v14 = v9 == v5 && v11 == v6;
    if (!v14 && (sub_3EE804() & 1) == 0)
    {
      goto LABEL_22;
    }

    v15 = sub_3E6244();
    v17 = v16;
    if (v15 == sub_3E6244() && v17 == v18)
    {
    }

    else
    {
      v20 = sub_3EE804();

      if ((v20 & 1) == 0)
      {
LABEL_22:

        goto LABEL_10;
      }
    }

LABEL_24:

    v5 = v9;
    v7 = v10;
    LOBYTE(v8) = v4;
    v13 = v21;
    goto LABEL_11;
  }

  if (v8 >> 6 || (v2[4] & 1) == 0)
  {
LABEL_9:
    result = sub_1C7508(a1, v23);
    goto LABEL_10;
  }

  v21 = *(v2 + 1);
  if (v9 == v5 && v11 == v6 || (sub_3EE804() & 1) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v13 = v22;
LABEL_11:
  *a2 = v5;
  *(a2 + 8) = v13;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

__n128 SearchContentRequest.withScope(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v8 = *(v2 + 8);
  if ((v6 & 0xC0) == 0x40)
  {
    v6 = a1 & 1 | 0x40;
  }

  else
  {
    sub_1C7508(v2, v9);
  }

  *a2 = v4;
  result = v8;
  *(a2 + 8) = v8;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t _s8ShelfKit20SearchContentRequestO2eeoiySbAC_ACtFZ_0(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 32);
  if (v5 >> 6)
  {
    v7 = a1[2];
    v6 = a1[3];
    if (v5 >> 6 == 1)
    {
      if ((a2[2].i8[0] & 0xC0) == 0x40)
      {
        v9 = a2[1].i64[0];
        v8 = a2[1].i64[1];
        v10 = v3 == a2->i64[0] && v4 == a2->i64[1];
        if (v10 || (sub_3EE804() & 1) != 0)
        {
          if (v6)
          {
            if (v8 && (v7 == v9 && v6 == v8 || (sub_3EE804() & 1) != 0))
            {
              goto LABEL_36;
            }
          }

          else if (!v8)
          {
LABEL_36:
            v16 = sub_3E6244();
            v18 = v17;
            if (v16 == sub_3E6244() && v18 == v19)
            {

              return 1;
            }

            else
            {
              v20 = sub_3EE804();

              return v20 & 1;
            }
          }
        }
      }

      return 0;
    }

    if (v7 | v4 | v3 | v6 || v5 != 128)
    {
      v15 = a2[2].u8[0];
      if ((v15 & 0xC0) != 0x80 || v15 != 128 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
      {
        return 0;
      }
    }

    else
    {
      v13 = a2[2].u8[0];
      if ((v13 & 0xC0) != 0x80)
      {
        return 0;
      }

      if (v13 != 128)
      {
        return 0;
      }

      v14 = vorrq_s8(*a2, a2[1]);
      if (vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (a2[2].u8[0] > 0x3Fu)
  {
    return 0;
  }

  if (v3 == a2->i64[0] && v4 == a2->i64[1])
  {
    return 1;
  }

  return sub_3EE804();
}

uint64_t sub_1C7390@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(result + 8);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v5 = *result;
  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = *(result + 32);
  v9 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v9 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = a2;
    v11 = a2;

    if (v11 == 2)
    {
      v10 = sub_3E6224();
    }

    result = sub_1C76B8(v5, v4);
    if (v8 <= 2)
    {
      if (v8 > 1)
      {
        v12 = v10 & 1 | 0x40;
      }

      else if (v10)
      {

        v7 = 0;
        v6 = 0;
        v12 = 0;
      }

      else
      {
        v12 = 64;
      }

      goto LABEL_18;
    }

    v5 = 0;
    v4 = 0;
LABEL_17:
    v7 = 0;
    v6 = 0;
    v12 = 0x80;
    goto LABEL_18;
  }

  result = sub_1C76B8(*result, v4);
  if (v8)
  {
    v5 = v8 == 5;
  }

  else
  {
    v5 = 1;
  }

  v4 = 0;
  v7 = 0;
  v6 = 0;
  v12 = 0x80;
LABEL_18:
  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  *(a3 + 32) = v12;
  return result;
}

unint64_t sub_1C7544()
{
  result = qword_4F78F0;
  if (!qword_4F78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F78F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit20SearchContentRequestO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C75B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C760C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C7678(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

uint64_t sub_1C76B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SearchController.__allocating_init(asPartOf:)()
{
  swift_allocObject();
  v0 = sub_1CB9B0();

  return v0;
}

uint64_t SearchController.init(asPartOf:)()
{
  v0 = sub_1CB9B0();

  return v0;
}

uint64_t SearchController.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC8ShelfKit16SearchController_metricsPipeline;
  v2 = sub_3EC4A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit16SearchController_storeDataProvider);
  return v0;
}

uint64_t SearchController.__deallocating_deinit()
{
  SearchController.deinit();

  return swift_deallocClassInstance();
}

void SearchController.dependenciesDidChange(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1CBE3C(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1C7940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE350);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_3EC794();
  sub_3EC364();
  return sub_1CCA74(v4, a1);
}

uint64_t SearchController.selectedHintIndex.getter()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = *(v1 + *(type metadata accessor for SearchController.State(0) + 20) + v2);
  os_unfair_lock_unlock((v1 + v3));
  return v4;
}

Swift::Void __swiftcall SearchController.selectHint(at:)(Swift::Int at)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = v3 + *(type metadata accessor for SearchController.State(0) + 20) + v4;
  *v6 = at;
  *(v6 + 8) = 0;

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t SearchController.publisher(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7938);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7940);
  __chkstk_darwin(v6);
  v10 = &v24[-1] - v9;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 32);
  if (v13 >> 6)
  {
    v23 = v3;
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    if (v13 >> 6 == 1)
    {
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = v12;
      *(v17 + 32) = v11;
      *(v17 + 40) = v15;
      *(v17 + 48) = v14;
      *(v17 + 56) = v13 & 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7948);
      sub_886BC(&qword_4F7950, &qword_4F7948);
      sub_3E8CF4();
      sub_886BC(&qword_4F7958, &qword_4F7938);
      v18 = sub_3E9F94();
      (*(v23 + 8))(v5, v2);
      return v18;
    }

    else if (v15 | v11 | v12 | v14 || v13 != 128)
    {

      return sub_1C81AC();
    }

    else
    {
      v20 = v7;
      v21 = v8;
      type metadata accessor for SearchContent();
      sub_3E9E04();
      sub_886BC(&qword_4F7960, &qword_4F7940);
      v22 = sub_3E9F94();
      (*(v21 + 8))(v10, v20);
      return v22;
    }
  }

  else if (static SearchTermValidating.isValid(searchString:)(*a1, *(a1 + 8)))
  {

    return sub_1C7F44(v12, v11);
  }

  else
  {
    v24[0] = 1;
    memset(&v24[1], 0, 24);
    v25 = 0x80;
    return SearchController.publisher(for:)(v24);
  }
}

uint64_t sub_1C7F44(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7AF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC8ShelfKit16SearchController_storeDataProvider + 24);
  v10 = *(v2 + OBJC_IVAR____TtC8ShelfKit16SearchController_storeDataProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC8ShelfKit16SearchController_storeDataProvider), v9);
  (*(v10 + 160))(a1, a2, v9, v10);
  v11 = sub_3ECD24();

  v16[1] = v11;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B00);
  type metadata accessor for SearchContent();
  sub_886BC(&qword_4F7B08, &qword_4F7B00);
  sub_3EA024();

  sub_886BC(&qword_4F7B10, &qword_4F7AF8);
  v14 = sub_3E9F94();
  (*(v6 + 8))(v8, v5);
  return v14;
}

uint64_t sub_1C81AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7940);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v6 - 8);
  v54 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B30);
  v45 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B38);
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B40);
  v49 = *(v14 - 8);
  v50 = v14;
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B48);
  v52 = *(v17 - 8);
  v53 = v17;
  __chkstk_darwin(v17);
  v48 = &v41 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B50);
  v55 = *(v19 - 8);
  __chkstk_darwin(v19);
  v51 = &v41 - v20;
  v21 = sub_3E7424();
  v58 = v21;
  v59 = sub_1CC628(&qword_4F07A0, &type metadata accessor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v57);
  (*(*(v21 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.recentlySearched(_:), v21);
  LOBYTE(v21) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  if ((v21 & 1) != 0 && (v23 = *(v1 + OBJC_IVAR____TtC8ShelfKit16SearchController_recentlySearchedStore)) != 0 && (v24 = *(v1 + 64)) != 0)
  {
    v42 = *(v1 + 72);
    v25 = *(v1 + OBJC_IVAR____TtC8ShelfKit16SearchController_searchLockupCache);
    v44 = v23;
    v26 = v24;

    swift_unknownObjectRetain();

    v27 = sub_1DE324();
    v41 = v27;

    v56 = v27;
    sub_1F958(v1 + 24, &v57);
    v28 = swift_allocObject();
    v28[2] = v25;
    sub_1D4F0(&v57, (v28 + 3));
    v43 = v26;
    v29 = v42;
    v28[8] = v26;
    v28[9] = v29;
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EE0);
    v42 = v19;
    sub_886BC(&qword_4F7B60, &qword_4F7B58);
    sub_3EA024();

    sub_886BC(&qword_4F7B68, &qword_4F7B30);
    sub_886BC(&qword_4F5EF0, &qword_4F5EE0);
    sub_3EA184();
    (*(v45 + 8))(v10, v8);
    sub_36174(0, &qword_4F10B0);
    v30 = sub_3EDBC4();
    *&v57 = v30;
    v31 = sub_3EDB64();
    v32 = v54;
    (*(*(v31 - 8) + 56))(v54, 1, 1, v31);
    sub_886BC(&qword_4F7B70, &qword_4F7B38);
    sub_87870();
    v33 = v47;
    sub_3EA114();
    sub_FCF8(v32, &qword_4F69E0);
    (*(v46 + 8))(v13, v33);

    type metadata accessor for ModernPage();
    sub_886BC(&qword_4F7B78, &qword_4F7B40);
    v34 = v48;
    v35 = v50;
    sub_3EA024();
    (*(v49 + 8))(v16, v35);
    type metadata accessor for SearchContent();
    sub_886BC(&qword_4F7B80, &qword_4F7B48);
    v36 = v51;
    v37 = v53;
    sub_3EA024();
    (*(v52 + 8))(v34, v37);
    sub_886BC(&qword_4F7B88, &qword_4F7B50);
    v38 = v42;
    v39 = sub_3E9F94();
    swift_unknownObjectRelease();

    (*(v55 + 8))(v36, v38);
  }

  else
  {
    type metadata accessor for SearchContent();
    sub_3E9E04();
    sub_886BC(&qword_4F7960, &qword_4F7940);
    v39 = sub_3E9F94();
    (*(v3 + 8))(v5, v2);
  }

  return v39;
}

uint64_t sub_1C8ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t *a8@<X8>)
{
  LODWORD(v33) = a7;
  v34 = a5;
  v35 = a6;
  v31 = a3;
  v32 = a4;
  v36 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B90);
  v40 = *(v10 - 8);
  __chkstk_darwin(v10);
  v38 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B98);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v39 = &v30 - v14;
  v41 = type metadata accessor for SearchContent();
  v37 = *(v41 - 8);
  __chkstk_darwin(v41);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7BA0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v30 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = v35;
    v35 = Strong;
    v42 = sub_1C903C(v31, v32, v34, v22, v33 & 1);
    v23 = swift_allocObject();
    *(v23 + 16) = v36;
    *(v23 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7BB0);
    v33 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7948);
    v34 = v12;
    v36 = v13;
    sub_886BC(&qword_4F7BB8, &qword_4F7BB0);
    sub_886BC(&qword_4F7950, &qword_4F7948);
    v24 = v38;
    sub_3EA054();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7BC0);
    *(swift_allocObject() + 16) = xmmword_3F5630;
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4F7BC8, &qword_4F7B90);
    v25 = v39;
    v26 = v33;
    sub_3EA104();

    (*(v40 + 8))(v24, v26);
    sub_886BC(&qword_4F7BD0, &qword_4F7B98);
    v27 = v34;
    v28 = sub_3E9F94();

    result = (*(v36 + 8))(v25, v27);
  }

  else
  {
    static GroupedSearchResultsPage.empty.getter(v16);
    swift_storeEnumTagMultiPayload();
    sub_3E9DF4();
    sub_886BC(&qword_4F7BA8, &qword_4F7BA0);
    v28 = sub_3E9F94();
    result = (*(v18 + 8))(v20, v17);
  }

  *a8 = v28;
  return result;
}

uint64_t sub_1C903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v41 = a1;
  v42 = a3;
  v40 = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7BD8);
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v43 = v39 - v10;
  v46 = sub_3E97B4();
  v11 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v39 - v15;
  if (qword_4E8A30 != -1)
  {
    swift_once();
  }

  v17 = sub_3E9854();
  __swift_project_value_buffer(v17, qword_4F78F8);
  sub_3E9834();
  sub_3E9784();
  v18 = sub_3E9834();
  v19 = sub_3EDC84();
  if (sub_3EE014())
  {
    v39[1] = v5;
    v20 = a5;
    if (a5)
    {
      v21 = "StoreSearchProvider";
    }

    else
    {
      v21 = "LibrarySearchProvider";
    }

    v22 = v16;
    v23 = v11;
    v24 = a2;
    v25 = a4;
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_3E9794();
    v28 = v21;
    a5 = v20;
    _os_signpost_emit_with_name_impl(&dword_0, v18, v19, v27, v28, "", v26, 2u);
    a4 = v25;
    a2 = v24;
    v11 = v23;
    v16 = v22;
  }

  (*(v11 + 16))(v13, v16, v46);
  sub_3E98A4();
  swift_allocObject();
  v29 = sub_3E9894();
  v30 = a5 & 1;
  v31 = v41;
  sub_1CAEF0(v41, a2, v30);
  v32 = sub_3ECD54();

  v47 = v32;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  *(v34 + 24) = v29;
  *(v34 + 32) = v33;
  *(v34 + 40) = v31;
  *(v34 + 48) = a2;
  *(v34 + 56) = v42;
  *(v34 + 64) = a4;
  *(v34 + 72) = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7BE0);
  type metadata accessor for SearchContent();
  sub_886BC(&qword_4F7BE8, &qword_4F7BE0);
  v35 = v43;
  sub_3EA024();

  sub_886BC(&qword_4F7BF0, &qword_4F7BD8);
  v36 = v45;
  v37 = sub_3E9F94();

  (*(v44 + 8))(v35, v36);
  (*(v11 + 8))(v16, v46);
  return v37;
}

uint64_t sub_1C94F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = a4;
  v7 = type metadata accessor for SearchContent();
  __chkstk_darwin(v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7BA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  *v9 = *a1;
  v9[1] = a2;
  v9[2] = a3;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();

  sub_3E9DF4();
  sub_886BC(&qword_4F7BA8, &qword_4F7BA0);
  v14 = sub_3E9F94();
  result = (*(v11 + 8))(v13, v10);
  *v17 = v14;
  return result;
}

uint64_t sub_1C96B0()
{
  v0 = sub_3E9854();
  __swift_allocate_value_buffer(v0, qword_4F78F8);
  __swift_project_value_buffer(v0, qword_4F78F8);
  return sub_3E97E4();
}

uint64_t sub_1C96FC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int (**a5)(uint64_t *, uint64_t, uint64_t)@<X8>)
{
  v46 = a4;
  v45 = a3;
  v50 = a2;
  v57 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v6 - 8);
  v56 = (&v42 - v7);
  v59 = type metadata accessor for ModernShelf();
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_3EC164();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_3ECCF4();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModernPage();
  __chkstk_darwin(v11);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v44 = sub_3EC044();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B18);
  __chkstk_darwin(v18 - 8);
  v20 = &v42 - v19;
  v21 = type metadata accessor for SearchHintsPage();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD0(v57, v20, &qword_4F7B18);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_FCF8(v20, &qword_4F7B18);
    sub_3ECCA4();
    sub_3EC154();
    *(a5 + *(v11 + 24)) = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1CC2CC(v20, v24, type metadata accessor for SearchHintsPage);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v26 = v24;
    v50 = v24;
    if (Strong)
    {
      v57 = Strong;
      sub_3E8564();
      sub_3E8494();
      v27 = sub_3E5DC4();
      (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
      sub_3E67A4();
      v26 = v50;
      sub_3EBFD4();
      v67 = v61;
      sub_FCF8(&v67, &unk_4F8A10);
      v66 = v62;
      sub_FCF8(&v66, &qword_4E94E0);
      v65 = v63;
      sub_FCF8(&v65, &unk_4F8A20);
      sub_16AC0(v64);

      sub_FCF8(v15, &unk_4E9EE0);
      v60[3] = v21;
      v60[4] = sub_1CC628(&qword_4F7B20, type metadata accessor for SearchHintsPage);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v60);
      sub_1CC75C(v26, boxed_opaque_existential_0Tm, type metadata accessor for SearchHintsPage);
      sub_1CA0F4(v17, v60);

      (*(v43 + 8))(v17, v44);
      sub_FCF8(v60, &qword_4F7B28);
    }

    sub_3ECCA4();
    (*(v53 + 16))(v52, v26 + *(v21 + 24), v54);
    v29 = *(v26 + 8);
    if (v29 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
    {
      v31 = v56;
      v46 = a5;
      if (!i)
      {
        break;
      }

      v32 = 0;
      v57 = v29 & 0xC000000000000001;
      a5 = (v55 + 48);
      v33 = _swiftEmptyArrayStorage;
      v34 = v11;
      while (1)
      {
        if (v57)
        {
          v36 = sub_3EE3F4();
        }

        else
        {
          if (v32 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_26;
          }

          v36 = *(v29 + 8 * v32 + 32);
        }

        v37 = v36;
        v11 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        Shelf.mapToModernShelf()(v31);

        if ((*a5)(v31, 1, v59) == 1)
        {
          sub_FCF8(v31, &unk_503DA0);
        }

        else
        {
          sub_1CC2CC(v31, v58, type metadata accessor for ModernShelf);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_E02B0(0, v33[2] + 1, 1, v33);
          }

          v39 = v33[2];
          v38 = v33[3];
          if (v39 >= v38 >> 1)
          {
            v33 = sub_E02B0(v38 > 1, v39 + 1, 1, v33);
          }

          v33[2] = v39 + 1;
          sub_1CC2CC(v58, v33 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v39, type metadata accessor for ModernShelf);
          v31 = v56;
        }

        ++v32;
        v35 = v11 == i;
        v11 = v34;
        if (v35)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v33 = _swiftEmptyArrayStorage;
LABEL_23:
    sub_1CC334(v50, type metadata accessor for SearchHintsPage);
    v40 = v47;
    (*(v48 + 32))(v47, v51, v49);
    (*(v53 + 32))(v40 + *(v11 + 20), v52, v54);
    *(v40 + *(v11 + 24)) = v33;
    sub_1CC2CC(v40, v46, type metadata accessor for ModernPage);
  }

  type metadata accessor for SearchContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CA0F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v102 = a1;
  v87 = sub_3EBBC4();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_3EBC14();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EC044();
  v112 = *(v7 - 8);
  v113 = v7;
  __chkstk_darwin(v7);
  v109 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v8;
  __chkstk_darwin(v9);
  v106 = v81 - v10;
  v108 = sub_3EC4A4();
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v11;
  __chkstk_darwin(v12);
  v105 = v81 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3198);
  v99 = *(v114 - 8);
  __chkstk_darwin(v114);
  v98 = v81 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F31A0);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE350);
  __chkstk_darwin(v16 - 8);
  v18 = v81 - v17;
  v19 = type metadata accessor for SearchController.State(0);
  __chkstk_darwin(v19);
  v91 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3EC794();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v103 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v104 = v81 - v25;
  __chkstk_darwin(v26);
  v92 = v81 - v27;
  __chkstk_darwin(v28);
  v93 = v81 - v29;
  v97 = v30;
  __chkstk_darwin(v31);
  v110 = v81 - v32;
  v89 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v89);
  v88 = v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_3EC164();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD0(a2, aBlock, &qword_4F7B28);
  if (v116)
  {
    v81[1] = v19;
    __swift_project_boxed_opaque_existential_1(aBlock, v116);
    sub_3ECEF4();
    v38 = sub_3EC064();
    (*(v35 + 8))(v37, v34);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if (v38)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_FCF8(aBlock, &qword_4F7B28);
  }

  v39 = v88;
  v40 = v89;
  sub_3E9874();
  v38 = *(v39 + *(v40 + 28));

  sub_1CC334(v39, type metadata accessor for MetricsActivity.State);

LABEL_6:
  v41 = v91;
  sub_3E9874();
  sub_1CC394(v41, v18);
  v42 = *(v22 + 48);
  v43 = v42(v18, 1, v21);
  v44 = v92;
  if (v43 == 1)
  {
    sub_3EC784();
    if (v42(v18, 1, v21) != 1)
    {
      sub_FCF8(v18, &qword_4EE350);
    }
  }

  else
  {
    (*(v22 + 32))(v92, v18, v21);
  }

  aBlock[0] = *(v3 + OBJC_IVAR____TtC8ShelfKit16SearchController_pageContextTracker);

  v45 = v94;
  sub_3EC734();
  sub_3E87F4();
  v46 = v93;
  sub_3EC724();
  (*(v95 + 8))(v45, v96);

  v47 = *(v22 + 8);
  v47(v44, v21);
  aBlock[0] = v38;
  v48 = v98;
  sub_3EC754();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0);
  sub_3EC704();
  (*(v99 + 8))(v48, v114);
  v99 = v22 + 8;
  v98 = v47;
  v47(v46, v21);

  v49 = *(v111 + 16);
  v50 = v3 + OBJC_IVAR____TtC8ShelfKit16SearchController_metricsPipeline;
  v51 = v105;
  v114 = v21;
  v52 = v108;
  v49(v105, v50, v108);
  v90 = v22;
  v53 = *(v112 + 16);
  v54 = v106;
  v53(v106, v102, v113);
  v55 = *(v22 + 16);
  v56 = v104;
  v55(v104, v110, v114);
  v49(v107, v51, v52);
  v57 = v54;
  v58 = v113;
  v53(v109, v57, v113);
  v59 = v103;
  v55(v103, v56, v114);
  v61 = v111;
  v60 = v112;
  v62 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v63 = (v100 + *(v112 + 80) + v62) & ~*(v112 + 80);
  v64 = v90;
  v65 = (v101 + *(v90 + 80) + v63) & ~*(v90 + 80);
  v66 = swift_allocObject();
  v67 = *(v61 + 32);
  v68 = v114;
  v67(v66 + v62, v105, v52);
  (*(v60 + 32))(v66 + v63, v106, v58);
  (*(v64 + 32))(v66 + v65, v104, v68);
  if ([objc_opt_self() isMainThread])
  {
    v69 = v109;
    v70 = v107;
    sub_3EC494();

    v71 = v69;
  }

  else
  {
    sub_36174(0, &qword_4F10B0);
    v72 = sub_3EDBC4();
    v73 = swift_allocObject();
    *(v73 + 16) = sub_130C60;
    *(v73 + 24) = v66;
    v117 = sub_FE5AC;
    v118 = v73;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    v116 = &block_descriptor_14;
    v74 = _Block_copy(aBlock);

    v75 = v82;
    sub_3EBBE4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1CC628(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_886BC(&qword_506A30, &unk_503DE0);
    v76 = v84;
    v77 = v87;
    v68 = v114;
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v74);

    v78 = v77;
    v59 = v103;
    (*(v86 + 8))(v76, v78);
    (*(v83 + 8))(v75, v85);
    v71 = v109;
    v70 = v107;
  }

  v79 = v98;
  (v98)(v59, v68);
  (*(v112 + 8))(v71, v113);
  (*(v111 + 8))(v70, v108);
  return v79(v110, v68);
}

uint64_t sub_1CAE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CC75C(a1, a2, type metadata accessor for ModernPage);
  type metadata accessor for SearchContent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CAEF0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for GroupedSearchResultsPage();
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E9A04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = *(v3 + OBJC_IVAR____TtC8ShelfKit16SearchController_storeDataProvider + 24);
    v16 = *(v3 + OBJC_IVAR____TtC8ShelfKit16SearchController_storeDataProvider + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC8ShelfKit16SearchController_storeDataProvider), v15);
    return (*(v16 + 152))(a1, a2, v15, v16);
  }

  else if (*(v3 + 64))
  {
    v18 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 432);
    swift_unknownObjectRetain();
    v21 = v20(a1, a2, ObjectType, v18);
    swift_unknownObjectRelease();
    return v21;
  }

  else
  {
    v22 = v12;
    sub_36174(0, &qword_4F6BF0);
    sub_3EE0A4();
    v23 = sub_3E99F4();
    v24 = sub_3ED9D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Cannot fetch library search results without library data provider!", v25, 2u);
    }

    (*(v11 + 8))(v14, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7BF8);
    static GroupedSearchResultsPage.empty.getter(v9);
    return sub_3ECDB4();
  }
}

uint64_t sub_1CB168@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v65 = a6;
  v66 = a7;
  v63 = a4;
  v64 = a5;
  v72 = a3;
  v71 = a2;
  v70 = a8;
  v9 = sub_3EC044();
  v67 = *(v9 - 8);
  v68 = v9;
  __chkstk_darwin(v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v69 = type metadata accessor for GroupedSearchResultsPage();
  v62 = *(v69 + 24);
  v15 = sub_3EC064();
  if (v15)
  {
    v16 = v15;
    v17 = sub_3E78E4();
    sub_127790(v17, v18, v16, v14);
  }

  else
  {
    v19 = sub_3E5DC4();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v21 = *(Strong + 16), v22 = *(*v21 + class metadata base offset for ManagedBuffer + 16), v23 = (*(*v21 + 48) + 3) & 0x1FFFFFFFCLL, os_unfair_lock_lock((v21 + v23)), v24 = (v21 + *(type metadata accessor for SearchController.State(0) + 20) + v22), v25 = *v24, LODWORD(v22) = *(v24 + 8), *v24 = 0, *(v24 + 8) = 1, os_unfair_lock_unlock((v21 + v23)), , v22 != 1))
  {
    swift_beginAccess();
    v27 = swift_weakLoadStrong();
    if (!v27)
    {
      goto LABEL_11;
    }

    v61 = v27;
    v28 = sub_3E85E4();
    v57 = v29;
    v58 = v28;
    v30 = sub_3E8464();
    v59 = v31;
    v60 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F32B8);
    inited = swift_initStackObject();
    v56 = xmmword_3F5310;
    *(inited + 16) = xmmword_3F5310;
    *(inited + 32) = 0x6E6F697461636F6CLL;
    *(inited + 40) = 0xE800000000000000;
    v33 = swift_initStackObject();
    *(v33 + 16) = v56;
    *(v33 + 32) = 0xD000000000000010;
    *(v33 + 40) = 0x800000000042A1C0;
    *(v33 + 48) = v25;
    *(v33 + 72) = &type metadata for Int;
    strcpy((v33 + 80), "locationType");
    *(v33 + 120) = &type metadata for String;
    *(v33 + 93) = 0;
    *(v33 + 94) = -5120;
    *(v33 + 96) = 0x7473694C746E6948;
    *(v33 + 104) = 0xE800000000000000;
    v34 = sub_61EB0(v33);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC480);
    swift_arrayDestroy();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0);
    *(inited + 48) = v34;
    *(inited + 72) = v35;
    *(inited + 80) = 0x6449746567726174;
    *(inited + 120) = &type metadata for Int;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = v25;
    sub_61EB0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_3E67A4();
    sub_3EBFD4();
    v82[0] = v76;
    sub_FCF8(v82, &unk_4F8A10);
    v81 = v77;
    sub_FCF8(&v81, &qword_4E94E0);
    v80 = v78;
    sub_FCF8(&v80, &unk_4F8A20);
    sub_16AC0(v79);

    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    v26 = v11;
  }

  else
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_11;
    }

    sub_3E8594();
    sub_3E84C4();
    sub_3E67A4();
    sub_3EBFD4();
    v82[0] = v76;
    sub_FCF8(v82, &unk_4F8A10);
    v81 = v77;
    sub_FCF8(&v81, &qword_4E94E0);
    v80 = v78;
    sub_FCF8(&v80, &unk_4F8A20);
    sub_16AC0(v79);

    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    v26 = v11;
  }

  sub_1CA0F4(v26, &v73);

  sub_FCF8(&v73, &qword_4F7B28);
  (*(v67 + 8))(v11, v68);
LABEL_11:
  if (*(*(a1 + *(v69 + 20)) + 16))
  {
    sub_FCF8(v14, &unk_4E9EE0);
    sub_1CC75C(a1, v70, type metadata accessor for GroupedSearchResultsPage);
  }

  else
  {
    v36 = objc_opt_self();
    v37 = [v36 mainBundle];
    v54._countAndFlagsBits = 0xE000000000000000;
    v83._countAndFlagsBits = 0xD000000000000017;
    v83._object = 0x800000000042A180;
    v85.value._countAndFlagsBits = 0;
    v85.value._object = 0;
    v38.super.isa = v37;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    v69 = sub_3E5A74(v83, v85, v38, v87, v54);
    v40 = v39;

    v41 = sub_3ECCF4();
    v42 = a1;
    v43 = v70;
    (*(*(v41 - 8) + 16))(v70, v42, v41);
    v44 = [v36 mainBundle];
    v55._countAndFlagsBits = 0xE000000000000000;
    v84._countAndFlagsBits = 0xD000000000000011;
    v84._object = 0x800000000042A1A0;
    v86.value._countAndFlagsBits = 0;
    v86.value._object = 0;
    v45.super.isa = v44;
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    v46 = sub_3E5A74(v84, v86, v45, v88, v55);
    v48 = v47;

    sub_FCF8(v14, &unk_4E9EE0);
    v49 = type metadata accessor for ContentUnavailablePage();
    v50 = *(v49 + 24);
    v51 = sub_3EC164();
    (*(*(v51 - 8) + 16))(v43 + v50, v42 + v62, v51);
    v52 = (v43 + *(v49 + 20));
    *v52 = 0;
    v52[1] = 0;
    v52[2] = v69;
    v52[3] = v40;
    v52[4] = v46;
    v52[5] = v48;
    v52[6] = _swiftEmptyArrayStorage;
  }

  type metadata accessor for SearchContent();
  swift_storeEnumTagMultiPayload();
  return sub_1CC7C4(v71 & 1);
}

uint64_t sub_1CB9B0()
{
  v1 = v0;
  v2 = sub_3EC4A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE350);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for SearchController.State(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3EC794();
  sub_3EC364();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = &v12[*(v10 + 28)];
  sub_1CCA74(v8, v12);
  *v14 = 0;
  v14[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C00);
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1CC2CC(v12, v15 + *(*v15 + class metadata base offset for ManagedBuffer + 16), type metadata accessor for SearchController.State);
  *(v1 + 16) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
  sub_3EC394();
  sub_1D4F0(v22, v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3EC364();
  *(v1 + 64) = v22[0];
  type metadata accessor for MetricsActivity();
  sub_3EC364();
  v16 = *&v22[0];
  if (!*&v22[0])
  {
    if (qword_4E89B8 != -1)
    {
      swift_once();
    }

    v16 = qword_4F2F70;
  }

  *(v1 + 80) = v16;
  sub_3EC394();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC8ShelfKit16SearchController_metricsPipeline, v5, v2);
  sub_3E87F4();
  sub_3EC364();
  v17 = *&v22[0];
  if (!*&v22[0])
  {
    v17 = sub_3E87E4();
  }

  *(v1 + OBJC_IVAR____TtC8ShelfKit16SearchController_pageContextTracker) = v17;
  type metadata accessor for RecentlySearchedStorage();
  sub_3EC364();
  *(v1 + OBJC_IVAR____TtC8ShelfKit16SearchController_recentlySearchedStore) = *&v22[0];
  type metadata accessor for SearchLockupCache();
  v18 = swift_allocObject();
  v19 = sub_62C10(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C08);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  *(v18 + 16) = v20;
  *(v1 + OBJC_IVAR____TtC8ShelfKit16SearchController_searchLockupCache) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3EC394();
  sub_1D4F0(v22, v1 + OBJC_IVAR____TtC8ShelfKit16SearchController_storeDataProvider);
  [objc_opt_self() supportsLocalLibrary];
  return v1;
}

uint64_t sub_1CBE78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1CBEB0()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1CBF34()
{
  result = sub_3EC4A4();
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

uint64_t sub_1CC04C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE350);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CC0D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE350);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1CC154()
{
  sub_1CC1D8();
  if (v0 <= 0x3F)
  {
    sub_1CC230();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CC1D8()
{
  if (!qword_4F7AC0)
  {
    sub_3EC794();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F7AC0);
    }
  }
}

void sub_1CC230()
{
  if (!qword_4F7AC8)
  {
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F7AC8);
    }
  }
}

uint64_t sub_1CC280()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1CC2CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CC334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CC394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CC404()
{
  v17 = sub_3EC4A4();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_3EC044();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_3EC794();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_1CC5D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CC628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CC670()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1CC6D4()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1CC75C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CC7C4(int a1)
{
  LODWORD(v18) = a1;
  v1 = sub_3E9864();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E97B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E8A30 != -1)
  {
    swift_once();
  }

  v9 = sub_3E9854();
  __swift_project_value_buffer(v9, qword_4F78F8);
  v10 = sub_3E9834();
  sub_3E9884();
  v11 = sub_3EDC74();
  if (sub_3EE014())
  {
    v12 = "LibrarySearchProvider";
    if (v18)
    {
      v12 = "StoreSearchProvider";
    }

    v18 = v12;

    sub_3E98B4();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v11, v15, v18, v13, v14, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CCA74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void SearchFacetFilter.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    sub_3EE974(0);
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_3EE974(0);
    return;
  }

  sub_3EE974(1u);
  sub_3ED394();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_3EE974(1u);

  sub_3ED394();
}

Swift::Int SearchFacetFilter.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_3EE954();
  if (!a2)
  {
    sub_3EE974(0);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_3EE974(0);
    return sub_3EE9A4();
  }

  sub_3EE974(1u);
  sub_3ED394();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_3EE974(1u);
  sub_3ED394();
  return sub_3EE9A4();
}

void sub_1CCC8C()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 8))
  {
    sub_3EE974(0);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_3EE974(0);
    return;
  }

  sub_3EE974(1u);
  sub_3ED394();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_3EE974(1u);

  sub_3ED394();
}

Swift::Int sub_1CCD44()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_3EE954();
  if (!v1)
  {
    sub_3EE974(0);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_3EE974(0);
    return sub_3EE9A4();
  }

  sub_3EE974(1u);
  sub_3ED394();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_3EE974(1u);
  sub_3ED394();
  return sub_3EE9A4();
}

uint64_t sub_1CCE1C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    *a1 = *v1;
    a1[1] = v2;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
  }
}

uint64_t SearchFacetFilter.id.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SearchFacetFilter.title.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1CCEBC()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1CCF00()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t GroupedSearchResultsPage.Result.searchFacetFilter.getter()
{
  v1 = *v0;

  return v1;
}

void *GroupedSearchResultsPage.searchFacetFilters.getter()
{
  v1 = *(v0 + *(type metadata accessor for GroupedSearchResultsPage() + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_41D54(0, v2, 0);
    v3 = (v1 + 56);
    do
    {
      v5 = *(v3 - 3);
      v4 = *(v3 - 2);
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];

      if (v8 >= v9 >> 1)
      {
        sub_41D54((v9 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v10 = &_swiftEmptyArrayStorage[4 * v8];
      v10[4] = v5;
      v10[5] = v4;
      v10[6] = v7;
      v10[7] = v6;
      v3 += 5;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t GroupedSearchResultsPage.result(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!(a2 | a4))
  {
    goto LABEL_22;
  }

  v20 = a5;
  v23 = result;
  result = type metadata accessor for GroupedSearchResultsPage();
  v7 = v23;
  v8 = *(v5 + *(result + 20));
  v24 = *(v8 + 16);
  if (!v24)
  {
LABEL_21:
    a5 = v20;
LABEL_22:
    a5[4] = 0;
    *a5 = 0u;
    *(a5 + 1) = 0u;
    return result;
  }

  v9 = 0;
  v10 = (v8 + 64);
  while (v9 < *(v8 + 16))
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    v12 = *(v10 - 4);
    v11 = *(v10 - 3);
    v14 = *(v10 - 2);
    v13 = *(v10 - 1);
    v15 = *v10;
    if (v12 == v7 && v11 == a2)
    {
      swift_bridgeObjectRetain_n();

      v18 = a4;
      if (a4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = sub_3EE804();
      swift_bridgeObjectRetain_n();

      if (v17)
      {
        v18 = a4;
        if (a4)
        {
LABEL_17:
          if (v14 == a3 && v13 == v18)
          {

            v14 = a3;
            v13 = a4;
LABEL_24:
            *v20 = v12;
            v20[1] = v11;
            v20[2] = v14;
            v20[3] = v13;
            v20[4] = v15;
            return result;
          }

          v19 = sub_3EE804();

          if (v19)
          {
            goto LABEL_24;
          }

          goto LABEL_5;
        }
      }
    }

LABEL_5:

    v7 = v23;
LABEL_6:
    ++v9;
    v10 += 5;
    if (v24 == v9)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s8ShelfKit17SearchFacetFilterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v8 = a3;
      v9 = a4;
      v10 = a8;
      v11 = a7;
      v12 = sub_3EE804();
      a3 = v8;
      a4 = v9;
      a7 = v11;
      a8 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    if (a8 && (a3 == a7 && a4 == a8 || (sub_3EE804() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1CD30C()
{
  result = qword_4F7C10;
  if (!qword_4F7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7C10);
  }

  return result;
}

unint64_t sub_1CD360(uint64_t a1)
{
  *(a1 + 8) = sub_1CD390();
  result = sub_1CD3E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CD390()
{
  result = qword_4F7C18;
  if (!qword_4F7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7C18);
  }

  return result;
}

unint64_t sub_1CD3E4()
{
  result = qword_4F7C20;
  if (!qword_4F7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7C20);
  }

  return result;
}

uint64_t sub_1CD438(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1CD494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double SearchHeaderView.pageMarginInsets.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_pageMarginInsets;
  swift_beginAccess();
  return *v1;
}

id sub_1CD554(_OWORD *a1, void **a2)
{
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_pageMarginInsets;
  swift_beginAccess();
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  return [v3 setNeedsLayout];
}

id SearchHeaderView.pageMarginInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_pageMarginInsets];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return [v4 setNeedsLayout];
}

id (*SearchHeaderView.pageMarginInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1CD6A0;
}

id sub_1CD6A0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

char *SearchHeaderView.init(searchScopeTitles:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchScopeControl;
  *&v1[v3] = [objc_allocWithZone(UISegmentedControl) init];
  v4 = OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_headerLabel;
  v5 = [objc_allocWithZone(UILabel) init];
  if (qword_4E8A38 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    [v5 setFont:qword_4F7C28];
    *&v1[v4] = v5;
    v6 = &v1[OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_pageMarginInsets];
    v7 = *&UIEdgeInsetsZero.bottom;
    *v6 = *&UIEdgeInsetsZero.top;
    *(v6 + 1) = v7;
    v8 = &v1[OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchTerm];
    *v8 = 0;
    *(v8 + 1) = 0;
    v8[16] = -1;
    [*&v1[v3] setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = *(a1 + 16);
    if (!v9)
    {
      break;
    }

    v5 = 0;
    v10 = a1 + 40;
    while (v5 < *(a1 + 16))
    {
      v11 = *&v1[v3];

      v12 = v11;
      v13 = sub_3ED204();

      [v12 insertSegmentWithTitle:v13 atIndex:v5 animated:0];

      v10 += 16;
      v4 = ++v5;
      if (v9 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    swift_once();
  }

LABEL_6:

  v19.receiver = v1;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = *&v14[OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchScopeControl];
  v16 = v14;
  [v16 addSubview:v15];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_headerLabel]];

  return v16;
}

uint64_t SearchHeaderView.searchTerm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchTerm;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return sub_1CE03C(v4, v5, v6);
}

uint64_t sub_1CD9D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchTerm;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v6 = *(v3 + 16);
  *(a2 + 16) = v6;
  return sub_1CE03C(v4, v5, v6);
}

id sub_1CDA34(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchTerm;
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  v8 = *(v4 + 16);
  *(v4 + 16) = v5;
  sub_1CE03C(v2, v3, v5);
  sub_1CE068(v6, v7, v8);
  return sub_1CDB44();
}

id SearchHeaderView.searchTerm.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchTerm;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v3;
  v8 = *(v5 + 16);
  *(v5 + 16) = v4;
  sub_1CE068(v6, v7, v8);
  return sub_1CDB44();
}

id sub_1CDB44()
{
  v1 = *&v0[OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_headerLabel];
  v2 = &v0[OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchTerm];
  swift_beginAccess();
  v3 = *(v2 + 1);
  v4 = v2[16];
  v10 = *v2;
  v11 = v3;
  LOBYTE(v12) = v4;
  sub_1CE03C(v10, v3, v4);
  v5 = sub_1CE3D8(&v10);
  sub_1CE068(v10, v11, v12);
  [v1 setAttributedText:v5];

  LODWORD(v1) = v2[16];
  v6 = objc_opt_self();
  v7 = &selRef_quaternarySystemFillColor;
  if (v1 != 1)
  {
    v7 = &selRef_clearColor;
  }

  v8 = [v6 *v7];
  [v0 setBackgroundColor:v8];

  return [v0 setNeedsLayout];
}

id (*SearchHeaderView.searchTerm.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1CDCA8;
}

id sub_1CDCA8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1CDB44();
  }

  return result;
}

Swift::Void __swiftcall SearchHeaderView.layoutSubviews()()
{
  v36.receiver = v0;
  v36.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v36, "layoutSubviews");
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  v2 = *&v0[OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchScopeControl];
  [v0 bounds];
  [v2 sizeThatFits:{v3, v4}];
  v6 = v5;
  [v0 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = &v0[OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_pageMarginInsets];
  swift_beginAccess();
  v16 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, *v15, v15[1]);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v2 frame];
  v24 = v23;
  v25 = floor(v22 - v23 + (v22 - v23) * -0.5);
  v26 = v16;
  v27 = v18;
  v28 = v20;
  v29 = v22;
  if (v1 == &dword_0 + 1)
  {
    MinX = CGRectGetMinX(*&v26);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v26) - v6 + 1.0;
  }

  [v2 setFrame:{MinX, v25, v6, v24}];
  v31 = *&v0[OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_headerLabel];
  [v2 frame];
  [v31 sizeThatFits:{v20 - v32, v22}];
  if (v1 == &dword_0 + 1)
  {
    v34 = v6 + 16.0;
    v35 = v6 + 16.0 + v15[3];
  }

  else
  {
    v35 = v15[1];
    v34 = v6 + 16.0;
  }

  [v31 setFrame:{v35, (v22 - v33) * 0.5, v20 - v34}];
}

id sub_1CDFFC()
{
  result = [objc_opt_self() systemFontOfSize:14.0];
  qword_4F7C28 = result;
  return result;
}

uint64_t sub_1CE03C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1CE050(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1CE050(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1CE068(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_F2248(a1, a2, a3);
  }

  return a1;
}

id sub_1CE07C()
{
  result = [objc_opt_self() systemFontOfSize:14.0 weight:UIFontWeightSemibold];
  qword_4F7C30 = result;
  return result;
}

__n128 sub_1CE0E4@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_pageMarginInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit16SearchHeaderViewC0C4TermO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1CE1B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1CE1D8()
{
  v1 = OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchScopeControl;
  *(v0 + v1) = [objc_allocWithZone(UISegmentedControl) init];
  v2 = OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_headerLabel;
  v3 = [objc_allocWithZone(UILabel) init];
  if (qword_4E8A38 != -1)
  {
    swift_once();
  }

  [v3 setFont:qword_4F7C28];
  *(v0 + v2) = v3;
  v4 = (v0 + OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_pageMarginInsets);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  v6 = v0 + OBJC_IVAR____TtC8ShelfKit16SearchHeaderView_searchTerm;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = -1;
  sub_3EE574();
  __break(1u);
}

uint64_t sub_1CE2FC(uint64_t a1)
{
  if (*(a1 + 16) > 1u)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v1 = "ShelfKit/SearchHeaderView.swift";
  }

  else
  {
    v1 = "SEARCH_RESULTS_TITLE";
  }

  if (*(a1 + 16))
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  v3 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0xE000000000000000;
  v8._object = (v1 | 0x8000000000000000);
  v8._countAndFlagsBits = v2;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v4.super.isa = v3;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v5 = sub_3E5A74(v8, v9, v4, v10, v7);

  return v5;
}

id sub_1CE3D8(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = [objc_allocWithZone(NSMutableAttributedString) init];
  if (v3 <= 1 && v1 != 0)
  {
    v6 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v6 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v35 = result;
      v36[0] = v2;
      v36[1] = v1;
      v37 = v3;
      sub_1CE050(v2, v1, v3);
      sub_1CE2FC(v36);
      v7 = objc_allocWithZone(NSString);
      v8 = sub_3ED204();

      v9 = [v7 initWithString:v8];

      v10 = sub_3ED204();
      v11 = [v9 rangeOfString:v10];
      v13 = v12;

      if (v13 < 1)
      {

        sub_1CE068(v2, v1, v3);
        return v35;
      }

      else
      {
        v33 = v13;
        v34 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_3F5630;
        *(inited + 32) = NSForegroundColorAttributeName;
        v15 = objc_opt_self();
        v31 = NSForegroundColorAttributeName;
        v16 = v9;
        v17 = [v15 secondaryLabelColor];
        v18 = sub_36174(0, &qword_4F7C88);
        *(inited + 64) = v18;
        *(inited + 40) = v17;
        sub_619F4(inited);
        swift_setDeallocating();
        sub_1CE80C(inited + 32);
        v19 = objc_allocWithZone(NSAttributedString);
        type metadata accessor for Key(0);
        sub_1CE874();
        isa = sub_3ED084().super.isa;

        v21 = [v19 initWithString:v16 attributes:isa];
        v32 = v16;

        [v35 appendAttributedString:v21];
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_3F5310;
        *(v22 + 32) = v31;
        *(v22 + 40) = [v15 labelColor];
        *(v22 + 64) = v18;
        *(v22 + 72) = NSFontAttributeName;
        v23 = qword_4E8A40;
        v24 = NSFontAttributeName;
        if (v23 != -1)
        {
          swift_once();
        }

        v25 = qword_4F7C30;
        *(v22 + 104) = sub_36174(0, &qword_4EE3C0);
        *(v22 + 80) = v25;
        v26 = v25;
        sub_619F4(v22);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC478);
        swift_arrayDestroy();
        v27 = objc_allocWithZone(NSAttributedString);
        v28 = sub_3ED204();
        sub_1CE068(v2, v1, v3);
        v29 = sub_3ED084().super.isa;

        v30 = [v27 initWithString:v28 attributes:v29];

        [v35 replaceCharactersInRange:v34 withAttributedString:{v33, v30}];
        return v35;
      }
    }
  }

  return result;
}

uint64_t sub_1CE80C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CE874()
{
  result = qword_4E9140;
  if (!qword_4E9140)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9140);
  }

  return result;
}

uint64_t sub_1CE8CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  sub_3A490(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v10;
  return result;
}

uint64_t FreezableContentSubject.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SearchPresenter.pageExtensions.getter()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_3F7950;
    *(v1 + 32) = *(v0 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_searchExtension);
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t (*SearchPresenter.pageExtensions.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = SearchPresenter.pageExtensions.getter();
  return sub_1CEAB4;
}

uint64_t SearchPresenter.__allocating_init(asPartOf:with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SearchPresenter.init(asPartOf:with:)(a1);
  return v2;
}

void *SearchPresenter.init(asPartOf:with:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3E65B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageContent();
  __chkstk_darwin(v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchContent();
  __chkstk_darwin(v11);
  v1[3] = 0;
  v1[6] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D38);
  swift_allocObject();
  v1[13] = sub_3E9D94();
  *v10 = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  v1[14] = sub_3E9D94();
  *v10 = 0;
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  v1[15] = sub_3E9D94();
  memset(v46, 0, 21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  v1[16] = sub_3E9D94();
  v12 = objc_opt_self();
  v13 = [v12 currentTraitCollection];
  v14 = [v13 userInterfaceIdiom];

  v15 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
    v16 = *(type metadata accessor for HeaderButtonItem() - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v15 = swift_allocObject();
    *(v15 + 1) = xmmword_3F5630;
    *(v15 + v17) = 0;
    swift_storeEnumTagMultiPayload();
  }

  *&v46[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  v2[17] = sub_3E9D94();
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  *&v46[0] = [v12 currentTraitCollection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5858);
  swift_allocObject();
  v2[21] = sub_3E9D94();
  *(v2 + 88) = 256;
  v2[23] = 0;
  sub_3E5FB4();
  v18 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_hasLoadedContent;
  (*(v5 + 104))(v7, enum case for ExtendedLaunchStatus.loading(_:), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5598);
  swift_allocObject();
  *(v2 + v18) = sub_3E9D94();
  sub_3E63E4();
  swift_storeEnumTagMultiPayload();
  v19 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_filters;
  *&v46[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D50);
  swift_allocObject();
  *(v2 + v19) = sub_3E9D94();
  v20 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_selectedFilter;
  memset(v46, 0, sizeof(v46));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D58);
  swift_allocObject();
  *(v2 + v20) = sub_3E9D94();
  v21 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_filteringEnabled;
  LOBYTE(v46[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  *(v2 + v21) = sub_3E9D94();
  v22 = v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_nextPageIntent;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  *(v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_isPreparingNextPage) = 0;
  v23 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_searchExtension;
  v24 = sub_3E6234();
  type metadata accessor for SearchExtension();
  swift_allocObject();
  *(v2 + v23) = SearchExtension.init(scopes:hidesSearchBarWhenScrolling:)(v24, 0);
  *(v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_subscriptions) = _swiftEmptyArrayStorage;
  v25 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_scrollToTop;
  LOBYTE(v46[0]) = 0;
  swift_allocObject();
  *(v2 + v25) = sub_3E9D94();
  v26 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_showingLanding;
  LOBYTE(v46[0]) = 1;
  swift_allocObject();
  *(v2 + v26) = sub_3E9D94();
  v27 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_showsRecentlySearchedInLanding;
  LOBYTE(v46[0]) = 0;
  swift_allocObject();
  *(v2 + v27) = sub_3E9D94();
  v28 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_hasRecentlySearchedItems;
  LOBYTE(v46[0]) = 0;
  swift_allocObject();
  *(v2 + v28) = sub_3E9D94();
  *(v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_scope) = 1;
  v29 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_showsHeaders;
  LOBYTE(v46[0]) = 0;
  swift_allocObject();
  *(v2 + v29) = sub_3E9D94();
  *(v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_userSelectedHint) = 0;
  v30 = v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_previousTerm;
  if (qword_4E89E0 != -1)
  {
    swift_once();
  }

  v31 = unk_4F5820;
  v32 = qword_4F5828;
  v33 = unk_4F5830;
  v34 = byte_4F5838;
  *v30 = qword_4F5818;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  v30[32] = v34;
  v35 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_isNetworkReachable;
  LOBYTE(v46[0]) = 1;
  swift_allocObject();

  *(v2 + v35) = sub_3E9D94();
  sub_3ECCB4();
  v2[2] = a1;
  type metadata accessor for RecentlySearchedStorage();

  sub_3EC364();
  v2[4] = *&v46[0];
  sub_3E6644();
  sub_3EC364();
  v2[6] = *&v46[0];

  type metadata accessor for MetricsController();
  sub_3EC364();
  v2[3] = *&v46[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3EC394();
  sub_1D4F0(v46, (v2 + 7));
  type metadata accessor for RecommendationsMetadataProvider();
  sub_3EC364();
  v2[12] = *&v46[0];
  type metadata accessor for SearchController(0);
  swift_allocObject();

  v36 = sub_1CB9B0();

  v2[5] = v36;
  type metadata accessor for ProgressivelyLoadShelvesController();
  v37 = swift_allocObject();
  v37[7] = _swiftEmptyArrayStorage;
  v37[8] = _swiftEmptyArrayStorage;
  v37[9] = _swiftEmptyDictionarySingleton;
  *&v46[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0);
  swift_allocObject();

  v37[10] = sub_3E9D94();
  sub_3EC444();
  sub_3ECD14();
  sub_1D4F0(v46, (v37 + 2));

  *(v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_shelfController) = v37;
  type metadata accessor for NetworkObserver();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7DB8);

  sub_3EC394();
  v38 = *&v46[0];
  swift_getObjectType();
  v39 = sub_393028(v38);

  *(v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_networkObserver) = v39;
  if ([objc_opt_self() supportsLocalLibrary])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1230);
    sub_3EC394();

    v40 = v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_libraryTipProvider;
    v41 = v46[1];
    *v40 = v46[0];
    *(v40 + 1) = v41;
    *(v40 + 4) = v47;
  }

  else
  {
    type metadata accessor for InMemoryPageStateController();
    sub_3EC394();

    v42 = v45[1];
    swift_beginAccess();
    v2[23] = v42;

    v43 = v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_libraryTipProvider;
    *v43 = 0u;
    *(v43 + 1) = 0u;
    *(v43 + 4) = 0;
  }

  return v2;
}

uint64_t SearchPresenter.animateSectionChanges.getter()
{

  sub_3E9D64();

  if (!v5)
  {
    return 0;
  }

  v0 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v0 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v1 = v0 == 0;
  sub_1C76B8(v4, v5);
  if (v6)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v6 == 3 || v2;
}

id SearchPresenter.dependenciesDidChange(_:)(uint64_t a1)
{
  v1[2] = a1;

  type metadata accessor for MetricsController();
  sub_3EC364();
  v1[3] = v6;

  sub_3E6644();
  sub_3EC364();
  v1[6] = v6;

  v2 = *(v1[5] + 16);
  v3 = *(*v2 + class metadata base offset for ManagedBuffer + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1CBE3C(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
  return [objc_opt_self() supportsLocalLibrary];
}

uint64_t SearchPresenter.isPreparingNextPage.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SearchPresenter.showsHeaders.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_showsHeaders;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall SearchPresenter.viewDidLoad()()
{
  v1 = v0;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7DD0);
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v239 = &v165 - v2;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7DD8);
  v243 = *(v244 - 8);
  __chkstk_darwin(v244);
  v242 = &v165 - v3;
  v238 = sub_3EDBA4();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v236 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7DE0);
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v215 = &v165 - v5;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7DE8);
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v217 = &v165 - v6;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7DF0);
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v221 = &v165 - v7;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7DF8);
  v225 = *(v227 - 8);
  __chkstk_darwin(v227);
  v222 = &v165 - v8;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E00);
  v228 = *(v230 - 8);
  __chkstk_darwin(v230);
  v226 = &v165 - v9;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E08);
  v231 = *(v233 - 8);
  __chkstk_darwin(v233);
  v229 = &v165 - v10;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E10);
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v232 = &v165 - v11;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E18);
  __chkstk_darwin(v211);
  v210 = &v165 - v12;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E20);
  __chkstk_darwin(v209);
  v208 = &v165 - v13;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E28);
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v212 = &v165 - v14;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E30);
  v197 = *(v263 - 8);
  __chkstk_darwin(v263);
  v207 = &v165 - v15;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E38);
  v198 = *(v199 - 1);
  __chkstk_darwin(v199);
  v196 = &v165 - v16;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E40);
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v200 = &v165 - v17;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E48);
  v204 = *(v247 - 8);
  __chkstk_darwin(v247);
  v203 = &v165 - v18;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E50);
  v167 = *(v169 - 8);
  __chkstk_darwin(v169);
  v165 = &v165 - v19;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E58);
  v168 = *(v170 - 8);
  __chkstk_darwin(v170);
  v166 = &v165 - v20;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E60);
  v191 = *(v264 - 1);
  __chkstk_darwin(v264);
  v187 = &v165 - v21;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E68);
  v190 = *(v193 - 8);
  __chkstk_darwin(v193);
  v186 = &v165 - v22;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E70);
  __chkstk_darwin(v261);
  v260 = &v165 - v23;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E78);
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v165 - v24;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E80);
  v180 = *(v256 - 8);
  __chkstk_darwin(v256);
  v179 = &v165 - v25;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E88);
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v181 = &v165 - v26;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E90);
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v165 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v28 - 8);
  v267 = &v165 - v29;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E98);
  v248 = *(v246 - 8);
  __chkstk_darwin(v246);
  v245 = &v165 - v30;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7EA0);
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v175 = &v165 - v31;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7EA8);
  __chkstk_darwin(v258);
  v257 = &v165 - v32;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7EB0);
  v255 = *(v254 - 8);
  __chkstk_darwin(v254);
  v251 = &v165 - v33;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7EB8);
  v266 = *(v262 - 8);
  __chkstk_darwin(v262);
  v252 = &v165 - v34;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7EC0);
  v265 = *(v259 - 8);
  __chkstk_darwin(v259);
  v253 = &v165 - v35;
  v271 = *(v0 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_searchExtension);
  LOBYTE(v276) = 1;

  sub_3E9D74();

  *&v276 = *(v0 + 104);
  v36 = v276;
  v37 = *(v0 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_filters);
  v38 = *(v1 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_selectedFilter);
  v272 = v1;
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = v38;
  swift_retain_n();
  swift_retain_n();

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D38);
  sub_886BC(&qword_4F7EC8, &qword_4F7D38);
  sub_3EA1A4();

  v41 = v1 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_subscriptions;
  swift_beginAccess();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  v43 = sub_886BC(&qword_4F59C8, &qword_4F59C0);
  v268 = v41;
  v269 = v43;
  v270 = v42;
  sub_3E9C94();
  swift_endAccess();

  v206 = v36;
  *&v276 = v36;
  *&v274 = v38;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D58);
  v45 = sub_886BC(&qword_4F7ED0, &qword_4F7D58);
  v46 = sub_1CD30C();
  v192 = v44;
  v189 = v45;
  v188 = v46;
  sub_3EA174();
  v194 = v38;

  v47 = sub_886BC(&qword_4F7ED8, &qword_4F7EA8);
  v48 = v251;
  v205 = v40;
  v195 = v47;
  sub_3E9B54();
  v49 = swift_allocObject();
  v50 = v272;
  swift_weakInit();
  v51 = *(v50 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_shelfController);
  v52 = swift_allocObject();
  *(v52 + 16) = v49;
  *(v52 + 24) = v51;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1DBC9C;
  *(v53 + 24) = v52;

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7EE0);
  sub_886BC(&qword_4F7EE8, &qword_4F7EB0);
  v55 = v252;
  v56 = v254;
  v185 = v54;
  sub_3EA024();

  (*(v255 + 8))(v48, v56);
  sub_886BC(&qword_4F7EF0, &qword_4F7EB8);
  v57 = v50;
  v58 = sub_886BC(&qword_4F7EF8, &qword_4F7EE0);
  v59 = v253;
  v60 = v262;
  sub_3EA184();
  (*(v266 + 8))(v55, v60);
  sub_886BC(&qword_4F7F00, &qword_4F7EC0);
  v61 = v259;
  v262 = sub_3E9F94();
  (*(v265 + 8))(v59, v61);
  v62 = *(v57 + 32);
  v182 = v58;
  if (v62)
  {

    v63 = sub_1DE324();

    *&v276 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B58);
    sub_886BC(&qword_4F7B60, &qword_4F7B58);
    sub_1DBED4();
    v64 = v245;
    sub_3EA174();

    sub_801B4();
    v65 = sub_3EDBC4();
    *&v276 = v65;
    v66 = sub_3EDB64();
    v67 = v267;
    (*(*(v66 - 8) + 56))(v267, 1, 1, v66);
    sub_886BC(&qword_4F7FE8, &qword_4F7E98);
    sub_1DD298(&qword_4F1D30, sub_801B4);
    v68 = v175;
    v69 = v246;
    sub_3EA114();
    sub_FCF8(v67, &qword_4F69E0);

    (*(v248 + 8))(v64, v69);
    sub_886BC(&qword_4F8078, &qword_4F7EA0);
    v70 = v250;
    v71 = sub_3E9F94();

    (*(v249 + 8))(v68, v70);
  }

  else
  {
    *&v276 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7F08);
    v72 = v172;
    sub_3E9DF4();
    sub_886BC(&qword_4F7F10, &qword_4F7E90);
    v73 = v174;
    v71 = sub_3E9F94();
    (*(v173 + 8))(v72, v73);
    v67 = v267;
  }

  *&v276 = *(v271 + 24);

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5840);
  v171 = &protocol conformance descriptor for CurrentValueSubject<A, B>;
  v75 = sub_886BC(&qword_4F7F18, &qword_4F5840);
  v76 = sub_1DBE04(&qword_4F7F20, &qword_4F7F28, &unk_40BE00, sub_17DE84);
  v254 = v74;
  v253 = v75;
  v172 = v76;
  sub_3EA174();
  *&v276 = v71;
  v248 = *(v272 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_showsRecentlySearchedInLanding);
  *&v274 = v248;
  swift_retain_n();
  v259 = v71;

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7B58);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  v79 = sub_886BC(&qword_4F7F30, &qword_4F7E70);
  v80 = sub_886BC(&qword_4F7B60, &qword_4F7B58);
  v265 = sub_886BC(&qword_4F7F38, &qword_4F5578);
  v81 = v176;
  v174 = v77;
  v266 = v78;
  v175 = v79;
  v173 = v80;
  sub_3E9B64();
  v82 = sub_801B4();
  v83 = sub_3EDBC4();
  *&v276 = v83;
  v84 = sub_3EDB64();
  v85 = *(v84 - 8);
  v86 = *(v85 + 56);
  v252 = v84;
  v251 = v86;
  v250 = v85 + 56;
  (v86)(v67, 1, 1);
  sub_886BC(&qword_4F7F40, &qword_4F7E78);
  v87 = sub_1DD298(&qword_4F1D30, sub_801B4);
  v88 = v179;
  v89 = v178;
  v255 = v82;
  v249 = v87;
  sub_3EA114();
  sub_FCF8(v67, &qword_4F69E0);

  (*(v177 + 8))(v81, v89);
  v90 = swift_allocObject();
  v91 = v272;
  swift_weakInit();
  v92 = *(v91 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_showingLanding);
  v93 = swift_allocObject();
  *(v93 + 16) = v90;
  *(v93 + 24) = v92;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_1DBD08;
  *(v94 + 24) = v93;
  sub_886BC(&qword_4F7F48, &qword_4F7E80);
  swift_retain_n();
  v95 = v181;
  v96 = v256;
  sub_3EA024();

  (*(v180 + 8))(v88, v96);
  sub_886BC(&qword_4F7F50, &qword_4F7E88);
  sub_886BC(&qword_4F7F58, &qword_4F5578);
  v256 = v92;
  v97 = v184;
  sub_3EA164();
  (*(v183 + 8))(v95, v97);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  *&v276 = *(v91 + 112);
  v98 = v276;
  swift_allocObject();
  swift_weakInit();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  sub_886BC(&qword_4F7F60, &qword_4F8830);
  sub_3EA1A4();

  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  *&v276 = v248;
  v99 = *(v91 + 40);
  v100 = swift_allocObject();
  *(v100 + 16) = v98;
  *(v100 + 24) = v99;
  v184 = v99;
  swift_retain_n();
  v101 = v187;
  sub_3EA024();

  sub_886BC(&qword_4F7F68, &qword_4F7E60);
  v102 = v186;
  v103 = v264;
  sub_3EA184();
  (*(v191 + 8))(v101, v103);
  sub_886BC(&qword_4F7F70, &qword_4F7E68);
  v104 = v193;
  v105 = sub_3E9F94();
  (*(v190 + 8))(v102, v104);
  sub_FBD0(v91 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_libraryTipProvider, &v274, &qword_4F7F78);
  v191 = v105;
  if (v275)
  {
    sub_1D4F0(&v274, &v276);
    if ([objc_opt_self() isRunningOnDesktop])
    {
      v106 = 3;
    }

    else
    {
      v106 = 4;
    }

    *&v274 = v105;
    __swift_project_boxed_opaque_existential_1(&v276, *(&v277 + 1));

    v273 = sub_3E6DB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8058);
    sub_886BC(&qword_4F8060, &qword_4F8058);
    v107 = v165;
    sub_3E9B54();
    v108 = swift_allocObject();
    *(v108 + 16) = v106;
    v109 = swift_allocObject();
    *(v109 + 16) = sub_1DC198;
    *(v109 + 24) = v108;
    type metadata accessor for PageContent();
    sub_886BC(&qword_4F8068, &qword_4F7E50);
    v110 = v166;
    v111 = v169;
    sub_3EA024();

    (*(v167 + 8))(v107, v111);
    sub_886BC(&qword_4F8070, &qword_4F7E58);
    v112 = v170;
    v113 = sub_3E9F94();
    (*(v168 + 8))(v110, v112);

    __swift_destroy_boxed_opaque_existential_1Tm(&v276);
  }

  else
  {
    sub_FCF8(&v274, &qword_4F7F78);
    swift_retain_n();
    v113 = v105;
  }

  v193 = v113;
  *&v276 = v256;
  v114 = v207;
  sub_3EA174();
  v115 = swift_allocObject();
  v116 = v262;
  *(v115 + 16) = v113;
  *(v115 + 24) = v116;
  v264 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v190 = sub_886BC(&qword_4F7F80, &qword_4F7E30);

  v117 = v196;
  v118 = v263;
  sub_3EA024();

  v197[1](v114, v118);
  v197 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_886BC(&qword_4F7F88, &qword_4F7E38);
  v119 = v200;
  v120 = v199;
  sub_3EA184();
  (*(v198 + 8))(v117, v120);
  v121 = sub_3EDBC4();
  *&v276 = v121;
  v122 = v267;
  (v251)(v267, 1, 1, v252);
  v199 = &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>;
  sub_886BC(&qword_4F7F90, &qword_4F7E40);
  v123 = v203;
  v124 = v202;
  sub_3EA114();
  sub_FCF8(v122, &qword_4F69E0);

  (*(v201 + 8))(v119, v124);
  swift_allocObject();
  v125 = v272;
  swift_weakInit();
  sub_886BC(&qword_4F7F98, &qword_4F7E48);
  v126 = v247;
  sub_3EA1A4();

  (*(v204 + 8))(v123, v126);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  v127 = swift_allocObject();
  v247 = v127;
  *(v127 + 16) = xmmword_40BCD0;
  *(v127 + 32) = 0;
  *(v127 + 40) = 0;
  *&v276 = v194;
  sub_3EA174();

  v128 = v271;
  *&v276 = *(v271 + 32);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5848);
  v204 = sub_886BC(&qword_4F7FA0, &qword_4F5848);
  sub_1DBE04(&qword_4F7FA8, &qword_4F7FB0, &unk_40BE10, sub_1DBE80);
  sub_3EA174();
  *&v276 = *(v128 + 24);
  sub_3EA174();
  *&v276 = *(v125 + 168);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5858);
  sub_886BC(&qword_4F7FC0, &qword_4F5858);
  sub_3EA004();

  *&v276 = v248;
  sub_3EA174();

  *&v276 = v259;
  sub_1DBED4();
  sub_3EA174();

  sub_886BC(&qword_4F7FD8, &qword_4F7E20);
  sub_886BC(&qword_4F7FE0, &qword_4F7E18);
  sub_886BC(&qword_4F7FE8, &qword_4F7E98);
  v129 = v212;
  sub_3E9BC4();
  v130 = swift_allocObject();
  swift_weakInit();
  v131 = *(v125 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_isNetworkReachable);
  v132 = swift_allocObject();
  v132[2] = v247;
  v132[3] = v130;
  v132[4] = v131;
  v263 = v131;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_1DBFB0;
  *(v133 + 24) = v132;
  sub_886BC(&qword_4F7FF0, &qword_4F7E28);
  swift_retain_n();

  v134 = v214;
  sub_3EA1A4();

  (*(v213 + 8))(v129, v134);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  v135 = *(v271 + 32);
  *&v276 = *(v271 + 24);
  *&v274 = v135;

  v136 = v215;
  sub_3E9B54();
  v137 = swift_allocObject();
  swift_weakInit();
  v138 = swift_allocObject();
  *(v138 + 16) = sub_1DC03C;
  *(v138 + 24) = v137;
  sub_886BC(&qword_4F7FF8, &qword_4F7DE0);
  v139 = v217;
  v140 = v218;
  sub_3EA024();

  (*(v216 + 8))(v136, v140);
  v276 = 0u;
  v277 = 0u;
  LOBYTE(v278) = 0x80;
  sub_886BC(&qword_4F8000, &qword_4F7DE8);
  v141 = v221;
  v142 = v220;
  sub_3EA034();
  (*(v219 + 8))(v139, v142);
  v143 = v236;
  sub_3EDB84();
  v144 = sub_3EDBC4();
  *&v276 = v144;
  v145 = v267;
  (v251)(v267, 1, 1, v252);
  sub_886BC(&qword_4F8008, &qword_4F7DF0);
  v146 = v222;
  v147 = v224;
  sub_3EA124();
  sub_FCF8(v145, &qword_4F69E0);

  (*(v237 + 8))(v143, v238);
  (*(v223 + 8))(v141, v147);
  sub_886BC(&qword_4F8010, &qword_4F7DF8);
  sub_1C7544();
  v148 = v226;
  v149 = v227;
  sub_3EA174();
  (*(v225 + 8))(v146, v149);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7948);
  sub_886BC(&qword_4F8018, &qword_4F7E00);
  v150 = v229;
  v151 = v230;
  sub_3EA024();

  (*(v228 + 8))(v148, v151);
  sub_886BC(&qword_4F8020, &qword_4F7E08);
  sub_886BC(&qword_4F7950, &qword_4F7948);
  v152 = v232;
  v153 = v233;
  sub_3EA184();
  (*(v231 + 8))(v150, v153);
  sub_886BC(&qword_4F8028, &qword_4F7E10);
  sub_886BC(&qword_4F8030, &qword_4F7D38);
  v154 = v235;
  sub_3EA164();
  (*(v234 + 8))(v152, v154);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  v155 = v272;
  *&v276 = *(v272 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_networkObserver);
  v156 = v276;
  sub_1DC0D8();
  *&v276 = sub_3E9F94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8040);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_3F5630;
  *(v157 + 32) = [objc_opt_self() isLikelyToReachRemoteServerWithReachabilityFlags:{objc_msgSend(*(v156 + 16), "networkReachabilityFlags")}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
  sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
  v158 = v239;
  sub_3EA104();

  sub_886BC(&qword_4F8048, &qword_4F7DD0);
  v159 = v242;
  v160 = v241;
  sub_3EA174();
  (*(v240 + 8))(v158, v160);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F8050, &qword_4F7DD8);
  v161 = v244;
  sub_3EA1A4();

  (*(v243 + 8))(v159, v161);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  *&v276 = v263;
  v162 = *(v155 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_hasRecentlySearchedItems);
  v163 = swift_allocObject();
  v163[2] = v162;
  v164 = v256;
  v163[3] = v271;
  v163[4] = v164;

  sub_3EA1A4();

  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_1D2DEC(uint64_t a1)
{
  v2 = type metadata accessor for GroupedSearchResultsPage();
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchContent();
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD554(a1, v7, type metadata accessor for SearchContent);
  result = swift_getEnumCaseMultiPayload();
  if (result != 5)
  {
    if (result == 3)
    {
      sub_1DD4EC(v7, v4, type metadata accessor for GroupedSearchResultsPage);
      *&v17 = GroupedSearchResultsPage.searchFacetFilters.getter();
      sub_3E9D74();
      sub_3E9D64();
      if (*(v17 + 16))
      {
        v10 = *(v17 + 32);
        v9 = *(v17 + 40);
        v12 = *(v17 + 48);
        v11 = *(v17 + 56);
      }

      else
      {
        v10 = 0;
        v9 = 0;
        v12 = 0;
        v11 = 0;
      }

      *&v17 = v10;
      *(&v17 + 1) = v9;
      *&v18 = v12;
      *(&v18 + 1) = v11;
      sub_3E9D74();
      v15 = type metadata accessor for GroupedSearchResultsPage;
      v16 = v4;
    }

    else
    {
      v13 = sub_3E9D54();
      *v14 = _swiftEmptyArrayStorage;

      v13(&v17, 0);
      v17 = 0u;
      v18 = 0u;
      sub_3E9D74();
      v15 = type metadata accessor for SearchContent;
      v16 = v7;
    }

    return sub_1DD5BC(v16, v15);
  }

  return result;
}

uint64_t sub_1D301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a7;
  v58 = a6;
  v69 = a4;
  v70 = a5;
  v71 = a3;
  v68 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72C8);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8458);
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v65 = &v58 - v10;
  v11 = type metadata accessor for GroupedSearchResultsPage();
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  __chkstk_darwin(v11 - 8);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  *&v72 = &v58 - v14;
  v15 = type metadata accessor for ContentUnavailablePage();
  __chkstk_darwin(v15 - 8);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ModernPage();
  __chkstk_darwin(v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for PageContent();
  __chkstk_darwin(v74);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8460);
  v73 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  v26 = type metadata accessor for SearchContent();
  __chkstk_darwin(v26);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD554(a1, v28, type metadata accessor for SearchContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v36 = v28;
      v37 = v72;
      sub_1DD4EC(v36, v72, type metadata accessor for GroupedSearchResultsPage);
      GroupedSearchResultsPage.result(for:)(v68, v71, v69, v70, &v75);
      v38 = v76;
      if (!v76)
      {
        v55 = sub_3ECCF4();
        (*(*(v55 - 8) + 16))(v20, v37, v55);
        sub_3EC154();
        *&v20[*(v18 + 24)] = _swiftEmptyArrayStorage;
        v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
        sub_1DD554(v20, v22, type metadata accessor for ModernPage);
        v57 = sub_3E66E4();
        sub_1DD5BC(v20, type metadata accessor for ModernPage);
        v22[v56] = v57;
        swift_storeEnumTagMultiPayload();
        sub_3E9DF4();
        sub_886BC(&qword_4F8468, &qword_4F8460);
        v31 = sub_3E9F94();
        (*(v73 + 8))(v25, v23);
        v32 = type metadata accessor for GroupedSearchResultsPage;
        v33 = v37;
        goto LABEL_13;
      }

      v39 = v75;
      v40 = v77;
      v41 = v78;
      v42 = v79;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v75 = v39;
        v76 = v38;
        v77 = v40;
        v78 = v41;
        v79 = v42;
        sub_1D3C10(&v75);
      }

      v75 = *(v59 + 80);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
      v73 = v38;
      sub_886BC(&qword_4F72D0, &qword_4F72B0);
      v59 = v42;
      v43 = v62;
      sub_3E9FA4();

      sub_886BC(&qword_4F72D8, &qword_4F72C8);
      v44 = v64;
      v45 = sub_3E9F94();
      (*(v63 + 8))(v43, v44);
      v75 = v45;
      v17 = v72;
      v46 = v61;
      sub_1DD554(v72, v61, type metadata accessor for GroupedSearchResultsPage);
      v47 = (*(v60 + 80) + 48) & ~*(v60 + 80);
      v48 = swift_allocObject();
      v49 = v69;
      v51 = v70;
      v50 = v71;
      v48[2] = v68;
      v48[3] = v50;
      v48[4] = v49;
      v48[5] = v51;
      sub_1DD4EC(v46, v48 + v47, type metadata accessor for GroupedSearchResultsPage);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
      sub_886BC(&qword_4F6340, &qword_4F6330);
      v52 = v65;
      sub_3EA024();

      sub_886BC(&qword_4F8470, &qword_4F8458);
      v53 = v67;
      v31 = sub_3E9F94();
      sub_1DD49C(v39, v73);
      (*(v66 + 8))(v52, v53);
      v34 = type metadata accessor for GroupedSearchResultsPage;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        *v22 = 1;
        swift_storeEnumTagMultiPayload();
        sub_3E9DF4();
        sub_886BC(&qword_4F8468, &qword_4F8460);
        v31 = sub_3E9F94();
        goto LABEL_15;
      }

      sub_1DD4EC(v28, v17, type metadata accessor for ContentUnavailablePage);
      sub_1DD554(v17, v22, type metadata accessor for ContentUnavailablePage);
      swift_storeEnumTagMultiPayload();
      sub_3E9DF4();
      sub_886BC(&qword_4F8468, &qword_4F8460);
      v31 = sub_3E9F94();
      (*(v73 + 8))(v25, v23);
      v34 = type metadata accessor for ContentUnavailablePage;
    }

    v32 = v34;
    v33 = v17;
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v35 = *(v28 + 2);
    v72 = *v28;
    *v22 = v72;
    *(v22 + 2) = v35;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();

    sub_3E9DF4();
    sub_886BC(&qword_4F8468, &qword_4F8460);
    v31 = sub_3E9F94();

LABEL_15:
    (*(v73 + 8))(v25, v23);
    return v31;
  }

  sub_1DD4EC(v28, v20, type metadata accessor for ModernPage);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
  sub_1DD554(v20, v22, type metadata accessor for ModernPage);
  v22[v30] = sub_3E66E4();
  swift_storeEnumTagMultiPayload();
  sub_3E9DF4();
  sub_886BC(&qword_4F8468, &qword_4F8460);
  v31 = sub_3E9F94();
  (*(v73 + 8))(v25, v23);
  v32 = type metadata accessor for ModernPage;
  v33 = v20;
LABEL_13:
  sub_1DD5BC(v33, v32);
  return v31;
}

uint64_t sub_1D3C10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_nextPageIntent;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  swift_endAccess();
  v4 = *(v1 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_shelfController);
  sub_265B9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0);
  swift_allocObject();
  *(v4 + 80) = sub_3E9D94();

  v5 = *(v2 + 16);

  sub_265D38(v6, v5);

  v7 = v2 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  swift_beginAccess();
  v8 = *(v7 + 24);
  if (!*(v3 + 24))
  {
    if (v8)
    {
      sub_1F958(v7, v3);
      return swift_endAccess();
    }

LABEL_9:
    v9 = *v7;
    v10 = *(v7 + 16);
    *(v3 + 32) = *(v7 + 32);
    *v3 = v9;
    *(v3 + 16) = v10;
    return swift_endAccess();
  }

  if (!v8)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    goto LABEL_9;
  }

  __swift_assign_boxed_opaque_existential_1(v3, v7);
  return swift_endAccess();
}

uint64_t sub_1D3D80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v26 = a4;
  v9 = sub_3ECCF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ModernPage();
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (a3)
  {
    v18 = a3;
  }

  else
  {
    a2 = 0;
    v18 = 0xE000000000000000;
  }

  v27 = sub_3E8014();
  v28 = v19;
  v29._countAndFlagsBits = 95;
  v29._object = 0xE100000000000000;
  sub_3ED3D4(v29);
  v30._countAndFlagsBits = a2;
  v30._object = v18;
  sub_3ED3D4(v30);
  sub_3ECCE4();
  swift_bridgeObjectRelease_n();
  v20 = *(type metadata accessor for GroupedSearchResultsPage() + 24);
  v21 = *(v14 + 28);
  v22 = sub_3EC164();
  (*(*(v22 - 8) + 16))(&v16[v21], v26 + v20, v22);
  (*(v10 + 32))(v16, v12, v9);
  *&v16[*(v14 + 32)] = v17;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
  sub_1DD554(v16, a5, type metadata accessor for ModernPage);

  LOBYTE(v20) = sub_3E66E4();
  sub_1DD5BC(v16, type metadata accessor for ModernPage);
  *(a5 + v23) = v20;
  type metadata accessor for PageContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D3FEC(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v33 = a1[2];
  if (v3)
  {
    v34 = *a1;
    v8 = objc_opt_self();

    v9 = [v8 currentTraitCollection];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7F08);
    sub_886BC(&qword_4F8400, &qword_4F7F08);
    v10 = sub_3ED894();
    v11 = sub_1D45A0(v9, a3 & 1, v10 & 1);
  }

  else
  {
    v11 = 1;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_25:
    if (!v3)
    {
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  v13 = Strong;
  sub_3E9D64();
  if (v3)
  {
    v14 = *(v13 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_previousTerm);
    v15 = *(v13 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_previousTerm + 8);

    if (v4 == v14 && v3 == v15)
    {

      if (((v34 | v11) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v17 = sub_3EE804();

      if (((v34 | v11) & 1) == 0)
      {
        if (v17)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    goto LABEL_26;
  }

  if ((v34 | v11))
  {

    goto LABEL_22;
  }

LABEL_17:
  if ((*(v13 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_userSelectedHint) & 1) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_18:
  swift_beginAccess();
  v18 = swift_weakLoadStrong();
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = v18;
  v31 = v4;
  v32 = v5;
  if (qword_4E89E0 != -1)
  {
    swift_once();
  }

  v20 = qword_4F5818;
  v21 = unk_4F5820;
  v22 = qword_4F5828;
  v23 = unk_4F5830;
  v30 = byte_4F5838;

  v24 = v19 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_previousTerm;
  *v24 = v20;
  *(v24 + 8) = v21;
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  *(v24 + 32) = v30;

  v4 = v31;
  v5 = v32;
  if (!v3)
  {
LABEL_22:
    if ((v11 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

LABEL_26:
  if (v6 != 5)
  {
    goto LABEL_34;
  }

  v25 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v25 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (((v25 == 0) & v11) == 0)
  {
LABEL_34:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7F08);
      sub_886BC(&qword_4F8400, &qword_4F7F08);
      sub_3ED894();
      sub_3E9D74();
    }

    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    if (v26)
    {
      *(v26 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_userSelectedHint) = 0;
    }

    if (v3)
    {
      swift_beginAccess();
      v27 = swift_weakLoadStrong();
      if (v27)
      {
        v28 = v27 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_previousTerm;
        *v28 = v4;
        *(v28 + 8) = v3;
        *(v28 + 16) = v33;
        *(v28 + 24) = v5;
        *(v28 + 32) = v6;
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_3E9D74();
LABEL_43:

        return v11 & 1;
      }
    }

    return v11 & 1;
  }

LABEL_30:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (qword_4E89E0 != -1)
    {
      swift_once();
    }

    sub_3E9D74();
    goto LABEL_43;
  }

  return v11 & 1;
}

uint64_t sub_1D45A0(uint64_t a1, char a2, int a3)
{
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 32);
  if (a2)
  {
    v7 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v8 = v7 == 0;
    return v6 == 3 || v8;
  }

  else
  {
    if (v6 == 3)
    {
      return 1;
    }

    v11 = sub_3EDC14();
    if (v6 == 4 && (v11 & 1) != 0)
    {
      return 1;
    }

    else
    {
      v12 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v12 = v5 & 0xFFFFFFFFFFFFLL;
      }

      return (v12 == 0) & (a3 ^ 1u);
    }
  }
}

uint64_t sub_1D4648(uint64_t a1)
{
  v2 = sub_3E65B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageContent();
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD554(a1, v8, type metadata accessor for PageContent);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        (*(v3 + 104))(v5, enum case for ExtendedLaunchStatus.contentMissingError(_:), v2);
        sub_3E9D44();

        (*(v3 + 8))(v5, v2);
      }

      v10 = type metadata accessor for PageContent;
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        (*(v3 + 104))(v5, enum case for ExtendedLaunchStatus.finishedLoading(_:), v2);
        sub_3E9D44();

        (*(v3 + 8))(v5, v2);
      }

      v10 = type metadata accessor for ModernPage;
    }

    return sub_1DD5BC(v8, v10);
  }

  else if (result)
  {
    sub_1DD5BC(v8, type metadata accessor for PageContent);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {

      (*(v3 + 104))(v5, enum case for ExtendedLaunchStatus.contentError(_:), v2);
      sub_3E9D44();

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_1D4990@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8428);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8430);
  __chkstk_darwin(v10);
  v13 = v16 - v12;
  if (*a1 == 1)
  {
    v16[2] = a2;
    v17[0] = 1;
    memset(&v17[1], 0, 24);
    v18 = 0x80;
    v16[0] = v11;

    v16[1] = SearchController.publisher(for:)(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7948);
    sub_886BC(&qword_4F7F60, &qword_4F8830);
    sub_886BC(&qword_4F7950, &qword_4F7948);
    sub_3E9B54();
    type metadata accessor for PageContent();
    sub_886BC(&qword_4F8438, &qword_4F8428);
    sub_3EA024();
    (*(v7 + 8))(v9, v6);
    sub_886BC(&qword_4F8440, &qword_4F8430);
    v14 = sub_3E9F94();
    result = (*(v16[0] + 8))(v13, v10);
  }

  else
  {
    v17[0] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
    sub_886BC(&qword_4F7F60, &qword_4F8830);
    result = sub_3E9F94();
    v14 = result;
  }

  *a3 = v14;
  return result;
}

uint64_t sub_1D4D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = type metadata accessor for SearchContent();
  __chkstk_darwin(v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PageContent();
  __chkstk_darwin(v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ModernPage();
  __chkstk_darwin(v11);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v25[-v15];
  __chkstk_darwin(v17);
  v19 = &v25[-v18];
  sub_1DD554(a1, v10, type metadata accessor for PageContent);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v27 = a3;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668);
    v26 = v10[*(v20 + 48)];
    sub_1DD4EC(v10, v19, type metadata accessor for ModernPage);
    sub_1DD554(v28, v7, type metadata accessor for SearchContent);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1DD4EC(v7, v16, type metadata accessor for ModernPage);
      sub_1DD554(v19, v13, type metadata accessor for ModernPage);
      v21 = *&v16[*(v11 + 24)];

      sub_152DB8(0, 0, v21);

      sub_1DD5BC(v16, type metadata accessor for ModernPage);
      sub_1DD5BC(v19, type metadata accessor for ModernPage);
      v22 = *(v20 + 48);
      v23 = v27;
      sub_1DD4EC(v13, v27, type metadata accessor for ModernPage);
      *(v23 + v22) = v26;
      return swift_storeEnumTagMultiPayload();
    }

    sub_1DD5BC(v19, type metadata accessor for ModernPage);
    sub_1DD5BC(v7, type metadata accessor for SearchContent);
    a3 = v27;
  }

  else
  {
    sub_1DD5BC(v10, type metadata accessor for PageContent);
  }

  return sub_1DD554(a1, a3, type metadata accessor for PageContent);
}

uint64_t sub_1D5090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8448) + 48);

  return sub_1D4D20(a1, v4, a2);
}

uint64_t sub_1D50E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for ModernShelf();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for BubbleTip();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v50 = &v45 - v17;
  __chkstk_darwin(v18);
  v51 = &v45 - v19;
  v20 = sub_3E7274();
  v21 = __chkstk_darwin(v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v25;
  v56 = v24;
  (*(v25 + 104))(v23, enum case for TipGroup.categoriesSearch(_:), v21);
  v26 = *(a2 + 16);
  v54 = v23;
  if (!v26)
  {
    v28 = _swiftEmptyArrayStorage;
    v29 = _swiftEmptyArrayStorage[2];
    if (!v29)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_557FC(v23);
  if ((v27 & 1) == 0)
  {
    v28 = _swiftEmptyArrayStorage;
    v29 = _swiftEmptyArrayStorage[2];
    if (!v29)
    {
      goto LABEL_13;
    }

LABEL_6:
    v46 = v11;
    v47 = v8;
    v48 = a3;
    v49 = a1;
    v59 = _swiftEmptyArrayStorage;
    v30 = v28;
    sub_41C8C(0, v29, 0);
    v31 = v59;
    v45 = v30;
    v32 = (v30 + 4);
    do
    {
      sub_1F958(v32, v57);
      v33 = v58;
      v34 = __swift_project_boxed_opaque_existential_1(v57, v58);
      v35 = __chkstk_darwin(v34);
      v37 = &v45 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v37, v35);
      BubbleTip.init<A>(from:style:)(v37, v33, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v59 = v31;
      v40 = v31[2];
      v39 = v31[3];
      if (v40 >= v39 >> 1)
      {
        sub_41C8C(v39 > 1, v40 + 1, 1);
        v31 = v59;
      }

      v31[2] = v40 + 1;
      sub_1DD4EC(v15, v31 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v40, type metadata accessor for BubbleTip);
      v32 += 40;
      --v29;
    }

    while (v29);
    (*(v55 + 8))(v54, v56);

    a3 = v48;
    a1 = v49;
    v11 = v46;
    v8 = v47;
    if (!v31[2])
    {
      goto LABEL_14;
    }

LABEL_11:
    v41 = v50;
    sub_1DD554(v31 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v50, type metadata accessor for BubbleTip);

    v42 = v41;
    v43 = v51;
    sub_1DD4EC(v42, v51, type metadata accessor for BubbleTip);
    static ModernShelf.bubbleTipShelf(for:)(v43, v11);
    sub_1DD554(v11, v8, type metadata accessor for ModernShelf);
    (*(v52 + 56))(v8, 0, 1, v53);
    PageContent.addShelfToTop(_:)(v8, a3);
    sub_FCF8(v8, &unk_503DA0);
    sub_1DD5BC(v11, type metadata accessor for ModernShelf);
    return sub_1DD5BC(v43, type metadata accessor for BubbleTip);
  }

  v29 = v28[2];
  if (v29)
  {
    goto LABEL_6;
  }

LABEL_13:

  (*(v55 + 8))(v54, v56);
  v31 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
    goto LABEL_11;
  }

LABEL_14:

  return sub_1DD554(a1, a3, type metadata accessor for PageContent);
}

uint64_t sub_1D56B0(uint64_t a1)
{
  v2 = sub_3ECCF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageContent();
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModernPage();
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v30 = v9;
    v31 = v11;
    v14 = [objc_opt_self() currentTraitCollection];
    swift_beginAccess();

    if (sub_3EDC54())
    {
      v15 = 0;
    }

    else
    {
      sub_3E9D64();
      v15 = v33;
    }

    v33 = v15;
    sub_3E9D74();

    sub_1DD554(a1, v8, type metadata accessor for PageContent);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v16 = v31;
      sub_1DD4EC(v8, v31, type metadata accessor for ModernPage);
      v17 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_pageID;
      swift_beginAccess();
      (*(v3 + 16))(v5, v13 + v17, v2);
      sub_1DD298(&qword_4F8420, &type metadata accessor for PageID);
      v18 = sub_3ED174();
      (*(v3 + 8))(v5, v2);
      if ((v18 & 1) == 0)
      {
        v32 = 0;
        sub_3E9D74();
      }

      swift_beginAccess();
      (*(v3 + 24))(v13 + v17, v16, v2);
      swift_endAccess();
      swift_beginAccess();
      if (*(v13 + 184))
      {

        sub_3E92F4();
      }

      swift_beginAccess();
      if (!*(v13 + 184))
      {
        sub_1DD5BC(v16, type metadata accessor for ModernPage);
        swift_endAccess();
LABEL_18:

        sub_3E9D44();
      }

      swift_endAccess();
      v19 = objc_opt_self();

      if ([v19 supportsLocalLibrary])
      {
      }

      else
      {
        v22 = *(v16 + *(v30 + 24));
        v23 = sub_311154(v22);
        sub_310CAC(v23);
        v24._rawValue = sub_3129C4(v23);
        rawValue = v24._rawValue;
        sub_3E8EB4(v24);
        sub_312E40(rawValue, v23);

        sub_3E8E94();

        v26 = sub_311638(v22);
        v27._rawValue = sub_312E58(v26);
        v28 = v27._rawValue;
        sub_3E8EA4(v27);
        sub_312E40(v28, v26);

        sub_3E8E84();
      }

      v20 = type metadata accessor for ModernPage;
      v21 = v16;
    }

    else
    {
      v20 = type metadata accessor for PageContent;
      v21 = v8;
    }

    sub_1DD5BC(v21, v20);
    goto LABEL_18;
  }

  return result;
}

BOOL sub_1D5C00(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 horizontalSizeClass];
  return v3 == [v2 horizontalSizeClass];
}

uint64_t sub_1D5C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, char a8, uint64_t a9, void *a10)
{
  v63 = a5;
  v73 = a3;
  v74 = a2;
  v15 = a10;
  v16 = sub_3EC1F4();
  __chkstk_darwin(v16 - 8);
  v67 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_3EBEC4();
  v69 = *(v18 - 8);
  __chkstk_darwin(v18);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a6[1];
  v65 = *a6;
  v21 = a6[3];
  v64 = a6[2];
  v66 = v21;
  v22 = *(a6 + 32);
  swift_beginAccess();
  v23 = a10[3];
  v24 = a10[5];
  v72 = a1;
  if (v23 == 1)
  {
    v27 = a10[4];
    *&v77 = a10[2];
    *(&v77 + 1) = 1;
    *&v78 = v27;
    *(&v78 + 1) = v24;
    v79 = 0u;
    v80 = 0u;
    sub_FCF8(&v77, &qword_4F83F8);
  }

  else
  {
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24 == 0;
    }

    if (v25)
    {
      LOBYTE(v26) = 0;
      if (!v20)
      {
        goto LABEL_60;
      }

      goto LABEL_14;
    }
  }

  v70 = v22;
  v71 = v20;
  swift_beginAccess();
  v28 = a10[2];
  v26 = a10[3];
  v30 = a10[4];
  v29 = a10[5];
  if (v26 == 1)
  {
    *&v77 = a10[2];
    *(&v77 + 1) = 1;
    *&v78 = v30;
    *(&v78 + 1) = v29;
    *&v79 = a1;
    *(&v79 + 1) = v74;
    *&v80 = v73;
    *(&v80 + 1) = a4;

    sub_FCF8(&v77, &qword_4F83F8);
  }

  else
  {

    v62 = a10;
    v31 = v18;
    v32 = a8;
    v33 = a7;
    v34 = a4;
    v35 = v74;

    sub_1DD148(v28, v26);
    v36 = _s8ShelfKit17SearchFacetFilterV2eeoiySbAC_ACtFZ_0(v28, v26, v30, v29, a1, v35, v73, v34);

    a4 = v34;
    a7 = v33;
    a8 = v32;
    v18 = v31;
    v15 = v62;

    sub_1DC9B4(v28, v26);
    LOBYTE(v26) = v36 ^ 1;
  }

  v20 = v71;
  v22 = v70;
  if (!v71)
  {
    goto LABEL_60;
  }

LABEL_14:
  if (v22 <= 2)
  {
    v37 = v72;
    if (!v22)
    {
      if ((sub_3EDC54() & 1) == 0)
      {
        goto LABEL_60;
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        LOBYTE(v77) = 0;
        sub_3E9D74();
      }

      goto LABEL_57;
    }

    if (v22 != 1)
    {
      if ((v26 & 1) != 0 && (swift_beginAccess(), v48 = v15[3], v48 != 1))
      {
        v55 = v15[2];
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1DD148(v55, v48);
          sub_1DC9FC(v72, v74, v73, a4);
        }
      }

      else
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          swift_beginAccess();
          if (swift_weakLoadStrong())
          {

            sub_3E9D64();

            v75 = v77;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8408);
            sub_886BC(&qword_4F8410, &qword_4F8408);
            v49 = sub_3ED894();
          }

          else
          {
            v49 = 0;
          }

          LOBYTE(v77) = v49 & 1;
          sub_3E9D74();
          goto LABEL_59;
        }
      }

      goto LABEL_60;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      LOBYTE(v77) = 0;
      sub_3E9D74();
    }

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
LABEL_56:
      if ((sub_3EDC54() & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_57:
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_3E9D64();
        LOBYTE(v77) = (v77 & 1) == 0;
        sub_3E9D74();
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    if (v63 == 2)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
    }

    else
    {
      v50 = v37;
      v51 = sub_3E6244();
      v53 = v52;
      if (v51 == sub_3E6244() && v53 == v54)
      {
      }

      else
      {
        v56 = sub_3EE804();

        if ((v56 & 1) == 0)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          goto LABEL_55;
        }
      }

      v38 = v50;
      v39 = v57;
      v40 = v73;
      v41 = a4;
    }

LABEL_55:
    *&v77 = v38;
    *(&v77 + 1) = v39;
    *&v78 = v40;
    *(&v78 + 1) = v41;
    sub_3E9D74();

    goto LABEL_56;
  }

  if (v22 == 3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D67BC(v67);
      v47 = v68;
      sub_3EBEB4();
      v77 = 0u;
      v78 = 0u;
      sub_1DB94C(v47, &v77, 0);

      sub_FCF8(&v77, &unk_501090);
      (*(v69 + 8))(v47, v18);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      LOBYTE(v77) = 0;
      sub_3E9D74();
    }

    if ((sub_3EDC54() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (v22 != 4)
    {
      goto LABEL_60;
    }

    v71 = v18;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D67BC(v67);
      v42 = v20;
      v43 = v68;
      sub_3EBEB4();
      v77 = 0u;
      v78 = 0u;
      sub_1DB94C(v43, &v77, 0);

      sub_FCF8(&v77, &unk_501090);
      v44 = v43;
      v20 = v42;
      (*(v69 + 8))(v44, v71);
    }

    *&v77 = v65;
    *(&v77 + 1) = v20;
    *&v78 = v64;
    *(&v78 + 1) = v66;
    LOBYTE(v79) = 4;
    v76 = a9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7F08);
    sub_886BC(&qword_4F8400, &qword_4F7F08);
    v45 = sub_3ED894();
    v46 = sub_1D45A0(a7, a8 & 1, v45 & 1);

    if ((v46 & 1) == 0)
    {
      goto LABEL_60;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      LOBYTE(v77) = 0;
      sub_3E9D74();
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    LOBYTE(v77) = 1;
    sub_3E9D74();
LABEL_59:
  }

LABEL_60:
  swift_beginAccess();
  v58 = v15[2];
  v59 = v15[3];
  v60 = v74;
  v15[2] = v72;
  v15[3] = v60;
  v15[4] = v73;
  v15[5] = a4;
  sub_1DC9B4(v58, v59);
}

uint64_t sub_1D67BC@<X0>(uint64_t a1@<X8>)
{
  v8[1] = a1;
  v1 = sub_3EC544();
  __chkstk_darwin(v1 - 8);
  v8[0] = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v5 = v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8174();
  sub_3E8594();
  sub_3E84E4();
  v6 = sub_3E5DC4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_3E6794();
  sub_3EBFC4();
  v15 = v9;
  sub_FCF8(&v15, &unk_4F8A10);
  v14 = v10;
  sub_FCF8(&v14, &qword_4E94E0);
  v13 = v11;
  sub_FCF8(&v13, &unk_4F8A20);
  sub_16AC0(v12);

  sub_FCF8(v5, &unk_4E9EE0);
  sub_3EC534();
  return sub_3EC1C4();
}

double sub_1D6A88@<D0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v24 = *(a1 + 32);
  v9 = a2;
  if (a2 == 2)
  {
    v9 = sub_3E6224();
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v23 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v5;

  v13 = sub_3E6244();
  v15 = v14;
  if (v13 == sub_3E6244() && v15 == v16)
  {

    v5 = v12;
    v6 = v11;
    v7 = v10;
    v8 = v23;
    goto LABEL_18;
  }

  v18 = sub_3EE804();

  v5 = v12;
  v6 = v11;
  v7 = v10;
  v8 = v23;
  if ((v18 & 1) == 0)
  {
LABEL_9:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D6CD0();
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_scope) = v9 & 1;
    }

    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      if (*(v20 + 48))
      {

        sub_3E6624();
      }
    }
  }

LABEL_18:
  v25[0] = v5;
  v25[1] = v6;
  v25[2] = v7;
  v25[3] = v8;
  v26 = v24;
  sub_1DC85C(v5, v6);
  sub_1C7390(v25, a2, v27);
  result = *v27;
  v22 = v27[1];
  *a3 = v27[0];
  *(a3 + 16) = v22;
  *(a3 + 32) = v28;
  return result;
}

uint64_t sub_1D6CD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v0 - 8);
  v34 = &v31 - v1;
  v32 = sub_3E6544();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v32);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_3EC1F4();
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3EBEC4();
  v33 = *(v13 - 8);
  v14 = v33;
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA59C(v12);
  sub_3EBEB4();
  v39[3] = v13;
  v39[4] = &protocol witness table for EmptyAction;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v39);
  (*(v14 + 16))(boxed_opaque_existential_0Tm, v16, v13);
  type metadata accessor for ActionRunnerOptions();
  memset(v38, 0, sizeof(v38));

  sub_3EC464();
  v18 = sub_3E6434();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  ActionRunnerOptions.withActionOrigin(context:sender:view:)(v9, v38, 0);

  sub_FCF8(v9, &qword_5005B0);
  sub_1F958(v39, v36);
  sub_1DA870();
  v19 = v31;
  v20 = v32;
  (*(v2 + 16))(v31, v6, v32);
  v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = swift_allocObject();
  (*(v2 + 32))(v22 + v21, v19, v20);
  v23 = sub_3EC3B4();

  (*(v2 + 8))(v6, v20);
  v37 = v23;
  sub_E69A0(v36, v35);
  v24 = swift_allocObject();
  v25 = v35[1];
  v24[1] = v35[0];
  v24[2] = v25;
  v24[3] = v35[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v26 = sub_3ECE04();
  v27 = sub_3ED6F4();
  v28 = v34;
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_4072F0;
  v29[5] = v24;
  v29[6] = v26;

  sub_E8ECC(0, 0, v28, &unk_407300, v29);

  sub_E91B8(v36);
  sub_FCF8(v38, &unk_501090);
  (*(v33 + 8))(v16, v13);
  return __swift_destroy_boxed_opaque_existential_1Tm(v39);
}

uint64_t sub_1D7248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v22 = v6;
  if ((v4 & 0xC0) == 0x40)
  {
    v9 = *a1;
    v10 = *(a1 + 24);
    v11 = *(a1 + 8);
    if (v8 >> 6 == 1)
    {
      v21 = *(a1 + 8);
      v14 = v9 == v5 && v11 == v6;
      if (!v14 && (sub_3EE804() & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = sub_3E6244();
      v17 = v16;
      if (v15 == sub_3E6244() && v17 == v18)
      {

        goto LABEL_25;
      }

      v20 = sub_3EE804();

      if ((v20 & 1) == 0)
      {
LABEL_22:

LABEL_23:

        goto LABEL_10;
      }

LABEL_25:

      v5 = v9;
      v7 = v10;
      LOBYTE(v8) = v4;
      v13 = v21;
      goto LABEL_11;
    }

    if (!(v8 >> 6) && (*(a1 + 32) & 1) != 0)
    {
      v21 = *(a1 + 8);
      if ((v9 != v5 || v11 != v6) && (sub_3EE804() & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }
  }

  result = sub_1DC958(v5, v6, *(&v6 + 1), v7, v8);
LABEL_10:
  v13 = v22;
LABEL_11:
  *a3 = v5;
  *(a3 + 8) = v13;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  return result;
}

uint64_t sub_1D741C(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v2 - 8);
  v4 = v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F83B0);
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v7 = v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F83B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - v10;
  v12 = type metadata accessor for PageContent();
  __chkstk_darwin(v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    LOBYTE(v41[0]) = v15;
    sub_3E9D74();
    if (v15)
    {
      *v14 = 1;
      swift_storeEnumTagMultiPayload();
      sub_3E9D44();
      sub_1DD5BC(v14, type metadata accessor for PageContent);
      v36 = sub_1D7BBC();
      v42 = v36;
      sub_1F958(v17 + 56, v41);
      v18 = swift_allocObject();
      sub_1D4F0(v41, v18 + 16);
      v35[1] = sub_3E9C64();
      v35[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AB0);
      v38 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503D80);
      v37 = v8;
      sub_886BC(&qword_4F62A8, &qword_4F6AB0);
      sub_886BC(&qword_4F83C0, &unk_503D80);
      sub_3EA1D4();

      sub_801B4();
      v19 = sub_3EDBC4();
      *&v41[0] = v19;
      v20 = sub_3EDB64();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      sub_886BC(&qword_4F83C8, &qword_4F83B0);
      sub_1DD298(&qword_4F1D30, sub_801B4);
      v21 = v40;
      sub_3EA114();
      sub_FCF8(v4, &qword_4F69E0);

      (*(v39 + 8))(v7, v21);
      sub_886BC(&qword_4F83D0, &qword_4F83B8);

      v22 = v37;
      sub_3EA1A4();

      (*(v38 + 8))(v11, v22);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
      sub_886BC(&qword_4F59C8, &qword_4F59C0);
      sub_3E9C94();
      swift_endAccess();
    }

    else
    {
      v23 = [objc_opt_self() sharedInstance];
      type metadata accessor for NetworkObserver();
      v24 = swift_allocObject();
      v25 = sub_39309C(v23, v24);
      v26 = [objc_allocWithZone(ASKAirplaneModeInquiry) init];
      v27 = [objc_allocWithZone(ASKCellularDataInquiry) init];
      v28 = type metadata accessor for ErrorPresenter();
      v29 = objc_allocWithZone(v28);
      v29[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reasonForNoInternet] = 0;
      *&v29[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__error] = 0;
      sub_3E6BF4();
      *&v29[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_networkObserver] = v25;
      v29[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reachabilityType] = 1;
      *&v29[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_airplaneModeInquiry] = v26;
      *&v29[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_cellularDataInquiry] = v27;
      v43.receiver = v29;
      v43.super_class = v28;

      v30 = v26;
      v31 = v27;
      v32 = objc_msgSendSuper2(&v43, "init");
      swift_beginAccess();
      v25[4] = &protocol witness table for ErrorPresenter;
      swift_unknownObjectWeakAssign();
      [v30 setDelegate:v32];

      ErrorPresenter.update()();
      v33 = ErrorPresenter.title.getter();
      static ContentUnavailablePage.offlineSearch(reason:)(v33, v34, v14);

      swift_storeEnumTagMultiPayload();
      sub_3E9D44();

      sub_1DD5BC(v14, type metadata accessor for PageContent);
    }
  }

  return result;
}

uint64_t sub_1D7BBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F83D8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F83E0);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F6890);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = *(v0 + 96);
  if (v12)
  {
    v24 = *(v12 + 16);
    v13 = qword_4E8A08;

    if (v13 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6290);
    sub_886BC(&unk_4F68A0, &qword_4F6290);
    v14 = sub_3E9F44();

    v24 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6298);
    sub_3E8FB4();
    sub_886BC(&unk_4F68B0, &qword_4F6298);
    sub_3E9FA4();

    sub_886BC(&qword_4F62A0, &unk_4F6890);
    v15 = sub_3E9F94();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B80);
    sub_3E9194();
    v16 = sub_3E9174();
    sub_3E9184();

    sub_3ECDF4();
    v17 = sub_3ECD54();

    v24 = v17;
    v18 = objc_allocWithZone(sub_3E8E74());
    v19 = sub_3E8E54();
    v23 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B88);
    sub_886BC(&qword_4F6B90, &qword_4F6B88);
    sub_3E9FC4();

    sub_3E8FB4();
    sub_886BC(&qword_4F83E8, &qword_4F83D8);
    sub_3EA024();
    (*(v2 + 8))(v4, v1);
    sub_886BC(&qword_4F83F0, &qword_4F83E0);
    v15 = sub_3E9F94();
    (*(v22 + 8))(v7, v5);
  }

  return v15;
}

uint64_t sub_1D8130@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 168))(a1, v5, v6);
  v7 = sub_3ECD24();

  *a3 = v7;
  return result;
}

uint64_t sub_1D81B0(uint64_t *a1)
{
  v2 = type metadata accessor for ModernPage();
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PageContent();
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*a1)
  {

    sub_3ECCB4();
    v9 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
    swift_beginAccess();
    v10 = *(v2 + 20);
    v11 = sub_3EC164();
    (*(*(v11 - 8) + 16))(&v4[v10], v8 + v9, v11);
    *&v4[*(v2 + 24)] = Page.modernShelves.getter();
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    sub_1DD554(v4, v7, type metadata accessor for ModernPage);
    v7[v12] = sub_3E66E4();
    swift_storeEnumTagMultiPayload();
    sub_3E9D44();

    sub_1DD5BC(v7, type metadata accessor for PageContent);
    v13 = type metadata accessor for ModernPage;
    v14 = v4;
  }

  else
  {
    sub_3ECCB4();
    sub_3EC154();
    *&v4[*(v2 + 24)] = _swiftEmptyArrayStorage;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    sub_1DD554(v4, v7, type metadata accessor for ModernPage);
    v16 = sub_3E66E4();
    sub_1DD5BC(v4, type metadata accessor for ModernPage);
    v7[v15] = v16;
    swift_storeEnumTagMultiPayload();
    sub_3E9D44();
    v13 = type metadata accessor for PageContent;
    v14 = v7;
  }

  return sub_1DD5BC(v14, v13);
}

uint64_t sub_1D846C()
{
  sub_3E9D64();
  if (v5 != 1)
  {
    goto LABEL_5;
  }

  sub_3E9D64();
  if (!v3)
  {
    sub_1C76B8(v2, 0);
LABEL_5:
    v0 = 0;
    goto LABEL_6;
  }

  sub_1C76B8(v2, v3);
  v0 = v4 == 0;
LABEL_6:
  sub_3E9D64();
  if ((v2 & 1) != 0 || v0)
  {
    sub_3E9D74();
  }

  return sub_3E9D74();
}

Swift::Void __swiftcall SearchPresenter.viewWillAppear()()
{
  v1 = v0;
  v2 = sub_3ECCF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  if (*(v0 + 48))
  {

    sub_3E9D64();

    sub_3E6614();
  }

  v9 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_pageID;
  swift_beginAccess();
  (*(v3 + 16))(v8, v1 + v9, v2);
  sub_3ECCB4();
  v10 = sub_3ECCD4();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  v12 = *(v1 + 48);
  if (v10)
  {
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else if (v12)
  {
LABEL_7:

    sub_3E6624();
  }

  sub_1D8738();
}

void sub_1D8738()
{
  v1 = sub_3EC544();
  __chkstk_darwin(v1 - 8);
  v38 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3EC5F4();
  __chkstk_darwin(v3 - 8);
  v49 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3EC634();
  v5 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E66C4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + 24);
  if (v11)
  {

    sub_3E9D64();
    if (v56 == 1)
    {
      sub_3E9D64();
      v43 = v56;
      v42 = *(v56 + 16);
      if (v42)
      {
        v12 = 0;
        v40 = enum case for MetricsAdHocImpression.searchFilter(_:);
        v39 = (v8 + 104);
        v35 = (v5 + 8);
        v41 = (v8 + 8);
        v13 = (v43 + 56);
        while (v12 < *(v43 + 16))
        {
          v15 = *(v13 - 1);
          v16 = *(v13 - 3);
          v17 = *(v13 - 2);
          if (!v17)
          {
            v16 = 0;
          }

          v18 = 0xE000000000000000;
          if (v17)
          {
            v19 = *(v13 - 2);
          }

          else
          {
            v19 = 0xE000000000000000;
          }

          if (*v13)
          {
            v18 = *v13;
          }

          else
          {
            v15 = 0;
          }

          *v10 = v16;
          v10[1] = v19;
          v10[2] = v15;
          v10[3] = v18;
          (*v39)(v10, v40, v7);
          v20 = *(v11 + 16);
          if (v20)
          {

            sub_3E66B4();
            sub_3EC5C4();
            v47 = sub_3E6694();
            v46 = v21;
            v45 = sub_3E6674();
            v44 = v22;
            v23 = sub_3E7A14();
            v48 = v20;
            v24 = v7;
            v25 = v23;
            v27 = v26;
            v28 = sub_3E6684();
            v30 = v29;
            v31 = sub_3E66A4();
            *&v56 = v47;
            *(&v56 + 1) = v46;
            *&v57 = v45;
            *(&v57 + 1) = v44;
            *&v58 = v12;
            *(&v58 + 1) = v25;
            v7 = v24;
            *&v59 = v27;
            *(&v59 + 1) = v28;
            *&v60 = v30;
            *(&v60 + 1) = v31;
            v61 = v32;
            v52 = v58;
            v53 = v59;
            v54 = v60;
            v55 = v32;
            v50 = v56;
            v51 = v57;
            ImpressionFields.metricsFields.getter();
            sub_130DCC(&v56);
            sub_3EC534();
            sub_130E20(_swiftEmptyArrayStorage);
            sub_130E20(_swiftEmptyArrayStorage);
            v33 = v36;
            sub_3EC604();
            sub_3E68A4();

            (*v35)(v33, v37);
            (*v41)(v10, v24);
          }

          else
          {
            v14 = *v41;

            v14(v10, v7);
          }

          ++v12;
          v13 += 4;
          if (v42 == v12)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_19:
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall SearchPresenter.viewDidAppear()()
{
  v1 = *(v0 + 152);
  *(v0 + 176) = 1;
  if (v1)
  {

    v1(v2);
    sub_16AC0(v1);
    v3 = *(v0 + 152);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  sub_16AC0(v3);
  if (*(v0 + 32))
  {

    sub_3E9D74();
  }
}

void SearchPresenter.viewWillDisappear(forReason:)()
{
  if (qword_4E8998 != -1)
  {
    swift_once();
  }

  v0 = sub_3EC904();
  __swift_project_value_buffer(v0, qword_4F15A8);
  sub_1DD298(&qword_4F8080, &type metadata accessor for ViewWillDisappearReason);
  if ((sub_3ED174() & 1) == 0)
  {
    sub_3E9D64();
    v1 = sub_3EDC24();

    if ((v1 & 1) == 0)
    {

      sub_3E9D74();
    }
  }
}

Swift::Void __swiftcall SearchPresenter.viewDidDisappear()()
{
  *(v0 + 176) = 0;

  sub_3E9D64();

  if (v3)
  {
    sub_1C76B8(v2, v3);
    if (!v4)
    {
      sub_3E9D64();
      if (v2 == 1)
      {
        v1 = *(v0 + 32);
        if (v1)
        {
          if (*(*(v1 + 88) + 32) == 1)
          {
            sub_3E9D74();
          }
        }
      }
    }
  }

  else
  {
    sub_1C76B8(v2, 0);
  }

  if (*(v0 + 32))
  {

    sub_3E9D74();
  }

  swift_beginAccess();
  if (*(v0 + 184))
  {

    sub_3E92F4();
  }
}

Swift::Void __swiftcall SearchPresenter.traitCollectionDidChange(_:)(UITraitCollection a1)
{
  v1 = a1.super.isa;
  sub_3E9D74();

  sub_3EDC54();
  sub_3E9D74();

  sub_3EDC54();
  sub_3E9D74();
  swift_beginAccess();

  if ((sub_3EDC54() & 1) == 0)
  {
    sub_3E9D64();
  }

  sub_3E9D74();

  if ((sub_3EDC34() & 1) == 0)
  {
    sub_3EDC24();
  }

  sub_3E9D74();

  v1;

  sub_3E9D74();

  v2 = [objc_opt_self() mainBundle];
  v4._countAndFlagsBits = 0xE600000000000000;
  v5._countAndFlagsBits = 0x45535F454C544954;
  v5._object = 0xEC00000048435241;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v3.super.isa = v2;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_3E5A74(v5, v6, v3, v7, v4);

  sub_3EDC44();
  sub_3E9D74();
}

Swift::Bool __swiftcall SearchPresenter.shouldPrepareNextPage()()
{
  v1 = v0 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_nextPageIntent;
  swift_beginAccess();
  if (!*(v1 + 24))
  {
    v4 = *(v1 + 16);
    v5 = *v1;
    v6 = v4;
    v7 = *(v1 + 32);
    v2 = BYTE8(v4);
    if (!*(&v4 + 1))
    {
      return v2 & 1;
    }

    goto LABEL_3;
  }

  sub_1F958(v1, &v5);
  v2 = BYTE8(v6);
  if (*(&v6 + 1))
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1Tm(&v5);
    sub_3E9D64();
    v2 = v5 ^ 1;
  }

  return v2 & 1;
}

Swift::Void __swiftcall SearchPresenter.prepareNextPage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = v0 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_nextPageIntent;
  swift_beginAccess();
  if (*(v5 + 24))
  {
    sub_1F958(v5, &v21);
    if (!*(&v22 + 1))
    {
      return;
    }
  }

  else
  {
    v18 = *(v5 + 16);
    v21 = *v5;
    v22 = v18;
    v23 = *(v5 + 32);
    if (!*(&v18 + 1))
    {
      return;
    }
  }

  sub_1D4F0(&v21, v24);
  v6 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v1 + v6) = 1;
  sub_3E9D64();
  v20 = v21;
  v19 = v22;

  sub_3E9D64();

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v7 = *(v1 + 16);
  sub_1F958(v24, &v21);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_1D4F0(&v21, v8 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72F0);

  v9 = sub_3ECE04();
  v10 = sub_3ED6F4();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_40BE28;
  v11[5] = v8;
  v11[6] = v9;

  sub_E8ECC(0, 0, v4, &unk_40B2F0, v11);

  v12 = sub_801B4();
  v13 = sub_3EDBC4();
  *(&v22 + 1) = v12;
  v23 = &protocol witness table for OS_dispatch_queue;
  *&v21 = v13;
  type metadata accessor for PaginationResult();
  sub_3ECD74();

  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 40) = v19;
  *(v15 + 24) = v20;
  v16 = v26;
  *(v15 + 56) = v25;
  *(v15 + 72) = v16;
  *(v15 + 88) = v27;
  swift_allocObject();
  swift_weakInit();

  v17 = sub_3EDBC4();
  *(&v22 + 1) = v12;
  v23 = &protocol witness table for OS_dispatch_queue;
  *&v21 = v17;
  sub_3ECD94();

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
}

uint64_t sub_1D96D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v54 = a3;
  v11 = type metadata accessor for PaginationResult();
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v53 = sub_3E9A04();
  v17 = *(v53 - 8);
  __chkstk_darwin(v53);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v50 = a4;
    v51 = a5;
    sub_3E98D4();
    v49 = a1;
    sub_1DD554(a1, v16, type metadata accessor for PaginationResult);
    v22 = sub_3E99F4();
    v23 = sub_3ED9F4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v48 = a6;
      v25 = v24;
      v26 = swift_slowAlloc();
      v56 = v26;
      *v25 = 136315138;
      sub_1DD554(v16, v13, type metadata accessor for PaginationResult);
      v27 = sub_3ED2B4();
      v29 = v28;
      sub_1DD5BC(v16, type metadata accessor for PaginationResult);
      v30 = sub_2EDD0(v27, v29, &v56);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_0, v22, v23, "Next page fetched: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);

      a6 = v48;
    }

    else
    {

      sub_1DD5BC(v16, type metadata accessor for PaginationResult);
    }

    (*(v17 + 8))(v19, v53);
    sub_3E9D64();
    v31 = _s8ShelfKit17SearchFacetFilterV2eeoiySbAC_ACtFZ_0(v54, v50, v51, a6, v56, v57, v58, v59);

    if ((v31 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_3E9D64();

    v32 = v56;
    v33 = v57;
    v34 = v59;
    v54 = v58;
    v35 = v52;
    v36 = *v52;
    v37 = *(v52 + 8);
    v39 = *(v52 + 16);
    v38 = *(v52 + 24);
    v40 = *(v52 + 32);
    if (v37)
    {
      LODWORD(v53) = v60;
      if (v57)
      {
        if (v36 == v56 && v37 == v57 || (v41 = v59, v42 = sub_3EE804(), v34 = v41, (v42 & 1) != 0))
        {
          if (v39 == v54 && v38 == v34 || (sub_3EE804() & 1) != 0)
          {
            sub_FBD0(v35, v55, &qword_4F7F28);
            sub_1DC85C(v36, v37);
            v43 = v53;
            sub_1C76B8(v32, v33);

            sub_1C76B8(v36, v37);
            if (v40 != v43)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }
        }

        sub_FBD0(v35, v55, &qword_4F7F28);
        sub_1DC85C(v36, v37);
        sub_1C76B8(v32, v33);

        v44 = v36;
        v45 = v37;
LABEL_21:
        sub_1C76B8(v44, v45);
LABEL_24:
        v46 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_isPreparingNextPage;
        swift_beginAccess();
        *(v21 + v46) = 0;
      }

      sub_FBD0(v52, v55, &qword_4F7F28);
      sub_1DC85C(v36, v37);
    }

    else
    {
      if (!v57)
      {
        sub_FBD0(v52, v55, &qword_4F7F28);
        sub_1C76B8(v36, 0);
LABEL_23:
        sub_1D9CDC(v49);
        goto LABEL_24;
      }

      LODWORD(v53) = v60;
      sub_FBD0(v52, v55, &qword_4F7F28);
    }

    sub_1C76B8(v36, v37);
    v44 = v32;
    v45 = v33;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1D9CDC(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = *a1;

  sub_265D38(v8, v7);

  v9 = type metadata accessor for PaginationResult();
  sub_FBD0(a1 + *(v9 + 20), v6, &qword_4F29E0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    sub_FCF8(v6, &qword_4F29E0);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    *(&v18 + 1) = v10;
    v19 = sub_886BC(&unk_503DB0, &qword_4F29E8);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v17);
    sub_1DC8A0(v6, boxed_opaque_existential_0Tm);
  }

  v12 = v2 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_nextPageIntent;
  swift_beginAccess();
  v13 = *(&v18 + 1);
  if (!*(v12 + 24))
  {
    if (*(&v18 + 1))
    {
      goto LABEL_6;
    }

LABEL_8:
    v14 = v18;
    *v12 = v17;
    *(v12 + 16) = v14;
    *(v12 + 32) = v19;
    return swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D4F0(&v17, v12);
  return swift_endAccess();
}

uint64_t sub_1D9EEC(uint64_t a1)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_3E98D4();
    swift_errorRetain();
    v8 = sub_3E99F4();
    v9 = sub_3ED9D4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      v17[1] = a1;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
      v12 = sub_3ED2B4();
      v14 = sub_2EDD0(v12, v13, v18);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "Could not load next page of shelves, reason: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    (*(v3 + 8))(v5, v2);
    v15 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_isPreparingNextPage;
    swift_beginAccess();
    *(v7 + v15) = 0;
    v16 = v7 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_nextPageIntent;
    swift_beginAccess();
    if (*(v16 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    *(v16 + 32) = 0;
    *v16 = 0u;
    *(v16 + 16) = 0u;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DA158@<X0>(uint64_t a1@<X8>)
{
  v8[1] = a1;
  v1 = sub_3EC544();
  __chkstk_darwin(v1 - 8);
  v8[0] = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v5 = v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;

  sub_3E85A4();
  sub_3E8504();
  v6 = sub_3E5DC4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_3E6794();
  sub_3EBFC4();
  v15 = v9;
  sub_FCF8(&v15, &unk_4F8A10);
  v14 = v10;
  sub_FCF8(&v14, &qword_4E94E0);
  v13 = v11;
  sub_FCF8(&v13, &unk_4F8A20);
  sub_16AC0(v12);

  sub_FCF8(v5, &unk_4E9EE0);
  sub_3EC534();
  return sub_3EC1C4();
}

uint64_t sub_1DA438(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_3E7924();
  v8 = v7;
  if (a4)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0;
  }

  v21 = &type metadata for String;
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  *&v20 = v9;
  *(&v20 + 1) = v10;
  sub_1FB90(&v20, v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_39B88(v19, v6, v8, isUniquelyReferenced_nonNull_native);

  v12 = sub_3E7854();
  v14 = v13;
  v15 = sub_3E85A4();
  v21 = &type metadata for String;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  sub_1FB90(&v20, v19);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_39B88(v19, v12, v14, v17);

  return sub_3E6514();
}

uint64_t sub_1DA59C@<X0>(uint64_t a1@<X8>)
{
  v8[1] = a1;
  v1 = sub_3EC544();
  __chkstk_darwin(v1 - 8);
  v8[0] = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v5 = v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E6254();
  sub_3E8594();
  sub_3E8504();
  v6 = sub_3E5DC4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_3E6794();
  sub_3EBFC4();
  v15 = v9;
  sub_FCF8(&v15, &unk_4F8A10);
  v14 = v10;
  sub_FCF8(&v14, &qword_4E94E0);
  v13 = v11;
  sub_FCF8(&v13, &unk_4F8A20);
  sub_16AC0(v12);

  sub_FCF8(v5, &unk_4E9EE0);
  sub_3EC534();
  return sub_3EC1C4();
}

uint64_t sub_1DA870()
{
  v0 = sub_3E7924();
  v2 = v1;
  v14 = &type metadata for String;
  *&v13 = sub_3E6214();
  *(&v13 + 1) = v3;
  sub_1FB90(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_39B88(v12, v0, v2, isUniquelyReferenced_nonNull_native);

  v5 = sub_3E7854();
  v7 = v6;
  v8 = sub_3E8594();
  v14 = &type metadata for String;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  sub_1FB90(&v13, v12);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_39B88(v12, v5, v7, v10);

  sub_3E6254();
  sub_3E6204();
  return sub_3E6514();
}

uint64_t SearchPresenter.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  sub_16AC0(*(v0 + 152));

  v1 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_pageTrackingID;
  v2 = sub_3E5FC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_libraryTipProvider, &qword_4F7F78);

  sub_1DD5BC(v0 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_interactionContextPage, &type metadata accessor for InteractionContext.Page);

  if (*(v0 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_nextPageIntent + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_nextPageIntent);
  }

  v3 = OBJC_IVAR____TtC8ShelfKit15SearchPresenter_pageID;
  v4 = sub_3ECCF4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SearchPresenter.__deallocating_deinit()
{
  SearchPresenter.deinit();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall SearchPresenter.shouldScrollToTop(_:)(Swift::Bool a1)
{
  v2 = sub_3E65B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  sub_3E9D64();
  (*(v3 + 104))(v5, enum case for ExtendedLaunchStatus.finishedLoading(_:), v2);
  v9 = sub_3E65A4();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  return v9 & ~a1 & 1;
}

Swift::Void __swiftcall SearchPresenter.handleNavigationPop(willScrollToTop:)(Swift::Bool willScrollToTop)
{
  if (!willScrollToTop)
  {

    sub_3E9D64();
    if (v2)
    {

      sub_1C76B8(v1, v2);
    }

    else
    {
      sub_1C76B8(v1, 0);
      if (qword_4E89D8 != -1)
      {
        swift_once();
      }
    }

    sub_3E9D74();
  }
}

uint64_t sub_1DAF88(int a1)
{
  v2 = sub_3E65B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  sub_3E9D64();
  (*(v3 + 104))(v5, enum case for ExtendedLaunchStatus.finishedLoading(_:), v2);
  v9 = sub_3E65A4();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  return v9 & ~a1 & 1;
}

uint64_t SearchPresenter.perform(searchAction:)(uint64_t a1)
{
  v3 = sub_3E6E34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v23 = swift_allocObject();
  swift_weakInit();
  v22 = *(v1 + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_searchExtension);
  v9 = *(v1 + 40);
  v10 = *(v4 + 16);
  v10(v8, a1, v3);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v24, v8, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = v8;
  v16 = v22;
  (*(v4 + 32))(v14 + v11, v15, v3);
  *(v14 + v12) = v16;
  *(v14 + v13) = v9;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  if (*(v1 + 176) == 1)
  {

    v17 = v24;
    sub_1DB37C(v24, v16, v9);

    return (*(v4 + 8))(v17, v3);
  }

  else
  {
    v19 = *(v4 + 8);

    v19(v24, v3);
    v20 = *(v1 + 152);
    *(v1 + 152) = sub_1DC424;
    *(v1 + 160) = v14;
    return sub_16AC0(v20);
  }
}

uint64_t sub_1DB37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_3E6E14();
  v4 = sub_3E6264();
  v6 = v5;
  if (v4 == sub_3E6264() && v6 == v7)
  {

LABEL_5:
    sub_3E6E04();

    return sub_3E9D74();
  }

  v8 = sub_3EE804();

  if (v8)
  {
    goto LABEL_5;
  }

  v9 = sub_3E6E24();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    v12 = *(a3 + 16);
    v13 = *(*v12 + class metadata base offset for ManagedBuffer + 16);
    v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v12 + v14));
    v15 = v12 + *(type metadata accessor for SearchController.State(0) + 20) + v13;
    *v15 = v11;
    *(v15 + 8) = 0;
    os_unfair_lock_unlock((v12 + v14));
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtC8ShelfKit15SearchPresenter_userSelectedHint) = 1;
    }
  }

  LOBYTE(v18) = 1;
  sub_3E9D74();
  sub_3E6E04();
  sub_3E9D64();
  if (v19)
  {
  }

  sub_1C76B8(v18, v19);
  sub_3E6DF4();
  if (!v19)
  {
  }

  return sub_3E9D74();
}

uint64_t sub_1DB5E4()
{
  v0 = sub_3E8F34();
  __chkstk_darwin(v0 - 8);
  v1 = sub_3E8F74();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3E8F54();
  __chkstk_darwin(v2 - 8);
  v3 = sub_3E8F04();
  __chkstk_darwin(v3 - 8);
  v4 = sub_3E8F94();
  __chkstk_darwin(v4 - 8);
  sub_3E8E64();
  sub_3E8E34();
  sub_3E8E24();
  sub_3E8E14();
  sub_3E8F84();
  sub_3E8EF4();
  sub_3E8F44();
  sub_3E8F64();
  sub_3E8F24();
  return sub_3E8FA4();
}

uint64_t sub_1DB834(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8418);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  v8[1] = a2;
  sub_3EC744();
  sub_3EC774();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DB94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_3EBEC4();
  v26[3] = v12;
  v26[4] = &protocol witness table for EmptyAction;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v26);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0Tm, a1, v12);
  type metadata accessor for ActionRunnerOptions();

  sub_3EC464();
  v14 = sub_3E6434();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v11, a2, a3);

  sub_FCF8(v11, &qword_5005B0);
  sub_1F958(v26, v24);
  v25 = v15;
  sub_E69A0(v24, v23);
  v16 = swift_allocObject();
  v17 = v23[1];
  v16[1] = v23[0];
  v16[2] = v17;
  v16[3] = v23[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v18 = sub_3ECE04();
  v19 = sub_3ED6F4();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_40C0E0;
  v20[5] = v16;
  v20[6] = v18;

  sub_E8ECC(0, 0, v8, &unk_40C0E8, v20);

  sub_E91B8(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v18;
}

uint64_t sub_1DBC64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1DBCA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8450);
  result = v5(a1, *(a1 + *(v6 + 48)), *(a1 + *(v6 + 48) + 8), *(a1 + *(v6 + 48) + 16), *(a1 + *(v6 + 48) + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1DBD10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1DBD48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(a1, *(a1 + 40), *(a1 + 48));
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DBD94@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + 16);
  if (!*a1)
  {
    v3 = (v2 + 24);
  }

  *a2 = *v3;
}

uint64_t sub_1DBDBC()
{
  if (*(v0 + 24) != 1)
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1DBE04(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DBE80()
{
  result = qword_4F7FB8;
  if (!qword_4F7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7FB8);
  }

  return result;
}

unint64_t sub_1DBED4()
{
  result = qword_4F7FC8;
  if (!qword_4F7FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F7F08);
    sub_1DBF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7FC8);
  }

  return result;
}

unint64_t sub_1DBF58()
{
  result = qword_4F7FD0;
  if (!qword_4F7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7FD0);
  }

  return result;
}

double sub_1DC044@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(v6, a1, *(a1 + 33));
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1DC094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  result = SearchController.publisher(for:)(v5);
  *a2 = result;
  return result;
}

unint64_t sub_1DC0D8()
{
  result = qword_4F8038;
  if (!qword_4F8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F8038);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1DC1A0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F83A8);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_1DC1FC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1DC23C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2400C;

  return sub_1B5908(a1, v4, v1 + 24);
}

uint64_t sub_1DC2E8()
{

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_1DC360()
{
  v1 = sub_3E6E34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DC424()
{
  v1 = *(sub_3E6E34() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DB37C(v0 + v2, v4, v5);
}

uint64_t sub_1DC4C8(uint64_t a1)
{
  result = sub_1DD298(&qword_4F8168, type metadata accessor for SearchPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for SearchPresenter()
{
  result = qword_4F81E0;
  if (!qword_4F81E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DC570()
{
  result = qword_4F8170;
  if (!qword_4F8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F8170);
  }

  return result;
}

uint64_t sub_1DC60C@<X0>(uint64_t *a1@<X8>)
{
  result = SearchPresenter.pageExtensions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC638(void *a1, uint64_t a2)
{
  *(*a2 + 144) = *a1;
}

uint64_t sub_1DC684()
{
  result = sub_3E5FC4();
  if (v1 <= 0x3F)
  {
    result = sub_3E63E4();
    if (v2 <= 0x3F)
    {
      result = sub_3ECCF4();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1DC85C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DC8A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC910()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1DC958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >> 6)
  {
    if (a5 >> 6 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1DC9B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DC9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v9 - 8);
  v47 = &v41 - v10;
  v46 = sub_3E6544();
  v42 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v11;
  __chkstk_darwin(v12);
  v45 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v14 - 8);
  v41 = &v41 - v15;
  v16 = sub_3EC1F4();
  __chkstk_darwin(v16 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_3EBEC4();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA158(v18);
  v48 = v20;
  sub_3EBEB4();
  if (*(v4 + 48))
  {

    v21 = sub_3E6604();
  }

  else
  {
    sub_3E6644();
    v21 = sub_3E6634();
  }

  sub_3E6614();

  sub_3E9D64();
  v22 = a4;
  sub_1DDC20(a1, a2, a3, a4, v52[0]);

  v23 = v49;
  v54[3] = v49;
  v54[4] = &protocol witness table for EmptyAction;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v54);
  (*(v50 + 16))(boxed_opaque_existential_0Tm, v48, v23);
  type metadata accessor for ActionRunnerOptions();
  memset(v53, 0, sizeof(v53));

  sub_3EC464();
  v25 = sub_3E6434();
  v26 = v41;
  (*(*(v25 - 8) + 56))(v41, 1, 1, v25);
  ActionRunnerOptions.withActionOrigin(context:sender:view:)(v26, v53, 0);

  sub_FCF8(v26, &qword_5005B0);
  sub_1F958(v54, v52);
  v27 = v45;
  sub_1DA438(a1, a2, a3, v22);
  v28 = v42;
  v29 = v44;
  v30 = v46;
  (*(v42 + 16))(v44, v27, v46);
  v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v32 = swift_allocObject();
  (*(v28 + 32))(v32 + v31, v29, v30);
  sub_3EC3B4();

  (*(v28 + 8))(v27, v30);
  sub_3E6644();
  *&v51[0] = v21;

  sub_3EC3A4();

  v33 = sub_3EC3B4();

  v52[5] = v33;
  sub_E69A0(v52, v51);
  v34 = swift_allocObject();
  v35 = v51[1];
  v34[1] = v51[0];
  v34[2] = v35;
  v34[3] = v51[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v36 = sub_3ECE04();
  v37 = sub_3ED6F4();
  v38 = v47;
  (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = &unk_40C0C8;
  v39[5] = v34;
  v39[6] = v36;

  sub_E8ECC(0, 0, v38, &unk_40C0D0, v39);

  sub_E91B8(v52);
  sub_FCF8(v53, &unk_501090);
  (*(v50 + 8))(v48, v49);
  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

uint64_t sub_1DD148(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_75Tm()
{
  v1 = sub_3E6544();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DD218()
{
  sub_3E6544();

  return sub_33B928();
}

uint64_t sub_1DD298(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD2E0()
{
  v1 = (type metadata accessor for GroupedSearchResultsPage() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_3ECCF4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[8];
  v7 = sub_3EC164();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DD414@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GroupedSearchResultsPage() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1D3D80(a1, v6, v7, v8, a2);
}

uint64_t sub_1DD49C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DD4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD5BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *RecentlySearchedStorage.__allocating_init()()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 privateQueueContext];

  v3 = swift_allocObject();
  v4 = sub_1E43C8(v0, v2, v3);

  return v4;
}

unint64_t sub_1DD710(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_3EE5A4();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_3EE3F4();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for Shelf(0);
    v8 = sub_3EDEC4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1DD800(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v6 = a4;
    v7 = 0;
    v8 = (a5 + 56);
    v22 = *(a5 + 16);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      if (sub_3E94A4())
      {
        if (v10)
        {

          v11 = v10;
        }

        else
        {
          if (qword_4E8A48 != -1)
          {
            swift_once();
          }

          v13 = sub_3ECE84();
          __swift_project_value_buffer(v13, qword_4F8478);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
          sub_3EBE94();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3EBE14();
          sub_3ECBA4();

          v9 = 0x656E696665646E75;
          v11 = 0xE900000000000064;
          v5 = v22;
        }
      }

      else
      {
        sub_17A28();
        v9 = sub_3EE1F4();
        v11 = v12;
      }

      if (sub_3E94A4())
      {
        if (v6)
        {

          v14 = v6;
          if (v9 != a3)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (qword_4E8A48 != -1)
          {
            swift_once();
          }

          v17 = sub_3ECE84();
          __swift_project_value_buffer(v17, qword_4F8478);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
          sub_3EBE94();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3EBE14();
          sub_3ECBA4();

          v14 = 0xE900000000000064;
          v6 = a4;
          v5 = v22;
          if (v9 != 0x656E696665646E75)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_17A28();
        v15 = sub_3EE1F4();
        v14 = v16;
        if (v9 != v15)
        {
          goto LABEL_20;
        }
      }

      if (v11 == v14)
      {

        return v7;
      }

LABEL_20:
      v18 = sub_3EE804();

      if (v18)
      {
        return v7;
      }

      v8 += 4;
      if (v5 == ++v7)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1DDC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v9 = 0;
    v10 = (a5 + 56);
    do
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      if (v11)
      {
        if (!a2)
        {
          goto LABEL_4;
        }

        if (*(v10 - 3) != a1 || v11 != a2)
        {
          v15 = sub_3EE804();

          if ((v15 & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_17;
        }
      }

      else if (a2)
      {
        goto LABEL_4;
      }

LABEL_17:
      if (!v13)
      {

        if (!a4)
        {
          return v9;
        }

        goto LABEL_4;
      }

      if (!a4)
      {
LABEL_23:

        goto LABEL_4;
      }

      if (v12 == a3 && v13 == a4)
      {

        return v9;
      }

      v16 = sub_3EE804();

      if (v16)
      {
        return v9;
      }

LABEL_4:
      v10 += 4;
      ++v9;
    }

    while (v5 != v9);
  }

  return 0;
}

uint64_t RecentlySearchedStorage.$items.getter()
{

  v0 = sub_1DE324();

  return v0;
}

uint64_t sub_1DDDE0(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v23 = a1 + 32;
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_3EE5A4();
    }

    else
    {
      v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_3EE5A4();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v8 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v27 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *(&dword_18 + (v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_3EE5A4();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_3EE404();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v27)
    {
      goto LABEL_36;
    }

    v25 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_886BC(&qword_4F86E0, &qword_4F59C0);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
        v16 = sub_5A378(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      sub_3E9CB4();
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v27 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v27);
      v21 = v19 + v27;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_3EE5A4();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v27 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1DE0B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (sub_3E94A4())
  {
    if (v2)
    {
    }

    else
    {
      if (qword_4E8A48 != -1)
      {
        swift_once();
      }

      v3 = sub_3ECE84();
      __swift_project_value_buffer(v3, qword_4F8478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
      sub_3EBE94();
      *(swift_allocObject() + 16) = xmmword_3F5630;
      sub_3EBE14();
      sub_3ECBA4();

      return 0x656E696665646E75;
    }
  }

  else
  {
    sub_17A28();
    return sub_3EE1F4();
  }

  return v1;
}

uint64_t RecentlySearchedStorage.pauseUpdates.setter()
{

  sub_3E9D74();
}

uint64_t sub_1DE2B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t sub_1DE324()
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F86F8);
  __chkstk_darwin(v29);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8700);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8708);
  v40 = *(v35 - 8);
  __chkstk_darwin(v35);
  v28 = &v27 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8710);
  __chkstk_darwin(v41);
  v32 = &v27 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7DD0);
  __chkstk_darwin(v36);
  v27 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8718);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  __chkstk_darwin(v8);
  v33 = &v27 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8720);
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v27 - v11;
  v13 = *(v0 + 16);
  v14 = [objc_opt_self() isLikelyToReachRemoteServerWithReachabilityFlags:{objc_msgSend(*(v13 + 16), "networkReachabilityFlags")}];
  v42 = v13;
  sub_1DC0D8();
  v42 = sub_3E9F94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8040);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_3F5630;
  *(v15 + 32) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
  sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
  sub_3EA104();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8680);
  sub_3E9E74();
  swift_endAccess();
  v42 = *(v0 + 24);
  v16 = v42;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  sub_886BC(&qword_4F8728, &qword_4F86F8);
  sub_886BC(&qword_4F7F38, &qword_4F5578);
  sub_3E9B54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7F08);
  sub_886BC(&qword_4F8730, &qword_4F8700);
  v17 = v28;
  v18 = v30;
  sub_3EA024();
  (*(v31 + 8))(v4, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v16;
  sub_886BC(&qword_4F8738, &qword_4F8708);
  v21 = v35;
  sub_3EA034();

  (*(v40 + 8))(v17, v21);
  sub_886BC(&qword_4F8048, &qword_4F7DD0);
  sub_886BC(&qword_4F8740, &qword_4F8710);
  v22 = v33;
  sub_3E9B54();
  sub_886BC(&qword_4F8748, &qword_4F8718);
  v23 = v38;
  sub_3EA024();
  (*(v39 + 8))(v22, v23);
  sub_886BC(&qword_4F8750, &qword_4F8720);
  v24 = v34;
  v25 = sub_3E9F94();
  (*(v37 + 8))(v12, v24);
  return v25;
}

uint64_t sub_1DEB80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_3E9D64();
    if (v10 == 1)
    {
      v8 = sub_115F30(v4, v5) ^ 1;
    }

    else
    {
      v8 = 0;
    }

    *(v7 + 32) = v8 & 1;
  }

  sub_3E9D64();

  *a3 = result;
  return result;
}

uint64_t sub_1DEC44(uint64_t result, uint64_t a2)
{
  v22 = result;
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  v4 = a2 + 32;
  v5 = _swiftEmptyArrayStorage;
  v19 = a2 + 32;
  do
  {
    v20 = v5;
    v6 = (v4 + 32 * v3);
    for (i = v3; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      v9 = *v6;
      v10 = v6[1];
      v21 = *(v6 + 8);
      v11 = *(v6 + 3);
      if (v22)
      {
        break;
      }

      v12 = sub_3E6244();
      v14 = v13;
      if (v12 == sub_3E6244() && v14 == v15)
      {
      }

      else
      {
        v8 = sub_3EE804();

        if ((v8 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v6 += 32;
      if (v3 == v2)
      {
        return v20;
      }
    }

LABEL_13:
    v5 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_41D34(0, v20[2] + 1, 1);
      v5 = v20;
    }

    v4 = v19;
    v17 = v5[2];
    v16 = v5[3];
    if (v17 >= v16 >> 1)
    {
      result = sub_41D34((v16 > 1), v17 + 1, 1);
      v5 = v20;
    }

    v5[2] = v17 + 1;
    v18 = &v5[4 * v17];
    *(v18 + 32) = v9;
    *(v18 + 33) = v10;
    *(v18 + 5) = v21;
    v18[7] = v11;
  }

  while (v3 != v2);
  return v5;
}

uint64_t sub_1DEE28@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DEC44(*a1, *(a1 + 1));
  *a2 = result;
  return result;
}

uint64_t sub_1DEE5C()
{
  v1 = [objc_opt_self() sharedInstance];
  type metadata accessor for NetworkObserver();
  v2 = swift_allocObject();
  *(v0 + 16) = sub_39309C(v1, v2);
  *(v0 + 32) = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7F08);
  sub_3E9E64();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  *(v0 + 24) = sub_3E9D94();
  return v0;
}

uint64_t sub_1DEF60()
{

  v1 = OBJC_IVAR____TtC8ShelfKit21NetworkObservingItems__value;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8680);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF018()
{
  v1 = 1684957547;
  v2 = 0x64496D616461;
  if (*v0 != 2)
  {
    v2 = 1684632949;
  }

  if (*v0)
  {
    v1 = 0x65706F6373;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF0B0(uint64_t a1)
{
  v2 = sub_1E46C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DF0EC(uint64_t a1)
{
  v2 = sub_1E46C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RecentlySearchedStorage.Item.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8490);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  v8 = *v1;
  v14 = v1[1];
  v9 = *(v1 + 1);
  v12[2] = *(v1 + 2);
  v13 = v9;
  v12[1] = *(v1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E46C8();
  sub_3EEA14();
  v21 = v8;
  v20 = 0;
  sub_1E471C();
  sub_3EE764();
  if (!v2)
  {
    v10 = v13;
    v19 = v14;
    v18 = 1;
    sub_1E4770();
    sub_3EE764();
    v15 = v10;
    v17 = 2;
    sub_10F450();
    sub_3EE764();
    v16 = 3;
    sub_3EE6F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RecentlySearchedStorage.Item.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F84B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E46C8();
  sub_3EE9F4();
  if (!v2)
  {
    v21 = 0;
    sub_1E47C4();
    sub_3EE6C4();
    v9 = v22;
    v19 = 1;
    sub_1E4818();
    sub_3EE6C4();
    v10 = v20;
    v18 = 2;
    sub_10F610();
    sub_3EE6C4();
    v16[0] = v16[1];
    v17 = 3;
    v12 = sub_3EE644();
    v13 = v8;
    v15 = v14;
    (*(v6 + 8))(v13, v5);
    *a2 = v9;
    *(a2 + 1) = v10;
    *(a2 + 8) = v16[0];
    *(a2 + 16) = v12;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF5CC()
{
  v0 = sub_3ECE64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_3ECE84();
  __swift_allocate_value_buffer(v1, qword_4F8478);
  __swift_project_value_buffer(v1, qword_4F8478);
  sub_3ECE44();
  return sub_3ECE74();
}

uint64_t RecentlySearchedStorage.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_3E9EA4();

  return v1;
}

uint64_t sub_1DF71C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_1DF7AC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t RecentlySearchedStorage.pauseUpdates.getter()
{

  sub_3E9D64();

  return v1;
}

uint64_t sub_1DF874@<X0>(_BYTE *a1@<X8>)
{

  sub_3E9D64();

  *a1 = v3;
  return result;
}

uint64_t sub_1DF8C8()
{

  sub_3E9D74();
}

uint64_t (*RecentlySearchedStorage.pauseUpdates.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;

  sub_3E9D64();

  *(a1 + 8) = *(a1 + 9);
  return sub_1DF980;
}

uint64_t sub_1DF980(uint64_t a1)
{
  *(a1 + 9) = *(a1 + 8);

  sub_3E9D74();
}

uint64_t sub_1DF9D8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_3EBBC4();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EBC14();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[8];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  aBlock[4] = sub_1E5D40;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_56;
  v11 = _Block_copy(aBlock);

  sub_3EBBE4();
  v16 = _swiftEmptyArrayStorage;
  sub_1E5CC0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

Swift::Void __swiftcall RecentlySearchedStorage.clear()()
{
  v1 = sub_3EBBC4();
  v11 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBC14();
  v4 = *(v10 - 8);
  __chkstk_darwin(v10);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 64);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1E48AC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_15;
  v8 = _Block_copy(aBlock);

  sub_3EBBE4();
  v12 = _swiftEmptyArrayStorage;
  sub_1E5CC0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v8);
  (*(v11 + 8))(v3, v1);
  (*(v4 + 8))(v6, v10);
}

void *sub_1DFFEC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result[6];
    v2 = result[7];
    __swift_project_boxed_opaque_existential_1(result + 3, v1);
    (*(v2 + 24))(v1, v2);

    sub_3E9D64();

    sub_3E9D74();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_3E9EB4();

    sub_3E9D74();
  }

  return result;
}

uint64_t RecentlySearchedStorage.add(_:)()
{

  RecentlySearchedStorage.Item.init(_:)(v0, &v2);
  sub_1E01A8(&v2, 0);
}

uint64_t sub_1E01A8(char *a1, int a2)
{
  v3 = v2;
  v22 = a2;
  v21 = *v2;
  v5 = sub_3EBBC4();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBC14();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v14 = *(a1 + 1);
  v13 = *(a1 + 2);
  v15 = *(a1 + 3);
  v23 = v3[8];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v11;
  *(v17 + 25) = v12;
  *(v17 + 32) = v14;
  *(v17 + 40) = v13;
  *(v17 + 48) = v15;
  *(v17 + 56) = v22;
  *(v17 + 64) = v21;
  aBlock[4] = sub_1E5BF4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_34;
  v18 = _Block_copy(aBlock);

  sub_3EBBE4();
  v27 = _swiftEmptyArrayStorage;
  sub_1E5CC0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v18);
  (*(v26 + 8))(v7, v5);
  (*(v24 + 8))(v10, v25);
}

uint64_t RecentlySearchedStorage.remove(_:)()
{

  RecentlySearchedStorage.Item.init(_:)(v0, &v2);
  sub_1E057C(&v2);
}

uint64_t sub_1E057C(char *a1)
{
  v2 = v1;
  v20[0] = *v1;
  v4 = sub_3EBBC4();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBC14();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 1);
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v20[1] = v2[8];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v10;
  *(v16 + 25) = v11;
  *(v16 + 32) = v12;
  *(v16 + 40) = v13;
  v17 = v20[0];
  *(v16 + 48) = v14;
  *(v16 + 56) = v17;
  aBlock[4] = sub_1E50B4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_25;
  v18 = _Block_copy(aBlock);

  sub_3EBBE4();
  v24 = _swiftEmptyArrayStorage;
  sub_1E5CC0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v18);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
}

uint64_t sub_1E08D4(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = sub_3EBE74();
  __chkstk_darwin(v11 - 8);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3E6144();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v60 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v69 = a2 & 0x1FF;
    v70 = a3;
    v71 = a4;
    v72 = a5;

    v19 = sub_3E6244();
    v21 = v20;
    v22 = sub_3E6244();
    v57[0] = v14;
    v59 = v15;
    if (v19 == v22 && v21 == v23)
    {
    }

    else
    {
      v24 = sub_3EE804();

      if ((v24 & 1) == 0)
      {
        v58 = 0;
        goto LABEL_12;
      }
    }

    v25 = v70;
    if (v70 < 0)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v65 = 0;
    v66 = 0;
    v26 = v18[2];
    v27 = swift_allocObject();
    v27[2] = &v69;
    v27[3] = v26;
    v27[4] = v25;
    v27[5] = &v65;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1E5C5C;
    *(v28 + 24) = v27;
    v63 = sub_FE5AC;
    v64 = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3419B4;
    v62 = &block_descriptor_43;
    v29 = _Block_copy(aBlock);
    v30 = v26;

    [v30 performBlockAndWait:v29];
    _Block_release(v29);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if (v29)
    {
LABEL_37:
      __break(1u);
      swift_once();
      v53 = sub_3ECE84();
      __swift_project_value_buffer(v53, qword_4F8478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
      sub_3EBE94();
      *(swift_allocObject() + 16) = xmmword_3F5630;
      sub_3EBE64();
      v73._object = 0x800000000042A730;
      v73._countAndFlagsBits = 0xD000000000000029;
      sub_3EBE54(v73);
      swift_getErrorValue();
      v54 = v67;
      v55 = v68;
      v62 = v68;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(aBlock);
      (*(*(v55 - 1) + 16))(boxed_opaque_existential_0Tm, v54, v55);
      sub_3EBE34();
      sub_837D0(aBlock);
      v74._countAndFlagsBits = 0;
      v74._object = 0xE000000000000000;
      sub_3EBE54(v74);
      sub_3EBE84();
      sub_3ECB94();

LABEL_32:

      return sub_16AC0(v58);
    }

    if (v66)
    {
      HIBYTE(v69) = 0;
      v71 = v65;
      v72 = v66;
    }

    v58 = sub_1E5C5C;
LABEL_12:
    swift_getKeyPath();
    swift_getKeyPath();

    sub_3E9EA4();

    v31 = aBlock[0];
    v65 = aBlock[0];
    v32 = v69;
    v33 = v70;
    v34 = v71;
    v35 = v72;
    if (HIBYTE(v69))
    {
      v36 = 256;
    }

    else
    {
      v36 = 0;
    }

    v37 = sub_1DD800(v36 | v32, v33, v34, v35, v31);
    v39 = v38;

    if (v39)
    {
      v40 = 0;
    }

    else
    {
      sub_2BF8B8(v37, aBlock);

      if (a6)
      {
        v40 = v37;
      }

      else
      {
        v40 = 0;
      }

      v31 = v65;
    }

    v41 = *(v31 + 2);
    if (v41 < v40)
    {
      __break(1u);
    }

    else if ((v40 & 0x8000000000000000) == 0)
    {
      v57[1] = v13;
      v42 = v69;
      v43 = HIBYTE(v69);
      v45 = v70;
      v44 = v71;
      v46 = v72;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v31;
      if (!isUniquelyReferenced_nonNull_native || v41 >= *(v31 + 3) >> 1)
      {
        v31 = sub_E0704(isUniquelyReferenced_nonNull_native, v41 + 1, 1, v31);
        v65 = v31;
      }

      if (v43)
      {
        v48 = 256;
      }

      else
      {
        v48 = 0;
      }

      sub_17CC44(v40, v40, 1, v48 | v42, v45, v44, v46);

      v65 = v31;
      v49 = v59;
      if (*(v31 + 2) >= 0x15uLL)
      {
        v50 = v60;
        sub_3E6134();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7F08);
        sub_886BC(&qword_4F86E8, &qword_4F7F08);
        sub_886BC(&qword_4F86F0, &qword_4F7F08);
        sub_3ED914();
        (*(v49 + 8))(v50, v57[0]);
        v31 = v65;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = v31;

      sub_3E9EB4();
      v51 = v18[6];
      v52 = v18[7];
      __swift_project_boxed_opaque_existential_1(v18 + 3, v51);
      (*(v52 + 16))(v31, v51, v52);
      sub_1E12F4(v31);

      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_36;
  }

  return result;
}

void sub_1E1120(unsigned __int8 *a1, id a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (v5 == 67)
  {
    v16 = [a2 podcastForStoreId:?];
    if (!v16)
    {
      return;
    }

    v19 = v16;
    if (([v16 isImplicitlyFollowed] & 1) == 0 && objc_msgSend(v19, "subscribed"))
    {
      v13 = [v19 uuid];
      if (!v13)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (v5 != 68)
    {
      return;
    }

    v6 = [a2 episodeForStoreTrackID:?];
    if (!v6)
    {
      return;
    }

    v19 = v6;
    v7 = [v6 podcast];
    if (!v7 || (v8 = v7, v9 = [v7 isImplicitlyFollowed], v8, (v9 & 1) == 0))
    {
      v10 = [v19 podcast];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 subscribed];

        if (v12)
        {
          v13 = [v19 uuid];
          if (!v13)
          {
LABEL_9:

            v14 = 0;
            v15 = 0;
LABEL_15:
            *a4 = v14;
            a4[1] = v15;

            return;
          }

LABEL_14:
          v17 = v13;
          v14 = sub_3ED244();
          v15 = v18;

          goto LABEL_15;
        }
      }
    }
  }
}

uint64_t sub_1E12F4(void *a1)
{
  v2 = v1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F86A8);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = v85 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F86B0);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = v85 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F86B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5310;
  swift_beginAccess();
  *(inited + 32) = *(v2 + 72);
  swift_beginAccess();
  *(inited + 40) = *(v2 + 80);

  v7 = sub_1DDDE0(inited);
  swift_setDeallocating();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  swift_arrayDestroy();
  if (v7 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    v9 = 0;
    while ((v7 & 0xC000000000000001) != 0)
    {
      sub_3EE3F4();
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      sub_3E9CA4();

      ++v9;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_12;
    }

    v10 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  *(v2 + 72) = _swiftEmptyArrayStorage;

  *(v2 + 80) = _swiftEmptyArrayStorage;

  v99 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7F08);
  v12 = sub_886BC(&qword_4F8400, &qword_4F7F08);
  v96 = v11;
  v95 = v12;
  result = sub_3ED894();
  if ((result & 1) == 0)
  {
    return result;
  }

  v85[1] = 0;
  v87 = v2;
  v14 = a1[2];
  if (!v14)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v15 = 0;
  v16 = a1 + 4;
  v17 = _swiftEmptyArrayStorage;
  v86 = a1;
  v97 = a1 + 4;
  while (2)
  {
    v18 = &v16[4 * v15];
    v19 = v15;
    while (1)
    {
      if (v19 >= v14)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        return result;
      }

      v15 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_85;
      }

      v20 = *v18;
      v21 = *(v18 + 1);
      v98 = *(v18 + 1);
      v22 = v18[3];
      if (ModernShelf.ItemKind.rawValue.getter(v20) == 0x6853686372616573 && v23 == 0xEA0000000000776FLL)
      {
      }

      else
      {
        v25 = sub_3EE804();

        if ((v25 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v98 == sub_3E9484())
      {
        break;
      }

LABEL_20:

      ++v19;
      v18 += 4;
      if (v15 == v14)
      {
        a1 = v86;
        goto LABEL_37;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v99 = v17;
    if ((result & 1) == 0)
    {
      result = sub_41D34(0, v17[2] + 1, 1);
      v17 = v99;
    }

    a1 = v86;
    v27 = v17[2];
    v26 = v17[3];
    v28 = v98;
    if (v27 >= v26 >> 1)
    {
      result = sub_41D34((v26 > 1), v27 + 1, 1);
      v28 = v98;
      v17 = v99;
    }

    v17[2] = v27 + 1;
    v29 = &v17[4 * v27];
    *(v29 + 32) = v20;
    *(v29 + 33) = v21;
    *(v29 + 5) = v28;
    v29[7] = v22;
    v16 = v97;
    if (v15 != v14)
    {
      continue;
    }

    break;
  }

LABEL_37:
  v99 = v17;
  result = sub_3ED894();
  if (result)
  {
    v30 = 0;
    v31 = v17[2];
    v32 = _swiftEmptyArrayStorage;
LABEL_39:
    v33 = 32 * v30 + 56;
    while (v31 != v30)
    {
      if (v30 >= v17[2])
      {
        goto LABEL_88;
      }

      v34 = v33 + 32;
      ++v30;
      v35 = *(v17 + v33);
      v33 += 32;
      if (v35)
      {
        v36 = *(v17 + v34 - 40);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_DFAE8(0, *(v32 + 2) + 1, 1, v32);
          v32 = result;
        }

        v38 = *(v32 + 2);
        v37 = *(v32 + 3);
        if (v38 >= v37 >> 1)
        {
          result = sub_DFAE8((v37 > 1), v38 + 1, 1, v32);
          v32 = result;
        }

        *(v32 + 2) = v38 + 1;
        v39 = &v32[16 * v38];
        *(v39 + 4) = v36;
        *(v39 + 5) = v35;
        goto LABEL_39;
      }
    }

    sub_37C6AC(v32);

    sub_3ED244();
    v40 = objc_opt_self();
    isa = sub_3ED7E4().super.isa;

    v42 = [v40 predicateForHiddenPodcastUuids:isa];

    v43 = *(v87 + 16);
    sub_36174(0, &qword_4F10B0);
    v44 = v43;
    sub_3EDBC4();
    sub_36174(0, &qword_4F86C0);
    v45 = v89;
    sub_3E9274();
    sub_886BC(&qword_4F86C8, &qword_4F86A8);
    v46 = v92;
    v47 = v91;
    sub_3EA024();
    (*(v90 + 8))(v45, v47);
    swift_allocObject();
    swift_weakInit();
    sub_886BC(&qword_4F86D0, &qword_4F86B0);
    v48 = v94;
    sub_3EA1A4();

    (*(v93 + 8))(v46, v48);
    swift_beginAccess();
    sub_886BC(&qword_4F59C8, &qword_4F59C0);
    sub_3E9C94();
    swift_endAccess();
  }

  if (v14)
  {
    v97 = v14;
    v49 = 0;
    v50 = a1 + 4;
    v51 = _swiftEmptyArrayStorage;
    v86 = a1 + 4;
    while (2)
    {
      v52 = &v50[4 * v49];
      v53 = v49;
      v54 = v97;
      while (2)
      {
        if (v53 >= v54)
        {
          goto LABEL_86;
        }

        v49 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_87;
        }

        v55 = *v52;
        v56 = *(v52 + 1);
        v98 = *(v52 + 1);
        v57 = v52[3];
        if (ModernShelf.ItemKind.rawValue.getter(v55) == 0x7045686372616573 && v58 == 0xED000065646F7369)
        {
        }

        else
        {
          v60 = sub_3EE804();

          if ((v60 & 1) == 0)
          {
LABEL_54:

            ++v53;
            v52 += 4;
            v54 = v97;
            if (v49 == v97)
            {
              goto LABEL_70;
            }

            continue;
          }
        }

        break;
      }

      if (v98 == sub_3E9484())
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v99 = v51;
        if ((result & 1) == 0)
        {
          result = sub_41D34(0, v51[2] + 1, 1);
          v51 = v99;
        }

        v50 = v86;
        v62 = v51[2];
        v61 = v51[3];
        v63 = v98;
        if (v62 >= v61 >> 1)
        {
          result = sub_41D34((v61 > 1), v62 + 1, 1);
          v63 = v98;
          v51 = v99;
        }

        v51[2] = v62 + 1;
        v64 = &v51[4 * v62];
        *(v64 + 32) = v55;
        *(v64 + 33) = v56;
        *(v64 + 5) = v63;
        v64[7] = v57;
        if (v49 != v97)
        {
          continue;
        }

        goto LABEL_70;
      }

      goto LABEL_54;
    }
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_70:
  v99 = v51;
  result = sub_3ED894();
  if (result)
  {
    v65 = 0;
    v66 = v51[2];
    v67 = _swiftEmptyArrayStorage;
LABEL_72:
    v68 = 32 * v65 + 56;
    v69 = v87;
    while (v66 != v65)
    {
      if (v65 >= v51[2])
      {
        goto LABEL_89;
      }

      v70 = v68 + 32;
      ++v65;
      v71 = *(v51 + v68);
      v68 += 32;
      if (v71)
      {
        v72 = *(v51 + v70 - 40);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_DFAE8(0, *(v67 + 2) + 1, 1, v67);
          v67 = result;
        }

        v74 = *(v67 + 2);
        v73 = *(v67 + 3);
        if (v74 >= v73 >> 1)
        {
          result = sub_DFAE8((v73 > 1), v74 + 1, 1, v67);
          v67 = result;
        }

        *(v67 + 2) = v74 + 1;
        v75 = &v67[16 * v74];
        *(v75 + 4) = v72;
        *(v75 + 5) = v71;
        goto LABEL_72;
      }
    }

    sub_37C6AC(v67);

    sub_3ED244();
    v76 = objc_opt_self();
    v77 = sub_3ED7E4().super.isa;

    v78 = [v76 predicateForHiddenPodcastForEpisodeUuids:v77];

    v79 = *(v69 + 16);
    sub_36174(0, &qword_4F10B0);
    v80 = v79;
    sub_3EDBC4();
    sub_36174(0, &qword_4F86C0);
    v81 = v89;
    sub_3E9274();
    sub_886BC(&qword_4F86C8, &qword_4F86A8);
    v82 = v92;
    v83 = v91;
    sub_3EA024();
    (*(v90 + 8))(v81, v83);
    swift_allocObject();
    swift_weakInit();
    sub_886BC(&qword_4F86D0, &qword_4F86B0);
    v84 = v94;
    sub_3EA1A4();

    (*(v93 + 8))(v82, v84);
    swift_beginAccess();
    sub_886BC(&qword_4F59C8, &qword_4F59C0);
    sub_3E9C94();
    swift_endAccess();
  }
}

uint64_t sub_1E21AC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_3EBE74();
  __chkstk_darwin(v9 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_3E9EA4();

  v23 = v22[0];

  v12 = sub_1E5600(&v23, a2 & 0x1FF, a3, a4, a5);

  v13 = v23;
  v14 = *(v23 + 2);
  if (v12 > v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v14, v12 - v14))
  {
LABEL_15:
    __break(1u);
    swift_once();
    v19 = sub_3ECE84();
    __swift_project_value_buffer(v19, qword_4F8478);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE64();
    v24._object = 0x800000000042A6A0;
    v24._countAndFlagsBits = 0xD00000000000002ELL;
    sub_3EBE54(v24);
    swift_getErrorValue();
    v22[3] = v21;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v22);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_0Tm);
    sub_3EBE34();
    sub_837D0(v22);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_3EBE54(v25);
    sub_3EBE84();
    sub_3ECB94();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v13 + 3) >> 1)
  {
    if (v14 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v14;
    }

    v13 = sub_E0704(isUniquelyReferenced_nonNull_native, v16, 1, v13);
    v23 = v13;
  }

  sub_17CD48(v12, v14, 0);
  v23 = v13;

  sub_1E50DC();

  v17 = v11[6];
  v18 = v11[7];
  __swift_project_boxed_opaque_existential_1(v11 + 3, v17);
  (*(v18 + 16))(v13, v17, v18);
  sub_1E12F4(v13);
}

uint64_t static RecentlySearchedStorage.Item.== infix(_:_:)()
{
  v0 = sub_1DE0B0();
  v2 = v1;
  if (v0 == sub_1DE0B0() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_3EE804();
  }

  return v4 & 1;
}

void *sub_1E267C()
{
  v0 = sub_3EBE74();
  __chkstk_darwin(v0 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result[6];
    v3 = result[7];
    __swift_project_boxed_opaque_existential_1(result + 3, v2);
    v4 = (*(v3 + 8))(v2, v3);
    sub_1E12F4(v4);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_3E9EB4();
    sub_1E29D4();
  }

  return result;
}

void sub_1E29D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_3E9EA4();

  v0 = aBlock[0];
  v1 = *(aBlock[0] + 16);
  if (v1)
  {
    v2 = 0;
    v3 = aBlock[0] + 32;
    v73 = *(aBlock[0] + 16);
    v66 = v1 - 1;
    v4 = _swiftEmptyArrayStorage;
    v68 = aBlock[0] + 32;
    do
    {
      v70 = v4;
      v5 = v3 + 32 * v2;
      v6 = v2;
      while (1)
      {
        if (v6 >= *(v0 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }

        v7 = *v5;
        v8 = *(v5 + 8);
        v76 = *(v5 + 16);
        v9 = *(v5 + 24);
        v10 = *(v5 + 1);

        v11 = sub_3E6244();
        v13 = v12;
        if (v11 == sub_3E6244() && v13 == v14)
        {
          break;
        }

        v16 = sub_3EE804();

        if (v16)
        {
          goto LABEL_13;
        }

        ++v6;

        v5 += 32;
        if (v73 == v6)
        {
          v4 = v70;
          goto LABEL_20;
        }
      }

LABEL_13:
      v4 = v70;
      aBlock[0] = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_41D34(0, v70[2] + 1, 1);
        v4 = aBlock[0];
      }

      v18 = v4[2];
      v17 = v4[3];
      if (v18 >= v17 >> 1)
      {
        sub_41D34((v17 > 1), v18 + 1, 1);
        v4 = aBlock[0];
      }

      v4[2] = v18 + 1;
      v19 = &v4[4 * v18];
      *(v19 + 32) = v7;
      v2 = v6 + 1;
      *(v19 + 33) = v10;
      v19[5] = v8;
      v19[6] = v76;
      v19[7] = v9;
      v3 = v68;
    }

    while (v66 != v6);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

LABEL_20:

  v20 = v4[2];
  if (v20)
  {
    v21 = 0;
    v22 = v4 + 4;
    v77 = v4[2];
    v71 = v20 - 1;
    v69 = _swiftEmptyArrayStorage;
    v74 = v4 + 4;
LABEL_22:
    v23 = &v22[4 * v21];
    v24 = v21;
    while (v24 < v4[2])
    {
      v25 = v4;
      v26 = *v23;
      v27 = *(v23 + 1);
      v28 = v23[1];
      v29 = v23[2];
      v30 = v23[3];
      if (ModernShelf.ItemKind.rawValue.getter(*v23) == 0x6853686372616573 && v31 == 0xEA0000000000776FLL)
      {

LABEL_32:
        v34 = v69;
        aBlock[0] = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_41D34(0, v69[2] + 1, 1);
          v34 = aBlock[0];
        }

        v36 = v34[2];
        v35 = v34[3];
        if (v36 >= v35 >> 1)
        {
          sub_41D34((v35 > 1), v36 + 1, 1);
          v34 = aBlock[0];
        }

        v34[2] = v36 + 1;
        v69 = v34;
        v37 = &v34[4 * v36];
        *(v37 + 32) = v26;
        v21 = v24 + 1;
        *(v37 + 33) = v27;
        v37[5] = v28;
        v37[6] = v29;
        v37[7] = v30;
        v22 = v74;
        v4 = v25;
        if (v71 != v24)
        {
          goto LABEL_22;
        }

LABEL_37:
        v38 = v4[2];
        if (!v38)
        {
          v58 = _swiftEmptyArrayStorage;
          v57 = v69;
          goto LABEL_57;
        }

        v39 = 0;
        v40 = 0xED000065646F7369;
        v41 = 0x7045686372616573;
        v42 = v4 + 4;
        v72 = v4[2];
        v63 = v38 - 1;
        v67 = _swiftEmptyArrayStorage;
        v64 = v4 + 4;
LABEL_39:
        v43 = &v42[4 * v39];
        v44 = v39;
        while (v44 < v4[2])
        {
          v45 = *v43;
          v78 = *(v43 + 1);
          v46 = v43[2];
          v75 = v43[1];
          v47 = v43[3];
          if (ModernShelf.ItemKind.rawValue.getter(*v43) == v41 && v48 == v40)
          {
            v50 = v41;
            v51 = v40;

LABEL_49:
            v53 = v67;
            aBlock[0] = v67;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_41D34(0, v67[2] + 1, 1);
              v53 = aBlock[0];
            }

            v55 = v53[2];
            v54 = v53[3];
            if (v55 >= v54 >> 1)
            {
              sub_41D34((v54 > 1), v55 + 1, 1);
              v53 = aBlock[0];
            }

            v53[2] = v55 + 1;
            v67 = v53;
            v56 = &v53[4 * v55];
            *(v56 + 32) = v45;
            v39 = v44 + 1;
            *(v56 + 33) = v78;
            v56[5] = v75;
            v56[6] = v46;
            v56[7] = v47;
            v42 = v64;
            v4 = v25;
            v40 = v51;
            v41 = v50;
            if (v63 == v44)
            {
LABEL_54:
              v58 = v67;
              v57 = v69;
              goto LABEL_57;
            }

            goto LABEL_39;
          }

          v50 = v41;
          v51 = v40;
          v52 = sub_3EE804();

          if (v52)
          {
            goto LABEL_49;
          }

          ++v44;

          v43 += 4;
          v4 = v25;
          v40 = v51;
          v41 = v50;
          if (v72 == v44)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_60;
      }

      v33 = sub_3EE804();

      if (v33)
      {
        goto LABEL_32;
      }

      ++v24;

      v23 += 4;
      v4 = v25;
      if (v77 == v24)
      {
        goto LABEL_37;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
    v58 = _swiftEmptyArrayStorage;
LABEL_57:

    v59 = *(v65 + 16);
    v60 = swift_allocObject();
    swift_weakInit();
    v61 = swift_allocObject();
    v61[2] = v60;
    v61[3] = v57;
    v61[4] = v58;
    aBlock[4] = sub_1E5D90;
    aBlock[5] = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_63;
    v62 = _Block_copy(aBlock);

    [v59 performBlock:v62];
    _Block_release(v62);
  }
}