uint64_t sub_24F5B0()
{
  v1 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 32);
  if (v1)
  {
    v2 = *&stru_B8.segname[(*v1 & swift_isaMask) + 8];
    v3 = v1;
    v4 = v2();

    v5 = swift_isaMask;
    type metadata accessor for JSContainerDetailModelRequest();
    if (swift_dynamicCastClass())
    {
      v6 = (*(&stru_1F8.size + (*v4 & v5)))();
      if (v6 || (v6 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v4)))()) != 0)
      {
        v7 = v6;

        v8 = 1;
LABEL_6:
        v4 = v7;
LABEL_11:

        return v8 & 1;
      }

      v9 = (*(&stru_2E8.size + (swift_isaMask & *v4)))();
      if (v9)
      {
        v7 = v9;
        v8 = (*&stru_B8.segname[(swift_isaMask & *v9) + 16])();

        goto LABEL_6;
      }
    }

    v8 = 0;
    goto LABEL_11;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_24F798()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  if (!(v1 >> 62))
  {
    result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v12 = 0;
    return v12 & 1;
  }

  result = sub_ABB060();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v3 = sub_35F8D4(0, v1);

LABEL_6:
    type metadata accessor for UpsellBannerViewController();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {
      v12 = 0;
      goto LABEL_18;
    }

    v5 = *(*(v4 + OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_bannerView) + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_jsUpsellBanner);
    v6 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 32);
    if (v6)
    {
      v7 = *&stru_B8.segname[(*v6 & swift_isaMask) + 8];
      v8 = v5;
      v9 = v6;
      v10 = v7();

      v11 = (*(&stru_2E8.size + (swift_isaMask & *v10)))();
      if (v5)
      {
        if (v11)
        {
          type metadata accessor for JSUpsellBanner();
          v12 = sub_ABA790();

          v3 = v8;
LABEL_18:

          return v12 & 1;
        }

LABEL_14:

        v12 = 0;
        v3 = v8;
        goto LABEL_18;
      }

      if (v11)
      {

        v12 = 0;
        v3 = v11;
        goto LABEL_18;
      }
    }

    else
    {
      v13 = v5;
      if (v5)
      {
        v8 = v13;
        goto LABEL_14;
      }
    }

    v12 = 1;
    goto LABEL_18;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
    v3 = *(v1 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_24F9BC(double a1, double a2)
{
  type metadata accessor for CGSize(0);
  v12 = *(v2 + *(&stru_338.reserved2 + (swift_isaMask & *v2)));
  if (sub_AB38D0())
  {
    sub_250C1C();
    v9 = (*(&stru_158.offset + (**(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) & swift_isaMask)))(v5, v6, v7, v8);
    v10 = [v9 collectionViewLayout];

    [swift_getObjCClassFromObject() invalidationContextClass];
    swift_getObjCClassMetadata();
    sub_13C80(0, &unk_DFA9B8);
    swift_dynamicCastMetatypeUnconditional();
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v11 setInvalidateTableLayoutDelegateMetrics:1];
    [v10 invalidateLayoutWithContext:v11];
  }
}

void sub_24FB68(double a1, double a2)
{
  v3 = (v2 + *(&stru_338.reserved2 + (swift_isaMask & *v2)));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  sub_24F9BC(v4, v5);
}

uint64_t sub_24FBD8()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = (*&stru_4C8.segname[v2])();
  if (v3)
  {
    v4 = v3;
    v5 = MPModelResponseDidInvalidateNotification;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = *(v2 + 544);
    *(v7 + 24) = *(v2 + 552);
    *(v7 + 40) = *(v2 + 568);
    *(v7 + 48) = v6;
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v8 = v5;
    v9 = v4;
    v10 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v8, v4, 1, 1, sub_256C94, v7);

    if (([v9 isValid] & 1) == 0)
    {
      (*(&stru_6F8.reserved2 + (swift_isaMask & *v1)))(0, 0);
    }
  }

  else
  {
    v10 = 0;
  }

  *(v1 + *&stru_388.sectname[swift_isaMask & *v1]) = v10;
}

void sub_24FDDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*(&stru_6F8.reserved2 + (swift_isaMask & *Strong)))(0, 0);
  }
}

uint64_t sub_24FE70()
{
  v1 = sub_24F5B0() & 1;
  result = sub_24F798();
  if (v1 != (result & 1))
  {
    v3 = *(&stru_6F8.offset + (swift_isaMask & *v0));

    return v3(0, _swiftEmptyArrayStorage);
  }

  return result;
}

void sub_24FF04()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = *(&stru_1F8.offset + v2);
  v4 = sub_ABA9C0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = *(v3 - 8);
  v10 = __chkstk_darwin(v6);
  v12 = &v24 - v11;
  (*(v2 + 1216))(v10);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v9 + 32))(v12, v8, v3);
    v13 = *(v2 + 568);
    v14 = v13[3];
    v15 = v14(v3, v13);
    if (v15)
    {
      v25 = v14;
      v16 = v13[15];
      v17 = v15;
      v18 = v16(v3, v13);
      v19 = [v17 hasLoadedValuesForPropertySet:v18];

      if (v19)
      {
        v24 = *(v1 + *(&stru_1F8.reserved2 + (swift_isaMask & *v1)));
        v20 = v13[13](v3, v13);
        v21 = (*(&stru_568.reloff + (**(v1 + *(&stru_248.reloff + (swift_isaMask & *v1))) & swift_isaMask)))();
        if (!v21)
        {
          v21 = v13[14](v3, v13);
        }

        v22 = v21;
        v23 = v25(v3, v13);
        sub_25A4B4(v20 & 0x101010101, v22, v23);

        (*(v9 + 8))(v12, v3);
      }

      else
      {
        (*(v9 + 8))(v12, v3);
      }
    }

    else
    {
      (*(v9 + 8))(v12, v3);
    }
  }
}

void sub_2502E0()
{
  v2 = sub_23D9EC();
  v0 = [objc_opt_self() sharedMonitor];
  v1 = [v0 isRemoteServerReachable];

  [v2 setHidden:v1 ^ 1];
}

id sub_25036C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v3 && (v4 = MPMediaPickerConfiguration.supportsCatalogContent.getter(), v3, (v4 & 1) != 0))
  {
    static ApplicationCapabilities.shared.getter(v13);
    sub_70C54(v13);
    if (v14 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_ABB3C0();
    }
  }

  else
  {
    v5 = 0;
  }

  if (([v1 isEditing] & 1) == 0)
  {
    v6 = [v1 traitCollection];
    v7 = UITraitCollection.isMediaPicker.getter();

    if (v5 & 1 | !v7)
    {
      result = (*&stru_4C8.segname[swift_isaMask & *v1])();
      if (!result)
      {
        return result;
      }

      v9 = result;
      result = [result results];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      v11 = [result totalItemCount];

      if (v11 >= 1)
      {
        v12 = *(v1 + *(&stru_2E8.reserved2 + (swift_isaMask & *v1)));

        return (v12 == 2);
      }
    }
  }

  return 0;
}

void sub_2505D4()
{
  v1 = swift_isaMask & *v0;
  v2 = *&stru_388.segname[v1 - 8];
  v3 = *(v0 + v2);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0;
    *(v0 + v2) = v5;
    v7 = *(v0 + *(&stru_248.flags + (swift_isaMask & *v0)));
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = *(v1 + 544);
    *(v9 + 24) = *(v1 + 552);
    *(v9 + 40) = *(v1 + 568);
    *(v9 + 48) = v8;
    v10 = (v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
    v11 = *(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
    *v10 = sub_256C84;
    v10[1] = v9;

    sub_17654(v11);

    if (*(v6 + *&stru_298.segname[swift_isaMask & *v6] + 8))
    {
      swift_beginAccess();
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    sub_A34B8(v12);
    if (*(*(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds) + 16))
    {
      if (!*(v6 + *(&stru_2E8.reserved2 + (swift_isaMask & *v6))))
      {
        sub_24C108(1);
        sub_25086C();
      }
    }

    else
    {
      sub_24C108(0);
    }
  }
}

void *sub_2507E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + *&stru_298.segname[swift_isaMask & *Strong] + 8);
  v2 = Strong;
  v3 = v1;

  return v1;
}

void sub_25086C()
{
  v1 = (swift_isaMask & *v0);
  if (*(v0 + *(&stru_2E8.reserved2 + v1)) == 1)
  {
    v2 = v0;
    v3 = (*&stru_4C8.segname[swift_isaMask & *v0])();
    if (v3)
    {
      v19 = v3;
      if ([v3 isValid])
      {
        goto LABEL_6;
      }

      v4 = [v19 results];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      v6 = [v4 totalItemCount];

      if (v6 >= 1)
      {
LABEL_6:
        v7 = *(v2 + *&stru_388.segname[(swift_isaMask & *v2) - 8]);
        v8 = *(v2 + *(&stru_248.flags + (swift_isaMask & *v2)));
        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = swift_allocObject();
        v10[2] = v1[68];
        v10[3] = v1[69];
        v10[4] = v1[70];
        v10[5] = v1[71];
        v10[6] = v9;
        v10[7] = v7;
        v11 = *(v8 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate);

        if (v11 == 1)
        {
          sub_A3DD4();
        }

        if (*(v8 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) == 1)
        {
          v12 = swift_allocObject();
          *(v12 + 16) = sub_256C74;
          *(v12 + 24) = v10;
          v13 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers;
          swift_beginAccess();
          v14 = *(v8 + v13);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + v13) = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = sub_6AA00(0, v14[2] + 1, 1, v14);
            *(v8 + v13) = v14;
          }

          v17 = v14[2];
          v16 = v14[3];
          if (v17 >= v16 >> 1)
          {
            v14 = sub_6AA00((v16 > 1), v17 + 1, 1, v14);
          }

          v14[2] = v17 + 1;
          v18 = &v14[2 * v17];
          v18[4] = sub_36C08;
          v18[5] = v12;
          *(v8 + v13) = v14;
          swift_endAccess();
        }

        else
        {
          sub_250B90(v9, v7);
        }
      }

      else
      {
      }
    }
  }
}

void sub_250B90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + *&stru_388.segname[(swift_isaMask & *Strong) - 8]) == a2)
    {
      sub_24C108(2);
    }
  }
}

void sub_250C1C()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    v2 = [v0 traitCollection];
    v3 = [v0 navigationItem];
    v4 = [v1 parentViewController];
    if (v4)
    {
      v5 = v4;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v6 = v5;
        v7 = [v6 navigationItem];

        v5 = [v6 parentViewController];
        v3 = v7;
        if (!v5)
        {
          goto LABEL_9;
        }
      }
    }

    v7 = v3;
LABEL_9:
    v8 = sub_2B51D8();
    sub_387430(v8, v9);

    v10 = [v1 traitCollection];
    v11 = UITraitCollection.mediaPickerConfiguration.getter();

    if (v11)
    {
      v12 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
      v13 = v11;
      v14 = JSMediaPickerEnvironment.init(configuration:)(v13);
      v15 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 32);
      if (v15)
      {
        v16 = *&stru_108.segname[(*v15 & swift_isaMask) - 8];
        v17 = v15;
        v18 = v14;
        v19 = v16(v36);
        v21 = *v20;
        *v20 = v14;

        v19(v36, 0);
      }

      else
      {
      }
    }

    v22 = (*(&stru_158.offset + (**(v1 + *(&stru_248.reloff + (swift_isaMask & *v1))) & swift_isaMask)))();
    v23 = [v22 collectionViewLayout];

    [v23 invalidateLayout];
    if (*(*(v1 + *(&stru_248.reserved2 + (swift_isaMask & *v1))) + OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 2) == 1)
    {
      v24 = [v1 view];
      if (!v24)
      {
        __break(1u);
        return;
      }

      v25 = v24;
      [v24 bounds];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v37.origin.x = v27;
      v37.origin.y = v29;
      v37.size.width = v31;
      v37.size.height = v33;
      Width = CGRectGetWidth(v37);
      v35 = UITraitCollection.isAccessibilitySizeCategory.getter();
      HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(2u, 0, v35 & 1, v36, Width);
    }
  }
}

char *sub_250FAC()
{
  v1 = *&stru_388.segname[swift_isaMask & *v0];
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 32);
    if (v5)
    {
      v6 = *&stru_B8.segname[(*v5 & swift_isaMask) + 8];
      v7 = v5;
      v8 = v6();

      v9 = (*(&stru_2E8.size + (swift_isaMask & *v8)))();
    }

    else
    {
      v9 = 0;
    }

    v10 = objc_allocWithZone(type metadata accessor for UpsellBannerViewController());
    v11 = sub_1D4A3C(v9);
    v12 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void sub_251110(uint64_t a1)
{
  v2 = *&stru_388.segname[swift_isaMask & *v1];
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_251140(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v38 = swift_isaMask & v3;
  v5 = *(&stru_1F8.offset + (swift_isaMask & v3));
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &aBlock[-1] - v7;
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &aBlock[-1] - v12;
  v40 = 0;
  v14 = (*&stru_1F8.sectname[**(v2 + *(&stru_248.reloff + (v4 & v3))) & v4])(v11);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_6;
  }

  v15 = v14;
  (*(&stru_478.reserved2 + (swift_isaMask & *v2)))();
  if ((*(v6 + 48))(v13, 1, v5))
  {

    (*(v10 + 8))(v13, v9);
LABEL_4:
    v16 = 0;
LABEL_6:
    v17 = *(&stru_2E8.flags + (swift_isaMask & *v2));
    v18 = *(v2 + v17);
    *(v2 + v17) = HIBYTE(v40);
    sub_24A1BC(v18);
    sub_24A128(v40);
    sub_17654(v16);
    return;
  }

  (*(v6 + 16))(v8, v13, v5);
  (*(v10 + 8))(v13, v9);
  v19 = (*(*(v38 + 568) + 24))(v5);
  (*(v6 + 8))(v8, v5);
  if (!v19)
  {

    goto LABEL_4;
  }

  v20 = v19;
  if (sub_2FBDBC(v20))
  {
    HIBYTE(v40) = 1;
    v21 = sub_304104(v20);

    v16 = 0;
    LOBYTE(v40) = v21 & 1;
    goto LABEL_6;
  }

  v22 = [v20 pickableObjectFor:2];

  if (!v22 || (v22, v23 = [v2 traitCollection], v24 = UITraitCollection.mediaPickerConfiguration.getter(), v23, !v24) || (v25 = objc_msgSend(v24, "selectionMode"), v24, v25 != &dword_0 + 1) || (v26 = *&stru_4C8.segname[swift_isaMask & *v2], (v27 = v26()) == 0))
  {
LABEL_21:

    v16 = 0;
    goto LABEL_6;
  }

  v28 = v27;
  v29 = [v27 results];

  if (v29)
  {
    v30 = [v29 totalItemCount];

    if (v30 < 1)
    {
      goto LABEL_21;
    }

    v40 = 257;
    v31 = v26();
    if (!v31)
    {
      goto LABEL_21;
    }

    v32 = v31;
    v33 = [v31 results];

    if (v33)
    {
      v34 = swift_allocObject();
      v34[2] = &v40 + 1;
      v34[3] = v15;
      v34[4] = &v40;
      v35 = swift_allocObject();
      v16 = sub_256C20;
      *(v35 + 16) = sub_256C20;
      *(v35 + 24) = v34;
      aBlock[4] = sub_5794C;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_48D4FC;
      aBlock[3] = &block_descriptor_64;
      v36 = _Block_copy(aBlock);

      [v33 enumerateItemsUsingBlock:v36];

      _Block_release(v36);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25176C(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, _BYTE *a6)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    if (*a4 == 1)
    {
      v11 = sub_2FBDBC(v9);
    }

    else
    {
      v11 = 0;
    }

    *a4 = v11 & 1;
    if (*a6 == 1)
    {
      v12 = sub_304104(v10);
      *a6 = v12 & 1;
      if (*a4 & 1) != 0 || (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *a6 = 0;
      if (*a4)
      {
        goto LABEL_11;
      }
    }

    *a3 = 1;
  }

LABEL_11:

  return swift_unknownObjectRelease();
}

double sub_251860@<D0>(_OWORD *a1@<X8>)
{
  sub_255E10(v7);
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

uint64_t sub_2518CC()
{
  v0 = sub_256124();
  sub_307CC(v0);
  return v0;
}

double sub_251904@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2448F8(*a1, v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 137) = *(v9 + 9);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

void *sub_251968()
{
  v0 = sub_255E74();
  v1 = v0;
  return v0;
}

void sub_251A70()
{
  sub_ABA9C0();
  if (v0 <= 0x3F)
  {
    sub_251C40();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_251C40()
{
  if (!qword_DFA8C0[0])
  {
    type metadata accessor for MetricsEvent.Page(255);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, qword_DFA8C0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251D04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_251D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251DB4()
{
  result = qword_DFA948;
  if (!qword_DFA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFA948);
  }

  return result;
}

uint64_t sub_251E40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_251E7C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0);
  __chkstk_darwin(v4 - 8);
  *&v88 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v7 = *(v6 - 8);
  v81 = v6;
  v82 = v7;
  __chkstk_darwin(v6);
  v9 = &v76 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA00);
  __chkstk_darwin(v84);
  v79 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA08);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v76 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA10);
  __chkstk_darwin(v80);
  v76 = &v76 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA18);
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v77 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA20);
  v18 = *(v17 - 8);
  v86 = v17;
  v87 = v18;
  __chkstk_darwin(v17);
  v78 = &v76 - v19;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = _swiftEmptyArrayStorage;
  *(v2 + 152) = [objc_allocWithZone(type metadata accessor for EnvironmentMonitorObserver()) init];
  *(v2 + 160) = 0;
  *(v2 + 32) = a1;
  v90 = a1;
  v20 = [v90 window];
  v89 = [v20 windowScene];

  v21 = *(v2 + 152);
  swift_beginAccess();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA28);
  sub_AB54E0();
  swift_endAccess();

  sub_36A00(&unk_DFAA30, &qword_DFAA08);
  sub_257138();
  sub_AB55B0();
  (*(v12 + 8))(v14, v11);
  v23 = *(v2 + 152);
  swift_beginAccess();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54E0();
  swift_endAccess();

  sub_36A00(&qword_DFAA48, &qword_DFC650);
  v25 = v81;
  sub_AB55B0();
  (*(v82 + 8))(v9, v25);
  sub_36A00(&qword_DFAA50, &qword_DFAA10);
  sub_36A00(&qword_DFAA58, &qword_DFAA00);
  v26 = v77;
  sub_AB5420();
  sub_13C80(0, &qword_DE8ED0);
  v27 = sub_ABA150();
  v91 = v27;
  v28 = sub_ABA130();
  v29 = v88;
  (*(*(v28 - 8) + 56))(v88, 1, 1, v28);
  sub_36A00(&unk_DFAA60, &qword_DFAA18);
  sub_60090();
  v30 = v78;
  v31 = v83;
  sub_AB5590();
  sub_12E1C(v29, &unk_DFA9F0);
  (*(v85 + 8))(v26, v31);

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_25718C;
  *(v33 + 24) = v32;
  sub_36A00(&unk_DFAA70, &qword_DFAA20);

  v34 = v86;
  v35 = sub_AB55C0();
  (*(v87 + 8))(v30, v34);

  *(v2 + 160) = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_AF82E0;
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80);
  inited = swift_initStackObject();
  v88 = xmmword_AF8820;
  *(inited + 16) = xmmword_AF8820;
  v39 = UIScreen.Dimensions.size.getter(COERCE_DOUBLE(3));
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v40;
  *(inited + 40) = v41;
  UIScreen.Dimensions.size.getter(v39);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v42;
  *(inited + 80) = v43;
  LOBYTE(v91) = 6;
  sub_AFE98();
  v44 = UIAccessibilityReduceMotionStatusDidChangeNotification;
  v45 = NSProcessInfoPowerStateDidChangeNotification;
  v46 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0, 0, &v91, &_s4KeysON);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  *(inited + 136) = &type metadata for UserDefaultsKeyValueTrigger;
  *(inited + 144) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v53 = swift_allocObject();
  *(inited + 112) = v53;
  v53[2] = v46;
  v53[3] = v48;
  v53[4] = v50;
  v53[5] = v52;
  v54 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v55 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_257264, v54);

  v87 = v37;
  *(v37 + 32) = v55;
  v56 = swift_allocObject();
  swift_weakInit();
  *(v37 + 40) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(AVAudioSessionMediaServicesWereResetNotification, 1, sub_257294, v56);
  v57 = swift_initStackObject();
  v58 = *&v88;
  *(v57 + 16) = v88;
  v59 = v89;
  v60 = UIScreen.Dimensions.size.getter(v58);
  *(v57 + 56) = &type metadata for NotificationTrigger;
  *(v57 + 64) = &protocol witness table for NotificationTrigger;
  *(v57 + 32) = v61;
  *(v57 + 40) = v62;
  v63 = UIScreen.Dimensions.size.getter(v60);
  *(v57 + 96) = &type metadata for NotificationTrigger;
  *(v57 + 104) = &protocol witness table for NotificationTrigger;
  *(v57 + 72) = v64;
  *(v57 + 80) = v65;
  UIScreen.Dimensions.size.getter(v63);
  *(v57 + 136) = &type metadata for NotificationTrigger;
  *(v57 + 144) = &protocol witness table for NotificationTrigger;
  *(v57 + 112) = v66;
  *(v57 + 120) = v67;
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = v59;
  v70 = UISceneDidActivateNotification;
  v71 = UISceneWillDeactivateNotification;
  v72 = UISceneDidEnterBackgroundNotification;

  swift_allocObject();

  v73 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v57, 1, sub_25729C, v68);

  v74 = v87;
  *(v87 + 48) = v73;

  *(v2 + 144) = v74;

  return v2;
}

uint64_t sub_252988(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0);
  __chkstk_darwin(v4 - 8);
  *&v88 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v7 = *(v6 - 8);
  v81 = v6;
  v82 = v7;
  __chkstk_darwin(v6);
  v9 = &v76 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA00);
  __chkstk_darwin(v84);
  v79 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA08);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v76 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA10);
  __chkstk_darwin(v80);
  v76 = &v76 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA18);
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v77 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA20);
  v18 = *(v17 - 8);
  v86 = v17;
  v87 = v18;
  __chkstk_darwin(v17);
  v78 = &v76 - v19;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = _swiftEmptyArrayStorage;
  *(v2 + 152) = [objc_allocWithZone(type metadata accessor for EnvironmentMonitorObserver()) init];
  *(v2 + 160) = 0;
  *(v2 + 32) = a1;
  v90 = a1;
  v20 = [v90 window];
  v89 = [v20 windowScene];

  v21 = *(v2 + 152);
  swift_beginAccess();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA28);
  sub_AB54E0();
  swift_endAccess();

  sub_36A00(&unk_DFAA30, &qword_DFAA08);
  sub_257138();
  sub_AB55B0();
  (*(v12 + 8))(v14, v11);
  v23 = *(v2 + 152);
  swift_beginAccess();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54E0();
  swift_endAccess();

  sub_36A00(&qword_DFAA48, &qword_DFC650);
  v25 = v81;
  sub_AB55B0();
  (*(v82 + 8))(v9, v25);
  sub_36A00(&qword_DFAA50, &qword_DFAA10);
  sub_36A00(&qword_DFAA58, &qword_DFAA00);
  v26 = v77;
  sub_AB5420();
  sub_13C80(0, &qword_DE8ED0);
  v27 = sub_ABA150();
  v91 = v27;
  v28 = sub_ABA130();
  v29 = v88;
  (*(*(v28 - 8) + 56))(v88, 1, 1, v28);
  sub_36A00(&unk_DFAA60, &qword_DFAA18);
  sub_60090();
  v30 = v78;
  v31 = v83;
  sub_AB5590();
  sub_12E1C(v29, &unk_DFA9F0);
  (*(v85 + 8))(v26, v31);

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_259540;
  *(v33 + 24) = v32;
  sub_36A00(&unk_DFAA70, &qword_DFAA20);

  v34 = v86;
  v35 = sub_AB55C0();
  (*(v87 + 8))(v30, v34);

  *(v2 + 160) = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_AF82E0;
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80);
  inited = swift_initStackObject();
  v88 = xmmword_AF8820;
  *(inited + 16) = xmmword_AF8820;
  v39 = UIScreen.Dimensions.size.getter(COERCE_DOUBLE(3));
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v40;
  *(inited + 40) = v41;
  UIScreen.Dimensions.size.getter(v39);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v42;
  *(inited + 80) = v43;
  LOBYTE(v91) = 6;
  sub_AFE98();
  v44 = UIAccessibilityReduceMotionStatusDidChangeNotification;
  v45 = NSProcessInfoPowerStateDidChangeNotification;
  v46 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0, 0, &v91, &_s4KeysON);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  *(inited + 136) = &type metadata for UserDefaultsKeyValueTrigger;
  *(inited + 144) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v53 = swift_allocObject();
  *(inited + 112) = v53;
  v53[2] = v46;
  v53[3] = v48;
  v53[4] = v50;
  v53[5] = v52;
  v54 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v55 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_259570, v54);

  v87 = v37;
  *(v37 + 32) = v55;
  v56 = swift_allocObject();
  swift_weakInit();
  *(v37 + 40) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(AVAudioSessionMediaServicesWereResetNotification, 1, sub_2595A0, v56);
  v57 = swift_initStackObject();
  v58 = *&v88;
  *(v57 + 16) = v88;
  v59 = v89;
  v60 = UIScreen.Dimensions.size.getter(v58);
  *(v57 + 56) = &type metadata for NotificationTrigger;
  *(v57 + 64) = &protocol witness table for NotificationTrigger;
  *(v57 + 32) = v61;
  *(v57 + 40) = v62;
  v63 = UIScreen.Dimensions.size.getter(v60);
  *(v57 + 96) = &type metadata for NotificationTrigger;
  *(v57 + 104) = &protocol witness table for NotificationTrigger;
  *(v57 + 72) = v64;
  *(v57 + 80) = v65;
  UIScreen.Dimensions.size.getter(v63);
  *(v57 + 136) = &type metadata for NotificationTrigger;
  *(v57 + 144) = &protocol witness table for NotificationTrigger;
  *(v57 + 112) = v66;
  *(v57 + 120) = v67;
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = v59;
  v70 = UISceneDidActivateNotification;
  v71 = UISceneWillDeactivateNotification;
  v72 = UISceneDidEnterBackgroundNotification;

  swift_allocObject();

  v73 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v57, 1, sub_2595A8, v68);

  v74 = v87;
  *(v87 + 48) = v73;

  *(v2 + 144) = v74;

  return v2;
}

uint64_t sub_253494(uint64_t a1, char a2, uint64_t a3, void (*a4)(void, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a2 & 1, a1);
  }

  return result;
}

uint64_t sub_253510(uint64_t a1, void (*a2)(void, void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v5;
    sub_AB5510();

    v7 = *(v4 + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    sub_AB5510();

    a2(v9, v9);
  }

  return result;
}

uint64_t sub_25362C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v1 = *(Strong + 16);
  if (!v1)
  {

LABEL_11:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(*result + 264))(result);
    }

    return result;
  }

  sub_307CC(*(Strong + 16));

  v1(v2);
  v4 = v3;
  v5 = *(v3 + 16);
  result = swift_beginAccess();
  if (!v5)
  {
LABEL_9:

    sub_17654(v1);
    goto LABEL_11;
  }

  v7 = 0;
  v8 = (v4 + 40);
  while (v7 < *(v4 + 16))
  {
    v9 = *v8;
    v11[0] = *(v8 - 1);
    v11[1] = v9;
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = *(*result + 304);

      v10(v11);
    }

    ++v7;
    v8 += 2;
    if (v5 == v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2537F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 16);
  if (!v1)
  {

LABEL_9:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(*result + 264))(result);
    }

    return result;
  }

  sub_307CC(*(Strong + 16));

  v1(v2);
  v4 = v3;
  v5 = *(v3 + 16);
  result = swift_beginAccess();
  if (!v5)
  {
LABEL_7:

    sub_17654(v1);
    goto LABEL_9;
  }

  v7 = 0;
  while (v7 < *(v4 + 16))
  {
    ++v7;
    swift_weakLoadStrong();

    if (v5 == v7)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_253950()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 32);
    v2 = v1;

    if (v1)
    {
      v3 = [v2 window];

      if (v3)
      {
        v4 = [v3 windowScene];

        if (v4)
        {
          v5 = [v4 activationState];

          if (v5 > 0)
          {
            if (v5 == (&dword_0 + 1))
            {
              swift_beginAccess();
              v15 = swift_weakLoadStrong();
              if (!v15)
              {
                return;
              }

              v5 = *(v15 + 16);
              if (!v5)
              {
                goto LABEL_35;
              }

              sub_307CC(*(v15 + 16));

              v17 = v5(v16);
              v18 = *(v17 + 16);
              swift_beginAccess();
              if (!v18)
              {
                goto LABEL_34;
              }

              v19 = 0;
              v20 = (v17 + 40);
              while (v19 < *(v17 + 16))
              {
                v21 = *v20;
                v33 = *(v20 - 1);
                v34 = v21;
                v22 = swift_weakLoadStrong();
                if (v22)
                {
                  v23 = *(*v22 + 288);

                  v23(&v33);
                }

                ++v19;
                v20 += 2;
                if (v18 == v19)
                {
                  goto LABEL_34;
                }
              }

LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            if (v5 != (&dword_0 + 2))
            {
              goto LABEL_40;
            }
          }

          else if (v5 != -1)
          {
            if (!v5)
            {
              swift_beginAccess();
              v6 = swift_weakLoadStrong();
              if (!v6)
              {
                return;
              }

              v5 = *(v6 + 16);
              if (v5)
              {
                sub_307CC(*(v6 + 16));

                v8 = v5(v7);
                v9 = *(v8 + 16);
                swift_beginAccess();
                if (v9)
                {
                  v10 = 0;
                  v11 = (v8 + 40);
                  while (v10 < *(v8 + 16))
                  {
                    v12 = *v11;
                    v33 = *(v11 - 1);
                    v34 = v12;
                    v13 = swift_weakLoadStrong();
                    if (v13)
                    {
                      v14 = *(*v13 + 280);

                      v14(&v33);
                    }

                    ++v10;
                    v11 += 2;
                    if (v9 == v10)
                    {
                      goto LABEL_34;
                    }
                  }

                  goto LABEL_39;
                }

LABEL_34:

                sub_17654(v5);
                return;
              }

LABEL_35:

              return;
            }

LABEL_40:
            v36 = 0;
            v37 = 0xE000000000000000;
            sub_ABAD90(24);
            v38._object = 0x8000000000B4AB80;
            v38._countAndFlagsBits = 0xD000000000000013;
            sub_AB94A0(v38);
            v39._countAndFlagsBits = 0xD000000000000016;
            v39._object = 0x8000000000B59DD0;
            sub_AB94A0(v39);
            v40._countAndFlagsBits = 32;
            v40._object = 0xE100000000000000;
            sub_AB94A0(v40);
            v35 = v5;
            type metadata accessor for ActivationState(0);
            sub_ABAF70();
            sub_ABAFD0();
            __break(1u);
            return;
          }

          swift_beginAccess();
          v24 = swift_weakLoadStrong();
          if (!v24)
          {
            return;
          }

          v5 = *(v24 + 16);
          if (!v5)
          {
            goto LABEL_35;
          }

          sub_307CC(*(v24 + 16));

          v26 = v5(v25);
          v27 = *(v26 + 16);
          swift_beginAccess();
          if (!v27)
          {
            goto LABEL_34;
          }

          v28 = 0;
          v29 = (v26 + 40);
          while (v28 < *(v26 + 16))
          {
            v30 = *v29;
            v33 = *(v29 - 1);
            v34 = v30;
            v31 = swift_weakLoadStrong();
            if (v31)
            {
              v32 = *(*v31 + 296);

              v32(&v33);
            }

            ++v28;
            v29 += 2;
            if (v27 == v28)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_38;
        }
      }
    }
  }
}

void sub_253E68()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v40 - v6;
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 32);
    v12 = v11;

    if (v11)
    {
      v13 = [v12 window];

      if (v13)
      {
        v14 = [v13 windowScene];

        if (v14)
        {
          v15 = [v14 activationState];

          if (v15 > 0)
          {
            if (v15 == &dword_0 + 1)
            {
              swift_beginAccess();
              v24 = swift_weakLoadStrong();
              if (!v24)
              {
                return;
              }

              v25 = *(v24 + 16);
              if (!v25)
              {
                goto LABEL_35;
              }

              v26 = *(v24 + 24);
              sub_307CC(*(v24 + 16));

              v41 = v26;
              v42 = v25;
              v15 = v25(v27);
              v40 = v28;
              v29 = *(v15 + 2);
              swift_beginAccess();
              if (!v29)
              {
                goto LABEL_34;
              }

              v30 = 0;
              while (v30 < *(v15 + 2))
              {
                (*(v1 + 16))(v7, &v15[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v30], v0);
                v31 = swift_weakLoadStrong();
                if (v31)
                {
                  (*(*v31 + 288))(v7);
                }

                ++v30;
                (*(v1 + 8))(v7, v0);
                if (v29 == v30)
                {
                  goto LABEL_34;
                }
              }

LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            if (v15 != &dword_0 + 2)
            {
              goto LABEL_40;
            }
          }

          else if (v15 != -1)
          {
            if (!v15)
            {
              swift_beginAccess();
              v16 = swift_weakLoadStrong();
              if (!v16)
              {
                return;
              }

              v17 = *(v16 + 16);
              if (v17)
              {
                v18 = *(v16 + 24);
                sub_307CC(*(v16 + 16));

                v41 = v18;
                v42 = v17;
                v15 = v17(v19);
                v40 = v20;
                v21 = *(v15 + 2);
                swift_beginAccess();
                if (v21)
                {
                  v22 = 0;
                  while (v22 < *(v15 + 2))
                  {
                    (*(v1 + 16))(v9, &v15[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v22], v0);
                    v23 = swift_weakLoadStrong();
                    if (v23)
                    {
                      (*(*v23 + 280))(v9);
                    }

                    ++v22;
                    (*(v1 + 8))(v9, v0);
                    if (v21 == v22)
                    {
                      goto LABEL_34;
                    }
                  }

                  goto LABEL_39;
                }

LABEL_34:

                sub_17654(v42);
                return;
              }

LABEL_35:

              return;
            }

LABEL_40:
            v44 = 0;
            v45 = 0xE000000000000000;
            sub_ABAD90(24);
            v46._object = 0x8000000000B4AB80;
            v46._countAndFlagsBits = 0xD000000000000013;
            sub_AB94A0(v46);
            v47._countAndFlagsBits = 0xD000000000000016;
            v47._object = 0x8000000000B59DD0;
            sub_AB94A0(v47);
            v48._countAndFlagsBits = 32;
            v48._object = 0xE100000000000000;
            sub_AB94A0(v48);
            v43 = v15;
            type metadata accessor for ActivationState(0);
            sub_ABAF70();
            sub_ABAFD0();
            __break(1u);
            return;
          }

          swift_beginAccess();
          v32 = swift_weakLoadStrong();
          if (!v32)
          {
            return;
          }

          v33 = *(v32 + 16);
          if (!v33)
          {
            goto LABEL_35;
          }

          v34 = *(v32 + 24);
          sub_307CC(*(v32 + 16));

          v41 = v34;
          v42 = v33;
          v15 = v33(v35);
          v40 = v36;
          v37 = *(v15 + 2);
          swift_beginAccess();
          if (!v37)
          {
            goto LABEL_34;
          }

          v38 = 0;
          while (v38 < *(v15 + 2))
          {
            (*(v1 + 16))(v4, &v15[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v38], v0);
            v39 = swift_weakLoadStrong();
            if (v39)
            {
              (*(*v39 + 296))(v4);
            }

            ++v38;
            (*(v1 + 8))(v4, v0);
            if (v37 == v38)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_38;
        }
      }
    }
  }
}

void sub_2544C0(int a1, uint64_t a2)
{
  v3 = v2;
  v73 = a2;
  v74 = a1;
  v4 = sub_AB4BC0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v71 = &v70 - v9;
  v10 = __chkstk_darwin(v8);
  v72 = &v70 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v70 - v13;
  __chkstk_darwin(v12);
  v16 = &v70 - v15;
  v76 = sub_AB3870();
  v17 = *(v76 - 8);
  __chkstk_darwin(v76);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &selRef_setSubtitleText_;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    LOBYTE(v21) = 0;
    goto LABEL_9;
  }

  v22 = [objc_opt_self() processInfo];
  v23 = [v22 isLowPowerModeEnabled];

  if (v23)
  {
    LOBYTE(v21) = 0;
LABEL_5:
    v20 = &selRef_setSubtitleText_;
    goto LABEL_9;
  }

  v24 = [objc_opt_self() standardUserDefaults];
  sub_F75B4(v19);

  LOBYTE(v24) = MotionMode.allowsMotion.getter();
  (*(v17 + 8))(v19, v76);
  LOBYTE(v21) = 0;
  if ((v24 & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = &selRef_setSubtitleText_;
  if ((v74 & 1) == 0)
  {
    v21 = 0x47u >> v73;
  }

LABEL_9:
  v25 = *(v3 + 56);
  *(v3 + 56) = v21 & 1;
  sub_389830(v25);
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v77 = v5;
  if (IsReduceMotionEnabled)
  {
    v70 = v14;
    v27 = v17;
    v28 = v20;
    v29 = Logger.motion.unsafeMutableAddressor();
    (*(v5 + 16))(v16, v29, v4);
    v30 = sub_AB4BA0();
    v31 = sub_AB9F50();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Disabling Motion: Reduce Motion is on", v32, 2u);
      v5 = v77;
    }

    (*(v5 + 8))(v16, v4);

    v20 = v28;
    v17 = v27;
    v14 = v70;
  }

  v33 = [objc_opt_self() processInfo];
  v34 = [v33 v20[351]];

  if (v34)
  {
    v35 = Logger.motion.unsafeMutableAddressor();
    (*(v5 + 16))(v14, v35, v4);
    v36 = sub_AB4BA0();
    v37 = sub_AB9F50();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Disabling Motion: Low Power Mode is on", v38, 2u);
    }

    (*(v5 + 8))(v14, v4);
  }

  v39 = objc_opt_self();
  v40 = [v39 standardUserDefaults];
  sub_F75B4(v19);

  LOBYTE(v40) = MotionMode.allowsMotion.getter();
  v41 = *(v17 + 8);
  v41(v19, v76);
  if ((v40 & 1) == 0)
  {
    v42 = Logger.motion.unsafeMutableAddressor();
    (*(v77 + 16))(v72, v42, v4);
    v43 = sub_AB4BA0();
    v44 = sub_AB9F50();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v70 = v4;
      v46 = v45;
      *v45 = 134217984;
      v47 = [v39 standardUserDefaults];
      sub_F75B4(v19);

      v48 = sub_AB3860();
      v41(v19, v76);
      *(v46 + 1) = v48;
      _os_log_impl(&dword_0, v43, v44, "Disabling Motion: Motion Mode is %ld", v46, 0xCu);
      v4 = v70;
    }

    (*(v77 + 8))(v72, v4);
  }

  v49 = v75;
  v50 = v77;
  if (v74)
  {
    v51 = Logger.motion.unsafeMutableAddressor();
    v52 = v71;
    (*(v50 + 16))(v71, v51, v4);
    v53 = sub_AB4BA0();
    v54 = sub_AB9F50();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "Disabling Motion: Low Data Mode is on", v55, 2u);
    }

    (*(v50 + 8))(v52, v4);
  }

  if ((v73 - 3) <= 2u)
  {
    v56 = Logger.motion.unsafeMutableAddressor();
    (*(v50 + 16))(v49, v56, v4);
    swift_retain_n();
    v57 = sub_AB4BA0();
    v58 = v4;
    v59 = sub_AB9F50();
    if (!os_log_type_enabled(v57, v59))
    {

      (*(v50 + 8))(v49, v58);

      return;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v79 = v61;
    *v60 = 136315138;
    v62 = *(v3 + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    v63 = v62;
    sub_AB5510();

    v64 = v78;

    if (v64 <= 2)
    {
      if (v64)
      {
        v65 = v75;
        if (v64 == 1)
        {
          v66 = 0xE500000000000000;
          v67 = 0x746867696CLL;
        }

        else
        {
          v66 = 0xE800000000000000;
          v67 = 0x6574617265646F6DLL;
        }
      }

      else
      {
        v66 = 0xE700000000000000;
        v67 = 0x6C616E696D6F6ELL;
        v65 = v75;
      }

      goto LABEL_42;
    }

    if (v64 > 4)
    {
      v65 = v75;
      if (v64 != 5)
      {
        v66 = 0xE700000000000000;
        v67 = 0x6E776F6E6B6E75;
        goto LABEL_42;
      }

      v66 = 0xE800000000000000;
      v68 = 1701145715;
    }

    else
    {
      v65 = v75;
      if (v64 == 3)
      {
        v66 = 0xE500000000000000;
        v67 = 0x7976616568;
LABEL_42:
        v69 = sub_425E68(v67, v66, &v79);

        *(v60 + 4) = v69;
        _os_log_impl(&dword_0, v57, v59, "Disabling Motion: Thermal Level is %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);

        (*(v50 + 8))(v65, v58);

        return;
      }

      v66 = 0xE800000000000000;
      v68 = 1885434484;
    }

    v67 = v68 | 0x676E697000000000;
    goto LABEL_42;
  }
}

void sub_254E04(int a1, uint64_t a2)
{
  v3 = v2;
  v72 = a2;
  v71 = a1;
  v4 = sub_AB3870();
  v5 = *(v4 - 8);
  v74 = v4;
  v75 = v5;
  __chkstk_darwin(v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB4BC0();
  v76 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v73 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v69 = &v67 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v67 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v67 - v16;
  __chkstk_darwin(v15);
  v19 = &v67 - v18;
  if (UIAccessibilityIsReduceMotionEnabled() || (v20 = [objc_opt_self() processInfo], v21 = objc_msgSend(v20, "isLowPowerModeEnabled"), v20, (v21 & 1) != 0))
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v23 = [objc_opt_self() standardUserDefaults];
    sub_F75B4(v7);

    v24 = MotionMode.allowsMotion.getter();
    (*(v75 + 8))(v7, v74);
    v22 = 0x47u >> v72;
    if (v71)
    {
      LOBYTE(v22) = 0;
    }

    if ((v24 & 1) == 0)
    {
      LOBYTE(v22) = 0;
    }
  }

  (*(*v3 + 248))(v22 & 1);
  v25 = v8;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v26 = Logger.motion.unsafeMutableAddressor();
    (*(v76 + 16))(v19, v26, v8);
    v27 = sub_AB4BA0();
    v28 = sub_AB9F50();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "Disabling Motion: Reduce Motion is on", v29, 2u);
    }

    (*(v76 + 8))(v19, v8);
  }

  v30 = [objc_opt_self() processInfo];
  v31 = [v30 isLowPowerModeEnabled];

  if (v31)
  {
    v32 = Logger.motion.unsafeMutableAddressor();
    (*(v76 + 16))(v17, v32, v8);
    v33 = sub_AB4BA0();
    v34 = sub_AB9F50();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "Disabling Motion: Low Power Mode is on", v35, 2u);
    }

    (*(v76 + 8))(v17, v8);
  }

  v36 = objc_opt_self();
  v37 = [v36 standardUserDefaults];
  sub_F75B4(v7);

  LOBYTE(v37) = MotionMode.allowsMotion.getter();
  v38 = v75 + 8;
  v39 = *(v75 + 8);
  v39(v7, v74);
  if ((v37 & 1) == 0)
  {
    v75 = v38;
    v40 = Logger.motion.unsafeMutableAddressor();
    (*(v76 + 16))(v70, v40, v8);
    v41 = sub_AB4BA0();
    v42 = sub_AB9F50();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v68 = v3;
      v44 = v43;
      *v43 = 134217984;
      v45 = [v36 standardUserDefaults];
      sub_F75B4(v7);

      v46 = sub_AB3860();
      v39(v7, v74);
      *(v44 + 1) = v46;
      _os_log_impl(&dword_0, v41, v42, "Disabling Motion: Motion Mode is %ld", v44, 0xCu);
      v3 = v68;
    }

    (*(v76 + 8))(v70, v8);
  }

  v47 = v73;
  v48 = v76;
  if (v71)
  {
    v49 = Logger.motion.unsafeMutableAddressor();
    v50 = v69;
    (*(v48 + 16))(v69, v49, v25);
    v51 = sub_AB4BA0();
    v52 = sub_AB9F50();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "Disabling Motion: Low Data Mode is on", v53, 2u);
    }

    (*(v48 + 8))(v50, v25);
  }

  if ((v72 - 3) <= 2u)
  {
    v54 = Logger.motion.unsafeMutableAddressor();
    (*(v48 + 16))(v47, v54, v25);
    swift_retain_n();
    v55 = sub_AB4BA0();
    v56 = sub_AB9F50();
    if (!os_log_type_enabled(v55, v56))
    {

      (*(v48 + 8))(v47, v25);

      return;
    }

    v57 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v78 = v75;
    *v57 = 136315138;
    v58 = v3[19];
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v58;
    sub_AB5510();

    v60 = v77;

    if (v60 <= 2)
    {
      if (v60)
      {
        v61 = v73;
        v62 = v75;
        if (v60 == 1)
        {
          v63 = 0xE500000000000000;
          v64 = 0x746867696CLL;
        }

        else
        {
          v63 = 0xE800000000000000;
          v64 = 0x6574617265646F6DLL;
        }
      }

      else
      {
        v63 = 0xE700000000000000;
        v64 = 0x6C616E696D6F6ELL;
        v61 = v73;
        v62 = v75;
      }

      goto LABEL_41;
    }

    if (v60 > 4)
    {
      v61 = v73;
      v62 = v75;
      if (v60 != 5)
      {
        v63 = 0xE700000000000000;
        v64 = 0x6E776F6E6B6E75;
        goto LABEL_41;
      }

      v63 = 0xE800000000000000;
      v65 = 1701145715;
    }

    else
    {
      v61 = v73;
      v62 = v75;
      if (v60 == 3)
      {
        v63 = 0xE500000000000000;
        v64 = 0x7976616568;
LABEL_41:
        v66 = sub_425E68(v64, v63, &v78);

        *(v57 + 4) = v66;
        _os_log_impl(&dword_0, v55, v56, "Disabling Motion: Thermal Level is %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);

        (*(v48 + 8))(v61, v25);

        return;
      }

      v63 = 0xE800000000000000;
      v65 = 1885434484;
    }

    v64 = v65 | 0x676E697000000000;
    goto LABEL_41;
  }
}

void *sub_255740(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[21] = a1;
  a6[22] = &off_CFF908;
  a6[23] = a2;
  a6[24] = a3;
  a6[25] = a4;
  a6[26] = a5;
  v34 = a3;

  v10 = a1;
  v33 = a2;
  v11 = sub_251E7C(a1);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a4;
  v13[4] = a5;
  v14 = v11[2];
  v11[2] = sub_2596F0;
  v11[3] = v13;
  swift_retain_n();

  sub_17654(v14);

  v15 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v16 = v11[21];
  v17 = v11[22];
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 32);

  v19(sub_2596E4, v15, ObjectType, v17);
  v11[21] = v16;
  v11[22] = v17;
  swift_endAccess();

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a4;
  v21[4] = a5;
  swift_beginAccess();
  v22 = v11[21];
  v23 = v11[22];
  v24 = swift_getObjectType();
  v25 = *(v23 + 56);

  v25(sub_2596B0, v21, v24, v23);
  v11[21] = v22;
  v11[22] = v23;
  swift_endAccess();

  v26 = swift_allocObject();
  swift_weakInit();

  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a4;
  v27[4] = a5;
  swift_beginAccess();
  v28 = v11[21];
  v29 = v11[22];
  v30 = swift_getObjectType();
  v31 = *(v29 + 80);

  v31(sub_2596B4, v27, v30, v29);
  v11[21] = v28;
  v11[22] = v29;
  swift_endAccess();

  return v11;
}

void *sub_255AA8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[21] = a1;
  a6[22] = &off_D19610;
  a6[23] = a2;
  a6[24] = a3;
  a6[25] = a4;
  a6[26] = a5;
  v34 = a3;

  v10 = a1;
  v33 = a2;
  v11 = sub_251E7C(a1);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a4;
  v13[4] = a5;
  v14 = v11[2];
  v11[2] = sub_25710C;
  v11[3] = v13;
  swift_retain_n();

  sub_17654(v14);

  v15 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v16 = v11[21];
  v17 = v11[22];
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 32);

  v19(sub_257118, v15, ObjectType, v17);
  v11[21] = v16;
  v11[22] = v17;
  swift_endAccess();

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a4;
  v21[4] = a5;
  swift_beginAccess();
  v22 = v11[21];
  v23 = v11[22];
  v24 = swift_getObjectType();
  v25 = *(v23 + 56);

  v25(sub_257120, v21, v24, v23);
  v11[21] = v22;
  v11[22] = v23;
  swift_endAccess();

  v26 = swift_allocObject();
  swift_weakInit();

  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a4;
  v27[4] = a5;
  swift_beginAccess();
  v28 = v11[21];
  v29 = v11[22];
  v30 = swift_getObjectType();
  v31 = *(v29 + 80);

  v31(sub_25712C, v27, v30, v29);
  v11[21] = v28;
  v11[22] = v29;
  swift_endAccess();

  return v11;
}

double sub_255E10@<D0>(_OWORD *a1@<X8>)
{
  sub_2448F8(-1, v7);
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

uint64_t sub_255EA4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Metrics.Event(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  v15 = *(a2 + 32);
  if ((v15 & 0xFE) != 0x7A)
  {
    v16 = v15 >> 1;
    if (v16 > 125)
    {
      if (v16 == 127)
      {
        v17 = result;
        goto LABEL_11;
      }

      if (v16 == 126)
      {
        v17 = result;
        goto LABEL_11;
      }

LABEL_10:
      v17 = result;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      v18 = v17[6];
      v19 = v17[7];
      v20 = v17[8];
      sub_2591E8(v7, v11, type metadata accessor for Metrics.Event.Action);
      v11[v17[5]] = 3;
      *&v11[v18] = a1;
      *&v11[v19] = 0;
      *&v11[v20] = 0;
      sub_2591E8(v11, v14, type metadata accessor for Metrics.Event);
      v21 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
      if (*v21)
      {
        v22 = v21[1];
        ObjectType = swift_getObjectType();
        v24 = *(v22 + 32);
        swift_unknownObjectRetain();
        v25 = a1;
        v24(v14, ObjectType, v22);
        sub_259250(v14, type metadata accessor for Metrics.Event);
        return swift_unknownObjectRelease();
      }

      else
      {
        v26 = a1;
        return sub_259250(v14, type metadata accessor for Metrics.Event);
      }
    }

    if ((v16 - 62) >= 2 && v16 != 125)
    {
      goto LABEL_10;
    }
  }

  return result;
}

void sub_256154()
{
  v1 = *(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0)));
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout) = sub_24E630();
  sub_2A0600();
}

void sub_2561B4(objc_class *a1)
{
  v3 = sub_24FE70();
  v4 = (*(&stru_1A8.reserved2 + (swift_isaMask & *a1)))(v3);
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ContainerDetailViewController.Layout();
    swift_getWitnessTable();
    if (sub_ABB400())
    {
      *(v1 + *(&stru_338.size + (swift_isaMask & *v1))) = sub_24EBB0(a1);
      sub_24E4FC();
    }

    sub_24E818(1);
    sub_24C2A8(v5);
  }
}

id sub_25633C()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2447E8();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v6 = *(v1 + 560);
  v14[0] = *(v1 + 544);
  v14[1] = v6;
  type metadata accessor for ContainerDetailViewController();
  v7 = type metadata accessor for VerticalStackViewControllerImpressionTracker();
  WitnessTable = swift_getWitnessTable();
  sub_AB3420();
  v9 = sub_21CD14(2, v5, v15, v7, WitnessTable);
  (*(v3 + 8))(v5, v2);
  sub_12E1C(v15, &qword_DF2BD0);

  sub_127EB8();

  sub_12AFE8();
  v11 = v10;
  if (v9)
  {
    v12 = objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
    return JSImpressionsBatch.init(impressions:location:pageDetailsProvider:)(v9, 0, v11);
  }

  else
  {

    return 0;
  }
}

uint64_t sub_256558()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_256664(void *a1)
{
  v2 = *&stru_298.sectname[swift_isaMask & *v1];
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  return sub_23E8DC();
}

void sub_2566C4(void *a1)
{
  type metadata accessor for JSContainerDetailModelRequest();
  if (swift_dynamicCastClass())
  {
    v2 = a1;
    sub_256664(a1);
  }
}

void sub_256798(unint64_t a1)
{
  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E71120);

  oslog = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    if (a1)
    {
      if (a1 >> 62)
      {
        v5 = sub_ABB060();
      }

      else
      {
        v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      }
    }

    else
    {
      v5 = 0;
    }

    *(v4 + 4) = v5;

    _os_log_impl(&dword_0, oslog, v3, "did update record label detail links with result count: %{public}ld", v4, 0xCu);
  }

  else
  {
  }
}

uint64_t sub_256908()
{
  v1 = *(&stru_2E8.offset + (swift_isaMask & *v0));
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_256968()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB4C10();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_256AFC()
{

  v1 = *(v0 + 32);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_256B50(uint64_t result)
{
  if (result)
  {
    v1 = result;

    v2 = v1;
  }

  return result;
}

void *sub_256B9C(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_256BE8()
{

  return swift_deallocObject();
}

uint64_t sub_256C3C()
{

  return swift_deallocObject();
}

uint64_t sub_256CA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_256CEC()
{
  v0 = sub_24E69C();
  [v0 setAlpha:0.0];
}

uint64_t sub_256D48()
{

  return swift_deallocObject();
}

uint64_t sub_256DA4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_256DF8(void *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return (*(*v1 + 200))(v4);
}

uint64_t sub_256E44(void *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return (*(*v1 + 192))(v4);
}

uint64_t sub_256EE0(void *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return (*(*v1 + 224))(v4);
}

uint64_t sub_256F2C(void *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return (*(*v1 + 208))(v4);
}

uint64_t sub_256F78()
{

  return swift_deallocObject();
}

uint64_t sub_256FDC()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_101Tm(void (*a1)(void))
{

  a1(*(v1 + 56));

  return swift_deallocObject();
}

uint64_t sub_2570BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_257138()
{
  result = qword_DFC5F0;
  if (!qword_DFC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC5F0);
  }

  return result;
}

uint64_t sub_2571BC()
{

  return swift_deallocObject();
}

uint64_t sub_257224()
{

  return swift_deallocObject();
}

uint64_t sub_2572B4()
{

  return swift_deallocObject();
}

void sub_2572FC()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  *(v0 + *&stru_248.sectname[swift_isaMask & *v0]) = 0;
  *(v0 + *&stru_248.segname[(swift_isaMask & *v0) - 8]) = 0;
  v4 = *&stru_248.segname[swift_isaMask & *v0];
  *(v1 + v4) = sub_23DD70();
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 8]) = 0;
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_248.size + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_248.offset + (swift_isaMask & *v1))) = 0;
  v5 = *(&stru_248.flags + (swift_isaMask & *v1));
  v6 = objc_allocWithZone(type metadata accessor for JSVerticalStackViewController());
  *(v1 + v5) = sub_9F704(_swiftEmptyArrayStorage);
  v7 = *(&stru_248.reserved2 + (swift_isaMask & *v1));
  *(v1 + v7) = [objc_allocWithZone(type metadata accessor for DetailHeader()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + *&stru_298.sectname[swift_isaMask & *v1]) = 0;
  v8 = v1 + *&stru_298.segname[(swift_isaMask & *v1) - 8];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v8[24] = 1;
  (*(*(*(&stru_1F8.offset + (v3 & v2)) - 8) + 56))(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 8], 1, 1);
  *(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_298.size + (swift_isaMask & *v1))) = 0;
  v9 = *(&stru_298.offset + (swift_isaMask & *v1));
  type metadata accessor for ModelRequestFilteringController();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = [objc_allocWithZone(NSOperationQueue) init];
  v10[5] = _swiftEmptyDictionarySingleton;
  v10[7] = 0;
  v10[8] = 0;
  v10[6] = 2;
  *(v1 + v9) = v10;
  *(v1 + *(&stru_298.reloff + (swift_isaMask & *v1))) = 0;
  v11 = *(&stru_298.flags + (swift_isaMask & *v1));
  v12 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + *(&stru_298.reserved2 + (swift_isaMask & *v1))) = 0;
  *(v1 + *&stru_2E8.sectname[swift_isaMask & *v1]) = 0;
  *(v1 + *&stru_2E8.segname[(swift_isaMask & *v1) - 8]) = 0;
  *(v1 + *&stru_2E8.segname[swift_isaMask & *v1]) = 0;
  *(v1 + *&stru_2E8.segname[(swift_isaMask & *v1) + 8]) = _swiftEmptyArrayStorage;
  *(v1 + *&stru_2E8.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_2E8.size + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_2E8.offset + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_2E8.reloff + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_2E8.flags + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_2E8.reserved2 + (swift_isaMask & *v1))) = 0;
  v13 = *&stru_338.sectname[swift_isaMask & *v1];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v1 + v13) = TextDrawing.Cache.init()();
  *(v1 + *&stru_338.segname[(swift_isaMask & *v1) - 8]) = 0;
  v14 = (v1 + *&stru_338.segname[swift_isaMask & *v1]);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + *&stru_338.segname[(swift_isaMask & *v1) + 8]) = 0;
  v15 = *&stru_338.segname[(swift_isaMask & *v1) + 16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0);
  swift_allocObject();
  *(v1 + v15) = ArtworkVideoReportingController.init()();
  *(v1 + *(&stru_338.size + (swift_isaMask & *v1))) = 3;
  *(v1 + *(&stru_338.offset + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_338.reloff + (swift_isaMask & *v1))) = 0;
  v16 = v1 + *(&stru_338.flags + (swift_isaMask & *v1));
  *v16 = 0;
  v16[8] = 1;
  v17 = (v1 + *(&stru_338.reserved2 + (swift_isaMask & *v1)));
  *v17 = 0;
  v17[1] = 0;
  *(v1 + *&stru_388.sectname[swift_isaMask & *v1]) = 0;
  *(v1 + *&stru_388.segname[(swift_isaMask & *v1) - 8]) = 1;
  *(v1 + *&stru_388.segname[swift_isaMask & *v1]) = 0;
  v18 = (v1 + *&stru_388.segname[(swift_isaMask & *v1) + 8]);
  *v18 = 0;
  v18[1] = 0;
  *(v1 + *&stru_388.segname[(swift_isaMask & *v1) + 16]) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_257A58(void *a1)
{
  v2 = *(&stru_298.size + (swift_isaMask & *v1));
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
  v3 = a1;
  sub_23EFE4(v4);
}

uint64_t sub_257AC4()
{

  return swift_deallocObject();
}

void sub_257AFC(void *a1)
{
  v2 = a1;
  sub_257A58(a1);
}

uint64_t sub_257B4C()
{

  return swift_deallocObject();
}

uint64_t sub_257BAC()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257C28()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257C70()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_257CF4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257D70()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257E04()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = (((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_AB4C10();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
  }

  v7 = v5 + *(v1 + 28);
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v8 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v5 + *(v1 + 32);
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v10 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v11 = *(v0 + v8 + 48);
  if (v11 != 255)
  {
    sub_17774(*(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), v11);
  }

  if (*(v10 + 64))
  {
  }

  if (*(v10 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257FB8(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);

  return sub_245C78(a1, v1 + v4, v8, v9, v10, v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}

id sub_258078(id result, id a2, char a3)
{
  if (a3 != -1)
  {
    return sub_23732C(result, a2, a3);
  }

  return result;
}

uint64_t sub_2580A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_258108()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_AB9260();
  v3 = *(v1 + 544);
  v4 = *(v1 + 560);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ContainerDetailViewController();
  objc_msgSendSuper2(&v5, "setPlayActivityFeatureName:", v2, v3, v4);
}

void sub_2581D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v53 = swift_isaMask & v3;
  v5 = *(&stru_1F8.offset + (swift_isaMask & v3));
  v61 = *(v5 - 8);
  __chkstk_darwin(a1);
  v52 = &v51 - v6;
  v7 = sub_ABA9C0();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v56 = type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin(v56);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin(v60);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + *(&stru_248.reserved2 + (v4 & v3)));
  v14 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView;
  v15 = *(*(v13 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = &selRef_performWithResponseHandler_;
  v57 = v9;
  if (v18 <= 1)
  {
    if (v18)
    {
      v20 = [v16 string];
      v21 = sub_AB92A0();
      v23 = v22;

      sub_2372F0(v16, v17, 1);
      v16 = v21;
      v19 = &selRef_performWithResponseHandler_;
      v17 = v23;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v18 == 2)
  {
LABEL_5:
    sub_23732C(v16, v17, v18);
    goto LABEL_7;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
LABEL_7:
  v24 = type metadata accessor for DescriptionTextViewController();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController____lazy_storage___descriptionTextView] = 0;
  v26 = &v25[OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController_descriptionText];
  *v26 = v16;
  *(v26 + 1) = v17;
  v63.receiver = v25;
  v63.super_class = v24;
  v27 = objc_msgSendSuper2(&v63, "initWithNibName:bundle:", 0, 0);
  v28 = *(*(v13 + v14) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
  v29 = *&v28[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView];
  v30 = v27;
  v31 = v28;
  v32 = [v29 textStorage];
  v33 = [v32 v19[396]];
  sub_AB92A0();

  v34 = sub_AB9260();

  [v30 setTitle:v34];

  v35 = [v30 navigationItem];
  [v35 setLargeTitleDisplayMode:2];

  v36 = [objc_allocWithZone(type metadata accessor for NavigationController()) initWithRootViewController:v30];
  [v36 setModalPresentationStyle:2];
  v37 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
  if (*v37)
  {
    v54 = v37[1];
    v55 = v30;
    swift_storeEnumTagMultiPayload();
    v38 = *(&stru_478.reserved2 + (swift_isaMask & *v2));
    v39 = swift_unknownObjectRetain();
    v40 = v57;
    v38(v39);
    v41 = v61;
    v42 = v12;
    if ((*(v61 + 48))(v40, 1, v5))
    {
      (*(v58 + 8))(v40, v59);
      v43 = 0;
    }

    else
    {
      v44 = v40;
      v45 = v52;
      (*(v41 + 16))(v52, v44, v5);
      (*(v58 + 8))(v44, v59);
      v43 = (*(*(v53 + 568) + 24))(v5);
      (*(v41 + 8))(v45, v5);
    }

    ObjectType = swift_getObjectType();
    v47 = v60;
    v49 = v60[6];
    v48 = v60[7];
    v50 = v60[8];
    sub_2591E8(v62, v42, type metadata accessor for Metrics.Event.Action);
    *(v42 + v47[5]) = 0;
    *(v42 + v49) = v43;
    *(v42 + v48) = 0;
    *(v42 + v50) = 0;
    (*(v54 + 32))(v42, ObjectType);
    sub_259250(v42, type metadata accessor for Metrics.Event);
    swift_unknownObjectRelease();
    v30 = v55;
  }

  [v2 presentViewController:v36 animated:1 completion:0];
}

void sub_258824()
{
  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();
  __swift_project_value_buffer(v0, qword_E71120);
  oslog = sub_AB4BA0();
  v1 = sub_AB9F40();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_425E68(0xD000000000000019, 0x8000000000B59E40, &v5);
    _os_log_impl(&dword_0, oslog, v1, "Unexpected call to %s in legacy Music code. Picking a playlist shouldn't be allowed in the media picker.", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }
}

id sub_25896C()
{
  v1 = v0;
  v2 = sub_4D3DD0();
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = result;
  [result bounds];
  v10 = v9;
  v12 = v11;

  v13 = (v1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds);
  *v13 = v4;
  v13[1] = v6;
  v13[2] = v10;
  v13[3] = v12;
  sub_4DB494();
  sub_4D7AA8();
  v14 = swift_isaMask & *v1;
  v15 = *(v1 + *(&stru_298.reserved2 + v14));
  if (v15)
  {
    v16 = *(v1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView);
    v17 = v15;
    v18 = v16;
    v19 = UIScrollView.normalizedContentOffset.getter();
    v21 = v20;

    v22 = &v17[OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset];
    v23 = *&v17[OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset];
    v24 = *&v17[OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset + 8];
    *v22 = v19;
    *(v22 + 1) = v21;
    type metadata accessor for CGPoint(0);
    v39 = v19;
    if (sub_AB38D0())
    {
      [v17 setNeedsLayout];
    }

    v25 = [v1 navigationItem];
    v26 = [v1 parentViewController];
    if (v26)
    {
      v27 = v26;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v28 = v27;
        v29 = [v28 navigationItem];

        v27 = [v28 parentViewController];
        v25 = v29;
        if (!v27)
        {
          goto LABEL_12;
        }
      }
    }

    v29 = v25;
LABEL_12:
    v30 = [v29 searchController];

    if (!v30)
    {
      goto LABEL_20;
    }

    v31 = [v30 searchBar];

    if (!v31)
    {
      goto LABEL_20;
    }

    [v31 frame];
    Height = CGRectGetHeight(v41);
    *&v17[OBJC_IVAR____TtC16MusicApplication12ParallaxView_topPadding] = Height;
    v40 = Height;
    if (sub_AB38D0())
    {
      [v17 setNeedsLayout];
    }

    result = [v1 view];
    if (result)
    {
      v33 = result;
      [result safeAreaInsets];
      v35 = v34;

      *&v17[OBJC_IVAR____TtC16MusicApplication12ParallaxView_topSafeAreaInset] = v35;
      if (sub_AB38D0())
      {
        [v17 setNeedsLayout];
      }

LABEL_20:
      sub_243E70();
      sub_243F48();

      v14 = swift_isaMask & *v1;
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);
    return result;
  }

LABEL_21:
  v36 = *(v1 + *(v14 + 848));
  if (v36)
  {
    v37 = *(*v36 + 264);

    v37(v38);
  }

  return sub_249B20();
}

void sub_258D5C(void *a1, double *a2)
{
  if (*(v2 + *(&stru_298.reserved2 + (swift_isaMask & *v2))))
  {
    sub_249CDC(*a2, a2[1]);
    *a2 = v4;
    *(a2 + 1) = v5;
    return;
  }

  [a1 contentOffset];
  v8 = v7;
  [a1 adjustedContentInset];
  if (v8 != -v9)
  {
    v10 = a2[1];
    v11 = [v2 view];
    if (v11)
    {
      v12 = v11;
      [v11 safeAreaInsets];
      v14 = v13;

      if (v10 >= -v14)
      {
        return;
      }

      v15 = [v2 view];
      if (v15)
      {
        v16 = v15;
        [v15 safeAreaInsets];
        v18 = v17;

        a2[1] = -v18;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_258E80()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7C50();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0);
  v12 = sub_ABA150();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_259170;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_196_0;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_256CA4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  sub_ABABB0();
  v11 = v12;
  sub_ABA160();
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
  _Block_release(v9);
}

uint64_t sub_2591E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_259250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2592BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 searchController];
  *a2 = result;
  return result;
}

uint64_t sub_259320@<X0>(_BYTE *a1@<X8>)
{
  result = sub_387998();
  *a1 = result;
  return result;
}

id sub_259390@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredNavigationBarTintColor];
  *a2 = result;
  return result;
}

id sub_2593EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleView];
  *a2 = result;
  return result;
}

uint64_t sub_25943C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3875B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_259468(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_387430(v1, v2);
}

uint64_t sub_2594A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_387A78();
  *a1 = result;
  return result;
}

uint64_t sub_2594D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_30Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_2596F4()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

BOOL sub_2598B0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_25C7FC(v7, v8);
}

BOOL sub_2598F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 < 0)
  {
    return v5 < 0 && *&v2 == *&v4;
  }

  if ((v5 & 0x80000000) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_259950(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 8) >> 1;
  if (v6 <= 0x7C)
  {
    if (v6 == 62)
    {
      return (v5 & 0xFFFFFFFE) == 0x7C;
    }

    if (v6 == 63)
    {
      return (v5 & 0xFFFFFFFE) == 0x7E;
    }
  }

  else
  {
    switch(v6)
    {
      case '}':
        return (v5 & 0xFFFFFFFE) == 0xFFFFFFFA;
      case '~':
        return (v5 & 0xFFFFFFFE) == 0xFFFFFFFC;
      case '\x7F':
        return v5 > 0xFFFFFFFD;
    }
  }

  v8 = v5 >> 1;
  if ((v8 - 125) < 3 || (v8 - 62) < 2)
  {
    return 0;
  }

  if (v3 < 0)
  {
    if ((v5 & 0x80000000) != 0 && *&v2 == *&v4)
    {
      return 1;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

void sub_259A48(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 canShowCloudDownloadButtons];

    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    sub_25AE40(v4, v9);
    v5 = v10;
    v6 = v11;
    v7 = *(a1 + 104);
    v12[0] = *(a1 + 88);
    v12[1] = v7;
    v12[2] = *(a1 + 120);
    v8 = v9[1];
    *(a1 + 88) = v9[0];
    *(a1 + 104) = v8;
    *(a1 + 120) = v5;
    *(a1 + 128) = v6;
    sub_25A60C(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_259B30(char a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1 & 1;
  if (v2 != (a1 & 1) && *(v1 + 80) != 1)
  {
    v3 = [objc_opt_self() sharedCloudController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 canShowCloudDownloadButtons];

      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_25AE40(v5, v10);
      v6 = v11;
      v7 = v12;
      v8 = *(v1 + 104);
      v13[0] = *(v1 + 88);
      v13[1] = v8;
      v13[2] = *(v1 + 120);
      v9 = v10[1];
      *(v1 + 88) = v10[0];
      *(v1 + 104) = v9;
      *(v1 + 120) = v6;
      *(v1 + 128) = v7;
      sub_25A60C(v13);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_259C34()
{
  v1 = v0;
  *(v0 + 32) = UIScreen.Dimensions.size.getter;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 120) = 248;
  *(v0 + 16) = [objc_allocWithZone(MPLibraryAddStatusObserver) init];
  *(v0 + 24) = [objc_allocWithZone(MPLibraryKeepLocalStatusObserver) init];
  v2 = MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedCloudController];
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *(v1 + 56) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v5, 1, 1, sub_25CEB0, v6);

  v7 = *(v1 + 16);
  v8 = swift_allocObject();
  swift_weakInit();
  v23 = sub_25CEB8;
  v24 = v8;
  *&v21 = _NSConcreteStackBlock;
  *(&v21 + 1) = 1107296256;
  *&v22 = sub_25A1F4;
  *(&v22 + 1) = &block_descriptor_83;
  v9 = _Block_copy(&v21);
  v10 = v7;

  [v10 setStatusBlock:v9];
  _Block_release(v9);

  v11 = *(v1 + 24);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v11;

  v23 = sub_25CEB8;
  v24 = v12;
  *&v21 = _NSConcreteStackBlock;
  *(&v21 + 1) = 1107296256;
  *&v22 = sub_25A248;
  *(&v22 + 1) = &block_descriptor_45_0;
  v14 = _Block_copy(&v21);

  [v13 setStatusBlock:v14];
  _Block_release(v14);

  result = [v3 sharedCloudController];
  if (result)
  {
    v16 = result;
    v17 = [result canShowCloudDownloadButtons];

    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    sub_25AE40(v17, &v21);
    v18 = v23;
    v19 = v24;
    v20 = v22;
    *(v1 + 88) = v21;
    *(v1 + 104) = v20;
    *(v1 + 120) = v18;
    *(v1 + 128) = v19;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_259FC4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    result = [objc_opt_self() sharedCloudController];
    if (result)
    {
      v2 = result;
      v3 = [result canShowCloudDownloadButtons];

      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_25AE40(v3, v8);
      v4 = v9;
      v5 = v10;
      v6 = *(v1 + 104);
      v11[0] = *(v1 + 88);
      v11[1] = v6;
      v11[2] = *(v1 + 120);
      v7 = v8[1];
      *(v1 + 88) = v8[0];
      *(v1 + 104) = v7;
      *(v1 + 15) = v4;
      *(v1 + 16) = v5;
      sub_25A60C(v11);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

_BYTE *sub_25A0D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((result[80] & 1) == 0)
    {
      result = [objc_opt_self() sharedCloudController];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v2 = result;
      v3 = [result canShowCloudDownloadButtons];

      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_25AE40(v3, v8);
      v4 = v9;
      v5 = v10;
      v6 = *(v1 + 104);
      v11[0] = *(v1 + 88);
      v11[1] = v6;
      v11[2] = *(v1 + 120);
      v7 = v8[1];
      *(v1 + 88) = v8[0];
      *(v1 + 104) = v7;
      *(v1 + 15) = v4;
      *(v1 + 16) = v5;
      sub_25A60C(v11);
    }
  }

  return result;
}

uint64_t sub_25A1F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_25A248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, *&a3);
}

void sub_25A2AC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 72);
  if (!v4)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_25CED8(), v5 = v4, v6 = a1, v7 = sub_ABA790(), v5, v6, (v7 & 1) == 0))
  {
LABEL_6:
    v8 = *(v2 + 136);
    *(v2 + 136) = 0;
  }

LABEL_7:
  v9 = *(v2 + 80);
  *(v2 + 80) = 1;
  sub_25A41C(v2);
  *(v2 + 80) = v9;
  if ((v9 & 1) == 0)
  {
    v10 = [objc_opt_self() sharedCloudController];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 canShowCloudDownloadButtons];

      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_25AE40(v12, v17);
      v13 = v18;
      v14 = v19;
      v15 = *(v2 + 104);
      v20[0] = *(v2 + 88);
      v20[1] = v15;
      v20[2] = *(v2 + 120);
      v16 = v17[1];
      *(v2 + 88) = v17[0];
      *(v2 + 104) = v16;
      *(v2 + 120) = v13;
      *(v2 + 128) = v14;
      sub_25A60C(v20);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_25A41C(uint64_t a1)
{
  [*(a1 + 16) configureWithModelObject:*(a1 + 72)];
  v2 = *(a1 + 24);
  v3 = *(a1 + 72);
  v4 = v2;
  if (v3)
  {
    v5 = [v3 newKeepLocalStatusObserverConfiguration];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v2 setConfiguration:?];
}

void sub_25A4B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 80);
  *(v3 + 80) = 1;
  v7 = *(v3 + 72);
  *(v3 + 72) = a3;
  v8 = a3;
  sub_25A2AC(v7);

  [*(v3 + 16) setConfiguration:a1 & 0x101010101 identifyingModelObject:v8];
  [*(v3 + 24) setConfiguration:a2];
  *(v3 + 80) = v6;
  if ((v6 & 1) == 0)
  {
    v9 = [objc_opt_self() sharedCloudController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 canShowCloudDownloadButtons];

      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_25AE40(v11, v16);
      v12 = v17;
      v13 = v18;
      v14 = *(v3 + 104);
      v19[0] = *(v3 + 88);
      v19[1] = v14;
      v19[2] = *(v3 + 120);
      v15 = v16[1];
      *(v3 + 88) = v16[0];
      *(v3 + 104) = v15;
      *(v3 + 120) = v12;
      *(v3 + 128) = v13;
      sub_25A60C(v19);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_25A60C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 120);
  v4 = v2 & 0xFE;
  if ((v3 & 0xFE) == 0xF8)
  {
    if (v4 == 248)
    {
      return;
    }

    __break(1u);
    goto LABEL_66;
  }

  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  if (v4 == 248 || *(v1 + 88) != *a1)
  {
    goto LABEL_8;
  }

  v17 = *(a1 + 8);
  v18 = *(v1 + 96);
  v19 = *(a1 + 32);
  v20 = v2 & 0xFE;
  if ((v3 & 0xFE) == 0x7A)
  {
    if (v20 != 122 || v18 != v17)
    {
      goto LABEL_8;
    }

LABEL_47:
    if (vabdd_f64(*(v1 + 104), *(a1 + 16)) <= 0.00000011920929 && *(v1 + 128) == *(a1 + 40))
    {
      return;
    }

    goto LABEL_8;
  }

  if (v20 != 122)
  {
    v22 = *(a1 + 24);
    v23 = v7 >> 1;
    if (v7 >> 1 <= 0x7C)
    {
      if (v23 == 62)
      {
        if (v20 != 124)
        {
          goto LABEL_8;
        }

        goto LABEL_46;
      }

      if (v23 == 63)
      {
        if (v20 != 126)
        {
          goto LABEL_8;
        }

        goto LABEL_46;
      }
    }

    else
    {
      switch(v23)
      {
        case '}':
          if (v20 != 250)
          {
            goto LABEL_8;
          }

          goto LABEL_46;
        case '~':
          if (v20 != 252)
          {
            goto LABEL_8;
          }

          goto LABEL_46;
        case '\x7F':
          if (v19 < 0xFE)
          {
            goto LABEL_8;
          }

          goto LABEL_46;
      }
    }

    if ((v19 >> 1) - 125 < 3 || (v19 >> 1) - 62 < 2)
    {
      goto LABEL_8;
    }

    if ((v3 & 0x80) != 0)
    {
      if ((v2 & 0x80) == 0 || *&v6 != *&v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if ((v2 & 0x80) != 0)
      {
        goto LABEL_8;
      }

      if (v3)
      {
        if ((v2 & (v18 == v17)) != 0)
        {
          goto LABEL_47;
        }

        goto LABEL_8;
      }

      if ((v2 & 1) != 0 || v6 != v22)
      {
        goto LABEL_8;
      }
    }

LABEL_46:
    if (v18 == v17)
    {
      goto LABEL_47;
    }
  }

LABEL_8:
  if ((v3 & 0xFE) == 0x7A || (v7 >> 1) - 125 < 3 || (v7 >> 1) - 62 < 2 || (v3 & 0x80) != 0)
  {
    v9 = *(v1 + 136);
    *(v1 + 136) = 0;
  }

  else if (!*(v1 + 136))
  {
    v24 = objc_allocWithZone(type metadata accessor for CircularProgressView());
    v25 = v1;
    v26 = CircularProgressView.init(size:)(0.0, 0.0);
    if (v3)
    {
      v27 = 0;
    }

    else
    {
      v27 = *&v6;
    }

    v28 = sub_AB9260();
    v29 = [objc_opt_self() systemImageNamed:v28];

    CircularProgressView.image.setter(v29);
    CircularProgressView.imageScale.setter(0.25);
    CircularProgressView.setState(_:animated:)(v27, v7 & 1, 0);
    v1 = v25;
    v30 = *(v25 + 136);
    *(v25 + 136) = v26;

    v2 = *(a1 + 32);
  }

  if ((v2 & 0xFE) == 0xF8)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v10 = *(v1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v12;
  v33 = v2;
  v34 = v11;
  v13 = *(v1 + 120);
  if ((v13 & 0xFE) == 0xF8)
  {
LABEL_67:
    __break(1u);
    return;
  }

  v14 = *(v1 + 128);
  v15 = *(v1 + 112);
  v16 = *(v1 + 104);
  v35 = *(v1 + 88);
  v36 = v16;
  v37 = v15;
  v38 = v13;
  v39 = v14;

  v10(v32, &v35);
}

void sub_25A964(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v7 - 8);
  v55 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v54 - v10;
  v12 = *(v3 + 15);
  if ((v12 & 0xFE) == 0xF8)
  {
    __break(1u);
    return;
  }

  v13 = v3[14];
  v14 = *(v3 + 17);
  sub_BD3C8(a1, v11);
  v15 = type metadata accessor for SymbolButton.Configuration(0);
  v16 = *(*(v15 - 1) + 48);
  if (v16(v11, 1, v15) == 1)
  {
    v17 = v14;
    SymbolButton.Configuration.init()(a3);
    v18 = v14;
    if (v16(v11, 1, v15) != 1)
    {
      sub_12E1C(v11, &unk_DFAAB0);
    }
  }

  else
  {
    sub_BD554(v11, a3);
    v19 = v14;
    v18 = v14;
  }

  sub_25C978(v12, a2 & 1, v56);
  sub_BD438(v56, a3);
  v20 = SymbolButton.Configuration.platterMinimumSize.unsafeMutableAddressor();
  v22 = *v20;
  *(a3 + v15[13]) = *v20;
  if ((v12 & 0xFFFFFFFE) == 0x7A)
  {
    goto LABEL_7;
  }

  v23 = 0;
  v24 = v12 >> 1;
  if ((v24 - 125) >= 3 && (v24 - 62) >= 2)
  {
    if (v12 < 0)
    {
LABEL_7:
      v23 = 0;
      goto LABEL_26;
    }

    if (v18)
    {
      v23 = v18;
    }

    else
    {
      v25 = objc_allocWithZone(type metadata accessor for CircularProgressView());
      v23 = CircularProgressView.init(size:)(0.0, 0.0);
    }

    if (v12)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v13;
    }

    v27 = v18;
    v28 = v23;
    if (a2)
    {
      CircularProgressView.image.setter(0);
      if (v12 & 1 | (v26 <= 0.051))
      {
        v29 = 1;
      }

      else
      {
        v29 = *&v26;
      }

      if (v12 & 1 | (v26 <= 0.051))
      {
        v30 = 256;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v31 = sub_AB9260();
      v32 = [objc_opt_self() systemImageNamed:v31];

      CircularProgressView.image.setter(v32);
      CircularProgressView.imageScale.setter(0.25);
      v30 = v12 & 1;
      v29 = *&v26;
    }

    CircularProgressView.setState(_:animated:)(v29, v30, 1);

    v33 = v28;
  }

LABEL_26:
  SymbolButton.CustomView.init(view:)(v23, v57, v22, v21);
  v34 = a3 + v15[10];
  sub_160B4(v57, v34, &qword_DED418);
  if (a2)
  {

    v35 = v15[9];
    sub_12E1C(a3 + v35, &unk_DFFBC0);
    v36 = sub_ABA680();
    (*(*(v36 - 8) + 56))(a3 + v35, 1, 1, v36);
    sub_3F9D0(*(a3 + 200), *(a3 + 208));
    *(a3 + 200) = xmmword_AF82C0;
    *(a3 + 216) = 0;
    *(a3 + 224) = 0;
    v37 = *v34;

    if (v37)
    {
      __asm { FMOV            V0.2D, #8.0 }

      *(v34 + 8) = _Q0;
      *(v34 + 24) = _Q0;
    }
  }

  else
  {
    v43 = v55;
    sub_ABA670();
    v44 = sub_ABA680();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    sub_160B4(v43, a3 + v15[9], &unk_DFFBC0);
    if (*v34)
    {
      v45 = *&UIEdgeInsetsZero.bottom;
      *(v34 + 8) = *&UIEdgeInsetsZero.top;
      *(v34 + 24) = v45;
    }

    if (v23)
    {

      sub_3F9D0(*(a3 + 200), *(a3 + 208));
      *(a3 + 200) = xmmword_AF82C0;
      *(a3 + 216) = 0;
      *(a3 + 224) = 0;
    }

    else
    {
      v46 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
      v47 = *v46;
      v48 = v46[1];
      v50 = v46[2];
      v49 = v46[3];
      v51 = *(a3 + 200);
      v52 = *(a3 + 208);

      v53 = v48;
      sub_3F9D0(v51, v52);

      *(a3 + 200) = v47;
      *(a3 + 208) = v48;
      *(a3 + 216) = v50;
      *(a3 + 224) = v49;
    }
  }
}

void sub_25AE40(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [*(v2 + 16) currentStatus];
  v7 = [*(v2 + 24) currentStatus];
  v53 = v8;
  v9 = [*(v2 + 24) downloadPausedReason];
  v10 = *(v2 + 24);
  v11 = [v10 configuration];

  if (v11)
  {
    v12 = [v11 identifyingModelObject];

    if (v12)
    {
      v13 = v12;
      v14 = sub_10AC20(v12);

      v15 = v14 == 8 && v6 == &dword_0 + 1;
      if (v15 && v7 == 0)
      {
        v17 = 0;
        v19 = -6;
        goto LABEL_38;
      }
    }
  }

  if (*(v3 + 48) != 1)
  {
    if (*(v3 + 64) != 1)
    {
      if (v7 <= 2)
      {
        if (v7 == (&dword_0 + 1))
        {
          if ((a1 & 1) != 0 && v6 == &dword_0 + 1)
          {
            goto LABEL_37;
          }
        }

        else if (v7 == (&dword_0 + 2) && (a1 & 1) != 0)
        {
          goto LABEL_26;
        }
      }

      else if (v7 == (&dword_0 + 3))
      {
        if (a1)
        {
LABEL_34:
          v19 = 0;
          v17 = v53;
          goto LABEL_38;
        }
      }

      else
      {
        if (v7 == &dword_4)
        {
          goto LABEL_27;
        }

        if (v7 == (&dword_4 + 2))
        {
          goto LABEL_22;
        }
      }
    }

    v17 = sub_25BAA8(v6, a1 & 1);
    v19 = v18;
    goto LABEL_38;
  }

  if (v7 > 2)
  {
    if (v7 != (&dword_0 + 3))
    {
      if (v7 != &dword_4)
      {
        if (v7 != (&dword_4 + 2))
        {
          goto LABEL_32;
        }

LABEL_22:
        v19 = 0x80;
        v17 = v9;
        goto LABEL_38;
      }

LABEL_27:
      v17 = 0;
      v19 = 124;
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (v7 != (&dword_0 + 1))
  {
    if (v7 != (&dword_0 + 2))
    {
LABEL_32:
      v17 = 0;
      v19 = 122;
      goto LABEL_38;
    }

LABEL_26:
    v17 = 0;
    v19 = 1;
    goto LABEL_38;
  }

LABEL_37:
  v17 = 0;
  v19 = -4;
LABEL_38:
  if (qword_DE69F8 != -1)
  {
    swift_once();
  }

  v20 = sub_AB4BC0();
  __swift_project_value_buffer(v20, qword_DFAB50);
  v21 = sub_AB9F10();

  v22 = sub_AB4BA0();

  if (os_log_type_enabled(v22, v21))
  {
    v49 = v21;
    log = v22;
    v23 = v17;
    v51 = a1;
    v52 = v9;
    v24 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v24 = 136447746;
    v25 = *(v3 + 72);
    if (!v25 || (v26 = v25, v27 = sub_25B390(), v29 = v28, v26, !v29))
    {

      v29 = 0xE700000000000000;
      v27 = 0x6E776F6E6B6E55;
    }

    v30 = sub_425E68(v27, v29, &v54);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2082;
    type metadata accessor for MPLibraryAddStatus(0);
    v31 = sub_AB9350();
    v33 = sub_425E68(v31, v32, &v54);

    *(v24 + 14) = v33;
    *(v24 + 22) = 2082;
    type metadata accessor for MPLibraryActiveKeepLocalStatus(0);
    v34 = sub_AB9350();
    v36 = sub_425E68(v34, v35, &v54);

    *(v24 + 24) = v36;
    *(v24 + 32) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAD90);
    v37 = sub_AB9350();
    v39 = sub_425E68(v37, v38, &v54);

    *(v24 + 34) = v39;
    *(v24 + 42) = 2082;
    v40 = sub_AB9350();
    v42 = sub_425E68(v40, v41, &v54);

    *(v24 + 44) = v42;
    *(v24 + 52) = 2082;
    if (v51)
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (v51)
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }

    v45 = sub_425E68(v43, v44, &v54);

    *(v24 + 54) = v45;
    *(v24 + 62) = 2082;
    if (*(v3 + 48))
    {
      v46 = 1702195828;
    }

    else
    {
      v46 = 0x65736C6166;
    }

    if (*(v3 + 48))
    {
      v47 = 0xE400000000000000;
    }

    else
    {
      v47 = 0xE500000000000000;
    }

    v48 = sub_425E68(v46, v47, &v54);

    *(v24 + 64) = v48;
    _os_log_impl(&dword_0, log, v49, "Control State for modelObject =%{public}s\n    libraryAddStatus=%{public}s\n    keepLocalStatus=%{public}s\n    controlStatus=%{public}s\n    behaviorType=%{public}s\n    canShowCloudDownloadButtons=%{public}s\n    forceKeepLocalDownloadVisibility=%{public}s", v24, 0x48u);
    swift_arrayDestroy();

    v17 = v23;

    v9 = v52;
  }

  else
  {
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v53;
  *(a2 + 24) = v17;
  *(a2 + 32) = v19;
  *(a2 + 40) = v9;
}

uint64_t sub_25B390()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    object = 0xE000000000000000;
    sub_ABAD90(23);

    v38[0] = 0xD000000000000015;
    v38[1] = 0x8000000000B5A240;
    v5 = [v3 title];
    if (v5)
    {
LABEL_3:
      v6 = v5;
      v7 = sub_AB92A0();
      object = v8;

LABEL_7:
      v11._countAndFlagsBits = v7;
LABEL_8:
      v11._object = object;
      sub_AB94A0(v11);

      v13 = v38[0];
      v12 = v38[1];
      sub_ABAD90(16);

      strcpy(v38, " identifiers=");
      HIWORD(v38[1]) = -4864;
      v14 = [v1 identifiers];
      v15 = [v14 debugDescription];
      v16 = sub_AB92A0();
      v18 = v17;

      v39._countAndFlagsBits = v16;
      v39._object = v18;
      sub_AB94A0(v39);

      v40._countAndFlagsBits = 62;
      v40._object = 0xE100000000000000;
      sub_AB94A0(v40);
      v19 = v38[1];
      v38[1] = v12;

      v41._countAndFlagsBits = v38[0];
      v41._object = v19;
      sub_AB94A0(v41);

      return v13;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    object = 0xE000000000000000;
    sub_ABAD90(23);

    v38[0] = 0xD000000000000015;
    v38[1] = 0x8000000000B5A220;
    v5 = [v10 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    object = 0xE000000000000000;
    sub_ABAD90(25);

    v38[0] = 0xD000000000000017;
    v38[1] = 0x8000000000B5A200;
    v5 = [v22 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    object = 0xE000000000000000;
    sub_ABAD90(23);

    v38[0] = 0xD000000000000015;
    v38[1] = 0x8000000000B5A1E0;
    v5 = [v24 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    object = 0xE000000000000000;
    sub_ABAD90(22);

    v38[0] = 0xD000000000000014;
    v38[1] = 0x8000000000B5A1C0;
    v5 = [v26 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    object = 0xE000000000000000;
    sub_ABAD90(23);

    v38[0] = 0xD000000000000015;
    v38[1] = 0x8000000000B5A1A0;
    v5 = [v28 title];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    object = 0xE000000000000000;
    sub_ABAD90(25);

    v38[0] = 0xD000000000000017;
    v38[1] = 0x8000000000B5A180;
    v5 = [v30 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    object = 0xE000000000000000;
    sub_ABAD90(29);

    v38[0] = 0xD00000000000001BLL;
    v38[1] = 0x8000000000B5A160;
    v5 = [v32 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = v33;
    object = 0xE000000000000000;
    sub_ABAD90(22);

    v38[0] = 0xD000000000000014;
    v38[1] = 0x8000000000B5A140;
    v5 = [v34 title];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = v35;
    object = 0xE000000000000000;
    sub_ABAD90(27);

    v38[0] = 0xD000000000000019;
    v38[1] = 0x8000000000B5A120;
    v5 = [v36 title];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_ABAD90(26);

    v38[0] = 0xD000000000000018;
    v38[1] = 0x8000000000B5A100;
    v11._countAndFlagsBits = MPModelTVSeason.title.getter();
    if (v11._object)
    {
      object = v11._object;
    }

    else
    {
      v11._countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    goto LABEL_8;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v37 = result;
    object = 0xE000000000000000;
    sub_ABAD90(24);

    v38[0] = 0xD000000000000016;
    v38[1] = 0x8000000000B5A0E0;
    v5 = [v37 title];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  return result;
}

id sub_25BAA8(unint64_t a1, char a2)
{
  v5 = [*(v2 + 24) currentStatus];
  if (a1 > 0xA)
  {
    return 0;
  }

  if (((1 << a1) & 0x3E) == 0)
  {
    return 0;
  }

  v8 = v5;
  v9 = v6;
  result = [*(v2 + 24) downloadPausedReason];
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      if (a2)
      {
        if (a1 == 1)
        {
          return 0;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_19;
      }

      if (a2)
      {
        return 0;
      }
    }

    return 0;
  }

  if (v8 == 3)
  {
    if (a2)
    {
      return v9;
    }

    return 0;
  }

  if (v8 == 4)
  {
    if (a1 == 1)
    {
      return 0;
    }

LABEL_19:
    if ((a2 & 1) != 0 && a1 != 1)
    {
      return 0;
    }

    return 0;
  }

  if (v8 != 6)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_25BBE4()
{

  return swift_deallocClassInstance();
}

unint64_t MPLibraryActiveKeepLocalStatusType.debugDescription.getter(uint64_t a1)
{
  v2._countAndFlagsBits = sub_25BCA0(a1);
  sub_AB94A0(v2);

  return 0xD000000000000023;
}

uint64_t sub_25BCA0(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1 || a1 == 2)
    {
      return 0x64616F6C6E776F64;
    }

LABEL_12:
    v2._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v2);

    return 0x3A6E776F6E6B6E75;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x656C6C65636E6163;
    }

    if (a1 == 6)
    {
      return 0x646573756170;
    }

    goto LABEL_12;
  }

  return 0x64616F6C6E776F64;
}

unint64_t sub_25BDF4()
{
  v2._countAndFlagsBits = sub_25BCA0(*v0);
  sub_AB94A0(v2);

  return 0xD000000000000023;
}

unint64_t MPLibraryAddStatus.debugDescription.getter(uint64_t a1)
{
  v2._countAndFlagsBits = sub_25BEB0(a1);
  sub_AB94A0(v2);

  return 0xD000000000000013;
}

uint64_t sub_25BEB0(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0xD00000000000001DLL;
      }

      if (a1 != 6)
      {
        return 0xD000000000000024;
      }

      return 0xD000000000000022;
    }

    switch(a1)
    {
      case 8:
        return 0xD00000000000001BLL;
      case 9:
        return 0xD00000000000002BLL;
      case 10:
        return 0xD00000000000001DLL;
    }

LABEL_24:
    v2._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v2);

    return 0x3A6E776F6E6B6E75;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x6465646461;
    }

    goto LABEL_24;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      return 0xD000000000000025;
    }

    return 0xD000000000000024;
  }

  return 0x656C6261646461;
}

unint64_t sub_25C0B4()
{
  v2._countAndFlagsBits = sub_25BEB0(*v0);
  sub_AB94A0(v2);

  return 0xD000000000000013;
}

uint64_t MPMediaDownloadPauseReason.debugDescription.getter(char a1)
{
  type metadata accessor for MPMediaDownloadPauseReason(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAB68);
  v2 = sub_AB9350();
  v4 = v3;
  if ((a1 & 4) == 0)
  {
    v5 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_ABAD90(25);

  v17._countAndFlagsBits = 0xD000000000000017;
  v17._object = 0x8000000000B59EF0;
  sub_AB94A0(v17);
  v5 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_6B0F0((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v2;
  *(v8 + 5) = v4;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    sub_ABAD90(21);

    v18._countAndFlagsBits = 0xD000000000000013;
    v18._object = 0x8000000000B59ED0;
    sub_AB94A0(v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_6B0F0(0, *(v5 + 2) + 1, 1, v5);
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_6B0F0((v9 > 1), v10 + 1, 1, v5);
    }

    *(v5 + 2) = v10 + 1;
    v11 = &v5[16 * v10];
    *(v11 + 4) = v2;
    *(v11 + 5) = v4;
  }

LABEL_12:
  if (a1)
  {
    sub_ABAD90(18);

    v19._object = 0x8000000000B59EB0;
    v19._countAndFlagsBits = 0xD000000000000010;
    sub_AB94A0(v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_6B0F0(0, *(v5 + 2) + 1, 1, v5);
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    if (v13 >= v12 >> 1)
    {
      v5 = sub_6B0F0((v12 > 1), v13 + 1, 1, v5);
    }

    *(v5 + 2) = v13 + 1;
    v14 = &v5[16 * v13];
    *(v14 + 4) = v2;
    *(v14 + 5) = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  sub_2ECD4();
  v15 = sub_AB9140();

  return v15;
}

uint64_t MPModelLibraryRemovalSupportedOptions.debugDescription.getter(char a1)
{
  type metadata accessor for MPModelLibraryRemovalSupportedOptions(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAB70);
  v2 = sub_AB9350();
  v4 = v2;
  v5 = v3;
  if ((a1 & 2) == 0)
  {
    v6 = _swiftEmptyArrayStorage;
    if ((a1 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v15 = v2;
  v16 = v3;

  v17._countAndFlagsBits = 0x456574656C65642ELL;
  v17._object = 0xED0000797469746ELL;
  sub_AB94A0(v17);
  v6 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_6B0F0((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v15;
  *(v9 + 5) = v16;
  if (a1)
  {
LABEL_7:

    v18._countAndFlagsBits = 0x4165766F6D65722ELL;
    v18._object = 0xED00007374657373;
    sub_AB94A0(v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_6B0F0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_6B0F0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[16 * v11];
    *(v12 + 4) = v4;
    *(v12 + 5) = v5;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  sub_2ECD4();
  v13 = sub_AB9140();

  return v13;
}

uint64_t sub_25C640()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DFAB50);
  __swift_project_value_buffer(v0, qword_DFAB50);
  return static Logger.music(_:)();
}

uint64_t sub_25C6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 48))
  {
    return (*a1 + 121);
  }

  v3 = *(a1 + 32);
  if ((v3 & 0x7E) != 0)
  {
    v4 = ((122 - (v3 & 0x7E | (v3 >> 7))) & ~((122 - (v3 & 0x7E | (v3 >> 7))) >> 31)) - 1;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25C734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = (122 - a2) & 0x7E | ((122 - a2) << 7);
    }
  }

  return result;
}

unint64_t sub_25C7A8()
{
  result = qword_DFAD88;
  if (!qword_DFAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAD88);
  }

  return result;
}

BOOL sub_25C7FC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = v3 & 0xFFFFFFFE;
  if ((v2 & 0xFFFFFFFE) == 0x7A)
  {
    if (v4 == 122)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v4 == 122)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  v8 = v2 >> 1;
  if (v8 <= 0x7C)
  {
    if (v8 != 62)
    {
      if (v8 == 63)
      {
        if (v4 != 126)
        {
          return 0;
        }

        goto LABEL_4;
      }

      goto LABEL_27;
    }

    if (v4 != 124)
    {
      return 0;
    }

LABEL_4:
    if (*(a1 + 8) != *(a2 + 8) || vabdd_f64(*(a1 + 16), *(a2 + 16)) > 0.00000011920929)
    {
      return 0;
    }

    return *(a1 + 40) == *(a2 + 40);
  }

  switch(v8)
  {
    case '}':
      if (v4 != -6)
      {
        return 0;
      }

      goto LABEL_4;
    case '~':
      if (v4 != -4)
      {
        return 0;
      }

      goto LABEL_4;
    case '\x7F':
      if (v3 <= 0xFFFFFFFD)
      {
        return 0;
      }

      goto LABEL_4;
  }

LABEL_27:
  v9 = 0;
  v10 = v3 >> 1;
  if ((v10 - 125) < 3 || (v10 - 62) < 2)
  {
    return v9;
  }

  if (v2 < 0)
  {
    v9 = 0;
    if ((v3 & 0x80000000) != 0 && *&v6 == *&v7)
    {
      goto LABEL_4;
    }

    return v9;
  }

  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    if ((v3 & 1) == 0 && v6 == v7)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v3)
  {
    goto LABEL_4;
  }

  return 0;
}

double sub_25C978@<D0>(unsigned __int8 a1@<W1>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  v6 = a2;
  variable initialization expression of SymbolButton.Configuration.symbol(&v45);
  v7 = *(&v45 + 1);
  v8 = v45;
  v9 = v46;
  v10 = v47;
  v12 = v49;
  v11 = v50;
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v44 = v48;
  v13 = v54;
  if (v6 != 2)
  {
    v14 = v50;
    v23 = v46;
    v57[0] = v45;
    v55 = v54;
    v56 = v47;
    if (a2)
    {
      v13 = [objc_opt_self() tertiaryLabelColor];
      sub_12E1C(&v55, &unk_DFDE40);
      if ((a1 & 0xFE) == 0x7A)
      {
LABEL_4:
        sub_12E1C(v57, &unk_DEE6F0);
LABEL_5:
        v8 = 0;
        v7 = 0;
LABEL_10:
        v9 = v23;
        v11 = v14;
        goto LABEL_11;
      }

      v21 = a1 >> 1;
      if (v21 <= 0x7C)
      {
        if (v21 == 62)
        {
          v8 = 0xD000000000000016;
          v7 = 0x8000000000B5A090;
          sub_12E1C(v57, &unk_DEE6F0);
LABEL_38:
          v10 = UIFontTextStyleCaption1;
          sub_1559A4(&v56);
          v11 = 2;
          v12 = 7;
          goto LABEL_39;
        }

        if (v21 == 63)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v21 == 125)
        {
          v8 = 0xD000000000000016;
          v7 = 0x8000000000B5A070;
          sub_12E1C(v57, &unk_DEE6F0);
          v10 = UIFontTextStyleCallout;
          sub_1559A4(&v56);
          v11 = 1;
          v12 = 6;
LABEL_39:
          v9 = v23;
          goto LABEL_11;
        }

        if (v21 == 126 || v21 == 127)
        {
          goto LABEL_4;
        }
      }

      sub_12E1C(v57, &unk_DEE6F0);
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_5;
      }

      v7 = 0xED00006465687361;
      v8 = 0x642E656C63726963;
      goto LABEL_38;
    }

    sub_12E1C(&v55, &unk_DFDE40);
    v10 = UIFontTextStyleSubheadline;
    sub_1559A4(&v56);
    if ((a1 & 0xFE) == 0x7A)
    {
      sub_12E1C(v57, &unk_DEE6F0);
      v8 = 0;
      v7 = 0;
LABEL_8:
      v13 = 0;
LABEL_9:
      v12 = 6;
      goto LABEL_10;
    }

    v22 = a1 >> 1;
    if (v22 <= 0x7C)
    {
      if (v22 == 62)
      {
        sub_12E1C(v57, &unk_DEE6F0);
        v13 = 0;
        v7 = 0xE90000000000006BLL;
        v8 = 0x72616D6B63656863;
        goto LABEL_9;
      }

      if (v22 == 63)
      {
        goto LABEL_21;
      }
    }

    else
    {
      switch(v22)
      {
        case '}':
          v8 = 0xD000000000000016;
          v7 = 0x8000000000B5A070;
          sub_12E1C(v57, &unk_DEE6F0);
          goto LABEL_8;
        case '~':
          sub_12E1C(v57, &unk_DEE6F0);
          v13 = 0;
          v7 = 0xEA00000000006E77;
          v8 = 0x6F642E776F727261;
          goto LABEL_9;
        case '\x7F':
LABEL_21:
          sub_12E1C(v57, &unk_DEE6F0);
          v13 = 0;
          v7 = 0xE400000000000000;
          v12 = 7;
          v8 = 1937075312;
          goto LABEL_10;
      }
    }

    sub_12E1C(v57, &unk_DEE6F0);
    v13 = 0;
    if ((a1 & 0x80u) != 0)
    {
      v8 = 0x642E656C63726963;
    }

    else
    {
      v8 = 0;
    }

    if ((a1 & 0x80u) != 0)
    {
      v7 = 0xED00006465687361;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_9;
  }

LABEL_11:
  v27 = v44;
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v34 = v44;
  v39 = v43;
  *&v25 = v8;
  *(&v25 + 1) = v7;
  *&v26 = v9;
  *(&v26 + 1) = v10;
  *&v28 = v12;
  *(&v28 + 1) = v11;
  v32 = v13;
  v33[0] = v8;
  v33[1] = v7;
  v33[2] = v9;
  v33[3] = v10;
  v35 = v12;
  v36 = v11;
  v38 = v42;
  v37 = v41;
  v40 = v13;
  sub_25CE1C(&v25, v24);
  sub_155A00(v33);
  v15 = v30;
  v16 = v31;
  v17 = v28;
  *(a3 + 64) = v29;
  *(a3 + 80) = v15;
  *(a3 + 96) = v16;
  result = *&v25;
  v19 = v26;
  v20 = v27;
  *a3 = v25;
  *(a3 + 16) = v19;
  *(a3 + 112) = v32;
  *(a3 + 32) = v20;
  *(a3 + 48) = v17;
  return result;
}

uint64_t sub_25CE78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25CED8()
{
  result = qword_DEDE20;
  if (!qword_DEDE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEDE20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryAddKeepLocalStatusObserver.ControlStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 9))
  {
    return (*a1 + 122);
  }

  v3 = *(a1 + 8);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 128 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 6)
  {
    return v4 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibraryAddKeepLocalStatusObserver.ControlStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (123 - a2) & 0x7E | ((123 - a2) << 7);
    }
  }

  return result;
}

uint64_t sub_25CFD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25CFF0(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
  }

  else if (a2)
  {
    *result = 0;
    *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryAddKeepLocalStatusObserver.ControlStatus.DownloadState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for LibraryAddKeepLocalStatusObserver.ControlStatus.DownloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

char *sub_25D124(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog] = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
  v11 = sub_ABA680();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder];
  *v12 = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  v13 = &v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler];
  *v13 = 0;
  v13[1] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle] = 0;
  v14 = &v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration];
  *v14 = 0;
  v14[8] = 1;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_hasBeenPlayed] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled] = 0;
  v15 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v17 = sub_80104(v16);

  *&v5[v15] = v17;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCachingReference] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache] = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton;
  type metadata accessor for VideoHeaderPlayButton();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents;
  *&v5[v19] = sub_25F6C0();
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_tapGestureRecognizerHandler] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView] = 0;
  v39.receiver = v5;
  v39.super_class = type metadata accessor for VideoHeaderLockupView();
  v20 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
  v22 = qword_DE6C90;
  v23 = v20;

  if (v22 != -1)
  {
    swift_once();
  }

  sub_74DD4(qword_E718D0);

  v24 = *&v20[v21];
  *(v24 + 24) = 0x70756B636F6CLL;
  *(v24 + 32) = 0xE600000000000000;

  v25 = *&v20[v21];
  v26 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v27 = (v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v28 = *(v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v27 = sub_8A12C;
  v27[1] = v26;

  sub_17654(v28);

  v29 = *&v20[v21];
  v30 = *(v29 + 144);
  *(v29 + 144) = 2;
  if (v30 != 2)
  {
    v31 = *(v29 + 112);

    v32 = [v31 image];
    sub_788B8(v32);
  }

  [v23 addSubview:*(*&v20[v21] + 112)];
  v33 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton;
  [*&v23[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton] setUserInteractionEnabled:0];
  [v23 addSubview:*&v23[v33]];
  v34 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:0 action:0];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for GestureRecognizerHandler();
  swift_allocObject();
  v36 = sub_13C80(0, &qword_DEE998);
  v37 = v34;
  *&v23[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_tapGestureRecognizerHandler] = GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v37, sub_25FAA0, v35, v36);

  [v23 addGestureRecognizer:v37];

  return v23;
}

void sub_25D5C4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler);
    if (v4)
    {

      if ([a1 state] == &dword_0 + 3)
      {
        v4();
      }

      sub_17654(v4);
    }
  }
}

uint64_t sub_25D6BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent);
  v8 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
  swift_beginAccess();
  sub_89FAC(v0 + v8, v6);
  v9 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_89FAC(v7 + v9, v4);
  swift_beginAccess();

  sub_8A01C(v6, v7 + v9);
  swift_endAccess();
  sub_75AE8(v4);
  sub_8A08C(v4);
  sub_8A08C(v6);
}

id sub_25D814(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle];
  if (v2 != result)
  {
    v3 = v1;
    if (v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle])
    {
      if (v2 == 1)
      {
        v4 = sub_25EAB8(1);
        v5 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition;
        v24 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition];
        sub_471A4();
        [v4 setHidden:{sub_AB3900() & 1, 0, v24}];
        v6 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
        [*(*&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent] + 112) addSubview:v4];
        v7 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView;
        v8 = *&v3[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView];
        if (v8)
        {
          v9 = *&v3[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView];
        }

        else
        {
          v20 = [objc_allocWithZone(type metadata accessor for ProgressView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
          v21 = *&v3[v7];
          *&v3[v7] = v20;
          v9 = v20;

          v8 = 0;
        }

        v25 = *&v3[v5];
        v22 = v8;
        v23 = v9;
        [v23 setHidden:{sub_AB3900() & 1, 0, v25}];

        [*(*&v3[v6] + 112) addSubview:v23];
      }

      else
      {
        v13 = sub_25EAB8(2);
        v14 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
        [*(*&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent] + 112) addSubview:v13];
        v15 = sub_25F158();
        if (v3[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration + 8])
        {
          v16 = 0;
        }

        else
        {
          v17 = *&v3[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents];
          swift_beginAccess();
          v18 = *(v17 + 120);
          v19 = *(v17 + 112) & 0xFFFFFFFFFFFFLL;
          if ((v18 & 0x2000000000000000) != 0)
          {
            v19 = HIBYTE(v18) & 0xF;
          }

          v16 = v19 != 0;
        }

        [v15 setHidden:v16];
        [*(*&v3[v14] + 112) addSubview:v15];
      }
    }

    else
    {
      *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition] = 0;
      sub_25DD64();
      v10 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView];
      if (v10)
      {
        [v10 removeFromSuperview];
      }

      v11 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView];
      if (v11)
      {
        [v11 removeFromSuperview];
      }

      v12 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView];
      if (v12)
      {
        [v12 removeFromSuperview];
      }
    }

    return [v3 setNeedsLayout];
  }

  return result;
}

void sub_25DB0C(uint64_t a1, char a2)
{
  if (a2)
  {
    if (*(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration + 8))
    {
      return;
    }

    v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration);
  }

  else
  {
    if (*(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration + 8))
    {
      v4 = *(*(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent) + 112);
      v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView);
      if (v5)
      {
        v6 = v4;
        v7 = v5;
        if ([v7 isDescendantOfView:v6])
        {
          [v7 setHidden:1];
        }
      }

      else
      {
        v15 = v4;
      }

      v16 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents);
      swift_beginAccess();
      *(v16 + 112) = 0;
      *(v16 + 120) = 0xE000000000000000;

      sub_2EB704();
      goto LABEL_22;
    }

    v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration);
    if (*&a1 == v3)
    {
      return;
    }
  }

  v8 = *(*(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent) + 112);
  v4 = sub_25F158();
  if (([v4 isDescendantOfView:v8] & 1) == 0)
  {
    [v8 addSubview:v4];
  }

  if (*Double.epsilon.unsafeMutableAddressor() >= v3)
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    if (qword_DE6CB0 != -1)
    {
      swift_once();
    }

    v9 = [qword_E718F0 stringFromSeconds:v3];
    v10 = sub_AB92A0();
    v12 = v11;
  }

  v13 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents);
  swift_beginAccess();
  *(v13 + 112) = v10;
  *(v13 + 120) = v12;

  sub_2EB704();

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  [v4 setHidden:v14 == 0];

LABEL_22:
}

void sub_25DD64()
{
  v1 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition;
  if ((sub_AB38D0() & 1) != 0 && *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle) == 1)
  {
    v2 = *(v0 + v1);
    if (v2 < 0.0)
    {
      v2 = 0.0;
    }

    if (v2 > 1.0)
    {
      v2 = 1.0;
    }

    *(v0 + v1) = v2;
    v3 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView;
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView);
    if (v4)
    {
      v5 = *&v4[OBJC_IVAR____TtC16MusicApplication12ProgressView_progress];
      *&v4[OBJC_IVAR____TtC16MusicApplication12ProgressView_progress] = v2;
      v11 = v2;
      v12 = v5;
      v6 = v4;
      if (sub_AB38D0())
      {
        [v6 setNeedsLayout];
      }

      v7 = *(v0 + v3);
      if (v7)
      {
        v13 = *(v0 + v1);
        sub_471A4();
        v8 = v7;
        [v8 setHidden:{sub_AB3900() & 1, 0, v13}];
      }
    }

    v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView);
    if (v9)
    {
      v14 = *(v0 + v1);
      sub_471A4();
      v10 = v9;
      [v10 setHidden:{sub_AB3900() & 1, 0, v14}];
    }

    sub_25EE8C();
  }
}

void sub_25DF4C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton);
  v3 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled;
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled);
  v5 = v2[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_isBlurBackgroundEnabled];
  v2[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_isBlurBackgroundEnabled] = v4;
  v6 = v2;
  sub_41AD8C(v5);

  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView);
  if (v7)
  {
    v8 = *(v1 + v3);
    v9 = v7[OBJC_IVAR____TtC16MusicApplication12ProgressView_isBlurBackgroundEnabled];
    v7[OBJC_IVAR____TtC16MusicApplication12ProgressView_isBlurBackgroundEnabled] = v8;
    v10 = v7;
    sub_3E4860(v9);
  }
}

uint64_t sub_25E028(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache) = a1;

  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView);
  if (v3)
  {
    v4 = *(v1 + v2);
    v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v6 = *&v3[v5];
    *&v3[v5] = v4;
    swift_retain_n();
    v7 = v3;
    sub_2E6210(v6);
  }

  else
  {
  }
}

void sub_25E11C()
{
  v1 = v0;
  v75.receiver = v0;
  v75.super_class = type metadata accessor for VideoHeaderLockupView();
  objc_msgSendSuper2(&v75, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];

  v11 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
  v12 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent];
  v13 = *(v12 + 80);
  v14 = *(v12 + 88);
  *(v12 + 80) = v7;
  *(v12 + 88) = v9;

  sub_75614(v13, v14);

  sub_76B28(v3, v5, v7, v9);

  v15 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton;
  [*&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton] sizeThatFits:{v7, v9}];
  v71 = v16;
  sub_ABA470();
  [*&v1[v15] setFrame:v71];
  v17 = v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle];
  if (v17 == 2)
  {
    if (v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration + 8])
    {
      v37 = 0;
    }

    else
    {
      v38 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents];
      swift_beginAccess();
      v39 = *(v38 + 120);
      v40 = *(v38 + 112) & 0xFFFFFFFFFFFFLL;
      if ((v39 & 0x2000000000000000) != 0)
      {
        v40 = HIBYTE(v39) & 0xF;
      }

      v37 = v40 != 0;
    }

    v41 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView;
    v42 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView];
    if (v42)
    {
      [v42 setHidden:!v37];
    }

    v43 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView];
    if (v43 && v37)
    {
      v44 = v43;
      [v1 effectiveUserInterfaceLayoutDirection];
      v45 = *(*&v1[v11] + 112);
      [v45 bounds];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      [v44 sizeThatFits:{260.0, 160.0}];
      v88.origin.x = v47;
      v88.origin.y = v49;
      v88.size.width = v51;
      v88.size.height = v53;
      CGRectGetMaxX(v88);
      v89.origin.x = v47;
      v89.origin.y = v49;
      v89.size.width = v51;
      v89.size.height = v53;
      CGRectGetMaxY(v89);
      v54 = v44;
      sub_ABA490();
      [v54 setFrame:?];

      v55 = *&v1[v41];
      if (v55)
      {
        v56 = v55;
        v90.origin.x = v47;
        v90.origin.y = v49;
        v90.size.width = v51;
        v90.size.height = v53;
        CGRectGetMaxX(v90);
        v91.origin.x = v47;
        v91.origin.y = v49;
        v91.size.width = v51;
        v91.size.height = v53;
        CGRectGetMaxY(v91);
        v57 = v56;
        sub_ABA490();
        [v57 setFrame:?];

        v58 = &v57[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
        swift_beginAccess();
        v59 = *(v58 + 3);
        v60 = *v58;
        v61 = *(v58 + 1);
        *&v74[16] = *(v58 + 2);
        *&v74[32] = v59;
        v73 = v60;
        *v74 = v61;
        sub_8A334(&v73, &v76);

        v76 = v73;
        v78 = *&v74[8];
        v79 = *&v74[24];
        v80 = *&v74[40];
        v77 = &off_CF0F30;
        Gradient.View.typedConfiguration.setter(&v76);
      }

      else
      {
      }
    }
  }

  else if (v17 == 1)
  {
    v18 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView];
    if (v18)
    {
      v19 = v18;
      v81.origin.x = v3;
      v81.origin.y = v5;
      v81.size.width = v7;
      v81.size.height = v9;
      CGRectGetHeight(v81);
      sub_AB3A00();
      v21 = v20;
      v82.origin.x = v3;
      v82.origin.y = v5;
      v82.size.width = v7;
      v82.size.height = v9;
      v22 = CGRectGetHeight(v82) - v21;
      v83.origin.x = v3;
      v83.origin.y = v5;
      v83.size.width = v7;
      v83.size.height = v9;
      v72 = v5;
      v23 = v3;
      Width = CGRectGetWidth(v83);
      [v19 setFrame:{0.0, v22, Width, v21}];
      v84.origin.x = 0.0;
      v84.origin.y = v22;
      v84.size.width = Width;
      v84.size.height = v21;
      CGRectGetHeight(v84);
      v85.origin.x = 0.0;
      v85.origin.y = v22;
      v85.size.width = Width;
      v3 = v23;
      v5 = v72;
      v85.size.height = v21;
      CGRectGetHeight(v85);
      sub_AB3A00();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_AF8820;
      *(v27 + 32) = 0;
      *(v27 + 40) = v26;
      *(v27 + 48) = 0x3FF0000000000000;
      v28 = &v19[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
      swift_beginAccess();
      v29 = *(v28 + 3);
      v30 = *v28;
      v31 = *(v28 + 1);
      *&v74[16] = *(v28 + 2);
      *&v74[32] = v29;
      v73 = v30;
      *v74 = v31;
      sub_8A334(&v73, &v76);

      v76 = v73;
      v78 = *&v74[8];
      v79 = *&v74[24];
      v80 = *&v74[40];
      v77 = v27;
      Gradient.View.typedConfiguration.setter(&v76);
    }

    v32 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView];
    if (v32)
    {
      v33 = v32;
      [v33 sizeThatFits:{v7, v9}];
      v35 = v34;
      v86.origin.x = v3;
      v86.origin.y = v5;
      v86.size.width = v7;
      v86.size.height = v9;
      v36 = CGRectGetHeight(v86) - v35 + -12.0;
      v87.origin.x = v3;
      v87.origin.y = v5;
      v87.size.width = v7;
      v87.size.height = v9;
      [v33 setFrame:{12.0, v36, CGRectGetWidth(v87) + -12.0 + -12.0, v35}];
    }
  }

  v62 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView];
  if (v62)
  {
    v63 = v62;
    [v63 sizeThatFits:{v7, v9}];
    v65 = v64;
    v67 = v66;
    v92.origin.x = v3;
    v92.origin.y = v5;
    v92.size.width = v7;
    v92.size.height = v9;
    v68 = CGRectGetWidth(v92);
    v93.origin.x = 0.0;
    v93.origin.y = 0.0;
    v93.size.width = v65;
    v93.size.height = v67;
    v69 = v68 - CGRectGetWidth(v93) + -12.0;
    v94.origin.x = v3;
    v94.origin.y = v5;
    v94.size.width = v7;
    v94.size.height = v9;
    Height = CGRectGetHeight(v94);
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v95.size.width = v65;
    v95.size.height = v67;
    [v63 setFrame:{v69, Height - CGRectGetHeight(v95) + -12.0, v65, v67}];
  }
}

id sub_25E8D8(uint64_t a1, uint64_t a2, SEL *a3, char a4, uint64_t a5)
{
  sub_13C80(0, &qword_DEE988);
  sub_E8D54();
  isa = sub_AB9B30().super.isa;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for VideoHeaderLockupView();
  objc_msgSendSuper2(&v12, *a3, isa, a2);

  [*&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton] setHighlighted:a4 & 1];
  return [*(*&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent] + 112) setDrawMode:a5];
}

uint64_t sub_25E9E4(void *a1, uint64_t a2, void *a3, void *a4, SEL *a5, char a6, uint64_t a7)
{
  sub_13C80(0, &qword_DEE988);
  sub_E8D54();
  v13 = sub_AB9B40();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_25E8D8(v13, a4, a5, a6, a7);
}

id sub_25EAB8(char a1)
{
  v2 = v1;
  v4 = sub_ABA680();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21[-v9];
  v11 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView;
  v12 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView);
  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView);
  }

  else
  {
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      if (a1 == 1)
      {
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_AF82E0;
        *(v14 + 32) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.0];
        *(v14 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.4];
        *(v14 + 48) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.4];
        static Gradient.vertical(colors:locations:interpolations:)(v14, 0, 0, &v23);
      }

      else
      {
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_AF7C50;
        *(v15 + 32) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.0];
        *(v15 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.4];
        Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)(kCAGradientLayerAxial, v15, 0, 0, &v23, 0.7, 0.65, 1.0, 1.0);
      }
    }

    else
    {
      static Gradient.vertical(colors:locations:interpolations:)(_swiftEmptyArrayStorage, 0, 0, &v23);
    }

    *&v22[0] = v23;
    *(v22 + 8) = v24;
    *(&v22[1] + 1) = v25;
    v22[2] = v26;
    v22[3] = v27;
    v28[0] = v22[0];
    v28[1] = v22[1];
    v28[2] = v26;
    v28[3] = v27;
    v16 = objc_allocWithZone(type metadata accessor for Gradient.View());
    sub_8A334(v22, v21);
    v13 = Gradient.View.init(configuration:)(v28);
    v17 = UIView.Corner.small.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v17, v4);
    sub_ABA630();
    (*(v5 + 8))(v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    sub_ABA6A0();
    sub_25F66C(v22);

    v18 = *(v2 + v11);
    *(v2 + v11) = v13;

    v12 = 0;
  }

  v19 = v12;
  return v13;
}

void sub_25EE8C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_hasBeenPlayed) == 1 && (v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition), sub_471A4(), (sub_AB3900() & 1) != 0))
  {
    sub_25EF70();
    v3 = v2;
    [v2 setHidden:{0, 0, v5}];
    [*(*(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent) + 112) addSubview:v3];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView);
    if (v4)
    {
      [v4 removeFromSuperview];
    }
  }
}

void sub_25EF70()
{
  v1 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = objc_opt_self();
  v4 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v5 = v0;
  v6 = [v3 imageNamed:v4 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v6)
  {
    v7 = objc_opt_self();
    v8 = [v7 whiteColor];
    v9 = [v6 flattenedImageWithColor:v8];
    v10 = [v9 imageWithRenderingMode:1];

    v11 = [objc_allocWithZone(UIImageView) initWithImage:v10];
    v12 = v11;
    UIView.Shadow.init(color:opacity:radius:offset:)([v7 blackColor], v15, 0.2, 3.0, 0.0, 0.0);
    UIView.shadow.setter(v15);

    v13 = *(v5 + v1);
    *(v5 + v1) = v12;

    v2 = 0;
LABEL_6:
    v14 = v2;
    return;
  }

  __break(1u);
}

char *sub_25F158()
{
  v1 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for TextStackView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = v5;
    v6 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache;
    v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache);
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      type metadata accessor for TextDrawing.Cache();
      swift_allocObject();
      v9 = v3;
      v10 = TextDrawing.Cache.init()();
      sub_25E028(v10);
      v7 = *(v0 + v6);
    }

    v11 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v12 = *&v3[v11];
    *&v3[v11] = v7;
    swift_retain_n();
    sub_2E6210(v12);

    TextStackView.add(_:)(*(v4 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents));
    v13 = *(v4 + v1);
    *(v4 + v1) = v3;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_25F294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoHeaderLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoHeaderLockupView()
{
  result = qword_DFAE00;
  if (!qword_DFAE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F43C()
{
  sub_7D678();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_25F564()
{
  result = qword_DFAE10;
  if (!qword_DFAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAE10);
  }

  return result;
}

uint64_t sub_25F5B8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCachingReference) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent) + 16) = a1;
}

uint64_t sub_25F61C(void *a1)
{

  sub_74DD4(a1);
}

uint64_t sub_25F6C0()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v1 clearColor];
  *&v10[0] = v2;
  *(&v10[0] + 1) = v3;
  v10[1] = xmmword_AFF7A0;
  v11 = 0;
  v12 = 0;
  v13 = v0;
  v14 = 1;
  v15 = xmmword_B03470;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x6E6F697461727564, 0xE800000000000000, v10);
  v16[0] = v2;
  v16[1] = v3;
  v17 = xmmword_AFF7A0;
  v18 = 0;
  v19 = 0;
  v20 = v0;
  v21 = 1;
  v22 = xmmword_B03470;
  v5 = v2;
  v6 = v3;
  v7 = v0;
  sub_2F118(v10, v9);
  sub_2F174(v16);

  return v4;
}

void sub_25F824()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
  v3 = sub_ABA680();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v5 = (v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle) = 0;
  v6 = v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_hasBeenPlayed) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled) = 0;
  v7 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v9 = sub_80104(v8);

  *(v1 + v7) = v9;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCachingReference) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache) = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton;
  type metadata accessor for VideoHeaderPlayButton();
  *(v1 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents;
  *(v1 + v11) = sub_25F6C0();
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_tapGestureRecognizerHandler) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_25FA30()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_25FA68()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25FAA8@<X0>(uint64_t a1@<X8>)
{
  v6[0] = [v1 innermostModelObject];
  sub_25CED8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAE18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_2605B0(v9, v6);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_12E1C(v6, &qword_DFAE20);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return sub_12E1C(v9, &qword_DFAE20);
}

uint64_t sub_25FBCC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  result = a2(a1);
  if (result)
  {
    v7 = 0;
    v8 = *(result + 16);
    v9 = _swiftEmptyArrayStorage;
LABEL_3:
    v10 = 16 * v7 + 40;
    while (1)
    {
      if (v8 == v7)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
        sub_2ECD4();
        v18 = sub_AB9140();

        return v18;
      }

      if (v7 >= *(result + 16))
      {
        break;
      }

      ++v7;
      v11 = v10 + 16;
      v12 = *(result + v10);
      v10 += 16;
      if (v12)
      {
        v13 = result;
        v14 = *(result + v11 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_6B0F0(0, *(v9 + 2) + 1, 1, v9);
        }

        v16 = *(v9 + 2);
        v15 = *(v9 + 3);
        if (v16 >= v15 >> 1)
        {
          v9 = sub_6B0F0((v15 > 1), v16 + 1, 1, v9);
        }

        result = v13;
        *(v9 + 2) = v16 + 1;
        v17 = &v9[16 * v16];
        *(v17 + 4) = v14;
        *(v17 + 5) = v12;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_25FE30(void *a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  [a1 hasVideo];
  sub_AB91E0();
  sub_AB3550();
  v4 = sub_AB9320();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAE28);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF85F0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = [a1 artist];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 name];
    if (v10)
    {
      v11 = v10;
      v12 = sub_AB92A0();
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 0;
    }

    *(v7 + 48) = v12;
    *(v7 + 56) = v14;
  }

  else
  {
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
  }

  return v7;
}

id sub_26007C@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &_s11SongAdapterVN;
  a1[4] = &off_D05B90;
  *a1 = v2;
  return v2;
}

uint64_t sub_26009C(void *a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAE28);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF85F0;
  sub_AB91E0();
  sub_AB3550();
  *(v4 + 32) = sub_AB9320();
  *(v4 + 40) = v5;
  v6 = [a1 artist];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 name];
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

    *(v4 + 48) = v10;
    *(v4 + 56) = v12;
  }

  else
  {
    *(v4 + 48) = 0;
    *(v4 + 56) = 0;
  }

  return v4;
}

id sub_260298@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &_s12AlbumAdapterVN;
  a1[4] = &off_D05BB8;
  *a1 = v2;
  return v2;
}

uint64_t sub_2602B8(void *a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAE28);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF85F0;
  sub_AB91E0();
  sub_AB3550();
  *(v4 + 32) = sub_AB9320();
  *(v4 + 40) = v5;
  v6 = [a1 curator];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 name];
    if (v8)
    {
      v9 = v8;
      v10 = sub_AB92A0();
      v12 = v11;

      goto LABEL_7;
    }
  }

  v13 = [a1 ownerName];
  if (!v13)
  {
    v10 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v9 = v13;
  v10 = sub_AB92A0();
  v12 = v14;
LABEL_7:

LABEL_9:
  *(v4 + 48) = v10;
  *(v4 + 56) = v12;
  return v4;
}

id sub_2604C8@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &_s15PlaylistAdapterVN;
  a1[4] = &off_D05BE0;
  *a1 = v2;
  return v2;
}

uint64_t sub_2604E8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_AB92A0();

  return v6;
}

uint64_t sub_260550()
{
  v1 = [*v0 artworkCatalog];

  return Artwork.Content.init(catalog:background:)(v1, 0);
}

id sub_260590@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &_s19RadioStationAdapterVN;
  a1[4] = &off_D05C08;
  *a1 = v2;
  return v2;
}

uint64_t sub_2605B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260658(uint64_t *a1, int a2)
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

uint64_t sub_2606A0(uint64_t result, int a2, int a3)
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

uint64_t sub_2606EC()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_AB91E0();
  sub_AB3550();
  v2 = sub_AB9320();
  v12[0] = v2;
  v12[1] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_6B0F0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_6B0F0((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v5;
  }

  sub_12E1C(v12, &unk_DEE6F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  sub_2ECD4();
  v10 = sub_AB9140();

  return v10;
}

unint64_t sub_26095C()
{
  result = qword_DFAE30;
  if (!qword_DFAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAE30);
  }

  return result;
}

uint64_t sub_2609C8()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for JSLoadingViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  sub_261A4C();
  sub_2620E4();
  v2 = *JSBridge.didFailInitializationDidChange.unsafeMutableAddressor();
  v3 = *JSBridge.shared.unsafeMutableAddressor();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v5 = v3;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_scriptingBridgeDidFailInitializationDidChangeObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v2, v3, 1, 1, sub_262B88, v4);
}

void sub_260AC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2610D0(1);
  }
}

id sub_260B64()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for JSLoadingViewController();
  objc_msgSendSuper2(&v20, "viewDidLayoutSubviews");
  v1 = sub_4D3DD0();
  [v1 adjustedContentInset];
  v3 = v2;

  v4 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;
  [*&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] contentSize];
  v6 = v5;
  [*&v0[v4] bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_AB9EC0();
  v16 = v14 - (v6 + v15);
  v17 = v3 + v6 + v10;
  v18 = *&v0[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView];
  if (v18)
  {
    [v18 setFrame:{v8, v17, v12, v16}];
  }

  result = *&v0[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView];
  if (result)
  {
    return [result setFrame:{v8, v17, v12, v16}];
  }

  return result;
}

void sub_260CE8()
{
  v1 = v0;
  v2 = sub_4D3DD0();
  [v2 contentSize];

  sub_4D55E0();
  [*&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] contentSize];
  v6 = v3;
  if (sub_AB38D0())
  {
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_260E18(char a1)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView];
  v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView] = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView];
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v1;
      v9[4] = sub_2629D0;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_1B5EB4;
      v9[3] = &block_descriptor_161_1;
      v6 = _Block_copy(v9);
      v7 = v3;
      v8 = v1;

      [v4 animateWithDuration:v6 animations:0.2];
      _Block_release(v6);
    }

    else
    {

      sub_2610D0(1);
    }
  }
}

void sub_260F74(char a1)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView];
  v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView] = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView];
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v1;
      v9[4] = sub_262BA4;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_1B5EB4;
      v9[3] = &block_descriptor_155_0;
      v6 = _Block_copy(v9);
      v7 = v3;
      v8 = v1;

      [v4 animateWithDuration:v6 animations:0.2];
      _Block_release(v6);
    }

    else
    {

      sub_2610D0(1);
    }
  }
}

void sub_2610D0(char a1)
{
  v2 = v1;
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  static ApplicationCapabilities.shared.getter(v61);
  sub_70C54(v61);
  v8 = BYTE1(v61[0]);
  v9 = JSBridge.shared.unsafeMutableAddressor();
  v10 = *&stru_108.sectname[swift_isaMask & **v9];
  v11 = *v9;
  v12 = v10();

  if ((v12 & 1) == 0 || (v8 & 1) == 0)
  {
    v28 = OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView;
    if (!*&v2[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView])
    {
      v30 = OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView;
      v31 = *&v2[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView];
      *(v6 + 16) = v31;
      *&v2[v30] = 0;

      sub_AB91E0();
      sub_AB3550();
      v32 = sub_AB9320();
      v34 = v33;
      v35 = objc_allocWithZone(type metadata accessor for LoadingView());
      LOBYTE(aBlock) = 0;
      v18 = LoadingView.init(title:style:usesSubtitleTextColor:)(v32, v34, 0x100000000, 1);
      v26 = *&v2[v28];
      *&v2[v28] = v18;
      v36 = v18;
      v27 = &OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView;
      goto LABEL_13;
    }

LABEL_9:
    v29 = 0;
LABEL_10:
    if (!*(v6 + 16))
    {
      goto LABEL_30;
    }

    v18 = 0;
LABEL_14:
    if ((a1 & 1) == 0)
    {
      [*(v6 + 16) removeFromSuperview];
      v18 = *(v7 + 16);
    }

    if (v18)
    {
      v38 = v18;
      v39 = v38;
      if ((v29 & 1) == 0)
      {
        [v38 setAlpha:0.0];
      }

      v40 = sub_4D3DD0();
      v41 = v40;
      v42 = *&v40[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_backgroundView];
      if (v42)
      {
        v43 = v42;

        [*&v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] insertSubview:v39 aboveSubview:v43];
        v39 = v43;
      }

      else
      {

        [*&v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] insertSubview:v39 atIndex:0];
      }
    }

    v44 = [v2 view];
    if (!v44)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v45 = v44;
    [v44 setNeedsLayout];

    if (a1)
    {
      if (v29)
      {
        v46 = *(v7 + 16);
        if (v46)
        {
          [v46 setAlpha:0.0];
        }
      }

      v47 = [v2 view];
      if (v47)
      {
        v48 = v47;
        [v47 layoutIfNeeded];

        v49 = objc_opt_self();
        v50 = swift_allocObject();
        *(v50 + 16) = v29;
        *(v50 + 24) = v7;
        *(v50 + 32) = v6;
        v59 = sub_26295C;
        v60 = v50;
        aBlock = _NSConcreteStackBlock;
        v56 = 1107296256;
        v57 = sub_1B5EB4;
        v58 = &block_descriptor_84;
        v51 = _Block_copy(&aBlock);

        v59 = sub_262980;
        v60 = v6;
        aBlock = _NSConcreteStackBlock;
        v56 = 1107296256;
        v57 = sub_1811AC;
        v58 = &block_descriptor_145_1;
        v52 = _Block_copy(&aBlock);

        [v49 animateWithDuration:v51 animations:v52 completion:0.2];
        _Block_release(v52);
        _Block_release(v51);
        goto LABEL_30;
      }

      goto LABEL_32;
    }

LABEL_30:

    return;
  }

  v13 = OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView;
  if (*&v2[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView])
  {
    goto LABEL_9;
  }

  v14 = OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView;
  v15 = *&v2[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView];
  *(v6 + 16) = v15;
  *&v2[v14] = 0;

  v16 = objc_allocWithZone(_UIContentUnavailableView);
  v17 = sub_AB9260();
  v18 = [v16 initWithFrame:v17 title:0 style:{0.0, 0.0, 0.0, 0.0}];

  if (v18)
  {
    v19 = qword_DE6C58;
    v20 = v18;
    if (v19 != -1)
    {
      v53 = v20;
      swift_once();
      v20 = v53;
    }

    v21 = v20;
    [v20 setBackgroundColor:{qword_E71898, v13}];
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v22 = sub_AB9260();

    [v21 setMessage:v22];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v23 = sub_AB9260();

    [v21 setButtonTitle:v23];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v59 = sub_262988;
    v60 = v24;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_1B5EB4;
    v58 = &block_descriptor_149;
    v25 = _Block_copy(&aBlock);

    [v21 setButtonAction:v25];
    _Block_release(v25);
    v26 = *&v2[v54];
    *&v2[v54] = v18;
    v27 = &OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView;
LABEL_13:

    v37 = *(v7 + 16);
    *(v7 + 16) = v18;

    v29 = v2[*v27];
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_33:
  __break(1u);
}

void sub_2618CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2620E4();
    v2 = JSBridge.shared.unsafeMutableAddressor();
    v3 = *(&stru_B8.offset + (swift_isaMask & **v2));
    v4 = *v2;
    v3();
  }
}

id sub_261974(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v5 = *(a2 + 16);
    if (v5)
    {
      [v5 setAlpha:1.0];
    }
  }

  swift_beginAccess();
  result = *(a3 + 16);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

id sub_2619FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = *(a2 + 16);
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

uint64_t sub_261A4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  sub_AB3420();
  v15 = JSBridge.shared.unsafeMutableAddressor();
  v16 = *(&stru_B8.reloff + (swift_isaMask & **v15));
  v17 = *v15;
  v16();

  v18 = *(v9 + 48);
  if (v18(v7, 1, v8) == 1)
  {
    (*(v9 + 16))(v12, v14, v8);
    if (v18(v7, 1, v8) != 1)
    {
      sub_12E1C(v7, &unk_E01230);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  sub_AB3340();
  v20 = 1.0 - v19;
  if (1.0 - v19 <= 0.0)
  {
    v28 = *(v1 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask);
    *(v1 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask) = 0;
    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
      sub_AB9A00();
    }

    sub_260F74(1);
    v29 = *(v9 + 8);
    v29(v12, v8);
    return (v29)(v14, v8);
  }

  else
  {
    v21 = sub_AB9990();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = &unk_B064E8;
    *(v23 + 24) = v22;
    v24 = static Task<>.delayed(by:priority:task:)(v4, &unk_B064F0, v23, &type metadata for () + 8, v20);
    sub_12E1C(v4, &qword_DE9D30);

    v25 = *(v1 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask);
    *(v1 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask) = v24;
    if (v25)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
      sub_AB9A00();
    }

    v26 = *(v9 + 8);
    v26(v12, v8);
    v26(v14, v8);
  }
}

uint64_t sub_261ECC(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_AB9940();
  *(v1 + 48) = sub_AB9930();
  v3 = sub_AB98B0();

  return _swift_task_switch(sub_261F64, v3, v2);
}

uint64_t sub_261F64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_260F74(1);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261FFC(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_E0564;

  return v5();
}

uint64_t sub_2620E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  sub_260E18(0);
  v4 = sub_AB9990();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_B064C8;
  *(v6 + 24) = v5;
  v7 = static Task<>.delayed(by:priority:task:)(v3, &unk_B064D8, v6, &type metadata for () + 8, 1.0);
  sub_12E1C(v3, &qword_DE9D30);

  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingIndicatorTask);
  *(v0 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingIndicatorTask) = v7;
  if (v9)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    sub_AB9A00();
  }

  return result;
}

uint64_t sub_2622AC(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_AB9940();
  *(v1 + 48) = sub_AB9930();
  v3 = sub_AB98B0();

  return _swift_task_switch(sub_262344, v3, v2);
}

uint64_t sub_262344()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_260E18(1);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_262414()
{
}

id sub_262484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLoadingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSLoadingViewController()
{
  result = qword_DFAE98;
  if (!qword_DFAE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2625E4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_26261C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17BD0;

  return sub_2622AC(v0);
}

uint64_t sub_2626AC()
{

  return swift_deallocObject();
}

uint64_t sub_2626E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_261FFC(a1, v4);
}

uint64_t sub_26279C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_261ECC(v0);
}

uint64_t sub_26282C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_261FFC(a1, v4);
}

uint64_t sub_2628E4()
{

  return swift_deallocObject();
}

uint64_t sub_26291C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_262990()
{

  return swift_deallocObject();
}

id sub_2629D4()
{
  v1 = 0.0;
  if (*(*(v0 + 24) + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

void sub_262A00()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 setNeedsLayout];

  v3 = sub_4D3DD0();
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  v8 = [v0 view];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;

  v14 = &v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
  *v14 = v5;
  *(v14 + 1) = v7;
  *(v14 + 2) = v11;
  *(v14 + 3) = v13;

  sub_4DB494();
}

id sub_262AEC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_scriptingBridgeDidFailInitializationDidChangeObserver] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingIndicatorTask] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for JSLoadingViewController();
  return objc_msgSendSuper2(&v4, "initWithCoder:", a1);
}

char *sub_262BBC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonSubtitle];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler];
  *v12 = 0;
  v12[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment] = 1;
  v13 = OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton;
  v14 = type metadata accessor for SubtitledButton();
  *&v4[v13] = [objc_allocWithZone(v14) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  v17 = OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton;
  [v16 addSubview:*&v15[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton]];
  v18 = *&v15[v17];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v18;
  ControlEventHandling<>.on(_:handler:)(64, sub_2641BC, v19, v14);

  return v15;
}

void sub_262D64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler);
    if (v2)
    {

      v2(v3);
      sub_17654(v2);
    }
  }
}

uint64_t sub_262ECC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_262F1C(v4, v5);
}

uint64_t sub_262F1C(uint64_t result, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle + 8];
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

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler] == 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v8 = 1;
  }

  v9 = OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton;
  [*&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton] setHidden:v8];
  v10 = *&v2[v9];
  if (v4[1])
  {
    v11 = *v4;
    v12 = v4[1];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v10[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title];
  v14 = *&v10[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title];
  v15 = *&v10[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title + 8];
  *v13 = v11;
  v13[1] = v12;
  if (v11 == v14 && v12 == v15)
  {
  }

  else
  {
    v17 = sub_ABB3C0();

    if ((v17 & 1) == 0)
    {
      v18 = v10;
      sub_458374();
    }
  }

  return [v2 setNeedsLayout];
}

uint64_t sub_263108(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonSubtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonSubtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonSubtitle + 8];
  *v4 = result;
  v4[1] = a2;
  if (a2)
  {
    if (v6)
    {
      if (v5 == result && v6 == a2)
      {
        goto LABEL_11;
      }

      v8 = a2;
      v9 = sub_ABB3C0();
      a2 = v8;
      if (v9)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v6)
  {
    return result;
  }

  v10 = *&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton];
  v11 = a2;

  v12 = v10;
  sub_456244(v3, v11);

  [v2 setNeedsLayout];
LABEL_11:
}

void sub_2631F4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle))
  {
    v3 = 0x656B6F727473;
  }

  else
  {
    v3 = 1819044198;
  }

  if (*(v1 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle))
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = a1 & 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle) = v5;
  if (v5)
  {
    v6 = 0x656B6F727473;
  }

  else
  {
    v6 = 1819044198;
  }

  if (v5)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v3 == v6 && v4 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {

      sub_263DA8();
    }
  }
}

id sub_2632E0(char a1)
{
  if (v1[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment])
  {
    v3 = 0x64657265746E6563;
  }

  else
  {
    v3 = 1952867692;
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment])
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = a1 & 1;
  v1[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment] = v5;
  if (v5)
  {
    v6 = 0x64657265746E6563;
  }

  else
  {
    v6 = 1952867692;
  }

  if (v5)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v3 == v6 && v4 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {

      return [v1 setNeedsLayout];
    }
  }

  return result;
}

void sub_263434()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  [v0 music_inheritedLayoutInsets];
  v11 = v10;
  v13 = v12;
  [v0 effectiveUserInterfaceLayoutDirection];
  v27 = v2;
  v14 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v11, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if ([v9 horizontalSizeClass] == &dword_0 + 2)
  {
    v21 = v18 * 0.5;
  }

  else
  {
    v21 = v18;
  }

  v22 = v14;
  v23 = v16;
  v24 = v20;
  CGRectGetWidth(*(&v21 - 2));
  if (v0[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment] == 1)
  {
  }

  else
  {
    v25 = sub_ABB3C0();

    if ((v25 & 1) == 0)
    {
      v29.origin.x = v27;
      v29.origin.y = v4;
      v29.size.width = v6;
      v29.size.height = v8;
      CGRectGetMinX(v29);
      goto LABEL_9;
    }
  }

  sub_ABA470();
LABEL_9:
  v26 = *&v0[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton];
  sub_ABA490();
  [v26 setFrame:?];
}

uint64_t sub_263774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64657265746E6563;
  }

  else
  {
    v3 = 1952867692;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x64657265746E6563;
  }

  else
  {
    v5 = 1952867692;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_263814()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_263890()
{
  sub_AB93F0();
}

Swift::Int sub_2638F8()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_26397C(uint64_t *a1@<X8>)
{
  v2 = 1952867692;
  if (*v1)
  {
    v2 = 0x64657265746E6563;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2639B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656B6F727473;
  }

  else
  {
    v3 = 1819044198;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656B6F727473;
  }

  else
  {
    v5 = 1819044198;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_263A50()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_263AC8()
{
  sub_AB93F0();
}

Swift::Int sub_263B2C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_263BAC@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_ABB140(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_263C08(uint64_t *a1@<X8>)
{
  v2 = 1819044198;
  if (*v1)
  {
    v2 = 0x656B6F727473;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_263CFC()
{
  result = qword_DFAF00;
  if (!qword_DFAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAF00);
  }

  return result;
}

unint64_t sub_263D54()
{
  result = qword_DFAF08;
  if (!qword_DFAF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAF08);
  }

  return result;
}

void sub_263DA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton;
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton];
  if ((v0[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle] & 1) == 0)
  {
    v16 = v3;
    v17 = [v1 tintColor];
    [v16 setTintColor:v17];

    v18 = *&v1[v2];
    v19 = *&v18[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor];
    *&v18[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor] = 0;
    v20 = v18;
    sub_456524(v19);

    v21 = *&v1[v2];
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 whiteColor];
    v15 = *&v23[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor];
    *&v23[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor] = v24;
    sub_B9A4C();
    v14 = v24;
    v25 = v23;
    if (sub_ABA790())
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_458374();
    goto LABEL_7;
  }

  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 whiteColor];
  [v5 setTintColor:v6];

  v7 = *&v1[v2];
  v8 = [v1 tintColor];
  v9 = *&v7[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor];
  *&v7[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor] = v8;
  v10 = v8;
  sub_456524(v9);

  v11 = *&v1[v2];
  v12 = [v1 tintColor];
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = *&v11[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor];
  *&v11[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor] = v12;
  sub_B9A4C();
  v25 = v13;
  v15 = v11;
  if ((sub_ABA790() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

void sub_264010()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonSubtitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment) = 1;
  v4 = OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for SubtitledButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_ABAFD0();
  __break(1u);
}

id sub_2640F0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler);
  *v3 = a1;
  v3[1] = a2;
  sub_307CC(a1);
  sub_17654(v4);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton);
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle + 8))
  {
    v6 = *v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  return [v5 setHidden:v6];
}

uint64_t sub_264184()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_2641C4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for PlaybackIntentDescriptor(0);
  v15 = *(v14 - 8);
  (*(v15 + 56))(a5, 1, 1, v14);
  if (!a1)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_12E1C(&v43, &qword_DFAF18);
LABEL_16:
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_17;
  }

  v42 = a1;
  sub_13C80(0, &qword_DEDE20);
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAF10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_9;
  }

  if (!*(&v44 + 1))
  {
LABEL_9:
    sub_12E1C(&v43, &qword_DFAF18);
    goto LABEL_12;
  }

  v40 = a3;
  v41 = a4;
  v17 = sub_70DF8(&v43, v46);
  v18 = (*(&stru_B8.offset + (swift_isaMask & *v5)))(v17);
  if (v18)
  {
    v19 = v18;
    v20 = JSIdentifierSet.ContentIdentifierKind.library.unsafeMutableAddressor();
    if ((*(&stru_108.flags + (swift_isaMask & *v19)))(*v20))
    {
      v21 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v22 = [objc_opt_self() deviceMediaLibrary];
      (*(v21 + 8))();

      sub_267C14(v13, a5);
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v46);
      goto LABEL_18;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v46);
  a3 = v40;
  a4 = v41;
LABEL_12:
  v42 = v16;
  v23 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(&v44 + 1))
  {
    sub_70DF8(&v43, v46);
    v24 = v47;
    v25 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v25 + 8))(a3, a4, v24, v25);
    sub_267C14(v13, a5);
    goto LABEL_15;
  }

LABEL_17:
  sub_12E1C(&v43, &qword_DFAF28);
LABEL_18:
  if ((*(v15 + 48))(a5, 1, v14))
  {
    v26 = 1;
  }

  else
  {
    v26 = a2 == 0;
  }

  if (!v26)
  {
    v27 = a2;
    v28 = UIViewController.playActivityInformation.getter();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter();
    v36 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v36 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {

      v37 = sub_AB9260();
    }

    else
    {
      v37 = 0;
    }

    [v35 setPlayActivityFeatureName:v37];

    if (v34 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_AB3250().super.isa;
    }

    [v35 setPlayActivityRecommendationData:isa];

    sub_466A4(v32, v34);
  }
}

uint64_t sub_264648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_13C80(0, &qword_DEDE20);
  v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAF10);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v19, v23);
    v10 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
    MPModelObject.bestIdentifier(for:)(*v10, 1u);
    if (v11)
    {

      v12 = v24;
      v13 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v13 + 8))(a3, v12, v13);
      return __swift_destroy_boxed_opaque_existential_0(v23);
    }

    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_12E1C(&v19, &qword_DFAF18);
  }

  v22 = v9;
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAF20);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v19, v23);
    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v16 + 8))(a1, a2, v15, v16);
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_12E1C(&v19, &qword_DFAF28);
  v18 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
}

void sub_2648A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v9 = sub_AB9260();
  [v23 setLabel:v9];

  v10 = a1;
  if (!a1)
  {
    v10 = [objc_opt_self() deviceMediaLibrary];
  }

  v11 = a1;
  [v23 setMediaLibrary:v10];

  v12 = [objc_opt_self() kindWithVariants:3];
  [v23 setItemKind:v12];

  sub_13C80(0, &qword_DE8E90);
  v13 = static MPModelAlbum.defaultMusicKind.getter();
  [v23 setSectionKind:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF82B0;
  *(v14 + 32) = v3;
  sub_13C80(0, &qword_DEDE20);
  v15 = v3;
  isa = sub_AB9740().super.isa;

  [v23 setScopedContainers:isa];

  static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter();
  sub_13C80(0, &unk_DFDE50);
  v17 = sub_AB9740().super.isa;

  [v23 setItemSortDescriptors:v17];

  v18 = [v23 playbackIntentWithStartItemIdentifiers:0];
  if (v18)
  {
    *v8 = v18;
    swift_storeEnumTagMultiPayload();
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v8, v26, 3, 0, 0, 1, 0, 1, a2, 0, v24);

    v19 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
    v21 = v23;
  }
}

void sub_264C8C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v3);
  v5 = (v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_allocWithZone(MPModelStaticRequest) init];
  sub_13C80(0, &unk_E04560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 kindWithModelClass:ObjCClassFromMetadata];
  [v9 setItemKind:v10];

  [v9 copy];
  sub_ABAB50();
  sub_13C80(0, &qword_DFAF30);
  swift_dynamicCast();
  v11 = *&v19[0];
  v12 = [objc_allocWithZone(MPModelStaticResponse) initWithRequest:*&v19[0]];
  swift_unknownObjectRelease();

  if (v12)
  {
    v13 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v14 = sub_AB9260();
    [v13 appendSection:v14];

    [v13 appendItem:v1];
    [v12 setResults:v13];
    v15 = sub_AB9260();
    [v9 setLabel:v15];

    [v9 setStaticResponse:v12];
    v16 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
    [v16 setRequest:v9];

    v17 = [objc_allocWithZone(MPCPlaybackIntent) init];
    [v17 setTracklistToken:v16];
    [v17 setTracklistSource:3];
    *v5 = v17;
    swift_storeEnumTagMultiPayload();
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v21, 3, 0, 0, 1, 0, 1, a1, 0, v19);

    v18 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_265034@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v6 = MPModelObject.bestIdentifier(for:)(*v5, 1u);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
    [v10 setInGroupSession:0];
    v11 = v10;
    v12 = sub_AB9260();
    [v11 setLabel:v12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_AF4EC0;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
    isa = sub_AB9740().super.isa;

    [v11 setStoreIDs:isa];

    v15 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
    [v15 setRequest:v11];

    v16 = [objc_allocWithZone(MPCPlaybackIntent) init];
    [v16 setTracklistToken:v15];
    [v16 setTracklistSource:3];
    *v4 = v16;
    swift_storeEnumTagMultiPayload();
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v4, v23, 3, 0, 0, 1, 0, 1, a1, 0, v21);

    v17 = type metadata accessor for PlaybackIntentDescriptor(0);
    return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for PlaybackIntentDescriptor(0);
    v20 = *(*(v19 - 8) + 56);

    return v20(a1, 1, 1, v19);
  }
}

void sub_26536C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &qword_DE9C10);
  v26 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v10 = v9;
  v11 = sub_AB9260();
  [v10 setLabel:v11];

  v12 = a1;
  if (!a1)
  {
    v12 = [objc_opt_self() deviceMediaLibrary];
  }

  v13 = a1;
  [v10 setMediaLibrary:v12];

  v14 = objc_opt_self();
  v15 = [v14 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v26 options:0];
  [v10 setSectionKind:v15];

  [v10 setItemKind:v26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF82B0;
  *(v16 + 32) = v3;
  sub_13C80(0, &qword_DEDE20);
  v17 = v3;
  isa = sub_AB9740().super.isa;

  [v10 setScopedContainers:isa];

  v19 = v17;
  v20 = sub_226C8C(v19);

  if (v20)
  {

    sub_13C80(0, &unk_DFDE50);
    v20 = sub_AB9740().super.isa;
  }

  [v10 setItemSortDescriptors:v20];

  v21 = [v10 playbackIntentWithStartItemIdentifiers:0];
  if (v21)
  {
    *v8 = v21;
    swift_storeEnumTagMultiPayload();
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v8, v29, 3, 0, 0, 1, 0, 1, a2, 0, v27);

    v22 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
  }

  else
  {
    v23 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v23 - 8) + 56))(a2, 1, 1, v23);

    v24 = v26;
  }
}

uint64_t sub_26579C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v3);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v6, 1u);
  if (v7)
  {

    *v5 = [objc_opt_self() radioPlaybackIntentWithStation:v1];
    swift_storeEnumTagMultiPayload();
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v14, 3, 0, 0, 1, 0, 1, a1, 0, v12);
    v8 = type metadata accessor for PlaybackIntentDescriptor(0);
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  else
  {
    v10 = type metadata accessor for PlaybackIntentDescriptor(0);
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_265980@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7 = __chkstk_darwin(v6);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1(v7);
  v42 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    v35 = 0;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = &v42;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_267BE8;
  *(v12 + 24) = v11;
  v38 = sub_581C8;
  v39 = v12;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v37 = sub_48D644;
  *(&v37 + 1) = &block_descriptor_36;
  v13 = _Block_copy(&aBlock);
  v14 = v39;
  v15 = v10;
  v16 = v3;

  [v15 enumerateItemIdentifiersUsingBlock:v13];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v35 = sub_267BE8;
  if (!*(v42 + 2))
  {
LABEL_6:
    v17 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v18 = MPModelObject.bestIdentifier(for:)(*v17, 1u);
    v15 = v42;
    if (v19)
    {
      v12 = v18;
      v14 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v15;
      v34 = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_8:
        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        if (v22 >= v21 >> 1)
        {
          v15 = sub_6B0F0((v21 > 1), v22 + 1, 1, v15);
        }

        *(v15 + 2) = v22 + 1;
        v23 = &v15[16 * v22];
        *(v23 + 4) = v12;
        *(v23 + 5) = v14;
        v42 = v15;
        a2 = v34;
        goto LABEL_12;
      }

LABEL_16:
      v15 = sub_6B0F0(0, *(v15 + 2) + 1, 1, v15);
      v42 = v15;
      goto LABEL_8;
    }

    if (!*(v42 + 2))
    {

      v31 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v24 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
  [v24 setInGroupSession:0];
  v25 = v24;
  v26 = sub_AB9260();
  [v25 setLabel:v26];

  isa = sub_AB9740().super.isa;

  [v25 setStoreIDs:isa];

  v28 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
  [v28 setRequest:v25];

  v29 = [v3 identifiers];
  [v28 setStartItemIdentifiers:v29];

  v30 = [objc_allocWithZone(MPCPlaybackIntent) init];
  [v30 setTracklistToken:v28];
  [v30 setTracklistSource:3];
  [v30 setPrefersEnqueuingUsingAirPlay:1];
  *v9 = v30;
  swift_storeEnumTagMultiPayload();
  v38 = 0;
  aBlock = 0u;
  v37 = 0u;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v9, &aBlock, 3, 0, 0, 1, 0, 1, a2, 0, v40);

  v31 = 0;
LABEL_13:
  v32 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v32 - 8) + 56))(a2, v31, 1, v32);

  return sub_3FC30(v35);
}