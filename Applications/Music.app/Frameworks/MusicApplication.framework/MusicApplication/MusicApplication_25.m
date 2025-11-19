void sub_21F3E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView);
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;

      [v2 sizeThatFits:{v6, v8}];
      v10 = v9;
      v12 = v11;

      type metadata accessor for CGSize(0);
      [v1 preferredContentSize];
      if (sub_AB38D0())
      {
        [v1 setPreferredContentSize:{v10, v12}];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21F55C(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for JSGroupedTextListViewController();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView];
  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  v6 = 2;
  if (v5 == &dword_0 + 2)
  {
    v6 = 3;
  }

  v7 = *&v3[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_numberOfColumns];
  *&v3[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_numberOfColumns] = v6;
  if (v6 != v7)
  {
    [v3 setNeedsLayout];
    v8 = *&v3[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
    if (v8)
    {

      v8(v3);
      sub_17654(v8);
    }
  }
}

void sub_21F6D0(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_verticalStackItemPrefersTopHairline;
  v1[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_verticalStackItemPrefersTopHairline] = a1;
  if ([v1 isViewLoaded])
  {
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView];
    v4 = v1[v2];
    v5 = v3[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_wantsTopSeparator];
    v3[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_wantsTopSeparator] = v4;
    if (v4 != v5)
    {
      v7 = v3;
      [v7 setNeedsLayout];
      v6 = *&v7[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
      if (v6)
      {

        v6(v7);
        sub_17654(v6);
      }
    }
  }
}

void sub_21F7B8(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView);
  *&v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_listGroups] = sub_21FA38(a1);

  sub_3EFDE4();
  [v4 setNeedsLayout];
  v3 = *&v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
  if (v3)
  {

    v3(v4);
    sub_17654(v3);
  }
}

id sub_21F8B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSGroupedTextListViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_21F970(void *a1)
{
  v2 = *&stru_108.sectname[swift_isaMask & *a1];
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView);
  v4 = v2();
  v5 = &v3[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title];
  v6 = *&v3[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title];
  v7 = *&v3[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title + 8];
  *v5 = v4;
  v5[1] = v8;
  sub_3EE46C(v6, v7);
}

unint64_t sub_21FA38(void *a1)
{
  result = (*&stru_108.segname[(swift_isaMask & *a1) + 8])();
  v2 = result;
  if (!(result >> 62))
  {
    v3 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
    v5 = _swiftEmptyArrayStorage;
LABEL_16:

    return v5;
  }

  v16 = result;
  result = sub_ABB060();
  v2 = v16;
  v3 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v17 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v6 = v2;
    do
    {
      if (v17)
      {
        v7 = sub_36146C(v4, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = (*&stru_68.segname[swift_isaMask & *v7])();
      v11 = v10;
      v12 = (*(&stru_68.size + (swift_isaMask & *v8)))();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_6BB84(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_6BB84((v13 > 1), v14 + 1, 1, v5);
      }

      ++v4;
      *(v5 + 2) = v14 + 1;
      v15 = &v5[24 * v14];
      *(v15 + 4) = v9;
      *(v15 + 5) = v11;
      *(v15 + 6) = v12;

      v2 = v6;
    }

    while (v3 != v4);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21FC44()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21FC84()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = v3;
      v5 = [v4 effectiveStorePlatformDictionary];
      if (v5)
      {
        v6 = v5;
        v7 = sub_AB8FF0();

        return v7;
      }
    }
  }

  v8 = *(v0 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v7 = MPModelObject.metricsDictionary.getter();

  return v7;
}

void sub_21FDFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSLiveRadioCaseModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSLiveRadioCaseModelRequest_liveRadioCaseViewModel];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication27JSLiveRadioCaseModelRequest_liveRadioCaseViewModel];
    *&v8[OBJC_IVAR____TtC16MusicApplication27JSLiveRadioCaseModelRequest_liveRadioCaseViewModel] = v5;
    v7 = v5;
  }
}

uint64_t sub_21FF20(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_13C80(0, &qword_DE8ED0);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_221E28, v12);
}

uint64_t sub_220000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);
}

void sub_2202A0()
{
  v1 = sub_AB7C10();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7C50();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSLiveRadioCaseModelRequestOperation();
  v15.receiver = v0;
  v15.super_class = v7;
  objc_msgSendSuper2(&v15, "execute");
  sub_13C80(0, &qword_DE8ED0);
  v8 = sub_ABA150();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_221CF4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_33_0;
  v10 = _Block_copy(aBlock);
  v11 = v0;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_8FFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  sub_ABABB0();
  sub_ABA160();
  (*(v13 + 8))(v3, v1);
  (*(v4 + 8))(v6, v12);
  _Block_release(v10);
}

void sub_22057C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication36JSLiveRadioCaseModelRequestOperation_request];
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSLiveRadioCaseModelRequest_liveRadioCaseViewModel);
  if (v2)
  {
    v3 = v2;
    v4 = [v1 itemProperties];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 itemKind];
      if (!v6 || (v7 = v6, [v6 modelClass], v7, swift_getObjCClassMetadata(), (v8 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
      {
        v8 = [objc_opt_self() emptyPropertySet];
      }

      v9 = [v5 propertySetByCombiningWithPropertySet:v8];

      v10 = objc_allocWithZone(type metadata accessor for JSModelLiveRadioCaseItemBuilder());
      v11 = sub_1199C4(v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v13 = sub_AB9260();
    v34 = v12;
    [v12 appendSection:v13];

    v14 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v15 = sub_AB9260();
    v33 = v14;
    [v14 appendSection:v15];

    v16 = JSLiveRadioCase.items.getter();
    v17 = v16;
    if (v16 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v31 = v1;
      v32 = v3;
      v1 = 0;
      v3 = &selRef__authenticateReturningError_;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v22 = sub_3600E0(v1, v17);
        }

        else
        {
          if (v1 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_23;
          }

          v22 = *(v17 + 8 * v1 + 32);
        }

        v23 = v22;
        v24 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11)
        {
          v25 = [a1 userIdentity];
          if (!v25)
          {
            __break(1u);
LABEL_21:

            v1 = v31;
            v3 = v32;
            goto LABEL_26;
          }

          v19 = v25;
          v20 = sub_118CA0(v23, v25);

          [v33 appendItem:v23];
          v21 = v20;
          [v34 appendItem:v21];
        }

        ++v1;
        if (v24 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_26:
    v26 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v34];
    [v26 setRepresentedObjects:v33];
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = a1;
    aBlock[4] = sub_221D3C;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_39;
    v28 = _Block_copy(aBlock);
    v29 = v1;
    v30 = a1;

    [v26 performWithResponseHandler:v28];
    _Block_release(v28);
  }

  else
  {
    __break(1u);
  }
}

void sub_220990(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSLiveRadioCaseModelResponse());
    v9 = a1;
    v13 = sub_220B88(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication36JSLiveRadioCaseModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication36JSLiveRadioCaseModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_220B88(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_itemsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSLiveRadioCaseModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication27JSLiveRadioCaseModelRequest_liveRadioCaseViewModel];
    v12 = v11;
    v13 = *JSLiveRadioCase.itemsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_itemsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220F6C(void *a1, void (*a2)(id))
{
  if (a1)
  {
    type metadata accessor for JSLiveRadioCaseModelResponse();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = a1;
      v8 = [v6 results];
      if (!v8)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v9 = v8;
      v10 = [v8 itemsInSectionAtIndex:0];

      v11 = sub_AB9760();
      v12 = sub_12DBCC(v11);
      if (v12)
      {
        v13 = v12;

        v14 = [v2 results];
        if (!v14)
        {
LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
          return;
        }

        v15 = v14;
        v10 = [v14 itemsInSectionAtIndex:0];

        v16 = sub_AB9760();
        v17 = sub_12DBCC(v16);
        if (v17)
        {
          v18 = v17;

          v19 = swift_allocObject();
          *(v19 + 16) = v13;
          *(v19 + 24) = v18;
          v20 = objc_allocWithZone(MPChangeDetails);
          v24[4] = sub_221C34;
          v24[5] = v19;
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 1107296256;
          v24[2] = sub_1546C;
          v24[3] = &block_descriptor_77;
          v21 = _Block_copy(v24);

          v22 = [v20 initWithBlock:v21];
          _Block_release(v21);

          if (a2)
          {

            v23 = v22;
            a2(v22);

            return;
          }

          goto LABEL_18;
        }
      }

      else
      {
      }
    }
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  a2(0);
}

uint64_t sub_2211F8(id a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v71 = &v60 - v11;
  v12 = __chkstk_darwin(v10);
  v70 = &v60 - v13;
  v14 = __chkstk_darwin(v12);
  v63 = &v60 - v15;
  v16 = __chkstk_darwin(v14);
  v62 = &v60 - v17;
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v76[0] = a3;
  v76[1] = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF9828);
  v21 = sub_36A00(&qword_DF9830, &qword_DF9828);
  v22 = sub_221C54();
  v61 = Collection<>.compare<A>(with:comparator:)(v76, 0, 0, v20, v20, v21, v21, v22);
  v23 = *(v61 + 16);
  if (v23)
  {
    v24 = (v7 + 16);
    v72 = v7 + 32;
    v67 = (v7 + 8);
    v68 = v6;
    v25 = v23 - 1;
    v26 = (v61 + 56);
    v69 = a1;
    v65 = (v7 + 16);
    v66 = v19;
    while (1)
    {
      v28 = *(v26 - 3);
      v29 = *(v26 - 16);
      v74 = v26;
      v75 = *v26;
      sub_AB37C0();
      v30 = *v24;
      if (v29 != 1)
      {
        break;
      }

      if (!v28)
      {
        v30(v63, v19, v6);
        v31 = [a1 deletedItemIndexPaths];
        v50 = sub_AB9760();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_6AE4C(0, v50[2] + 1, 1, v50);
        }

        v53 = v50[2];
        v52 = v50[3];
        if (v53 >= v52 >> 1)
        {
          v50 = sub_6AE4C(v52 > 1, v53 + 1, 1, v50);
        }

        v50[2] = v53 + 1;
        (*(v7 + 32))(v50 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v53, v63, v6);
        v27.super.isa = sub_AB9740().super.isa;
        [a1 setDeletedItemIndexPaths:v27.super.isa];
LABEL_4:
        (*(v7 + 8))(v19, v6);
LABEL_5:

        v25 = v73;
        if (!v73)
        {
        }

        goto LABEL_6;
      }

      if (v28 == 1)
      {
        v30(v62, v19, v6);
        v31 = [a1 insertedItemIndexPaths];
        v32 = sub_AB9760();
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v25;
        if ((v33 & 1) == 0)
        {
          v32 = sub_6AE4C(0, v32[2] + 1, 1, v32);
        }

        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          v32 = sub_6AE4C(v34 > 1, v35 + 1, 1, v32);
        }

        v32[2] = v35 + 1;
        (*(v7 + 32))(v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v35, v62, v6);
        v27.super.isa = sub_AB9740().super.isa;
        [a1 setInsertedItemIndexPaths:v27.super.isa];
        goto LABEL_4;
      }

      v30(v64, v19, v6);
      v54 = [a1 updatedItemIndexPaths];
      v55 = sub_AB9760();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_6AE4C(0, v55[2] + 1, 1, v55);
      }

      v57 = v55[2];
      v56 = v55[3];
      if (v57 >= v56 >> 1)
      {
        v55 = sub_6AE4C(v56 > 1, v57 + 1, 1, v55);
      }

      v55[2] = v57 + 1;
      (*(v7 + 32))(v55 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v57, v64, v6);
      isa = sub_AB9740().super.isa;
      [a1 setUpdatedItemIndexPaths:isa];
      (*(v7 + 8))(v19, v6);

      if (!v25)
      {
      }

LABEL_6:
      --v25;
      v26 = v74 + 4;
    }

    v73 = v25;
    v30(v70, v19, v6);
    v36 = [a1 insertedItemIndexPaths];
    v37 = sub_AB9760();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_6AE4C(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = sub_6AE4C(v38 > 1, v39 + 1, 1, v37);
    }

    v37[2] = v39 + 1;
    v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v41 = *(v7 + 72);
    v42 = v37 + v40 + v41 * v39;
    v43 = v7;
    v44 = *(v7 + 32);
    v44(v42, v70, v68);
    v45 = sub_AB9740().super.isa;
    v46 = v69;
    [v69 setInsertedItemIndexPaths:v45];

    sub_AB37C0();
    v31 = [v46 deletedItemIndexPaths];
    v47 = sub_AB9760();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_6AE4C(0, *(v47 + 2) + 1, 1, v47);
    }

    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    v7 = v43;
    v24 = v65;
    if (v49 >= v48 >> 1)
    {
      v47 = sub_6AE4C(v48 > 1, v49 + 1, 1, v47);
    }

    v6 = v68;
    *(v47 + 2) = v49 + 1;
    v44(&v47[v40 + v49 * v41], v71, v6);
    v27.super.isa = sub_AB9740().super.isa;
    a1 = v69;
    [v69 setDeletedItemIndexPaths:v27.super.isa];
    v19 = v66;
    (*v67)(v66, v6);
    goto LABEL_5;
  }
}

id sub_221AF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_221BBC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_221BF4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_221C54()
{
  result = qword_DF9838;
  if (!qword_DF9838)
  {
    sub_13C80(255, &qword_DF9840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF9838);
  }

  return result;
}

uint64_t sub_221CBC()
{

  return swift_deallocObject();
}

uint64_t sub_221CFC()
{

  return swift_deallocObject();
}

uint64_t sub_221D44()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_221D7C()
{

  return swift_deallocObject();
}

uint64_t sub_221DD0()
{

  return swift_deallocObject();
}

uint64_t sub_221E38()
{

  return swift_deallocObject();
}

void sub_221EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, void **a6)
{
  sub_F46A0(a1, v11);
  if (v12)
  {
    sub_89F60();
    if (swift_dynamicCast())
    {
      [v10 _bodyLeading];
      if (*a5 >= v8)
      {
      }

      else
      {
        *a5 = v8;
        v9 = *a6;
        *a6 = v10;
      }
    }
  }

  else
  {
    sub_9BC10(v11);
  }
}

void sub_221F54(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  v2 = a1;

  v4 = v1(v3);
  sub_17654(v1);
  if (!v4)
  {
    return;
  }

  v5 = *(v2 + 16);
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 adjustedContentInset];
  v135.origin.x = UIEdgeInsetsInsetRect(v7, v9, v11, v13, v14, v15);
  x = v135.origin.x;
  width = v135.size.width;
  height = v135.size.height;
  y = v135.origin.y;
  if (CGRectGetMinY(v135) > 0.0)
  {
    v136.origin.x = x;
    v136.origin.y = y;
    v136.size.width = width;
    v136.size.height = height;
    MaxY = CGRectGetMaxY(v136);
    [v5 contentSize];
    if (v21 > MaxY)
    {
      v22 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 >> 62)
      {
        v23 = sub_ABB060();
        if (!v23)
        {
LABEL_86:
          sub_222C30();

          return;
        }
      }

      else
      {
        v23 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
        if (!v23)
        {
          goto LABEL_86;
        }
      }

      v24 = 0;
      rect[1] = v23;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v25 = sub_35F8D4(v24, v4);
        }

        else
        {
          if (v24 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_149;
          }

          v25 = *(v4 + 8 * v24 + 32);
        }

        v26 = v25;
        v2 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_148;
        }

        swift_getObjectType();
        v27 = swift_conformsToProtocol2();
        if (!v27 || !v26)
        {
          break;
        }

        v28 = v27;
        ObjectType = swift_getObjectType();
        (*(v28 + 8))(&rect[3], ObjectType, v28);
        if (!*(&v130 + 1))
        {
          goto LABEL_9;
        }

        sub_70DF8(&rect[3], v132);
        v30 = v133;
        v31 = v134;
        __swift_project_boxed_opaque_existential_1(v132, v133);
        v32 = (*(v31 + 32))(v30, v31);
        __swift_destroy_boxed_opaque_existential_0(v132);
        if (v32)
        {
          if (v2 == rect[1])
          {
            goto LABEL_62;
          }

          v109 = v4 & 0xC000000000000001;
          while (2)
          {
            v125 = v26;
            v110 = v2;
            if (v109)
            {
LABEL_119:
              v111 = sub_35F8D4(v110, v4);
              goto LABEL_123;
            }

LABEL_120:
            if ((v110 & 0x8000000000000000) != 0)
            {
              goto LABEL_156;
            }

            if (v110 >= *(v22 + 16))
            {
              goto LABEL_157;
            }

            v111 = *(v4 + 8 * v110 + 32);
LABEL_123:
            v26 = v111;
            v2 = v110 + 1;
            if (__OFADD__(v110, 1))
            {
              goto LABEL_150;
            }

            swift_getObjectType();
            v112 = swift_conformsToProtocol2();
            if (v112 && v26)
            {
              v113 = v112;
              v114 = swift_getObjectType();
              (*(v113 + 8))(&rect[3], v114, v113);
              if (*(&v130 + 1))
              {
                sub_70DF8(&rect[3], v132);
                v116 = v133;
                v115 = v134;
                __swift_project_boxed_opaque_existential_1(v132, v133);
                v117 = (*(v115 + 32))(v116, v115);
                __swift_destroy_boxed_opaque_existential_0(v132);
                if (v117)
                {
                  v118 = [v26 view];
                  if (!v118)
                  {
                    goto LABEL_162;
                  }

                  v119 = v118;
                  v109 = v4 & 0xC000000000000001;
                  [v118 center];

                  sub_ABA4C0();
                  sub_ABA700();
                  v121 = v120;
                  v122 = [v125 view];
                  v22 = v4 & 0xFFFFFFFFFFFFFF8;
                  if (!v122)
                  {
                    goto LABEL_161;
                  }

                  v123 = v122;
                  [v122 center];

                  sub_ABA4C0();
                  sub_ABA700();
                  if (v121 < v124)
                  {

                    if (v2 == rect[1])
                    {
                      goto LABEL_62;
                    }

                    continue;
                  }

                  goto LABEL_135;
                }

                v22 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_134:
                v109 = v4 & 0xC000000000000001;
LABEL_135:
                if (v2 == rect[1])
                {
                  v26 = v125;
                  goto LABEL_62;
                }

                ++v110;
                if (v109)
                {
                  goto LABEL_119;
                }

                goto LABEL_120;
              }
            }

            else
            {
              v131 = 0;
              *&rect[3] = 0u;
              v130 = 0u;
            }

            break;
          }

          sub_222DE8(&rect[3]);

          goto LABEL_134;
        }

        v23 = rect[1];
LABEL_10:
        ++v24;
        if (v2 == v23)
        {
          goto LABEL_86;
        }
      }

      v131 = 0;
      *&rect[3] = 0u;
      v130 = 0u;
LABEL_9:
      sub_222DE8(&rect[3]);

      goto LABEL_10;
    }

    v2 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      v45 = sub_ABB060();
    }

    else
    {
      v45 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    }

    v46 = 0;
    v22 = v4 & 0xC000000000000001;
    v47 = v4 + 32;
    while (1)
    {
      if (v45 == v46)
      {
        goto LABEL_82;
      }

      if (v22)
      {
        v48 = sub_35F8D4(v46, v4);
      }

      else
      {
        if (v46 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
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
          v33 = sub_ABB060();
          goto LABEL_23;
        }

        v48 = *(v4 + 8 * v46 + 32);
      }

      v49 = v48;
      swift_getObjectType();
      v50 = swift_conformsToProtocol2();
      if (!v50 || !v49)
      {
        break;
      }

      v51 = v50;
      v52 = swift_getObjectType();
      (*(v51 + 8))(&rect[3], v52, v51);
      if (!*(&v130 + 1))
      {
        goto LABEL_41;
      }

      sub_70DF8(&rect[3], v132);
      v53 = v133;
      v54 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v55 = (*(v54 + 32))(v53, v54);
      __swift_destroy_boxed_opaque_existential_0(v132);

      if (v55)
      {
        v45 = v46;
LABEL_82:
        if (v4 >> 62)
        {
          if (v45 == sub_ABB060())
          {
            goto LABEL_86;
          }

          v92 = sub_ABB060();
        }

        else
        {
          v92 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
          if (v45 == v92)
          {
            goto LABEL_86;
          }
        }

        if (!v92)
        {
          goto LABEL_158;
        }

        v33 = v92 - 1;
        if (!__OFSUB__(v92, 1))
        {
          goto LABEL_95;
        }

        while (1)
        {
          __break(1u);
LABEL_92:
          v131 = 0;
          *&rect[3] = 0u;
          v130 = 0u;
LABEL_93:
          sub_222DE8(&rect[3]);

          while (1)
          {
            v36 = __OFSUB__(v33--, 1);
            if (v36)
            {
              break;
            }

LABEL_95:
            if (v22)
            {
              v93 = sub_35F8D4(v33, v4);
            }

            else
            {
              if ((v33 & 0x8000000000000000) != 0)
              {
                goto LABEL_146;
              }

              if (v33 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_147;
              }

              v93 = *(v47 + 8 * v33);
            }

            v46 = v93;
            swift_getObjectType();
            v94 = swift_conformsToProtocol2();
            if (!v94 || !v46)
            {
              goto LABEL_92;
            }

            v95 = v94;
            v96 = swift_getObjectType();
            (*(v95 + 8))(&rect[3], v96, v95);
            if (!*(&v130 + 1))
            {
              goto LABEL_93;
            }

            sub_70DF8(&rect[3], v132);
            v97 = v133;
            v98 = v134;
            __swift_project_boxed_opaque_existential_1(v132, v133);
            v99 = (*(v98 + 32))(v97, v98);
            __swift_destroy_boxed_opaque_existential_0(v132);

            if (v99)
            {
              if (v22)
              {
                goto LABEL_105;
              }

              if ((v33 & 0x8000000000000000) != 0)
              {
                goto LABEL_159;
              }

              if (v33 < *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
              {
                v56 = *(v47 + 8 * v33);
LABEL_60:
                v57 = v56;
                goto LABEL_61;
              }

LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
              return;
            }
          }
        }
      }

LABEL_42:
      v36 = __OFADD__(v46++, 1);
      if (v36)
      {
        goto LABEL_145;
      }
    }

    v131 = 0;
    *&rect[3] = 0u;
    v130 = 0u;
LABEL_41:
    sub_222DE8(&rect[3]);

    goto LABEL_42;
  }

  v2 = v4 & 0xFFFFFFFFFFFFFF8;
  v22 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_151;
  }

  v33 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
LABEL_23:
  v34 = 0;
  v35 = v4 & 0xC000000000000001;
  while (v33 != v34)
  {
    if (v35)
    {
      v37 = sub_35F8D4(v34, v4);
    }

    else
    {
      if (v34 >= *(v2 + 16))
      {
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v37 = *(v4 + 8 * v34 + 32);
    }

    v38 = v37;
    swift_getObjectType();
    v39 = swift_conformsToProtocol2();
    if (v39 && v38)
    {
      v40 = v39;
      v41 = swift_getObjectType();
      (*(v40 + 8))(&rect[3], v41, v40);
      if (*(&v130 + 1))
      {
        sub_70DF8(&rect[3], v132);
        v42 = v133;
        v43 = v134;
        __swift_project_boxed_opaque_existential_1(v132, v133);
        v44 = (*(v43 + 32))(v42, v43);
        __swift_destroy_boxed_opaque_existential_0(v132);

        if (v44)
        {
          v33 = v34;
          break;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v131 = 0;
      *&rect[3] = 0u;
      v130 = 0u;
    }

    sub_222DE8(&rect[3]);

LABEL_26:
    v36 = __OFADD__(v34++, 1);
    if (v36)
    {
      goto LABEL_143;
    }
  }

  if (v22)
  {
    if (v33 == sub_ABB060())
    {
      goto LABEL_86;
    }
  }

  else if (v33 == *(v2 + 16))
  {
    goto LABEL_86;
  }

  if (!v35)
  {
    if (v33 < *(v2 + 16))
    {
      v56 = *(v4 + 32 + 8 * v33);
      goto LABEL_60;
    }

    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

LABEL_105:
  v57 = sub_35F8D4(v33, v4);
LABEL_61:
  v26 = v57;
LABEL_62:
  swift_getObjectType();
  v58 = swift_conformsToProtocol2();
  if (v58 && v26)
  {
    v59 = v58;
    v60 = swift_getObjectType();
    v61 = *(v59 + 8);
    v62 = v26;
    v61(&rect[3], v60, v59);
    if (*(&v130 + 1))
    {
      sub_70DF8(&rect[3], v132);
      v63 = sub_4D3C64();
      v64 = *&v63[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
      v65 = *&v63[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame + 8];
      v66 = *&v63[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame + 16];
      v67 = *&v63[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame + 24];

      v137.origin.x = x;
      v126 = y;
      v137.origin.y = y;
      v137.size.width = width;
      v137.size.height = height;
      v68 = x;
      *rect = x;
      MinX = CGRectGetMinX(v137);
      v138.origin.x = v64;
      v138.origin.y = v65;
      v138.size.width = v66;
      v138.size.height = v67;
      v70 = CGRectGetMinX(v138);
      if (MinX <= v70)
      {
        MinX = v70;
      }

      v139.origin.x = v64;
      v139.origin.y = v65;
      v139.size.width = v66;
      v139.size.height = v67;
      *&rect[1] = MinX - CGRectGetMinX(v139);
      v140.origin.x = v68;
      v140.origin.y = v126;
      v140.size.width = width;
      v127 = width;
      v140.size.height = height;
      MaxX = CGRectGetMaxX(v140);
      v141.origin.x = v64;
      v141.origin.y = v65;
      v141.size.width = v66;
      v141.size.height = v67;
      v72 = CGRectGetMaxX(v141);
      if (v72 < MaxX)
      {
        MaxX = v72;
      }

      v142.origin.x = v64;
      v142.origin.y = v65;
      v142.size.width = v66;
      v142.size.height = v67;
      v128 = MaxX - CGRectGetMinX(v142);
      *&v143.origin.x = rect[0];
      v143.origin.y = v126;
      v143.size.width = width;
      v143.size.height = height;
      v73 = height;
      MinY = CGRectGetMinY(v143);
      v144.origin.x = v64;
      v144.origin.y = v65;
      v144.size.width = v66;
      v144.size.height = v67;
      v75 = CGRectGetMinY(v144);
      if (MinY <= v75)
      {
        MinY = v75;
      }

      v145.origin.x = v64;
      v145.origin.y = v65;
      v145.size.width = v66;
      v145.size.height = v67;
      v76 = MinY - CGRectGetMinY(v145);
      v146.origin.y = v126;
      v146.size.width = v127;
      *&v146.origin.x = rect[0];
      v77 = *&rect[1];
      v146.size.height = v73;
      v78 = CGRectGetMaxY(v146);
      v147.origin.x = v64;
      v147.origin.y = v65;
      v147.size.width = v66;
      v147.size.height = v67;
      v79 = CGRectGetMaxY(v147);
      if (v79 < v78)
      {
        v78 = v79;
      }

      v148.origin.x = v64;
      v80 = v76;
      v148.origin.y = v65;
      v148.size.width = v66;
      v148.size.height = v67;
      v81 = v128 - *&rect[1];
      v82 = v78 - CGRectGetMinY(v148) - v76;
      v83 = sub_4D3C64();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v85 = Strong;
        v86 = [Strong contentScrollView];

        if (v86)
        {
          [v86 contentOffset];
          v77 = *&rect[1] + v87;
          [v86 contentSize];
          if (v88 < v81)
          {
            v81 = v88;
          }

          [v86 contentSize];
          v90 = v89;

          if (v90 < v82)
          {
            v82 = v90;
          }
        }
      }

      else
      {
      }

      *&rect[3] = v77;
      *&rect[4] = v80;
      *&v130 = v81;
      *(&v130 + 1) = v82;
      LOBYTE(v131) = 0;
      v100 = v133;
      v101 = v134;
      __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
      (*(v101 + 16))(&rect[3], v100, v101);
      v102 = v133;
      v103 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      (*(v103 + 48))(v102, v103);
      __swift_destroy_boxed_opaque_existential_0(v132);
    }

    else
    {
      sub_222DE8(&rect[3]);
    }
  }

  else
  {
    v91 = v26;
  }

  v104 = swift_unknownObjectWeakLoadStrong();
  if (!v104 || (v105 = v104, sub_72C6C(), v106 = v26, v107 = sub_ABA790(), v106, v105, (v107 & 1) == 0))
  {
    v108 = swift_unknownObjectWeakLoadStrong();
    sub_222E50(v108);
  }

  swift_unknownObjectWeakAssign();
}

uint64_t sub_222C30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (ObjectType = swift_getObjectType(), (v2 = swift_conformsToProtocol2()) == 0))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  (*(v2 + 8))(&v8, ObjectType, v2);
  if (!*(&v9 + 1))
  {
LABEL_6:
    sub_222DE8(&v8);
    goto LABEL_7;
  }

  sub_70DF8(&v8, v11);
  v8 = 0u;
  v9 = 0u;
  LOBYTE(v10) = 1;
  v3 = v12;
  v4 = v13;
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  (*(v4 + 16))(&v8, v3, v4);
  v5 = v12;
  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v6 + 40))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_7:

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_222D7C()
{
  sub_17654(*(v0 + 24));
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_222DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222E50(uint64_t a1)
{
  if (a1 && (ObjectType = swift_getObjectType(), (v2 = swift_conformsToProtocol2()) != 0))
  {
    (*(v2 + 8))(&v8, ObjectType, v2);
    if (*(&v9 + 1))
    {
      sub_70DF8(&v8, v11);
      v8 = 0u;
      v9 = 0u;
      LOBYTE(v10) = 1;
      v3 = v12;
      v4 = v13;
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      (*(v4 + 16))(&v8, v3, v4);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v6 + 40))(v5, v6);
      return __swift_destroy_boxed_opaque_existential_0(v11);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  return sub_222DE8(&v8);
}

void *sub_222F70(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF9B48);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA58);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v29 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v27 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(sub_AB3820() - 8);
  v24 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v28 = *(v15 + 72);
  v18 = _swiftEmptyArrayStorage;
  v25 = v9;
  v26 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_12E1C(v8, &qword_DF9B48);
    }

    else
    {
      v19 = v27;
      sub_2250F4(v8, v27);
      sub_2250F4(v19, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_6BCA4(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_6BCA4(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_2250F4(v29, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21);
      v9 = v25;
      a1 = v26;
    }

    v17 += v28;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_223260()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2232A4(void *a1, uint64_t a2)
{
  v3 = v2;
  v58 = sub_AB7C10();
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  result = __chkstk_darwin(v8);
  v12 = *&v2[OBJC_IVAR____TtC16MusicApplication28ArtworkPrefetchingController_artworkProvider];
  if (v12)
  {
    v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = v11;
    v57 = result;
    v13 = *&v2[OBJC_IVAR____TtC16MusicApplication28ArtworkPrefetchingController_artworkProvider + 8];
    v14 = *&v2[OBJC_IVAR____TtC16MusicApplication28ArtworkPrefetchingController_defaultArtworkMetricsProvider];
    if (v14)
    {
      v63 = type metadata accessor for ArtworkPrefetchingController();
      aBlock[0] = v2;
      sub_307CC(v12);
      sub_307CC(v14);
      v15 = v2;
      v16 = v14(aBlock, a1);
      v18 = v17;
      v20 = v19;
      sub_12E1C(aBlock, &unk_DE8E40);
      sub_17654(v14);
    }

    else
    {

      v16 = 0.0;
      v18 = 0;
      v20 = 0;
    }

    v21 = *&v2[OBJC_IVAR____TtC16MusicApplication28ArtworkPrefetchingController_artworkMetricsProvider];
    v22 = *&v3[OBJC_IVAR____TtC16MusicApplication28ArtworkPrefetchingController_artworkMetricsProvider + 8];
    v51 = *&v3[OBJC_IVAR____TtC16MusicApplication28ArtworkPrefetchingController_cachingReference];

    v52 = v21;
    v60 = v22;
    sub_307CC(v21);
    if (qword_DE69D0 != -1)
    {
      swift_once();
    }

    v23 = sub_AB4BC0();
    __swift_project_value_buffer(v23, qword_DF9960);
    v24 = a1;

    v25 = sub_AB4BA0();
    v26 = sub_AB9F50();

    v27 = os_log_type_enabled(v25, v26);
    v56 = v7;
    v53 = a2;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v49 = v13;
      v29 = v28;
      v30 = swift_slowAlloc();
      v50 = v12;
      v31 = v30;
      v32 = v14;
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v29 = 138543618;
      *(v29 + 4) = v24;
      *v31 = v24;
      *(v29 + 12) = 2082;
      sub_AB3820();
      v34 = v24;
      v35 = sub_AB9770();
      v37 = sub_425E68(v35, v36, aBlock);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_0, v25, v26, "Collection view %{public}@ requests prefetching for indexPaths %{public}s", v29, 0x16u);
      sub_12E1C(v31, &qword_DF9B20);
      v12 = v50;

      __swift_destroy_boxed_opaque_existential_0(v33);
      v14 = v32;

      v13 = v49;
    }

    sub_15F84(&v3[OBJC_IVAR____TtC16MusicApplication28ArtworkPrefetchingController_context], v67, &unk_DE8E40);
    if (qword_DE69C0 != -1)
    {
      swift_once();
    }

    v38 = qword_DF9950;
    sub_15F84(v67, v66, &unk_DE8E40);
    v39 = swift_allocObject();
    v40 = v66[1];
    *(v39 + 40) = v66[0];
    v41 = v52;
    *(v39 + 16) = v53;
    *(v39 + 24) = v41;
    *(v39 + 32) = v60;
    *(v39 + 56) = v40;
    *(v39 + 72) = v24;
    *(v39 + 80) = v16;
    *(v39 + 88) = v18;
    *(v39 + 96) = v20;
    *(v39 + 104) = v14 == 0;
    *(v39 + 112) = v12;
    *(v39 + 120) = v13;
    *(v39 + 128) = v51;
    v64 = sub_225020;
    v65 = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    v63 = &block_descriptor_49_0;
    v50 = _Block_copy(aBlock);
    sub_307CC(v12);

    sub_307CC(v41);
    v42 = v24;

    v43 = v38;
    v44 = v54;
    sub_AB7C30();
    v61 = _swiftEmptyArrayStorage;
    sub_2250AC(&qword_DF06C0, 255, &type metadata accessor for DispatchWorkItemFlags);
    v45 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_809E0(&qword_DF06D0, &unk_DE9C30);
    v46 = v56;
    v47 = v58;
    sub_ABABB0();
    v48 = v50;
    sub_ABA160();

    sub_17654(v45);
    sub_17654(v41);
    (*(v59 + 8))(v46, v47);
    (*(v55 + 8))(v44, v57);
    sub_12E1C(v67, &unk_DE8E40);
    _Block_release(v48);
  }

  return result;
}

uint64_t sub_2239AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v38 = a7;
  v39 = a8;
  v37 = a6;
  v40 = a1;
  v36 = a11;
  v35 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF9B28);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9B30);
  __chkstk_darwin(v18 - 8);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA58);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v35 - v23;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v49 = a9 & 1;
  v50 = v35;
  v51 = v36;
  v26 = sub_222F70(sub_22506C, v41, v40);
  v27 = v26[2];
  if (v27)
  {
    sub_2250AC(&qword_DF9B40, v25, type metadata accessor for ArtworkPrefetchingController.CacheReference);
    v28 = *(v22 + 80);
    v40 = v26;
    v29 = v26 + ((v28 + 32) & ~v28);
    v30 = *(v22 + 72);
    do
    {
      sub_15F84(v29, v24, &qword_DEAA58);
      v31 = sub_AB89C0();
      (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
      v32 = sub_AB8920();
      (*(*(v32 - 8) + 56))(v17, 1, 1, v32);
      sub_AB47D0();
      v33 = sub_AB8A60();
      (*(*(v33 - 8) + 8))(v24, v33);
      sub_12E1C(v17, &qword_DF9B28);
      sub_12E1C(v20, &unk_DF9B30);
      v29 += v30;
      --v27;
    }

    while (v27);
  }
}

uint64_t sub_223D64@<X0>(uint64_t a1@<X0>, double (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, double a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, char a9, void (*a10)(uint64_t, uint64_t))
{
  v39 = a8;
  v36 = a6;
  v37 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_AB8A60();
  v38 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21 = a3;
    v22 = a2(a3, a4, a1);
    v24 = v23;
    v26 = v25;
  }

  else
  {
    if (a9)
    {
LABEL_8:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA58);
      return (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
    }

    v27 = a5;
    v21 = a3;
    v22 = v27;
    v24 = v36;
    v26 = v37;
  }

  type metadata accessor for CGSize(0);
  v42 = v22;
  v43 = v24;
  v40 = 0;
  v41 = 0;
  if ((sub_AB38D0() & 1) == 0)
  {
    goto LABEL_8;
  }

  a10(v21, a1);
  v28 = v38;
  if ((*(v38 + 48))(v17, 1, v18) == 1)
  {
    sub_12E1C(v17, &unk_DE9C50);
    goto LABEL_8;
  }

  v31 = *(v28 + 32);
  v31(v20, v17, v18);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA58);
  v33 = v39;
  v34 = &v39[*(v32 + 48)];
  v31(v39, v20, v18);
  *v34 = v22;
  *(v34 + 1) = v24;
  *(v34 + 2) = v26;
  return (*(*(v32 - 8) + 56))(v33, 0, 1, v32);
}

uint64_t sub_224194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a1;
  v5 = sub_AB7C10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB7C50();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB3820();
  v65 = *(v13 - 8);
  result = __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *&v3[OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogProviding];
  if (v61)
  {
    v64 = a2;
    v56 = v6;
    v57 = v5;
    v17 = *&v3[OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogProviding + 8];
    v18 = *&v3[OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding];
    v60 = v18;
    if (v18)
    {
      sub_307CC(v61);
      sub_307CC(v18);
      v19 = v18(v3, v63);
      v21 = v20;
      v23 = v22;
      sub_17654(v18);
    }

    else
    {

      v19 = 0.0;
      v21 = 0;
      v23 = 0;
    }

    v52 = v12;
    v53 = v10;
    v54 = v8;
    v55 = v9;
    v24 = *&v3[OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_cachingReference];
    v25 = *&v3[OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogMetricsProviding];
    v26 = *&v3[OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogMetricsProviding + 8];
    v27 = *(v64 + 16);
    v59 = v17;
    v66 = v25;
    v62 = v26;
    v51 = v24;
    if (v27)
    {
      v28 = v65;
      v29 = v64 + ((v65[80] + 32) & ~v65[80]);
      swift_unknownObjectRetain();
      sub_307CC(v25);
      v30 = *(v28 + 2);
      v28 += 16;
      v64 = *(v28 + 7);
      v65 = v30;
      v31 = (v28 - 8);
      v32 = _swiftEmptyArrayStorage;
      v58 = v3;
      (v30)(v16, v29, v13);
      while (1)
      {
        if (v66)
        {
          v33 = v66(v3, v63, v16);
          v35 = v34;
          v37 = v36;
        }

        else
        {
          v33 = v19;
          v35 = v21;
          v37 = v23;
          if (!v60)
          {
            goto LABEL_7;
          }
        }

        type metadata accessor for CGSize(0);
        aBlock = *&v33;
        v70 = v35;
        v67 = 0;
        v68 = 0;
        if ((sub_AB38D0() & 1) == 0)
        {
LABEL_7:
          (*v31)(v16, v13);
          goto LABEL_8;
        }

        v38 = v61(v3, v16);
        (*v31)(v16, v13);
        if (v38)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_6BCC8(0, v32[2] + 1, 1, v32);
          }

          v40 = v32[2];
          v39 = v32[3];
          if (v40 >= v39 >> 1)
          {
            v32 = sub_6BCC8((v39 > 1), v40 + 1, 1, v32);
          }

          v32[2] = v40 + 1;
          v41 = &v32[4 * v40];
          *(v41 + 4) = v38;
          v41[5] = v33;
          *(v41 + 6) = v35;
          *(v41 + 7) = v37;
          v3 = v58;
        }

LABEL_8:
        v29 += v64;
        if (!--v27)
        {
          goto LABEL_21;
        }

        (v65)(v16, v29, v13);
      }
    }

    swift_unknownObjectRetain();
    sub_307CC(v25);
    v32 = _swiftEmptyArrayStorage;
LABEL_21:
    if (qword_DE69C8 != -1)
    {
      swift_once();
    }

    v42 = qword_DF9958;
    v43 = swift_allocObject();
    v43[2] = v32;
    v43[3] = v3;
    v43[4] = v51;
    v73 = sub_224F28;
    v74 = v43;
    aBlock = _NSConcreteStackBlock;
    v70 = 1107296256;
    v71 = sub_1B5EB4;
    v72 = &block_descriptor_78;
    v44 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v45 = v42;
    v46 = v3;
    v47 = v52;
    sub_AB7C30();
    v67 = _swiftEmptyArrayStorage;
    sub_2250AC(&qword_DF06C0, 255, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_809E0(&qword_DF06D0, &unk_DE9C30);
    v48 = v54;
    v49 = v57;
    sub_ABABB0();
    sub_ABA160();
    swift_unknownObjectRelease();
    (*(v56 + 8))(v48, v49);
    (*(v53 + 8))(v47, v55);
    _Block_release(v44);

    sub_17654(v66);
    return sub_17654(v61);
  }

  return result;
}

void sub_224864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = (a1 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v6 += 4;
      v11 = v7;
      [v11 setFittingSize:{v8, v9}];
      [v11 setDestinationScale:v10];

      v12 = sub_AB9260();

      [v11 setCacheIdentifier:v12 forCacheReference:a3];

      v14[4] = UIScreen.Dimensions.size.getter;
      v14[5] = 0;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_4175C0;
      v14[3] = &block_descriptor_43_4;
      v13 = _Block_copy(v14);
      [v11 setDestination:a2 configurationBlock:v13];
      _Block_release(v13);

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_224A04(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, uint64_t))
{
  sub_AB3820();
  v9 = sub_AB9760();
  v10 = a3;
  v11 = a4;
  v12 = a1;
  a5(v10, v9);
}

id sub_224AA0()
{
  v1 = &v0[OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogMetricsProviding];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogProviding];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_cachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v0[v4] = swift_allocObject();
  v5 = &v0[OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_cachingIdentifier];
  v6 = Artwork.Caching.Reference.defaultIdentifier.unsafeMutableAddressor();
  v7 = v6[1];
  *v5 = *v6;
  *(v5 + 1) = v7;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for old_ArtworkPrefetchingController();

  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_224B64(uint64_t a1, uint64_t *a2)
{
  v10 = a2;
  v9 = sub_ABA140();
  v2 = *(v9 - 8);
  __chkstk_darwin(v9);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_ABA100();
  __chkstk_darwin(v5);
  v6 = sub_AB7C50();
  __chkstk_darwin(v6 - 8);
  v8 = sub_60044();
  sub_AB7C40();
  v11 = _swiftEmptyArrayStorage;
  sub_2250AC(&qword_DED790, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270);
  sub_809E0(&qword_DED7A0, &qword_E01270);
  sub_ABABB0();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  result = sub_ABA180();
  *v10 = result;
  return result;
}

id sub_224DF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_224EE0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_224F4C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DF9960);
  __swift_project_value_buffer(v0, qword_DF9960);
  return static Logger.music(_:)();
}

uint64_t sub_224FB0()
{

  if (*(v0 + 24))
  {
  }

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_2250AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2250F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_225174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  v5 = _swiftEmptyArrayStorage;
  v4[11] = 0;
  v4[12] = _swiftEmptyArrayStorage;
  v4[13] = 0;
  v4[2] = a1;
  v4[3] = a2;
  using.value._countAndFlagsBits = a2;
  v4[4] = a3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v26 = v4;
    v30 = _swiftEmptyArrayStorage;

    sub_6D560(0, v6, 0);
    v8 = a3;
    v9 = 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      countAndFlagsBits = using.value._countAndFlagsBits;
      v11 = v8;
      SortOptions.ContentType.storageKey(using:)(*(&v8 - 1));
      UIScreen.Dimensions.size.getter(v12);
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v30 = v5;
      v22 = v5[2];
      v21 = v5[3];
      if (v22 >= v21 >> 1)
      {
        sub_6D560((v21 > 1), v22 + 1, 1);
        v5 = v30;
      }

      v28 = &type metadata for UserDefaultsKeyValueTrigger;
      v29 = &protocol witness table for UserDefaultsKeyValueTrigger;
      v23 = swift_allocObject();
      using.value._object = v23;
      v23[2] = v14;
      v23[3] = v16;
      v23[4] = v18;
      v23[5] = v20;
      v5[2] = v22 + 1;
      sub_70DF8(&using.value._object, &v5[5 * v22 + 4]);
      ++v9;
      --v6;
      v8 = v11;
    }

    while (v6);

    v4 = v26;
  }

  v24 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v4[13] = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v5, 1, sub_226B68, v24);

  return v4;
}

uint64_t sub_225390()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);

    v3 = sub_226E74(v2, v1);

    sub_2258B0(v3);
  }

  return result;
}

objc_class *sub_225418()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = *(v0 + 40);
  if (v3)
  {
    v4 = *(v0 + 40);
  }

  else
  {
    sub_13C80(0, &unk_DF12E0);
    sub_AB91E0();
    sub_AB3550();
    v5 = sub_AB9320();
    v7 = v6;
    v8 = sub_AB9260();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_13C80(0, &qword_DF1D50);
    v10 = swift_allocObject();
    swift_weakInit();

    v11 = v0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, 0, 0, sub_22724C, v10).super.super.isa;

    v13 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, isa, 1, 0, 0);
    v14 = *(v11 + 40);
    *(v11 + 40) = v13;
    v4 = v13;

    v3 = 0;
  }

  v15 = v3;
  return v4;
}

void *sub_225684()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = Strong;
  v2 = sub_22577C();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (v2[2] == 1)
  {
    v5.super.super.isa = sub_225964(v3, v4, 0, 0xE000000000000000, *(v2 + 32)).super.super.isa;
  }

  else
  {
    v5.super.super.isa = sub_225CDC(v3, v4, v2);
  }

  isa = v5.super.super.isa;

  v8 = [(objc_class *)isa children];
  sub_13C80(0, &qword_DEAB30);
  v6 = sub_AB9760();

  return v6;
}

void *sub_22577C()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 32);

      v5 = _swiftEmptyArrayStorage;
      do
      {
        v9 = *v4++;
        v8 = v9;
        if (v1(v0, v9))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_6D740(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v7 = _swiftEmptyArrayStorage[2];
          v6 = _swiftEmptyArrayStorage[3];
          if (v7 >= v6 >> 1)
          {
            sub_6D740((v6 > 1), v7 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v7 + 1;
          *(&_swiftEmptyArrayStorage[4] + v7) = v8;
        }

        --v3;
      }

      while (v3);
      sub_17654(v1);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v5 = *(v0 + 16);
  }

  return v5;
}

uint64_t sub_2258B0(uint64_t a1)
{
  v2 = *(v1 + 96);
  *(v1 + 96) = a1;

  v4 = sub_12C900(v3, v2);

  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 64);
    if (v5)
    {
      v6 = *(v1 + 96);
      sub_307CC(*(v1 + 64));

      v5(v1, v6);

      sub_17654(v5);
    }
  }
}

UIMenu sub_225964(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v10 = [objc_opt_self() standardUserDefaults];
  v37 = a1;
  v38 = a2;
  v11 = NSUserDefaults.sortType(for:keyDomain:)(a5, a1, a2);

  if (a4)
  {
    v12 = a4;
  }

  else
  {
    a3 = SortOptions.ContentType.localizedTitle.getter(a5);
    v12 = v13;
  }

  SortOptions.ContentType.identifier.getter(a5);

  v14 = sub_AB9260();

  v15 = SortOptions.ContentType.availableSortTypes(withSelectedType:)(v11, a5);
  v16 = *(v15 + 2);
  if (!v16)
  {

    goto LABEL_17;
  }

  v32 = v14;
  v33 = a3;
  v17 = v15;
  sub_ABAEC0();
  sub_13C80(0, &unk_E05310);
  v18 = v17;
  v19 = 32;
  v35 = v11;
  v36 = a5;
  v34 = v17;
  do
  {
    v21 = v18[v19];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D40);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_AF4EC0;
    *(v22 + 32) = a5;
    v23 = SortOptions.SortType.rawValue.getter(v11);
    v25 = v24;
    if (v23 == SortOptions.SortType.rawValue.getter(v21) && v25 == v26)
    {

      SortOptions.SortType.localizedTitle.getter(v21);
LABEL_7:
      SortOptions.SortType.image.getter(v21);
      goto LABEL_8;
    }

    v28 = sub_ABB3C0();

    SortOptions.SortType.localizedTitle.getter(v21);
    if (v28)
    {
      goto LABEL_7;
    }

LABEL_8:
    SortOptions.SortType.rawValue.getter(v21);
    sub_AB9260();

    v20 = swift_allocObject();
    *(v20 + 16) = v22;
    *(v20 + 24) = v35;
    *(v20 + 25) = v21;
    *(v20 + 32) = v37;
    *(v20 + 40) = v38;

    v31._rawValue = 0;
    v11 = v35;
    sub_ABA7D0();
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    ++v19;
    --v16;
    LOBYTE(a5) = v36;
    v18 = v34;
  }

  while (v16);

  a3 = v33;
  v14 = v32;
LABEL_17:
  sub_13C80(0, &qword_DF1D50);
  v40._countAndFlagsBits = a3;
  v40._object = v12;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v39.value.super.isa = 0;
  v39.is_nil = v14;
  v29.value = 0;
  return sub_ABA5B0(v40, v41, v39, v29, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v31);
}

Class sub_225CDC(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = *(a3 + 32);
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = NSUserDefaults.sortType(for:keyDomain:)(v6, a1, a2);
  }

  else
  {
    v8 = 13;
  }

  v9 = sub_22608C(v8, a3);
  v10 = *(v9 + 16);
  if (v10)
  {
    v25 = a2;
    v26 = a3;
    sub_ABAEC0();
    v11 = (v9 + 32);
    sub_13C80(0, &unk_E05310);
    do
    {
      v14 = *v11++;
      v13 = v14;
      if (v8 == 13)
      {
        SortOptions.SortType.localizedTitle.getter(v13);
      }

      else
      {
        v15 = SortOptions.SortType.rawValue.getter(v8);
        v17 = v16;
        if (v15 == SortOptions.SortType.rawValue.getter(v13) && v17 == v18)
        {

          SortOptions.SortType.localizedTitle.getter(v13);
        }

        else
        {
          v20 = sub_ABB3C0();

          SortOptions.SortType.localizedTitle.getter(v13);
          if ((v20 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        SortOptions.SortType.image.getter(v13);
      }

LABEL_8:
      SortOptions.SortType.rawValue.getter(v13);
      sub_AB9260();

      v12 = swift_allocObject();
      *(v12 + 16) = v26;
      *(v12 + 24) = v8;
      *(v12 + 25) = v13;
      *(v12 + 32) = a1;
      *(v12 + 40) = v25;

      v24._rawValue = 0;
      sub_ABA7D0();
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      --v10;
    }

    while (v10);
  }

  sub_13C80(0, &qword_DF1D50);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  v21.value = 0;
  isa = sub_ABA5B0(v28, v29, v27, v21, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v24).super.super.isa;

  return isa;
}

uint64_t sub_225FDC()
{

  sub_17654(*(v0 + 48));
  sub_17654(*(v0 + 64));
  sub_17654(*(v0 + 80));

  return v0;
}

uint64_t sub_226034()
{
  sub_225FDC();

  return swift_deallocClassInstance();
}

uint64_t sub_22608C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_19:
    v17 = sub_226B70(v5);

    return v17;
  }

  v4 = (a2 + 32);
  v5 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = *v4++;
    result = SortOptions.ContentType.availableSortTypes(withSelectedType:)(a1, v7);
    v8 = *(result + 16);
    v9 = *(v5 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    v11 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v5 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      result = sub_6BDFC(result, v12, 1, v5);
      v5 = result;
      if (*(v11 + 16))
      {
LABEL_14:
        v13 = *(v5 + 2);
        if ((*(v5 + 3) >> 1) - v13 < v8)
        {
          goto LABEL_22;
        }

        memcpy(&v5[v13 + 32], (v11 + 32), v8);

        if (v8)
        {
          v14 = *(v5 + 2);
          v15 = __OFADD__(v14, v8);
          v16 = v14 + v8;
          if (v15)
          {
            goto LABEL_23;
          }

          *(v5 + 2) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v2)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_2261F0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, void *a6)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v10 = (a2 + 32);
    while (2)
    {
      v13 = *v10++;
      v12 = v13;
      v14 = 0xE700000000000000;
      v15 = 0x656C7469547942;
      v16 = a4;
      switch(a3)
      {
        case 1:
          v15 = 0xD000000000000019;
          v14 = 0x8000000000B49380;
          goto LABEL_18;
        case 2:
          goto LABEL_18;
        case 3:
          v15 = 0xD000000000000012;
          v14 = 0x8000000000B49360;
          goto LABEL_18;
        case 4:
          v15 = 0xD000000000000018;
          v14 = 0x8000000000B49340;
          goto LABEL_18;
        case 5:
          v15 = 0xD000000000000012;
          v14 = 0x8000000000B49320;
          goto LABEL_18;
        case 6:
          v14 = 0xE800000000000000;
          v15 = 0x7473697472417942;
          goto LABEL_18;
        case 7:
          v15 = 0x6D75626C417942;
          goto LABEL_18;
        case 8:
          v15 = 0x696C79616C507942;
          v14 = 0xEE00657079547473;
          goto LABEL_18;
        case 9:
          v15 = 0xD000000000000010;
          v14 = 0x8000000000B49300;
          goto LABEL_18;
        case 10:
          v15 = 0x646E656373417942;
          v14 = 0xEF72616559676E69;
          goto LABEL_18;
        case 11:
          v15 = 0xD000000000000016;
          v14 = 0x8000000000B492E0;
          goto LABEL_18;
        case 12:
          v15 = 0xD000000000000017;
          v14 = 0x8000000000B492C0;
          goto LABEL_18;
        case 13:
LABEL_3:
          v11 = [objc_opt_self() standardUserDefaults];
          NSUserDefaults.setSortType(_:for:keyDomain:)(v16, v12, a5, a6);

LABEL_4:
          if (--v6)
          {
            continue;
          }

          return;
        default:
          v15 = 0xD000000000000018;
          v14 = 0x8000000000B493A0;
LABEL_18:
          v17 = 0xE700000000000000;
          v18 = 0x656C7469547942;
          switch(a4)
          {
            case 1:
              v17 = 0x8000000000B49380;
              if (v15 == 0xD000000000000019)
              {
                goto LABEL_41;
              }

              goto LABEL_44;
            case 2:
              goto LABEL_40;
            case 3:
              v17 = 0x8000000000B49360;
              if (v15 != 0xD000000000000012)
              {
                goto LABEL_44;
              }

              goto LABEL_41;
            case 4:
              v17 = 0x8000000000B49340;
              if (v15 != 0xD000000000000018)
              {
                goto LABEL_44;
              }

              goto LABEL_41;
            case 5:
              v17 = 0x8000000000B49320;
              if (v15 != 0xD000000000000012)
              {
                goto LABEL_44;
              }

              goto LABEL_41;
            case 6:
              v17 = 0xE800000000000000;
              if (v15 != 0x7473697472417942)
              {
                goto LABEL_44;
              }

              goto LABEL_41;
            case 7:
              if (v15 != 0x6D75626C417942)
              {
                goto LABEL_44;
              }

              goto LABEL_41;
            case 8:
              v17 = 0xEE00657079547473;
              if (v15 != 0x696C79616C507942)
              {
                goto LABEL_44;
              }

              goto LABEL_41;
            case 9:
              v17 = 0x8000000000B49300;
              if (v15 != 0xD000000000000010)
              {
                goto LABEL_44;
              }

              goto LABEL_41;
            case 10:
              v18 = 0x646E656373417942;
              v17 = 0xEF72616559676E69;
LABEL_40:
              if (v15 == v18)
              {
                goto LABEL_41;
              }

              goto LABEL_44;
            case 11:
              v17 = 0x8000000000B492E0;
              if (v15 != 0xD000000000000016)
              {
                goto LABEL_44;
              }

              goto LABEL_41;
            case 12:
              v17 = 0x8000000000B492C0;
              if (v15 != 0xD000000000000017)
              {
                goto LABEL_44;
              }

              goto LABEL_41;
            default:
              v17 = 0x8000000000B493A0;
              if (v15 != 0xD000000000000018)
              {
                goto LABEL_44;
              }

LABEL_41:
              if (v14 == v17)
              {
              }

              else
              {
LABEL_44:
                v19 = sub_ABB3C0();

                v16 = a4;
                if ((v19 & 1) == 0)
                {
                  goto LABEL_3;
                }
              }

              v16 = SortOptions.SortType.reversed.getter(a4);
              if (v16 == 13)
              {
                goto LABEL_4;
              }

              goto LABEL_3;
          }
      }
    }
  }
}

void *sub_2266D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v5 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF7C50;
    v33 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v31 = 0;
    sub_4F4CDC(&v31, v5, &v32);
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    v31 = 1;
    sub_4F4CDC(&v31, v5, &v32);
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    sub_13C80(0, &qword_DF1D50);
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v42.value._countAndFlagsBits = 0;
    v42.value._object = 0;
    v34.value.super.isa = 0;
    v34.is_nil = 0;
    v7.value = 0;
    *(inited + 32) = sub_ABA5B0(v38, v42, v34, v7, 0xFFFFFFFFFFFFFFFFLL, v33, v27);
    v8 = sub_22577C();
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    if (v8[2] == 1)
    {
      v11.super.super.isa = sub_225964(v9, v10, 0, 0xE000000000000000, *(v8 + 32)).super.super.isa;
    }

    else
    {
      v11.super.super.isa = sub_225CDC(v9, v10, v8);
    }

    isa = v11.super.super.isa;

    *(inited + 40) = isa;
    v33 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    if ((inited & 0xC000000000000001) != 0)
    {
      v13 = sub_3600A4(0, inited);
    }

    else
    {
      v13 = *(inited + 32);
    }

    v14 = v13;
    v15 = [v13 children];
    sub_13C80(0, &qword_DEAB30);
    v25 = sub_AB9760();
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v43.value._countAndFlagsBits = 0;
    v43.value._object = 0;
    v35.value.super.isa = 0;
    v35.is_nil = 0;
    v16.value = (&dword_0 + 1);
    sub_ABA5B0(v39, v43, v35, v16, 0xFFFFFFFFFFFFFFFFLL, v25, v28.super.super.isa);

    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    if ((inited & 0xC000000000000001) != 0)
    {
      v17 = sub_3600A4(1uLL, inited);
    }

    else
    {
      v17 = *(inited + 40);
    }

    v18 = v17;
    v19 = [v17 children];
    v26 = sub_AB9760();
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v44.value._countAndFlagsBits = 0;
    v44.value._object = 0;
    v36.value.super.isa = 0;
    v36.is_nil = 0;
    v20.value = (&dword_0 + 1);
    sub_ABA5B0(v40, v44, v36, v20, 0xFFFFFFFFFFFFFFFFLL, v26, v29);

    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    swift_setDeallocating();
    swift_arrayDestroy();
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v45.value._countAndFlagsBits = 0;
    v45.value._object = 0;
    v37.value.super.isa = 0;
    v37.is_nil = 0;
    v21.value = 0;
    v22 = sub_ABA5B0(v41, v45, v37, v21, 0xFFFFFFFFFFFFFFFFLL, v33, v30).super.super.isa;
    v23 = [(objc_class *)v22 children];
    v4 = sub_AB9760();
  }

  return v4;
}

uint64_t sub_226AF0()
{

  return swift_deallocObject();
}

uint64_t sub_226B30()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_226B70(uint64_t result)
{
  v2 = v1;
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_13;
    }

    v8 = *(v5 + v3);
    result = sub_1C734(&v12, v8);
    ++v3;
    if (result)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v13 = v6;
      v11 = v2;
      if ((result & 1) == 0)
      {
        result = sub_6D770(0, v6[2] + 1, 1);
        v6 = v13;
      }

      v10 = v6[2];
      v9 = v6[3];
      if (v10 >= v9 >> 1)
      {
        result = sub_6D770((v9 > 1), v10 + 1, 1);
        v6 = v13;
      }

      v6[2] = v10 + 1;
      *(v6 + v10 + 32) = v8;
      v3 = v7;
      v2 = v11;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_226C8C(void *a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MPModelPlaylist.canBeSorted.getter();
  result = 0;
  if (v6)
  {
    v8 = [a1 sortStorageKeyDomain];
    if (v8)
    {
      v9 = v8;
      v10 = sub_AB92A0();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v17[0] = v10;
    v17[1] = v12;
    static Logger.music(_:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
    Optional.expectNotNil(logger:file:line:function:)(0x8000000000B58E80, 200, 0x616C702874696E69, 0xEF293A7473696C79, v13, &v18);
    (*(v3 + 8))(v5, v2);

    v14 = v19;
    if (v19)
    {
      v15 = v18;
      type metadata accessor for SortOptionsController();
      v16 = swift_allocObject();
      sub_225174(&off_CEFC48, v15, v14);
      return v16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_226E74(uint64_t a1, uint64_t a2)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v32 = a1 + 32;
  v4 = &qword_DF9CE0;
  while (1)
  {
    v6 = *(v32 + v2);
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = NSUserDefaults.sortType(for:keyDomain:)(v6, *(a2 + 24), *(a2 + 32));

    v9 = SortOptions.SortType.sortDescriptors(for:)(v6, v8);
    v10 = v9;
    v11 = v9 >> 62;
    if (v9 >> 62)
    {
      v12 = sub_ABB060();
    }

    else
    {
      v12 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    }

    v13 = v3 >> 62;
    if (v3 >> 62)
    {
      v30 = sub_ABB060();
      v15 = v30 + v12;
      if (__OFADD__(v30, v12))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v14 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v38 = v12;
    if (result)
    {
      if (!v13)
      {
        v16 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_ABB060();
      goto LABEL_15;
    }

    if (v13)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_ABAE30();
    v3 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v19 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v18 >> 1) - v17) < v38)
    {
      goto LABEL_36;
    }

    v35 = v2;
    v36 = v3;
    v21 = v16 + 8 * v17 + 32;
    v31 = v16;
    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_38;
      }

      sub_22718C();
      for (i = 0; i != v19; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v4);
        v23 = sub_1CD6E4(v37, i, v10);
        v25 = v4;
        v26 = *v24;
        (v23)(v37, 0);
        *(v21 + 8 * i) = v26;
        v4 = v25;
      }
    }

    else
    {
      sub_13C80(0, &unk_DFDE50);
      swift_arrayInitWithCopy();
    }

    v2 = v35;
    v3 = v36;
    if (v38 >= 1)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v38);
      v29 = v27 + v38;
      if (v28)
      {
        goto LABEL_37;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v2 == v33)
    {
      return v3;
    }
  }

  v20 = v16;
  result = sub_ABB060();
  v16 = v20;
  v19 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v38 <= 0)
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

unint64_t sub_22718C()
{
  result = qword_DF9CE8;
  if (!qword_DF9CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF9CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF9CE8);
  }

  return result;
}

uint64_t objectdestroy_26Tm_0()
{

  return swift_deallocObject();
}

void sub_22725C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v5[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_title];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v5[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_isBottomHairlineHidden] = 0;
  v14 = &v5[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_playButtonHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v5[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_buildMenu];
  *v15 = 0;
  v15[1] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_bottomHairlineView] = 0;
  v16 = objc_opt_self();
  v17 = [v16 buttonWithType:1];
  [v16 easyTouchDefaultHitRectInsets];
  [v17 setHitRectInsets:?];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v21 = [v18 imageNamed:v20 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v21)
  {
    v22 = OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_playButton;
    [v19 setImage:v21 forState:0];

    *&v5[v22] = v19;
    v23 = OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_contextualActionsButton;
    v24 = SymbolButton.Configuration.contextualAction.unsafeMutableAddressor();
    sub_BD494(v24, v12);
    v25 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    *&v5[v23] = SymbolButton.init(configuration:handler:)(v12, 0, 0);
    v26 = OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_titleLabel;
    *&v5[v26] = sub_227D08();
    v27 = type metadata accessor for TVShowPlayBarView();
    v35.receiver = v5;
    v35.super_class = v27;
    v28 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
    v29 = OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_playButton;
    v30 = *&v28[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_playButton];
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_13C80(0, &qword_DF13D0);
    v33 = v28;
    v34 = v30;
    ControlEventHandling<>.on(_:handler:)(64, sub_2281D0, v31, v32);

    [v33 addSubview:*&v33[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_contextualActionsButton]];
    [v33 addSubview:*&v28[v29]];
    [v33 addSubview:*&v33[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_titleLabel]];
  }

  else
  {
    __break(1u);
  }
}

void sub_2275AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_playButtonHandler);
    if (v2)
    {

      v2(v3);
      sub_17654(v2);
    }
  }
}

uint64_t sub_22775C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (!v7 && (sub_ABB3C0() & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_titleLabel];

    String.trim()();

    v9 = sub_AB9260();

    [v8 setText:v9];

    [v2 setNeedsLayout];
  }
}

void sub_227858()
{
  v46.receiver = v0;
  v46.super_class = type metadata accessor for TVShowPlayBarView();
  objc_msgSendSuper2(&v46, "layoutSubviews");
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v45 = v2;
  [v0 music_inheritedLayoutInsets];
  v4 = v3;
  v6 = v5;
  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 bounds];
  v11 = UIEdgeInsetsInsetRect(v7, v8, v9, v10, v4, v6);
  v13 = v12;
  v42 = v12;
  v43 = v14;
  v16 = v15;
  v44 = v15;
  v17 = v14;
  v18 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_playButton];
  [v18 frame];
  v41 = v11;
  v47.origin.x = v11;
  v47.origin.y = v13;
  v47.size.width = v16;
  v47.size.height = v17;
  CGRectGetMinX(v47);
  sub_ABA470();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_ABA490();
  [v18 setFrame:0x403C000000000000];
  v48.origin.x = v20;
  v48.origin.y = v22;
  v48.size.width = v24;
  v48.size.height = v26;
  MaxX = CGRectGetMaxX(v48);
  v28 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_contextualActionsButton];
  [v28 frame];
  v49.origin.x = MaxX;
  v49.origin.y = v42;
  v49.size.width = v44 - v24;
  v49.size.height = v43;
  CGRectGetMaxX(v49);
  sub_ABA470();
  sub_ABA490();
  [v28 setFrame:0x403C000000000000];
  v29 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_titleLabel];
  sub_ABA490();
  [v29 setFrame:?];
  v30 = OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_isBottomHairlineHidden;
  if ((v0[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_isBottomHairlineHidden] & 1) == 0)
  {
    v31 = OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_bottomHairlineView;
    v32 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_bottomHairlineView];
    if (v32)
    {
      v33 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_bottomHairlineView];
    }

    else
    {
      v34 = [objc_allocWithZone(UIView) init];
      v35 = qword_DE6C70;
      v33 = v34;
      if (v35 != -1)
      {
        swift_once();
      }

      [v33 setBackgroundColor:qword_E718B0];
      [v0 addSubview:v33];
      v36 = *&v0[v31];
      *&v0[v31] = v33;

      v32 = 0;
    }

    v37 = v32;
    v50.origin.x = v41;
    v50.origin.y = v42;
    v50.size.width = v44;
    v50.size.height = v43;
    [v33 setFrame:{v41, CGRectGetMaxY(v50) - 1.0 / v45, v44, 1.0 / v45}];
  }

  v38 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_bottomHairlineView];
  if (v38)
  {
    v39 = v0[v30];
    v40 = v38;
    [v40 setHidden:v39];

    v1 = v40;
  }
}

id sub_227D08()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setAdjustsFontSizeToFitWidth:1];
  [v0 setAdjustsFontForContentSizeCategory:1];
  sub_13C80(0, &qword_DE6EE0);
  v1 = sub_ABA560();
  [v0 setFont:v1];

  [v0 setNumberOfLines:2];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  [v0 setTextColor:qword_E718D8];
  return v0;
}

id sub_227E2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVShowPlayBarView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_227F2C()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_isBottomHairlineHidden) = 0;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_playButtonHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_buildMenu);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_bottomHairlineView) = 0;
  v7 = objc_opt_self();
  v8 = [v7 buttonWithType:1];
  [v7 easyTouchDefaultHitRectInsets];
  [v8 setHitRectInsets:?];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v9 = [v9 imageNamed:v11 inBundle:qword_E71620 compatibleWithTraitCollection:0];

    if (v9)
    {
      break;
    }

    __break(1u);
LABEL_4:
    swift_once();
  }

  v12 = OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_playButton;
  [v10 setImage:v9 forState:0];

  *(v0 + v12) = v10;
  v13 = OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_contextualActionsButton;
  v14 = SymbolButton.Configuration.contextualAction.unsafeMutableAddressor();
  sub_BD494(v14, v3);
  v15 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v16 = v3;
  v17 = v0;
  *(v0 + v13) = SymbolButton.init(configuration:handler:)(v16, 0, 0);
  v18 = OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_titleLabel;
  *(v17 + v18) = sub_227D08();
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_228198()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_2281D8(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication14SearchHintCell__highlightedText];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___magnifierImageView] = 0;
  v13 = type metadata accessor for SearchHintCell();
  v17.receiver = v4;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_AB4ED0();
  v15 = sub_AB4F50();
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  sub_ABA2D0();

  return v14;
}

void sub_2283C4()
{
  v32.receiver = v0;
  v32.super_class = type metadata accessor for SearchHintCell();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 music_inheritedLayoutInsets];
  v12 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_228EA4();
  [v19 frame];

  v33.origin.x = v12;
  v33.origin.y = v14;
  v33.size.width = v16;
  v33.size.height = v18;
  CGRectGetMinX(v33);
  v20 = OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___magnifierImageView;
  [*&v0[OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___magnifierImageView] sizeThatFits:{v7, v9}];
  v21 = [v0 contentView];
  sub_ABA460();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = *&v0[v20];
  sub_ABA490();
  [v30 setFrame:?];

  v34.origin.x = v23;
  v34.origin.y = v25;
  v34.size.width = v27;
  v34.size.height = v29;
  CGRectGetMaxX(v34);
  v31 = sub_228DA4();
  sub_ABA490();
  [v31 setFrame:?];
}

void sub_2287B8(void *a1)
{
  v20.receiver = v1;
  v20.super_class = type metadata accessor for SearchHintCell();
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_AB92A0();
  v8 = v7;
  if (v6 == sub_AB92A0() && v8 == v9)
  {

    goto LABEL_12;
  }

  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    v12 = sub_228DA4();
    v13 = [v12 text];
    if (!v13)
    {

      return;
    }

    v14 = v13;
    v15 = sub_AB92A0();
    v17 = v16;

    v18 = *&v1[OBJC_IVAR____TtC16MusicApplication14SearchHintCell__highlightedText];
    v19 = *&v1[OBJC_IVAR____TtC16MusicApplication14SearchHintCell__highlightedText + 8];

    sub_2289C8(v15, v17, v18, v19);

LABEL_12:
  }
}

uint64_t sub_2289C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (v4 + OBJC_IVAR____TtC16MusicApplication14SearchHintCell__highlightedText);
  *v6 = a3;
  v6[1] = a4;

  v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA730);
  inited = swift_initStackObject();
  *(inited + 32) = NSFontAttributeName;
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 40) = v7;
  *(inited + 48) = NSForegroundColorAttributeName;
  v9 = qword_DE69E0;
  v10 = NSFontAttributeName;
  v11 = NSForegroundColorAttributeName;
  v12 = v10;
  v13 = v11;
  v14 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v15 = qword_DF9D60;
  *(inited + 56) = qword_DF9D60;
  v16 = v15;
  v17 = sub_96A34(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC590);
  swift_arrayDestroy();
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_AF85F0;
  *(v18 + 32) = v12;
  *(v18 + 40) = v14;
  *(v18 + 48) = v13;
  v19 = qword_DE69E8;
  v35 = v14;
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_DF9D68;
  *(v18 + 56) = qword_DF9D68;
  v21 = v20;
  v22 = sub_96A34(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_3E856C(v17);
  v23 = objc_allocWithZone(NSMutableAttributedString);
  v24 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  isa = sub_AB8FD0().super.isa;

  v26 = [v23 initWithString:v24 attributes:isa];

  if (a4)
  {
    String.trim()();
    v27 = sub_AB9260();
    v28 = sub_AB9260();
    v29 = [v27 rangeOfString:v28 options:129];
    v31 = v30;

    if (v29 == sub_AB2A10())
    {
    }

    else
    {
      sub_3E856C(v22);
      v32 = sub_AB8FD0().super.isa;

      [v26 addAttributes:v32 range:{v29, v31}];
    }
  }

  v33 = sub_228DA4();
  [v33 setAttributedText:v26];
}

id sub_228DA4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___titleLabel;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___titleLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___titleLabel];
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setNumberOfLines:0];
    if (qword_DE69E0 != -1)
    {
      swift_once();
    }

    [v4 setTextColor:qword_DF9D60];
    v5 = [v0 contentView];
    [v5 addSubview:v4];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_228EA4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___magnifierImageView;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___magnifierImageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___magnifierImageView];
  }

  else
  {
    v4 = sub_228F08(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228F08(void *a1)
{
  v2 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:1];
  v3 = sub_AB9260();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  if (qword_DE69D8 != -1)
  {
    swift_once();
  }

  [v5 setTintColor:qword_DF9D58];
  v6 = [a1 contentView];
  [v6 addSubview:v5];

  return v5;
}

id sub_2290F0(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

id sub_229150()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_22921C(void *a1, double a2)
{
  ObjectType = swift_getObjectType();
  [a1 displayScale];
  [v2 music_inheritedLayoutInsets];
  v7 = v6;
  v9 = a2 - v8;
  v10 = *&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalControl];
  if (v10)
  {
    [v10 intrinsicContentSize];
  }

  v11 = v9 - v7;
  [*&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_contextualActionsButton] intrinsicContentSize];
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    sub_AB3A00();
    sub_22A720(v2, a1, v11, 1.79769313e308);
    v12 = sub_22A168();
    [v12 sizeThatFits:{v11, 1.79769313e308}];

    return [a1 horizontalSizeClass];
  }

  else
  {
    v14 = sub_22AFCC();
    sub_AB3A00();
    v20.receiver = v2;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "bounds");
    Width = CGRectGetWidth(v21);
    sub_471A4();
    v15 = sub_AB38F0();
    v16 = 30.0;
    if ((v15 & 1) == 0)
    {
      v16 = 20.0;
    }

    v17 = v11 - (v14 + v16);
    sub_22A720(v2, a1, v17, 1.79769313e308);
    v18 = sub_22A168();
    [v18 sizeThatFits:{v17, 1.79769313e308, 0x408F400000000000, *&Width}];

    return [a1 horizontalSizeClass];
  }
}

uint64_t sub_2294C0(void *a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusObserver;
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusObserver);
    if (v6)
    {
      v7 = a1;
      v8 = v6;
    }

    else
    {
      type metadata accessor for LibraryAddKeepLocalStatusObserver();
      swift_allocObject();
      v12 = a1;
      v8 = sub_259C34();
      *(v3 + v5) = v8;
      swift_retain_n();
    }

    v13 = *(v3 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusObserverBehaviorType);
    swift_retain_n();
    sub_259B30(v13);
    *(v8 + 4) = UIScreen.Dimensions.size.getter;
    *(v8 + 5) = 0;

    v14 = *(v3 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_forceKeepLocalDownloadVisiblity);
    v15 = v8[48];
    v8[48] = v14;
    if (v14 != v15)
    {
      sub_13C80(0, &qword_DE8ED0);

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_206F5C, v8);
    }

    v16 = *(v3 + v5);
    if (v16 && (v17 = *(v16 + 72)) != 0)
    {
      sub_13C80(0, &qword_DEDE20);
      v18 = a1;
      v19 = v17;
      v20 = sub_ABA790();

      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v21 = a1;
    }

    v18 = *(v8 + 9);
    *(v8 + 9) = a1;
    v22 = a1;
    sub_25A2AC(v18);

LABEL_15:
    v23 = [objc_opt_self() areAnimationsEnabled];
    v24 = v23;
    v25 = *(v8 + 104);
    v29 = *(v8 + 88);
    v30 = v25;
    v31 = *(v8 + 120);
    sub_22CA70(&v29, v23);

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v24;
    *(v8 + 4) = sub_22DA2C;
    *(v8 + 5) = v27;
  }

  v10 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusObserver;
  v11 = *(v3 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusObserver);
  if (v11)
  {
    *(v11 + 32) = UIScreen.Dimensions.size.getter;
    *(v11 + 40) = 0;
  }

  *(v3 + v10) = 0;

  v29 = 0u;
  v30 = 0u;
  v31 = xmmword_B03DA0;
  return sub_22CA70(&v29, a2 & 1);
}

char *sub_2297C0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_episodeInformationItems] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_lockupImageArtworkCatalog] = 0;
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_artworkPlaceholder];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 2) = 0u;
  v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_isHeaderLockupBlurEnabled] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playbackPosition] = 0;
  v19 = &v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playButtonHandler];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showNameButtonHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_buildMenu];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusObserver] = 0;
  v23 = &v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = xmmword_B03DA0;
  *&v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusControllableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusObserverBehaviorType] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_forceKeepLocalDownloadVisiblity] = 0;
  v24 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView;
  *&v5[v24] = [objc_allocWithZone(type metadata accessor for VideoHeaderLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headlineLabel;
  v26 = [objc_allocWithZone(UILabel) init];
  [v26 setNumberOfLines:1];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v26 setTextColor:qword_E718C8];
  *&v5[v25] = v26;
  v27 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_titleLabel;
  v28 = [objc_allocWithZone(UILabel) init];
  [v28 setNumberOfLines:0];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v29 = qword_E718D8;
  [v28 setTextColor:qword_E718D8];
  *&v5[v27] = v28;
  *&v5[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___showNameButton] = 0;
  type metadata accessor for ParagraphView();
  v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_4CE4D0(3);
  v31 = v30[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets];
  v30[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets] = 0;
  if (v31 == 1)
  {
    [v30 setNeedsLayout];
    v32 = *&v30[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v32)
    {

      v32(v30);
      sub_17654(v32);
    }
  }

  v33 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionTextView;
  v34 = *&v30[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle];
  *&v30[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle] = 1;
  sub_31838(v34);
  v35 = sub_4CF7F0();
  [v35 setTextColor:v29];

  *&v5[v33] = v30;
  *&v5[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___episodeInformationBadgingView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalControl] = 0;
  v36 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_contextualActionsButton;
  v37 = SymbolButton.Configuration.contextualAction.unsafeMutableAddressor();
  sub_BD494(v37, v13);
  v38 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  *&v5[v36] = SymbolButton.init(configuration:handler:)(v13, 0, 0);
  v105.receiver = v5;
  v105.super_class = ObjectType;
  v103 = objc_msgSendSuper2(&v105, "initWithFrame:", a1, a2, a3, a4);
  v104 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView;
  v39 = *&v103[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView];
  v40 = v103;
  v41 = v39;
  v100 = v41;
  v42 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v44 = *v42;
  v43 = v42[1];
  v45 = v42[2];
  v46 = v42[3];
  v47 = v42[4];
  v101 = v42[5];
  v48 = v101;
  v102 = v47;
  v49 = &v41[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder];
  v50 = *&v41[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder];
  v98 = *&v41[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 8];
  v99 = v50;
  v51 = *&v41[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 24];
  v97 = *&v41[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 16];
  v52 = *&v41[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 40];
  v96 = *&v41[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 32];
  v95 = v52;
  *v49 = v44;
  *(v49 + 1) = v43;
  v53 = v43;
  v94 = v43;
  *(v49 + 2) = v45;
  *(v49 + 3) = v46;
  *(v49 + 4) = v47;
  *(v49 + 5) = v48;
  v54 = v45;
  v55 = v46;
  v56 = v44;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  v93 = v58;
  v62 = v59;
  v63 = v60;
  v64 = v61;
  sub_2F1C8(v99, v98, v97, v51);
  v65 = v100;
  v66 = *&v100[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent];
  v67 = *(v66 + 168);
  v106[0] = *(v66 + 152);
  v106[1] = v67;
  v106[2] = *(v66 + 184);
  v68 = v94;
  *(v66 + 152) = v44;
  *(v66 + 160) = v68;
  *(v66 + 168) = v45;
  *(v66 + 176) = v46;
  v69 = v101;
  *(v66 + 184) = v102;
  *(v66 + 192) = v69;
  v70 = v63;
  v71 = v64;
  v72 = v93;
  v73 = v62;

  sub_75948(v106);
  sub_12E1C(v106, &unk_DF8690);

  v75 = v103;
  v74 = v104;
  v76 = *&v103[v104];
  v77 = v76[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle];
  v76[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle] = 1;
  v78 = v76;
  sub_25D814(v77);

  v79 = *&v75[v74];
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = &v79[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler];
  v82 = *&v79[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler];
  *v81 = sub_22DECC;
  v81[1] = v80;
  v83 = v79;

  sub_17654(v82);

  v84 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionTextView;
  v85 = *&v40[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionTextView];
  v86 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v87 = v85;

  v88 = &v87[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
  v89 = *&v87[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
  *v88 = sub_22DED4;
  v88[1] = v86;

  sub_17654(v89);

  [v40 addSubview:*&v75[v74]];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headlineLabel]];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_titleLabel]];
  v90 = sub_22A108();
  [v40 addSubview:v90];

  [v40 addSubview:*&v40[v84]];
  v91 = sub_22A168();
  [v40 addSubview:v91];

  [v40 addSubview:*&v40[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_contextualActionsButton]];
  return v40;
}

void sub_229FE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playButtonHandler);
    if (v2)
    {

      v2(v3);
      sub_17654(v2);
    }
  }
}

void sub_22A06C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
    v2 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
    if (v2)
    {

      v2(v1);
      sub_17654(v2);
    }
  }
}

id sub_22A108()
{
  v1 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___showNameButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___showNameButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___showNameButton);
  }

  else
  {
    v4 = sub_22D368();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22A168()
{
  v1 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___episodeInformationBadgingView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___episodeInformationBadgingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___episodeInformationBadgingView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(type metadata accessor for BadgingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_27F854(UIFontTextStyleSubheadline);
    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_22A254(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline] != result || *&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headlineLabel];

      String.trim()();

      sub_AB9390();

      v5 = sub_AB9260();

      [v4 setText:v5];

      result = [v2 setNeedsLayout];
      v6 = *&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
      if (v6)
      {

        v6(v2);

        return sub_17654(v6);
      }
    }
  }

  return result;
}

uint64_t sub_22A3A4(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_titleLabel];

      String.trim()();

      v5 = sub_AB9260();

      [v4 setText:v5];

      result = [v2 setNeedsLayout];
      v6 = *&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
      if (v6)
      {

        v6(v2);

        return sub_17654(v6);
      }
    }
  }

  return result;
}

uint64_t sub_22A4D8(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionTextView];

      v5 = String.trim()();

      v6 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text];
      v7 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text + 8];
      *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text] = v5;
      sub_4CEE20(v6, v7);

      result = [v2 setNeedsLayout];
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
      if (v8)
      {

        v8(v2);

        return sub_17654(v8);
      }
    }
  }

  return result;
}

id sub_22A608()
{
  v1 = sub_22A168();
  *&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_badgingItems] = *&v0[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_episodeInformationItems];

  [v1 setNeedsLayout];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler];
  if (v2)
  {

    v2(v1);
    sub_17654(v2);
  }

  result = [v0 setNeedsLayout];
  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
  if (v4)
  {

    v4(v0);

    return sub_17654(v4);
  }

  return result;
}

double sub_22A720(uint64_t a1, void *a2, double a3, double a4)
{
  sub_22AA7C(a2);
  v8 = *(a1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline + 8);
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = *(a1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = [a2 horizontalSizeClass];
    sub_13C80(0, &qword_DE6EE0);
    if (v10 == &dword_0 + 1)
    {
      v11 = sub_ABA550();
      v12 = 20.0;
    }

    else
    {
      v11 = sub_ABA580();
      v12 = 32.0;
    }
  }

  else
  {
    v12 = 0.0;
  }

  v13 = *(a1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title + 8);
  if ((v13 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v14 = *(a1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title) & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = *(a1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_titleLabel);
    v16 = [a2 horizontalSizeClass];
    sub_13C80(0, &qword_DE6EE0);
    v17 = sub_ABA550();
    v18 = v17;
    v19 = 40.0;
    if (v16 == &dword_0 + 1)
    {
      v19 = 44.0;
    }

    [v17 _scaledValueForValue:v19];

    [v15 sizeThatFits:{a3, a4}];
    [v15 _firstBaselineOffsetFromTop];
    [v15 _baselineOffsetFromBottom];
    sub_AB39F0();
    v21 = v20;

    v12 = v12 + v21;
  }

  v22 = *(a1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName + 8);
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v23 = *(a1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName) & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = sub_22A108();
    v25 = [a2 horizontalSizeClass];
    sub_13C80(0, &qword_DE6EE0);
    v26 = sub_ABA560();
    v27 = v26;
    v28 = 32.0;
    if (v25 == &dword_0 + 1)
    {
      v28 = 28.0;
    }

    [v26 _scaledValueForValue:v28];
    v30 = v29;

    v31 = sub_22AD7C(v24, v30, a3, a4);
    v12 = v12 + v31;
  }

  v32 = *(a1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText + 8);
  if ((v32 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v32) & 0xF;
  }

  else
  {
    v33 = *(a1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = *(a1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionTextView);
    sub_4CDE34(a3, a4);

    sub_AB3A00();
    return v12 + v35;
  }

  return v12;
}

void sub_22AA7C(void *a1)
{
  v2 = v1;
  if ([a1 horizontalSizeClass])
  {
    v4 = [a1 horizontalSizeClass];
    sub_13C80(0, &qword_DE6EE0);
    if (v4 == &dword_0 + 1)
    {
      v5 = sub_ABA550();
    }

    else
    {
      v5 = sub_ABA580();
    }

    [*(v1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headlineLabel) setFont:{v5, v5}];
    [a1 horizontalSizeClass];
    v6 = sub_ABA550();
    [*(v1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_titleLabel) setFont:v6];
    [a1 horizontalSizeClass];
    v7 = sub_ABA560();
    v8 = sub_22A108();
    v9 = [v8 titleLabel];

    if (v9)
    {
      [v9 setFont:v7];
    }

    v10 = *(v2 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionTextView);
    v11 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v12 = &v10[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler];
    v13 = *&v10[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler];
    *v12 = sub_22DA78;
    v12[1] = v11;
    swift_retain_n();
    v14 = v10;
    sub_17654(v13);
    v15 = [v14 traitCollection];
    [v15 horizontalSizeClass];
    v16 = sub_ABA560();

    v17 = sub_4CF7F0();
    v20 = v16;
    [v17 setFont:v20];

    v18 = sub_4CF810();
    [v18 setFont:v20];
  }
}

double sub_22AD7C(void *a1, double a2, double a3, double a4)
{
  v7 = [a1 titleLabel];
  if (!v7)
  {
    return 0.0;
  }

  v8 = v7;
  [v7 sizeThatFits:{a3, a4}];
  v10 = v9;
  v12 = v11;

  [a1 contentRectForBounds:{0.0, 0.0, v10, v12}];
  [a1 titleRectForContentRect:?];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  CGRectGetMinY(v24);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v10;
  v25.size.height = v12;
  MinY = CGRectGetMinY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGRectGetMinX(v26);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = v10;
  v27.size.height = v12;
  CGRectGetMinX(v27);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v10;
  v28.size.height = v12;
  CGRectGetMaxY(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectGetMaxY(v29);
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = v10;
  v30.size.height = v12;
  CGRectGetMaxX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v17 = [a1 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 _firstBaselineOffsetFromTop];
  }

  v19 = [a1 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 _baselineOffsetFromBottom];
  }

  sub_AB39F0();
  return result;
}

double sub_22AFCC()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 traitCollection];
  [v2 displayScale];
  v14.receiver = v0;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "bounds");
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 horizontalSizeClass];
  [v0 music_inheritedLayoutInsets];
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetWidth(v15);
  sub_471A4();
  sub_AB38F0();
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetWidth(v16);
  sub_AB3A00();
  v12 = v11;

  return v12;
}

uint64_t sub_22B15C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView);
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_artworkCachingReference);
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCachingReference) = v2;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent) + 16) = v2;
}

void sub_22B320(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  ObjectType = swift_getObjectType();
  v28.receiver = v9;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v27.receiver = v9;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, *a2, a3, a4, a5, a6);
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  Width = CGRectGetWidth(v29);
  v25.receiver = v9;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, *a1);
  v24 = CGRectGetWidth(v30);
  if (sub_AB38D0())
  {
    v23 = [v9 traitCollection];
    sub_22AA7C(v23);
  }
}

void sub_22B450()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v247 - v4;
  v277.receiver = v1;
  v277.super_class = ObjectType;
  objc_msgSendSuper2(&v277, "layoutSubviews");
  v276.receiver = v1;
  v276.super_class = ObjectType;
  objc_msgSendSuper2(&v276, "bounds");
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = COERCE_DOUBLE([v1 traitCollection]);
  v15 = [*&v14 horizontalSizeClass];
  [*&v14 displayScale];
  v257 = v16;
  [v1 music_inheritedLayoutInsets];
  v18 = v17;
  v20 = v19;
  [v1 effectiveUserInterfaceLayoutDirection];
  v262 = v13;
  v21 = UIEdgeInsetsInsetRect(v7, v9, v11, v13, v18, v20);
  v23 = v22;
  v256 = v21;
  v275.origin.x = v21;
  v275.origin.y = v22;
  v253 = v24;
  v254 = v25;
  v275.size.width = v24;
  v275.size.height = v25;
  v263 = v9;
  v26 = v9;
  v261 = v7;
  v27 = v11;
  if (v15 != &dword_0 + 1)
  {
    v27 = sub_22AFCC();
    v26 = v23;
    v7 = v20;
  }

  v255 = v23;
  sub_AB3A00();
  v29 = v28;
  v30 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView];
  v31 = v261;
  v32 = v262;
  v33 = v263;
  sub_ABA490();
  [v30 setFrame:?];
  v260 = v11;
  if (v15 == &dword_0 + 1)
  {
    v34 = sub_ABA680();
    (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
    v35 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
    swift_beginAccess();
    sub_8A01C(v5, v30 + v35);
    swift_endAccess();
    sub_25D6BC();
    sub_12E1C(v5, &unk_DFFBC0);
    v278.origin.x = v7;
    v278.origin.y = v26;
    v278.size.width = v27;
    v278.size.height = v29;
    MaxY = v255 + CGRectGetMaxY(v278);
    v275.origin.y = MaxY;
    v279.origin.x = v7;
    v279.origin.y = v26;
    v279.size.width = v27;
    v279.size.height = v29;
    v37 = v254 - CGRectGetMaxY(v279);
    v275.size.height = v37;
    v38 = v256;
    v258 = v256;
    v259 = v253;
  }

  else
  {
    v39 = UIView.Corner.large.unsafeMutableAddressor();
    v40 = sub_ABA680();
    v41 = *(v40 - 8);
    (*(v41 + 16))(v5, v39, v40);
    (*(v41 + 56))(v5, 0, 1, v40);
    v42 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
    swift_beginAccess();
    sub_8A01C(v5, v30 + v42);
    swift_endAccess();
    sub_25D6BC();
    sub_12E1C(v5, &unk_DFFBC0);
    v280.origin.x = v31;
    v280.origin.y = v33;
    v280.size.width = v11;
    v280.size.height = v32;
    Width = CGRectGetWidth(v280);
    v267 = 0x408F400000000000;
    sub_471A4();
    if (sub_AB38F0())
    {
      v43 = 30.0;
    }

    else
    {
      v43 = 20.0;
    }

    v281.origin.x = v7;
    v281.origin.y = v26;
    v281.size.width = v27;
    v281.size.height = v29;
    v44 = v43 + CGRectGetMaxX(v281);
    v37 = v254;
    v258 = v44;
    v259 = v253 - (v27 + v43);
    v275.origin.x = v44;
    v275.size.width = v259;
    MaxY = v255;
    v38 = v256;
  }

  v45 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline + 8];
  if ((v45 & 0x2000000000000000) != 0)
  {
    v46 = HIBYTE(v45) & 0xF;
  }

  else
  {
    v46 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline] & 0xFFFFFFFFFFFFLL;
  }

  LODWORD(v252) = v46 == 0;
  p_name = (&JSDateDescriptor + 24);
  if (v46)
  {
    v48 = [*&v14 horizontalSizeClass];
    sub_13C80(0, &qword_DE6EE0);
    if (v48 == &dword_0 + 1)
    {
      v49 = sub_ABA550();
      v50 = 20.0;
    }

    else
    {
      v49 = sub_ABA580();
      v50 = 32.0;
    }

    v52 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headlineLabel];
    [v49 _scaledValueForValue:v50];
    v251 = v53;
    v54 = v52;
    [v54 frame];
    swift_beginAccess();
    v56 = v275.size.width;
    height = v275.size.height;
    [v54 sizeThatFits:{v275.size.width, v275.size.height}];
    sub_AB3A00();
    v58 = v57;
    sub_AB3A00();
    v249 = v59;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    x = v275.origin.x;
    y = v275.origin.y;
    v282.origin.x = v275.origin.x;
    v282.origin.y = v275.origin.y;
    v282.size.width = v56;
    v282.size.height = height;
    v63 = CGRectGetMinX(v282) - left;
    v258 = x;
    v259 = v56;
    v283.origin.x = x;
    v283.origin.y = y;
    v283.size.width = v56;
    v283.size.height = height;
    CGRectGetMinY(v283);
    [v54 _firstBaselineOffsetFromTop];
    sub_AB3A00();
    v65 = v64;
    v251 = v58;
    v66 = v249;
    sub_ABA490();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    type metadata accessor for CGRect(0);
    [v54 frame];
    Width = v75;
    v272 = v76;
    v273 = v77;
    v274 = v78;
    v267 = *&v68;
    v268 = v70;
    v269 = v72;
    v270 = v74;
    if (sub_AB38D0())
    {
      [v54 setFrame:{v68, v70, v72, v74}];
    }

    v284.origin.x = v63;
    v284.origin.y = v65;
    v79 = v251;
    v284.size.width = v251;
    v284.size.height = v66;
    MaxY = CGRectGetMaxY(v284);
    v275.origin.y = MaxY;
    v285.origin.x = v63;
    v285.origin.y = v65;
    v285.size.width = v79;
    v285.size.height = v66;
    v37 = height - CGRectGetHeight(v285);
    v275.size.height = v37;
    v286.origin.x = v63;
    v286.origin.y = v65;
    v286.size.width = v79;
    v286.size.height = v66;
    v80 = CGRectGetMaxY(v286) - bottom;
    [v54 _baselineOffsetFromBottom];
    v82 = v81;

    v51 = v80 - v82;
    v38 = v256;
    p_name = &JSDateDescriptor.name;
  }

  else
  {
    v51 = 0.0;
  }

  v83 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title + 8];
  if ((v83 & 0x2000000000000000) != 0)
  {
    v84 = HIBYTE(v83) & 0xF;
  }

  else
  {
    v84 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title] & 0xFFFFFFFFFFFFLL;
  }

  if (v84)
  {
    v251 = v51;
    v85 = [*&v14 horizontalSizeClass];
    sub_13C80(0, &qword_DE6EE0);
    v86 = sub_ABA550();
    if (v85 == &dword_0 + 1)
    {
      v87 = 44.0;
    }

    else
    {
      v87 = 40.0;
    }

    v88 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_titleLabel];
    [v86 _scaledValueForValue:v87];
    v89 = v88;
    [v89 frame];
    swift_beginAccess();
    v91 = v275.size.width;
    v90 = v275.size.height;
    [v89 sizeThatFits:{v275.size.width, v275.size.height}];
    sub_AB3A00();
    v252 = v92;
    sub_AB3A00();
    v94 = v93;
    v95 = UIEdgeInsetsZero.left;
    v97 = v275.origin.x;
    v96 = v275.origin.y;
    v287.origin.x = v275.origin.x;
    v287.origin.y = v275.origin.y;
    v287.size.width = v91;
    v287.size.height = v90;
    v98 = CGRectGetMinX(v287) - v95;
    v258 = v97;
    v259 = v91;
    if (!v46)
    {
      v288.origin.x = v97;
      v288.origin.y = v96;
      v288.size.width = v91;
      v288.size.height = v90;
      CGRectGetMinY(v288);
    }

    v251 = UIEdgeInsetsZero.bottom;
    [v89 p_name[441]];
    sub_AB3A00();
    v100 = v99;
    sub_ABA490();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    type metadata accessor for CGRect(0);
    [v89 frame];
    Width = v109;
    v272 = v110;
    v273 = v111;
    v274 = v112;
    v267 = *&v102;
    v268 = v104;
    v269 = v106;
    v270 = v108;
    if (sub_AB38D0())
    {
      [v89 setFrame:{v102, v104, v106, v108}];
    }

    v289.origin.x = v98;
    v289.origin.y = v100;
    v113 = v252;
    v289.size.width = v252;
    v289.size.height = v94;
    MaxY = CGRectGetMaxY(v289);
    v275.origin.y = MaxY;
    v290.origin.x = v98;
    v290.origin.y = v100;
    v290.size.width = v113;
    v290.size.height = v94;
    v37 = v90 - CGRectGetHeight(v290);
    v275.size.height = v37;
    v291.origin.x = v98;
    v291.origin.y = v100;
    v291.size.width = v113;
    v291.size.height = v94;
    v114 = CGRectGetMaxY(v291) - v251;
    [v89 _baselineOffsetFromBottom];
    v116 = v115;

    LODWORD(v252) = 0;
    v51 = v114 - v116;
    v38 = v256;
  }

  v117 = &v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
  v118 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName + 8];
  v119 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName] & 0xFFFFFFFFFFFFLL;
  if ((v118 & 0x2000000000000000) != 0)
  {
    v119 = HIBYTE(v118) & 0xF;
  }

  if (v119)
  {
    v251 = v51;
    v120 = [*&v14 horizontalSizeClass];
    sub_13C80(0, &qword_DE6EE0);
    v121 = sub_ABA560();
    if (v120 == &dword_0 + 1)
    {
      v122 = 28.0;
    }

    else
    {
      v122 = 32.0;
    }

    v123 = sub_22A108();
    [v121 _scaledValueForValue:v122];
    v249 = v124;
    v125 = v123;
    [v125 frame];
    swift_beginAccess();
    v126 = v275.size.height;
    v259 = v275.size.width;
    [v125 sizeThatFits:{v275.size.width, v275.size.height}];
    sub_AB3A00();
    v128 = v127;
    sub_AB3A00();
    v130 = v129;
    [v125 contentRectForBounds:{0.0, 0.0, v128, v129}];
    [v125 titleRectForContentRect:?];
    v131 = v292.origin.x;
    v132 = v292.origin.y;
    v133 = v292.size.width;
    v134 = v292.size.height;
    MinY = CGRectGetMinY(v292);
    v293.origin.x = 0.0;
    v293.origin.y = 0.0;
    v293.size.width = v128;
    v293.size.height = v130;
    v248 = MinY - CGRectGetMinY(v293);
    v294.origin.x = v131;
    v294.origin.y = v132;
    v294.size.width = v133;
    v294.size.height = v134;
    MinX = CGRectGetMinX(v294);
    v295.origin.x = 0.0;
    v295.origin.y = 0.0;
    v295.size.width = v128;
    v295.size.height = v130;
    v137 = MinX - CGRectGetMinX(v295);
    v296.origin.x = 0.0;
    v296.origin.y = 0.0;
    v296.size.width = v128;
    v296.size.height = v130;
    CGRectGetMaxY(v296);
    v297.origin.x = v131;
    v297.origin.y = v132;
    v297.size.width = v133;
    v297.size.height = v134;
    CGRectGetMaxY(v297);
    v298.origin.x = 0.0;
    v298.origin.y = 0.0;
    v298.size.width = v128;
    v298.size.height = v130;
    CGRectGetMaxX(v298);
    v299.origin.x = v131;
    v299.origin.y = v132;
    v299.size.width = v133;
    v299.size.height = v134;
    v138 = v259;
    CGRectGetMaxX(v299);
    v140 = v275.origin.x;
    v139 = v275.origin.y;
    v300.origin.x = v275.origin.x;
    v300.origin.y = v275.origin.y;
    v300.size.width = v138;
    v300.size.height = v126;
    v141 = CGRectGetMinX(v300) - v137;
    v258 = v140;
    bottom = v126;
    if (LOBYTE(v252))
    {
      v301.origin.x = v140;
      v301.origin.y = v139;
      v301.size.width = v138;
      v301.size.height = v126;
      CGRectGetMinY(v301);
      v142 = [v125 titleLabel];
      if (v142)
      {
        v143 = v142;
        [v142 p_name[441]];
      }

      v146 = &selRef__authenticateReturningError_;
    }

    else
    {
      v144 = [v125 titleLabel];
      if (v144)
      {
        v145 = v144;
        [v144 p_name[441]];
      }

      v146 = &selRef__authenticateReturningError_;
    }

    sub_AB3A00();
    v148 = v147;
    sub_ABA490();
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v156 = v155;
    type metadata accessor for CGRect(0);
    [v125 frame];
    Width = v157;
    v272 = v158;
    v273 = v159;
    v274 = v160;
    v267 = *&v150;
    v268 = v152;
    v269 = v154;
    v270 = v156;
    if (sub_AB38D0())
    {
      [v125 v146[262]];
    }

    v302.origin.x = v141;
    v302.origin.y = v148;
    v302.size.width = v128;
    v302.size.height = v130;
    MaxY = CGRectGetMaxY(v302);
    v275.origin.y = MaxY;
    v303.origin.x = v141;
    v303.origin.y = v148;
    v303.size.width = v128;
    v303.size.height = v130;
    v37 = bottom - CGRectGetHeight(v303);
    v275.size.height = v37;
    v304.origin.x = v141;
    v304.origin.y = v148;
    v304.size.width = v128;
    v304.size.height = v130;
    v161 = [v125 titleLabel];
    if (v161)
    {
      v162 = v161;
      [v161 _baselineOffsetFromBottom];

      v121 = v125;
    }

    else
    {
      v162 = v125;
    }

    v38 = v256;
  }

  v163 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText + 8];
  if ((v163 & 0x2000000000000000) != 0)
  {
    v164 = HIBYTE(v163) & 0xF;
  }

  else
  {
    v164 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText] & 0xFFFFFFFFFFFFLL;
  }

  if (v164)
  {
    v257 = v14;
    v165 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionTextView;
    v166 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionTextView];
    v167 = sub_4CF810();
    [v167 textContainerInset];
    v169 = v168;
    v170 = [v167 textContainer];
    [v170 lineFragmentPadding];

    swift_beginAccess();
    v172 = v275.origin.x;
    v171 = v275.origin.y;
    v173 = v275.size.width;
    v174 = v275.size.height;
    v175 = CGRectGetMinY(v275);
    v176 = *(v117 + 1);
    v177 = *v117 & 0xFFFFFFFFFFFFLL;
    if ((v176 & 0x2000000000000000) != 0)
    {
      v177 = HIBYTE(v176) & 0xF;
    }

    v178 = 0.0;
    if (v177)
    {
      v178 = v169;
    }

    v179 = v175 - v178;
    v258 = v172;
    v305.origin.x = v172;
    v305.origin.y = v171;
    v305.size.width = v173;
    v305.size.height = v174;
    v180 = CGRectGetMinX(v305);
    v181 = *&v1[v165];
    v259 = v173;
    v252 = v174;
    sub_4CDE34(v173, v174);
    v183 = v182;
    v185 = v184;

    v186 = *&v1[v165];
    bottom = v180;
    v251 = v179;
    v248 = v185;
    v249 = v183;
    sub_ABA490();
    v188 = v187;
    v190 = v189;
    v192 = v191;
    v194 = v193;
    v195 = type metadata accessor for ParagraphView();
    v266.receiver = v186;
    v266.super_class = v195;
    objc_msgSendSuper2(&v266, "frame");
    v197 = v196;
    v199 = v198;
    v201 = v200;
    v203 = v202;
    v265.receiver = v186;
    v265.super_class = v195;
    objc_msgSendSuper2(&v265, "setFrame:", v188, v190, v192, v194);
    type metadata accessor for CGRect(0);
    Width = v197;
    v272 = v199;
    v273 = v201;
    v274 = v203;
    v264.receiver = v186;
    v264.super_class = v195;
    objc_msgSendSuper2(&v264, "frame");
    v267 = v204;
    v268 = v205;
    v269 = v206;
    v270 = v207;
    if (sub_AB38D0())
    {
      [v186 setNeedsLayout];
      v208 = *&v186[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v208)
      {

        v208(v186);
        sub_17654(v208);
      }
    }

    v210 = bottom;
    v209 = v251;
    v306.origin.x = bottom;
    v306.origin.y = v251;
    v212 = v248;
    v211 = v249;
    v306.size.width = v249;
    v306.size.height = v248;
    MaxY = CGRectGetMaxY(v306);
    v275.origin.y = MaxY;
    v307.origin.x = v210;
    v307.origin.y = v209;
    v307.size.width = v211;
    v307.size.height = v212;
    v37 = v252 - CGRectGetHeight(v307);
    v38 = v256;
    v14 = v257;
  }

  v257 = v37;
  v251 = MaxY;
  v213 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalControl];
  if (v213)
  {
    v214 = v213;
    [v214 sizeThatFits:{0.0, 0.0}];
    v216 = v215;
    v308.origin.x = v38;
    v218 = v254;
    v217 = v255;
    v308.origin.y = v255;
    v219 = v253;
    v308.size.width = v253;
    v308.size.height = v254;
    CGRectGetMaxY(v308);
    v220 = v214;
    v252 = v216;
    sub_ABA490();
    [v220 setFrame:?];
  }

  else
  {
    v252 = 0.0;
    v218 = v254;
    v217 = v255;
    v219 = v253;
  }

  v221 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_contextualActionsButton];
  [v221 sizeThatFits:{0.0, 0.0}];
  v223 = v222;
  v309.origin.x = v38;
  v309.origin.y = v217;
  v309.size.width = v219;
  v309.size.height = v218;
  CGRectGetMaxX(v309);
  v310.origin.x = v38;
  v310.origin.y = v217;
  v310.size.width = v219;
  v310.size.height = v218;
  CGRectGetMaxY(v310);
  sub_ABA490();
  [v221 setFrame:?];
  v224 = v252;
  if (v252 <= v223)
  {
    v224 = v223;
  }

  v225 = v257 - v224;
  v226 = sub_22A168();
  v227 = v259;
  [v226 sizeThatFits:{v259, v225}];

  v228 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___episodeInformationBadgingView;
  v229 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___episodeInformationBadgingView];
  v230 = OBJC_IVAR____TtC16MusicApplication11BadgingView_itemLabels;
  swift_beginAccess();
  v231 = *&v229[v230];
  if (v231 >> 62)
  {
    v237 = sub_ABB060();
    v232 = v258;
    if (!v237)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v232 = v258;
    if (!*(&dword_10 + (v231 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_75;
    }
  }

  if ((v231 & 0xC000000000000001) != 0)
  {
    v245 = v229;

    v235 = sub_36160C(0, v231);
  }

  else
  {
    if (!*(&dword_10 + (v231 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_86;
    }

    v233 = *(v231 + 32);
    v234 = v229;
    v235 = v233;
  }

  [v235 _baselineOffsetFromBottom];

  v236 = [v1 traitCollection];
  [v236 displayScale];

  sub_AB3A00();
LABEL_75:
  [*&v14 horizontalSizeClass];
  v311.origin.x = v232;
  v311.origin.y = v251;
  v311.size.width = v227;
  v311.size.height = v225;
  CGRectGetMinY(v311);
  v238 = *&v1[v228];
  v239 = OBJC_IVAR____TtC16MusicApplication11BadgingView_itemLabels;
  swift_beginAccess();
  v240 = *&v238[v239];
  if (v240 >> 62)
  {
    if (!sub_ABB060())
    {
      goto LABEL_82;
    }
  }

  else if (!*(&dword_10 + (v240 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_82:
    v244 = *&v1[v228];
    sub_ABA490();
    [v244 setFrame:?];

    return;
  }

  if ((v240 & 0xC000000000000001) != 0)
  {
    v246 = v238;

    v243 = sub_36160C(0, v240);

    goto LABEL_80;
  }

  if (*(&dword_10 + (v240 & 0xFFFFFFFFFFFFFF8)))
  {
    v241 = *(v240 + 32);
    v242 = v238;
    v243 = v241;
LABEL_80:
    [v243 bounds];

    goto LABEL_82;
  }

LABEL_86:
  __break(1u);
}

uint64_t sub_22CA70(double *a1, int a2)
{
  v3 = v2;
  v58 = a2;
  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = a1[2];
  v9 = a1[3];
  v8 = *(a1 + 4);
  v10 = *(a1 + 5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v57[-v12];
  v14 = type metadata accessor for SymbolButton.Configuration(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v57[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v15);
  v21 = &v57[-v20];
  v22 = &v3[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus];
  v23 = *&v3[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus + 32];
  if ((v23 & 0xFE) == 0xF8)
  {
    if ((v8 & 0xFE) == 0xF8)
    {
      return result;
    }

    LOBYTE(v24) = v8;
    goto LABEL_18;
  }

  v25 = v22[3];
  v26 = *&v3[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus + 32];
  if ((v8 & 0xFE) == 0xF8)
  {
    v9 = 0.0;
    v24 = 122;
    goto LABEL_17;
  }

  v24 = v8;
  if (*v22 == *&v6)
  {
    v27 = *(v22 + 1);
    v28 = v8 & 0xFFFFFFFE;
    if ((v23 & 0xFE) == 0x7A)
    {
      if (v28 != 122)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v28 == 122)
      {
        goto LABEL_17;
      }

      v54 = v26 >> 1;
      if (v26 >> 1 <= 0x7C)
      {
        if (v54 == 62)
        {
          if (v28 != 124)
          {
            goto LABEL_17;
          }

          goto LABEL_9;
        }

        if (v54 == 63)
        {
          if (v28 != 126)
          {
            goto LABEL_17;
          }

          goto LABEL_9;
        }
      }

      else
      {
        switch(v54)
        {
          case '}':
            if (v28 != -6)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
          case '~':
            if (v28 != -4)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
          case '\x7F':
            if (v8 < 0xFFFFFFFE)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
        }
      }

      v56 = v8 >> 1;
      if ((v56 - 125) < 3 || (v56 - 62) < 2)
      {
        goto LABEL_17;
      }

      if ((v23 & 0x80) != 0)
      {
        if ((v8 & 0x80000000) == 0 || *&v25 != *&v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 < 0)
        {
          goto LABEL_17;
        }

        if (v23)
        {
          if ((v8 & (v27 == v5)) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_10;
        }

        if ((v8 & 1) != 0 || v25 != v9)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_9:
    if (v27 != v5)
    {
      goto LABEL_17;
    }

LABEL_10:
    if (vabdd_f64(v22[2], v7) <= 0.00000011920929 && *(v22 + 5) == v10)
    {
      return result;
    }
  }

LABEL_17:
  if ((v23 & 0xFE) == 0x7A)
  {
LABEL_18:
    if ((v24 & 0xFE) == 0x7A)
    {
      return result;
    }

    goto LABEL_21;
  }

  v30 = v24 & 0xFFFFFFFE;
  if ((v24 & 0xFFFFFFFE) != 0x7A)
  {
    v43 = v26 >> 1;
    if (v26 >> 1 <= 0x7C)
    {
      if (v43 == 62)
      {
        if (v30 == 124)
        {
          return result;
        }

        goto LABEL_21;
      }

      if (v43 == 63)
      {
        if (v30 == 126)
        {
          return result;
        }

        goto LABEL_21;
      }
    }

    else
    {
      switch(v43)
      {
        case '}':
          if (v30 == -6)
          {
            return result;
          }

          goto LABEL_21;
        case '~':
          if (v30 == -4)
          {
            return result;
          }

          goto LABEL_21;
        case '\x7F':
          if (v24 > 0xFFFFFFFD)
          {
            return result;
          }

          goto LABEL_21;
      }
    }

    v55 = v24 >> 1;
    if ((v55 - 125) >= 3 && (v55 - 62) >= 2)
    {
      if ((v23 & 0x80) != 0)
      {
        if ((v24 & 0x80000000) != 0 && *&v25 == *&v9)
        {
          return result;
        }
      }

      else if ((v24 & 0x80000000) == 0)
      {
        if (v23)
        {
          if (v24)
          {
            return result;
          }
        }

        else if ((v24 & 1) == 0 && v25 == v9)
        {
          return result;
        }
      }
    }
  }

LABEL_21:
  v31 = *(a1 + 1);
  *v22 = *a1;
  *(v22 + 1) = v31;
  *(v22 + 2) = *(a1 + 2);
  if (*&v3[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusObserver])
  {
    v33 = (v8 & 0xFE) != 0xF8 && (v8 & 0xFE) != 122;
    v34 = result;
    v35 = v19;

    SymbolButton.Configuration.init()(v13);
    (*(v35 + 56))(v13, 0, 1, v34);
    sub_25A964(v13, 0, v21);
    sub_12E1C(v13, &unk_DFAAB0);
    v36 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalControl;
    v37 = *&v3[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalControl];
    if (v37)
    {
      v38 = v37;
      [v3 setNeedsLayout];
      if (v58)
      {
        v39 = SymbolButton.Animation.eased.unsafeMutableAddressor();
        v40 = *v39;
        v41 = v39[1];
        v42 = v39[2];
      }

      else
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
      }

      (*&stru_1F8.segname[(swift_isaMask & *v38) + 8])(v21, v40, v41, v42, (v58 & 1) == 0, _swiftEmptyArrayStorage);
    }

    else
    {
      sub_BD494(v21, v17);
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
      v46 = SymbolButton.init(configuration:handler:)(v17, sub_22DA38, v44);
      v38 = *&v3[v36];
      *&v3[v36] = v46;
      v47 = v46;
      sub_22D52C(v38);
    }

    v48 = *&v3[v36];
    if (v48)
    {
      v49 = *(&stru_158.offset + (swift_isaMask & *v48));
      v50 = v48;
      v49(v33);

      v51 = *&v3[v36];
      if (v51)
      {
        v52 = *&stru_158.sectname[swift_isaMask & *v51];
        v53 = v51;
        v52(v33);
      }
    }

    sub_22D228();
    sub_BD4F8(v21);
  }

  return result;
}

void sub_22D0AC(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  v9 = *a2;
  v10 = a2[1];
  v5 = *(a2 + 32);
  v6 = *(a2 + 5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v11[0] = v9;
    v11[1] = v10;
    v12 = v5;
    v13 = v6;
    sub_22CA70(v11, a4 & 1);
  }
}

void sub_22D130()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus + 32) & 0xFE) != 0x7A && (*(Strong + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus + 32) & 0xFE) != 0xF8)
    {
      v2 = Strong + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusControllableDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v2 + 8);
        swift_getObjectType();
        v4 = *(v3 + 8);
        v5 = v1;
        v4();
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_22D228()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus + 32) & 0xFELL;
  v3 = v1 != 248 && v1 != 122;
  v4 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalControl;
  result = *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalControl);
  if (result)
  {
    v6 = [result isHidden];
    v7 = *(v0 + v4);
    if (!v7 || ([v7 setHidden:v3 ^ 1], (v8 = *(v0 + v4)) == 0) || (v9 = *(&stru_1F8.flags + (swift_isaMask & *v8)), v10 = v8, v9(v3, 0), v10, (v11 = *(v0 + v4)) == 0) || (result = objc_msgSend(v11, "isHidden"), result != v6))
    {

      return [v0 setNeedsLayout];
    }
  }

  return result;
}

id sub_22D368()
{
  v0 = [objc_opt_self() buttonWithType:1];
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    [v1 setLineBreakMode:4];
  }

  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setNumberOfLines:2];
  }

  [v0 setContentHorizontalAlignment:1];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = sub_13C80(0, &qword_DF13D0);
  ControlEventHandling<>.on(_:handler:)(64, sub_22DA80, v5, v6);

  return v0;
}

void sub_22D498(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showNameButtonHandler);
    v4 = Strong;
    sub_307CC(v3);

    if (v3)
    {
      v3(a1);
      sub_17654(v3);
    }
  }
}

void sub_22D52C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalControl;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalControl];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v7 = a1;
    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for SymbolButton(0);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      return;
    }

LABEL_7:
    v9 = [v7 superview];
    if (v9)
    {
      v10 = v9;
      sub_13C80(0, &qword_DF12A0);
      v11 = v2;
      v12 = sub_ABA790();

      if (v12)
      {
        [a1 removeFromSuperview];
      }
    }

    v5 = *&v2[v4];
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v13 = v5;
  v14 = [v13 superview];
  if (!v14 || (v15 = v14, sub_13C80(0, &qword_DF12A0), v16 = v2, v17 = sub_ABA790(), v15, v16, (v17 & 1) == 0))
  {
    [v2 addSubview:v13];
  }

LABEL_15:

  [v2 setNeedsLayout];
}

double sub_22D6DC(void *a1)
{
  v1 = [a1 horizontalSizeClass];
  sub_13C80(0, &qword_DE6EE0);
  if (v1 == &dword_0 + 1)
  {
    v2 = 24.0;
  }

  else
  {
    v2 = 28.0;
  }

  sub_ABA560();
  return v2;
}

uint64_t sub_22D94C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusControllableDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

__n128 sub_22D99C@<Q0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus);
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus);
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22D9BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22D9F4()
{

  return swift_deallocObject();
}

uint64_t sub_22DA40()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

void sub_22DA88()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_episodeInformationItems) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_lockupImageArtworkCatalog) = 0;
  v9 = (v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_artworkPlaceholder);
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_isHeaderLockupBlurEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playbackPosition) = 0;
  v10 = (v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playButtonHandler);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showNameButtonHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_buildMenu);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusObserver) = 0;
  v14 = (v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = xmmword_B03DA0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusControllableDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusObserverBehaviorType) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_forceKeepLocalDownloadVisiblity) = 0;
  v15 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView;
  *(v1 + v15) = [objc_allocWithZone(type metadata accessor for VideoHeaderLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headlineLabel;
  v17 = [objc_allocWithZone(UILabel) init];
  [v17 setNumberOfLines:1];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v17 setTextColor:qword_E718C8];
  *(v1 + v16) = v17;
  v18 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_titleLabel;
  v19 = [objc_allocWithZone(UILabel) init];
  [v19 setNumberOfLines:0];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v20 = qword_E718D8;
  [v19 setTextColor:qword_E718D8];
  *(v1 + v18) = v19;
  *(v1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___showNameButton) = 0;
  type metadata accessor for ParagraphView();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_4CE4D0(3);
  v22 = v21[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets];
  v21[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets] = 0;
  if (v22 == 1)
  {
    [v21 setNeedsLayout];
    v23 = *&v21[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v23)
    {

      v23(v21);
      sub_17654(v23);
    }
  }

  v24 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionTextView;
  v25 = *&v21[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle];
  *&v21[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle] = 1;
  sub_31838(v25);
  v26 = sub_4CF7F0();
  [v26 setTextColor:v20];

  *(v1 + v24) = v21;
  *(v1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView____lazy_storage___episodeInformationBadgingView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalControl) = 0;
  v27 = OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_contextualActionsButton;
  v28 = SymbolButton.Configuration.contextualAction.unsafeMutableAddressor();
  sub_BD494(v28, v4);
  v29 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  *(v1 + v27) = SymbolButton.init(configuration:handler:)(v4, 0, 0);
  sub_ABAFD0();
  __break(1u);
}

char *sub_22DEDC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_image] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageLayoutStyle] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_title];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_message];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_textAlignment] = 1;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler];
  *v12 = 0;
  v12[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_isActionActivityIndicatorActive] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_shouldAutoSizeActionButtonHeight] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonPosition] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_regularWidthConstraint] = 0x4079000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionEventHandler] = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton;
  v15 = type metadata accessor for MultilineButton();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView;
  v17 = [objc_allocWithZone(UIImageView) initWithImage:0];
  [v17 setContentMode:1];
  [v17 setHidden:1];

  *&v4[v16] = v17;
  *&v4[OBJC_IVAR____TtC16MusicApplication15InformativeView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15InformativeView____lazy_storage___messageLabel] = 0;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for InformativeView();
  v18 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v19 = qword_DE6C58;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setBackgroundColor:qword_E71898];
  v21 = OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton;
  v22 = *&v20[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton];
  v23 = OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode;
  v24 = qword_B04E50[v20[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode]];
  v25 = *&v22[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius];
  *&v22[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius] = v24;
  v34 = v25;
  v35 = v24;
  v26 = v22;
  if (sub_AB38D0())
  {
    sub_457634();
  }

  v27 = *&v20[v21];
  v27[OBJC_IVAR____TtC16MusicApplication15MultilineButton_hasBackground] = v20[v23] < 2u;
  v28 = v27;
  sub_457634();

  v29 = *&v20[v21];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ControlEventHandler();
  swift_allocObject();
  *&v20[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionEventHandler] = ControlEventHandler.init<A>(control:events:handler:)(v29, 64, sub_2308DC, v30, v15);

  v31 = sub_23000C();
  [v20 addSubview:{v31, v34, v35}];

  v32 = sub_2301FC();
  [v20 addSubview:v32];

  [v20 addSubview:*&v20[v21]];
  [v20 addSubview:*&v20[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView]];

  return v20;
}

void sub_22E2A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler);
    if (v2)
    {

      v2(v3);
      sub_17654(v2);
    }
  }
}

void sub_22E380(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication15InformativeView_customView;
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView];
  if (v4)
  {
    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 removeFromSuperview];
  if (*&v1[v3])
  {
    [v1 addSubview:?];
  }

  [v1 setNeedsLayout];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
  if (v5)
  {

    v5(v1);
    sub_17654(v5);
  }

  v6 = !*&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8] || !*&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler] || *&v1[v3] != 0;
  [*&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton] setHidden:v6];
  if (*&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_image])
  {
    v7 = *&v1[v3] != 0;
  }

  else
  {
    v7 = 1;
  }

  [*&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView] setHidden:v7];
  v8 = sub_23000C();
  [v8 setHidden:*&v2[v3] != 0];

  v9 = sub_2301FC();
  [v9 setHidden:*&v2[v3] != 0];
}

void sub_22E52C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication15InformativeView_image;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_image];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v9 = &v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView];
    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView];
    goto LABEL_8;
  }

  if (a1)
  {
    sub_13C80(0, &qword_DE8700);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      return;
    }

    v9 = &v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView];
    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView];
    if (!*&v2[v4])
    {
LABEL_8:
      v11 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView];
    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView];
  }

  v11 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView] != 0;
LABEL_11:
  [v10 setHidden:v11];
  [*v9 setImage:*&v2[v4]];
  [v2 setNeedsLayout];
  v12 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
  if (v12)
  {

    v12(v2);

    sub_17654(v12);
  }
}

uint64_t sub_22E71C(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  if (a3)
  {
    v8 = sub_AB92A0();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v8;
  v10[1] = v9;
  v13 = a1;
  sub_22E7D0(v11, v12, a4, a5);
}

uint64_t sub_22E7D0(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = &v4[*a3];
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = result;
      result = *v5;
      if (*v5 == v7 && v6 == a2)
      {
        return result;
      }

      v9 = a4;
      result = sub_ABB3C0();
      a4 = v9;
      if (result)
      {
        return result;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  v10 = a4();
  if (v5[1])
  {

    v11 = sub_AB9260();
  }

  else
  {
    v11 = 0;
  }

  [v10 setText:v11];

  result = [v4 setNeedsLayout];
  v12 = *&v4[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
  if (v12)
  {

    v12(v4);

    return sub_17654(v12);
  }

  return result;
}

uint64_t sub_22E90C(uint64_t result, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8];
  if (v5)
  {
    if (a2)
    {
      v6 = result;
      result = *v4;
      if (*v4 == v6 && v5 == a2)
      {
        return result;
      }

      result = sub_ABB3C0();
      if (result)
      {
        return result;
      }
    }

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton];
    if (*&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler])
    {
      v9 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView] != 0;
      goto LABEL_13;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton];
  }

  v9 = 1;
LABEL_13:
  [v8 setHidden:v9];
  sub_22FE90();
  result = [v2 setNeedsLayout];
  v10 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
  if (v10)
  {

    v10(v2);

    return sub_17654(v10);
  }

  return result;
}

id sub_22EA2C()
{
  v1 = !*&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8] || !*&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler] || *&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView] != 0;
  [*&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton] setHidden:v1];
  result = [v0 setNeedsLayout];
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
  if (v3)
  {

    v3(v0);

    return sub_17654(v3);
  }

  return result;
}

id sub_22EB10(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode];
  if (v3 != result)
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton];
    v5 = qword_B04E50[v3];
    v6 = *(v4 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius);
    *(v4 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius) = v5;
    v8 = v6;
    v9 = v5;
    if (sub_AB38D0())
    {
      sub_457634();
    }

    *(v4 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_hasBackground) = v1[v2] < 2u;
    sub_457634();
    sub_22FE90();
    result = [v1 setNeedsLayout];
    v7 = *&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
    if (v7)
    {

      v7(v1);
      return sub_17654(v7);
    }
  }

  return result;
}

double sub_22EC28(double a1, double a2)
{
  v3 = v2;
  [v2 layoutMargins];
  [v2 layoutMargins];
  v33 = a1;
  v32 = 0;
  v6 = a1;
  if (sub_AB38D0())
  {
    v6 = a1;
    if (a1 != 1.79769313e308)
    {
      [v2 music_inheritedLayoutInsets];
      sub_AB9E60();
      v6 = a1 - v7;
    }
  }

  v8 = [v2 traitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == &dword_0 + 2)
  {
    v10 = *&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_regularWidthConstraint];
    if (v10 < v6 && v10 > 0.0)
    {
      v6 = *&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_regularWidthConstraint];
    }
  }

  v11 = *&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView];
  if (v11)
  {
    [v11 sizeThatFits:{v6, a2}];
    if (v12 >= a1)
    {
      return v12;
    }
  }

  else
  {
    if (*&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_image])
    {
      v14 = [v3 traitCollection];
      v15 = [v14 preferredContentSizeCategory];

      LOBYTE(v14) = sub_ABA320();
      if ((v14 & 1) == 0)
      {
        [*&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView] sizeThatFits:{v6, 80.0}];
        if (v16 >= v6)
        {
          v16 = v6;
        }

        if (v16 >= a1)
        {
          a1 = v16;
        }
      }
    }

    v17 = *&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_title + 8];
    if (!v17 || ((v17 & 0x2000000000000000) != 0 ? (v18 = HIBYTE(v17) & 0xF) : (v18 = *&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_title] & 0xFFFFFFFFFFFFLL), v18))
    {
      v19 = sub_23000C();
      [v19 sizeThatFits:{v6, a2}];
      v21 = v20;

      v22 = [objc_opt_self() defaultMetrics];
      [v22 scaledValueForValue:8.0];

      if (a1 <= v21)
      {
        a1 = v21;
      }
    }

    v23 = *&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_message + 8];
    if (!v23 || ((v23 & 0x2000000000000000) != 0 ? (v24 = HIBYTE(v23) & 0xF) : (v24 = *&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_message] & 0xFFFFFFFFFFFFLL), v24))
    {
      v25 = sub_2301FC();
      [v25 sizeThatFits:{v6, a2}];
      v27 = v26;

      v28 = [objc_opt_self() defaultMetrics];
      [v28 scaledValueForValue:8.0];

      if (a1 <= v27)
      {
        a1 = v27;
      }
    }

    if (*&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8])
    {
      if (*&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler])
      {
        [*&v3[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton] sizeThatFits:{v6, a2}];
        v30 = v29;
        v31 = [objc_opt_self() defaultMetrics];
        [v31 scaledValueForValue:8.0];

        if (a1 <= v30)
        {
          return v30;
        }
      }
    }
  }

  return a1;
}

void sub_22F074()
{
  *&rect.origin.y = v0;
  *&rect.size.width = type metadata accessor for InformativeView();
  [(CGFloat *)&rect.origin.y layoutSubviews];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  [v0 music_inheritedLayoutInsets];
  v11 = v10;
  [v0 layoutMargins];
  v13 = v12;
  [v0 layoutMargins];
  [v0 effectiveUserInterfaceLayoutDirection];
  v14 = v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageLayoutStyle];
  v115 = v2;
  v116 = v4;
  v117 = v6;
  v118 = v8;
  v15 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v13, v11);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  rect.origin.x = v15;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  if ([v9 horizontalSizeClass] == &dword_0 + 2)
  {
    v120.origin.x = v15;
    v120.origin.y = v17;
    v120.size.width = v19;
    v120.size.height = v21;
    Width = CGRectGetWidth(v120);
    v26 = *&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_regularWidthConstraint];
    rect.origin.x = v15;
    v22 = v17;
    v23 = v19;
    v24 = v21;
    if (v26 < Width)
    {
      rect.origin.x = v15;
      v22 = v17;
      v23 = v19;
      v24 = v21;
      if (v26 > 0.0)
      {
        v121.origin.x = v15;
        v121.origin.y = v17;
        v121.size.width = v19;
        v121.size.height = v21;
        CGRectGetWidth(v121);
        sub_AB3A00();
        rect.origin.x = UIEdgeInsetsInsetRect(v15, v17, v19, v21, 0.0, v27);
        v22 = v28;
        v23 = v29;
        v24 = v30;
      }
    }
  }

  v31 = *&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView];
  if (v31)
  {
    v32 = v31;
    [v32 sizeThatFits:{v23, v24}];
    v104 = v33;
    sub_ABA470();
    [v32 setFrame:v104];
    goto LABEL_59;
  }

  v112 = 0.0;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_image] && (v34 = [v0 traitCollection], v35 = objc_msgSend(v34, "preferredContentSizeCategory"), v34, LOBYTE(v34) = sub_ABA320(), v35, (v34 & 1) == 0))
  {
    v122.origin.x = rect.origin.x;
    v122.origin.y = v22;
    v122.size.width = v23;
    v122.size.height = v24;
    [*&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView] sizeThatFits:{CGRectGetWidth(v122), 80.0}];
    v37 = v36;
    x = v115;
    v39 = v116;
    if (!v14)
    {
      x = rect.origin.x;
      v39 = v22;
    }

    v40 = v117;
    v41 = v118;
    if (!v14)
    {
      v40 = v23;
      v41 = v24;
    }

    v123.size.width = CGRectGetWidth(*&x);
    v123.origin.x = 0.0;
    v123.origin.y = 0.0;
    v110 = v123.size.width;
    v111 = v37;
    v123.size.height = v37;
    v24 = v24 - CGRectGetHeight(v123);
  }

  else
  {
    v110 = 0.0;
    v111 = 0.0;
  }

  if (*&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8] && *&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler])
  {
    [*&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton] sizeThatFits:{v23, v24}];
    v112 = v42;
    v44 = v43;
    v45 = OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode;
    if (v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode] == 1)
    {
      v124.origin.x = rect.origin.x;
      v124.origin.y = v22;
      v124.size.width = v23;
      v124.size.height = v24;
      v112 = CGRectGetWidth(v124);
    }

    if ((v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_shouldAutoSizeActionButtonHeight] & 1) == 0)
    {
      v44 = dbl_B04E68[v0[v45]];
    }

    v125.origin.x = 0.0;
    v125.origin.y = 0.0;
    v125.size.width = v112;
    v125.size.height = v44;
    v24 = v24 - CGRectGetHeight(v125);
  }

  else
  {
    v44 = 0.0;
  }

  v105 = v44;
  v46 = &v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_title];
  v47 = *&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_title + 8];
  v113 = v23;
  v114 = v22;
  if (v47 && ((v47 & 0x2000000000000000) != 0 ? (v48 = HIBYTE(v47) & 0xF) : (v48 = *v46 & 0xFFFFFFFFFFFFLL), !v48))
  {
    height = 0.0;
    v109 = 0.0;
  }

  else
  {
    v126.origin.x = rect.origin.x;
    v126.origin.y = v22;
    v126.size.width = v23;
    v126.size.height = v24;
    v49 = v19;
    v50 = v15;
    v51 = v17;
    v52 = v21;
    v53 = CGRectGetWidth(v126);
    v54 = sub_23000C();
    [v54 sizeThatFits:{v23, v24}];

    sub_AB3A00();
    v127.size.height = v55;
    v127.origin.x = 0.0;
    v127.origin.y = 0.0;
    height = v127.size.height;
    v109 = v53;
    v127.size.width = v53;
    v21 = v52;
    v17 = v51;
    v15 = v50;
    v19 = v49;
    v56 = CGRectGetHeight(v127);
    v57 = [objc_opt_self() defaultMetrics];
    [v57 scaledValueForValue:8.0];
    v59 = v58;

    v24 = v24 - (v56 + v59);
  }

  v60 = &v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_message];
  v61 = *&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_message + 8];
  if (v61)
  {
    if (!((v61 & 0x2000000000000000) != 0 ? HIBYTE(v61) & 0xF : *v60 & 0xFFFFFFFFFFFFLL))
    {
      v106 = 0.0;
      v107 = 0.0;
      if (v24 > 0.0)
      {
        goto LABEL_36;
      }

LABEL_38:
      v71 = v114;
      goto LABEL_39;
    }
  }

  v128.origin.x = rect.origin.x;
  v128.origin.y = v114;
  v128.size.width = v113;
  v128.size.height = v24;
  v63 = CGRectGetWidth(v128);
  v64 = sub_2301FC();
  [v64 sizeThatFits:{v113, v24}];

  sub_AB3A00();
  v129.size.height = v65;
  v129.origin.x = 0.0;
  v129.origin.y = 0.0;
  v106 = v129.size.height;
  v107 = v63;
  v129.size.width = v63;
  v66 = CGRectGetHeight(v129);
  v67 = [objc_opt_self() defaultMetrics];
  [v67 scaledValueForValue:8.0];
  v69 = v68;

  v24 = v24 - (v66 + v69);
  if (v24 <= 0.0)
  {
    goto LABEL_38;
  }

LABEL_36:
  v130.origin.x = v15;
  v130.origin.y = v17;
  v130.size.width = v19;
  v130.size.height = v21;
  CGRectGetMidY(v130);
  v131.origin.x = v15;
  v131.origin.y = v17;
  v131.size.width = v19;
  v131.size.height = v21;
  CGRectGetHeight(v131);
  v132.origin.x = rect.origin.x;
  v132.size.width = v113;
  v132.origin.y = v114;
  v132.size.height = v24;
  CGRectGetHeight(v132);
  sub_AB39F0();
  v71 = v70;
LABEL_39:
  v72 = rect.origin.x;
  if (v14)
  {
    v72 = 0.0;
  }

  v73 = v71;
  v74 = v110;
  v75 = v111;
  v76 = v71 + CGRectGetHeight(*&v72);
  v77 = *(v46 + 1);
  if (!v77 || ((v77 & 0x2000000000000000) != 0 ? (v78 = HIBYTE(v77) & 0xF) : (v78 = *v46 & 0xFFFFFFFFFFFFLL), v78))
  {
    v133.origin.x = rect.origin.x;
    v133.origin.y = v76;
    v133.size.height = height;
    v133.size.width = v109;
    v79 = CGRectGetHeight(v133);
    v80 = [objc_opt_self() defaultMetrics];
    [v80 scaledValueForValue:8.0];
    v82 = v81;

    v76 = v76 + v79 + v82;
  }

  v83 = *(v60 + 1);
  if (!v83 || ((v83 & 0x2000000000000000) != 0 ? (v84 = HIBYTE(v83) & 0xF) : (v84 = *v60 & 0xFFFFFFFFFFFFLL), v84))
  {
    v134.origin.x = rect.origin.x;
    v134.origin.y = v76;
    v134.size.height = v106;
    v134.size.width = v107;
    v85 = CGRectGetHeight(v134);
    v86 = [objc_opt_self() defaultMetrics];
    [v86 scaledValueForValue:8.0];
    v88 = v87;

    v76 = v76 + v85 + v88;
  }

  v89 = v76;
  if (v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonPosition] == 1)
  {
    v90 = [v0 safeAreaLayoutGuide];
    [v90 layoutFrame];
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;

    v135.origin.x = v92;
    v135.origin.y = v94;
    v135.size.width = v96;
    v135.size.height = v98;
    MaxY = CGRectGetMaxY(v135);
    v136.origin.x = 0.0;
    v136.origin.y = 0.0;
    v136.size.width = v112;
    v136.size.height = v105;
    v89 = MaxY - CGRectGetHeight(v136) + -16.0;
  }

  if (v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode] == 1)
  {
    UIEdgeInsetsInsetRect(rect.origin.x, v89, v112, v105, 0.0, 22.0);
  }

  else
  {
    v103 = v105;
    sub_ABA470();
  }

  v100 = *&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView];
  sub_ABA490();
  [v100 setFrame:?];

  v101 = *&v0[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton];
  sub_ABA490();
  [v101 setFrame:?];
  v102 = sub_23000C();
  sub_ABA490();
  [v102 setFrame:?];

  v32 = sub_2301FC();
  sub_ABA490();
  [v32 setFrame:*&v103];
LABEL_59:
}

id sub_22FB28(id a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for InformativeView();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 horizontalSizeClass];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (a1 && v3 == v5)
  {
    goto LABEL_8;
  }

  if (*&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_regularWidthConstraint] > 0.0)
  {
    goto LABEL_15;
  }

  if (a1)
  {
LABEL_8:
    a1 = [a1 preferredContentSizeCategory];
  }

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_15:
    result = [v1 setNeedsLayout];
    v14 = *&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
    if (v14)
    {

      v14(v1);
      return sub_17654(v14);
    }

    return result;
  }

  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {
  }

  v13 = sub_ABB3C0();

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_22FD7C(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = objc_opt_self();
  if (v3 > 1)
  {
    v5 = [v4 preferredFontForTextStyle:UIFontTextStyleBody];
    v6 = &selRef_tintColor;
  }

  else
  {
    v5 = [v4 systemFontOfSize:17.0 weight:UIFontWeightBold];
    v6 = &selRef_whiteColor;
  }

  v7 = v5;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v8 clearColor];
  v11 = [v8 *v6];

  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = 3;
  *(a2 + 24) = 4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v7;
}

void sub_22FE90()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle);
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA930);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_AF4EC0;
    v6 = OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode;
    v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode);

    sub_22FD7C(v7, &v17);
    v8 = v18;
    v9 = v19;
    v10 = v20;
    v11 = v21;
    v12 = v22;
    v13 = *(v3 + v6) == 1;
    *(v5 + 32) = 0x656C746974;
    *(v5 + 40) = 0xE500000000000000;
    *(v5 + 48) = v2;
    *(v5 + 56) = v1;
    *(v5 + 64) = v17;
    *(v5 + 80) = v8;
    *(v5 + 88) = v9;
    *(v5 + 96) = v10;
    *(v5 + 104) = v11;
    *(v5 + 112) = v12;
    v14 = vdup_n_s32(v13);
    v15.i64[0] = v14.u32[0];
    v15.i64[1] = v14.u32[1];
    *(v5 + 120) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v15, 0x3FuLL)), xmmword_B04CC0, xmmword_B04CB0);
    v16 = *(v4 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents);
    *(v4 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents) = v5;
    sub_45677C(v16);
  }
}

id sub_23002C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  sub_13C80(0, &qword_DE6EE0);
  v3 = sub_ABA550();
  [v2 setFont:v3];

  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setNumberOfLines:0];
  if (*(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_title + 8))
  {

    v4 = sub_AB9260();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  [v2 setTextColor:qword_E718D8];
  [v2 setTextAlignment:*(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_textAlignment)];
  v5 = objc_opt_self();
  v6 = v2;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  return v6;
}

id sub_23021C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_230280(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 setFont:v3];

  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setNumberOfLines:0];
  if (*(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_message + 8))
  {

    v4 = sub_AB9260();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v2 setTextColor:qword_E718C8];
  [v2 setTextAlignment:*(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_textAlignment)];
  v5 = objc_opt_self();
  v6 = v2;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  return v6;
}

id sub_230444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InformativeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2305D0()
{
  result = qword_DF9F70;
  if (!qword_DF9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF9F70);
  }

  return result;
}

unint64_t sub_230628()
{
  result = qword_DF9F78;
  if (!qword_DF9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF9F78);
  }

  return result;
}

unint64_t sub_230680()
{
  result = qword_DF9F80;
  if (!qword_DF9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF9F80);
  }

  return result;
}

void sub_2306D4()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_customView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_image) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_imageLayoutStyle) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_message);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_textAlignment) = 1;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_isActionActivityIndicatorActive) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_shouldAutoSizeActionButtonHeight) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonPosition) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_regularWidthConstraint) = 0x4079000000000000;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionEventHandler) = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButton;
  type metadata accessor for MultilineButton();
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC16MusicApplication15InformativeView_imageView;
  v8 = [objc_allocWithZone(UIImageView) initWithImage:0];
  [v8 setContentMode:1];
  [v8 setHidden:1];

  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15InformativeView____lazy_storage___messageLabel) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_2308A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_2308E4(uint64_t a1)
{
  *(a1 + qword_DF9F88) = 0;
  *(a1 + qword_DF9F90) = 0;
  *(a1 + qword_DF9F98) = 0;
  v1 = (a1 + qword_DF9FA8);
  *v1 = 0;
  v1[1] = 0;
  v2 = qword_DF9FB0;
  *(a1 + v2) = sub_232DD4();
  sub_ABAFD0();
  __break(1u);
}

id sub_23098C()
{
  swift_beginAccess();

  v0 = sub_AB9260();

  return v0;
}

Class sub_230A1C()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

void sub_230A94()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = qword_DF9FB0;
  v2 = *&v0[qword_DF9FB0];
  swift_beginAccess();
  v3 = v2;

  v4 = sub_AB9260();

  [v3 setText:v4];

  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview:*&v0[v1]];
  }

  else
  {
    __break(1u);
  }
}

void sub_230BB8(void *a1)
{
  v1 = a1;
  sub_230A94();
}

void *sub_230C00()
{
  v1 = qword_DF9F98;
  if (*&v0[qword_DF9F98])
  {
    v2 = *&v0[qword_DF9F98];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA510);
    swift_allocObject();
    v2 = sub_2C0510(v0, v4, 0, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_230CCC(void *a1)
{
  v1 = a1;
  *(sub_230C00() + 145) = (v1[qword_DF9F88] & 1) == 0;
  sub_35BD84();
}

void sub_230D30()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v2 music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [v1 view];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;

  type metadata accessor for CGSize(0);
  v16 = &v1[qword_DF9FA8];
  v31 = *&v1[qword_DF9FA8];
  if (sub_AB38D0())
  {
    *v16 = v13;
    v16[1] = v15;
    sub_232C94();
  }

  v17 = qword_DF9FB0;
  [*&v1[qword_DF9FB0] sizeThatFits:{v13, v15, *&v13, *&v15, v31}];
  v19 = v18;
  v20 = *&v1[v17];
  v21 = [v1 view];
  if (v21)
  {
    v22 = v21;
    [v21 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v33.origin.x = v24;
    v33.origin.y = v26;
    v33.size.width = v28;
    v33.size.height = v30;
    [v20 setFrame:{v7, v5 + 6.0, CGRectGetWidth(v33) - v7 - v9, v19}];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_230F14(void *a1)
{
  v1 = a1;
  sub_230D30();
}

void sub_230F5C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  [v1 loadViewIfNeeded];
  v3 = *&v1[qword_DFE2F8];
  if (v3)
  {
    v4 = [v3 collectionViewLayout];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      sub_2310A4(v5);
    }

    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_231038(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_230F5C(a3);
}

id sub_2310A4(void *a1)
{
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  [result music_inheritedLayoutInsets];
  v6 = v5;
  v8 = v7;

  v9 = *&v1[qword_DF9FB0];
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;

  [v9 sizeThatFits:{v12, v14}];
  v16 = v15;

  [a1 setSectionInset:{v16 + 12.0, v6, 20.0, v8}];
  v17 = qword_DF9F90;
  if (v1[qword_DF9F90] >= 3u)
  {
    v18 = 15.0;
  }

  else
  {
    v18 = 10.0;
  }

  [a1 setMinimumLineSpacing:v18];
  if (v1[v17] >= 3u)
  {
    v19 = 15.0;
  }

  else
  {
    v19 = 10.0;
  }

  [a1 setMinimumInteritemSpacing:v19];

  return [a1 invalidateLayout];
}

double sub_23120C@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_7;
  }

  type metadata accessor for JSSearchLandingModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v6 = [v4 itemAtIndexPath:isa];

  if (!v6)
  {
    goto LABEL_7;
  }

  type metadata accessor for JSSearchLandingItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_465CC(&v54);
    goto LABEL_8;
  }

  v8 = (v7 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_titleText);
  v9 = v7;
  swift_beginAccess();
  v11 = *v8;
  v10 = v8[1];
  swift_unknownObjectRetain();

  v12 = IndexPath.safeItem.getter();
  v13 = sub_27EEA4(v9);
  v15 = v14;
  v16 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
  swift_beginAccess();
  v17 = *(v9 + v16) != 0;
  *&v23 = v13;
  *(&v23 + 1) = v15;
  *&v24 = v11;
  *(&v24 + 1) = v10;
  *&v25 = v9;
  *(&v25 + 1) = v12;
  LOBYTE(v26) = v17;
  *(&v26 + 1) = 5122;
  *(&v26 + 1) = 0;
  *&v27 = 0;
  *(&v27 + 1) = v9;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31[0] = 1;
  *&v31[8] = 0;
  *&v31[16] = 0;
  v31[24] = 2;
  v32[0] = v13;
  v32[1] = v15;
  v32[2] = v11;
  v32[3] = v10;
  v32[4] = v9;
  v32[5] = v12;
  v33 = v17;
  v34 = 5122;
  v35 = 0;
  v36 = 0;
  v37 = v9;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v44 = 2;
  sub_465F4(&v23, &v54);
  sub_46650(v32);
  v51 = v29;
  v52 = v30;
  v53[0] = *v31;
  *(v53 + 9) = *&v31[9];
  v47 = v25;
  v48 = v26;
  v49 = v27;
  v50 = v28;
  v45 = v23;
  v46 = v24;
  UIScreen.Dimensions.size.getter(*&v23);
  v60 = v51;
  v61 = v52;
  v62[0] = v53[0];
  *(v62 + 9) = *(v53 + 9);
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v59 = v50;
  v54 = v45;
  v55 = v46;
LABEL_8:
  v18 = v61;
  a1[6] = v60;
  a1[7] = v18;
  a1[8] = v62[0];
  *(a1 + 137) = *(v62 + 9);
  v19 = v57;
  a1[2] = v56;
  a1[3] = v19;
  v20 = v59;
  a1[4] = v58;
  a1[5] = v20;
  result = *&v54;
  v22 = v55;
  *a1 = v54;
  a1[1] = v22;
  return result;
}

uint64_t sub_2314A8(void *a1)
{
  sub_3B316C(a1);
  v3 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v3];

  [a1 setAlwaysBounceVertical:0];
  [a1 setAlwaysBounceHorizontal:0];
  [a1 setShowsHorizontalScrollIndicator:0];
  [a1 setShowsVerticalScrollIndicator:0];
  [a1 setAllowsMultipleSelection:0];
  type metadata accessor for SearchLandingCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for TitleSectionHeaderView();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();
}

_BYTE *sub_2315FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_3B3524(a2);
  v5 = *&v2[qword_DFE2F0];
  if (!v5)
  {
    goto LABEL_38;
  }

  v6 = v5;
  v7 = [v6 results];

  if (!v7)
  {
    goto LABEL_38;
  }

  isa = sub_AB3770().super.isa;
  v9 = [v7 itemAtIndexPath:isa];

  if (!v9)
  {
    goto LABEL_38;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_38:

    v14 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_39;
  }

  v11 = v10;
  v12 = [v10 titleText];
  if (v12)
  {
    v13 = v12;
    v14 = sub_AB92A0();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [v11 titleText];
  if (v17)
  {
    v18 = v17;
    v19 = sub_AB92A0();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v14 = v19;
      v16 = v21;
    }
  }

  v23 = [v11 displayStyle];
  if (v23)
  {
    v24 = v23;
    v25 = sub_AB92A0();
    v27 = v26;

    v28._rawValue = &off_CF0C78;
    v50._countAndFlagsBits = v25;
    v50._object = v27;
    v29 = sub_ABB140(v28, v50);

    if (!v29)
    {
      v31 = 0;
      v32 = 0x6E656E696D6F7270;
      v30 = 0xE900000000000074;
LABEL_24:
      v35 = v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_layoutStyle];
      v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_layoutStyle] = v31;
      if (v35)
      {
        v36 = 0x647261646E617473;
      }

      else
      {
        v36 = 0x6E656E696D6F7270;
      }

      if (v35)
      {
        v37 = 0xE800000000000000;
      }

      else
      {
        v37 = 0xE900000000000074;
      }

      if (v32 == v36 && v30 == v37)
      {

        goto LABEL_35;
      }

      v38 = sub_ABB3C0();

      if ((v38 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v29 == 1)
    {
      v30 = 0xE800000000000000;
      v31 = 1;
      v32 = 0x647261646E617473;
      goto LABEL_24;
    }
  }

  v33 = v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_layoutStyle];
  v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_layoutStyle] = 1;
  if (v33 == 1)
  {

    goto LABEL_35;
  }

  v34 = sub_ABB3C0();

  if ((v34 & 1) == 0)
  {
LABEL_34:
    [v4 setNeedsLayout];
  }

LABEL_35:
  v39 = v3[qword_DF9F90];
  v40 = v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_containerStyle];
  v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_containerStyle] = v39;
  if (v39 != v40)
  {
    [v4 setNeedsLayout];
  }

  v41 = [v11 backgroundArtworkCatalog];
  v42 = *&v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_lockupImageArtworkCatalog];
  *&v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_lockupImageArtworkCatalog] = v41;
  v43 = v41;

  v44 = v43;
  sub_74EA4(v41);
  [v4 setNeedsLayout];
  swift_unknownObjectRelease();

  if (!v16)
  {
    goto LABEL_38;
  }

LABEL_39:
  v45 = &v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_title];
  v45->_countAndFlagsBits = v14;
  v45->_object = v16;

  v46 = String.trim()();

  *v45 = v46;

  v47 = v4;
  [v47 setNeedsLayout];
  sub_74DD4([v3 viewBackgroundColor]);
  v48 = [v3 viewBackgroundColor];
  [v47 setBackgroundColor:v48];

  return v47;
}

_BYTE *sub_231AA4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  v14 = sub_2315FC(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v14;
}

void sub_231BCC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB3430();
  v90 = *(v6 - 8);
  v91 = v6;
  __chkstk_darwin(v6);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_AB3820();
  v95 = *(v93 - 8);
  __chkstk_darwin(v93);
  v88 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v10);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v17 = __chkstk_darwin(v16 - 8);
  v89 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v92 = &v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v20 - 8);
  v22 = &v78 - v21;
  v94 = a1;
  sub_3B41F4(a1, a2);
  v23 = *&v3[qword_DFE2F0];
  if (!v23)
  {
    return;
  }

  type metadata accessor for JSSearchLandingModelResponse();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    return;
  }

  v25 = v24;
  v84 = v8;
  v85 = v10;
  v87 = v22;
  v26 = *(v24 + OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_jsResults);
  v27 = v23;
  isa = sub_AB3770().super.isa;
  v29 = [v26 itemAtIndexPath:isa];

  type metadata accessor for JSSearchLandingItem();
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v81 = v30;
    v82 = v27;
    v83 = v29;
    v31 = [v25 results];
    if (!v31)
    {
      __break(1u);
      return;
    }

    v32 = v31;
    v33 = sub_AB3770().super.isa;
    v34 = [v32 itemAtIndexPath:v33];

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    v36 = v84;
    v86 = v35;
    if (!v35)
    {
      swift_unknownObjectRelease();
      v86 = 0;
    }

    v80 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v37 = sub_AB3770().super.isa;
    v38 = [v94 cellForItemAtIndexPath:v37];

    if (v38)
    {
      sub_D5958(v101);
      v78 = v101[1];
      v79 = v101[0];
      v39 = v102;
      v40 = v103;
      v41 = v104;

      v43 = v78;
      v42 = v79;
    }

    else
    {
      v39 = 0;
      v41 = 0;
      v42 = 0uLL;
      v40 = 255;
      v43 = 0uLL;
    }

    v105[0] = v42;
    v105[1] = v43;
    v106 = v39;
    v107 = v40;
    v108 = v41;
    PresentationSource.init(viewController:position:)(v3, v105, v100);
    v44 = _s30CollectionViewSelectionHandlerVMa();
    v99[3] = v44;
    v99[4] = &off_CF7E60;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v99);
    v46 = *(v95 + 16);
    v47 = a2;
    v48 = v93;
    v46(boxed_opaque_existential_0 + *(v44 + 20), v47, v93);
    swift_unknownObjectWeakInit();
    v49 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v49 - 8) + 56))(v87, 1, 1, v49);
    sub_15F84(v99, &v96, &unk_DE8E30);
    v50 = *(&v97 + 1);
    v94 = v86;
    if (v50)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
      v51 = swift_dynamicCast();
      v52 = *(v44 - 8);
      (*(v52 + 56))(v15, v51 ^ 1u, 1, v44);
      if ((*(v52 + 48))(v15, 1, v44) != 1)
      {
        v53 = v92;
        v46(v92, &v15[*(v44 + 20)], v48);
        sub_2D6C0(v15, _s30CollectionViewSelectionHandlerVMa);
        v54 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      sub_12E1C(&v96, &unk_DE8E30);
      (*(*(v44 - 8) + 56))(v15, 1, 1, v44);
    }

    sub_12E1C(v15, &qword_E037A0);
    v54 = 1;
    v53 = v92;
LABEL_18:
    v55 = v95;
    (*(v95 + 56))(v53, v54, 1, v48);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v57 = Strong, sub_12B2FC(), v59 = v58, v61 = v60, v57, v59))
    {
      ObjectType = swift_getObjectType();
      (*(v61 + 8))(ObjectType, v61);
      v64 = v63;
      swift_unknownObjectRelease();
      v65 = v89;
      sub_15F84(v53, v89, &unk_DE8E20);
      if ((*(v55 + 48))(v65, 1, v48) == 1)
      {
        sub_12E1C(v65, &unk_DE8E20);
        v96 = 0u;
        v97 = 0u;
        v98 = 0;
      }

      else
      {
        (*(v55 + 32))(v88, v65, v48);
        sub_233398(&qword_DFAA90, &type metadata accessor for IndexPath);
        sub_ABAD10();
      }

      v67 = swift_getObjectType();
      sub_3B8F68();
      v66 = sub_21CCAC(1, v36, &v96, v67, v64);
      (*(v90 + 8))(v36, v91);
      sub_12E1C(&v96, &qword_DF2BD0);
      sub_12E1C(v53, &unk_DE8E20);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v53, &unk_DE8E20);
      v66 = 0;
    }

    v68 = swift_unknownObjectWeakLoadStrong();
    if (v68)
    {
      v69 = v68;
      sub_12AFE8();
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    sub_15F28(v100, &v96);
    sub_15F84(v99, (v12 + 104), &unk_DE8E30);
    v72 = v85;
    v73 = v87;
    sub_15F84(v87, &v12[*(v85 + 28)], &unk_DEA510);
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 8) = 1;
    *(v12 + 9) = 0;
    *(v12 + 10) = 0;
    *(v12 + 11) = 0;
    sub_2D594(&v96, v12);
    *(v12 + 12) = v86;
    v74 = *v80;
    *(&v97 + 1) = v72;
    v75 = __swift_allocate_boxed_opaque_existential_0(&v96);
    sub_2D604(v12, v75);
    v76 = v94;
    v77 = v74;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v81, 0, v66, v71, &v96);

    sub_12E1C(v73, &unk_DEA510);
    sub_1611C(v100);
    sub_2D6C0(v12, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v96, &unk_DE8E40);

    sub_12E1C(v99, &unk_DE8E30);
    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRelease();
}

void sub_2325FC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_231BCC(v11, v10);

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_23270C()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v1 + 8))(v3, v0);
  return 0;
}

double sub_2327D8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_2334B0(v13);
  v18 = v17;

  (*(v10 + 8))(v12, v9);
  return v18;
}

void sub_232910()
{
  v1 = *&v0[qword_DF9FA0];
  v2 = type metadata accessor for JSSearchLandingModelRequest();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel;
  *&v3[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_previousResponse] = 0;
  *&v3[v4] = v1;
  v25.receiver = v3;
  v25.super_class = v2;
  v5 = v1;
  v6 = objc_msgSendSuper2(&v25, "init");
  sub_13C80(0, &qword_DFA578);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 kindWithModelClass:ObjCClassFromMetadata];
  [v9 setItemKind:v10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF85D0;
  *(v11 + 32) = sub_AB92A0();
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_AB92A0();
  *(v11 + 56) = v13;
  *(v11 + 64) = sub_AB92A0();
  *(v11 + 72) = v14;
  *(v11 + 80) = sub_AB92A0();
  *(v11 + 88) = v15;
  isa = sub_AB9740().super.isa;
  v17 = [objc_opt_self() propertySetWithProperties:isa];

  [v9 setItemProperties:v17];
  v18 = *&v0[qword_DFE2F0];
  v19 = *&v9[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_previousResponse];
  *&v9[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_previousResponse] = v18;
  v20 = v18;

  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  v24[4] = sub_233418;
  v24[5] = v21;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_151E0;
  v24[3] = &block_descriptor_79;
  v22 = _Block_copy(v24);
  v23 = v0;

  [v9 performWithResponseHandler:v22];
  _Block_release(v22);
}

uint64_t sub_232BC4(void *a1)
{
  sub_13C80(0, &qword_DE8ED0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_465C4, v3);
}

void sub_232C94()
{
  v1 = *&v0[qword_DF9FA8];
  if (v1 >= 982.0)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1 >= 461.0;
  }

  if (v1 <= 1500.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 3;
  }

  v4 = v0[qword_DF9F90];
  v0[qword_DF9F90] = v3;
  if (v4 == v3)
  {
    return;
  }

  [v0 loadViewIfNeeded];
  v5 = *&v0[qword_DFE2F8];
  if (!v5)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v6 = [v5 collectionViewLayout];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    sub_2310A4(v7);
  }

  v8 = [v0 view];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  [v8 setNeedsLayout];
}

id sub_232DD4()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setAdjustsFontForContentSizeCategory:1];
  sub_13C80(0, &qword_DE6EE0);
  v1 = sub_ABA550();
  [v0 setFont:v1];

  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryExtraSmall];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  [v0 setTextColor:qword_E718D8];
  [v0 setNumberOfLines:1];
  return v0;
}

void sub_232EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_DF9FB0);
  *(a1 + qword_DF9FB0) = a3;
  v3 = a3;
}

void sub_232F74()
{

  v1 = *(v0 + qword_DF9FB0);
}

void sub_232FC4(uint64_t a1)
{

  v2 = *(a1 + qword_DF9FB0);
}

uint64_t type metadata accessor for JSSearchLandingViewController()
{
  result = qword_DF9FE0;
  if (!qword_DF9FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2330F8()
{
  result = qword_DFA4E0;
  if (!qword_DFA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFA4E0);
  }

  return result;
}

id sub_233150()
{
  v0 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  sub_2310A4(v0);
  return v0;
}

void sub_2331B8(void *a1)
{
  v3 = *(v1 + qword_DF9FA0);
  *(v1 + qword_DF9FA0) = a1;
  v2 = a1;
}

double sub_233204@<D0>(_OWORD *a1@<X8>)
{
  sub_23120C(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

unint64_t sub_2332B0()
{
  result = qword_DFA508;
  if (!qword_DFA508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFA510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFA508);
  }

  return result;
}

uint64_t sub_233314(uint64_t a1)
{
  *(a1 + 8) = sub_233398(&qword_DFA540, type metadata accessor for JSSearchLandingViewController);
  result = sub_233398(&qword_DFA548, type metadata accessor for JSSearchLandingViewController);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_233398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2333E0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_233438()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_233470()
{

  return swift_deallocObject();
}

void sub_2334B0(void *a1)
{
  v2 = v1;
  v4 = [a1 traitCollection];
  [a1 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [a1 music_inheritedLayoutInsets];
  v17 = UIEdgeInsetsInsetRect_1(v6, v8, v10, v12, v13, v14, v15, v16);
  v18 = *(v2 + qword_DF9FA0);
  v19 = JSSearchLandingViewModel.items.getter();

  v20 = sub_AB37B0();
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = sub_3612B8(v20, v19);
LABEL_5:
    v22 = v21;

    v23 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_displayStyle;
    swift_beginAccess();
    if (v22[v23] == 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_ABB3C0();
    }

    v25 = *(v2 + qword_DF9F90);
    if (v25 >= 3)
    {
      v26 = 15.0;
    }

    else
    {
      v26 = 10.0;
    }

    [v4 displayScale];
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v32 = 3;
      }

      else
      {
        v32 = 4;
      }
    }

    else
    {
      if (!v25)
      {
        if (v24)
        {
          sub_AB3A00();
          v27 = [v4 preferredContentSizeCategory];
          v28 = sub_ABA330();

          if (v28)
          {
            v29 = [objc_opt_self() defaultMetrics];
            v30 = sub_ABA310();
            sub_AB9EF0();
          }

          v31 = v17;
        }

        else
        {
          v37 = [v4 preferredContentSizeCategory];
          v38 = sub_ABA350();

          v39 = 2.0;
          if (v38)
          {
            v39 = 1.0;
          }

          v31 = (v17 + -10.0) / v39;
          sub_AB3A00();
        }

LABEL_26:
        CGSize.nonNegative()(v31);

        return;
      }

      v32 = 2;
    }

    v31 = (v17 - v26 * (v32 - 1)) / v32;
    sub_AB3A00();
    v33 = [v4 preferredContentSizeCategory];
    v34 = sub_ABA330();

    if (v34)
    {
      v35 = [objc_opt_self() defaultMetrics];
      v36 = sub_ABA310();
      sub_AB9EF0();
    }

    goto LABEL_26;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v20 < *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
  {
    v21 = *(v19 + 8 * v20 + 32);
    goto LABEL_5;
  }

  __break(1u);
}

void sub_2338E4(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v9 - 8);
  v11 = v65 - v10;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headline];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headlineColor] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_title];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_subtitle];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_badgeView] = 0;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents];
  *v15 = sub_234824();
  v15[1] = v16;
  v15[2] = v17;
  v15[3] = v18;
  v19 = type metadata accessor for FeaturedRadioShowCell();
  v75.receiver = v4;
  v75.super_class = v19;
  v20 = objc_msgSendSuper2(&v75, "initWithFrame:", a1, a2, a3, a4);
  v21 = UIView.Corner.medium.unsafeMutableAddressor();
  v22 = sub_ABA680();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v11, v21, v22);
  (*(v23 + 56))(v11, 0, 1, v22);
  sub_200394(v11);
  v24 = vdupq_n_s64(0x4059800000000000uLL);
  *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v24;
  v72 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v25 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v26 = *(v25 + 80);
  v27 = *(v25 + 88);
  *(v25 + 80) = v24;
  sub_75614(v26, v27);
  v28 = &v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v29 = *v28;
  v30 = *(v28 + 1);
  *v28 = 0x4020000000000000;
  *(v28 + 8) = xmmword_AF82A0;
  *(v28 + 3) = 0x4028000000000000;
  v76 = xmmword_AFB2E0;
  v77 = xmmword_AFB2F0;
  v73 = v29;
  v74 = v30;
  if (sub_AB38D0())
  {
    [v20 setNeedsLayout];
  }

  v31 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];
  v36 = v31[4];
  v70 = v31[5];
  v37 = v70;
  v71 = v36;
  v38 = &v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v69 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v68 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v67 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v66 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  v65[2] = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
  v65[1] = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
  *v38 = v32;
  *(v38 + 1) = v33;
  *(v38 + 2) = v34;
  *(v38 + 3) = v35;
  *(v38 + 4) = v36;
  *(v38 + 5) = v37;
  v39 = v32;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v46 = v42;
  sub_2F1C8(v69, v68, v67, v66);
  v47 = v71;
  v48 = *&v20[v72];
  v49 = *(v48 + 168);
  v76 = *(v48 + 152);
  v77 = v49;
  v78 = *(v48 + 184);
  *(v48 + 152) = v32;
  *(v48 + 160) = v33;
  *(v48 + 168) = v34;
  *(v48 + 176) = v35;
  v50 = v70;
  *(v48 + 184) = v47;
  *(v48 + 192) = v50;
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  v55 = v51;
  v56 = v52;
  v57 = v53;
  v58 = v54;
  sub_75948(&v76);
  sub_B2A40(&v76);

  v59 = v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v59 & 1) == 0)
  {
    [v20 setNeedsLayout];
  }

  v60 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v61 = *&v20[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents + 24];
  if (!(v61 >> 62))
  {
    v62 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
    if (v62)
    {
      goto LABEL_7;
    }

LABEL_15:

    return;
  }

  v62 = sub_ABB060();
  if (!v62)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v62 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v62; ++i)
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v64 = sub_36003C(i, v61);
      }

      else
      {
        v64 = *(v61 + 8 * i + 32);
      }

      TextStackView.add(_:)(v64);
    }
  }
}

uint64_t sub_233E78(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headline];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headline];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headline + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_233F8C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headline] != result || *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headline + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_234088(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_2341A0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_2342A0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_234334(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_23444C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents + 16];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_234568()
{
}

id sub_234624()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedRadioShowCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FeaturedRadioShowCell()
{
  result = qword_DFA5B0;
  if (!qword_DFA5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2347F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_234824()
{
  sub_13C80(0, &qword_DE6EE0);
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  v25 = v1;
  *&v38[0] = v1;
  *(&v38[0] + 1) = v4;
  v38[1] = xmmword_AF7C20;
  v38[2] = xmmword_AF82C0;
  v39 = v0;
  v40 = 2;
  v41 = xmmword_AF9C80;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v38);
  v23 = v3;
  v24 = v4;
  v22 = v4;
  v21 = v0;
  sub_2F118(v38, v56);
  v19 = v5;

  v6 = sub_ABA560();
  v20 = v0;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v7 = qword_E718D8;
  v8 = qword_E718D8;
  v9 = [v2 clearColor];
  *&v32[0] = v7;
  *(&v32[0] + 1) = v9;
  v32[1] = xmmword_AF7C20;
  v33 = 0;
  v34 = 0;
  v35 = v6;
  v36 = 2;
  v37 = xmmword_AF7C30;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v32);
  v18 = v8;
  v17 = v9;
  v16 = v6;
  sub_2F118(v32, v56);

  v11 = sub_ABA560();
  v12 = [v2 clearColor];
  *&v26[0] = v1;
  *(&v26[0] + 1) = v12;
  v26[1] = xmmword_AF7C20;
  v27 = 0;
  v28 = 0;
  v29 = v11;
  v30 = 2;
  v31 = xmmword_AF7C30;
  swift_allocObject();
  v13 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF82E0;
  *(v14 + 32) = v19;
  *(v14 + 40) = v10;
  *(v14 + 48) = v13;
  sub_2F118(v26, v56);

  v42[0] = v25;
  v42[1] = v12;
  v43 = xmmword_AF7C20;
  v44 = 0;
  v45 = 0;
  v46 = v11;
  v47 = 2;
  v48 = xmmword_AF7C30;
  sub_2F174(v42);
  v49[0] = v7;
  v49[1] = v9;
  v50 = xmmword_AF7C20;
  v51 = 0;
  v52 = 0;
  v53 = v6;
  v54 = 2;
  v55 = xmmword_AF7C30;
  sub_2F174(v49);
  v56[0] = v25;
  v56[1] = v24;
  v57 = xmmword_AF7C20;
  v58 = xmmword_AF82C0;
  v59 = v20;
  v60 = 2;
  v61 = xmmword_AF9C80;
  sub_2F174(v56);

  return v19;
}

double sub_234C6C(void *a1, double a2)
{
  sub_234824();
  v5 = v4;
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  sub_2F48A4(v5, a1, 0, 0);

  return a2;
}

void sub_234DA8()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headline);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headlineColor) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_badgeView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents);
  *v4 = sub_234824();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_234E6C(void *a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a2 + 48);
  v26 = *(a2 + 32);
  *v27 = v5;
  v6 = *(a2 + 80);
  *&v27[16] = *(a2 + 64);
  v28 = v6;
  v29 = *(a2 + 96);
  v7 = v27[24];
  if ((*&v27[24] & 0x8000000000000000) == 0)
  {
    v8 = v26;
    v22 = *&v27[8];
    v24 = v28;
    v21 = v27[0];
    if (a1)
    {
      sub_2F118(&v26, v25);
      sub_2F118(&v26, v25);
      v9 = a1;
    }

    else
    {
      sub_2F118(&v26, v25);
      sub_2F118(&v26, v25);
      if (qword_DE6C88 != -1)
      {
        swift_once();
      }

      v9 = qword_E718C8;
    }

    v10 = a1;

    v11 = v7;
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v15 = *(a2 + 56);
    v16 = *(a2 + 64);
    v17 = *(a2 + 72);
    v18 = *(a2 + 80);
    *(a2 + 32) = v9;
    *(a2 + 40) = *(&v8 + 1);
    *(a2 + 48) = v21;
    *(a2 + 56) = v22;
    *(a2 + 72) = v11;
    *(a2 + 80) = v24;
    v23 = *(&v8 + 1);
    v19 = v24;
    v20 = v9;
    sub_C7504(v12, v13, v14, v15, v16, v17, v18);
    sub_2EB2A8();

    return sub_2F174(&v26);
  }

  return result;
}