Swift::Void __swiftcall StorePageProvider.prepareNextPage()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
  swift_beginAccess();
  if (*(v4 + 24))
  {
    sub_1F958(v4, &v16);
    if (!*(&v17 + 1))
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    v16 = *v4;
    v17 = v5;
    v18 = *(v4 + 32);
    if (!*(&v5 + 1))
    {
      return;
    }
  }

  sub_1D4F0(&v16, v19);
  v6 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_isPreparingNextPage;
  swift_beginAccess();
  if (*(v0 + v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    *(v0 + v6) = 1;
    v7 = *(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_objectGraph);
    sub_1F958(v19, &v16);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    sub_1D4F0(&v16, v8 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72F0);

    v9 = sub_3ECE04();
    v10 = sub_3ED6F4();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = &unk_40B2E0;
    v11[5] = v8;
    v11[6] = v9;

    sub_E8ECC(0, 0, v3, &unk_40B2F0, v11);

    v12 = sub_36174(0, &qword_4F10B0);
    v13 = sub_3EDBC4();
    *(&v17 + 1) = v12;
    v18 = &protocol witness table for OS_dispatch_queue;
    *&v16 = v13;
    type metadata accessor for PaginationResult();
    sub_3ECD74();

    __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();

    v14 = sub_3EDBC4();
    *(&v17 + 1) = v12;
    v18 = &protocol witness table for OS_dispatch_queue;
    *&v16 = v14;
    sub_3ECD94();

    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  }
}

uint64_t sub_1B5908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
  v5 = swift_task_alloc();
  v3[10] = v5;
  *v5 = v3;
  v5[1] = sub_1B59CC;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_1B59CC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B5D44;
  }

  else
  {
    v2 = sub_1B5AE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1B5AE0()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = v1[3];
  v5 = v1[4];
  v6 = __swift_project_boxed_opaque_existential_1(v1, v4);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1B5BCC;
  v8 = v0[7];
  v9 = v0[8];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v8, v6, v9, v4, v5, v2, v3);
}

uint64_t sub_1B5BCC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B5D5C;
  }

  else
  {
    v2 = sub_1B5CE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1B5CE0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B5D5C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B5E00(unint64_t *a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount;
  v8 = *(result + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(result + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) = v10;
  sub_1B5F20(a1);
  v11 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_isPreparingNextPage;
  result = swift_beginAccess();
  *(v6 + v11) = 0;
  v12 = *(v6 + v7);
  v9 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  if (v9)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *(v6 + v7) = v13;
  if (!v13)
  {
    sub_1B3DDC(v4);
    sub_3E9D74();
  }
}

uint64_t sub_1B5F20(unint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageContent();
  __chkstk_darwin(v4 - 8);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = *a1;
  sub_265D38(*(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_objectGraph), *a1);
  v11 = type metadata accessor for PaginationResult();
  sub_FBD0(a1 + *(v11 + 20), v9, &qword_4F29E0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
  if ((*(*(v12 - 8) + 48))(v9, 1, v12) == 1)
  {
    sub_FCF8(v9, &qword_4F29E0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  else
  {
    *(&v25 + 1) = v12;
    v26 = sub_886BC(&unk_503DB0, &qword_4F29E8);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v24);
    sub_FACC(v9, boxed_opaque_existential_0Tm, &qword_4F29E8);
  }

  v14 = v2 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
  swift_beginAccess();
  if (*(v14 + 24))
  {
    if (*(&v25 + 1))
    {
      __swift_assign_boxed_opaque_existential_1(v14, &v24);
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else if (*(&v25 + 1))
  {
    sub_1F958(&v24, v14);
    goto LABEL_11;
  }

  v15 = v25;
  *v14 = v24;
  *(v14 + 16) = v15;
  *(v14 + 32) = v26;
LABEL_11:
  swift_endAccess();
  if (*(v2 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) < 1)
  {
    sub_1B3DDC(v6);
    sub_3E9D74();
  }

  if (*(&v25 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  }

  result = [objc_opt_self() supportsLocalLibrary];
  if ((result & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController))
    {

      v17 = sub_310C94(v10);
      sub_310CAC(v17);
      v18._rawValue = sub_3129C4(v17);
      rawValue = v18._rawValue;
      sub_3E8EB4(v18);
      sub_312E40(rawValue, v17);

      sub_3E8E94();

      v20 = sub_310E88(v10);
      v21._rawValue = sub_312E58(v20);
      v22 = v21._rawValue;
      sub_3E8EA4(v21);
      sub_312E40(v22, v20);

      sub_3E8E84();
    }
  }

  return result;
}

uint64_t sub_1B62B4(uint64_t a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_3E9A04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_3E9934();
    swift_errorRetain();
    v11 = sub_3E99F4();
    v12 = sub_3ED9D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = v4;
      v14 = v13;
      v15 = swift_slowAlloc();
      *&v24 = v15;
      *v14 = 136315138;
      v27 = a1;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
      v16 = sub_3ED2B4();
      v18 = sub_2EDD0(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v11, v12, "Could not load next page of shelves, reason: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);

      v4 = v23;
    }

    (*(v6 + 8))(v8, v5);
    v19 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_isPreparingNextPage;
    swift_beginAccess();
    *(v10 + v19) = 0;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v20 = v10 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
    swift_beginAccess();
    if (*(v20 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    v21 = v24;
    v22 = v25;
    *(v20 + 32) = v26;
    *v20 = v21;
    *(v20 + 16) = v22;
    swift_endAccess();
    if (*(v10 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) < 1)
    {
      sub_1B3DDC(v4);
      sub_3E9D74();
      if (*(&v25 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v24);
      }
    }

    else
    {

      if (*(&v25 + 1))
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(&v24);
      }
    }
  }

  return result;
}

uint64_t sub_1B65DC(uint64_t a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1B8BD4(a1, v7, type metadata accessor for ModernShelf);
    v10 = type metadata accessor for ModernShelf();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    v11 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightShelf;
    swift_beginAccess();
    sub_B8464(v7, v9 + v11, &unk_503DA0);
    swift_endAccess();
    if (*(v9 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) < 1)
    {
      sub_1B3DDC(v4);
      sub_3E9D74();
      sub_FCF8(v7, &unk_503DA0);
    }

    else
    {

      sub_FCF8(v7, &unk_503DA0);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    swift_beginAccess();
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    sub_1AE550(v14, *(v13 + 24));

    if (v15)
    {
      if (v15 != 1)
      {
        return result;
      }
    }

    else if (!v14)
    {
      return result;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1B2FFC();
      sub_1B78E4(v14, v15);
    }

    else
    {
      return sub_1B78E4(v14, v15);
    }
  }

  return result;
}

uint64_t sub_1B6898(uint64_t a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_FBD0(a1, v5, &unk_503DA0);
    v8 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingHeaderShelf;
    swift_beginAccess();
    sub_B8464(v5, v7 + v8, &unk_503DA0);
    v9 = swift_endAccess();
    if (*(v7 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) < 1)
    {
      sub_1B3DDC(v9);
      sub_3E9D74();
      sub_FCF8(v5, &unk_503DA0);
    }

    else
    {

      return sub_FCF8(v5, &unk_503DA0);
    }
  }

  return result;
}

uint64_t sub_1B6A58(uint64_t *a1, uint64_t a2)
{
  v4 = sub_3EBBC4();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3EBC14();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_36174(0, &qword_4F10B0);
  v11 = sub_3EDBC4();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = a2;
  aBlock[4] = sub_1B8DB4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1B8C3C(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v13);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

uint64_t sub_1B6D60(uint64_t a1)
{
  v2 = sub_3E5DC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E9A04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v46 - v10;
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v52 = sub_36174(0, &qword_4F6BF0);
  sub_3EE0D4();

  v14 = sub_3E99F4();
  v15 = sub_3ED9F4();

  if (os_log_type_enabled(v14, v15))
  {
    v46 = v3;
    v48 = v15;
    v49 = v7;
    v50 = v6;
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55[0] = v47;
    *v16 = 136315650;
    v54 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F74C8);
    sub_886BC(&qword_4F74D0, &qword_4F74C8);
    sub_68DC4();
    v17 = sub_3ED504();
    v19 = sub_2EDD0(v17, v18, v55);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v22 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
      swift_beginAccess();
      v23 = v46;
      if ((*(v46 + 48))(v21 + v22, 1, v2))
      {

        v24 = 0;
        v25 = 0xE000000000000000;
      }

      else
      {
        (*(v23 + 16))(v5, v21 + v22, v2);

        v24 = sub_3E5CD4();
        v25 = v28;
        (*(v23 + 8))(v5, v2);
      }
    }

    else
    {
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    v29 = sub_2EDD0(v24, v25, v55);

    *(v16 + 14) = v29;
    *(v16 + 22) = 2080;
    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    v27 = v53;
    if (!v30 || (v32 = *(v30 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_channelAdamId), v31 = *(v30 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_channelAdamId + 8), , , !v31))
    {

      v32 = 0;
      v31 = 0xE000000000000000;
    }

    v33 = v49;
    v34 = sub_2EDD0(v32, v31, v55);

    *(v16 + 24) = v34;
    _os_log_impl(&dword_0, v14, v48, "StorePresenter got purchase list %s and we're displaying url %s for channel: %s", v16, 0x20u);
    swift_arrayDestroy();

    v26 = *(v33 + 8);
    v6 = v50;
    v26(v13, v50);
  }

  else
  {

    v26 = *(v7 + 8);
    v26(v13, v6);
    v27 = v53;
  }

  v36 = sub_1B9180(v35);

  v37 = *(v36 + 16);

  if (v37)
  {
    sub_3EE0D4();
    v38 = sub_3E99F4();
    v39 = sub_3ED9F4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "StorePresenter product displayed was purchased, reloading", v40, 2u);
    }

    v26(v27, v6);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      StorePageProvider.reload(ignoreCache:)(1);
    }
  }

  else
  {
    v42 = v51;
    sub_3EE0D4();
    v43 = sub_3E99F4();
    v44 = sub_3ED9F4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "No changes in entitlement for StorePresenter product displayed.", v45, 2u);
    }

    return (v26)(v42, v6);
  }

  return result;
}

uint64_t sub_1B73E8(void *a1, uint64_t a2)
{
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*a1 >> 57) & 0x78 | *a1 & 7;
  if (v8 == 95)
  {
    v9 = "om store page for podcast";
  }

  else
  {
    v9 = "reloadSubscription";
  }

  sub_3E9924();
  v10 = sub_3ED9F4();
  v11 = sub_3E99F4();
  if (os_log_type_enabled(v11, v10))
  {
    if (v8 == 95)
    {
      v12 = 0xD000000000000052;
    }

    else
    {
      v12 = 0xD000000000000039;
    }

    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v13 = 136315395;
    v14 = sub_2EDD0(v12, v9 | 0x8000000000000000, &v20);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2081;
    v19 = a2;
    v15 = sub_3EE7A4();
    v17 = sub_2EDD0(v15, v16, &v20);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_0, v11, v10, "%s adamID: %{private}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B7630(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9924();
  v8 = sub_3ED9F4();
  v9 = sub_3E99F4();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = a2;
    v20 = v11;
    *v10 = 136380931;
    v12 = sub_3EE7A4();
    v14 = sub_2EDD0(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v19 = a1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v15 = sub_3ED2B4();
    v17 = sub_2EDD0(v15, v16, &v20);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_0, v9, v8, "Error triggering feed update from store page for podcast adamID: %{private}s, with error: %s.", v10, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t *sub_1B7848(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B8DD4(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1B78E4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B78F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1B7940(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1B7950()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1B7990(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2400C;

  return sub_1B5908(a1, v4, v1 + 24);
}

uint64_t sub_1B7A3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2368C;

  return sub_E7E28(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for StorePageProvider()
{
  result = qword_4F7320;
  if (!qword_4F7320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7B94()
{
  sub_1B7E00(319, &qword_4E9918, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_3E5FC4();
    if (v1 <= 0x3F)
    {
      sub_1B7E00(319, &qword_4F5FD0, type metadata accessor for ModernShelf);
      if (v2 <= 0x3F)
      {
        sub_1B7E00(319, &unk_4F7330, &type metadata accessor for InteractionContext.Page);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B7E00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_8ShelfKit17StorePageProviderC5StateV0dF0O(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_8ShelfKit17StorePageProviderC5StateV04LoadF0O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7E88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7EE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B7F44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7F98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B7FF4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1B8024(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1B804C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1B8084(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1B80F8(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v3 - 8);
  v5 = &v71 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v71 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v9 - 8);
  v11 = (&v71 - v10);
  v12 = sub_3E5FC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v16 - 8);
  v18 = &v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F74B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v71 - v20;
  if ((sub_3E6374() & 1) == 0)
  {
    return 0;
  }

  v83 = v13;
  v22 = *(a1 + 16);
  v23 = (v22 >> 62);
  if (v22 >> 62)
  {
    goto LABEL_37;
  }

  v24 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  if (!v24)
  {
    return 0;
  }

LABEL_4:
  v79 = v18;
  v77 = v23;
  v80 = v11;
  v81 = v8;
  v78 = v5;
  v5 = 0;
  v18 = (v22 & 0xC000000000000001);
  v8 = (v22 & 0xFFFFFFFFFFFFFF8);
  v11 = &OBJC_IVAR____TtC8ShelfKit5Shelf_contentType;
  while (!v18)
  {
    if (v5 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_37:
      v24 = sub_3EE5A4();
      if (!v24)
      {
        return 0;
      }

      goto LABEL_4;
    }

    v25 = *(v22 + 8 * v5 + 32);
    v23 = (v5 + 1);
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    if (*&v25[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] == 20)
    {
      goto LABEL_14;
    }

    ++v5;
    if (v23 == v24)
    {
      return 0;
    }
  }

  v25 = sub_3EE3F4();
  v23 = (v5 + 1);
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v82 = v25;
  v26 = sub_1DD710(v25, v22);
  if (v27)
  {
    goto LABEL_22;
  }

  v76 = v26;
  v28 = OBJC_IVAR____TtC8ShelfKit5Shelf_items;
  v29 = v82;
  swift_beginAccess();
  v30 = *&v29[v28];
  if (!*(v30 + 16))
  {
    v62 = v29;
LABEL_23:

    return 0;
  }

  sub_1F958(v30 + 32, &v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B70);
  v31 = type metadata accessor for Paragraph();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v62 = v82;
    goto LABEL_23;
  }

  v32 = v86;
  v33 = (*(v86 + 32) & 0x3FFFFFFFFFFFFFFFLL);
  v75 = sub_3E6324();
  v74 = v33;
  v34 = sub_3E9A14();

  v35 = sub_3E6314();
  if (!v35)
  {

    goto LABEL_22;
  }

  v36 = sub_3E9A64();
  v37 = v35;
  v73 = v31;
  v38 = v37;
  sub_3E9A24();
  v39 = objc_allocWithZone(v36);
  v75 = v38;
  v40 = sub_3E9A74();
  v74 = (v40 | 0x8000000000000000);
  v72 = *(v32 + 40);
  swift_beginAccess();
  v71 = *(v32 + 42);
  swift_beginAccess();
  LOBYTE(v36) = *(v32 + 43);
  sub_FBD0(v32 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, v21, &qword_4F74B0);
  v84 = v32;
  v41 = v79;
  sub_FBD0(v32 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, v79, &unk_4E9170);
  v42 = swift_allocObject();
  *(v42 + 32) = v74;
  *(v42 + 40) = v72;
  *(v42 + 42) = v71;
  *(v42 + 43) = v36;
  sub_FBD0(v21, v42 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0);
  sub_FBD0(v41, v42 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170);
  v43 = v40;
  sub_3E5FB4();
  v44 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v74 = v45;

  (*(v83 + 8))(v15, v12);
  sub_FCF8(v41, &unk_4E9170);
  sub_FCF8(v21, &qword_4F74B0);
  v46 = v74;
  *(v42 + 16) = v44;
  *(v42 + 24) = v46;
  v47 = type metadata accessor for ActionMenu(0);
  v48 = v80;
  (*(*(v47 - 8) + 56))(v80, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1408);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_3F5630;
  *(v49 + 56) = v73;
  *(v49 + 64) = sub_1B8C3C(&qword_4F74B8, type metadata accessor for Paragraph);
  v83 = v42;
  *(v49 + 32) = v42;
  v50 = sub_3E5DC4();
  v51 = v81;
  (*(*(v50 - 8) + 56))(v81, 1, 1, v50);
  v52 = sub_3E7784();
  v53 = v78;
  (*(*(v52 - 8) + 56))(v78, 1, 1, v52);
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_FBD0(&v82[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], v41, &unk_4E9170);
  v54 = type metadata accessor for Shelf(0);
  v55 = objc_allocWithZone(v54);
  v56 = &v55[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
  *v56 = 0;
  v56[1] = 0;
  v57 = v53;
  *&v55[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = 20;
  v58 = &v55[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
  *v58 = 0;
  v58[1] = 0;
  v59 = &v55[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
  *v59 = 0;
  v59[1] = 0;
  v55[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = 0;
  sub_FBD0(v48, &v55[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8);
  *&v55[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = 0;
  v55[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = 0;
  *&v55[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = v49;
  sub_FBD0(v51, &v55[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0);
  v60 = &v55[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
  *v60 = 3;
  v60[8] = 2;
  *&v55[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = 1;
  v55[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = 0;
  v55[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = 0;
  sub_FBD0(v53, &v55[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50);
  v61 = &v55[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
  if (*(&v88 + 1))
  {
    sub_1F958(&v87, v61);
  }

  else
  {
    v64 = v87;
    v65 = v88;
    *(v61 + 32) = v89;
    *v61 = v64;
    *(v61 + 16) = v65;
  }

  v66 = v79;
  sub_FBD0(v79, &v55[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170);
  v85.receiver = v55;
  v85.super_class = v54;

  v67 = objc_msgSendSuper2(&v85, "init");
  sub_FCF8(v66, &unk_4E9170);
  if (*(&v88 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v87);
  }

  sub_FCF8(v57, &qword_4F1D50);
  sub_FCF8(v81, &unk_4E9EE0);
  sub_FCF8(v80, &qword_4F1AB8);

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v77 || !isUniquelyReferenced_nonNull_bridgeObject)
  {
    v22 = sub_2A68C0(v22);

    v8 = (v22 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
  }

  if ((v76 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v76 >= *(v8 + 2))
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v69 = &v8[8 * v76];
  v70 = *(v69 + 4);
  *(v69 + 4) = v67;

  return v22;
}

uint64_t sub_1B8BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8C3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8D74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B8DD4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a1;
  v42 = sub_3E5DC4();
  __chkstk_darwin(v42);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v48 = a3;
  v9 = *(a3 + 56);
  v8 = a3 + 56;
  v7 = v9;
  v10 = 1 << *(v8 - 24);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v40 = 0;
  v41 = (v4 + 48);
  v36 = (v4 + 16);
  v35 = (v4 + 8);
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = v14 | (v6 << 6);
    v18 = (*(v48 + 48) + 16 * v17);
    v19 = v18[1];
    v43 = *v18;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = *(Strong + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_channelAdamId);
      v22 = *(Strong + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_channelAdamId + 8);

      if (v22)
      {
        v46 = v43;
        v47 = v19;
        v44 = v21;
        v45 = v22;
        sub_68DC4();
        v23 = sub_3EE1C4();

        if (v23)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
    }

    swift_beginAccess();
    v24 = swift_weakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
      swift_beginAccess();
      if ((*v41)(v25 + v26, 1, v42))
      {
      }

      else
      {
        v27 = v25 + v26;
        v28 = v37;
        (*v36)(v37, v27, v42);

        v34 = sub_3E5CD4();
        v30 = v29;
        (*v35)(v28, v42);
        v46 = v34;
        v47 = v30;
        v44 = v43;
        v45 = v19;
        sub_68DC4();
        sub_3EE1C4();

LABEL_21:

        *(v39 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_24:
          v32 = v48;

          sub_37B790(v39, v38, v40, v32);
          return;
        }
      }
    }

    else
    {
    }
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v13)
    {
      goto LABEL_24;
    }

    v16 = *(v8 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1B9180(uint64_t a1)
{
  v2 = v1;
  v40 = sub_3E5DC4();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_28;
  }

  while (2)
  {
    v35 = v7;
    v36 = v2;
    v34 = &v30;
    __chkstk_darwin(v9);
    v37 = &v30 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v8);
    v10 = 0;
    v2 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v7 = (v11 + 63) >> 6;
    v38 = 0;
    v39 = (v4 + 48);
    v32 = (v4 + 16);
    v31 = (v4 + 8);
    v41 = a1;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      v17 = v14 | (v10 << 6);
      v18 = (*(a1 + 48) + 16 * v17);
      v19 = v18[1];
      v42 = *v18;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v8 = *(Strong + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_channelAdamId);
        v4 = *(Strong + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_channelAdamId + 8);

        if (v4)
        {
          v45 = v42;
          v46 = v19;
          v43 = v8;
          v44 = v4;
          sub_68DC4();
          v8 = sub_3EE1C4();

          if (v8)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
      }

      swift_beginAccess();
      v21 = swift_weakLoadStrong();
      if (v21)
      {
        v8 = v21;
        v4 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
        swift_beginAccess();
        if ((*v39)(v8 + v4, 1, v40))
        {

          a1 = v41;
        }

        else
        {
          v22 = v8 + v4;
          v23 = v33;
          (*v32)(v33, v22, v40);

          v30 = sub_3E5CD4();
          v25 = v24;
          (*v31)(v23, v40);
          v45 = v30;
          v46 = v25;
          v4 = v25;
          v43 = v42;
          v44 = v19;
          sub_68DC4();
          v8 = &v45;
          sub_3EE1C4();

LABEL_22:

          *&v37[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          v26 = __OFADD__(v38++, 1);
          a1 = v41;
          if (v26)
          {
            __break(1u);
LABEL_25:
            v27 = sub_37B790(v37, v35, v38, a1);

            return v27;
          }
        }
      }

      else
      {

        a1 = v41;
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_25;
      }

      v16 = *(v2 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v29 = swift_slowAlloc();

  v27 = sub_1B7848(v29, v7, a1);

  return v27;
}

uint64_t sub_1B969C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1B96F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v314 = a5;
  v313 = a4;
  v312 = a3;
  v316 = a2;
  v325 = a6;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7508);
  v321 = *(v323 - 8);
  __chkstk_darwin(v323);
  v318 = &v308 - v7;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7510);
  v322 = *(v324 - 8);
  __chkstk_darwin(v324);
  v320 = &v308 - v8;
  v9 = sub_3EBF94();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v308 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v308 - v14;
  v16 = *a1;
  sub_3EBF84();
  v326 = v15;
  JSONContext.withActionKinds()(v15);
  v17 = *(v10 + 8);
  v319 = v9;
  v317 = v10 + 8;
  v315 = v17;
  result = v17(v12, v9);
  v19 = *(v16 + 16);
  v329 = v16;
  v331 = v19;
  if (v19)
  {
    v20 = 0;
    v21 = (v16 + 32);
    v332 = v19 - 1;
    v22 = _swiftEmptyArrayStorage;
    v333 = (v16 + 32);
    do
    {
      v334 = v22;
      v23 = &v21[32 * v20];
      v24 = v20;
      while (1)
      {
        if (v24 >= *(v329 + 16))
        {
LABEL_273:
          __break(1u);
          goto LABEL_274;
        }

        v25 = *v23;
        v27 = *(v23 + 1);
        v26 = *(v23 + 2);
        v28 = *(v23 + 3);
        v29 = v23[1];

        v30 = sub_3E6244();
        v32 = v31;
        if (v30 == sub_3E6244() && v32 == v33)
        {
          break;
        }

        v35 = sub_3EE804();

        if (v35)
        {
          goto LABEL_13;
        }

        ++v24;

        v23 += 32;
        if (v331 == v24)
        {
          v22 = v334;
          goto LABEL_20;
        }
      }

LABEL_13:
      v22 = v334;
      result = swift_isUniquelyReferenced_nonNull_native();
      v342 = v22;
      if ((result & 1) == 0)
      {
        result = sub_41D34(0, *(v22 + 2) + 1, 1);
        v22 = v342;
      }

      v37 = *(v22 + 2);
      v36 = *(v22 + 3);
      if (v37 >= v36 >> 1)
      {
        result = sub_41D34((v36 > 1), v37 + 1, 1);
        v22 = v342;
      }

      *(v22 + 2) = v37 + 1;
      v38 = &v22[32 * v37];
      v38[32] = v25;
      v20 = v24 + 1;
      v38[33] = v29;
      *(v38 + 5) = v27;
      *(v38 + 6) = v26;
      *(v38 + 7) = v28;
      v21 = v333;
    }

    while (v332 != v24);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

LABEL_20:
  v39 = *(v22 + 2);
  v333 = v39;
  v334 = v22;
  if (v39)
  {
    v40 = 0;
    v41 = v22 + 32;
    v330 = v39 - 1;
    v42 = _swiftEmptyArrayStorage;
    v332 = v41;
LABEL_22:
    v43 = &v41[32 * v40];
    v44 = v40;
    while (v44 < *(v334 + 16))
    {
      v45 = *v43;
      v46 = v43[1];
      v48 = *(v43 + 1);
      v47 = *(v43 + 2);
      v49 = *(v43 + 3);
      if (ModernShelf.ItemKind.rawValue.getter(*v43) == 0x7045686372616573 && v50 == 0xED000065646F7369)
      {

LABEL_32:
        result = swift_isUniquelyReferenced_nonNull_native();
        v342 = v42;
        if ((result & 1) == 0)
        {
          result = sub_41D34(0, *(v42 + 2) + 1, 1);
          v42 = v342;
        }

        v41 = v332;
        v54 = *(v42 + 2);
        v53 = *(v42 + 3);
        if (v54 >= v53 >> 1)
        {
          result = sub_41D34((v53 > 1), v54 + 1, 1);
          v42 = v342;
        }

        *(v42 + 2) = v54 + 1;
        v55 = &v42[32 * v54];
        v55[32] = v45;
        v40 = v44 + 1;
        v55[33] = v46;
        *(v55 + 5) = v48;
        *(v55 + 6) = v47;
        *(v55 + 7) = v49;
        if (v330 != v44)
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }

      v52 = sub_3EE804();

      if (v52)
      {
        goto LABEL_32;
      }

      ++v44;

      v43 += 32;
      if (v333 == v44)
      {
        goto LABEL_39;
      }
    }

LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_39:
  v56 = 0;
  v57 = *(v42 + 2);
  v328 = _swiftEmptyArrayStorage;
LABEL_40:
  v58 = 32 * v56 + 56;
  while (v57 != v56)
  {
    if (v56 >= *(v42 + 2))
    {
      __break(1u);
LABEL_272:
      __break(1u);
      goto LABEL_273;
    }

    v59 = v58 + 32;
    ++v56;
    v60 = *&v42[v58];
    v58 += 32;
    if (v60)
    {
      v61 = *&v42[v59 - 40];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_DFAE8(0, *(v328 + 2) + 1, 1, v328);
        v328 = result;
      }

      v63 = *(v328 + 2);
      v62 = *(v328 + 3);
      if (v63 >= v62 >> 1)
      {
        result = sub_DFAE8((v62 > 1), v63 + 1, 1, v328);
        v328 = result;
      }

      v64 = v328;
      *(v328 + 2) = v63 + 1;
      v65 = &v64[16 * v63];
      *(v65 + 4) = v61;
      *(v65 + 5) = v60;
      goto LABEL_40;
    }
  }

  if (v333)
  {
    v66 = 0;
    v67 = (v334 + 32);
    v330 = v333 - 1;
    v68 = _swiftEmptyArrayStorage;
    v332 = (v334 + 32);
LABEL_51:
    v69 = &v67[32 * v66];
    v70 = v66;
    while (v70 < *(v334 + 16))
    {
      v71 = *v69;
      v72 = v69[1];
      v73 = *(v69 + 1);
      v74 = *(v69 + 2);
      v75 = *(v69 + 3);
      if (ModernShelf.ItemKind.rawValue.getter(*v69) == 0x6853686372616573 && v76 == 0xEA0000000000776FLL)
      {

LABEL_61:
        result = swift_isUniquelyReferenced_nonNull_native();
        v342 = v68;
        if ((result & 1) == 0)
        {
          result = sub_41D34(0, *(v68 + 2) + 1, 1);
          v68 = v342;
        }

        v80 = *(v68 + 2);
        v79 = *(v68 + 3);
        if (v80 >= v79 >> 1)
        {
          result = sub_41D34((v79 > 1), v80 + 1, 1);
          v68 = v342;
        }

        *(v68 + 2) = v80 + 1;
        v81 = &v68[32 * v80];
        v81[32] = v71;
        v66 = v70 + 1;
        v81[33] = v72;
        *(v81 + 5) = v73;
        *(v81 + 6) = v74;
        *(v81 + 7) = v75;
        v67 = v332;
        if (v330 != v70)
        {
          goto LABEL_51;
        }

        goto LABEL_68;
      }

      v78 = sub_3EE804();

      if (v78)
      {
        goto LABEL_61;
      }

      ++v70;

      v69 += 32;
      if (v333 == v70)
      {
        goto LABEL_68;
      }
    }

LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
    return result;
  }

  v68 = _swiftEmptyArrayStorage;
LABEL_68:
  v82 = 0;
  v83 = *(v68 + 2);
  v84 = _swiftEmptyArrayStorage;
LABEL_69:
  v85 = 32 * v82 + 56;
  v87 = v333;
  v86 = v334;
  while (v83 != v82)
  {
    if (v82 >= *(v68 + 2))
    {
      goto LABEL_272;
    }

    v88 = v85 + 32;
    ++v82;
    v89 = *&v68[v85];
    v85 += 32;
    if (v89)
    {
      v90 = *&v68[v88 - 40];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_DFAE8(0, *(v84 + 2) + 1, 1, v84);
        v84 = result;
      }

      v92 = *(v84 + 2);
      v91 = *(v84 + 3);
      if (v92 >= v91 >> 1)
      {
        result = sub_DFAE8((v91 > 1), v92 + 1, 1, v84);
        v84 = result;
      }

      *(v84 + 2) = v92 + 1;
      v93 = &v84[16 * v92];
      *(v93 + 4) = v90;
      *(v93 + 5) = v89;
      goto LABEL_69;
    }
  }

  v311 = v84;

  if (v87)
  {
    v94 = 0;
    v95 = (v86 + 32);
    v330 = v87 - 1;
    v96 = _swiftEmptyArrayStorage;
    v332 = (v86 + 32);
LABEL_80:
    v97 = &v95[32 * v94];
    v98 = v94;
    while (v98 < *(v334 + 16))
    {
      v99 = *v97;
      v100 = v97[1];
      v101 = *(v97 + 1);
      v102 = *(v97 + 2);
      v103 = *(v97 + 3);
      if (ModernShelf.ItemKind.rawValue.getter(*v97) == 0x6843686372616573 && v104 == 0xED00006C656E6E61)
      {

LABEL_90:
        result = swift_isUniquelyReferenced_nonNull_native();
        v342 = v96;
        if ((result & 1) == 0)
        {
          result = sub_41D34(0, *(v96 + 2) + 1, 1);
          v96 = v342;
        }

        v108 = *(v96 + 2);
        v107 = *(v96 + 3);
        if (v108 >= v107 >> 1)
        {
          result = sub_41D34((v107 > 1), v108 + 1, 1);
          v96 = v342;
        }

        *(v96 + 2) = v108 + 1;
        v109 = &v96[32 * v108];
        v109[32] = v99;
        v94 = v98 + 1;
        v109[33] = v100;
        *(v109 + 5) = v101;
        *(v109 + 6) = v102;
        *(v109 + 7) = v103;
        v95 = v332;
        if (v330 != v98)
        {
          goto LABEL_80;
        }

        goto LABEL_97;
      }

      v106 = sub_3EE804();

      if (v106)
      {
        goto LABEL_90;
      }

      ++v98;

      v97 += 32;
      if (v333 == v98)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_276;
  }

  v96 = _swiftEmptyArrayStorage;
LABEL_97:
  v110 = *(v96 + 2);
  if (v110)
  {
    v111 = 0;
    v112 = (v96 + 40);
    v333 = _swiftEmptyArrayStorage;
    while (v111 < *(v96 + 2))
    {
      v342 = *v112;
      sub_17A28();
      v113 = sub_3EE1F4();
      v115 = v114;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_DFAE8(0, *(v333 + 2) + 1, 1, v333);
        v333 = result;
      }

      v117 = *(v333 + 2);
      v116 = *(v333 + 3);
      if (v117 >= v116 >> 1)
      {
        result = sub_DFAE8((v116 > 1), v117 + 1, 1, v333);
        v333 = result;
      }

      ++v111;
      v118 = v333;
      *(v333 + 2) = v117 + 1;
      v119 = &v118[16 * v117];
      *(v119 + 4) = v113;
      *(v119 + 5) = v115;
      v112 += 4;
      if (v110 == v111)
      {
        goto LABEL_107;
      }
    }

    goto LABEL_277;
  }

  v333 = _swiftEmptyArrayStorage;
LABEL_107:

  v120 = *(v334 + 16);
  if (v120)
  {
    v121 = 0;
    v122 = (v334 + 32);
    v327 = v120 - 1;
    v123 = _swiftEmptyArrayStorage;
    v330 = (v334 + 32);
LABEL_109:
    v332 = v123;
    v124 = &v122[32 * v121];
    v125 = v121;
    while (v125 < *(v334 + 16))
    {
      v126 = *v124;
      v127 = v124[1];
      v128 = *(v124 + 1);
      v129 = *(v124 + 2);
      v130 = *(v124 + 3);
      if (ModernShelf.ItemKind.rawValue.getter(*v124) == 0x6143686372616573 && v131 == 0xEE0079726F676574)
      {

LABEL_119:
        v134 = v332;
        result = swift_isUniquelyReferenced_nonNull_native();
        v342 = v134;
        if ((result & 1) == 0)
        {
          result = sub_41D34(0, *(v134 + 2) + 1, 1);
          v134 = v342;
        }

        v136 = *(v134 + 2);
        v135 = *(v134 + 3);
        if (v136 >= v135 >> 1)
        {
          result = sub_41D34((v135 > 1), v136 + 1, 1);
          v134 = v342;
        }

        *(v134 + 2) = v136 + 1;
        v137 = &v134[32 * v136];
        v137[32] = v126;
        v121 = v125 + 1;
        v137[33] = v127;
        *(v137 + 5) = v128;
        *(v137 + 6) = v129;
        *(v137 + 7) = v130;
        v123 = v134;
        v122 = v330;
        if (v327 != v125)
        {
          goto LABEL_109;
        }

        goto LABEL_126;
      }

      v133 = sub_3EE804();

      if (v133)
      {
        goto LABEL_119;
      }

      ++v125;

      v124 += 32;
      if (v120 == v125)
      {
        v123 = v332;
        goto LABEL_126;
      }
    }

    goto LABEL_278;
  }

  v123 = _swiftEmptyArrayStorage;
LABEL_126:

  v138 = *(v123 + 2);
  if (v138)
  {
    v139 = 0;
    v140 = (v123 + 40);
    v332 = _swiftEmptyArrayStorage;
    while (v139 < *(v123 + 2))
    {
      v342 = *v140;
      sub_17A28();
      v141 = sub_3EE1F4();
      v143 = v142;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_DFAE8(0, *(v332 + 2) + 1, 1, v332);
        v332 = result;
      }

      v145 = *(v332 + 2);
      v144 = *(v332 + 3);
      if (v145 >= v144 >> 1)
      {
        result = sub_DFAE8((v144 > 1), v145 + 1, 1, v332);
        v332 = result;
      }

      ++v139;
      v146 = v332;
      *(v332 + 2) = v145 + 1;
      v147 = &v146[16 * v145];
      *(v147 + 4) = v141;
      *(v147 + 5) = v143;
      v140 += 4;
      if (v138 == v139)
      {
        goto LABEL_136;
      }
    }

    goto LABEL_279;
  }

  v332 = _swiftEmptyArrayStorage;
LABEL_136:

  if (v331)
  {
    v148 = 0;
    v149 = (v329 + 32);
    v327 = v331 - 1;
    v150 = _swiftEmptyArrayStorage;
    v330 = (v329 + 32);
LABEL_138:
    v334 = v150;
    v151 = &v149[32 * v148];
    v152 = v148;
    while (v152 < *(v329 + 16))
    {
      v153 = *v151;
      v154 = *(v151 + 1);
      v155 = *(v151 + 2);
      v156 = *(v151 + 3);
      v157 = v151[1];

      v158 = sub_3E6244();
      v160 = v159;
      if (v158 == sub_3E6244() && v160 == v161)
      {

LABEL_148:
        v150 = v334;
        result = swift_isUniquelyReferenced_nonNull_native();
        v342 = v150;
        if ((result & 1) == 0)
        {
          result = sub_41D34(0, *(v150 + 2) + 1, 1);
          v150 = v342;
        }

        v165 = *(v150 + 2);
        v164 = *(v150 + 3);
        if (v165 >= v164 >> 1)
        {
          result = sub_41D34((v164 > 1), v165 + 1, 1);
          v150 = v342;
        }

        *(v150 + 2) = v165 + 1;
        v166 = &v150[32 * v165];
        v166[32] = v153;
        v148 = v152 + 1;
        v166[33] = v157;
        *(v166 + 5) = v154;
        *(v166 + 6) = v155;
        *(v166 + 7) = v156;
        v149 = v330;
        if (v327 != v152)
        {
          goto LABEL_138;
        }

        goto LABEL_155;
      }

      v163 = sub_3EE804();

      if (v163)
      {
        goto LABEL_148;
      }

      ++v152;

      v151 += 32;
      if (v331 == v152)
      {
        v150 = v334;
        goto LABEL_155;
      }
    }

    goto LABEL_280;
  }

  v150 = _swiftEmptyArrayStorage;
LABEL_155:
  v167 = *(v150 + 2);
  v334 = v150;
  v330 = v167;
  if (v167)
  {
    v168 = 0;
    v169 = v150 + 32;
    v327 = v167 - 1;
    v170 = _swiftEmptyArrayStorage;
    v331 = v150 + 32;
LABEL_157:
    v171 = &v169[32 * v168];
    v172 = v168;
    while (v172 < *(v150 + 2))
    {
      v173 = *v171;
      v174 = v171[1];
      v175 = *(v171 + 1);
      v176 = *(v171 + 2);
      v177 = *(v171 + 3);
      if (ModernShelf.ItemKind.rawValue.getter(*v171) == 0x7045686372616573 && v178 == 0xED000065646F7369)
      {

LABEL_167:
        result = swift_isUniquelyReferenced_nonNull_native();
        v342 = v170;
        if ((result & 1) == 0)
        {
          result = sub_41D34(0, *(v170 + 2) + 1, 1);
          v170 = v342;
        }

        v182 = *(v170 + 2);
        v181 = *(v170 + 3);
        if (v182 >= v181 >> 1)
        {
          result = sub_41D34((v181 > 1), v182 + 1, 1);
          v170 = v342;
        }

        *(v170 + 2) = v182 + 1;
        v183 = &v170[32 * v182];
        v183[32] = v173;
        v168 = v172 + 1;
        v183[33] = v174;
        *(v183 + 5) = v175;
        *(v183 + 6) = v176;
        *(v183 + 7) = v177;
        v150 = v334;
        v169 = v331;
        if (v327 != v172)
        {
          goto LABEL_157;
        }

        goto LABEL_174;
      }

      v180 = sub_3EE804();

      if (v180)
      {
        goto LABEL_167;
      }

      ++v172;

      v171 += 32;
      v150 = v334;
      if (v330 == v172)
      {
        goto LABEL_174;
      }
    }

    goto LABEL_281;
  }

  v170 = _swiftEmptyArrayStorage;
LABEL_174:
  v184 = *(v170 + 2);
  if (v184)
  {
    v185 = 0;
    v186 = (v170 + 40);
    v331 = _swiftEmptyArrayStorage;
    while (v185 < *(v170 + 2))
    {
      v342 = *v186;
      sub_17A28();
      v187 = sub_3EE1F4();
      v189 = v188;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_DFAE8(0, *(v331 + 2) + 1, 1, v331);
        v331 = result;
      }

      v191 = *(v331 + 2);
      v190 = *(v331 + 3);
      if (v191 >= v190 >> 1)
      {
        result = sub_DFAE8((v190 > 1), v191 + 1, 1, v331);
        v331 = result;
      }

      ++v185;
      v192 = v331;
      *(v331 + 2) = v191 + 1;
      v193 = &v192[16 * v191];
      *(v193 + 4) = v187;
      *(v193 + 5) = v189;
      v186 += 4;
      if (v184 == v185)
      {
        goto LABEL_184;
      }
    }

    goto LABEL_282;
  }

  v331 = _swiftEmptyArrayStorage;
LABEL_184:

  if (v330)
  {
    v194 = 0;
    v195 = (v334 + 32);
    v310 = v330 - 1;
    v196 = _swiftEmptyArrayStorage;
    v327 = (v334 + 32);
LABEL_186:
    v197 = &v195[32 * v194];
    v198 = v194;
    while (v198 < *(v334 + 16))
    {
      v199 = *v197;
      v200 = v197[1];
      v202 = *(v197 + 1);
      v201 = *(v197 + 2);
      v203 = *(v197 + 3);
      if (ModernShelf.ItemKind.rawValue.getter(*v197) == 0x6853686372616573 && v204 == 0xEA0000000000776FLL)
      {

LABEL_196:
        result = swift_isUniquelyReferenced_nonNull_native();
        v342 = v196;
        if ((result & 1) == 0)
        {
          result = sub_41D34(0, *(v196 + 2) + 1, 1);
          v196 = v342;
        }

        v208 = *(v196 + 2);
        v207 = *(v196 + 3);
        if (v208 >= v207 >> 1)
        {
          result = sub_41D34((v207 > 1), v208 + 1, 1);
          v196 = v342;
        }

        *(v196 + 2) = v208 + 1;
        v209 = &v196[32 * v208];
        v209[32] = v199;
        v194 = v198 + 1;
        v209[33] = v200;
        *(v209 + 5) = v202;
        *(v209 + 6) = v201;
        *(v209 + 7) = v203;
        v195 = v327;
        if (v310 != v198)
        {
          goto LABEL_186;
        }

        goto LABEL_203;
      }

      v206 = sub_3EE804();

      if (v206)
      {
        goto LABEL_196;
      }

      ++v198;

      v197 += 32;
      if (v330 == v198)
      {
        goto LABEL_203;
      }
    }

    goto LABEL_283;
  }

  v196 = _swiftEmptyArrayStorage;
LABEL_203:
  v210 = *(v196 + 2);
  if (v210)
  {
    v211 = 0;
    v212 = (v196 + 40);
    v213 = _swiftEmptyArrayStorage;
    while (v211 < *(v196 + 2))
    {
      v342 = *v212;
      sub_17A28();
      v214 = sub_3EE1F4();
      v216 = v215;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_DFAE8(0, *(v213 + 2) + 1, 1, v213);
        v213 = result;
      }

      v218 = *(v213 + 2);
      v217 = *(v213 + 3);
      if (v218 >= v217 >> 1)
      {
        result = sub_DFAE8((v217 > 1), v218 + 1, 1, v213);
        v213 = result;
      }

      ++v211;
      *(v213 + 2) = v218 + 1;
      v219 = &v213[16 * v218];
      *(v219 + 4) = v214;
      *(v219 + 5) = v216;
      v212 += 4;
      if (v210 == v211)
      {
        goto LABEL_213;
      }
    }

    goto LABEL_284;
  }

  v213 = _swiftEmptyArrayStorage;
LABEL_213:
  v310 = v213;

  if (v330)
  {
    v220 = 0;
    v221 = v334;
    v222 = (v334 + 32);
    v309 = v330 - 1;
    v223 = _swiftEmptyArrayStorage;
    v327 = (v334 + 32);
    while (2)
    {
      v224 = v223;
      v225 = &v222[32 * v220];
      v226 = v220;
      while (1)
      {
        if (v226 >= *(v221 + 16))
        {
          goto LABEL_285;
        }

        v227 = *v225;
        v228 = v225[1];
        v230 = *(v225 + 1);
        v229 = *(v225 + 2);
        v231 = *(v225 + 3);
        if (ModernShelf.ItemKind.rawValue.getter(*v225) == 0x6843686372616573 && v232 == 0xED00006C656E6E61)
        {
          break;
        }

        v234 = sub_3EE804();

        if (v234)
        {
          goto LABEL_225;
        }

        ++v226;

        v225 += 32;
        v221 = v334;
        if (v330 == v226)
        {
          v223 = v224;
          goto LABEL_230;
        }
      }

LABEL_225:
      v223 = v224;
      result = swift_isUniquelyReferenced_nonNull_native();
      v342 = v224;
      if ((result & 1) == 0)
      {
        result = sub_41D34(0, *(v224 + 2) + 1, 1);
        v223 = v342;
      }

      v236 = *(v223 + 2);
      v235 = *(v223 + 3);
      if (v236 >= v235 >> 1)
      {
        result = sub_41D34((v235 > 1), v236 + 1, 1);
        v223 = v342;
      }

      *(v223 + 2) = v236 + 1;
      v237 = &v223[32 * v236];
      v237[32] = v227;
      v220 = v226 + 1;
      v237[33] = v228;
      *(v237 + 5) = v230;
      *(v237 + 6) = v229;
      *(v237 + 7) = v231;
      v221 = v334;
      v222 = v327;
      if (v309 != v226)
      {
        continue;
      }

      break;
    }

LABEL_230:
    v238 = *(v223 + 2);
    if (!v238)
    {
      goto LABEL_240;
    }

    goto LABEL_231;
  }

  v223 = _swiftEmptyArrayStorage;
  v238 = _swiftEmptyArrayStorage[2];
  if (v238)
  {
LABEL_231:
    v239 = 0;
    v240 = (v223 + 40);
    v241 = _swiftEmptyArrayStorage;
    while (v239 < *(v223 + 2))
    {
      v342 = *v240;
      sub_17A28();
      v242 = sub_3EE1F4();
      v244 = v243;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_DFAE8(0, *(v241 + 2) + 1, 1, v241);
        v241 = result;
      }

      v246 = *(v241 + 2);
      v245 = *(v241 + 3);
      if (v246 >= v245 >> 1)
      {
        result = sub_DFAE8((v245 > 1), v246 + 1, 1, v241);
        v241 = result;
      }

      ++v239;
      *(v241 + 2) = v246 + 1;
      v247 = &v241[16 * v246];
      *(v247 + 4) = v242;
      *(v247 + 5) = v244;
      v240 += 4;
      if (v238 == v239)
      {
        goto LABEL_241;
      }
    }

    goto LABEL_286;
  }

LABEL_240:
  v241 = _swiftEmptyArrayStorage;
LABEL_241:

  result = v334;
  v248 = *(v334 + 16);
  if (v248)
  {
    v249 = 0;
    v250 = v334 + 32;
    v330 = *(v334 + 16);
    v308 = (v248 - 1);
    v251 = _swiftEmptyArrayStorage;
    v309 = (v334 + 32);
LABEL_243:
    v327 = v251;
    v252 = v250 + 32 * v249;
    v253 = v249;
    while (v253 < *(result + 16))
    {
      v254 = *v252;
      v255 = *(v252 + 1);
      v257 = *(v252 + 8);
      v256 = *(v252 + 16);
      v258 = *(v252 + 24);
      if (ModernShelf.ItemKind.rawValue.getter(*v252) == 0x6143686372616573 && v259 == 0xEE0079726F676574)
      {

LABEL_253:
        v251 = v327;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v342 = v251;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_41D34(0, *(v251 + 2) + 1, 1);
          v251 = v342;
        }

        v264 = *(v251 + 2);
        v263 = *(v251 + 3);
        if (v264 >= v263 >> 1)
        {
          sub_41D34((v263 > 1), v264 + 1, 1);
          v251 = v342;
        }

        *(v251 + 2) = v264 + 1;
        v265 = &v251[32 * v264];
        v265[32] = v254;
        v249 = v253 + 1;
        v265[33] = v255;
        *(v265 + 5) = v257;
        *(v265 + 6) = v256;
        *(v265 + 7) = v258;
        result = v334;
        v250 = v309;
        if (v308 != v253)
        {
          goto LABEL_243;
        }

        goto LABEL_260;
      }

      v261 = sub_3EE804();

      if (v261)
      {
        goto LABEL_253;
      }

      ++v253;

      v252 += 32;
      result = v334;
      if (v330 == v253)
      {
        v251 = v327;
        goto LABEL_260;
      }
    }

    goto LABEL_287;
  }

  v251 = _swiftEmptyArrayStorage;
LABEL_260:

  v266 = *(v251 + 2);
  if (v266)
  {
    v267 = 0;
    v268 = (v251 + 40);
    v269 = _swiftEmptyArrayStorage;
    v270 = v251;
    while (v267 < *(v251 + 2))
    {
      v342 = *v268;
      sub_17A28();
      v271 = sub_3EE1F4();
      v273 = v272;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_DFAE8(0, *(v269 + 2) + 1, 1, v269);
        v269 = result;
      }

      v275 = *(v269 + 2);
      v274 = *(v269 + 3);
      if (v275 >= v274 >> 1)
      {
        result = sub_DFAE8((v274 > 1), v275 + 1, 1, v269);
        v269 = result;
      }

      ++v267;
      *(v269 + 2) = v275 + 1;
      v276 = &v269[16 * v275];
      *(v276 + 4) = v271;
      *(v276 + 5) = v273;
      v268 += 4;
      v251 = v270;
      if (v266 == v267)
      {
        goto LABEL_270;
      }
    }

    goto LABEL_288;
  }

  v269 = _swiftEmptyArrayStorage;
LABEL_270:

  __chkstk_darwin(v277);
  v278 = v316;
  v279 = sub_1BB730(v331, sub_1C371C, v307, v316);

  v342 = v279;
  __chkstk_darwin(v280);
  v281 = sub_1BC0D4(v310, sub_1C3724, v307);

  v341 = v281;
  __chkstk_darwin(v282);
  v283 = sub_1BCA4C(v241, sub_1C372C, v307, v278);

  v340 = v283;
  __chkstk_darwin(v284);
  v285 = sub_1BDD94(v269, sub_1C3734, v307, v278);

  v339 = v285;
  __chkstk_darwin(v286);
  v287 = sub_1BE738(v328, sub_1C1D64, 0, sub_1C373C, v307, v278);

  v338 = v287;
  __chkstk_darwin(v288);
  v289 = sub_1BF0DC(v311, sub_1C1E74, 0, sub_1C3744, v307, v278);

  v337 = v289;
  __chkstk_darwin(v290);
  v291 = sub_1BD3F0(v333, sub_1C6B64, 0, sub_1C374C, v307, v278);

  v336 = v291;
  __chkstk_darwin(v292);
  v293 = sub_1BFA80(v332, sub_1C6B64, 0, sub_1C3754, v307, v278);

  v335 = v293;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7518);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7520);
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7528);
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7530);
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7540);
  sub_886BC(&qword_4F7548, &qword_4F7518);
  sub_886BC(&qword_4F5EF0, &qword_4F5EE0);
  v294 = sub_886BC(&qword_4F7550, &qword_4F7520);
  sub_886BC(&qword_4F7558, &qword_4F7528);
  v295 = sub_886BC(&qword_4F7560, &qword_4F7530);
  v296 = sub_886BC(&qword_4F7568, &qword_4F7538);
  v297 = sub_886BC(&qword_4F7570, &qword_4F7540);
  v307[2] = v294;
  v307[3] = v297;
  v307[0] = v295;
  v307[1] = v296;
  v298 = v318;
  sub_3E9BD4();
  v299 = swift_allocObject();
  v300 = v329;
  *(v299 + 16) = v278;
  *(v299 + 24) = v300;
  v301 = swift_allocObject();
  *(v301 + 16) = sub_1C379C;
  *(v301 + 24) = v299;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA810);
  sub_886BC(&qword_4F7578, &qword_4F7508);
  v302 = v320;
  v303 = v323;
  sub_3EA024();

  (*(v321 + 8))(v298, v303);
  sub_886BC(&qword_4F7580, &qword_4F7510);
  v304 = v324;
  v305 = sub_3E9F94();
  (*(v322 + 8))(v302, v304);
  v306 = v326;
  *v325 = v305;
  return v315(v306, v319);
}

char *sub_1BB730(void *a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v70 = a3;
  v71 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F77E0);
  v74 = *(v6 - 8);
  __chkstk_darwin(v6);
  v72 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F77E8);
  v75 = *(v8 - 8);
  __chkstk_darwin(v8);
  v73 = v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F77F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v64 - v12;
  v80 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4F1270, &unk_5010E0);
  if ((sub_3ED894() & 1) == 0)
  {
    v80 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14C0);
    sub_3E9DF4();
    sub_886BC(&qword_4F77F8, &qword_4F77F0);
    v23 = sub_3E9F94();
    (*(v11 + 8))(v13, v10);
    return v23;
  }

  v65 = v13;
  v66 = v6;
  v67 = v8;
  v68 = v11;
  v80 = _swiftEmptyArrayStorage;
  v14 = a1[2];
  v69 = v10;
  v76 = a1;
  if (!v14)
  {
    v78 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v15 = 0;
  v16 = a1 + 5;
  v77 = a4;
  v78 = _swiftEmptyArrayStorage;
  do
  {
    v17 = &v16[2 * v15];
    v18 = v15;
    while (1)
    {
      if (v18 >= v14)
      {
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_62;
      }

      v20 = *(v17 - 1);
      v19 = *v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F75A8);
      sub_3E9874();
      if (*(v79 + 16))
      {
        sub_552A8(v20, v19);
        if (v21)
        {
          break;
        }
      }

LABEL_6:
      ++v18;
      v17 += 2;
      if (v15 == v14)
      {
        v11 = v68;
        v10 = v69;
        goto LABEL_20;
      }
    }

    type metadata accessor for LegacyEpisodeLockup();
    v22 = swift_dynamicCastClass();

    if (!v22)
    {

      goto LABEL_6;
    }

    sub_3ED564();
    if (*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v80 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }

    sub_3ED604();
    v78 = v80;
    v11 = v68;
    v10 = v69;
  }

  while (v15 != v14);
LABEL_20:
  v24 = v78;
  v80 = v78;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14C0);
  sub_886BC(&qword_4F7800, &qword_4F14C0);
  v64[1] = v25;
  if ((sub_3ED894() & 1) == 0)
  {
    v38 = v76;

LABEL_57:
    v55 = v66;
    v54 = v67;
    v57 = v74;
    v56 = v75;
    if (v38[2])
    {
      v80 = v78;
      v58 = v65;
      sub_3E9DF4();
      sub_886BC(&qword_4F77F8, &qword_4F77F0);
      v59 = sub_3E9EF4();
      (*(v11 + 8))(v58, v10);
      v80 = v59;
      v60 = v71(v38);

      v79 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7808);
      sub_886BC(&qword_4F7810, &qword_4F7808);
      v61 = v72;
      sub_3E9B54();
      sub_886BC(&qword_4F7818, &qword_4F77E0);
      v62 = v73;
      sub_3EA024();
      (*(v57 + 8))(v61, v55);
      sub_886BC(&qword_4F7820, &qword_4F77E8);
      v23 = sub_3E9F94();
      (*(v56 + 8))(v62, v54);
    }

    else
    {
      v63 = v65;

      v80 = v78;
      sub_3E9DF4();
      sub_886BC(&qword_4F77F8, &qword_4F77F0);
      v23 = sub_3E9F94();
      (*(v11 + 8))(v63, v10);
    }

    return v23;
  }

  if (v24 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v27 = _swiftEmptyArrayStorage;
    if (i)
    {
      break;
    }

LABEL_36:
    if (!v14)
    {
      v41 = _swiftEmptyArrayStorage;
LABEL_56:

      v11 = v68;
      v10 = v69;
      v38 = v41;
      goto LABEL_57;
    }

    v39 = 0;
    v40 = v76 + 4;
    v77 = (v27 + 5);
    v41 = _swiftEmptyArrayStorage;
    v76 += 4;
LABEL_39:
    while (2)
    {
      if (v39 >= v14)
      {
LABEL_63:
        __break(1u);
      }

      else
      {
        v42 = v39 + 1;
        if (!__OFADD__(v39, 1))
        {
          v43 = &v40[2 * v39];
          v44 = *v43;
          v45 = v43[1];
          ++v39;
          v46 = v27[2] + 1;
          v47 = v77;
          while (--v46)
          {
            if (*(v47 - 1) != v44 || *v47 != v45)
            {
              v47 += 2;
              if ((sub_3EE804() & 1) == 0)
              {
                continue;
              }
            }

            if (v42 == v14)
            {
              goto LABEL_56;
            }

            goto LABEL_39;
          }

          v49 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_41BA8(0, v41[2] + 1, 1);
            v49 = v80;
          }

          v52 = v49[2];
          v51 = v49[3];
          if (v52 >= v51 >> 1)
          {
            sub_41BA8((v51 > 1), v52 + 1, 1);
            v49 = v80;
          }

          v49[2] = v52 + 1;
          v41 = v49;
          v53 = &v49[2 * v52];
          v53[4] = v44;
          v53[5] = v45;
          v40 = v76;
          if (v42 != v14)
          {
            continue;
          }

          goto LABEL_56;
        }
      }

      break;
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v80 = _swiftEmptyArrayStorage;
  result = sub_41BA8(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v27 = v80;
    v30 = v78 & 0xC000000000000001;
    v77 = v78 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v30)
      {
        v31 = sub_3EE3F4();
      }

      else
      {
        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (v29 >= *(v77 + 16))
        {
          goto LABEL_66;
        }

        v31 = *(v78 + 8 * v29 + 32);
      }

      v79 = *(v31 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
      sub_17A28();
      v32 = sub_3EE1F4();
      v34 = v33;

      v80 = v27;
      v36 = v27[2];
      v35 = v27[3];
      if (v36 >= v35 >> 1)
      {
        sub_41BA8((v35 > 1), v36 + 1, 1);
        v27 = v80;
      }

      ++v29;
      v27[2] = v36 + 1;
      v37 = &v27[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
      if (i == v29)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
  return result;
}

char *sub_1BC0D4(void *a1, uint64_t (*a2)(unint64_t), uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7790);
  v70 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7798);
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v69 = v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v60 - v10;
  v76 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4F1270, &unk_5010E0);
  if ((sub_3ED894() & 1) == 0)
  {
    v76 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA810);
    sub_3E9DF4();
    sub_886BC(&qword_4F63C0, &qword_4F63B0);
    v21 = sub_3E9F94();
    (*(v9 + 8))(v11, v8);
    return v21;
  }

  v62 = v6;
  v63 = v11;
  v61 = v4;
  v76 = _swiftEmptyArrayStorage;
  v12 = a1[2];
  v64 = v9;
  v65 = v8;
  v72 = a1;
  if (v12)
  {
    v13 = a1;
    v14 = 0;
    v15 = v13 + 5;
    v74 = _swiftEmptyArrayStorage;
    do
    {
      v16 = &v15[2 * v14];
      v17 = v14;
      while (1)
      {
        if (v17 >= v12)
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v14 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_59;
        }

        v19 = *(v16 - 1);
        v18 = *v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F75A8);
        sub_3E9874();
        if (*(v75 + 16))
        {
          sub_552A8(v19, v18);
          if (v20)
          {
            break;
          }
        }

        ++v17;
        v16 += 2;
        if (v14 == v12)
        {
          v9 = v64;
          v8 = v65;
          goto LABEL_17;
        }
      }

      sub_3ED564();
      if (*(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v76 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_3ED5A4();
      }

      sub_3ED604();
      v74 = v76;
      v9 = v64;
      v8 = v65;
    }

    while (v14 != v12);
  }

  else
  {
    v74 = _swiftEmptyArrayStorage;
  }

LABEL_17:
  v14 = v74;
  v76 = v74;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA810);
  sub_886BC(&qword_4EA818, &qword_4EA810);
  v23 = sub_3ED894();
  v60[1] = v22;
  if ((v23 & 1) == 0)
  {
    v36 = v72;

    v38 = v61;
    v37 = v62;
    v39 = v71;
LABEL_54:
    v54 = v70;
    v55 = v63;
    if (*(v36 + 16))
    {
      v76 = v14;
      sub_3E9DF4();
      sub_886BC(&qword_4F63C0, &qword_4F63B0);
      v56 = sub_3E9EF4();
      (*(v9 + 8))(v55, v8);
      v76 = v56;
      v57 = v67(v36);

      v75 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F77A0);
      sub_886BC(&qword_4F77A8, &qword_4F77A0);
      v58 = v68;
      sub_3E9B54();
      sub_886BC(&qword_4F77B0, &qword_4F7790);
      v59 = v69;
      sub_3EA024();
      (*(v54 + 8))(v58, v38);
      sub_886BC(&qword_4F77B8, &qword_4F7798);
      v21 = sub_3E9F94();
      (*(v39 + 8))(v59, v37);
    }

    else
    {

      v76 = v14;
      sub_3E9DF4();
      sub_886BC(&qword_4F63C0, &qword_4F63B0);
      v21 = sub_3E9F94();
      (*(v9 + 8))(v55, v8);
    }

    return v21;
  }

  if (v14 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v25 = _swiftEmptyArrayStorage;
    if (i)
    {
      break;
    }

LABEL_33:
    if (!v12)
    {
      v14 = _swiftEmptyArrayStorage;
LABEL_53:

      v38 = v61;
      v37 = v62;
      v39 = v71;
      v9 = v64;
      v8 = v65;
      v36 = v14;
      v14 = v74;
      goto LABEL_54;
    }

    v40 = 0;
    v41 = v72 + 4;
    v73 = (v25 + 5);
    v14 = _swiftEmptyArrayStorage;
    v72 += 4;
LABEL_36:
    while (2)
    {
      if (v40 >= v12)
      {
LABEL_60:
        __break(1u);
      }

      else
      {
        v42 = (v40 + 1);
        if (!__OFADD__(v40, 1))
        {
          v43 = &v41[2 * v40];
          v44 = *v43;
          v45 = v43[1];
          ++v40;
          v46 = v25[2] + 1;
          v47 = v73;
          while (--v46)
          {
            if (*(v47 - 1) != v44 || *v47 != v45)
            {
              v47 += 2;
              if ((sub_3EE804() & 1) == 0)
              {
                continue;
              }
            }

            if (v42 == v12)
            {
              goto LABEL_53;
            }

            goto LABEL_36;
          }

          v49 = v14;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_41BA8(0, *(v14 + 16) + 1, 1);
            v49 = v76;
          }

          v52 = *(v49 + 16);
          v51 = *(v49 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_41BA8((v51 > 1), v52 + 1, 1);
            v49 = v76;
          }

          *(v49 + 16) = v52 + 1;
          v14 = v49;
          v53 = v49 + 16 * v52;
          *(v53 + 32) = v44;
          *(v53 + 40) = v45;
          v41 = v72;
          if (v42 != v12)
          {
            continue;
          }

          goto LABEL_53;
        }
      }

      break;
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  v76 = _swiftEmptyArrayStorage;
  result = sub_41BA8(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v25 = v76;
    v28 = v14;
    v29 = v14 & 0xC000000000000001;
    v73 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v29)
      {
        v30 = sub_3EE3F4();
      }

      else
      {
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        if (v27 >= *(v73 + 16))
        {
          goto LABEL_63;
        }

        v30 = v28[v27 + 4];
      }

      v75 = *(v30 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
      sub_17A28();
      v31 = sub_3EE1F4();
      v14 = v32;

      v76 = v25;
      v34 = v25[2];
      v33 = v25[3];
      if (v34 >= v33 >> 1)
      {
        sub_41BA8((v33 > 1), v34 + 1, 1);
        v25 = v76;
      }

      ++v27;
      v25[2] = v34 + 1;
      v35 = &v25[2 * v34];
      v35[4] = v31;
      v35[5] = v14;
      v28 = v74;
      if (i == v27)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
  return result;
}

char *sub_1BCA4C(void *a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v70 = a3;
  v71 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7728);
  v74 = *(v6 - 8);
  __chkstk_darwin(v6);
  v72 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7730);
  v75 = *(v8 - 8);
  __chkstk_darwin(v8);
  v73 = v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7738);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v64 - v12;
  v80 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4F1270, &unk_5010E0);
  if ((sub_3ED894() & 1) == 0)
  {
    v80 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BB0);
    sub_3E9DF4();
    sub_886BC(&qword_4F7740, &qword_4F7738);
    v23 = sub_3E9F94();
    (*(v11 + 8))(v13, v10);
    return v23;
  }

  v65 = v13;
  v66 = v6;
  v67 = v8;
  v68 = v11;
  v80 = _swiftEmptyArrayStorage;
  v14 = a1[2];
  v69 = v10;
  v76 = a1;
  if (!v14)
  {
    v78 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v15 = 0;
  v16 = a1 + 5;
  v77 = a4;
  v78 = _swiftEmptyArrayStorage;
  do
  {
    v17 = &v16[2 * v15];
    v18 = v15;
    while (1)
    {
      if (v18 >= v14)
      {
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_62;
      }

      v20 = *(v17 - 1);
      v19 = *v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F75A8);
      sub_3E9874();
      if (*(v79 + 16))
      {
        sub_552A8(v20, v19);
        if (v21)
        {
          break;
        }
      }

LABEL_6:
      ++v18;
      v17 += 2;
      if (v15 == v14)
      {
        v11 = v68;
        v10 = v69;
        goto LABEL_20;
      }
    }

    type metadata accessor for LegacyChannelLockup();
    v22 = swift_dynamicCastClass();

    if (!v22)
    {

      goto LABEL_6;
    }

    sub_3ED564();
    if (*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v80 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }

    sub_3ED604();
    v78 = v80;
    v11 = v68;
    v10 = v69;
  }

  while (v15 != v14);
LABEL_20:
  v24 = v78;
  v80 = v78;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BB0);
  sub_886BC(&qword_4F7748, &qword_4E9BB0);
  v64[1] = v25;
  if ((sub_3ED894() & 1) == 0)
  {
    v38 = v76;

LABEL_57:
    v55 = v66;
    v54 = v67;
    v57 = v74;
    v56 = v75;
    if (v38[2])
    {
      v80 = v78;
      v58 = v65;
      sub_3E9DF4();
      sub_886BC(&qword_4F7740, &qword_4F7738);
      v59 = sub_3E9EF4();
      (*(v11 + 8))(v58, v10);
      v80 = v59;
      v60 = v71(v38);

      v79 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7750);
      sub_886BC(&qword_4F7758, &qword_4F7750);
      v61 = v72;
      sub_3E9B54();
      sub_886BC(&qword_4F7760, &qword_4F7728);
      v62 = v73;
      sub_3EA024();
      (*(v57 + 8))(v61, v55);
      sub_886BC(&qword_4F7768, &qword_4F7730);
      v23 = sub_3E9F94();
      (*(v56 + 8))(v62, v54);
    }

    else
    {
      v63 = v65;

      v80 = v78;
      sub_3E9DF4();
      sub_886BC(&qword_4F7740, &qword_4F7738);
      v23 = sub_3E9F94();
      (*(v11 + 8))(v63, v10);
    }

    return v23;
  }

  if (v24 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v27 = _swiftEmptyArrayStorage;
    if (i)
    {
      break;
    }

LABEL_36:
    if (!v14)
    {
      v41 = _swiftEmptyArrayStorage;
LABEL_56:

      v11 = v68;
      v10 = v69;
      v38 = v41;
      goto LABEL_57;
    }

    v39 = 0;
    v40 = v76 + 4;
    v77 = (v27 + 5);
    v41 = _swiftEmptyArrayStorage;
    v76 += 4;
LABEL_39:
    while (2)
    {
      if (v39 >= v14)
      {
LABEL_63:
        __break(1u);
      }

      else
      {
        v42 = v39 + 1;
        if (!__OFADD__(v39, 1))
        {
          v43 = &v40[2 * v39];
          v44 = *v43;
          v45 = v43[1];
          ++v39;
          v46 = v27[2] + 1;
          v47 = v77;
          while (--v46)
          {
            if (*(v47 - 1) != v44 || *v47 != v45)
            {
              v47 += 2;
              if ((sub_3EE804() & 1) == 0)
              {
                continue;
              }
            }

            if (v42 == v14)
            {
              goto LABEL_56;
            }

            goto LABEL_39;
          }

          v49 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_41BA8(0, v41[2] + 1, 1);
            v49 = v80;
          }

          v52 = v49[2];
          v51 = v49[3];
          if (v52 >= v51 >> 1)
          {
            sub_41BA8((v51 > 1), v52 + 1, 1);
            v49 = v80;
          }

          v49[2] = v52 + 1;
          v41 = v49;
          v53 = &v49[2 * v52];
          v53[4] = v44;
          v53[5] = v45;
          v40 = v76;
          if (v42 != v14)
          {
            continue;
          }

          goto LABEL_56;
        }
      }

      break;
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v80 = _swiftEmptyArrayStorage;
  result = sub_41BA8(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v27 = v80;
    v30 = v78 & 0xC000000000000001;
    v77 = v78 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v30)
      {
        v31 = sub_3EE3F4();
      }

      else
      {
        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (v29 >= *(v77 + 16))
        {
          goto LABEL_66;
        }

        v31 = *(v78 + 8 * v29 + 32);
      }

      v79 = *(v31 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
      sub_17A28();
      v32 = sub_3EE1F4();
      v34 = v33;

      v80 = v27;
      v36 = v27[2];
      v35 = v27[3];
      if (v36 >= v35 >> 1)
      {
        sub_41BA8((v35 > 1), v36 + 1, 1);
        v27 = v80;
      }

      ++v29;
      v27[2] = v36 + 1;
      v37 = &v27[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
      if (i == v29)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
  return result;
}

char *sub_1BD3F0(void *a1, uint64_t (*a2)(uint64_t), char *a3, uint64_t (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v81 = a5;
  v82 = a4;
  v88 = a2;
  v89 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7728);
  v85 = *(v8 - 8);
  __chkstk_darwin(v8);
  v83 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7730);
  v86 = *(v10 - 8);
  __chkstk_darwin(v10);
  v84 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7738);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - v14;
  v92 = a1;
  v16 = &unk_5010E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4F1270, &unk_5010E0);
  if ((sub_3ED894() & 1) == 0)
  {
    v92 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BB0);
    sub_3E9DF4();
    sub_886BC(&qword_4F7740, &qword_4F7738);
    v31 = sub_3E9F94();
    (*(v13 + 8))(v15, v12);
    return v31;
  }

  v76 = v12;
  v77 = v15;
  v75 = v13;
  v78 = v8;
  v79 = v10;
  v92 = _swiftEmptyArrayStorage;
  v17 = a1[2];
  v80 = a1;
  if (!v17)
  {
    v90 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v18 = 0;
  v19 = a1 + 5;
  v90 = _swiftEmptyArrayStorage;
  v20 = &qword_4F75A8;
  v21 = &unk_40B660;
  v74 = (a1 + 5);
  v87 = a6;
  do
  {
    v22 = &v19[2 * v18];
    v23 = v18;
    while (1)
    {
      if (v23 >= v17)
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v18 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_61;
      }

      v16 = *(v22 - 1);
      v24 = *v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(v20);
      sub_3E9874();
      v25 = v91;
      if (*(v91 + 16))
      {
        v26 = sub_552A8(v16, v24);
        if (v27)
        {
          break;
        }
      }

LABEL_6:
      ++v23;
      v22 += 2;
      if (v18 == v17)
      {
        goto LABEL_19;
      }
    }

    v28 = v21;
    v29 = v20;
    v16 = *(*(v25 + 56) + 8 * v26);

    type metadata accessor for LegacyChannelLockup();
    v30 = swift_dynamicCastClass();

    if (!v30)
    {

      v20 = v29;
      v21 = v28;
      goto LABEL_6;
    }

    sub_3ED564();
    if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v92 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v16 = *(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8));
      sub_3ED5A4();
    }

    sub_3ED604();
    v90 = v92;
    v19 = v74;
    v20 = v29;
    v21 = v28;
  }

  while (v18 != v17);
LABEL_19:
  v32 = v90;
  v92 = v90;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BB0);
  sub_886BC(&qword_4F7748, &qword_4E9BB0);
  v34 = sub_3ED894();
  v74 = v33;
  if ((v34 & 1) == 0)
  {
    v47 = v80;

LABEL_56:
    v61 = v75;
    v60 = v76;
    v62 = v47[2];
    v63 = v47;
    v65 = v78;
    v64 = v79;
    v67 = v85;
    v66 = v86;
    if (v62)
    {
      v92 = v90;
      v68 = v77;
      sub_3E9DF4();
      sub_886BC(&qword_4F7740, &qword_4F7738);
      v69 = sub_3E9EF4();
      (*(v61 + 8))(v68, v60);
      v92 = v69;
      v70 = v82(v63);

      v91 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7750);
      sub_886BC(&qword_4F7758, &qword_4F7750);
      v71 = v83;
      sub_3E9B54();
      sub_886BC(&qword_4F7760, &qword_4F7728);
      v72 = v84;
      sub_3EA024();
      (*(v67 + 8))(v71, v65);
      sub_886BC(&qword_4F7768, &qword_4F7730);
      v31 = sub_3E9F94();
      (*(v66 + 8))(v72, v64);
    }

    else
    {
      v73 = v77;

      v92 = v90;
      sub_3E9DF4();
      sub_886BC(&qword_4F7740, &qword_4F7738);
      v31 = sub_3E9F94();
      (*(v61 + 8))(v73, v60);
    }

    return v31;
  }

  v16 = v80;
  if (v32 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v36 = _swiftEmptyArrayStorage;
    if (!i)
    {
      goto LABEL_35;
    }

    v92 = _swiftEmptyArrayStorage;
    result = sub_41BA8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v38 = 0;
    v36 = v92;
    v39 = v90 & 0xC000000000000001;
    v87 = v90 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v39)
      {
        v40 = sub_3EE3F4();
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v38 >= *(v87 + 16))
        {
          goto LABEL_65;
        }

        v40 = *(v90 + 8 * v38 + 32);
      }

      v41 = v88(v40);
      v43 = v42;

      v92 = v36;
      v45 = v36[2];
      v44 = v36[3];
      v16 = (v45 + 1);
      if (v45 >= v44 >> 1)
      {
        sub_41BA8((v44 > 1), v45 + 1, 1);
        v36 = v92;
      }

      ++v38;
      v36[2] = v16;
      v46 = &v36[2 * v45];
      v46[4] = v41;
      v46[5] = v43;
    }

    while (i != v38);
    v16 = v80;
LABEL_35:
    if (!v17)
    {
      v47 = _swiftEmptyArrayStorage;
LABEL_55:

      goto LABEL_56;
    }

    v48 = 0;
    v89 = v16 + 32;
    v47 = _swiftEmptyArrayStorage;
LABEL_38:
    while (2)
    {
      if (v48 >= v17)
      {
LABEL_62:
        __break(1u);
      }

      else
      {
        v49 = v48 + 1;
        if (!__OFADD__(v48, 1))
        {
          v50 = &v89[16 * v48];
          v16 = *v50;
          v51 = *(v50 + 1);
          ++v48;
          v52 = v36[2] + 1;
          v53 = v36 + 5;
          while (--v52)
          {
            if (*(v53 - 1) != v16 || *v53 != v51)
            {
              v53 += 2;
              if ((sub_3EE804() & 1) == 0)
              {
                continue;
              }
            }

            if (v49 == v17)
            {
              goto LABEL_55;
            }

            goto LABEL_38;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92 = v47;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_41BA8(0, v47[2] + 1, 1);
            v47 = v92;
          }

          v56 = v47;
          v57 = v47[2];
          v58 = v56[3];
          if (v57 >= v58 >> 1)
          {
            sub_41BA8((v58 > 1), v57 + 1, 1);
            v56 = v92;
          }

          v56[2] = v57 + 1;
          v59 = &v56[2 * v57];
          v59[4] = v16;
          v59[5] = v51;
          v47 = v56;
          if (v49 != v17)
          {
            continue;
          }

          goto LABEL_55;
        }
      }

      break;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  __break(1u);
  return result;
}

char *sub_1BDD94(void *a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v70 = a3;
  v71 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F76C0);
  v74 = *(v6 - 8);
  __chkstk_darwin(v6);
  v72 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F76C8);
  v75 = *(v8 - 8);
  __chkstk_darwin(v8);
  v73 = v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F76D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v64 - v12;
  v80 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4F1270, &unk_5010E0);
  if ((sub_3ED894() & 1) == 0)
  {
    v80 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14A8);
    sub_3E9DF4();
    sub_886BC(&qword_4F76D8, &qword_4F76D0);
    v23 = sub_3E9F94();
    (*(v11 + 8))(v13, v10);
    return v23;
  }

  v65 = v13;
  v66 = v6;
  v67 = v8;
  v68 = v11;
  v80 = _swiftEmptyArrayStorage;
  v14 = a1[2];
  v69 = v10;
  v76 = a1;
  if (!v14)
  {
    v78 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v15 = 0;
  v16 = a1 + 5;
  v77 = a4;
  v78 = _swiftEmptyArrayStorage;
  do
  {
    v17 = &v16[2 * v15];
    v18 = v15;
    while (1)
    {
      if (v18 >= v14)
      {
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_62;
      }

      v20 = *(v17 - 1);
      v19 = *v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F75A8);
      sub_3E9874();
      if (*(v79 + 16))
      {
        sub_552A8(v20, v19);
        if (v21)
        {
          break;
        }
      }

LABEL_6:
      ++v18;
      v17 += 2;
      if (v15 == v14)
      {
        v11 = v68;
        v10 = v69;
        goto LABEL_20;
      }
    }

    type metadata accessor for LegacyEditorialItemLockup();
    v22 = swift_dynamicCastClass();

    if (!v22)
    {

      goto LABEL_6;
    }

    sub_3ED564();
    if (*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v80 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }

    sub_3ED604();
    v78 = v80;
    v11 = v68;
    v10 = v69;
  }

  while (v15 != v14);
LABEL_20:
  v24 = v78;
  v80 = v78;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14A8);
  sub_886BC(&qword_4F76E0, &qword_4F14A8);
  v64[1] = v25;
  if ((sub_3ED894() & 1) == 0)
  {
    v38 = v76;

LABEL_57:
    v55 = v66;
    v54 = v67;
    v57 = v74;
    v56 = v75;
    if (v38[2])
    {
      v80 = v78;
      v58 = v65;
      sub_3E9DF4();
      sub_886BC(&qword_4F76D8, &qword_4F76D0);
      v59 = sub_3E9EF4();
      (*(v11 + 8))(v58, v10);
      v80 = v59;
      v60 = v71(v38);

      v79 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F76E8);
      sub_886BC(&qword_4F76F0, &qword_4F76E8);
      v61 = v72;
      sub_3E9B54();
      sub_886BC(&qword_4F76F8, &qword_4F76C0);
      v62 = v73;
      sub_3EA024();
      (*(v57 + 8))(v61, v55);
      sub_886BC(&qword_4F7700, &qword_4F76C8);
      v23 = sub_3E9F94();
      (*(v56 + 8))(v62, v54);
    }

    else
    {
      v63 = v65;

      v80 = v78;
      sub_3E9DF4();
      sub_886BC(&qword_4F76D8, &qword_4F76D0);
      v23 = sub_3E9F94();
      (*(v11 + 8))(v63, v10);
    }

    return v23;
  }

  if (v24 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v27 = _swiftEmptyArrayStorage;
    if (i)
    {
      break;
    }

LABEL_36:
    if (!v14)
    {
      v41 = _swiftEmptyArrayStorage;
LABEL_56:

      v11 = v68;
      v10 = v69;
      v38 = v41;
      goto LABEL_57;
    }

    v39 = 0;
    v40 = v76 + 4;
    v77 = (v27 + 5);
    v41 = _swiftEmptyArrayStorage;
    v76 += 4;
LABEL_39:
    while (2)
    {
      if (v39 >= v14)
      {
LABEL_63:
        __break(1u);
      }

      else
      {
        v42 = v39 + 1;
        if (!__OFADD__(v39, 1))
        {
          v43 = &v40[2 * v39];
          v44 = *v43;
          v45 = v43[1];
          ++v39;
          v46 = v27[2] + 1;
          v47 = v77;
          while (--v46)
          {
            if (*(v47 - 1) != v44 || *v47 != v45)
            {
              v47 += 2;
              if ((sub_3EE804() & 1) == 0)
              {
                continue;
              }
            }

            if (v42 == v14)
            {
              goto LABEL_56;
            }

            goto LABEL_39;
          }

          v49 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_41BA8(0, v41[2] + 1, 1);
            v49 = v80;
          }

          v52 = v49[2];
          v51 = v49[3];
          if (v52 >= v51 >> 1)
          {
            sub_41BA8((v51 > 1), v52 + 1, 1);
            v49 = v80;
          }

          v49[2] = v52 + 1;
          v41 = v49;
          v53 = &v49[2 * v52];
          v53[4] = v44;
          v53[5] = v45;
          v40 = v76;
          if (v42 != v14)
          {
            continue;
          }

          goto LABEL_56;
        }
      }

      break;
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v80 = _swiftEmptyArrayStorage;
  result = sub_41BA8(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v27 = v80;
    v30 = v78 & 0xC000000000000001;
    v77 = v78 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v30)
      {
        v31 = sub_3EE3F4();
      }

      else
      {
        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (v29 >= *(v77 + 16))
        {
          goto LABEL_66;
        }

        v31 = *(v78 + 8 * v29 + 32);
      }

      v79 = *(v31 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
      sub_17A28();
      v32 = sub_3EE1F4();
      v34 = v33;

      v80 = v27;
      v36 = v27[2];
      v35 = v27[3];
      if (v36 >= v35 >> 1)
      {
        sub_41BA8((v35 > 1), v36 + 1, 1);
        v27 = v80;
      }

      ++v29;
      v27[2] = v36 + 1;
      v37 = &v27[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
      if (i == v29)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
  return result;
}

char *sub_1BE738(void *a1, uint64_t (*a2)(uint64_t), char *a3, uint64_t (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v81 = a5;
  v82 = a4;
  v88 = a2;
  v89 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7660);
  v85 = *(v8 - 8);
  __chkstk_darwin(v8);
  v83 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7668);
  v86 = *(v10 - 8);
  __chkstk_darwin(v10);
  v84 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7670);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - v14;
  v92 = a1;
  v16 = &unk_5010E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4F1270, &unk_5010E0);
  if ((sub_3ED894() & 1) == 0)
  {
    v92 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1498);
    sub_3E9DF4();
    sub_886BC(&qword_4F7678, &qword_4F7670);
    v31 = sub_3E9F94();
    (*(v13 + 8))(v15, v12);
    return v31;
  }

  v76 = v12;
  v77 = v15;
  v75 = v13;
  v78 = v8;
  v79 = v10;
  v92 = _swiftEmptyArrayStorage;
  v17 = a1[2];
  v80 = a1;
  if (!v17)
  {
    v90 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v18 = 0;
  v19 = a1 + 5;
  v90 = _swiftEmptyArrayStorage;
  v20 = &qword_4F75A8;
  v21 = &unk_40B660;
  v74 = (a1 + 5);
  v87 = a6;
  do
  {
    v22 = &v19[2 * v18];
    v23 = v18;
    while (1)
    {
      if (v23 >= v17)
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v18 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_61;
      }

      v16 = *(v22 - 1);
      v24 = *v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(v20);
      sub_3E9874();
      v25 = v91;
      if (*(v91 + 16))
      {
        v26 = sub_552A8(v16, v24);
        if (v27)
        {
          break;
        }
      }

LABEL_6:
      ++v23;
      v22 += 2;
      if (v18 == v17)
      {
        goto LABEL_19;
      }
    }

    v28 = v21;
    v29 = v20;
    v16 = *(*(v25 + 56) + 8 * v26);

    type metadata accessor for LibraryEpisodeLockup();
    v30 = swift_dynamicCastClass();

    if (!v30)
    {

      v20 = v29;
      v21 = v28;
      goto LABEL_6;
    }

    sub_3ED564();
    if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v92 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v16 = *(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8));
      sub_3ED5A4();
    }

    sub_3ED604();
    v90 = v92;
    v19 = v74;
    v20 = v29;
    v21 = v28;
  }

  while (v18 != v17);
LABEL_19:
  v32 = v90;
  v92 = v90;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1498);
  sub_886BC(&qword_4F7680, &qword_4F1498);
  v34 = sub_3ED894();
  v74 = v33;
  if ((v34 & 1) == 0)
  {
    v47 = v80;

LABEL_56:
    v61 = v75;
    v60 = v76;
    v62 = v47[2];
    v63 = v47;
    v65 = v78;
    v64 = v79;
    v67 = v85;
    v66 = v86;
    if (v62)
    {
      v92 = v90;
      v68 = v77;
      sub_3E9DF4();
      sub_886BC(&qword_4F7678, &qword_4F7670);
      v69 = sub_3E9EF4();
      (*(v61 + 8))(v68, v60);
      v92 = v69;
      v70 = v82(v63);

      v91 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7688);
      sub_886BC(&qword_4F7690, &qword_4F7688);
      v71 = v83;
      sub_3E9B54();
      sub_886BC(&qword_4F7698, &qword_4F7660);
      v72 = v84;
      sub_3EA024();
      (*(v67 + 8))(v71, v65);
      sub_886BC(&qword_4F76A0, &qword_4F7668);
      v31 = sub_3E9F94();
      (*(v66 + 8))(v72, v64);
    }

    else
    {
      v73 = v77;

      v92 = v90;
      sub_3E9DF4();
      sub_886BC(&qword_4F7678, &qword_4F7670);
      v31 = sub_3E9F94();
      (*(v61 + 8))(v73, v60);
    }

    return v31;
  }

  v16 = v80;
  if (v32 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v36 = _swiftEmptyArrayStorage;
    if (!i)
    {
      goto LABEL_35;
    }

    v92 = _swiftEmptyArrayStorage;
    result = sub_41BA8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v38 = 0;
    v36 = v92;
    v39 = v90 & 0xC000000000000001;
    v87 = v90 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v39)
      {
        v40 = sub_3EE3F4();
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v38 >= *(v87 + 16))
        {
          goto LABEL_65;
        }

        v40 = *(v90 + 8 * v38 + 32);
      }

      v41 = v88(v40);
      v43 = v42;

      v92 = v36;
      v45 = v36[2];
      v44 = v36[3];
      v16 = (v45 + 1);
      if (v45 >= v44 >> 1)
      {
        sub_41BA8((v44 > 1), v45 + 1, 1);
        v36 = v92;
      }

      ++v38;
      v36[2] = v16;
      v46 = &v36[2 * v45];
      v46[4] = v41;
      v46[5] = v43;
    }

    while (i != v38);
    v16 = v80;
LABEL_35:
    if (!v17)
    {
      v47 = _swiftEmptyArrayStorage;
LABEL_55:

      goto LABEL_56;
    }

    v48 = 0;
    v89 = v16 + 32;
    v47 = _swiftEmptyArrayStorage;
LABEL_38:
    while (2)
    {
      if (v48 >= v17)
      {
LABEL_62:
        __break(1u);
      }

      else
      {
        v49 = v48 + 1;
        if (!__OFADD__(v48, 1))
        {
          v50 = &v89[16 * v48];
          v16 = *v50;
          v51 = *(v50 + 1);
          ++v48;
          v52 = v36[2] + 1;
          v53 = v36 + 5;
          while (--v52)
          {
            if (*(v53 - 1) != v16 || *v53 != v51)
            {
              v53 += 2;
              if ((sub_3EE804() & 1) == 0)
              {
                continue;
              }
            }

            if (v49 == v17)
            {
              goto LABEL_55;
            }

            goto LABEL_38;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92 = v47;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_41BA8(0, v47[2] + 1, 1);
            v47 = v92;
          }

          v56 = v47;
          v57 = v47[2];
          v58 = v56[3];
          if (v57 >= v58 >> 1)
          {
            sub_41BA8((v58 > 1), v57 + 1, 1);
            v56 = v92;
          }

          v56[2] = v57 + 1;
          v59 = &v56[2 * v57];
          v59[4] = v16;
          v59[5] = v51;
          v47 = v56;
          if (v49 != v17)
          {
            continue;
          }

          goto LABEL_55;
        }
      }

      break;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  __break(1u);
  return result;
}

char *sub_1BF0DC(void *a1, uint64_t (*a2)(uint64_t), char *a3, uint64_t (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v81 = a5;
  v82 = a4;
  v88 = a2;
  v89 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7600);
  v85 = *(v8 - 8);
  __chkstk_darwin(v8);
  v83 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7608);
  v86 = *(v10 - 8);
  __chkstk_darwin(v10);
  v84 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7610);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - v14;
  v92 = a1;
  v16 = &unk_5010E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4F1270, &unk_5010E0);
  if ((sub_3ED894() & 1) == 0)
  {
    v92 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1488);
    sub_3E9DF4();
    sub_886BC(&qword_4F7618, &qword_4F7610);
    v31 = sub_3E9F94();
    (*(v13 + 8))(v15, v12);
    return v31;
  }

  v76 = v12;
  v77 = v15;
  v75 = v13;
  v78 = v8;
  v79 = v10;
  v92 = _swiftEmptyArrayStorage;
  v17 = a1[2];
  v80 = a1;
  if (!v17)
  {
    v90 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v18 = 0;
  v19 = a1 + 5;
  v90 = _swiftEmptyArrayStorage;
  v20 = &qword_4F75A8;
  v21 = &unk_40B660;
  v74 = (a1 + 5);
  v87 = a6;
  do
  {
    v22 = &v19[2 * v18];
    v23 = v18;
    while (1)
    {
      if (v23 >= v17)
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v18 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_61;
      }

      v16 = *(v22 - 1);
      v24 = *v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(v20);
      sub_3E9874();
      v25 = v91;
      if (*(v91 + 16))
      {
        v26 = sub_552A8(v16, v24);
        if (v27)
        {
          break;
        }
      }

LABEL_6:
      ++v23;
      v22 += 2;
      if (v18 == v17)
      {
        goto LABEL_19;
      }
    }

    v28 = v21;
    v29 = v20;
    v16 = *(*(v25 + 56) + 8 * v26);

    type metadata accessor for LibraryShowLockup();
    v30 = swift_dynamicCastClass();

    if (!v30)
    {

      v20 = v29;
      v21 = v28;
      goto LABEL_6;
    }

    sub_3ED564();
    if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v92 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v16 = *(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8));
      sub_3ED5A4();
    }

    sub_3ED604();
    v90 = v92;
    v19 = v74;
    v20 = v29;
    v21 = v28;
  }

  while (v18 != v17);
LABEL_19:
  v32 = v90;
  v92 = v90;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1488);
  sub_886BC(&qword_4F7620, &qword_4F1488);
  v34 = sub_3ED894();
  v74 = v33;
  if ((v34 & 1) == 0)
  {
    v47 = v80;

LABEL_56:
    v61 = v75;
    v60 = v76;
    v62 = v47[2];
    v63 = v47;
    v65 = v78;
    v64 = v79;
    v67 = v85;
    v66 = v86;
    if (v62)
    {
      v92 = v90;
      v68 = v77;
      sub_3E9DF4();
      sub_886BC(&qword_4F7618, &qword_4F7610);
      v69 = sub_3E9EF4();
      (*(v61 + 8))(v68, v60);
      v92 = v69;
      v70 = v82(v63);

      v91 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7628);
      sub_886BC(&qword_4F7630, &qword_4F7628);
      v71 = v83;
      sub_3E9B54();
      sub_886BC(&qword_4F7638, &qword_4F7600);
      v72 = v84;
      sub_3EA024();
      (*(v67 + 8))(v71, v65);
      sub_886BC(&qword_4F7640, &qword_4F7608);
      v31 = sub_3E9F94();
      (*(v66 + 8))(v72, v64);
    }

    else
    {
      v73 = v77;

      v92 = v90;
      sub_3E9DF4();
      sub_886BC(&qword_4F7618, &qword_4F7610);
      v31 = sub_3E9F94();
      (*(v61 + 8))(v73, v60);
    }

    return v31;
  }

  v16 = v80;
  if (v32 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v36 = _swiftEmptyArrayStorage;
    if (!i)
    {
      goto LABEL_35;
    }

    v92 = _swiftEmptyArrayStorage;
    result = sub_41BA8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v38 = 0;
    v36 = v92;
    v39 = v90 & 0xC000000000000001;
    v87 = v90 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v39)
      {
        v40 = sub_3EE3F4();
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v38 >= *(v87 + 16))
        {
          goto LABEL_65;
        }

        v40 = *(v90 + 8 * v38 + 32);
      }

      v41 = v88(v40);
      v43 = v42;

      v92 = v36;
      v45 = v36[2];
      v44 = v36[3];
      v16 = (v45 + 1);
      if (v45 >= v44 >> 1)
      {
        sub_41BA8((v44 > 1), v45 + 1, 1);
        v36 = v92;
      }

      ++v38;
      v36[2] = v16;
      v46 = &v36[2 * v45];
      v46[4] = v41;
      v46[5] = v43;
    }

    while (i != v38);
    v16 = v80;
LABEL_35:
    if (!v17)
    {
      v47 = _swiftEmptyArrayStorage;
LABEL_55:

      goto LABEL_56;
    }

    v48 = 0;
    v89 = v16 + 32;
    v47 = _swiftEmptyArrayStorage;
LABEL_38:
    while (2)
    {
      if (v48 >= v17)
      {
LABEL_62:
        __break(1u);
      }

      else
      {
        v49 = v48 + 1;
        if (!__OFADD__(v48, 1))
        {
          v50 = &v89[16 * v48];
          v16 = *v50;
          v51 = *(v50 + 1);
          ++v48;
          v52 = v36[2] + 1;
          v53 = v36 + 5;
          while (--v52)
          {
            if (*(v53 - 1) != v16 || *v53 != v51)
            {
              v53 += 2;
              if ((sub_3EE804() & 1) == 0)
              {
                continue;
              }
            }

            if (v49 == v17)
            {
              goto LABEL_55;
            }

            goto LABEL_38;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92 = v47;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_41BA8(0, v47[2] + 1, 1);
            v47 = v92;
          }

          v56 = v47;
          v57 = v47[2];
          v58 = v56[3];
          if (v57 >= v58 >> 1)
          {
            sub_41BA8((v58 > 1), v57 + 1, 1);
            v56 = v92;
          }

          v56[2] = v57 + 1;
          v59 = &v56[2 * v57];
          v59[4] = v16;
          v59[5] = v51;
          v47 = v56;
          if (v49 != v17)
          {
            continue;
          }

          goto LABEL_55;
        }
      }

      break;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  __break(1u);
  return result;
}

char *sub_1BFA80(void *a1, uint64_t (*a2)(uint64_t), char *a3, uint64_t (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v81 = a5;
  v82 = a4;
  v88 = a2;
  v89 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7588);
  v85 = *(v8 - 8);
  __chkstk_darwin(v8);
  v83 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7590);
  v86 = *(v10 - 8);
  __chkstk_darwin(v10);
  v84 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7598);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - v14;
  v92 = a1;
  v16 = &unk_5010E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4F1270, &unk_5010E0);
  if ((sub_3ED894() & 1) == 0)
  {
    v92 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1478);
    sub_3E9DF4();
    sub_886BC(&qword_4F75A0, &qword_4F7598);
    v31 = sub_3E9F94();
    (*(v13 + 8))(v15, v12);
    return v31;
  }

  v76 = v12;
  v77 = v15;
  v75 = v13;
  v78 = v8;
  v79 = v10;
  v92 = _swiftEmptyArrayStorage;
  v17 = a1[2];
  v80 = a1;
  if (!v17)
  {
    v90 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v18 = 0;
  v19 = a1 + 5;
  v90 = _swiftEmptyArrayStorage;
  v20 = &qword_4F75A8;
  v21 = &unk_40B660;
  v74 = (a1 + 5);
  v87 = a6;
  do
  {
    v22 = &v19[2 * v18];
    v23 = v18;
    while (1)
    {
      if (v23 >= v17)
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v18 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_61;
      }

      v16 = *(v22 - 1);
      v24 = *v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(v20);
      sub_3E9874();
      v25 = v91;
      if (*(v91 + 16))
      {
        v26 = sub_552A8(v16, v24);
        if (v27)
        {
          break;
        }
      }

LABEL_6:
      ++v23;
      v22 += 2;
      if (v18 == v17)
      {
        goto LABEL_19;
      }
    }

    v28 = v21;
    v29 = v20;
    v16 = *(*(v25 + 56) + 8 * v26);

    type metadata accessor for LegacyCategoryLockup();
    v30 = swift_dynamicCastClass();

    if (!v30)
    {

      v20 = v29;
      v21 = v28;
      goto LABEL_6;
    }

    sub_3ED564();
    if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v92 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v16 = *(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8));
      sub_3ED5A4();
    }

    sub_3ED604();
    v90 = v92;
    v19 = v74;
    v20 = v29;
    v21 = v28;
  }

  while (v18 != v17);
LABEL_19:
  v32 = v90;
  v92 = v90;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1478);
  sub_886BC(&qword_4F75B0, &qword_4F1478);
  v34 = sub_3ED894();
  v74 = v33;
  if ((v34 & 1) == 0)
  {
    v47 = v80;

LABEL_56:
    v61 = v75;
    v60 = v76;
    v62 = v47[2];
    v63 = v47;
    v65 = v78;
    v64 = v79;
    v67 = v85;
    v66 = v86;
    if (v62)
    {
      v92 = v90;
      v68 = v77;
      sub_3E9DF4();
      sub_886BC(&qword_4F75A0, &qword_4F7598);
      v69 = sub_3E9EF4();
      (*(v61 + 8))(v68, v60);
      v92 = v69;
      v70 = v82(v63);

      v91 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F75B8);
      sub_886BC(&qword_4F75C0, &qword_4F75B8);
      v71 = v83;
      sub_3E9B54();
      sub_886BC(&qword_4F75C8, &qword_4F7588);
      v72 = v84;
      sub_3EA024();
      (*(v67 + 8))(v71, v65);
      sub_886BC(&qword_4F75D0, &qword_4F7590);
      v31 = sub_3E9F94();
      (*(v66 + 8))(v72, v64);
    }

    else
    {
      v73 = v77;

      v92 = v90;
      sub_3E9DF4();
      sub_886BC(&qword_4F75A0, &qword_4F7598);
      v31 = sub_3E9F94();
      (*(v61 + 8))(v73, v60);
    }

    return v31;
  }

  v16 = v80;
  if (v32 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v36 = _swiftEmptyArrayStorage;
    if (!i)
    {
      goto LABEL_35;
    }

    v92 = _swiftEmptyArrayStorage;
    result = sub_41BA8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v38 = 0;
    v36 = v92;
    v39 = v90 & 0xC000000000000001;
    v87 = v90 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v39)
      {
        v40 = sub_3EE3F4();
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v38 >= *(v87 + 16))
        {
          goto LABEL_65;
        }

        v40 = *(v90 + 8 * v38 + 32);
      }

      v41 = v88(v40);
      v43 = v42;

      v92 = v36;
      v45 = v36[2];
      v44 = v36[3];
      v16 = (v45 + 1);
      if (v45 >= v44 >> 1)
      {
        sub_41BA8((v44 > 1), v45 + 1, 1);
        v36 = v92;
      }

      ++v38;
      v36[2] = v16;
      v46 = &v36[2 * v45];
      v46[4] = v41;
      v46[5] = v43;
    }

    while (i != v38);
    v16 = v80;
LABEL_35:
    if (!v17)
    {
      v47 = _swiftEmptyArrayStorage;
LABEL_55:

      goto LABEL_56;
    }

    v48 = 0;
    v89 = v16 + 32;
    v47 = _swiftEmptyArrayStorage;
LABEL_38:
    while (2)
    {
      if (v48 >= v17)
      {
LABEL_62:
        __break(1u);
      }

      else
      {
        v49 = v48 + 1;
        if (!__OFADD__(v48, 1))
        {
          v50 = &v89[16 * v48];
          v16 = *v50;
          v51 = *(v50 + 1);
          ++v48;
          v52 = v36[2] + 1;
          v53 = v36 + 5;
          while (--v52)
          {
            if (*(v53 - 1) != v16 || *v53 != v51)
            {
              v53 += 2;
              if ((sub_3EE804() & 1) == 0)
              {
                continue;
              }
            }

            if (v49 == v17)
            {
              goto LABEL_55;
            }

            goto LABEL_38;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92 = v47;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_41BA8(0, v47[2] + 1, 1);
            v47 = v92;
          }

          v56 = v47;
          v57 = v47[2];
          v58 = v56[3];
          if (v57 >= v58 >> 1)
          {
            sub_41BA8((v58 > 1), v57 + 1, 1);
            v56 = v92;
          }

          v56[2] = v57 + 1;
          v59 = &v56[2 * v57];
          v59[4] = v16;
          v59[5] = v51;
          v47 = v56;
          if (v49 != v17)
          {
            continue;
          }

          goto LABEL_55;
        }
      }

      break;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0424(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void *), uint64_t (*a6)(BOOL, uint64_t, uint64_t, void *))
{
  v16[4] = a2;
  v16[5] = a1;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v8 != 2)
  {
    v10 = v16[v8++ + 4];
    if (v10)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = a6(0, v9[2] + 1, 1, v9);
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = a6(v11 > 1, v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      v9[v12 + 4] = v10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayDestroy();
  v13 = a5(v9);

  return v13;
}

uint64_t sub_1C0574(uint64_t a1)
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

      sub_886BC(&qword_4F75B0, &qword_4F1478);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1478);
        v16 = sub_5A2F8(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for LegacyCategoryLockup();
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

uint64_t sub_1C0844(uint64_t a1)
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

      sub_886BC(&qword_4F7620, &qword_4F1488);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1488);
        v16 = sub_5A2F8(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for LibraryShowLockup();
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

uint64_t sub_1C0B14(uint64_t a1)
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

      sub_886BC(&qword_4F7680, &qword_4F1498);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1498);
        v16 = sub_5A2F8(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for LibraryEpisodeLockup();
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

uint64_t sub_1C0DE4(uint64_t a1)
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

      sub_886BC(&qword_4F76E0, &qword_4F14A8);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14A8);
        v16 = sub_5A2F8(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for LegacyEditorialItemLockup();
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

uint64_t sub_1C10B4(uint64_t a1)
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

      sub_886BC(&qword_4F7748, &qword_4E9BB0);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BB0);
        v16 = sub_5A2F8(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for LegacyChannelLockup();
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

uint64_t sub_1C1384(uint64_t a1)
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

      sub_886BC(&qword_4EA818, &qword_4EA810);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA810);
        v16 = sub_5A2F8(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for LegacyLockup();
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

uint64_t sub_1C1654(uint64_t a1)
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

      sub_886BC(&qword_4F7800, &qword_4F14C0);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14C0);
        v16 = sub_5A2F8(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for LegacyEpisodeLockup();
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

uint64_t sub_1C1924(uint64_t a1, void *a2)
{

  FetchSearchEditorialItemLockupsIntent.init(ids:)(v3);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6B10();
  sub_3EC4D4();

  sub_3ECD54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7838);
  sub_886BC(&qword_4F7840, &qword_4F7838);
  v4 = sub_3E9EF4();

  return v4;
}

uint64_t sub_1C1A34(uint64_t a1, void *a2)
{

  FetchSearchEditorialItemLockupsIntent.init(ids:)(v3);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6ABC();
  sub_3EC4D4();

  sub_3ECD54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F77D0);
  sub_886BC(&qword_4F77D8, &qword_4F77D0);
  v4 = sub_3E9EF4();

  return v4;
}

uint64_t sub_1C1B44(uint64_t a1, void *a2)
{

  FetchSearchEditorialItemLockupsIntent.init(ids:)(v3);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6A68();
  sub_3EC4D4();

  sub_3ECD54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7780);
  sub_886BC(&qword_4F7788, &qword_4F7780);
  v4 = sub_3E9EF4();

  return v4;
}

uint64_t sub_1C1C54(uint64_t a1, void *a2)
{

  FetchSearchEditorialItemLockupsIntent.init(ids:)(v3);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6A14();
  sub_3EC4D4();

  sub_3ECD54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7718);
  sub_886BC(&qword_4F7720, &qword_4F7718);
  v4 = sub_3E9EF4();

  return v4;
}

uint64_t sub_1C1D64(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);

  return v1;
}

uint64_t sub_1C1DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(a3 + 152))(a1, ObjectType, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F76B0);
  sub_886BC(&qword_4F76B8, &qword_4F76B0);
  v6 = sub_3E9EF4();

  return v6;
}

uint64_t sub_1C1E74(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);

  return v1;
}

uint64_t sub_1C1EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(a3 + 168))(a1, ObjectType, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7650);
  sub_886BC(&qword_4F7658, &qword_4F7650);
  v6 = sub_3E9EF4();

  return v6;
}

uint64_t sub_1C1F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_41AD4(0, v4, 0);
    v6 = a1 + 40;
    do
    {

      v7 = sub_3E9494();

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_41AD4((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      _swiftEmptyArrayStorage[v9 + 4] = v7;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  ObjectType = swift_getObjectType();
  (*(a3 + 176))(_swiftEmptyArrayStorage, ObjectType, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F75F0);
  sub_886BC(&qword_4F75F8, &qword_4F75F0);
  v11 = sub_3E9EF4();

  return v11;
}

uint64_t sub_1C2144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_41AD4(0, v4, 0);
    v6 = a1 + 40;
    do
    {

      v7 = sub_3E9494();

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_41AD4((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      _swiftEmptyArrayStorage[v9 + 4] = v7;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  ObjectType = swift_getObjectType();
  (*(a3 + 184))(_swiftEmptyArrayStorage, ObjectType, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F75E0);
  sub_886BC(&qword_4F75E8, &qword_4F75E0);
  v11 = sub_3E9EF4();

  return v11;
}

uint64_t sub_1C2304(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = a1;
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  sub_3EE814();
  type metadata accessor for LegacyLockup();
LABEL_3:
  v47[9] = v17;
  v47[10] = a2;
  if (a3 >> 62)
  {
    type metadata accessor for LegacyLockup();

    v29 = sub_3EE594();

    a3 = v29;
  }

  else
  {

    sub_3EE814();
    type metadata accessor for LegacyLockup();
  }

  v47[11] = a3;
  if (a4 >> 62)
  {
    type metadata accessor for LegacyLockup();

    v30 = sub_3EE594();

    a4 = v30;
  }

  else
  {

    sub_3EE814();
    type metadata accessor for LegacyLockup();
  }

  v47[12] = a4;
  if (a5 >> 62)
  {
    type metadata accessor for LegacyLockup();

    v31 = sub_3EE594();

    a5 = v31;
  }

  else
  {

    sub_3EE814();
    type metadata accessor for LegacyLockup();
  }

  v47[13] = a5;
  if (a6 >> 62)
  {
    type metadata accessor for LegacyLockup();

    v32 = sub_3EE594();

    a6 = v32;
  }

  else
  {

    sub_3EE814();
    type metadata accessor for LegacyLockup();
  }

  v47[14] = a6;
  if (a7 >> 62)
  {
    type metadata accessor for LegacyLockup();

    v33 = sub_3EE594();

    a7 = v33;
  }

  else
  {

    sub_3EE814();
    type metadata accessor for LegacyLockup();
  }

  v39 = a10;
  v47[15] = a7;
  if (a8 >> 62)
  {
    type metadata accessor for LegacyLockup();

    v34 = sub_3EE594();

    a8 = v34;
  }

  else
  {

    sub_3EE814();
    type metadata accessor for LegacyLockup();
  }

  v47[16] = a8;
  v18 = _swiftEmptyArrayStorage;
  a4 = 32;
  do
  {
    v19 = *(&v47[5] + a4);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_E06BC(0, v18[2] + 1, 1, v18);
    }

    a2 = v18[2];
    v20 = v18[3];
    if (a2 >= v20 >> 1)
    {
      v18 = sub_E06BC((v20 > 1), a2 + 1, 1, v18);
    }

    v18[2] = a2 + 1;
    v18[a2 + 4] = v19;
    a4 += 8;
  }

  while (a4 != 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA810);
  swift_arrayDestroy();
  a8 = 0;
  v21 = sub_1C1384(v18);

  a5 = *(a9 + 16);
  os_unfair_lock_lock((a5 + 24));
  a6 = a5 + 16;

  v45 = (a5 + 16);
  *(a5 + 16) = _swiftEmptyDictionarySingleton;
  os_unfair_lock_unlock((a5 + 24));
  if (v21 >> 62)
  {
    v22 = sub_3EE5A4();
    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    if (v22)
    {
LABEL_23:
      a3 = 0;
      v43 = v21 & 0xFFFFFFFFFFFFFF8;
      v44 = v21 & 0xC000000000000001;
      v41 = "LinksIntent[adamId=";
      v40 = xmmword_3F5630;
      v42 = v22;
      a7 = v21;
      do
      {
        if (v44)
        {
          sub_3EE3F4();
          a4 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (a3 >= *(v43 + 16))
          {
            goto LABEL_37;
          }

          a4 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            type metadata accessor for LegacyLockup();

            v28 = sub_3EE594();

            v17 = v28;
            goto LABEL_3;
          }
        }

        RecentlySearchedStorage.Item.init(_:)(v24, v47);
        v25 = v47[1];
        a2 = v47[2];
        v26 = v47[3];
        v23 = sub_3E94A4();
        if (v23)
        {
          if (!v26)
          {
            if (qword_4E8A48 != -1)
            {
              swift_once();
            }

            v27 = sub_3ECE84();
            __swift_project_value_buffer(v27, qword_4F8478);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
            sub_3EBE94();
            *(swift_allocObject() + 16) = v40;
            sub_3EBE14();
            sub_3ECBA4();

            a2 = 0x656E696665646E75;
          }
        }

        else
        {
          v46 = v25;
          sub_17A28();
          a2 = sub_3EE1F4();
        }

        a6 = &v38;
        __chkstk_darwin(v23);
        os_unfair_lock_lock((a5 + 24));
        sub_1C3840(v45);
        os_unfair_lock_unlock((a5 + 24));

        ++a3;
      }

      while (a4 != v42);
    }
  }

  v35 = v39;

  v47[0] = sub_1C3860(v36);
  sub_1C6968(v47, v35);

  return v47[0];
}

uint64_t sub_1C2A64@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA810);
  sub_886BC(&qword_4EA818, &qword_4EA810);
  if (sub_3ED894())
  {
    v4 = sub_77500(v3);
    sub_1C2B50(v4, a2);
  }

  else
  {
    sub_3ECC94();
    v6 = type metadata accessor for ModernPage();
    result = sub_3EC154();
    *(a2 + *(v6 + 24)) = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1C2B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3EC544();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  sub_3ECC94();
  v11 = sub_3E7AA4();
  v13 = v12;
  v14 = sub_3E8054();
  v25 = v11;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_3E6794();
  sub_3EC534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  v16 = swift_allocObject();
  v24 = xmmword_3F5310;
  *(v16 + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  (*(v5 + 16))(v7, v10, v4);
  v17 = type metadata accessor for ModernPage();
  sub_3EC0C4();
  v38 = v32;
  sub_FCF8(&v38, &unk_4F8A10);
  v37 = v33;
  sub_FCF8(&v37, &qword_4E94E0);
  v36 = v34;
  sub_FCF8(&v36, &unk_4F8A20);
  sub_16AC0(v35);
  (*(v5 + 8))(v10, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
  v18 = *(type metadata accessor for ModernShelf() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v24;
  v22 = (v21 + v20);
  sub_1C2F34(v22);
  result = sub_1C32E0(a1, &v22[v19]);
  *(a2 + *(v17 + 24)) = v21;
  return result;
}

uint64_t sub_1C2ED0()
{
  sub_3E62F4();
  v0 = sub_3E62E4();
  v2 = v1;

  qword_4F74E0 = v0;
  *algn_4F74E8 = v2;
  return result;
}

uint64_t sub_1C2F34@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v2 - 8);
  v4 = v24 - v3;
  if (qword_4E8A20 != -1)
  {
    swift_once();
  }

  v5 = *algn_4F74E8;
  v28 = qword_4F74E0;
  v6 = type metadata accessor for ModernShelf();
  v7 = v6[5];
  v8 = type metadata accessor for Header(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_3F5630;
  v10 = type metadata accessor for RecentlySearchedHeader();
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_1C3594();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v9 + 32));
  v12 = *(v10 + 20);
  v13 = sub_3EC634();
  v14 = *(v13 - 8);
  v26 = *(v14 + 56);
  v27 = v14 + 56;
  v26(boxed_opaque_existential_0Tm + v12, 1, 1, v13);
  *boxed_opaque_existential_0Tm = 0xD000000000000018;
  boxed_opaque_existential_0Tm[1] = 0x8000000000427250;
  v15 = sub_3E5DC4();
  v16 = *(v15 - 8);
  v24[0] = *(v16 + 56);
  v24[1] = v16 + 56;
  (v24[0])(v4, 1, 1, v15);
  v17 = &a1[v6[12]];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = v6[13];
  v25 = v4;

  sub_3E85C4();
  v19 = v28;
  sub_3EC584();

  v26(&a1[v18], 0, 1, v13);
  v20 = v6[9];
  v21 = &a1[v6[8]];
  (v24[0])(&a1[v20], 1, 1, v15);
  *a1 = v19;
  *(a1 + 1) = v5;
  v22 = &a1[v6[6]];
  *v22 = 70;
  *(v22 + 3) = 256;
  *(v22 + 2) = 0;
  *(v22 + 1) = 1;
  *&a1[v6[7]] = v9;
  result = sub_17F4C4(v25, &a1[v20]);
  a1[v6[10]] = 1;
  a1[v6[11]] = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  return result;
}

uint64_t sub_1C327C()
{
  sub_3E62F4();
  v0 = sub_3E62E4();
  v2 = v1;

  qword_4F74F0 = v0;
  *algn_4F74F8 = v2;
  return result;
}

uint64_t sub_1C32E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  if (qword_4E8A28 != -1)
  {
    swift_once();
  }

  v6 = qword_4F74F0;
  v7 = *algn_4F74F8;
  v8 = type metadata accessor for ModernShelf();
  v9 = v8[5];
  v10 = type metadata accessor for Header(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = sub_3E5DC4();
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = a2 + v8[12];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v20 = v5;
  v14 = v8[13];

  sub_3E85C4();
  sub_3EC584();

  v15 = sub_3EC634();
  (*(*(v15 - 8) + 56))(a2 + v14, 0, 1, v15);
  v16 = v8[9];
  v17 = (a2 + v8[8]);
  v12(a2 + v16, 1, 1, v11);
  *a2 = v6;
  a2[1] = v7;
  v18 = a2 + v8[6];
  *v18 = 320;
  *(v18 + 3) = 256;
  *(v18 + 2) = 0;
  *(v18 + 1) = 1;
  *(a2 + v8[7]) = v21;

  result = sub_17F4C4(v20, a2 + v16);
  *(a2 + v8[10]) = 1;
  *(a2 + v8[11]) = 0;
  *v17 = 0;
  v17[1] = 0;
  return result;
}

unint64_t sub_1C3594()
{
  result = qword_4F7500;
  if (!qword_4F7500)
  {
    type metadata accessor for RecentlySearchedHeader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7500);
  }

  return result;
}

void *sub_1C3604(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1C36A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

uint64_t sub_1C375C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C37C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C37FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a2 = result;
  return result;
}

void *sub_1C3860(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_3EE5A4();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1C3604(v3, 0);
  sub_43D10((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C38F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C0424(*a1, a1[1], &qword_4F75D8, &unk_40B670, sub_1C0574, sub_E0608);
  *a2 = result;
  return result;
}

uint64_t sub_1C395C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C0424(*a1, a1[1], &qword_4F7648, &unk_40B6A8, sub_1C0844, sub_E062C);
  *a2 = result;
  return result;
}

uint64_t sub_1C39C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C0424(*a1, a1[1], &qword_4F76A8, &unk_40B6D8, sub_1C0B14, sub_E0650);
  *a2 = result;
  return result;
}

uint64_t sub_1C3A2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C0424(*a1, a1[1], &qword_4F7708, &unk_40B708, sub_1C0DE4, sub_E0674);
  *a2 = result;
  return result;
}

uint64_t sub_1C3A94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C0424(*a1, a1[1], &qword_4F7770, &unk_40B738, sub_1C10B4, sub_E0698);
  *a2 = result;
  return result;
}

uint64_t sub_1C3AFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C0424(*a1, a1[1], &qword_4F77C0, &unk_40B760, sub_1C6B68, sub_E06BC);
  *a2 = result;
  return result;
}

uint64_t sub_1C3B64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C0424(*a1, a1[1], &qword_4F7828, &unk_40B790, sub_1C1654, sub_E06E0);
  *a2 = result;
  return result;
}

uint64_t sub_1C3BCC(char *__src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    v33 = __dst;
    if (a4 != __dst || &__dst[8 * v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v64 = &v5[8 * v13];
    if (v11 < 8 || v33 <= v7)
    {
      goto LABEL_80;
    }

    type metadata accessor for LibraryEpisodeLockup();
    v58 = v5;
LABEL_47:
    v55 = v33;
    v6 -= 8;
    v34 = v64;
    v53 = v33 - 8;
    while (1)
    {
      v35 = *(v34 - 1);
      v34 -= 8;
      v36 = *(v35 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
      v37 = swift_dynamicCastClass();
      if (v37)
      {
        v38 = 68;
        v39 = &OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid;
      }

      else
      {
        type metadata accessor for LegacyChannelLockup();
        if (swift_dynamicCastClass())
        {
          v41 = 0;
          v42 = 0;
          v38 = 66;
LABEL_54:
          v43 = 256;
          goto LABEL_55;
        }

        type metadata accessor for LibraryShowLockup();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          type metadata accessor for LegacyEpisodeLockup();
          if (swift_dynamicCastClass())
          {
            v41 = 0;
            v42 = 0;
            v38 = 68;
          }

          else
          {
            type metadata accessor for LegacyCategoryLockup();
            if (swift_dynamicCastClass())
            {
              v43 = 0;
              v41 = 0;
              v42 = 0;
              v38 = 65;
              goto LABEL_55;
            }

            type metadata accessor for LegacyEditorialItemLockup();
            v41 = 0;
            v42 = 0;
            if (swift_dynamicCastClass())
            {
              v38 = 65;
            }

            else
            {
              v38 = 67;
            }
          }

          goto LABEL_54;
        }

        v38 = 67;
        v39 = &OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid;
      }

      v40 = (v37 + *v39);
      v41 = *v40;
      v42 = v40[1];

      v43 = 0;
LABEL_55:

      v44 = sub_1DD800(v43 | v38, v36, v41, v42, a5);
      v46 = v45;

      if (v46)
      {
      }

      else
      {

        RecentlySearchedStorage.Item.init(_:)(v47, &v59);
        if (v60)
        {
          v48 = 256;
        }

        else
        {
          v48 = 0;
        }

        v49 = sub_1DD800(v48 | v59, v61, v62, v63, a5);
        v51 = v50;

        if ((v51 & 1) != 0 || v44 < v49)
        {
          if (v6 + 8 != v55)
          {
            *v6 = *v53;
          }

          v5 = v58;
          if (v64 <= v58 || (v33 = v53, v53 <= v7))
          {
            v33 = v53;
            goto LABEL_80;
          }

          goto LABEL_47;
        }
      }

      if (v6 + 8 != v64)
      {
        *v6 = *v34;
      }

      v6 -= 8;
      v64 = v34;
      v5 = v58;
      if (v34 <= v58)
      {
        v64 = v34;
        v33 = v55;
        goto LABEL_80;
      }
    }
  }

  if (a4 != __src || &__src[8 * v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v64 = &v5[8 * v10];
  if (v8 >= 8 && __dst < v6)
  {
    v15 = __dst;
    type metadata accessor for LibraryEpisodeLockup();
    while (1)
    {
      v54 = v15;
      v16 = *(*v15 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
      v17 = swift_dynamicCastClass();
      v57 = v5;
      if (v17)
      {
        v18 = 68;
        v19 = &OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid;
LABEL_14:
        v20 = (v17 + *v19);
        v21 = *v20;
        v22 = v20[1];

        v23 = 0;
        goto LABEL_18;
      }

      type metadata accessor for LegacyChannelLockup();
      if (swift_dynamicCastClass())
      {
        break;
      }

      type metadata accessor for LibraryShowLockup();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = 67;
        v19 = &OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid;
        goto LABEL_14;
      }

      type metadata accessor for LegacyEpisodeLockup();
      if (swift_dynamicCastClass())
      {
        v21 = 0;
        v22 = 0;
        v18 = 68;
        goto LABEL_17;
      }

      type metadata accessor for LegacyCategoryLockup();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for LegacyEditorialItemLockup();
        v21 = 0;
        v22 = 0;
        if (swift_dynamicCastClass())
        {
          v18 = 65;
        }

        else
        {
          v18 = 67;
        }

        goto LABEL_17;
      }

      v23 = 0;
      v21 = 0;
      v22 = 0;
      v18 = 65;
LABEL_18:

      v24 = sub_1DD800(v23 | v18, v16, v21, v22, a5);
      v26 = v25;

      if (v26)
      {

LABEL_25:
        v32 = v57;
        v5 = v57 + 8;
        v15 = v54;
        if (v7 == v57)
        {
          goto LABEL_27;
        }

LABEL_26:
        *v7 = *v32;
        goto LABEL_27;
      }

      RecentlySearchedStorage.Item.init(_:)(v27, &v59);
      if (v60)
      {
        v28 = 256;
      }

      else
      {
        v28 = 0;
      }

      v29 = sub_1DD800(v28 | v59, v61, v62, v63, a5);
      v31 = v30;

      if ((v31 & 1) == 0 && v24 >= v29)
      {
        goto LABEL_25;
      }

      v32 = v54;
      v15 = v54 + 8;
      v5 = v57;
      if (v7 != v54)
      {
        goto LABEL_26;
      }

LABEL_27:
      v7 += 8;
      if (v5 >= v64 || v15 >= v6)
      {
        goto LABEL_78;
      }
    }

    v21 = 0;
    v22 = 0;
    v18 = 66;
LABEL_17:
    v23 = 256;
    goto LABEL_18;
  }

LABEL_78:
  v33 = v7;
LABEL_80:
  if (v33 != v5 || v33 >= &v5[(v64 - v5 + (v64 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v33, v5, 8 * ((v64 - v5) / 8));
  }

  return 1;
}

uint64_t sub_1C41D0(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_2A66A8(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_1C3BCC(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4378(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v206 = _swiftEmptyArrayStorage;
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_248;
  }

  swift_bridgeObjectRetain_n();
  v7 = a4;
  v8 = _swiftEmptyArrayStorage;
  v183 = (a5 + 56);
  v9 = 0;
LABEL_4:
  v10 = v9 + 1;
  v171 = v9;
  v172 = v8;
  if (v9 + 1 >= v6)
  {
    goto LABEL_105;
  }

  v168 = v6;
  v11 = v9 + 1;
  v12 = *(*a3 + 8 * v10);
  v175 = *a3;
  swift_retain_n();

  RecentlySearchedStorage.Item.init(_:)(v12, &v202);
  if (BYTE1(v202))
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1DD800(v13 | v202, v203, v204, v205, a5);
  v16 = v15;

  if (v16)
  {

    v177 = 0;
  }

  else
  {

    RecentlySearchedStorage.Item.init(_:)(v17, &v202);
    if (BYTE1(v202))
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_1DD800(v18 | v202, v203, v204, v205, a5);
    v21 = v20;

    v22 = v14 < v19;
    if (v21)
    {
      v22 = 1;
    }

    v177 = v22;
  }

  v23 = v171;
  v10 = v171 + 2;
  v24 = v168;
  if (v171 + 2 >= v168)
  {
    v7 = a4;
    goto LABEL_97;
  }

  type metadata accessor for LibraryEpisodeLockup();
  v25 = v11;
LABEL_21:
  v26 = *(v175 + 8 * v25);
  v180 = v10;
  v27 = *(*(v175 + 8 * v10) + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    type metadata accessor for LegacyChannelLockup();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for LibraryShowLockup();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = &OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid;
        goto LABEL_23;
      }

      type metadata accessor for LegacyEpisodeLockup();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for LegacyCategoryLockup();
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for LegacyEditorialItemLockup();
          swift_dynamicCastClass();
        }
      }
    }

    v190 = 0;
    v197 = 0;
    goto LABEL_26;
  }

  v29 = &OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid;
LABEL_23:
  v30 = (v28 + *v29);
  v190 = *v30;
  v197 = v30[1];

LABEL_26:
  v31 = *(a5 + 16);
  if (!v31)
  {

    goto LABEL_19;
  }

  v184 = v26;

  v32 = 0;
  v33 = v183;
  v194 = v31;
  v186 = v27;
  while (1)
  {
    v34 = *(v33 - 2);
    v35 = *(v33 - 1);
    v36 = *v33;

    if (sub_3E94A4())
    {
      if (v36)
      {

        v37 = v36;
      }

      else
      {
        if (qword_4E8A48 != -1)
        {
          swift_once();
        }

        v39 = sub_3ECE84();
        __swift_project_value_buffer(v39, qword_4F8478);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
        sub_3EBE94();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3EBE14();
        sub_3ECBA4();

        v35 = 0x656E696665646E75;
        v37 = 0xE900000000000064;
      }
    }

    else
    {
      v202 = v34;
      sub_17A28();
      v35 = sub_3EE1F4();
      v37 = v38;
    }

    if (sub_3E94A4())
    {
      v40 = v197;
      if (v197)
      {

        if (v35 != v190)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (qword_4E8A48 != -1)
        {
          swift_once();
        }

        v43 = sub_3ECE84();
        __swift_project_value_buffer(v43, qword_4F8478);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
        sub_3EBE94();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3EBE14();
        sub_3ECBA4();

        v40 = 0xE900000000000064;
        v31 = v194;
        v27 = v186;
        if (v35 != 0x656E696665646E75)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v202 = v27;
      sub_17A28();
      v41 = sub_3EE1F4();
      v40 = v42;
      if (v35 != v41)
      {
        goto LABEL_45;
      }
    }

    if (v37 == v40)
    {
      break;
    }

LABEL_45:
    v44 = sub_3EE804();

    if (v44)
    {
      goto LABEL_49;
    }

    v33 += 4;
    if (v31 == ++v32)
    {

      v24 = v168;
LABEL_19:

      if (!v177)
      {
        goto LABEL_20;
      }

      v7 = a4;
      v23 = v171;
      v10 = v180;
      if (v180 < v171)
      {
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
        goto LABEL_277;
      }

LABEL_99:
      if (v23 < v10)
      {
        v62 = v10;
        v63 = 8 * v10 - 8;
        v64 = 8 * v23;
        do
        {
          if (v23 != --v62)
          {
            v65 = *a3;
            if (!*a3)
            {
              goto LABEL_280;
            }

            v66 = *(v65 + v64);
            *(v65 + v64) = *(v65 + v63);
            *(v65 + v63) = v66;
          }

          ++v23;
          v63 -= 8;
          v64 += 8;
        }

        while (v23 < v62);
      }

      goto LABEL_105;
    }
  }

LABEL_49:

  v45 = *(v184 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v46 = swift_dynamicCastClass();
  if (v46)
  {
    v47 = &OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid;
    goto LABEL_51;
  }

  type metadata accessor for LegacyChannelLockup();
  if (swift_dynamicCastClass())
  {
LABEL_53:
    v187 = 0;
    v198 = 0;
  }

  else
  {
    type metadata accessor for LibraryShowLockup();
    v46 = swift_dynamicCastClass();
    if (!v46)
    {
      type metadata accessor for LegacyEpisodeLockup();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for LegacyCategoryLockup();
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for LegacyEditorialItemLockup();
          swift_dynamicCastClass();
        }
      }

      goto LABEL_53;
    }

    v47 = &OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid;
LABEL_51:
    v48 = (v46 + *v47);
    v187 = *v48;
    v198 = v48[1];
  }

  v49 = 0;
  v50 = v183;
  v191 = v45;
  while (2)
  {
    if (v31 == v49)
    {
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
      goto LABEL_273;
    }

    v52 = *(v50 - 2);
    v51 = *(v50 - 1);
    v53 = *v50;

    if (sub_3E94A4())
    {
      if (v53)
      {

        v54 = v53;
      }

      else
      {
        if (qword_4E8A48 != -1)
        {
          swift_once();
        }

        v56 = sub_3ECE84();
        __swift_project_value_buffer(v56, qword_4F8478);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
        sub_3EBE94();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3EBE14();
        sub_3ECBA4();

        v51 = 0x656E696665646E75;
        v54 = 0xE900000000000064;
        v45 = v191;
        v31 = v194;
      }
    }

    else
    {
      v202 = v52;
      sub_17A28();
      v51 = sub_3EE1F4();
      v54 = v55;
    }

    if ((sub_3E94A4() & 1) == 0)
    {
      v202 = v45;
      sub_17A28();
      v58 = sub_3EE1F4();
      v57 = v59;
      if (v51 == v58)
      {
        goto LABEL_72;
      }

      goto LABEL_73;
    }

    v57 = v198;
    if (!v198)
    {
      if (qword_4E8A48 != -1)
      {
        swift_once();
      }

      v60 = sub_3ECE84();
      __swift_project_value_buffer(v60, qword_4F8478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
      sub_3EBE94();
      *(swift_allocObject() + 16) = xmmword_3F5630;
      sub_3EBE14();
      sub_3ECBA4();

      v57 = 0xE900000000000064;
      v45 = v191;
      v31 = v194;
      if (v51 == 0x656E696665646E75)
      {
        goto LABEL_72;
      }

LABEL_73:
      v61 = sub_3EE804();

      if (v61)
      {

        goto LABEL_80;
      }

      ++v49;
      v50 += 4;
      if (v31 != v49)
      {
        continue;
      }

      v24 = v168;
      if (!v177)
      {
        v7 = a4;
        v10 = v180;
        goto LABEL_105;
      }

LABEL_20:
      v25 = v180;
      v10 = v180 + 1;
      if (v180 + 1 == v24)
      {
        v10 = v24;
        goto LABEL_96;
      }

      goto LABEL_21;
    }

    break;
  }

  if (v51 != v187)
  {
    goto LABEL_73;
  }

LABEL_72:
  if (v54 != v57)
  {
    goto LABEL_73;
  }

LABEL_80:

  v24 = v168;
  if (v177 != v32 >= v49)
  {
    goto LABEL_20;
  }

  v10 = v180;
LABEL_96:
  v7 = a4;
  v23 = v171;
LABEL_97:
  if (v177)
  {
    if (v10 < v23)
    {
      goto LABEL_275;
    }

    goto LABEL_99;
  }

LABEL_105:
  v67 = a3[1];
  if (v10 >= v67)
  {
    v68 = v10;
    goto LABEL_115;
  }

  if (__OFSUB__(v10, v171))
  {
    goto LABEL_274;
  }

  if (v10 - v171 >= v7)
  {
    goto LABEL_113;
  }

  if (__OFADD__(v171, v7))
  {
    goto LABEL_276;
  }

  if (v171 + v7 < v67)
  {
    v67 = v171 + v7;
  }

  if (v67 < v171)
  {
LABEL_277:
    __break(1u);
LABEL_278:
    swift_bridgeObjectRelease_n();
    __break(1u);
    goto LABEL_279;
  }

  v167 = v67;
  if (v10 == v67)
  {
LABEL_113:
    v68 = v10;
    goto LABEL_115;
  }

  v123 = *a3;
  v124 = *(a5 + 16);
  type metadata accessor for LibraryEpisodeLockup();
  v196 = v124;
  v169 = v123;
LABEL_167:
  v125 = *(v123 + 8 * v10);
  v182 = v10;
  while (2)
  {
    v126 = *(v123 + 8 * (v10 - 1));
    v127 = *(v125 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
    v128 = swift_dynamicCastClass();
    if (v128)
    {
      v129 = &OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid;
LABEL_170:
      v130 = (v128 + *v129);
      v192 = *v130;
      v200 = v130[1];

      if (!v124)
      {
        goto LABEL_244;
      }
    }

    else
    {
      type metadata accessor for LegacyChannelLockup();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for LibraryShowLockup();
        v128 = swift_dynamicCastClass();
        if (v128)
        {
          v129 = &OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid;
          goto LABEL_170;
        }

        type metadata accessor for LegacyEpisodeLockup();
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for LegacyCategoryLockup();
          if (!swift_dynamicCastClass())
          {
            type metadata accessor for LegacyEditorialItemLockup();
            swift_dynamicCastClass();
          }
        }
      }

      v192 = 0;
      v200 = 0;
      if (!v124)
      {
LABEL_244:

        goto LABEL_241;
      }
    }

    v176 = v10 - 1;
    v178 = v10;

    v185 = v126;

    v131 = 0;
    v132 = v183;
    v133 = v200;
    v188 = v127;
    while (2)
    {
      v135 = *(v132 - 2);
      v134 = *(v132 - 1);
      v136 = *v132;

      if (sub_3E94A4())
      {
        if (v136)
        {

          v137 = v136;
        }

        else
        {
          if (qword_4E8A48 != -1)
          {
            swift_once();
          }

          v139 = sub_3ECE84();
          __swift_project_value_buffer(v139, qword_4F8478);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
          sub_3EBE94();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3EBE14();
          sub_3ECBA4();

          v134 = 0x656E696665646E75;
          v137 = 0xE900000000000064;
          v133 = v200;
        }
      }

      else
      {
        v202 = v135;
        sub_17A28();
        v134 = sub_3EE1F4();
        v137 = v138;
      }

      if ((sub_3E94A4() & 1) == 0)
      {
        v202 = v127;
        sub_17A28();
        v141 = sub_3EE1F4();
        v140 = v142;
        if (v134 == v141)
        {
          goto LABEL_191;
        }

        goto LABEL_192;
      }

      if (!v133)
      {
        if (qword_4E8A48 != -1)
        {
          swift_once();
        }

        v143 = sub_3ECE84();
        __swift_project_value_buffer(v143, qword_4F8478);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
        sub_3EBE94();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3EBE14();
        sub_3ECBA4();

        v140 = 0xE900000000000064;
        v124 = v196;
        v127 = v188;
        v133 = v200;
        if (v134 == 0x656E696665646E75)
        {
          goto LABEL_191;
        }

LABEL_192:
        v144 = sub_3EE804();

        if (v144)
        {
          goto LABEL_196;
        }

        v132 += 4;
        if (v124 == ++v131)
        {

          v123 = v169;
LABEL_241:

          goto LABEL_242;
        }

        continue;
      }

      break;
    }

    v140 = v133;
    if (v134 != v192)
    {
      goto LABEL_192;
    }

LABEL_191:
    if (v137 != v140)
    {
      goto LABEL_192;
    }

LABEL_196:

    v145 = *(v185 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
    v146 = swift_dynamicCastClass();
    if (v146)
    {
      v147 = &OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid;
      goto LABEL_198;
    }

    type metadata accessor for LegacyChannelLockup();
    if (swift_dynamicCastClass())
    {
LABEL_200:
      v189 = 0;
      v201 = 0;
    }

    else
    {
      type metadata accessor for LibraryShowLockup();
      v146 = swift_dynamicCastClass();
      if (!v146)
      {
        type metadata accessor for LegacyEpisodeLockup();
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for LegacyCategoryLockup();
          if (!swift_dynamicCastClass())
          {
            type metadata accessor for LegacyEditorialItemLockup();
            swift_dynamicCastClass();
          }
        }

        goto LABEL_200;
      }

      v147 = &OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid;
LABEL_198:
      v148 = (v146 + *v147);
      v189 = *v148;
      v201 = v148[1];
    }

    v149 = 0;
    v150 = v183;
    v193 = v145;
    while (2)
    {
      if (v124 == v149)
      {
        __break(1u);
LABEL_255:
        v206 = v8;
LABEL_248:
        v164 = *a1;
        if (!*a1)
        {
          goto LABEL_282;
        }

        sub_1C41D0(&v206, v164, a3, a5);
        if (v179)
        {

LABEL_251:
          swift_bridgeObjectRelease_n();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }
      }

      v152 = *(v150 - 2);
      v151 = *(v150 - 1);
      v153 = *v150;

      if (sub_3E94A4())
      {
        if (v153)
        {

          v154 = v153;
        }

        else
        {
          if (qword_4E8A48 != -1)
          {
            swift_once();
          }

          v156 = sub_3ECE84();
          __swift_project_value_buffer(v156, qword_4F8478);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
          sub_3EBE94();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3EBE14();
          sub_3ECBA4();

          v151 = 0x656E696665646E75;
          v154 = 0xE900000000000064;
          v145 = v193;
          v124 = v196;
        }
      }

      else
      {
        v202 = v152;
        sub_17A28();
        v151 = sub_3EE1F4();
        v154 = v155;
      }

      if (sub_3E94A4())
      {
        v157 = v201;
        if (v201)
        {

          if (v151 != v189)
          {
            goto LABEL_220;
          }

LABEL_219:
          if (v154 != v157)
          {
            goto LABEL_220;
          }

LABEL_225:

          v123 = v169;
          v162 = v178;
          if (v131 >= v149)
          {
            goto LABEL_242;
          }

          if (v169)
          {
            goto LABEL_229;
          }

          goto LABEL_279;
        }

        if (qword_4E8A48 != -1)
        {
          swift_once();
        }

        v160 = sub_3ECE84();
        __swift_project_value_buffer(v160, qword_4F8478);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
        sub_3EBE94();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3EBE14();
        sub_3ECBA4();

        v157 = 0xE900000000000064;
        v145 = v193;
        v124 = v196;
        if (v151 == 0x656E696665646E75)
        {
          goto LABEL_219;
        }
      }

      else
      {
        v202 = v145;
        sub_17A28();
        v158 = sub_3EE1F4();
        v157 = v159;
        if (v151 == v158)
        {
          goto LABEL_219;
        }
      }

LABEL_220:
      v161 = sub_3EE804();

      if (v161)
      {

        goto LABEL_225;
      }

      ++v149;
      v150 += 4;
      if (v124 != v149)
      {
        continue;
      }

      break;
    }

    v123 = v169;
    v162 = v178;
    if (v169)
    {
LABEL_229:
      v125 = *(v123 + 8 * v162);
      *(v123 + 8 * v162) = *(v123 + 8 * v176);
      *(v123 + 8 * v176) = v125;
      v10 = v176;
      if (v176 != v171)
      {
        continue;
      }

LABEL_242:
      v10 = v182 + 1;
      if (v182 + 1 != v167)
      {
        goto LABEL_167;
      }

      v68 = v167;
LABEL_115:
      if (v68 >= v171)
      {
        v181 = v68;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v8 = v172;
        }

        else
        {
          v8 = sub_DFED0(0, *(v172 + 2) + 1, 1, v172);
        }

        v70 = *(v8 + 2);
        v69 = *(v8 + 3);
        v71 = v70 + 1;
        v7 = a4;
        if (v70 >= v69 >> 1)
        {
          v163 = sub_DFED0((v69 > 1), v70 + 1, 1, v8);
          v7 = a4;
          v8 = v163;
        }

        *(v8 + 2) = v71;
        v72 = v8 + 32;
        v73 = &v8[16 * v70 + 32];
        *v73 = v171;
        *(v73 + 1) = v181;
        v199 = *a1;
        if (!*a1)
        {
          goto LABEL_281;
        }

        if (!v70)
        {
LABEL_3:
          v6 = a3[1];
          v9 = v181;
          if (v181 >= v6)
          {
            goto LABEL_255;
          }

          goto LABEL_4;
        }

        v195 = v8 + 32;
        while (2)
        {
          v74 = v71 - 1;
          if (v71 >= 4)
          {
            v79 = &v72[16 * v71];
            v80 = *(v79 - 8);
            v81 = *(v79 - 7);
            v85 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            if (v85)
            {
              goto LABEL_261;
            }

            v84 = *(v79 - 6);
            v83 = *(v79 - 5);
            v85 = __OFSUB__(v83, v84);
            v77 = v83 - v84;
            v78 = v85;
            if (v85)
            {
              goto LABEL_262;
            }

            v86 = &v8[16 * v71];
            v88 = *v86;
            v87 = *(v86 + 1);
            v85 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v85)
            {
              goto LABEL_264;
            }

            v85 = __OFADD__(v77, v89);
            v90 = v77 + v89;
            if (v85)
            {
              goto LABEL_266;
            }

            if (v90 >= v82)
            {
              v108 = &v72[16 * v74];
              v110 = *v108;
              v109 = *(v108 + 1);
              v85 = __OFSUB__(v109, v110);
              v111 = v109 - v110;
              if (v85)
              {
                goto LABEL_272;
              }

              if (v77 < v111)
              {
                v74 = v71 - 2;
              }
            }

            else
            {
LABEL_136:
              if (v78)
              {
                goto LABEL_263;
              }

              v91 = &v8[16 * v71];
              v93 = *v91;
              v92 = *(v91 + 1);
              v94 = __OFSUB__(v92, v93);
              v95 = v92 - v93;
              v96 = v94;
              if (v94)
              {
                goto LABEL_265;
              }

              v97 = &v72[16 * v74];
              v99 = *v97;
              v98 = *(v97 + 1);
              v85 = __OFSUB__(v98, v99);
              v100 = v98 - v99;
              if (v85)
              {
                goto LABEL_268;
              }

              if (__OFADD__(v95, v100))
              {
                goto LABEL_270;
              }

              if (v95 + v100 < v77)
              {
                goto LABEL_151;
              }

              if (v77 < v100)
              {
                v74 = v71 - 2;
              }
            }
          }

          else
          {
            if (v71 == 3)
            {
              v75 = *(v8 + 4);
              v76 = *(v8 + 5);
              v85 = __OFSUB__(v76, v75);
              v77 = v76 - v75;
              v78 = v85;
              goto LABEL_136;
            }

            if (v71 < 2)
            {
              goto LABEL_271;
            }

            v101 = &v8[16 * v71];
            v103 = *v101;
            v102 = *(v101 + 1);
            v85 = __OFSUB__(v102, v103);
            v95 = v102 - v103;
            v96 = v85;
LABEL_151:
            if (v96)
            {
              goto LABEL_267;
            }

            v104 = &v72[16 * v74];
            v106 = *v104;
            v105 = *(v104 + 1);
            v85 = __OFSUB__(v105, v106);
            v107 = v105 - v106;
            if (v85)
            {
              goto LABEL_269;
            }

            if (v107 < v95)
            {
              goto LABEL_3;
            }
          }

          if (v74 - 1 >= v71)
          {
            goto LABEL_257;
          }

          v112 = *a3;
          if (!*a3)
          {
            goto LABEL_278;
          }

          v113 = v8;
          v114 = &v72[16 * v74 - 16];
          v115 = *v114;
          v116 = v74;
          v117 = &v72[16 * v74];
          v118 = *(v117 + 1);
          v119 = (v112 + 8 * *v114);
          v120 = (v112 + 8 * *v117);
          v121 = (v112 + 8 * v118);

          sub_1C3BCC(v119, v120, v121, v199, a5);
          if (v179)
          {

            v206 = v113;
            goto LABEL_251;
          }

          if (v118 < v115)
          {
            goto LABEL_258;
          }

          v122 = *(v113 + 2);
          if (v116 > v122)
          {
            goto LABEL_259;
          }

          *v114 = v115;
          *(v114 + 1) = v118;
          if (v116 >= v122)
          {
            goto LABEL_260;
          }

          v71 = v122 - 1;
          memmove(v117, v117 + 16, 16 * (v122 - 1 - v116));
          v8 = v113;
          *(v113 + 2) = v122 - 1;
          v7 = a4;
          v72 = v195;
          if (v122 <= 2)
          {
            goto LABEL_3;
          }

          continue;
        }
      }

LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
      goto LABEL_275;
    }

    break;
  }

LABEL_279:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_280:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_281:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_282:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1C5DB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v45 = result;
  if (a3 == a2)
  {
    return result;
  }

  v5 = *a4;
  v6 = *(a5 + 16);
  type metadata accessor for LibraryEpisodeLockup();
  v50 = (a5 + 56);
  v9 = a3;
  v52 = v6;
  v47 = v5;
  do
  {
    v46 = v9;
    v10 = v9;
    while (2)
    {
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = &OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid;
      }

      else
      {
        type metadata accessor for LegacyChannelLockup();
        if (swift_dynamicCastClass())
        {
          goto LABEL_9;
        }

        type metadata accessor for LibraryShowLockup();
        v11 = swift_dynamicCastClass();
        if (!v11)
        {
          type metadata accessor for LegacyEpisodeLockup();
          if (!swift_dynamicCastClass())
          {
            type metadata accessor for LegacyCategoryLockup();
            if (!swift_dynamicCastClass())
            {
              type metadata accessor for LegacyEditorialItemLockup();
              swift_dynamicCastClass();
            }
          }

LABEL_9:
          v53 = 0;
          v55 = 0;
          if (!v6)
          {
LABEL_80:

            goto LABEL_77;
          }

          goto LABEL_10;
        }

        v12 = &OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid;
      }

      v13 = (v11 + *v12);
      v53 = *v13;
      v55 = v13[1];

      if (!v6)
      {
        goto LABEL_80;
      }

LABEL_10:
      v48 = v10 - 1;
      v49 = v10;

      v14 = 0;
      v15 = v50;
      while (1)
      {
        v16 = *(v15 - 1);
        v17 = *v15;

        if (sub_3E94A4())
        {
          if (v17)
          {

            v18 = v17;
          }

          else
          {
            if (qword_4E8A48 != -1)
            {
              swift_once();
            }

            v20 = sub_3ECE84();
            __swift_project_value_buffer(v20, qword_4F8478);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
            sub_3EBE94();
            *(swift_allocObject() + 16) = xmmword_3F5630;
            sub_3EBE14();
            sub_3ECBA4();

            v16 = 0x656E696665646E75;
            v18 = 0xE900000000000064;
          }
        }

        else
        {
          sub_17A28();
          v16 = sub_3EE1F4();
          v18 = v19;
        }

        if (sub_3E94A4())
        {
          v21 = v55;
          if (v55)
          {

            if (v16 != v53)
            {
              goto LABEL_28;
            }
          }

          else
          {
            if (qword_4E8A48 != -1)
            {
              swift_once();
            }

            v24 = sub_3ECE84();
            __swift_project_value_buffer(v24, qword_4F8478);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
            sub_3EBE94();
            *(swift_allocObject() + 16) = xmmword_3F5630;
            sub_3EBE14();
            sub_3ECBA4();

            v21 = 0xE900000000000064;
            v6 = v52;
            if (v16 != 0x656E696665646E75)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          sub_17A28();
          v22 = sub_3EE1F4();
          v21 = v23;
          if (v16 != v22)
          {
            goto LABEL_28;
          }
        }

        if (v18 == v21)
        {
          break;
        }

LABEL_28:
        v25 = sub_3EE804();

        if (v25)
        {
          goto LABEL_32;
        }

        v15 += 4;
        if (v6 == ++v14)
        {

LABEL_77:

          goto LABEL_78;
        }
      }

LABEL_32:

      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = &OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid;
        goto LABEL_34;
      }

      type metadata accessor for LegacyChannelLockup();
      result = swift_dynamicCastClass();
      if (result)
      {
LABEL_36:
        v51 = 0;
        v54 = 0;
      }

      else
      {
        type metadata accessor for LibraryShowLockup();
        v26 = swift_dynamicCastClass();
        if (!v26)
        {
          type metadata accessor for LegacyEpisodeLockup();
          result = swift_dynamicCastClass();
          if (!result)
          {
            type metadata accessor for LegacyCategoryLockup();
            result = swift_dynamicCastClass();
            if (!result)
            {
              type metadata accessor for LegacyEditorialItemLockup();
              result = swift_dynamicCastClass();
            }
          }

          goto LABEL_36;
        }

        v27 = &OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid;
LABEL_34:
        v28 = (v26 + *v27);
        v51 = *v28;
        v54 = v28[1];
      }

      v29 = 0;
      v30 = v50;
      while (2)
      {
        if (v6 == v29)
        {
          __break(1u);
          goto LABEL_82;
        }

        v31 = *(v30 - 1);
        v32 = *v30;

        if (sub_3E94A4())
        {
          if (v32)
          {

            v33 = v32;
          }

          else
          {
            if (qword_4E8A48 != -1)
            {
              swift_once();
            }

            v35 = sub_3ECE84();
            __swift_project_value_buffer(v35, qword_4F8478);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
            sub_3EBE94();
            *(swift_allocObject() + 16) = xmmword_3F5630;
            sub_3EBE14();
            sub_3ECBA4();

            v31 = 0x656E696665646E75;
            v33 = 0xE900000000000064;
            v6 = v52;
          }
        }

        else
        {
          sub_17A28();
          v31 = sub_3EE1F4();
          v33 = v34;
        }

        if (sub_3E94A4())
        {
          v36 = v54;
          if (v54)
          {

            if (v31 != v51)
            {
              goto LABEL_56;
            }

LABEL_55:
            if (v33 != v36)
            {
              goto LABEL_56;
            }

LABEL_61:

            v41 = v47;
            v42 = v49;
            if (v14 >= v29)
            {
              goto LABEL_78;
            }

            if (v47)
            {
              goto LABEL_65;
            }

            goto LABEL_82;
          }

          if (qword_4E8A48 != -1)
          {
            swift_once();
          }

          v39 = sub_3ECE84();
          __swift_project_value_buffer(v39, qword_4F8478);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
          sub_3EBE94();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3EBE14();
          sub_3ECBA4();

          v36 = 0xE900000000000064;
          v6 = v52;
          if (v31 == 0x656E696665646E75)
          {
            goto LABEL_55;
          }
        }

        else
        {
          sub_17A28();
          v37 = sub_3EE1F4();
          v36 = v38;
          if (v31 == v37)
          {
            goto LABEL_55;
          }
        }

LABEL_56:
        v40 = sub_3EE804();

        if (v40)
        {

          goto LABEL_61;
        }

        ++v29;
        v30 += 4;
        if (v6 != v29)
        {
          continue;
        }

        break;
      }

      v41 = v47;
      v42 = v49;
      if (!v47)
      {
LABEL_82:
        __break(1u);
        return result;
      }

LABEL_65:
      v43 = *(v41 + 8 * v42);
      *(v41 + 8 * v42) = *(v41 + 8 * v48);
      *(v41 + 8 * v48) = v43;
      v10 = v48;
      if (v48 != v45)
      {
        continue;
      }

      break;
    }

LABEL_78:
    v9 = v46 + 1;
  }

  while (v46 + 1 != a2);
  return result;
}