uint64_t sub_10058BE94()
{
  if ([v0 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BSUILibraryCollectionUIProvider])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1001F1160(&qword_100AE6FE0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100007840(v5, &unk_100AD5B40);
    return 0;
  }
}

uint64_t sub_10058BF6C()
{
  v1 = v0;
  sub_10000A7C4(0, &qword_100AD1E10);
  v2 = sub_1007A2D74();
  v3 = &_dispatch_main_q;
  if (v2 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  if (_UISolariumEnabled())
  {
    result = sub_1007A38A4();
    __break(1u);
    return result;
  }

  v4 = [v1 tabs];
  sub_10000A7C4(0, &qword_100AEB148);
  sub_1007A25E4();

  sub_1001F1160(&qword_100AEB1B0);
  sub_100005920(&qword_100AEB1B8, &qword_100AEB1B0);
  sub_1007A28B4();

  if (v7)
  {
    v5 = [v7 viewController];

    if (v5)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

NSString sub_10058C16C()
{
  result = sub_1007A2214();
  static NSNotificationName.rootBarReady = result;
  return result;
}

id static NSNotificationName.rootBarReady.getter()
{
  if (qword_100AD1868 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.rootBarReady;

  return v1;
}

uint64_t static TabBarController.rootBarReadyNotification.getter()
{
  if (qword_100AD1868 != -1)
  {
    swift_once();
  }

  return sub_1007A2254();
}

uint64_t sub_10058C2B8()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AEB0F0);
  sub_100008B98(v0, qword_100AEB0F0);
  return sub_10079ACD4();
}

uint64_t sub_10058C32C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AEB108);
  sub_100008B98(v0, qword_100AEB108);
  return sub_10079ACD4();
}

uint64_t sub_10058C3B0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10058C430(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_10079B9B4();
}

uint64_t sub_10058C4A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10058D008;
    *(v12 + 24) = v9;
    v26[4] = sub_10058D014;
    v26[5] = v12;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_1002166B8;
    v26[3] = &unk_100A23C78;
    v13 = _Block_copy(v26);
    v14 = a3;
    v15 = a4;
    v16 = a5;

    [v11 viewControllerForItem:a1 completion:v13];
    _Block_release(v13);

    return swift_unknownObjectRelease();
  }

  else
  {
    v18 = qword_100AD1870;
    v19 = a3;
    v20 = a4;
    v21 = a5;
    if (v18 != -1)
    {
      swift_once();
    }

    v22 = sub_10079ACE4();
    sub_100008B98(v22, qword_100AEB0F0);
    v23 = sub_10079ACC4();
    v24 = sub_1007A29C4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "viewControllerProvider is missing in TabBarController", v25, 2u);
    }

    sub_100587E00(0, v19, v20, v21);
  }
}

id sub_10058C718(void *a1, char a2)
{
  v4 = [objc_allocWithZone(BSUIPlaceholderViewController) init];
  v5 = [v4 navigationItem];
  v6 = [a1 resolvedNavigationItemTitleWithIsCompact:a2 & 1];
  [v5 setTitle:v6];

  [a1 configureDynamicTitleFor:v4];
  v7 = [v4 navigationItem];

  [v7 setLargeTitleDisplayMode:{objc_msgSend(a1, "defaultLargeTitleDisplayMode")}];
  return v4;
}

void sub_10058C820(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController__bc_preferredTabBarScrollEdgeAppearance];
  *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController__bc_preferredTabBarScrollEdgeAppearance] = a1;
  v3 = a1;

  v4 = [v1 tabBar];
  v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  if (*&v1[v5])
  {
    v6 = [v1 tabBar];
    v7 = [v6 standardAppearance];
  }

  else
  {
    v7 = [v1 bc_preferredTabBarScrollEdgeAppearance];
  }

  [v4 setScrollEdgeAppearance:v7];
}

void sub_10058C9C0()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100AEB3A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR___BKTabBarController_rootBarEventSubject;
  sub_1001F1160(&unk_100AD2090);
  swift_allocObject();
  *(v0 + v6) = sub_10079B8D4();
  v7 = OBJC_IVAR___BKTabBarController__cachedSelectedItem;
  v9[1] = 0;
  sub_1001F1160(&unk_100ADAC50);
  sub_10079B964();
  (*(v3 + 32))(v1 + v7, v5, v2);
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___BKTabBarController_items) = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController;
  *(v1 + v8) = [objc_opt_self() weakObjectsHashTable];
  *(v1 + OBJC_IVAR___BKTabBarController_isPopulatingItems) = 0;
  *(v1 + OBJC_IVAR___BKTabBarController_isTransferingFromSidebar) = 0;
  *(v1 + OBJC_IVAR___BKTabBarController_cancellables) = &_swiftEmptySetSingleton;
  sub_1007A38A4();
  __break(1u);
}

void sub_10058CBC8(void *a1, void *a2)
{
  v4 = sub_100582D38();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  [v4 bc_updateNavBarVisibleWithTransitionCoordinator:0 duration:0.0];
  sub_100020ED0();
  if (!a2 || a2 != a1)
  {
    goto LABEL_16;
  }

  if (!_UISolariumEnabled())
  {
    if ((_UISolariumEnabled() & 1) == 0)
    {
      if (!sub_1005891A8())
      {
        v20 = sub_10002112C();
        if (v20)
        {
          v25 = v20;
          v21 = [v25 viewControllers];
          sub_10000A7C4(0, &qword_100AD7CB0);
          v22 = sub_1007A25E4();

          if (v22 >> 62)
          {
            v23 = sub_1007A38D4();
          }

          else
          {
            v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v23 == 1)
          {
            v24 = [v25 topViewController];

            if (!v24 || (v14 = [v24 contentScrollViewForEdge:1], v24, !v14))
            {
              v8 = v5;
              goto LABEL_23;
            }

            [v14 _scrollToTopIfPossible:1];
            v8 = v5;
          }

          else
          {

            v14 = [v25 popToRootViewControllerAnimated:1];
            v8 = v25;
            v25 = v5;
          }

          goto LABEL_22;
        }
      }

LABEL_32:
      v19 = v5;
      goto LABEL_33;
    }

LABEL_16:
    v25 = [a2 viewController];
    v8 = [a1 viewController];
    if (v25)
    {
      sub_10000A7C4(0, &unk_100ADAF38);
      v15 = v25;
      v14 = sub_1007A2C64();

      if (v8)
      {
LABEL_18:
        sub_10000A7C4(0, &unk_100ADAF38);
        v16 = v8;
        v17 = sub_1007A2C64();

LABEL_21:
        [v14 viewWillDisappearFromTabChange];
        v18 = v17;
        [v18 viewWillAppearFromTabChange];

        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
      if (v8)
      {
        goto LABEL_18;
      }
    }

    v17 = 0;
    goto LABEL_21;
  }

  if (sub_1005891A8())
  {
    goto LABEL_32;
  }

  v6 = sub_10002112C();
  if (!v6)
  {
    goto LABEL_32;
  }

  v25 = v6;
  v7 = [v6 topViewController];
  if (!v7)
  {
    v8 = v25;
    v25 = v5;
    goto LABEL_23;
  }

  v8 = v7;
  v9 = [v25 viewControllers];
  sub_10000A7C4(0, &qword_100AD7CB0);
  v10 = sub_1007A25E4();

  if (v10 >> 62)
  {
    v11 = sub_1007A38D4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 == 1 && [v8 _appearState] == 2 && (v12 = objc_msgSend(v8, "contentScrollViewForEdge:", 1)) != 0)
  {
    v13 = v12;
    [v12 _scrollToTopIfPossible:1];

    v14 = v5;
  }

  else
  {
    v14 = v5;
  }

LABEL_22:

LABEL_23:
  v19 = v25;
LABEL_33:
}

id ContainerHost.__allocating_init(launchCoordinator:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___BKContainerHost____lazy_storage___containerManager] = 0;
  *&v3[OBJC_IVAR___BKContainerHost____lazy_storage___container] = 0;
  v4 = &v3[OBJC_IVAR___BKContainerHost____lazy_storage___resolver];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v3[OBJC_IVAR___BKContainerHost_launchCoordinator] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, "init");
}

id ContainerHost.init(launchCoordinator:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___BKContainerHost____lazy_storage___containerManager] = 0;
  *&v1[OBJC_IVAR___BKContainerHost____lazy_storage___container] = 0;
  v4 = &v1[OBJC_IVAR___BKContainerHost____lazy_storage___resolver];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR___BKContainerHost_launchCoordinator] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

unint64_t sub_10058D29C(unint64_t result)
{
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }

    v2 = result;
    result = sub_1003BD200(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      break;
    }

    v3 = 0;
    v4 = v2;
    v15 = v2 & 0xC000000000000001;
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
    v5 = v2;
    v6 = v1;
    while (1)
    {
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v15)
      {
        v8 = sub_1007A3784();
      }

      else
      {
        if (v3 >= *(v14 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v4 + 8 * v3 + 32);
      }

      v9 = v8;

      v16._countAndFlagsBits = sub_100721B28();
      sub_1007A23D4(v16);

      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      sub_1007A23D4(v17);
      v18._countAndFlagsBits = 2114390;
      v18._object = 0xE300000000000000;
      sub_1007A23D4(v18);

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_1003BD200((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12;
      ++v3;
      v4 = v5;
      if (v7 == v6)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v13 = result;
    v1 = sub_1007A38D4();
    result = v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10058D488()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_10058D4FC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B23598);
  sub_100008B98(v0, qword_100B23598);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A3404();
}

uint64_t sub_10058D57C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AEB470);
  v1 = sub_100008B98(v0, qword_100AEB470);
  if (qword_100AD1880 != -1)
  {
    swift_once();
  }

  v2 = sub_100008B98(v0, qword_100B23598);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10058D644@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10058D6C4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_10058D738()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_10058D7AC()
{
  v1 = OBJC_IVAR____TtC5Books13PageCurlState__isCurlActive;
  v2 = sub_1001F1160(&qword_100AD50E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books13PageCurlState__pageCurlDirection;
  v4 = sub_1001F1160(&qword_100AEB8C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_10058D8C8()
{
  sub_1004B6D70();
  if (v0 <= 0x3F)
  {
    sub_100594C98(319, &unk_100AEB4D8, type metadata accessor for NavigationDirection, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10058D9C4()
{
  v1 = v0;
  v50 = sub_1007A0F74();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50 - 8);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&unk_100AEB380);
  v5 = __chkstk_darwin(v4 - 8);
  v49 = &v44 - v6;
  v7 = [v1 gestureRecognizers];
  sub_10000A7C4(0, &unk_100AEA0E0);
  v8 = sub_1007A25E4();

  if (v8 >> 62)
  {
    v9 = sub_1007A38D4();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v10 = 0;
  v11 = OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = sub_1007A3784();
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    ++v10;
    [v12 setEnabled:v1[v11]];
  }

  while (v9 != v10);
LABEL_10:

  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    v16 = OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled;
    [v14 setHidden:(v1[OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled] & 1) == 0];

    v17 = [v1 viewControllers];
    if (!v17 || (v18 = v17, sub_10000A7C4(0, &qword_100AD7CB0), v19 = sub_1007A25E4(), v18, v20 = sub_1005AB634(v19), , (v55 = v20) == 0))
    {

      v55 = _swiftEmptyArrayStorage;
    }

    if (v55 >> 62)
    {
      v21 = sub_1007A38D4();
      if (v21)
      {
LABEL_16:
        v54 = v21 - 1;
        if (v21 >= 1)
        {
          v22 = 0;
          v53 = v1[OBJC_IVAR____TtC5Books22PageCurlViewController_isSample];
          v51 = OBJC_IVAR____TtC5Books22PageCurlViewController_columns;
          v52 = v55 & 0xC000000000000001;
          v48 = (v2 + 48);
          v45 = (v2 + 8);
          v46 = (v2 + 16);
          if ((v55 & 0xC000000000000001) == 0)
          {
            goto LABEL_19;
          }

LABEL_18:
          for (i = sub_1007A3784(); ; i = *(v55 + 8 * v22 + 32))
          {
            v24 = i;
            v56 = OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel;
            v25 = *&i[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel];
            if (v53)
            {
              *(v25 + OBJC_IVAR____TtC5Books17PageCurlViewModel_wide) = *&v1[v51] == 2;
            }

            *(v25 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle) = v1[v16];
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_getObjectType();

              sub_10079F814();
              swift_unknownObjectRelease();
              swift_getObjectType();
              sub_10079F6A4();
              v27 = v26;
              swift_unknownObjectRelease();
              *(v25 + 16) = v27;
            }

            v28 = OBJC_IVAR____TtC5Books24SinglePageViewController_enabled;
            v24[OBJC_IVAR____TtC5Books24SinglePageViewController_enabled] = v1[v16];
            v29 = *&v24[OBJC_IVAR____TtC5Books24SinglePageViewController_sampleHeaderChromeViewController];
            if (v29)
            {
              v30 = [v29 view];
              if (!v30)
              {
                goto LABEL_48;
              }

              v31 = v30;
              [v30 setHidden:1];
            }

            v32 = *&v24[OBJC_IVAR____TtC5Books24SinglePageViewController_titleChromeViewController];
            if (v32)
            {
              v33 = [v32 view];
              if (!v33)
              {
                goto LABEL_47;
              }

              v34 = v33;
              if ((v24[v28] & 1) != 0 && (v35 = *&v24[v56], *(v35 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle) == 1))
              {
                v36 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
                swift_beginAccess();
                v37 = v35 + v36;
                v38 = v49;
                sub_1000077D8(v37, v49, &unk_100AEB380);
                v39 = v50;
                if ((*v48)(v38, 1, v50))
                {
                  sub_100007840(v38, &unk_100AEB380);
                  v40 = 0;
                }

                else
                {
                  v41 = v47;
                  (*v46)(v47, v38, v39);
                  sub_100007840(v38, &unk_100AEB380);
                  v42 = sub_1007A0F54();
                  (*v45)(v41, v39);
                  v43 = *(v42 + 16);

                  v40 = v43 == 1;
                }
              }

              else
              {
                v40 = 1;
              }

              [v34 setHidden:v40];
            }

            else
            {
            }

            if (v54 == v22)
            {
              break;
            }

            ++v22;
            if (v52)
            {
              goto LABEL_18;
            }

LABEL_19:
            ;
          }

          goto LABEL_44;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v21 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_16;
      }
    }

LABEL_44:

    return;
  }

LABEL_49:
  __break(1u);
}

void sub_10058E040(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 bounds];

  v5 = [v1 viewControllers];
  if (v5)
  {
    v6 = v5;
    sub_10000A7C4(0, &qword_100AD7CB0);
    v7 = sub_1007A25E4();

    if (v7 >> 62)
    {
      v8 = sub_1007A38D4();
      if (v8)
      {
LABEL_5:
        v9 = __OFSUB__(v8, 1);
        v10 = v8 - 1;
        if (v9)
        {
          __break(1u);
        }

        else if ((v7 & 0xC000000000000001) == 0)
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v10 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v11 = *(v7 + 8 * v10 + 32);
LABEL_10:
            v12 = v11;

            v13 = a1;
            sub_1007A3184();

            return;
          }

          __break(1u);
          goto LABEL_18;
        }

        v11 = sub_1007A3784();
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_5;
      }
    }
  }
}

id sub_10058E1F4()
{
  v1 = OBJC_IVAR____TtC5Books22PageCurlViewController____lazy_storage___panGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC5Books22PageCurlViewController____lazy_storage___panGestureRecognizer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Books22PageCurlViewController____lazy_storage___panGestureRecognizer];
  }

  else
  {
    v4 = sub_10058E258(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10058E258(void *a1)
{
  v1 = [a1 gestureRecognizers];
  sub_10000A7C4(0, &unk_100AEA0E0);
  v2 = sub_1007A25E4();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007A3784();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;

        return v9;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v11 = objc_allocWithZone(UIPanGestureRecognizer);

  return [v11 initWithTarget:0 action:0];
}

void sub_10058E3D4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  if (qword_100AD1398 != -1)
  {
    swift_once();
  }

  v2 = byte_100B22FA8;
  v3 = objc_opt_self();
  if (v2 == 1)
  {
    v4 = [v3 systemMintColor];
    v5 = [v4 colorWithAlphaComponent:0.4];
  }

  else
  {
    v5 = [v3 clearColor];
  }

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 setBackgroundColor:v5];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = sub_10058E1F4();
      sub_10079F614();
    }

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v11 setBEPassthroughViewDelegate:v1];

      sub_10058E578();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10058E578()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_getObjectType();
  sub_1007A1384();
  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled;
  v7 = *(v0 + OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled);
  swift_getObjectType();
  sub_10079F814();
  v8 = sub_1007A0A14();
  v10 = v9;
  if (v8 == sub_1007A0A14() && v10 == v11)
  {

LABEL_18:
    swift_getObjectType();
    v19 = sub_10079F6D4() == 1;
    v20 = *(v1 + v6);
    *(v1 + v6) = v19;
    if (v20 == v19)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v13 = sub_1007A3AB4();

  if (v13)
  {
    goto LABEL_18;
  }

  v14 = *(v1 + v6);
  *(v1 + v6) = 0;
  if (v14)
  {
LABEL_19:
    sub_10058D9C4();
    v19 = *(v1 + v6);
LABEL_20:
    if (v7 == v19)
    {
      goto LABEL_10;
    }

LABEL_21:
    v21 = sub_1007A0F74();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    sub_10058FAF8(v4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_100007840(v4, &unk_100AEB380);
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (qword_100AD1888 != -1)
  {
    swift_once();
  }

  v15 = sub_10079ACE4();
  sub_100008B98(v15, qword_100AEB470);
  v16 = sub_10079ACC4();
  v17 = sub_1007A29A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Updated curl style to same value - no work to do", v18, 2u);
  }

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_10058E8E8(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  v26 = [v3 superview];

  if (!v26)
  {
    return;
  }

  [a1 bounds];
  [v26 convertRect:a1 fromCoordinateSpace:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (qword_100AD1398 != -1)
  {
    swift_once();
  }

  v13 = byte_100B22FA8;
  v14 = [v1 view];
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14;
  if (v13)
  {
    v8 = v8 + 200.0;
  }

  [v14 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v28.origin.x = v17;
  v28.origin.y = v19;
  v28.size.width = v21;
  v28.size.height = v23;
  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  if (CGRectEqualToRect(v28, v29))
  {
    goto LABEL_11;
  }

  v24 = [v1 view];
  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 setFrame:{v6, v8, v10, v12}];

LABEL_11:
}

void sub_10058EAE0()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLayoutSubviews");
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 applicationState];

  if (v2 != 2)
  {
    v3 = [v0 viewIfLoaded];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 window];

      if (v5)
      {
        sub_10058E8E8(v5);
      }
    }
  }
}

void sub_10058EBFC()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AEB818);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v74 = &ObjectType - v4;
  v70 = sub_1001F1160(&qword_100AEB820);
  __chkstk_darwin(v70);
  v68 = &ObjectType - v5;
  v64 = sub_1001F1160(&qword_100AEB828);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &ObjectType - v6;
  v65 = sub_1001F1160(&qword_100AEB830);
  __chkstk_darwin(v65);
  v63 = &ObjectType - v7;
  v71 = sub_1001F1160(&qword_100AEB838);
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v66 = &ObjectType - v8;
  v9 = sub_1001F1160(&qword_100AEB840);
  v72 = *(v9 - 8);
  v73 = v9;
  __chkstk_darwin(v9);
  v69 = &ObjectType - v10;
  v11 = sub_1001F1160(&qword_100AEB848);
  v77 = *(v11 - 8);
  __chkstk_darwin(v11);
  v76 = &ObjectType - v12;
  v13 = sub_1001F1160(&qword_100AEB850);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - v15;
  v17 = sub_1001F1160(&qword_100AEB858);
  v75 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  v20 = v0 + OBJC_IVAR____TtC5Books22PageCurlViewController_contentLayoutProviderProviding;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_isObservingChanges))
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v56 = v3;
      v57 = v2;
      v59 = *(v20 + 8);
      *(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_isObservingChanges) = 1;
      v78 = Strong;
      ObjectType = swift_getObjectType();
      v79 = sub_10079F824();
      v22 = sub_1001F1160(&qword_100AEB860);
      v60 = v11;
      v23 = v22;
      v58 = &protocol conformance descriptor for AnyPublisher<A, B>;
      v24 = sub_100005920(&qword_100AEB868, &qword_100AEB860);
      v55 = v23;
      v54 = v24;
      sub_10079BAD4();

      v25 = sub_100005920(&unk_100AEB870, &qword_100AEB850);
      sub_10079B9F4();
      (*(v14 + 8))(v16, v13);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v79 = v13;
      v80 = v25;
      swift_getOpaqueTypeConformance2();
      sub_10079BB04();

      (*(v75 + 8))(v19, v17);
      v26 = OBJC_IVAR____TtC5Books22PageCurlViewController_cancellables;
      swift_beginAccess();
      sub_10079B854();
      swift_endAccess();

      swift_getObjectType();
      v79 = sub_1007A0554();
      v49 = sub_1001F1160(&qword_100AE6460);
      v51 = sub_100005920(&unk_100AEB880, &qword_100AE6460);
      v27 = v76;
      sub_10079B9F4();

      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v29[2] = v28;
      v30 = v59;
      v29[3] = v78;
      v29[4] = v30;
      swift_unknownObjectRetain();
      v79 = v49;
      v80 = v51;
      swift_getOpaqueTypeConformance2();
      v31 = v60;
      sub_10079BB04();

      (*(v77 + 8))(v27, v31);
      swift_beginAccess();
      sub_10079B854();
      swift_endAccess();

      v77 = v1;
      v32 = v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_readingSettingsProvider;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v76 = *(v32 + 8);
        v75 = swift_getObjectType();
        v79 = sub_1007A13F4();
        sub_1001F1160(&qword_100AE8798);
        v60 = &protocol conformance descriptor for AnyPublisher<A, B>;
        sub_100005920(&qword_100AEB890, &qword_100AE8798);
        sub_100599EF0();
        v58 = v26;
        v33 = v61;
        sub_10079BAF4();

        v34 = sub_100005920(&qword_100AEB8A0, &qword_100AEB828);
        v35 = v64;
        sub_10079B9E4();
        (*(v62 + 8))(v33, v35);
        v79 = sub_10079F824();
        v36 = v55;
        v37 = v54;
        sub_10079B9E4();

        v79 = v35;
        v80 = v34;
        swift_getOpaqueTypeConformance2();
        v79 = v36;
        v80 = v37;
        swift_getOpaqueTypeConformance2();
        v38 = v66;
        sub_10079B7F4();
        v39 = sub_100005920(&qword_100AEB8A8, &qword_100AEB838);
        v40 = v71;
        v41 = v69;
        sub_10079B9F4();
        (*(v67 + 8))(v38, v40);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v79 = v40;
        v80 = v39;
        swift_getOpaqueTypeConformance2();
        v42 = v73;
        sub_10079BB04();

        (*(v72 + 8))(v41, v42);
        swift_beginAccess();
        sub_10079B854();
        swift_endAccess();

        v79 = sub_1007A1394();
        v50 = sub_1001F1160(&unk_100AEB8B0);
        v52 = sub_100005920(&unk_100AF25D0, &unk_100AEB8B0);
        v43 = v74;
        sub_10079B9F4();

        swift_allocObject();
        swift_unknownObjectWeakInit();
        v79 = v50;
        v80 = v52;
        swift_getOpaqueTypeConformance2();
        v44 = v57;
        sub_10079BB04();

        (*(v56 + 8))(v43, v44);
        swift_beginAccess();
        sub_10079B854();
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_100AD1888 != -1)
        {
          swift_once();
        }

        v45 = sub_10079ACE4();
        sub_100008B98(v45, qword_100AEB470);
        v46 = sub_10079ACC4();
        v47 = sub_1007A29B4();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Must have a reading settings provider by now", v48, 2u);
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_1007A38A4();
    __break(1u);
  }
}

uint64_t sub_10058FAF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v4 - 8);
  v6 = v58 - v5;
  v7 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v7 - 8);
  v70 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v58 - v10;
  v12 = sub_1007A0F74();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v71 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Books22PageCurlViewController_beganCurls;
  swift_beginAccess();
  v72[0] = *&v1[v15];
  sub_1001F1160(&qword_100AEB7B0);
  sub_100005920(&qword_100AEB7B8, &qword_100AEB7B0);
  if (sub_1007A28A4())
  {
    if (qword_100AD1888 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AEB470);
    v17 = v1;
    v18 = sub_10079ACC4();
    v19 = sub_1007A29B4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v72[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1000070F4(0xD000000000000029, 0x80000001008DE500, v72);
      *(v20 + 12) = 2080;
      type metadata accessor for SinglePageViewController();

      v21 = sub_1007A25F4();
      v23 = v22;

      v24 = sub_1000070F4(v21, v23, v72);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Attempting to call %s when we're currently already tracking VCs: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    v17[OBJC_IVAR____TtC5Books22PageCurlViewController_needResetAfterCurlEnd] = 1;
    v25 = OBJC_IVAR____TtC5Books22PageCurlViewController_spreadForResetAfterCurlEnd;
    swift_beginAccess();
    sub_100599DD4(a1, &v17[v25]);
    return swift_endAccess();
  }

  else
  {
    v27 = v6;
    sub_1000077D8(a1, v11, &unk_100AEB380);
    v28 = *(v13 + 48);
    if (v28(v11, 1, v12) == 1)
    {
      swift_getObjectType();
      sub_1007A0964();
      if (v28(v11, 1, v12) != 1)
      {
        sub_100007840(v11, &unk_100AEB380);
      }
    }

    else
    {
      (*(v13 + 32))(v71, v11, v12);
    }

    v29 = &v1[OBJC_IVAR____TtC5Books22PageCurlViewController_oldColumnCount];
    if (v1[OBJC_IVAR____TtC5Books22PageCurlViewController_oldColumnCount + 8] != 1 || (sub_100591800(), (v29[8] & 1) == 0))
    {
      if (*v29 != *&v1[OBJC_IVAR____TtC5Books22PageCurlViewController_columns])
      {
        sub_100591800();
      }
    }

    v30 = *&v1[OBJC_IVAR____TtC5Books22PageCurlViewController_columns];
    sub_1001F1160(&unk_100AD8160);
    v31 = (v13 + 16);
    v32 = (v13 + 56);
    v66 = v6;
    if (v30 == 1)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100811390;
      v67 = v33 + 32;
      v34 = v70;
      (*v31)(v70, v71, v12);
      v35 = *v32;
      v69 = 1;
      v35(v34, 0, 1, v12);
      sub_1007A0F14();
      LODWORD(v68) = sub_100590CCC();
      type metadata accessor for PageCurlViewModel();
      v36 = swift_allocObject();
      v37 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
      v38 = sub_10079FD44();
      (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
      v39 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
      v35(v36 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, 1, 1, v12);
      swift_unknownObjectWeakInit();
      *(v36 + 16) = 0;
      swift_beginAccess();
      sub_1002391EC(v34, v36 + v39, &unk_100AEB380);
      swift_endAccess();
      swift_beginAccess();
      v40 = v36 + v37;
      v41 = v66;
    }

    else
    {
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_100811360;
      v68 = *v31;
      v42 = v70;
      v68(v70, v71, v12);
      v63 = v13 + 16;
      v43 = *v32;
      (*v32)(v42, 0, 1, v12);
      v59 = v43;
      sub_1005913C8(v27);
      LODWORD(v67) = sub_100590CCC();
      v69 = v2[OBJC_IVAR____TtC5Books22PageCurlViewController_isSample];
      type metadata accessor for PageCurlViewModel();
      v58[1] = v13 + 56;
      v44 = swift_allocObject();
      v45 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
      v61 = sub_10079FD44();
      v46 = *(v61 - 8);
      v60 = *(v46 + 56);
      v62 = v46 + 56;
      v60(v44 + v45, 1, 1, v61);
      v65 = v13;
      v47 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
      v43(v44 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, 1, 1, v12);
      swift_unknownObjectWeakInit();
      *(v44 + 16) = 0;
      swift_beginAccess();
      sub_1002391EC(v42, v44 + v47, &unk_100AEB380);
      swift_endAccess();
      swift_beginAccess();
      v48 = v66;
      sub_1002391EC(v66, v44 + v45, &qword_100AE6A10);
      swift_endAccess();
      v49 = v71;
      swift_unknownObjectWeakAssign();
      *(v44 + OBJC_IVAR____TtC5Books17PageCurlViewModel_rightToLeft) = v67 & 1;
      *(v44 + OBJC_IVAR____TtC5Books17PageCurlViewModel_live) = 1;
      *(v44 + OBJC_IVAR____TtC5Books17PageCurlViewModel_animationState) = 0;
      v69 = (v69 & 1) == 0;
      *(v44 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showHeader) = v69;
      *(v44 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle) = 1;
      *(v44 + OBJC_IVAR____TtC5Books17PageCurlViewModel_wide) = 0;
      v50 = sub_100590790(v44);

      v51 = v64;
      *(v64 + 32) = v50;
      v67 = v51 + 40;
      v68(v42, v49, v12);
      v52 = v59;
      v59(v42, 0, 1, v12);
      sub_1005915E4(v48);
      LODWORD(v68) = sub_100590CCC();
      v36 = swift_allocObject();
      v53 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
      v60(v36 + OBJC_IVAR____TtC5Books17PageCurlViewModel_location, 1, 1, v61);
      v54 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
      v52(v36 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, 1, 1, v12);
      swift_unknownObjectWeakInit();
      *(v36 + 16) = 0;
      swift_beginAccess();
      v55 = v36 + v54;
      v13 = v65;
      sub_1002391EC(v42, v55, &unk_100AEB380);
      swift_endAccess();
      swift_beginAccess();
      v40 = v36 + v53;
      v41 = v48;
    }

    sub_1002391EC(v41, v40, &qword_100AE6A10);
    swift_endAccess();
    swift_unknownObjectWeakAssign();
    *(v36 + OBJC_IVAR____TtC5Books17PageCurlViewModel_rightToLeft) = v68 & 1;
    *(v36 + OBJC_IVAR____TtC5Books17PageCurlViewModel_live) = 1;
    *(v36 + OBJC_IVAR____TtC5Books17PageCurlViewModel_animationState) = 0;
    *(v36 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showHeader) = v69;
    *(v36 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle) = 1;
    *(v36 + OBJC_IVAR____TtC5Books17PageCurlViewModel_wide) = 0;
    v56 = sub_100590790(v36);

    *v67 = v56;

    sub_1007A3AD4();
    sub_10000A7C4(0, &qword_100AD7CB0);

    isa = sub_1007A25D4().super.isa;

    [v2 setViewControllers:isa direction:0 animated:0 completion:0];

    return (*(v13 + 8))(v71, v12);
  }
}

uint64_t sub_1005906AC(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_isSample) == 1)
  {
    *(a1 + OBJC_IVAR____TtC5Books17PageCurlViewModel_wide) = *(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_columns) == 2;
  }

  *(a1 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle) = *(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_10079F814();
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_10079F6A4();
    v5 = v4;
    result = swift_unknownObjectRelease();
    *(a1 + 16) = v5;
  }

  return result;
}

char *sub_100590790(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_1001F1160(&unk_100AEB7C0);
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  __chkstk_darwin(v7);
  v38 = &v36 - v9;
  sub_1005906AC(a1);
  sub_100303E7C(&v1[OBJC_IVAR____TtC5Books22PageCurlViewController_containerBuilder], v44);
  v10 = *&v1[OBJC_IVAR____TtC5Books22PageCurlViewController_pageBackgroundColor];
  v36 = *&v1[OBJC_IVAR____TtC5Books22PageCurlViewController_curlHappenedPublisher];
  v11 = v1[OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled];
  v12 = type metadata accessor for SinglePageViewController();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect];
  *v14 = 0u;
  v14[1] = 0u;
  v15 = OBJC_IVAR____TtC5Books24SinglePageViewController_pageBackgroundColor;
  v16 = objc_opt_self();
  v17 = v10;
  v18 = [v16 clearColor];
  *&v13[v15] = v18;
  *&v13[OBJC_IVAR____TtC5Books24SinglePageViewController_curlSubscription] = 0;
  *&v13[OBJC_IVAR____TtC5Books24SinglePageViewController_contentContainerView] = 0;
  *&v13[OBJC_IVAR____TtC5Books24SinglePageViewController_contentView] = 0;
  *&v13[OBJC_IVAR____TtC5Books24SinglePageViewController_sampleHeaderChromeViewController] = 0;
  *&v13[OBJC_IVAR____TtC5Books24SinglePageViewController_titleChromeViewController] = 0;
  sub_100303E7C(v44, &v13[OBJC_IVAR____TtC5Books24SinglePageViewController_containerBuilder]);
  v13[OBJC_IVAR____TtC5Books24SinglePageViewController_enabled] = v11;
  *&v13[v15] = v17;
  v37 = v17;

  *&v13[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel] = a1;
  v43.receiver = v13;
  v43.super_class = v12;

  v19 = objc_msgSendSuper2(&v43, "initWithNibName:bundle:", 0, 0);
  v42 = v36;
  sub_10000A7C4(0, &qword_100AD1E10);
  v20 = v19;
  v21 = sub_1007A2D74();
  v41 = v21;
  v22 = sub_1007A2D24();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  sub_1001F1160(&qword_100AEB7D0);
  sub_100005920(&unk_100AEB7D8, &qword_100AEB7D0);
  sub_100017E1C();
  v23 = v38;
  sub_10079BAB4();
  sub_100007840(v6, &qword_100AD7EB0);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100005920(&qword_100AEB7E8, &unk_100AEB7C0);
  v24 = v39;
  v25 = sub_10079BB04();

  (*(v40 + 8))(v23, v24);
  sub_10051C758(v44);
  *&v20[OBJC_IVAR____TtC5Books24SinglePageViewController_curlSubscription] = v25;

  result = [v2 view];
  if (result)
  {
    v27 = result;
    [result bounds];
    v29 = v28;
    v31 = v30;

    v32 = *&v2[OBJC_IVAR____TtC5Books22PageCurlViewController_columns];
    result = [v20 view];
    if (result)
    {
      v33 = result;
      v34 = v29 / v32;
      [result setFrame:{0.0, 0.0, v34, v31}];

      v35 = &v20[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect];
      *v35 = 0;
      *(v35 + 1) = 0;
      *(v35 + 2) = v34;
      *(v35 + 3) = v31;
      sub_10053C2BC();
      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100590CCC()
{
  v0 = sub_10079F514();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10079F9D4();
  swift_unknownObjectRelease();
  sub_10079F3B4();

  (*(v1 + 104))(v3, enum case for BookNavigationDirection.rightToLeft(_:), v0);
  sub_1005985B4(&qword_100AE0CC8, &type metadata accessor for BookNavigationDirection);
  sub_1007A2574();
  sub_1007A2574();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1007A3AB4();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_100590EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v39 = a1;
  v41 = a3;
  v4 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v4 - 8);
  v35 = &v34 - v5;
  v6 = sub_1007A0F74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v34 - v10;
  v11 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v38 = &v34 - v15;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  __chkstk_darwin(v19);
  v21 = &v34 - v20;
  v22 = OBJC_IVAR____TtC5Books22PageCurlViewController_pendingDestinationSpread;
  swift_beginAccess();
  v40 = v3;
  sub_1000077D8(v3 + v22, v18, &unk_100AEB380);
  v23 = *(v7 + 48);
  if (v23(v18, 1, v6) != 1)
  {
    v24 = *(v7 + 32);
    v25 = v37;
    v24(v37, v18, v6);
    v24(v21, v25, v6);
    v26 = *(v7 + 56);
    v26(v21, 0, 1, v6);
    v27 = v38;
    v26(v38, 1, 1, v6);
    v28 = v40;
    swift_beginAccess();
    sub_1002391EC(v27, v28 + v22, &unk_100AEB380);
    swift_endAccess();
    return sub_100599E6C(v21, v41);
  }

  v38 = v21;
  sub_100007840(v18, &unk_100AEB380);
  sub_1000077D8(v39, v13, &unk_100AEB380);
  if (v23(v13, 1, v6) != 1)
  {
    v30 = v36;
    (*(v7 + 32))(v36, v13, v6);
    v31 = v35;
    sub_1007A0F14();
    v32 = sub_10079FD44();
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    sub_100007840(v31, &qword_100AE6A10);
    if (v33 == 1)
    {
      (*(v7 + 8))(v30, v6);
      return (*(v7 + 56))(v41, 1, 1, v6);
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10079F9D4();
    swift_unknownObjectRelease();
    v21 = v38;
    sub_10079F3F4();

    (*(v7 + 8))(v30, v6);
    return sub_100599E6C(v21, v41);
  }

  sub_100007840(v13, &unk_100AEB380);
  return (*(v7 + 56))(v41, 1, 1, v6);
}

uint64_t sub_1005913C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1007A0F44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_100590CCC();
  v10 = sub_1007A0F54();
  v11 = *(v10 + 16);
  if (v9)
  {
    if (v11)
    {
      (*(v3 + 16))(v8, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * (v11 - 1), v2);

      sub_1007A0F34();
      return (*(v3 + 8))(v8, v2);
    }
  }

  else if (v11)
  {
    (*(v3 + 16))(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    sub_1007A0F34();
    return (*(v3 + 8))(v5, v2);
  }

  v13 = sub_10079FD44();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 1, 1, v13);
}

uint64_t sub_1005915E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1007A0F44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_100590CCC();
  v10 = sub_1007A0F54();
  v11 = *(v10 + 16);
  if (v9)
  {
    if (v11)
    {
      (*(v3 + 16))(v8, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      sub_1007A0F34();
      return (*(v3 + 8))(v8, v2);
    }
  }

  else if (v11)
  {
    (*(v3 + 16))(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * (v11 - 1), v2);

    sub_1007A0F34();
    return (*(v3 + 8))(v5, v2);
  }

  v13 = sub_10079FD44();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 1, 1, v13);
}

id sub_100591800()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Books22PageCurlViewController_columns;
  v3 = *&v0[OBJC_IVAR____TtC5Books22PageCurlViewController_columns];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10079F9D4();
  swift_unknownObjectRelease();
  v4 = sub_100598814(v3);

  [v1 _setSpineLocation:v4];
  [v1 setDoubleSided:v4 == 2];
  result = [v1 _invalidatePageCurl];
  v6 = &v1[OBJC_IVAR____TtC5Books22PageCurlViewController_oldColumnCount];
  *v6 = *&v1[v2];
  v6[8] = 0;
  return result;
}

BOOL sub_1005918E4(uint64_t a1)
{
  v2 = sub_1007A1C14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = (a1 == 1) ^ sub_100590CCC();
  swift_getObjectType();
  sub_1007A0544();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (v9)
  {
    sub_10079FA54();
  }

  else
  {
    sub_10079FA44();
  }

  swift_unknownObjectRelease();
  v10 = sub_1007A1C04();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  return (v10 & 1) == 0;
}

char *sub_100591ABC(char *a1, uint64_t a2)
{
  v247 = a1;
  v4 = sub_10079FD44();
  v5 = *(v4 - 8);
  v243 = v4;
  v244 = v5;
  __chkstk_darwin(v4);
  v220 = &v216 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v219 = &v216 - v8;
  __chkstk_darwin(v9);
  v229 = &v216 - v10;
  v240 = sub_1001F1160(&qword_100AE9370);
  __chkstk_darwin(v240);
  v235 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v234 = &v216 - v13;
  v14 = sub_1007A0F44();
  v238 = *(v14 - 8);
  v239 = v14;
  __chkstk_darwin(v14);
  v221 = &v216 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v223 = &v216 - v17;
  __chkstk_darwin(v18);
  v20 = &v216 - v19;
  __chkstk_darwin(v21);
  v222 = &v216 - v22;
  __chkstk_darwin(v23);
  v25 = &v216 - v24;
  v26 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v26 - 8);
  v226 = &v216 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v228 = &v216 - v29;
  __chkstk_darwin(v30);
  v233 = &v216 - v31;
  __chkstk_darwin(v32);
  v236 = &v216 - v33;
  __chkstk_darwin(v34);
  v227 = &v216 - v35;
  __chkstk_darwin(v36);
  v232 = &v216 - v37;
  __chkstk_darwin(v38);
  v40 = &v216 - v39;
  __chkstk_darwin(v41);
  v245 = &v216 - v42;
  __chkstk_darwin(v43);
  v45 = &v216 - v44;
  v46 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v46 - 8);
  v231 = &v216 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v230 = &v216 - v49;
  __chkstk_darwin(v50);
  v237 = &v216 - v51;
  __chkstk_darwin(v52);
  v54 = &v216 - v53;
  __chkstk_darwin(v55);
  v246 = &v216 - v56;
  __chkstk_darwin(v57);
  v59 = &v216 - v58;
  v60 = sub_1007A0F74();
  v61 = *(v60 - 8);
  v248 = v60;
  v249 = v61;
  __chkstk_darwin(v60);
  v225 = &v216 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v224 = &v216 - v64;
  __chkstk_darwin(v65);
  v242 = &v216 - v66;
  __chkstk_darwin(v67);
  v69 = &v216 - v68;
  v70 = sub_100590CCC() ^ (a2 == 1);
  v71 = -1;
  if ((v70 & 1) == 0)
  {
    v71 = 1;
  }

  v241 = v71;
  if (!sub_1005918E4(a2))
  {
    goto LABEL_34;
  }

  v217 = v45;
  v72 = *&v247[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel];
  v73 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
  if (*(v2 + OBJC_IVAR____TtC5Books22PageCurlViewController_columns) != 1)
  {
    v218 = v2;
    swift_beginAccess();
    sub_1000077D8(v72 + v73, v54, &unk_100AEB380);
    v77 = v248;
    v78 = v249;
    v79 = *(v249 + 48);
    if (v79(v54, 1, v248) == 1)
    {
      goto LABEL_33;
    }

    v88 = *(v78 + 32);
    v247 = (v78 + 32);
    v216 = v88;
    v88(v242, v54, v77);
    v89 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
    swift_beginAccess();
    sub_1000077D8(v72 + v89, v245, &qword_100AE6A10);
    v90 = sub_1007A0F54();
    v91 = *(v90 + 16);
    if (v70)
    {
      if (v91)
      {
        v93 = v238;
        v92 = v239;
        (*(v238 + 16))(v25, v90 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v238 + 72) * (v91 - 1), v239);

        sub_1007A0F34();
        (*(v93 + 8))(v25, v92);
        v95 = v243;
        v94 = v244;
      }

      else
      {

        v95 = v243;
        v94 = v244;
        (*(v244 + 56))(v40, 1, 1, v243);
      }

      v101 = v234;
      v102 = *(v240 + 48);
      sub_1000077D8(v245, v234, &qword_100AE6A10);
      sub_1000077D8(v40, v101 + v102, &qword_100AE6A10);
      v103 = *(v94 + 48);
      v104 = v95;
      if (v103(v101, 1, v95) == 1)
      {
        sub_100007840(v40, &qword_100AE6A10);
        v105 = v103(v101 + v102, 1, v95);
        v106 = v237;
        if (v105 == 1)
        {
          sub_100007840(v101, &qword_100AE6A10);
          v107 = v217;
LABEL_39:
          v149 = v242;
          v150 = sub_1007A0F54();
          if (*(v150 + 16))
          {
            v152 = v238;
            v151 = v239;
            v153 = v222;
            (*(v238 + 16))(v222, v150 + ((*(v152 + 80) + 32) & ~*(v152 + 80)), v239);

            v154 = v227;
            sub_1007A0F34();
            (*(v152 + 8))(v153, v151);
            v155 = v243;
            v156 = v103(v154, 1, v243);
            v157 = v244;
            v158 = v249;
            if (v156 != 1)
            {
              v159 = v219;
              (*(v244 + 32))(v219, v154, v155);
              v160 = v246;
              v161 = v248;
              (*(v158 + 16))(v246, v149, v248);
              v247 = *(v158 + 56);
              (v247)(v160, 0, 1, v161);
              (*(v157 + 16))(v107, v159, v155);
              v162 = *(v157 + 56);
              v162(v107, 0, 1, v155);
              v163 = v155;
              v82 = sub_100590CCC();
              (*(v157 + 8))(v159, v163);
              sub_100007840(v245, &qword_100AE6A10);
              (*(v158 + 8))(v149, v161);
              type metadata accessor for PageCurlViewModel();
              v83 = swift_allocObject();
              v164 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
              v165 = v163;
              v86 = 1;
              v162((v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_location), 1, 1, v165);
              v166 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
              (v247)(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, 1, 1, v161);
              swift_unknownObjectWeakInit();
              *(v83 + 16) = 0;
              swift_beginAccess();
              sub_1002391EC(v246, v83 + v166, &unk_100AEB380);
              swift_endAccess();
              swift_beginAccess();
              v167 = v83 + v164;
              v168 = v217;
LABEL_46:
              sub_1002391EC(v168, v167, &qword_100AE6A10);
              swift_endAccess();
LABEL_55:
              v87 = 0;
              goto LABEL_56;
            }
          }

          else
          {

            v155 = v243;
            v157 = v244;
            v154 = v227;
            (*(v244 + 56))(v227, 1, 1, v243);
            v158 = v249;
          }

          sub_100007840(v154, &qword_100AE6A10);
          v193 = v246;
          v194 = v248;
          (*(v158 + 16))(v246, v149, v248);
          v195 = *(v158 + 56);
          v195(v193, 0, 1, v194);
          v196 = *(v157 + 56);
          v196(v107, 1, 1, v155);
          v197 = v158;
          v198 = v155;
          v82 = sub_100590CCC();
          sub_100007840(v245, &qword_100AE6A10);
          (*(v197 + 8))(v149, v194);
          type metadata accessor for PageCurlViewModel();
          v83 = swift_allocObject();
          v199 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
          v196((v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_location), 1, 1, v198);
          v200 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
          v195(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, 1, 1, v194);
          swift_unknownObjectWeakInit();
          *(v83 + 16) = 0;
          swift_beginAccess();
          v201 = v83 + v200;
          v202 = v193;
LABEL_51:
          sub_1002391EC(v202, v201, &unk_100AEB380);
          swift_endAccess();
          swift_beginAccess();
          v133 = v83 + v199;
          v134 = v217;
          goto LABEL_54;
        }
      }

      else
      {
        v108 = v232;
        sub_1000077D8(v101, v232, &qword_100AE6A10);
        if (v103(v101 + v102, 1, v95) != 1)
        {
          v144 = v244;
          v145 = v101 + v102;
          v146 = v229;
          (*(v244 + 32))(v229, v145, v104);
          sub_1005985B4(&unk_100AEB800, &type metadata accessor for PageLocation);
          v147 = v104;
          LODWORD(v241) = sub_1007A2124();
          v148 = *(v144 + 8);
          v148(v146, v147);
          sub_100007840(v40, &qword_100AE6A10);
          v148(v232, v147);
          sub_100007840(v101, &qword_100AE6A10);
          v107 = v217;
          v106 = v237;
          if (v241)
          {
            goto LABEL_39;
          }

          goto LABEL_22;
        }

        sub_100007840(v40, &qword_100AE6A10);
        (*(v244 + 8))(v108, v95);
        v106 = v237;
      }

      sub_100007840(v101, &qword_100AE9370);
LABEL_22:
      v110 = v248;
      v109 = v249;
      v111 = *(v249 + 16);
      v112 = v246;
      v111(v246, v242, v248);
      v241 = *(v109 + 56);
      (v241)(v112, 0, 1, v110);
      sub_100590EEC(v112, -1, v106);
      v113 = v237;
      sub_100007840(v112, &unk_100AEB380);
      if (v79(v113, 1, v110) != 1)
      {
        v126 = v224;
        v216(v224, v113, v110);
        v111(v112, v126, v110);
        v127 = v241;
        (v241)(v112, 0, 1, v110);
        v128 = v217;
        sub_1007A0F04();
        v82 = sub_100590CCC();
        v129 = *(v109 + 8);
        v129(v126, v110);
        v130 = v128;
        sub_100007840(v245, &qword_100AE6A10);
        v129(v242, v110);
        type metadata accessor for PageCurlViewModel();
        v83 = swift_allocObject();
        v131 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
        (*(v244 + 56))(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_location, 1, 1, v243);
        v132 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
        v127(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, 1, 1, v110);
        swift_unknownObjectWeakInit();
        *(v83 + 16) = 0;
        swift_beginAccess();
        sub_1002391EC(v112, v83 + v132, &unk_100AEB380);
        swift_endAccess();
        swift_beginAccess();
        v133 = v83 + v131;
        v134 = v130;
LABEL_54:
        sub_1002391EC(v134, v133, &qword_100AE6A10);
        swift_endAccess();
        v86 = 0;
        goto LABEL_55;
      }

      v114 = v113;
LABEL_32:
      sub_100007840(v245, &qword_100AE6A10);
      (*(v249 + 8))(v242, v110);
      v54 = v114;
      goto LABEL_33;
    }

    if (v91)
    {
      v97 = v238;
      v96 = v239;
      (*(v238 + 16))(v20, v90 + ((*(v97 + 80) + 32) & ~*(v97 + 80)), v239);

      v98 = v236;
      sub_1007A0F34();
      (*(v97 + 8))(v20, v96);
      v99 = v243;
      v100 = v244;
    }

    else
    {

      v99 = v243;
      v100 = v244;
      v98 = v236;
      (*(v244 + 56))(v236, 1, 1, v243);
    }

    v115 = v235;
    v116 = *(v240 + 48);
    sub_1000077D8(v245, v235, &qword_100AE6A10);
    sub_1000077D8(v98, v115 + v116, &qword_100AE6A10);
    v117 = *(v100 + 48);
    if (v117(v115, 1, v99) == 1)
    {
      sub_100007840(v98, &qword_100AE6A10);
      if (v117(v115 + v116, 1, v99) == 1)
      {
        sub_100007840(v115, &qword_100AE6A10);
LABEL_43:
        v172 = v242;
        v173 = sub_1007A0F54();
        v174 = *(v173 + 16);
        if (v174)
        {
          v176 = v238;
          v175 = v239;
          v177 = v223;
          (*(v238 + 16))(v223, v173 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * (v174 - 1), v239);

          v178 = v228;
          sub_1007A0F34();
          (*(v176 + 8))(v177, v175);
          v179 = v243;
          v180 = v117(v178, 1, v243);
          v181 = v244;
          v182 = v249;
          if (v180 != 1)
          {
            v183 = v220;
            (*(v244 + 32))(v220, v178, v179);
            v184 = v172;
            v185 = v246;
            v186 = v248;
            (*(v182 + 16))(v246, v172, v248);
            v247 = *(v182 + 56);
            (v247)(v185, 0, 1, v186);
            v187 = v217;
            (*(v181 + 16))(v217, v183, v179);
            v188 = *(v181 + 56);
            v188(v187, 0, 1, v179);
            v189 = v179;
            v82 = sub_100590CCC();
            (*(v181 + 8))(v183, v189);
            sub_100007840(v245, &qword_100AE6A10);
            (*(v182 + 8))(v184, v186);
            type metadata accessor for PageCurlViewModel();
            v83 = swift_allocObject();
            v190 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
            v191 = v189;
            v86 = 1;
            v188((v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_location), 1, 1, v191);
            v192 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
            (v247)(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, 1, 1, v186);
            swift_unknownObjectWeakInit();
            *(v83 + 16) = 0;
            swift_beginAccess();
            sub_1002391EC(v246, v83 + v192, &unk_100AEB380);
            swift_endAccess();
            swift_beginAccess();
            v167 = v83 + v190;
            v168 = v217;
            goto LABEL_46;
          }
        }

        else
        {

          v179 = v243;
          v181 = v244;
          v178 = v228;
          (*(v244 + 56))(v228, 1, 1, v243);
          v182 = v249;
        }

        sub_100007840(v178, &qword_100AE6A10);
        v203 = v246;
        v204 = v248;
        (*(v182 + 16))(v246, v172, v248);
        v205 = *(v182 + 56);
        v205(v203, 0, 1, v204);
        v206 = *(v181 + 56);
        v206(v217, 1, 1, v179);
        v207 = v182;
        v208 = v179;
        v82 = sub_100590CCC();
        sub_100007840(v245, &qword_100AE6A10);
        (*(v207 + 8))(v172, v204);
        type metadata accessor for PageCurlViewModel();
        v83 = swift_allocObject();
        v199 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
        v206((v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_location), 1, 1, v208);
        v209 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
        v205(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, 1, 1, v204);
        swift_unknownObjectWeakInit();
        *(v83 + 16) = 0;
        swift_beginAccess();
        v201 = v83 + v209;
        v202 = v203;
        goto LABEL_51;
      }
    }

    else
    {
      v118 = v233;
      sub_1000077D8(v115, v233, &qword_100AE6A10);
      if (v117(v115 + v116, 1, v99) != 1)
      {
        v169 = v115 + v116;
        v170 = v229;
        (*(v100 + 32))(v229, v169, v99);
        sub_1005985B4(&unk_100AEB800, &type metadata accessor for PageLocation);
        LODWORD(v240) = sub_1007A2124();
        v171 = *(v100 + 8);
        v171(v170, v99);
        sub_100007840(v236, &qword_100AE6A10);
        v171(v233, v99);
        sub_100007840(v115, &qword_100AE6A10);
        if (v240)
        {
          goto LABEL_43;
        }

LABEL_31:
        v110 = v248;
        v119 = v249;
        v120 = *(v249 + 16);
        v121 = v246;
        v120(v246, v242, v248);
        v122 = *(v119 + 56);
        v122(v121, 0, 1, v110);
        v123 = v230;
        sub_100590EEC(v121, v241, v230);
        v124 = v121;
        v114 = v123;
        sub_100007840(v124, &unk_100AEB380);
        if (v79(v123, 1, v110) != 1)
        {
          v135 = v225;
          v216(v225, v123, v110);
          v136 = v231;
          v120(v231, v135, v110);
          v122(v136, 0, 1, v110);
          v137 = sub_1007A0F54();
          if (*(v137 + 16))
          {
            v139 = v238;
            v138 = v239;
            v140 = v221;
            (*(v238 + 16))(v221, v137 + ((*(v139 + 80) + 32) & ~*(v139 + 80)), v239);

            v141 = v226;
            sub_1007A0F34();
            (*(v139 + 8))(v140, v138);
            v143 = v243;
            v142 = v244;
          }

          else
          {

            v143 = v243;
            v142 = v244;
            v141 = v226;
            (*(v244 + 56))(v226, 1, 1, v243);
          }

          v210 = v249;
          v82 = sub_100590CCC();
          v211 = *(v210 + 8);
          v212 = v248;
          v211(v135, v248);
          sub_100007840(v245, &qword_100AE6A10);
          v211(v242, v212);
          type metadata accessor for PageCurlViewModel();
          v83 = swift_allocObject();
          v213 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
          (*(v142 + 56))(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_location, 1, 1, v143);
          v214 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
          v122(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, 1, 1, v212);
          swift_unknownObjectWeakInit();
          *(v83 + 16) = 0;
          swift_beginAccess();
          sub_1002391EC(v231, v83 + v214, &unk_100AEB380);
          swift_endAccess();
          swift_beginAccess();
          v133 = v83 + v213;
          v134 = v141;
          goto LABEL_54;
        }

        goto LABEL_32;
      }

      sub_100007840(v236, &qword_100AE6A10);
      (*(v100 + 8))(v118, v99);
    }

    sub_100007840(v115, &qword_100AE9370);
    goto LABEL_31;
  }

  swift_beginAccess();
  v74 = v246;
  sub_1000077D8(v72 + v73, v246, &unk_100AEB380);
  sub_100590EEC(v74, v241, v59);
  sub_100007840(v74, &unk_100AEB380);
  v76 = v248;
  v75 = v249;
  if ((*(v249 + 48))(v59, 1, v248) == 1)
  {
    v54 = v59;
LABEL_33:
    sub_100007840(v54, &unk_100AEB380);
LABEL_34:
    swift_getObjectType();
    sub_1007A0944();
    return 0;
  }

  (*(v75 + 32))(v69, v59, v76);
  (*(v75 + 16))(v74, v69, v76);
  v80 = *(v75 + 56);
  v80(v74, 0, 1, v76);
  v81 = v217;
  sub_1007A0F14();
  v218 = v2;
  v82 = sub_100590CCC();
  (*(v75 + 8))(v69, v76);
  type metadata accessor for PageCurlViewModel();
  v83 = swift_allocObject();
  v84 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
  (*(v244 + 56))(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_location, 1, 1, v243);
  v85 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
  v80(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, 1, 1, v76);
  v86 = 1;
  swift_unknownObjectWeakInit();
  *(v83 + 16) = 0;
  swift_beginAccess();
  sub_1002391EC(v74, v83 + v85, &unk_100AEB380);
  swift_endAccess();
  swift_beginAccess();
  sub_1002391EC(v81, v83 + v84, &qword_100AE6A10);
  swift_endAccess();
  v87 = 1;
LABEL_56:
  swift_unknownObjectWeakAssign();
  *(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_rightToLeft) = v82 & 1;
  *(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_live) = v86;
  *(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_animationState) = 0;
  *(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showHeader) = v87;
  *(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle) = 1;
  *(v83 + OBJC_IVAR____TtC5Books17PageCurlViewModel_wide) = 0;
  v215 = sub_100590790(v83);

  return v215;
}

id sub_100593A64(char *a1)
{
  v2 = v1;
  v4 = sub_1007A0F74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v8 - 8);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v85 - v13;
  if ([v2 be_areCurlAnimationsInFlightOrPending])
  {
    v15 = [objc_allocWithZone(UIView) init];
    result = [v2 view];
    if (result)
    {
      v17 = result;
      [result bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      [v15 setFrame:{v19, v21, v23, v25}];
      if (qword_100AD1398 != -1)
      {
        swift_once();
      }

      if (byte_100B22FA8 == 1)
      {
LABEL_13:
        v41 = [objc_opt_self() redColor];
        [v15 setBackgroundColor:v41];

        return v15;
      }

LABEL_30:
      [v15 setBackgroundColor:*&v2[OBJC_IVAR____TtC5Books22PageCurlViewController_pageBackgroundColor]];
      return v15;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v86 = v5;
  v87 = v4;
  v85 = a1;
  v26 = *&a1[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel];
  v27 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
  swift_beginAccess();
  sub_1000077D8(v26 + v27, v14, &qword_100AE6A10);
  v28 = sub_10079FD44();
  v29 = *(*(v28 - 8) + 48);
  v30 = v29(v14, 1, v28);
  sub_100007840(v14, &qword_100AE6A10);
  if (v30 == 1 || (swift_getObjectType(), sub_1007A0964(), sub_1007A0F14(), (*(v86 + 8))(v7, v87), v31 = v29(v10, 1, v28), sub_100007840(v10, &qword_100AE6A10), v31 == 1))
  {
    v15 = [objc_allocWithZone(UIView) init];
    result = [v2 view];
    if (result)
    {
      v32 = result;
      [result bounds];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      [v15 setFrame:{v34, v36, v38, v40}];
      if (qword_100AD1398 != -1)
      {
        swift_once();
      }

      if (byte_100B22FA8 == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
    }

    goto LABEL_48;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v15 = [objc_allocWithZone(UIView) init];
    result = [v2 view];
    if (result)
    {
      v62 = result;
      [result bounds];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;

      [v15 setFrame:{v64, v66, v68, v70}];
      if (qword_100AD1398 != -1)
      {
        swift_once();
      }

      if (byte_100B22FA8 == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
    }

    goto LABEL_51;
  }

  v43 = Strong;
  result = [Strong view];
  if (!result)
  {
    goto LABEL_49;
  }

  v44 = result;
  v45 = [result superview];

  if (v45)
  {
    v46 = [v45 superview];

    if (v46)
    {
      sub_10058E040(v85);
      v48 = v47;
      v50 = v49;
      [v46 frame];
      if (*&v2[OBJC_IVAR____TtC5Books22PageCurlViewController_columns] == 1)
      {
        v51 = [v46 snapshotViewAfterScreenUpdates:0];
      }

      else
      {
        v51 = [v46 resizableSnapshotViewFromRect:0 afterScreenUpdates:v48 withCapInsets:{0.0, v50}];
      }

      v71 = v51;
      if (v71)
      {
        v15 = v71;
LABEL_46:

        return v15;
      }

      if (qword_100AD1888 != -1)
      {
        swift_once();
      }

      v72 = sub_10079ACE4();
      sub_100008B98(v72, qword_100AEB470);
      v73 = sub_10079ACC4();
      v74 = sub_1007A29B4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Producing placeholder view for no location", v75, 2u);
      }

      v15 = [objc_allocWithZone(UIView) init];
      result = [v2 view];
      if (!result)
      {
        goto LABEL_52;
      }

      v76 = result;
      [result bounds];
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v84 = v83;

      [v15 setFrame:{v78, v80, v82, v84}];
      if (qword_100AD1398 != -1)
      {
        swift_once();
      }

      if (byte_100B22FA8 != 1)
      {
        [v15 setBackgroundColor:*&v2[OBJC_IVAR____TtC5Books22PageCurlViewController_pageBackgroundColor]];
        goto LABEL_46;
      }

      v61 = [objc_opt_self() redColor];
      [v15 setBackgroundColor:v61];

LABEL_25:
      return v15;
    }
  }

  v15 = [objc_allocWithZone(UIView) init];
  result = [v2 view];
  if (result)
  {
    v52 = result;
    [result bounds];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;

    [v15 setFrame:{v54, v56, v58, v60}];
    if (qword_100AD1398 != -1)
    {
      swift_once();
    }

    if (byte_100B22FA8 != 1)
    {
      [v15 setBackgroundColor:*&v2[OBJC_IVAR____TtC5Books22PageCurlViewController_pageBackgroundColor]];

      return v15;
    }

    v61 = [objc_opt_self() redColor];
    [v15 setBackgroundColor:v61];
    goto LABEL_25;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void sub_100594520(char *a1)
{
  v3 = sub_1001F1160(&qword_100AE6A10);
  v4 = __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = [a1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 setAlpha:1.0];

  v9 = OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel;
  *(*&a1[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel] + OBJC_IVAR____TtC5Books17PageCurlViewModel_live) = 0;
  v10 = sub_100593A64(a1);
  [v10 bounds];
  v39 = [objc_allocWithZone(UIView) initWithFrame:{v11, v12, v13, v14}];
  v15 = [objc_opt_self() clearColor];
  [v39 setBackgroundColor:v15];

  [v39 addSubview:v10];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;

  v22 = v19 / *&v1[OBJC_IVAR____TtC5Books22PageCurlViewController_columns];
  swift_unknownObjectWeakAssign();
  v23 = &a1[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = v22;
  *(v23 + 3) = v21;
  sub_10053C2BC();
  sub_10053D46C();
  if (qword_100AD1888 != -1)
  {
    swift_once();
  }

  v24 = sub_10079ACE4();
  sub_100008B98(v24, qword_100AEB470);
  v25 = a1;
  v26 = v10;
  v27 = sub_10079ACC4();
  v28 = sub_1007A29A4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136315394;
    v31 = *&a1[v9];
    v32 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
    swift_beginAccess();
    sub_1000077D8(v31 + v32, v6, &qword_100AE6A10);
    v33 = sub_1007A22E4();
    v35 = sub_1000070F4(v33, v34, &v40);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2048;
    [v26 frame];
    *(v29 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "willTransition for vc %s ->show snapshot of width %f", v29, 0x16u);
    sub_1000074E0(v30);
  }

  else
  {

    v37 = v39;
  }
}

void sub_100594B28()
{
  sub_100594C98(319, &qword_100AD6318, &type metadata accessor for SpreadPaginationEntity, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100594C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_100594CFC()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10058E1F4();
  v6 = [v0 view];
  [v5 velocityInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = fabs(v8);
  v12 = v11 >= 300.0 || v11 < 10.0;
  v13 = 0.25;
  if (!v12)
  {
    v13 = 0.15;
  }

  if (v11 > 1.79769313e308 || v11 < 300.0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0.1;
  }

  v16 = exp2(v11 / -900.0);
  if (qword_100AD1888 != -1)
  {
    swift_once();
  }

  sub_100008B98(v1, qword_100AEB470);
  if (qword_100AD1398 != -1)
  {
    swift_once();
  }

  sub_10079ACA4();
  v17 = sub_10079ACC4();
  v18 = sub_1007A2994();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = v5;
    v20 = v19;
    v37 = swift_slowAlloc();
    *v20 = 136315906;
    sub_1001F1160(&unk_100AD5090);
    v21 = swift_allocObject();
    v34 = xmmword_10080B690;
    *(v21 + 16) = xmmword_10080B690;
    *(v21 + 56) = &type metadata for CGFloat;
    v22 = sub_100343784();
    *(v21 + 64) = v22;
    *(v21 + 32) = v8;
    v23 = sub_1007A2284();
    v25 = sub_1000070F4(v23, v24, &v37);
    v35 = v1;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = swift_allocObject();
    *(v27 + 16) = v34;
    *(v27 + 56) = &type metadata for CGFloat;
    *(v27 + 64) = v22;
    *(v27 + 32) = v10;
    v28 = sub_1007A2284();
    v30 = sub_1000070F4(v28, v29, &v37);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v15;
    *(v20 + 32) = 2048;
    *(v20 + 34) = v16 * 0.15 + 0.1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Curl velocity is %s, %s. Duration chosen by case: %f. vard: %f", v20, 0x2Au);
    swift_arrayDestroy();

    v5 = v36;

    (*(v2 + 8))(v4, v35);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  sub_10079FCE4();
  sub_10079FCC4();
  v32 = v31;

  return v32;
}

char *sub_100595150(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  type metadata accessor for SinglePageViewController();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a4;
    v11 = a1;
    v12 = sub_100591ABC(v9, a5);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

char *sub_1005951E0(void *a1, unint64_t a2)
{
  v3 = v2;
  v124 = a1;
  v5 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v5 - 8);
  v114 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v116 = &v99 - v8;
  v9 = sub_10079FD44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v113 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v117 = &v99 - v13;
  v14 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v14 - 8);
  v125 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = sub_1007A0F74();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v118 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v99 - v23;
  v122 = sub_1007A1A14();
  v25 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1005AB634(a2);
  if (!result)
  {
    return result;
  }

  v28 = result;
  v29 = [v3 viewControllers];
  if (!v29 || (v30 = v29, v111 = v10, v121 = v24, v115 = v20, sub_10000A7C4(0, &qword_100AD7CB0), v31 = sub_1007A25E4(), v30, v32 = sub_1005AB634(v31), , !v32))
  {
  }

  v33 = *&v3[OBJC_IVAR____TtC5Books22PageCurlViewController_curlCompletedPublisher];
  v34 = *(v25 + 104);
  v35 = v119;
  v105 = enum case for PageTransitionCompletionState.unknown(_:);
  v36 = v122;
  v106 = v25 + 104;
  v104 = v34;
  v34(v119);
  v107 = v33;
  sub_10079B8C4();
  v37 = *(v25 + 8);
  v108 = v25 + 8;
  v103 = v37;
  v37(v35, v36);
  v128 = v28;

  sub_100484E24(v38);
  v39 = v128;
  v127[0] = v128;

  sub_10079B8C4();

  v40 = *&v3[OBJC_IVAR____TtC5Books22PageCurlViewController_state];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v127[0]) = 1;

  v99 = v40;
  sub_10079B9B4();
  v110 = v39;
  sub_100598DAC(v124, v39);
  if (qword_100AD1888 != -1)
  {
    swift_once();
  }

  v41 = sub_10079ACE4();
  sub_100008B98(v41, qword_100AEB470);

  v42 = sub_10079ACC4();
  v43 = sub_1007A29A4();

  v44 = os_log_type_enabled(v42, v43);
  v112 = v19;
  v123 = v28;
  v45 = v125;
  v109 = v9;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v127[0] = v47;
    *v46 = 136315138;
    type metadata accessor for SinglePageViewController();
    v48 = sub_1007A25F4();
    v50 = sub_1000070F4(v48, v49, v127);

    *(v46 + 4) = v50;
    v19 = v112;
    _os_log_impl(&_mh_execute_header, v42, v43, "willTransition to %s", v46, 0xCu);
    sub_1000074E0(v47);
    v28 = v123;
  }

  v51 = *&v3[OBJC_IVAR____TtC5Books22PageCurlViewController_locationController];
  v52 = *&v3[OBJC_IVAR____TtC5Books22PageCurlViewController_locationController + 8];
  ObjectType = swift_getObjectType();
  v54 = v121;
  v102 = v51;
  v101 = ObjectType;
  v100 = v52;
  sub_1007A0964();
  v55 = v115;
  (*(v115 + 16))(v18, v54, v19);
  Strong = *(v55 + 56);
  Strong(v18, 0, 1, v19);
  v57 = OBJC_IVAR____TtC5Books22PageCurlViewController_spreadBeforeCurl;
  swift_beginAccess();
  sub_1002391EC(v18, &v3[v57], &unk_100AEB380);
  swift_endAccess();
  if (qword_100AD1398 != -1)
  {
    swift_once();
  }

  if (byte_100B22FA8 == 1)
  {
    v127[0] = 0;
    v127[1] = 0xE000000000000000;
    sub_10058D29C(v32);
  }

  if (v32 >> 62)
  {
    v58 = sub_1007A38D4();
    if (v58)
    {
      goto LABEL_14;
    }

LABEL_27:

    goto LABEL_28;
  }

  v58 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v58)
  {
    goto LABEL_27;
  }

LABEL_14:
  v127[0] = _swiftEmptyArrayStorage;
  sub_1003BD200(0, v58 & ~(v58 >> 63), 0);
  if (v58 < 0)
  {
    __break(1u);
    goto LABEL_71;
  }

  v59 = 0;
  v60 = v127[0];
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v61 = sub_1007A3784();
    }

    else
    {
      v61 = *(v32 + 8 * v59 + 32);
    }

    v62 = v61;
    sub_100594520(v61);

    v127[0] = v60;
    v64 = *(v60 + 16);
    v63 = *(v60 + 24);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      sub_1003BD200((v63 > 1), v64 + 1, 1);
      v60 = v127[0];
    }

    ++v59;
    *(v60 + 16) = v65;
  }

  while (v58 != v59);

  v28 = v123;
  v45 = v125;
LABEL_28:
  v66 = v28 & 0xFFFFFFFFFFFFFF8;
  v32 = v111;
  if (v28 >> 62)
  {
    goto LABEL_66;
  }

  v125 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v125)
  {
LABEL_67:
    Strong(v45, 1, 1, v112);
    sub_100007840(v45, &unk_100AEB380);
LABEL_68:

    (*(v115 + 8))(v121, v112);
  }

  while (1)
  {
    v124 = (v28 & 0xC000000000000001);
    v120 = v66;
    if ((v28 & 0xC000000000000001) != 0)
    {
LABEL_71:
      v69 = sub_1007A3784();
      v67 = v112;
      v68 = v115;
      Strong = v109;
      goto LABEL_33;
    }

    v67 = v112;
    v68 = v115;
    Strong = v109;
    if (!*(v66 + 16))
    {
      break;
    }

    v69 = *(v28 + 32);
LABEL_33:
    v70 = *&v69[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel];

    v66 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
    swift_beginAccess();
    sub_1000077D8(v70 + v66, v45, &unk_100AEB380);

    if ((*(v68 + 48))(v45, 1, v67) == 1)
    {
      sub_100007840(v45, &unk_100AEB380);
    }

    else
    {
      v71 = v118;
      (*(v68 + 32))(v118, v45, v67);
      sub_1005985B4(&qword_100AEB790, &type metadata accessor for SpreadPaginationEntity);
      v66 = v67;
      if (sub_1007A2124())
      {
        (*(v68 + 8))(v71, v67);
      }

      else
      {
        v72 = v116;
        sub_1007A0F14();
        v73 = v72;
        v74 = *(v32 + 48);
        if (v74(v73, 1, Strong) == 1)
        {
          sub_100007840(v73, &qword_100AE6A10);
        }

        else
        {
          v116 = *(v32 + 32);
          (v116)(v117, v73, Strong);
          v75 = v114;
          sub_1007A0F14();
          v76 = v75;
          if (v74(v75, 1, Strong) == 1)
          {
            (*(v32 + 8))(v117, Strong);
            sub_100007840(v75, &qword_100AE6A10);
            v67 = v112;
          }

          else
          {
            v77 = v113;
            (v116)(v113, v76, Strong);
            v78 = sub_10079FD14();
            if (sub_10079FD14() >= v78)
            {
              v80 = sub_10079FCF4();
              v79 = v80 >= sub_10079FCF4();
            }

            else
            {
              v79 = 0;
            }

            v67 = v112;
            swift_getKeyPath();
            swift_getKeyPath();
            v126 = v79;

            sub_10079B9B4();
            v81 = *(v32 + 8);
            v81(v77, Strong);
            v81(v117, Strong);
          }
        }

        v45 = v100;
        v82 = v119;
        v83 = v122;
        v104(v119, v105, v122);
        sub_10079B8C4();
        v103(v82, v83);
        v84 = v118;
        v66 = v102;
        sub_1007A09A4();
        (*(v68 + 8))(v84, v67);
      }
    }

    v85 = 0;
    v86 = OBJC_IVAR____TtC5Books22PageCurlViewController_columns;
    v122 = OBJC_IVAR____TtC5Books22PageCurlViewController_liveContentViewController;
    v32 = OBJC_IVAR____TtC5Books22PageCurlViewController_beganCurls;
    while (1)
    {
      if (v124)
      {
        v87 = sub_1007A3784();
      }

      else
      {
        if (v85 >= *(v120 + 16))
        {
          goto LABEL_65;
        }

        v87 = *(v28 + 8 * v85 + 32);
      }

      v88 = v87;
      v89 = (v85 + 1);
      if (__OFADD__(v85, 1))
      {
        break;
      }

      v45 = OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel;
      *(*&v87[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel] + OBJC_IVAR____TtC5Books17PageCurlViewModel_live) = 1;
      if (*&v3[v86] == 1 && (sub_10053D8E4() & 1) != 0)
      {
        swift_unknownObjectWeakAssign();
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();

        if (Strong)
        {
          v90 = sub_10079F5A4();
        }

        else
        {
          v90 = 0;
        }

        swift_unknownObjectWeakAssign();

        v28 = v123;
      }

      *(*&v88[v45] + OBJC_IVAR____TtC5Books17PageCurlViewModel_animationState) = 2;
      result = [v3 view];
      if (!result)
      {
        goto LABEL_73;
      }

      v91 = result;
      [result bounds];
      v93 = v92;
      v95 = v94;

      v96 = *&v3[v86];
      v97 = &v88[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect];
      *v97 = 0;
      *(v97 + 1) = 0;
      *(v97 + 2) = v93 / v96;
      *(v97 + 3) = v95;
      sub_10053C2BC();
      sub_10053CD30();
      sub_10053D46C();
      swift_beginAccess();
      v98 = v88;
      sub_1007A25C4();
      if (*((*&v3[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v45 = *((*&v3[v32] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1007A2614();
      }

      v66 = &v3[v32];
      sub_1007A2644();
      swift_endAccess();

      ++v85;
      if (v89 == v125)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    result = sub_1007A38D4();
    v125 = result;
    if (!result)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_100596238()
{
  v0 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getObjectType();
    v5 = sub_10079F684();
    v6 = OBJC_IVAR____TtC5Books22PageCurlViewController_columns;
    if (v5 != *&v4[OBJC_IVAR____TtC5Books22PageCurlViewController_columns])
    {
      v7 = v5;
      if (([v4 _isInterfaceRotating] & 1) == 0)
      {
        *&v4[v6] = v7;
      }
    }

    v8 = sub_1007A0F74();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    sub_10058FAF8(v2);

    return sub_100007840(v2, &unk_100AEB380);
  }

  return result;
}

void sub_100596388(uint64_t a1)
{
  v27 = a1;
  v1 = sub_10079FD44();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A0F74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v25 = v7;
    v19 = OBJC_IVAR____TtC5Books22PageCurlViewController_spreadBeforeCurl;
    swift_beginAccess();
    sub_1000077D8(v18 + v19, v16, &unk_100AEB380);
    v26 = v5;
    v20 = *(v5 + 48);
    if (v20(v16, 1, v4) == 1)
    {
      sub_100007840(v16, &unk_100AEB380);
      swift_getObjectType();
      sub_10079F814();
      swift_getObjectType();
      v21 = sub_10079F6D4();
      swift_unknownObjectRelease();
      if (v21 == 1)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_10079F9D4();
        swift_unknownObjectRelease();
        sub_1007A1B64();
        sub_10079F3D4();

        (*(v28 + 8))(v3, v29);
        if (v20(v13, 1, v4) == 1)
        {

          sub_100007840(v13, &unk_100AEB380);
        }

        else
        {
          v23 = v25;
          v22 = v26;
          (*(v26 + 32))(v25, v13, v4);
          (*(v22 + 16))(v10, v23, v4);
          (*(v22 + 56))(v10, 0, 1, v4);
          sub_10058FAF8(v10);

          sub_100007840(v10, &unk_100AEB380);
          (*(v22 + 8))(v23, v4);
        }
      }

      else
      {
      }
    }

    else
    {

      sub_100007840(v16, &unk_100AEB380);
    }
  }
}

void sub_1005967BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10058E578();
  }
}

void sub_100596810()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10079EE14();
    v3 = *&v1[OBJC_IVAR____TtC5Books22PageCurlViewController_pageBackgroundColor];
    *&v1[OBJC_IVAR____TtC5Books22PageCurlViewController_pageBackgroundColor] = v2;
    v4 = v2;

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 viewIfLoaded];

      if (v7)
      {
        v8 = [v7 traitCollection];

        if (v8)
        {
          v9 = [objc_opt_self() shared];
          v10 = [v4 resolvedColorWithTraitCollection:v8];
          [v9 setBaseColor:v10];
        }
      }
    }

    v11 = [v1 viewControllers];
    if (!v11 || (v12 = v11, sub_10000A7C4(0, &qword_100AD7CB0), v13 = sub_1007A25E4(), v12, v14 = sub_1005AB634(v13), , !v14))
    {

      return;
    }

    if (v14 >> 62)
    {
      v15 = sub_1007A38D4();
      if (v15)
      {
LABEL_10:
        if (v15 < 1)
        {
          __break(1u);
        }

        else if ((v14 & 0xC000000000000001) != 0)
        {
          v16 = 0;
          do
          {
            v17 = sub_1007A3784();
            ++v16;
            v18 = *(v17 + OBJC_IVAR____TtC5Books24SinglePageViewController_pageBackgroundColor);
            *(v17 + OBJC_IVAR____TtC5Books24SinglePageViewController_pageBackgroundColor) = v4;
            v19 = v4;
            swift_unknownObjectRelease();
          }

          while (v15 != v16);
        }

        else
        {
          v20 = 32;
          do
          {
            v21 = *(v14 + v20);
            v22 = *(v21 + OBJC_IVAR____TtC5Books24SinglePageViewController_pageBackgroundColor);
            *(v21 + OBJC_IVAR____TtC5Books24SinglePageViewController_pageBackgroundColor) = v4;
            v23 = v4;

            v20 += 8;
            --v15;
          }

          while (v15);
        }

        return;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_100596ACC(void *a1, uint64_t a2)
{
  sub_10000A7C4(0, &unk_100AEB7A0);
  if ([a1 isKindOfClass:swift_getObjCClassFromMetadata()])
  {
    v5 = [v2 gestureRecognizers];
    sub_10000A7C4(0, &unk_100AEA0E0);
    v6 = sub_1007A25E4();

    v15 = a1;
    __chkstk_darwin(v7);
    v14[2] = &v15;
    LOBYTE(v5) = sub_10058D090(sub_100598698, v14, v6);

    if (v5)
    {
      return 0;
    }
  }

  sub_10000A7C4(0, &qword_100ADAF70);
  v9 = sub_10058E1F4();
  v10 = sub_1007A3184();

  if ((v10 & 1) == 0)
  {
    return 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v12 = Strong;
  v13 = [Strong gestureRecognizer:a1 shouldReceiveTouch:a2];

  return v13;
}

uint64_t sub_100596DBC(void *a1, uint64_t a2, void *a3, void *a4, const char **a5)
{
  sub_10000A7C4(0, &qword_100ADAF70);
  v9 = a3;
  v10 = a4;
  v11 = a1;
  v12 = sub_10058E1F4();
  LOBYTE(a4) = sub_1007A3184();

  if ((a4 & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v14 = *a5;
    v15 = Strong;
    v16 = [Strong v14];

    v17 = v9;
    v9 = v11;
  }

  else
  {
    v16 = 1;
    v17 = v10;
    v10 = v11;
  }

  return v16;
}

uint64_t sub_100596EB4(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v2 = sub_1007A1354();
    swift_unknownObjectRelease();
    if (v2)
    {
      return sub_100590CCC() & 1;
    }
  }

  return a1;
}

uint64_t sub_100597010(void *a1, double a2, double a3)
{
  v7 = sub_1001F1160(&unk_100ADB4D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  if (*(v3 + OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled) == 1)
  {
    v17[3] = a1;
    *&v17[1] = a2;
    *&v17[2] = a3;
    v11 = a1;
    sub_1001F1160(&qword_100AEB798);
    type metadata accessor for CGPoint(0);
    sub_10079FEA4();
    if (swift_weakLoadStrong() && (v12 = sub_10079F784(), , v12))
    {
      swift_unknownObjectRelease();
      v13 = 1;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        v13 = sub_10079F5E4();
      }

      else
      {
        v13 = 0;
      }
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_100597250(uint64_t a1, int a2)
{
  v35 = a2;
  v37 = a1;
  v3 = sub_1007A0404();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007A0F74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v11 - 8);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10079F9D4();
  swift_unknownObjectRelease();
  v36 = v2;
  swift_getObjectType();
  sub_1007A0964();
  sub_10079F3E4();

  v19 = *(v6 + 8);
  v19(v10, v5);
  sub_1000077D8(v18, v15, &unk_100AEB380);
  if ((*(v6 + 48))(v15, 1, v5) == 1)
  {
    sub_100007840(v15, &unk_100AEB380);
    v20 = v31;
    sub_1007A0364();
    v21 = sub_1007A03A4();
    (*(v32 + 8))(v20, v33);
    if (v21)
    {
      sub_1007A0944();
    }
  }

  else
  {
    v22 = v34;
    (*(v6 + 32))(v34, v15, v5);
    v23 = v19;
    v24 = v30;
    (*(v6 + 16))(v30, v22, v5);
    (*(v6 + 56))(v24, 0, 1, v5);
    v25 = OBJC_IVAR____TtC5Books22PageCurlViewController_pendingDestinationSpread;
    v26 = v36;
    swift_beginAccess();
    sub_1002391EC(v24, v26 + v25, &unk_100AEB380);
    swift_endAccess();
    v27 = sub_1007A03E4();
    sub_100597690(v22, v27 & 1, v35 & 1);
    v23(v22, v5);
  }

  return sub_100007840(v18, &unk_100AEB380);
}

void sub_100597690(uint64_t a1, uint64_t a2, int a3)
{
  v35 = a3;
  v5 = sub_10079ACE4();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1007A1A14();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A0F74();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007A03D4();
  v39 = v3;
  v15 = *&v3[OBJC_IVAR____TtC5Books22PageCurlViewController_locationController + 8];
  v33[1] = swift_getObjectType();
  v33[2] = v15;
  sub_1007A0964();
  sub_1005985B4(&qword_100AEB790, &type metadata accessor for SpreadPaginationEntity);
  v33[3] = a1;
  v16 = sub_1007A2124();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = (v14 & 1) == 0;

    sub_10079B9B4();
    v22 = v34;
    (*(v7 + 104))(v9, enum case for PageTransitionCompletionState.completed(_:), v34);
    sub_10079B8C4();
    (*(v7 + 8))(v9, v22);
    if ((v35 & 1) == 0)
    {
      sub_1007A09A4();
      return;
    }

    v23 = v39;
    if (sub_100590CCC())
    {
      v24 = v14 & 1;
    }

    else
    {
      v24 = (v14 & 1) == 0;
    }

    v25 = [v23 _incomingViewControllersForGestureDrivenCurlInDirection:v24];
    if (v25)
    {
      v26 = v25;
      sub_10000A7C4(0, &qword_100AD7CB0);
      v27 = sub_1007A25E4();

      if (v27 >> 62)
      {
        v28 = sub_1007A38D4();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v28 == *&v23[OBJC_IVAR____TtC5Books22PageCurlViewController_columns])
      {
        sub_1003BBFB4(v27);

        v29.super.isa = sub_1007A25D4().super.isa;

        aBlock[4] = BKAppDelegate.enableMetricsInspectorOnDebugMode();
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10021B6B0;
        aBlock[3] = &unk_100A23DD8;
        v30 = _Block_copy(aBlock);
        [v23 _setViewControllers:v29.super.isa withCurlOfType:1 fromLocation:v24 direction:1 animated:1 notifyDelegate:v30 completion:{0.0, 0.0}];
        _Block_release(v30);
LABEL_22:

        return;
      }
    }

    if (qword_100AD1888 != -1)
    {
      swift_once();
    }

    sub_100008B98(v38, qword_100AEB470);
    v29.super.isa = sub_10079ACC4();
    v31 = sub_1007A29A4();
    if (os_log_type_enabled(v29.super.isa, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v29.super.isa, v31, "Need controllers, cannot curl", v32, 2u);
    }

    goto LABEL_22;
  }

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v17 = qword_100B23750;
  v18 = v36;
  sub_10079ACF4();
  v19 = sub_10079ACC4();
  v20 = sub_1007A29D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Cannot curl to the current spread", v21, 2u);
  }

  (*(v37 + 8))(v18, v38);
}

void sub_100597CC4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1007A0F74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079ACE4();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  swift_getObjectType();
  v16 = sub_1007A09B4();
  if (v16 == 2)
  {
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v17 = qword_100B23750;
    sub_10079ACF4();
    (*(v7 + 16))(v9, a1, v6);
    v18 = sub_10079ACC4();
    v19 = sub_1007A29B4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31[0] = v21;
      *v20 = 136315138;
      sub_1005985B4(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
      v22 = sub_1007A3A74();
      v24 = v23;
      (*(v7 + 8))(v9, v6);
      v25 = sub_1000070F4(v22, v24, v31);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to determine movement direction to destination %s", v20, 0xCu);
      sub_1000074E0(v21);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    (*(v29 + 8))(v12, v30);
  }

  else
  {
    v26 = v16;
    (*(v7 + 16))(v15, a1, v6);
    (*(v7 + 56))(v15, 0, 1, v6);
    v27 = OBJC_IVAR____TtC5Books22PageCurlViewController_pendingDestinationSpread;
    swift_beginAccess();
    sub_1002391EC(v15, v3 + v27, &unk_100AEB380);
    swift_endAccess();
    sub_100597690(a1, v26 & 1, a2 & 1);
  }
}

uint64_t sub_1005980E0()
{
  v0 = sub_1001F1160(&unk_100AE1530);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  v14 = sub_1001F1160(&qword_100AEB768);
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = &v14 - v5;
  v7 = sub_1001F1160(&qword_100AEB770);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E0);
  sub_10079B974();
  swift_endAccess();
  sub_1007A0634();
  sub_100005920(&qword_100AD82D0, &unk_100AE1530);
  sub_10079BA74();
  (*(v1 + 8))(v3, v0);
  sub_100005920(&qword_100AEB778, &qword_100AEB768);
  sub_1005985B4(&qword_100AEB780, &type metadata accessor for PageMovementState);
  v11 = v14;
  sub_10079BAF4();
  (*(v4 + 8))(v6, v11);
  sub_100005920(&qword_100AEB788, &qword_100AEB770);
  v12 = sub_10079BA14();
  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t sub_1005984C0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100598540()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_1005985B4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_100598604(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_10000A7C4(0, &qword_100AD7620);
    v6 = v2;
    v7 = v3;
    v8 = sub_1007A3184();

    return v8 & 1;
  }

  return result;
}

unint64_t sub_100598700(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_1007A38D4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_1007A3784();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_10000A7C4(0, &qword_100ADAF70);
    v7 = sub_1007A3184();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100598814(uint64_t a1)
{
  v2 = sub_10079F514();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v12 - v7;
  sub_10079F3B4();
  (*(v3 + 104))(v5, enum case for BookNavigationDirection.rightToLeft(_:), v2);
  sub_1005985B4(&qword_100AE0CC8, &type metadata accessor for BookNavigationDirection);
  sub_1007A2574();
  sub_1007A2574();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v9 = 3;
  }

  else if (sub_1007A3AB4())
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return v9;
  }
}

void sub_100598A08()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Books22PageCurlViewController_contentLayoutProviderProviding + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5Books22PageCurlViewController_readingSettingsProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5Books22PageCurlViewController_beganCurls) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Books22PageCurlViewController_needResetAfterCurlEnd) = 0;
  v2 = OBJC_IVAR____TtC5Books22PageCurlViewController_spreadForResetAfterCurlEnd;
  v3 = sub_1007A0F74();
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled) = 0;
  v4(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_spreadBeforeCurl, 1, 1, v3);
  v4(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_pendingDestinationSpread, 1, 1, v3);
  if (_swiftEmptyArrayStorage >> 62 && sub_1007A38D4())
  {
    sub_1001F2C68(_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_tapActionViews) = v5;
  v6 = OBJC_IVAR____TtC5Books22PageCurlViewController_curlHappenedPublisher;
  sub_1001F1160(&qword_100AEB7D0);
  swift_allocObject();
  *(v1 + v6) = sub_10079B8D4();
  v7 = OBJC_IVAR____TtC5Books22PageCurlViewController_curlCompletedPublisher;
  sub_1001F1160(&qword_100AEB8C0);
  swift_allocObject();
  *(v1 + v7) = sub_10079B8D4();
  v8 = v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_oldColumnCount;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_isObservingChanges) = 0;
  if (_swiftEmptyArrayStorage >> 62 && sub_1007A38D4())
  {
    v9 = sub_1001F0DB4(_swiftEmptyArrayStorage);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController_cancellables) = v9;
  *(v1 + OBJC_IVAR____TtC5Books22PageCurlViewController____lazy_storage___panGestureRecognizer) = 0;
  sub_1007A38A4();
  __break(1u);
}

void sub_100598C9C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v7 = [v1 window];

  if (!v7)
  {
    return;
  }

  v3 = [v0 view];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAutoresizingMask:0];

  sub_10058E8E8(v7);
  sub_10058EBFC();
}

void sub_100598DAC(void *a1, uint64_t a2)
{
  v4 = &selRef_textContainer;
  v5 = [a1 view];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 subviews];

  sub_10000A7C4(0, &qword_100AD7620);
  v8 = sub_1007A25E4();

  if (a2 >> 62)
  {
    goto LABEL_29;
  }

  v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  if (v9)
  {
    v32 = _swiftEmptyArrayStorage;
    sub_1007A37F4();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v10 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = sub_1007A3784();
      }

      else
      {
        v11 = *(a2 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 v4[364]];

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
    }

    while (v9 != v10);
    v30 = v32;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v32 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    v2 = sub_1007A38D4();
    if (v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_15:
      v14 = 0;
      a2 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v15 = sub_1007A3784();
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            a2 = v32;
            goto LABEL_32;
          }
        }

        else
        {
          if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_29:
            v9 = sub_1007A38D4();
            goto LABEL_4;
          }

          v15 = *(v8 + 8 * v14 + 32);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_26;
          }
        }

        v4 = &v30;
        v31 = v15;
        __chkstk_darwin(v15);
        v29[2] = &v31;
        v18 = v17;
        v19 = sub_1005807A0(sub_100599E4C, v29, v30);

        if ((v19 & 1) != 0 || (type metadata accessor for AlwaysPassthroughView(), !swift_dynamicCastClass()))
        {
        }

        else
        {
          sub_1007A37D4();
          v4 = v32[2];
          sub_1007A3804();
          sub_1007A3814();
          sub_1007A37E4();
        }

        ++v14;
        if (v16 == v2)
        {
          goto LABEL_27;
        }
      }
    }
  }

  a2 = _swiftEmptyArrayStorage;
LABEL_32:

  LODWORD(v2) = a2 < 0 || (a2 & 0x4000000000000000) != 0;
  if (v2 == 1)
  {
    v20 = sub_1007A38D4();
    if (!v20)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v20 = *(a2 + 16);
    if (!v20)
    {
      goto LABEL_44;
    }
  }

  if (v20 >= 1)
  {
    for (i = 0; i != v20; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v22 = sub_1007A3784();
      }

      else
      {
        v22 = *(a2 + 8 * i + 32);
      }

      v23 = v22;
      [v22 removeFromSuperview];
    }

LABEL_44:
    v32 = a2;
    sub_1001F1160(&unk_100AF71F0);
    sub_100005920(&unk_100AEB7F0, &unk_100AF71F0);
    if ((sub_1007A28A4() & 1) == 0)
    {

      return;
    }

    if (qword_100AD1888 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_55;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  swift_once();
LABEL_46:
  v24 = sub_10079ACE4();
  sub_100008B98(v24, qword_100AEB470);

  v25 = sub_10079ACC4();
  v26 = sub_1007A2994();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    if (v2)
    {
      v28 = sub_1007A38D4();
    }

    else
    {
      v28 = *(a2 + 16);
    }

    *(v27 + 4) = v28;
  }

  else
  {
  }
}

unint64_t sub_100599288(unint64_t *a1)
{
  v3 = *a1;
  result = sub_100598700(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_1007A38D4();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_100ADAF70;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_1007A38D4())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = sub_1007A3784();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_10000A7C4(0, v8);
    v12 = sub_1007A3184();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = sub_1007A3784();
          v14 = sub_1007A3784();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1002F9CE0(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_1002F9CE0(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_1007A38D4();
}

id sub_100599518(char *a1, int a2)
{
  v70 = a1;
  v4 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v4 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  v63 = sub_1007A0F74();
  v13 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007A1A14();
  v16 = *(v15 - 8);
  v17.n128_f64[0] = __chkstk_darwin(v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v16 + 104);
  v21 = &enum case for PageTransitionCompletionState.completed(_:);
  v62 = a2;
  if ((a2 & 1) == 0)
  {
    v21 = &enum case for PageTransitionCompletionState.cancelled(_:);
  }

  v20(v19, *v21, v15, v17);
  sub_10079B8C4();
  (*(v16 + 8))(v19, v15);
  v22 = v2;
  v23 = [v2 be_areCurlAnimationsInFlightOrPending];
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v23;

  sub_10079B9B4();
  result = [v70 viewControllers];
  if (result)
  {
    v25 = result;
    sub_10000A7C4(0, &qword_100AD7CB0);
    v26 = sub_1007A25E4();

    v27 = sub_1005AB634(v26);

    if (v27)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFF8);
      v60 = v9;
      v59 = v6;
      v58 = v12;
      if (v27 >> 62)
      {
        goto LABEL_59;
      }

      v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
      v69 = v22;
      v70 = OBJC_IVAR____TtC5Books22PageCurlViewController_beganCurls;
      if (v29)
      {
        v30 = 0;
        v68 = v27 & 0xC000000000000001;
        v66 = v28;
        v65 = v29;
        v67 = v13;
        v64 = v27;
        while (1)
        {
          if (v68)
          {
            v32 = sub_1007A3784();
          }

          else
          {
            if (v30 >= v28[2])
            {
              goto LABEL_54;
            }

            v32 = *(v27 + 8 * v30 + 32);
          }

          v28 = v32;
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            v29 = sub_1007A38D4();
            goto LABEL_7;
          }

          sub_10053D6A0(0);
          v34 = v70;
          swift_beginAccess();
          v35 = v28;
          v36 = sub_100599288(&v34[v22]);

          v27 = *&v34[v22];
          v28 = (v27 >> 62);
          if (v27 >> 62)
          {
            v13 = sub_1007A38D4();
            v22 = v13 - v36;
            if (v13 < v36)
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          else
          {
            v13 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v22 = v13 - v36;
            if (v13 < v36)
            {
              goto LABEL_36;
            }
          }

          if (v36 < 0)
          {
            goto LABEL_55;
          }

          if (v28)
          {
            v37 = sub_1007A38D4();
          }

          else
          {
            v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v37 < v13)
          {
            goto LABEL_56;
          }

          v38 = __OFSUB__(0, v22);
          v22 = -v22;
          if (v38)
          {
            goto LABEL_57;
          }

          if (v28)
          {
            v39 = sub_1007A38D4();
          }

          else
          {
            v39 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v38 = __OFADD__(v39, v22);
          v22 += v39;
          if (v38)
          {
            goto LABEL_58;
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *&v70[v69] = v27;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
            break;
          }

          if (v28)
          {
            goto LABEL_9;
          }

          if (v22 <= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = v69;
            v31 = v70;
            goto LABEL_11;
          }

LABEL_10:
          v27 = sub_1007A3794();
          v22 = v69;
          v31 = v70;
          *&v70[v69] = v27;
LABEL_11:
          sub_1002F9798(v36, v13, 0);
          *&v31[v22] = v27;
          swift_endAccess();

          ++v30;
          v28 = v66;
          v13 = v67;
          v27 = v64;
          if (v33 == v65)
          {
            goto LABEL_37;
          }
        }

        if (!v28)
        {
          goto LABEL_10;
        }

LABEL_9:
        sub_1007A38D4();
        goto LABEL_10;
      }

LABEL_37:

      v41 = v60;
      v42 = v59;
      v43 = v70;
      if (v62)
      {
        goto LABEL_50;
      }

      swift_beginAccess();
      v44 = *&v43[v22];
      if (v44 >> 62)
      {
        v45 = sub_1007A38D4();
        if (v45)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v45)
        {
LABEL_40:
          if (v45 < 1)
          {
            __break(1u);
            result = swift_endAccess();
            __break(1u);
            return result;
          }

          for (i = 0; i != v45; ++i)
          {
            if ((v44 & 0xC000000000000001) != 0)
            {
              v47 = sub_1007A3784();
            }

            else
            {
              v47 = *(v44 + 8 * i + 32);
            }

            v48 = v47;
            sub_10053D6A0(0);
          }

          v22 = v69;
        }
      }

      v43 = v70;
      *&v70[v22] = _swiftEmptyArrayStorage;

      v49 = OBJC_IVAR____TtC5Books22PageCurlViewController_spreadBeforeCurl;
      swift_beginAccess();
      v50 = v58;
      sub_1000077D8(v69 + v49, v58, &unk_100AEB380);
      v51 = v63;
      if ((*(v13 + 48))(v50, 1, v63) == 1)
      {
        sub_100007840(v50, &unk_100AEB380);
      }

      else
      {
        v52 = v61;
        (*(v13 + 32))(v61, v50, v51);
        swift_getObjectType();
        sub_1007A09A4();
        v53 = v52;
        v43 = v70;
        (*(v13 + 8))(v53, v51);
      }

LABEL_50:
      v54 = *(v13 + 56);
      v54(v41, 1, 1, v63);
      v55 = OBJC_IVAR____TtC5Books22PageCurlViewController_spreadBeforeCurl;
      swift_beginAccess();
      v56 = v69;
      sub_1002391EC(v41, v69 + v55, &unk_100AEB380);
      result = swift_endAccess();
      if (*(v56 + OBJC_IVAR____TtC5Books22PageCurlViewController_needResetAfterCurlEnd) == 1)
      {
        *(v56 + OBJC_IVAR____TtC5Books22PageCurlViewController_needResetAfterCurlEnd) = 0;
        swift_beginAccess();
        *&v43[v56] = _swiftEmptyArrayStorage;

        v57 = OBJC_IVAR____TtC5Books22PageCurlViewController_spreadForResetAfterCurlEnd;
        swift_beginAccess();
        sub_1000077D8(v56 + v57, v41, &unk_100AEB380);
        v54(v42, 1, 1, v63);
        swift_beginAccess();
        sub_1002391EC(v42, v56 + v57, &unk_100AEB380);
        swift_endAccess();
        sub_10058FAF8(v41);
        return sub_100007840(v41, &unk_100AEB380);
      }
    }
  }

  return result;
}

uint64_t sub_100599DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AEB380);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100599E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AEB380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100599EF0()
{
  result = qword_100AEB898;
  if (!qword_100AEB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB898);
  }

  return result;
}

uint64_t sub_100599F54()
{
  v2 = v0;
  v3 = [v0 leadingItemGroups];
  sub_10000A7C4(0, &qword_100ADC108);
  v4 = sub_1007A25E4();

  if (v4 >> 62)
  {
    goto LABEL_62;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v77 = v2;
  if (v5)
  {
    v80[0] = _swiftEmptyArrayStorage;
    v6 = v80;
    sub_1003BD448(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_135;
    }

    v7 = 0;
    v8 = v80[0];
    v1 = v4 & 0xC000000000000001;
    do
    {
      if (v1)
      {
        v9 = sub_1007A3784();
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 barButtonItems];
      sub_10000A7C4(0, &qword_100ADAA20);
      v12 = sub_1007A25E4();

      v80[0] = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_1003BD448((v13 > 1), v14 + 1, 1);
        v8 = v80[0];
      }

      ++v7;
      v8[2] = v14 + 1;
      v8[v14 + 4] = v12;
    }

    while (v5 != v7);

    v2 = v77;
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v15 = sub_10059AB2C(v8);

  if (v15 >> 62)
  {
    v16 = sub_1007A38D4();
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_64:

    v46 = [v2 leftBarButtonItems];
    if (!v46)
    {
      v5 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }

    v23 = v46;
    sub_10000A7C4(0, &qword_100ADAA20);
    v5 = sub_1007A25E4();

    if (v5 >> 62)
    {
      v47 = sub_1007A38D4();
      if (v47)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v47 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_67:
        v48 = 0;
        v2 = v5 & 0xC000000000000001;
        v49 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v2)
          {
            v50 = sub_1007A3784();
            v51 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_86;
            }
          }

          else
          {
            if (v48 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_87;
            }

            v50 = *(v5 + 8 * v48 + 32);
            v51 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }
          }

          sub_1003DDBA0(v50, v78);
          if (v79 == 1)
          {
            sub_10059AE00(v78);
          }

          else
          {
            sub_10059AE68(v78, v80);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_10066B0E0(0, v49[2] + 1, 1, v49);
            }

            v1 = v49[2];
            v52 = v49[3];
            v23 = (v1 + 1);
            if (v1 >= v52 >> 1)
            {
              v49 = sub_10066B0E0((v52 > 1), v1 + 1, 1, v49);
            }

            v49[2] = v23;
            sub_10059AE68(v80, &v49[15 * v1 + 4]);
          }

          ++v48;
          if (v51 == v47)
          {

            v5 = sub_10066AFC4(0, 1, 1, _swiftEmptyArrayStorage);
            v54 = *(v5 + 16);
            v53 = *(v5 + 24);
            if (v54 >= v53 >> 1)
            {
              v5 = sub_10066AFC4((v53 > 1), v54 + 1, 1, v5);
            }

            v2 = v77;
            *(v5 + 16) = v54 + 1;
            v24 = v5 + 24 * v54;
            *(v24 + 32) = v49;
            goto LABEL_33;
          }
        }
      }
    }

    v5 = _swiftEmptyArrayStorage;
    v2 = v77;
    goto LABEL_34;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_64;
  }

LABEL_16:
  v17 = 0;
  v2 = v15 & 0xC000000000000001;
  v18 = _swiftEmptyArrayStorage;
  do
  {
    if (v2)
    {
      v19 = sub_1007A3784();
      v4 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v19 = *(v15 + 8 * v17 + 32);
      v4 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        v5 = sub_1007A38D4();
        goto LABEL_3;
      }
    }

    sub_1003DDBA0(v19, v78);
    if (v79 == 1)
    {
      sub_10059AE00(v78);
    }

    else
    {
      sub_10059AE68(v78, v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10066B0E0(0, *(v18 + 16) + 1, 1, v18);
      }

      v1 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v1 >= v20 >> 1)
      {
        v18 = sub_10066B0E0((v20 > 1), v1 + 1, 1, v18);
      }

      *(v18 + 16) = v1 + 1;
      sub_10059AE68(v80, v18 + 120 * v1 + 32);
    }

    ++v17;
  }

  while (v4 != v16);

  v5 = sub_10066AFC4(0, 1, 1, _swiftEmptyArrayStorage);
  v22 = *(v5 + 16);
  v21 = *(v5 + 24);
  v23 = (v22 + 1);
  if (v22 >= v21 >> 1)
  {
    goto LABEL_137;
  }

  while (1)
  {
    v2 = v77;
    *(v5 + 16) = v23;
    v24 = v5 + 24 * v22;
    *(v24 + 32) = v18;
LABEL_33:
    *(v24 + 40) = 0;
    *(v24 + 48) = 3;
LABEL_34:
    v25 = [v2 titleView];
    if (v25)
    {
      v6 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_135:
        v5 = sub_10066AFC4(0, *(v5 + 16) + 1, 1, v5);
      }

      v27 = *(v5 + 16);
      v26 = *(v5 + 24);
      if (v27 >= v26 >> 1)
      {
        v5 = sub_10066AFC4((v26 > 1), v27 + 1, 1, v5);
      }

      *(v5 + 16) = v27 + 1;
      v28 = v5 + 24 * v27;
      *(v28 + 32) = v6;
      *(v28 + 40) = 0;
      *(v28 + 48) = 1;
    }

    else
    {
      v37 = [v2 title];
      if (v37)
      {
        v38 = v37;
        v39 = sub_1007A2254();
        v41 = v40;

        v42 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v42 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (v42)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10066AFC4(0, *(v5 + 16) + 1, 1, v5);
          }

          v44 = *(v5 + 16);
          v43 = *(v5 + 24);
          if (v44 >= v43 >> 1)
          {
            v5 = sub_10066AFC4((v43 > 1), v44 + 1, 1, v5);
          }

          *(v5 + 16) = v44 + 1;
          v45 = v5 + 24 * v44;
          *(v45 + 32) = v39;
          *(v45 + 40) = v41;
          *(v45 + 48) = 0;
        }

        else
        {
        }
      }
    }

    v23 = [v2 trailingItemGroups];
    v1 = sub_1007A25E4();

    if (v1 >> 62)
    {
LABEL_88:
      v18 = sub_1007A38D4();
      v76 = v5;
      if (!v18)
      {
LABEL_89:

        v30 = _swiftEmptyArrayStorage;
        goto LABEL_90;
      }
    }

    else
    {
      v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v76 = v5;
      if (!v18)
      {
        goto LABEL_89;
      }
    }

    v80[0] = _swiftEmptyArrayStorage;
    v22 = v80;
    sub_1003BD448(0, v18 & ~(v18 >> 63), 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_137:
    v5 = sub_10066AFC4((v21 > 1), v23, 1, v5);
  }

  v29 = 0;
  v30 = v80[0];
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v31 = sub_1007A3784();
    }

    else
    {
      v31 = *(v1 + 8 * v29 + 32);
    }

    v32 = v31;
    v33 = [v31 barButtonItems];
    sub_10000A7C4(0, &qword_100ADAA20);
    v34 = sub_1007A25E4();

    v80[0] = v30;
    v36 = v30[2];
    v35 = v30[3];
    v5 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      sub_1003BD448((v35 > 1), v36 + 1, 1);
      v30 = v80[0];
    }

    ++v29;
    v30[2] = v5;
    v30[v36 + 4] = v34;
  }

  while (v18 != v29);

  v2 = v77;
LABEL_90:
  v55 = sub_10059AB2C(v30);

  if (v55 >> 62)
  {
    goto LABEL_108;
  }

  v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56)
  {
LABEL_92:
    v57 = 0;
    v58 = _swiftEmptyArrayStorage;
    v2 = 120;
    while (1)
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v59 = sub_1007A3784();
        v60 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (v57 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_107;
        }

        v59 = *(v55 + 8 * v57 + 32);
        v60 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          v56 = sub_1007A38D4();
          if (!v56)
          {
            break;
          }

          goto LABEL_92;
        }
      }

      sub_1003DDBA0(v59, v78);
      if (v79 == 1)
      {
        sub_10059AE00(v78);
      }

      else
      {
        sub_10059AE68(v78, v80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_10066B0E0(0, v58[2] + 1, 1, v58);
        }

        v62 = v58[2];
        v61 = v58[3];
        v5 = v62 + 1;
        if (v62 >= v61 >> 1)
        {
          v58 = sub_10066B0E0((v61 > 1), v62 + 1, 1, v58);
        }

        v58[2] = v5;
        sub_10059AE68(v80, &v58[15 * v62 + 4]);
      }

      ++v57;
      if (v60 == v56)
      {
LABEL_127:

        v5 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_133;
        }

        goto LABEL_128;
      }
    }
  }

  v63 = [v2 rightBarButtonItems];
  if (!v63)
  {
    return v76;
  }

  v64 = v63;
  sub_10000A7C4(0, &qword_100ADAA20);
  v65 = sub_1007A25E4();

  if (v65 >> 62)
  {
    v66 = sub_1007A38D4();
    if (v66)
    {
      goto LABEL_112;
    }

    goto LABEL_141;
  }

  v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v66)
  {
LABEL_141:

    return v76;
  }

LABEL_112:
  v67 = 0;
  v58 = _swiftEmptyArrayStorage;
  while ((v65 & 0xC000000000000001) != 0)
  {
    v68 = sub_1007A3784();
    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_131;
    }

LABEL_118:
    sub_1003DDBA0(v68, v78);
    if (v79 == 1)
    {
      sub_10059AE00(v78);
    }

    else
    {
      sub_10059AE68(v78, v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_10066B0E0(0, v58[2] + 1, 1, v58);
      }

      v71 = v58[2];
      v70 = v58[3];
      v5 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v58 = sub_10066B0E0((v70 > 1), v71 + 1, 1, v58);
      }

      v58[2] = v5;
      sub_10059AE68(v80, &v58[15 * v71 + 4]);
    }

    ++v67;
    if (v69 == v66)
    {
      goto LABEL_127;
    }
  }

  if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_132;
  }

  v68 = *(v65 + 8 * v67 + 32);
  v69 = v67 + 1;
  if (!__OFADD__(v67, 1))
  {
    goto LABEL_118;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  v5 = sub_10066AFC4(0, *(v5 + 16) + 1, 1, v5);
LABEL_128:
  v73 = *(v5 + 16);
  v72 = *(v5 + 24);
  if (v73 >= v72 >> 1)
  {
    v5 = sub_10066AFC4((v72 > 1), v73 + 1, 1, v5);
  }

  *(v5 + 16) = v73 + 1;
  v74 = v5 + 24 * v73;
  *(v74 + 32) = v58;
  *(v74 + 40) = 0;
  *(v74 + 48) = 4;
  return v5;
}

uint64_t sub_10059AB2C(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &qword_100AE0AD8;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_1007A38D4();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_1007A38D4();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1007A38D4();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1007A3794();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_10059AEC4();
      for (i = 0; i != v14; ++i)
      {
        sub_1001F1160(v3);
        v18 = v3;
        v19 = sub_1002B6B60(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_10000A7C4(0, &qword_100ADAA20);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_1007A38D4();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
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

uint64_t sub_10059AE00(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AEB8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10059AEC4()
{
  result = qword_100AEB8D8;
  if (!qword_100AEB8D8)
  {
    sub_1001F1234(&qword_100AE0AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB8D8);
  }

  return result;
}

uint64_t RootBarItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BKRootBarItem_titleOverride + 8);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR___BKRootBarItem_titleOverride);
    result = swift_bridgeObjectRetain_n();
    v6 = 0uLL;
    v7 = v4;
    v8 = v3;
  }

  else
  {
    v10 = v1 + OBJC_IVAR___BKRootBarItem_identifier;
    v11 = *(v1 + OBJC_IVAR___BKRootBarItem_identifier);
    v12 = *(v10 + 8);
    _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v11, v12);
    if (v13)
    {

      v14 = 14;
    }

    else
    {

      v14 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v11, v12);
      if (v14 == 16)
      {
        v14 = 15;
      }
    }

    result = sub_10047E894(v14, &v15);
    v3 = v16;
    if (v16)
    {
      v6 = v19;
      v9 = v20;
      v7 = v17;
      v8 = v18;
      v4 = v15;
      goto LABEL_10;
    }

    v4 = 0;
    v7 = 0;
    v6 = 0uLL;
    v3 = 0xE000000000000000;
    v8 = 0xE000000000000000;
  }

  v9 = 0uLL;
LABEL_10:
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v6;
  *(a1 + 48) = v9;
  return result;
}

id RootBarItem.__allocating_init(identifier:isPlaceholder:url:titleOverride:iconNameOverride:selectedIconNameOverride:countryCode:editNameOnSelect:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v20 = objc_allocWithZone(v14);
  if (a1 == 0x5F676E6964616572 && a2 == 0xEB00000000776F6ELL || (sub_1007A3AB4() & 1) != 0 || a1 == 0x776F6E5F64616572 && a2 == 0xE800000000000000 || (sub_1007A3AB4() & 1) != 0)
  {
    a1 = 1701670760;

    a2 = 0xE400000000000000;
  }

  v21 = &v20[OBJC_IVAR___BKRootBarItem_identifier];
  *v21 = a1;
  v21[1] = a2;
  v20[OBJC_IVAR___BKRootBarItem_isPlaceholder] = a3 & 1;
  v22 = &v20[OBJC_IVAR___BKRootBarItem_url];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v20[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v23 = a6;
  v23[1] = a7;
  v24 = &v20[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v24 = a8;
  v24[1] = a9;
  v25 = &v20[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v25 = a10;
  v25[1] = a11;
  v26 = &v20[OBJC_IVAR___BKRootBarItem_countryCode];
  *v26 = a12;
  v26[1] = a13;
  v20[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = a14 & 1;
  v31.receiver = v20;
  v31.super_class = v14;
  return objc_msgSendSuper2(&v31, "init", a10, a6, a11, a7, a12, a8, a13);
}

double RootBarItem.navigationItemTitle.getter@<D0>(_OWORD *a1@<X8>)
{
  RootBarItem.title.getter(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

id UITab.init(rootBarItem:viewControllerProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  return sub_10059BDA0(a1, a2, a3, &unk_100A23E88);
}

{
  v4 = sub_10059EB00(a1, a2, a3);

  return v4;
}

uint64_t sub_10059B348()
{
  if ([v0 userInfo])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for RootBarItem();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100007840(v5, &unk_100AD5B40);
    return 0;
  }
}

id UITab.rootBarItem.getter()
{
  v1 = v0;
  result = sub_10059B348();
  if (!result)
  {
    if (qword_100AD1688 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AE4D38);
    v4 = sub_10079ACC4();
    v5 = sub_1007A29C4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "UITab.rootBarItem should be set on creation before accessing.", v6, 2u);
    }

    v7 = [v1 identifier];
    v8 = sub_1007A2254();
    v10 = v9;

    v11 = type metadata accessor for RootBarItem();
    v12 = objc_allocWithZone(v11);
    if (v8 == 0x5F676E6964616572 && v10 == 0xEB00000000776F6ELL || (sub_1007A3AB4() & 1) != 0 || v8 == 0x776F6E5F64616572 && v10 == 0xE800000000000000 || (sub_1007A3AB4() & 1) != 0)
    {
      v8 = 1701670760;

      v10 = 0xE400000000000000;
    }

    v13 = &v12[OBJC_IVAR___BKRootBarItem_identifier];
    *v13 = v8;
    v13[1] = v10;
    v12[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 0;
    v14 = &v12[OBJC_IVAR___BKRootBarItem_url];
    *v14 = 0;
    v14[1] = 0;
    v15 = &v12[OBJC_IVAR___BKRootBarItem_titleOverride];
    *v15 = 0;
    v15[1] = 0;
    v16 = &v12[OBJC_IVAR___BKRootBarItem_iconNameOverride];
    *v16 = 0;
    v16[1] = 0;
    v17 = &v12[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
    *v17 = 0;
    v17[1] = 0;
    v18 = &v12[OBJC_IVAR___BKRootBarItem_countryCode];
    *v18 = 0;
    v18[1] = 0;
    v12[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
    v19.receiver = v12;
    v19.super_class = v11;
    return objc_msgSendSuper2(&v19, "init");
  }

  return result;
}

void UITab.rootBarItem.setter(NSObject *a1)
{
  v2 = sub_10059B348();
  if (!v2)
  {
    goto LABEL_13;
  }

  v4 = *(&a1->isa + OBJC_IVAR___BKRootBarItem_identifier);
  v3 = *(&a1[1].isa + OBJC_IVAR___BKRootBarItem_identifier);

  v5 = [v1 identifier];
  v6 = sub_1007A2254();
  v8 = v7;

  if (v4 == v6 && v3 == v8)
  {

    goto LABEL_13;
  }

  v10 = sub_1007A3AB4();

  if (v10)
  {
LABEL_13:
    [v1 setUserInfo:a1];
    sub_10059B9F0(v1);
LABEL_14:
    v22 = a1;
    goto LABEL_15;
  }

  v11 = sub_10059B348();
  if (qword_100AD1688 != -1)
  {
    swift_once();
  }

  v12 = sub_10079ACE4();
  sub_100008B98(v12, qword_100AE4D38);
  v13 = v11;
  v25 = a1;
  a1 = sub_10079ACC4();
  v14 = sub_1007A29C4();

  if (os_log_type_enabled(a1, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v15 = 136315394;
    if (v11)
    {
      v18 = [v13 description];
      v19 = sub_1007A2254();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v19 = 7104878;
    }

    v23 = sub_1000070F4(v19, v21, &v27);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v25;
    *v16 = v25;
    v24 = v25;
    _os_log_impl(&_mh_execute_header, a1, v14, "Tab can only be associated with RootBarItem of the same identifier. Old: %s, New: %@", v15, 0x16u);
    sub_100007840(v16, &unk_100AD9480);

    sub_1000074E0(v17);

    goto LABEL_14;
  }

  v22 = v25;
LABEL_15:
}

void sub_10059B9F0(void *a1)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v2 = sub_10059E6E8();
    RootBarItem.title.getter(&v18);

    sub_100007840(&v18, &qword_100ADFAD0);
    v3 = sub_1007A2214();

    [a1 setTitle:v3];

    RootBarItem.iconName.getter(&v19);

    sub_100007840(&v19, &qword_100ADFAD0);
    v4 = sub_1007A2214();
    v5 = objc_opt_self();
    v6 = [v5 _systemImageNamed:v4];

    if (v6 || (v7 = sub_1007A2214(), v6 = [v5 imageNamed:v7], v7, v6))
    {
    }

    else
    {
      v16 = sub_1007A2214();
      v6 = [v5 systemImageNamed:v16];
    }

    [a1 setImage:v6];

    if (v2 && (RootBarItem.title.getter(v20), v25 = v21, sub_1000077D8(&v25, v22, &qword_100AD4F30), sub_100007840(v20, &qword_100ADFAD0), *(&v25 + 1)))
    {
      v8 = [a1 viewController];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 tabBarItem];

        if (v10)
        {
          v11 = sub_1007A2214();
          v12 = &v25;
LABEL_14:
          sub_100007840(v12, &qword_100AD4F30);
          [v10 setTitle:v11];

          return;
        }

LABEL_21:
        __break(1u);
        return;
      }

      v15 = &v25;
    }

    else
    {
      RootBarItem.title.getter(v22);
      v24 = v23;
      sub_1000077D8(&v24, &v17, &qword_100AD4F30);
      sub_100007840(v22, &qword_100ADFAD0);
      if (!*(&v24 + 1))
      {
        return;
      }

      v13 = [a1 viewController];
      if (v13)
      {
        v14 = v13;
        v10 = [v13 tabBarItem];

        if (v10)
        {
          v11 = sub_1007A2214();
          v12 = &v24;
          goto LABEL_14;
        }

        __break(1u);
        goto LABEL_21;
      }

      v15 = &v24;
    }

    sub_100007840(v15, &qword_100AD4F30);
  }
}

id UISearchTab.init(rootBarItem:viewControllerProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  return sub_10059BDA0(a1, a2, a3, &unk_100A23EB0);
}

{
  v4 = v3;
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10038D350;
  v9[3] = &unk_100A23ED8;
  v6 = _Block_copy(v9);

  v7 = [v4 initWithViewControllerProvider:v6];
  _Block_release(v6);
  [v7 setRootBarItem:a1];

  return v7;
}

id sub_10059BDA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12[4] = a2;
  v12[5] = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10038D350;
  v12[3] = a4;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithRootBarItem:a1 viewControllerProvider:v9];

  _Block_release(v9);

  return v10;
}

id UISearchTab.rootBarItem.getter()
{
  result = sub_10059B348();
  if (!result)
  {
    if (qword_100AD1688 != -1)
    {
      swift_once();
    }

    v1 = sub_10079ACE4();
    sub_100008B98(v1, qword_100AE4D38);
    v2 = sub_10079ACC4();
    v3 = sub_1007A29C4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "UISearchTab.rootBarItem should be set on creation before accessing.", v4, 2u);
    }

    v5 = 0x686372616573;

    v6 = type metadata accessor for RootBarItem();
    v7 = objc_allocWithZone(v6);
    if (sub_1007A3AB4() & 1) != 0 || (v8 = 0xE600000000000000, (sub_1007A3AB4()))
    {
      v8 = 0xE400000000000000;
      v5 = 1701670760;
    }

    v9 = &v7[OBJC_IVAR___BKRootBarItem_identifier];
    *v9 = v5;
    v9[1] = v8;
    v7[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 0;
    v10 = &v7[OBJC_IVAR___BKRootBarItem_url];
    *v10 = 0;
    v10[1] = 0;
    v11 = &v7[OBJC_IVAR___BKRootBarItem_titleOverride];
    *v11 = 0;
    v11[1] = 0;
    v12 = &v7[OBJC_IVAR___BKRootBarItem_iconNameOverride];
    *v12 = 0;
    v12[1] = 0;
    v13 = &v7[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
    *v13 = 0;
    v13[1] = 0;
    v14 = &v7[OBJC_IVAR___BKRootBarItem_countryCode];
    *v14 = 0;
    v14[1] = 0;
    v7[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
    v15.receiver = v7;
    v15.super_class = v6;
    return objc_msgSendSuper2(&v15, "init");
  }

  return result;
}

void UISearchTab.rootBarItem.setter(void *a1)
{
  v3 = sub_10059B348();
  if (v3 && (v3, ![a1 isSearch]))
  {
    v4 = sub_10059B348();
    if (qword_100AD1688 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AE4D38);
    v6 = v4;
    v18 = a1;
    v7 = sub_10079ACC4();
    v8 = sub_1007A29C4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v9 = 136315394;
      if (v4)
      {
        v12 = [v6 description];
        v13 = sub_1007A2254();
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      v16 = sub_1000070F4(v13, v15, &v19);

      *(v9 + 4) = v16;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v18;
      *v10 = v18;
      v17 = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Search tab can only be associated with Search RootBarItem. Old: %s, New: %@", v9, 0x16u);
      sub_100007840(v10, &unk_100AD9480);

      sub_1000074E0(v11);
    }

    else
    {
    }
  }

  else
  {
    v20.receiver = v1;
    v20.super_class = UISearchTab;
    objc_msgSendSuper2(&v20, "setRootBarItem:", a1);
  }
}

id sub_10059C5CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1007A2214();

  v12 = sub_1007A2214();

  if (a6)
  {
    v17[4] = a6;
    v17[5] = a7;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10038D350;
    v17[3] = &unk_100A24018;
    v13 = _Block_copy(v17);
  }

  else
  {
    v13 = 0;
  }

  v14 = type metadata accessor for BooksTab();
  v18.receiver = v7;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, "initWithTitle:image:identifier:viewControllerProvider:", v11, a3, v12, v13);
  sub_100007020(a6);

  _Block_release(v13);
  return v15;
}

uint64_t sub_10059C7FC(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1000077D8(a1, v22, &unk_100AD5B40);
  v5 = v23;
  if (v23)
  {
    v6 = sub_10000E3E8(v22, v23);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1007A3AA4();
    (*(v7 + 8))(v10, v5);
    sub_1000074E0(v22);
  }

  else
  {
    v11 = 0;
  }

  v12 = a2(0);
  v21.receiver = v2;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "isEqual:", v11);
  swift_unknownObjectRelease();
  if (!v13)
  {
    goto LABEL_11;
  }

  sub_1000077D8(a1, v22, &unk_100AD5B40);
  if (!v23)
  {
    sub_100007840(v22, &unk_100AD5B40);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  v14 = v20[1];
  v15 = sub_10059B348();
  v16 = v14;
  v17 = sub_10059B348();

  if (!v15)
  {

    if (!v17)
    {
      v18 = 1;
      return v18 & 1;
    }

    goto LABEL_11;
  }

  if (!v17)
  {

    goto LABEL_11;
  }

  type metadata accessor for RootBarItem();
  v18 = sub_1007A3184();

  return v18 & 1;
}

uint64_t sub_10059CA68(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = sub_10059C7FC(v10, a4);

  sub_100007840(v10, &unk_100AD5B40);
  return v8 & 1;
}

uint64_t RootBarItem.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier);

  return v1;
}

uint64_t RootBarItem.url.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_url);

  return v1;
}

uint64_t RootBarItem.iconNameOverride.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_iconNameOverride);

  return v1;
}

uint64_t RootBarItem.selectedIconNameOverride.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_selectedIconNameOverride);

  return v1;
}

uint64_t RootBarItem.titleOverride.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_titleOverride);

  return v1;
}

uint64_t RootBarItem.countryCode.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_countryCode);

  return v1;
}

uint64_t RootBarItem.isEqual(_:)(uint64_t a1)
{
  sub_1000077D8(a1, v19, &unk_100AD5B40);
  if (!v20)
  {
    sub_100007840(v19, &unk_100AD5B40);
    goto LABEL_11;
  }

  type metadata accessor for RootBarItem();
  if (swift_dynamicCast())
  {
    v2 = *(v1 + OBJC_IVAR___BKRootBarItem_identifier) == *&v18[OBJC_IVAR___BKRootBarItem_identifier] && *(v1 + OBJC_IVAR___BKRootBarItem_identifier + 8) == *&v18[OBJC_IVAR___BKRootBarItem_identifier + 8];
    if (!v2 && (sub_1007A3AB4() & 1) == 0 || *(v1 + OBJC_IVAR___BKRootBarItem_isPlaceholder) != v18[OBJC_IVAR___BKRootBarItem_isPlaceholder])
    {
      goto LABEL_9;
    }

    v5 = *(v1 + OBJC_IVAR___BKRootBarItem_url + 8);
    v6 = *&v18[OBJC_IVAR___BKRootBarItem_url + 8];
    if (v5)
    {
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = *(v1 + OBJC_IVAR___BKRootBarItem_url) == *&v18[OBJC_IVAR___BKRootBarItem_url] && v5 == v6;
      if (!v7 && (sub_1007A3AB4() & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v6)
    {
      goto LABEL_9;
    }

    v8 = *(v1 + OBJC_IVAR___BKRootBarItem_titleOverride + 8);
    v9 = *&v18[OBJC_IVAR___BKRootBarItem_titleOverride + 8];
    if (v8)
    {
      if (!v9 || (*(v1 + OBJC_IVAR___BKRootBarItem_titleOverride) != *&v18[OBJC_IVAR___BKRootBarItem_titleOverride] || v8 != v9) && (sub_1007A3AB4() & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v9)
    {
      goto LABEL_9;
    }

    v10 = *(v1 + OBJC_IVAR___BKRootBarItem_iconNameOverride + 8);
    v11 = *&v18[OBJC_IVAR___BKRootBarItem_iconNameOverride + 8];
    if (v10)
    {
      if (!v11 || (*(v1 + OBJC_IVAR___BKRootBarItem_iconNameOverride) != *&v18[OBJC_IVAR___BKRootBarItem_iconNameOverride] || v10 != v11) && (sub_1007A3AB4() & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v11)
    {
      goto LABEL_9;
    }

    v12 = *(v1 + OBJC_IVAR___BKRootBarItem_selectedIconNameOverride + 8);
    v13 = *&v18[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride + 8];
    if (v12)
    {
      if (!v13 || (*(v1 + OBJC_IVAR___BKRootBarItem_selectedIconNameOverride) != *&v18[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride] || v12 != v13) && (sub_1007A3AB4() & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v13)
    {
      goto LABEL_9;
    }

    v14 = *(v1 + OBJC_IVAR___BKRootBarItem_countryCode + 8);
    v15 = *&v18[OBJC_IVAR___BKRootBarItem_countryCode + 8];
    if (v14)
    {
      if (v15 && (*(v1 + OBJC_IVAR___BKRootBarItem_countryCode) == *&v18[OBJC_IVAR___BKRootBarItem_countryCode] && v14 == v15 || (sub_1007A3AB4() & 1) != 0))
      {
        goto LABEL_50;
      }
    }

    else if (!v15)
    {
LABEL_50:
      v16 = *(v1 + OBJC_IVAR___BKRootBarItem_editNameOnSelect);
      v17 = v18[OBJC_IVAR___BKRootBarItem_editNameOnSelect];

      v3 = v16 ^ v17 ^ 1;
      return v3 & 1;
    }

LABEL_9:
  }

LABEL_11:
  v3 = 0;
  return v3 & 1;
}

Swift::Void __swiftcall RootBarItem.encode(with:)(NSCoder with)
{
  v3 = sub_1007A2214();
  v4 = sub_1007A2214();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___BKRootBarItem_isPlaceholder);
  v6 = sub_1007A2214();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR___BKRootBarItem_url + 8))
  {
    v7 = sub_1007A2214();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1007A2214();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___BKRootBarItem_titleOverride + 8))
  {
    v9 = sub_1007A2214();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1007A2214();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___BKRootBarItem_iconNameOverride + 8))
  {
    v11 = sub_1007A2214();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1007A2214();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___BKRootBarItem_selectedIconNameOverride + 8))
  {
    v13 = sub_1007A2214();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1007A2214();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___BKRootBarItem_countryCode + 8))
  {
    v15 = sub_1007A2214();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1007A2214();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();
}

id sub_10059D580(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t RootBarItem.isSearch.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier);
  v2 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier + 8);
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v1, v2);
  if (v3)
  {

    v4 = 14;
  }

  else
  {

    LODWORD(v4) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v1, v2);
    if (v4 == 16)
    {
      v4 = 15;
    }

    else
    {
      v4 = v4;
    }
  }

  if (RootBarItemsProvider.ItemKind.rawValue.getter(v4) == 0x686372616573 && v5 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1007A3AB4();

    return v7 & 1;
  }
}

uint64_t RootBarItem.isDefaultCollection.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier);
  v2 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier + 8);
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v1, v2);
  if (v3)
  {

    LOBYTE(v4) = 0;
  }

  else
  {

    v5 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v1, v2);
    if (v5 > 0x10u)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = 0x1FE0u >> v5;
    }
  }

  return v4 & 1;
}

uint64_t RootBarItem.isCustomCollection.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier);
  v2 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier + 8);
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v1, v2);
  if (v3)
  {

    v4 = 14;
  }

  else
  {

    LODWORD(v4) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v1, v2);
    if (v4 == 16)
    {
      v4 = 15;
    }

    else
    {
      v4 = v4;
    }
  }

  if (RootBarItemsProvider.ItemKind.rawValue.getter(v4) == 0x6D6F74737563 && v5 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1007A3AB4();

    return v7 & 1;
  }
}

uint64_t sub_10059DA18(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *&a1[OBJC_IVAR___BKRootBarItem_identifier];
  v5 = *&a1[OBJC_IVAR___BKRootBarItem_identifier + 8];
  v6 = a1;
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v4, v5);
  if (v7)
  {

    v8 = 14;
  }

  else
  {

    LODWORD(v8) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v4, v5);
    if (v8 == 16)
    {
      v8 = 15;
    }

    else
    {
      v8 = v8;
    }
  }

  v9 = a3(v8);

  return v9 & 1;
}

uint64_t sub_10059DAC8(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + OBJC_IVAR___BKRootBarItem_identifier);
  v3 = *(v1 + OBJC_IVAR___BKRootBarItem_identifier + 8);
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v2, v3);
  if (v4)
  {

    v5 = 14;
  }

  else
  {

    LODWORD(v5) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v2, v3);
    if (v5 == 16)
    {
      v5 = 15;
    }

    else
    {
      v5 = v5;
    }
  }

  return a1(v5);
}

uint64_t RootBarItem.requiresURL.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier);
  v2 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier + 8);
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v1, v2);
  if (v3)
  {
  }

  else
  {

    v4 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v1, v2);
    if (v4 > 0x10u || ((1 << v4) & 0x1E01F) == 0)
    {
      v6 = 0;
      return v6 & 1;
    }
  }

  v6 = *(v0 + OBJC_IVAR___BKRootBarItem_isPlaceholder) ^ 1;
  return v6 & 1;
}

unint64_t RootBarItem.automationID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier);
  v2 = *(v0 + OBJC_IVAR___BKRootBarItem_identifier + 8);
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v1, v2);
  if (v3)
  {

    v4 = 14;
  }

  else
  {

    v4 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v1, v2);
    if (v4 == 16)
    {
      v4 = 15;
    }
  }

  return sub_100480680(v4);
}

Swift::String __swiftcall RootBarItem.resolvedNavigationItemTitle(isCompact:)(Swift::Bool isCompact)
{
  if (isCompact && (RootBarItem.title.getter(v6), v8 = v6[2], sub_1000077D8(&v8, v7, &qword_100AD4F30), sub_100007840(v6, &qword_100ADFAD0), (v1 = *(&v8 + 1)) != 0))
  {
    v2 = v8;
  }

  else
  {
    RootBarItem.title.getter(v7);
    v2 = v7[0];
    v1 = v7[1];

    sub_100007840(v7, &qword_100ADFAD0);
  }

  v3 = v2;
  v4 = v1;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t RootBarItem.defaultLargeTitleDisplayMode.getter()
{
  if (!_UISolariumEnabled())
  {
    return 1;
  }

  if ([v0 isSearch] && (isPad() & 1) != 0)
  {
    return 2;
  }

  if (isPhone())
  {
    return 3;
  }

  return 1;
}

void *sub_10059E080@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 + *a1);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    result = swift_bridgeObjectRetain_n();
    v9 = 0uLL;
    v10 = v7;
    v11 = v6;
  }

  else
  {
    result = a2(&v13, *(v3 + OBJC_IVAR___BKRootBarItem_identifier), *(v3 + OBJC_IVAR___BKRootBarItem_identifier + 8), *(v3 + OBJC_IVAR___BKRootBarItem_countryCode), *(v3 + OBJC_IVAR___BKRootBarItem_countryCode + 8));
    v6 = v14;
    if (v14)
    {
      v9 = v17;
      v12 = v18;
      v10 = v15;
      v11 = v16;
      v7 = v13;
      goto LABEL_6;
    }

    v7 = 0;
    v10 = 0;
    v9 = 0uLL;
    v6 = 0xE000000000000000;
    v11 = 0xE000000000000000;
  }

  v12 = 0uLL;
LABEL_6:
  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v9;
  *(a3 + 48) = v12;
  return result;
}

id RootBarItem.createTab(viewControllerProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1007A1F44();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v2 isSearch])
  {
    type metadata accessor for BooksSearchTab();
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v23 = a1;
    v24 = a2;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v11 = &unk_100A23F28;
  }

  else
  {
    type metadata accessor for BooksTab();
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v23 = a1;
    v24 = a2;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v11 = &unk_100A23F00;
  }

  v21 = sub_10038D350;
  v22 = v11;
  v12 = _Block_copy(&aBlock);

  v13 = [v10 initWithRootBarItem:v2 viewControllerProvider:{v12, aBlock, v20}];
  _Block_release(v12);

  [v13 setSpringLoaded:1];
  v14 = [v2 automationID];
  v15 = sub_1007A2254();
  v17 = v16;

  v22 = &type metadata for String;
  aBlock = v15;
  v20 = v17;
  sub_1007A1F34();
  sub_1000074E0(&aBlock);
  sub_10000A7C4(0, &qword_100AEB148);
  sub_1007A2FF4();
  (*(v6 + 8))(v9, v5);
  return v13;
}

Swift::Void __swiftcall RootBarItem.configureDynamicTitle(for:)(UIViewController a1)
{
  if (isPad())
  {
    RootBarItem.title.getter(v5);
    v7 = v6;
    sub_1000077D8(&v7, &v4, &qword_100AD4F30);
    sub_100007840(v5, &qword_100ADFAD0);
    if (*(&v7 + 1))
    {
      sub_100007840(&v7, &qword_100AD4F30);
      sub_1001F1160(&unk_100AEB3D0);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_10080B690;
      *(v2 + 32) = sub_10079B3E4();
      *(v2 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
      *(swift_allocObject() + 16) = v1;
      sub_10000A7C4(0, &qword_100AD7CB0);
      v3 = v1;
      sub_1007A2C54();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10059E5B4(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 navigationItem];
  v6 = [a1 traitCollection];
  v7 = [v6 horizontalSizeClass];

  v8 = [a3 resolvedNavigationItemTitleWithIsCompact:v7 == 1];
  [v5 setTitle:v8];
}

BOOL sub_10059E6E8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10000A7C4(0, &qword_100AE2240);
  sub_10059EE0C();
  v2 = sub_1007A2834();

  v3 = sub_100401D50(v2);

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 screen];
      [v6 scale];
      v8 = v7;

      v9 = [v5 screen];
      [v9 nativeScale];
      v11 = v10;

      return v8 < v11;
    }
  }

  return 0;
}

uint64_t RootBarItem.suggestedTrackerName.getter()
{
  if ([v0 isLibraryCollection])
  {
    return 0x7972617262696CLL;
  }

  v1 = *&v0[OBJC_IVAR___BKRootBarItem_identifier];

  return v1;
}

uint64_t RootBarItem.tabBarTitle.getter()
{
  RootBarItem.title.getter(&v2);
  v0 = v2;

  sub_100007840(&v2, &qword_100ADFAD0);
  return v0;
}

uint64_t RootBarItem.sidebarTitle.getter()
{
  RootBarItem.title.getter(v2);
  v0 = v2[2];

  sub_100007840(v2, &qword_100ADFAD0);
  return v0;
}

id sub_10059EB00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1007A2214();

  v9 = sub_1007A2214();

  v21[4] = a2;
  v21[5] = a3;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10038D350;
  v21[3] = &unk_100A240B8;
  v10 = _Block_copy(v21);

  v11 = [v4 initWithTitle:v8 image:0 identifier:v9 viewControllerProvider:v10];
  _Block_release(v10);

  v12 = v11;
  if ([a1 isSearch])
  {
    if (qword_100AD1688 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100AE4D38);
    v14 = a1;
    v15 = sub_10079ACC4();
    v16 = sub_1007A29C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Search RootBarItem should use UISearchTab. %@", v17, 0xCu);
      sub_100007840(v18, &unk_100AD9480);
    }
  }

  [v12 setPreferredPlacement:5];
  [v12 setRootBarItem:a1];

  return v12;
}

id sub_10059EDD0()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

unint64_t sub_10059EE0C()
{
  result = qword_100AEB9B0;
  if (!qword_100AEB9B0)
  {
    sub_10000A7C4(255, &qword_100AE2240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB9B0);
  }

  return result;
}

uint64_t type metadata accessor for SearchView()
{
  result = qword_100AEBA18;
  if (!qword_100AEBA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10059EF2C()
{
  sub_10059EFE8();
  if (v0 <= 0x3F)
  {
    sub_10059F04C();
    if (v1 <= 0x3F)
    {
      sub_100308E70();
      if (v2 <= 0x3F)
      {
        sub_10028B510();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10059EFE8()
{
  result = qword_100AEBA28;
  if (!qword_100AEBA28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AEBA28);
  }

  return result;
}

void sub_10059F04C()
{
  if (!qword_100AEBA30)
  {
    sub_1007A0284();
    sub_1005A2FB0(&qword_100AEE0F0, &type metadata accessor for SearchViewModel);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEBA30);
    }
  }
}

uint64_t sub_10059F0FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AEBA70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - v5;
  v7 = sub_1001F1160(&qword_100AEBA78);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  if (*(v1 + 56) == 1)
  {
    sub_100009864(v1, v29);
    sub_1007A0284();
    sub_1005A2FB0(&qword_100AEE0F0, &type metadata accessor for SearchViewModel);

    v29[5] = sub_10079C024();
    v29[6] = v10;
    v11 = sub_1001EF524(_swiftEmptyArrayStorage);
    v18[3] = 0;
    v19 = 1;
    v20 = v11;
    v21 = 0;
    v22 = 1;
    sub_10079DFE4();
    v29[7] = v23;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v34 = v28;
    sub_1005A2C48(v29, v9);
    swift_storeEnumTagMultiPayload();
    sub_1005A16D4();
    sub_1005A1728();
    sub_10079CCA4();
    return sub_1005A2CA4(v29);
  }

  else
  {
    v13 = sub_10079E414();
    v18[2] = v18;
    __chkstk_darwin(v13);
    __chkstk_darwin(v14);
    v18[1] = v7;
    sub_1001F1160(&qword_100AEBA80);
    v15 = sub_1001F1234(&qword_100AEBA88);
    v18[0] = a1;
    v16 = v15;
    v17 = sub_100005920(&qword_100AEBA90, &qword_100AEBA88);
    v29[0] = v16;
    v29[1] = &type metadata for Bool;
    v29[2] = v17;
    v29[3] = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_1005A1680();
    sub_10079E424();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_1005A16D4();
    sub_1005A1728();
    sub_10079CCA4();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10059F544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for SearchView();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1001F1160(&qword_100AEBA88);
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v36 = a1;
  v31 = sub_1001F1160(&qword_100AEBAB0);
  v30 = sub_1001F1234(&qword_100AEBAB8);
  v29 = sub_1001F1234(&qword_100AEBAC0);
  v9 = sub_1001F1234(&qword_100AEBAC8);
  v10 = sub_1001F1234(&qword_100AEBAD0);
  v11 = sub_1001F1234(&qword_100AEBAD8);
  v12 = sub_1001F1234(&qword_100AEBAE0);
  v13 = sub_1005A1680();
  v14 = sub_100206ECC();
  v38 = &type metadata for SearchModalView;
  v39 = &type metadata for String;
  v40 = v13;
  v41 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v12;
  v39 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v38 = v11;
  v39 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1001F1234(&qword_100AEBAE8);
  v19 = sub_1005A2D00();
  v38 = v18;
  v39 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v38 = v9;
  v39 = v10;
  v40 = v17;
  v41 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v38 = v29;
  v39 = &type metadata for String;
  v40 = v21;
  v41 = v14;
  v22 = swift_getOpaqueTypeConformance2();
  v38 = v30;
  v39 = v22;
  swift_getOpaqueTypeConformance2();
  sub_10079C2B4();
  v23 = *(a1 + 72);
  LOBYTE(v38) = *(a1 + 64);
  v39 = v23;
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  LOBYTE(v38) = v37;
  sub_1005A2DF4(a1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v25 = swift_allocObject();
  sub_1005A2E58(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_100005920(&qword_100AEBA90, &qword_100AEBA88);
  v26 = v33;
  sub_10079DC24();

  return (*(v34 + 8))(v8, v26);
}

uint64_t sub_10059F9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v141 = sub_10079CFB4();
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_100796CF4();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v134 = &v88 - v6;
  v135 = sub_1007A21D4();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v130 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v131 = &v88 - v9;
  v10 = type metadata accessor for SearchView();
  v120 = *(v10 - 8);
  __chkstk_darwin(v10);
  v122 = v11;
  v124 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_10079C094();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10079D214();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10079CD34();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10079CEE4();
  v95 = *(v15 - 8);
  __chkstk_darwin(v15);
  v89 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001F1160(&unk_100ADBB30);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v88 - v19;
  v21 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v21 - 8);
  v102 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v88 - v24;
  __chkstk_darwin(v26);
  v93 = &v88 - v27;
  v105 = sub_10079CD54();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1001F1160(&qword_100AEBAE0);
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v88 - v29;
  v111 = sub_1001F1160(&qword_100AEBAD8);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v88 - v30;
  v117 = sub_1001F1160(&qword_100AEBAC8);
  v113 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v88 - v31;
  v121 = sub_1001F1160(&qword_100AEBAC0);
  v118 = *(v121 - 8);
  __chkstk_darwin(v121);
  v142 = &v88 - v32;
  v125 = sub_1001F1160(&qword_100AEBAB8);
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v119 = &v88 - v33;
  v34 = *(a1 + 24);
  v35 = *(a1 + 32);
  v36 = sub_10000E3E8(a1, v34);
  v37 = __chkstk_darwin(v36);
  v39 = &v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39, v37);

  sub_10077139C(v39, v34, v35, &v152);
  sub_1007A0284();
  sub_1005A2FB0(&qword_100AEE0F0, &type metadata accessor for SearchViewModel);
  sub_10079C034();
  swift_getKeyPath();
  sub_10079C044();

  v101 = v148;
  v100 = v149;
  v97 = v150;
  v99 = v151;
  v41 = *(a1 + 72);
  v146 = *(a1 + 64);
  v147 = v41;
  sub_1001F1160(&qword_100ADB850);
  sub_10079E014();
  v98 = v143;
  v96 = v144;
  v94 = v145;
  v129 = a1;
  v42 = v95;
  v43 = v93;
  sub_1005A2844(&unk_100ADB4C0, &unk_100ADB6B0, v93);
  (*(v42 + 104))(v25, enum case for UserInterfaceSizeClass.compact(_:), v15);
  (*(v42 + 56))(v25, 0, 1, v15);
  v44 = *(v18 + 56);
  sub_1000077D8(v43, v20, &unk_100ADB6B0);
  sub_1000077D8(v25, &v20[v44], &unk_100ADB6B0);
  v45 = *(v42 + 48);
  if (v45(v20, 1, v15) != 1)
  {
    sub_1000077D8(v20, v102, &unk_100ADB6B0);
    if (v45(&v20[v44], 1, v15) != 1)
    {
      v48 = v89;
      (*(v42 + 32))(v89, &v20[v44], v15);
      sub_1005A2FB0(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
      v49 = v102;
      v50 = sub_1007A2124();
      v51 = *(v42 + 8);
      v51(v48, v15);
      sub_100007840(v25, &unk_100ADB6B0);
      sub_100007840(v43, &unk_100ADB6B0);
      v51(v49, v15);
      sub_100007840(v20, &unk_100ADB6B0);
      v46 = v103;
      if (v50)
      {
        goto LABEL_9;
      }

LABEL_7:
      v47 = v90;
      sub_10079CD24();
      sub_10079CD14();
      (*(v91 + 8))(v47, v92);
      goto LABEL_10;
    }

    sub_100007840(v25, &unk_100ADB6B0);
    sub_100007840(v43, &unk_100ADB6B0);
    (*(v42 + 8))(v102, v15);
LABEL_6:
    sub_100007840(v20, &unk_100ADBB30);
    v46 = v103;
    goto LABEL_7;
  }

  sub_100007840(v25, &unk_100ADB6B0);
  sub_100007840(v43, &unk_100ADB6B0);
  if (v45(&v20[v44], 1, v15) != 1)
  {
    goto LABEL_6;
  }

  sub_100007840(v20, &unk_100ADB6B0);
  v46 = v103;
LABEL_9:
  sub_10079CD44();
LABEL_10:
  if (qword_100AD18B0 != -1)
  {
    swift_once();
  }

  v143 = qword_100B23628;
  v144 = qword_100B23630;
  v102 = sub_1005A1680();
  v52 = sub_100206ECC();

  v103 = v52;
  v53 = v106;
  sub_10079D684();

  (*(v104 + 8))(v46, v105);
  sub_1005A2F3C(&v152);
  v54 = v114;
  sub_10079D204();
  v152 = &type metadata for SearchModalView;
  v153 = &type metadata for String;
  v154 = v102;
  v155 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v108;
  v57 = v109;
  sub_10079DAB4();
  (*(v115 + 8))(v54, v116);
  (*(v107 + 8))(v53, v57);
  v58 = v126;
  sub_10079C084();
  v59 = v124;
  sub_1005A2DF4(v129, v124);
  v60 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v61 = swift_allocObject();
  sub_1005A2E58(v59, v61 + v60);
  v152 = v57;
  v153 = OpaqueTypeConformance2;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v112;
  v64 = v111;
  sub_10079DC44();

  (*(v127 + 8))(v58, v128);
  v65 = (*(v110 + 8))(v56, v64);
  __chkstk_darwin(v65);
  v129 = sub_1001F1160(&qword_100AEBAD0);
  v152 = v64;
  v153 = v62;
  v128 = swift_getOpaqueTypeConformance2();
  v66 = sub_1001F1234(&qword_100AEBAE8);
  v67 = sub_1005A2D00();
  v152 = v66;
  v153 = v67;
  v127 = swift_getOpaqueTypeConformance2();
  v68 = v117;
  sub_10079DBF4();
  (*(v113 + 8))(v63, v68);
  v69 = v131;
  sub_1007A2154();
  v70 = v134;
  sub_100796C94();
  v71 = v132;
  v72 = v135;
  (*(v132 + 16))(v130, v69, v135);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v74 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v75 = v136;
  v76 = v137;
  (*(v136 + 16))(v133, v70, v137);
  v77 = sub_1007A22D4();
  v79 = v78;
  (*(v75 + 8))(v70, v76);
  (*(v71 + 8))(v69, v72);
  v148 = v77;
  v149 = v79;
  v152 = v68;
  v153 = v129;
  v154 = v128;
  v155 = v127;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v119;
  v82 = v121;
  v83 = v103;
  v84 = v142;
  sub_10079D824();

  (*(v118 + 8))(v84, v82);
  v85 = v138;
  sub_10079CFA4();
  v152 = v82;
  v153 = &type metadata for String;
  v154 = v80;
  v155 = v83;
  swift_getOpaqueTypeConformance2();
  v86 = v125;
  sub_10079DA24();
  (*(v139 + 8))(v85, v141);
  return (*(v123 + 8))(v81, v86);
}

uint64_t sub_1005A0ED4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007A01C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1005A0F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AEBB08);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - v6;
  v8 = sub_10079CDD4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1001F1160(&qword_100AEBAF8);
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = v24 - v10;
  v11 = sub_1001F1160(&qword_100AEBAE8);
  __chkstk_darwin(v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v24 - v15;
  if (isPad())
  {
    v17 = sub_10079CD94();
    v24[1] = v24;
    __chkstk_darwin(v17);
    v25 = v7;
    v26 = a2;
    v24[-2] = a1;
    sub_1001F1160(&unk_100ADB8A0);
    v24[0] = v9;
    sub_100005920(&unk_100AF45E0, &unk_100ADB8A0);
    v18 = v27;
    sub_10079BD14();
    v19 = sub_100005920(&qword_100AEBB00, &qword_100AEBAF8);
    v20 = v25;
    v21 = v24[0];
    sub_10079CE24();
    (*(v5 + 16))(v13, v20, v4);
    (*(v5 + 56))(v13, 0, 1, v4);
    v29 = v21;
    v30 = v19;
    swift_getOpaqueTypeConformance2();
    sub_10079CE34();
    sub_100042310(v13);
    (*(v5 + 8))(v20, v4);
    (*(v28 + 8))(v18, v21);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
    v22 = sub_100005920(&qword_100AEBB00, &qword_100AEBAF8);
    v29 = v9;
    v30 = v22;
    swift_getOpaqueTypeConformance2();
    sub_10079CE34();
    sub_100042310(v13);
  }

  sub_1005A2D00();
  sub_10079CE24();
  return sub_100042310(v16);
}

uint64_t sub_1005A13D0(uint64_t a1)
{
  v2 = type metadata accessor for SearchView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10079BB84();
  __chkstk_darwin(v5 - 8);
  sub_10079BB54();
  sub_1005A2DF4(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1005A2E58(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  return sub_10079E064();
}

uint64_t sub_1005A1524(uint64_t a1, char *a2, void *a3)
{
  v4 = *a2;
  result = isPad();
  if ((result & 1) == 0 && (v4 & 1) == 0)
  {
    sub_10000E3E8(a3, a3[3]);
    return sub_1007A0AE4();
  }

  return result;
}

uint64_t sub_1005A157C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10000E3E8(a1, v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);

  return sub_10077139C(v8, v3, v4, a2);
}

unint64_t sub_1005A1680()
{
  result = qword_100AEBA98;
  if (!qword_100AEBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBA98);
  }

  return result;
}

unint64_t sub_1005A16D4()
{
  result = qword_100AEBAA0;
  if (!qword_100AEBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBAA0);
  }

  return result;
}

unint64_t sub_1005A1728()
{
  result = qword_100AEBAA8;
  if (!qword_100AEBAA8)
  {
    sub_1001F1234(&qword_100AEBA70);
    sub_1001F1234(&qword_100AEBA88);
    sub_100005920(&qword_100AEBA90, &qword_100AEBA88);
    swift_getOpaqueTypeConformance2();
    sub_1005A1680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBAA8);
  }

  return result;
}

uint64_t sub_1005A1844()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_100B235E8 = v16;
  unk_100B235F0 = v18;
  return result;
}

uint64_t sub_1005A1ACC()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_100B235F8 = v16;
  unk_100B23600 = v18;
  return result;
}

uint64_t sub_1005A1D44()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_100B23608 = v16;
  unk_100B23610 = v18;
  return result;
}

uint64_t sub_1005A1FC8()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_100B23618 = v16;
  unk_100B23620 = v18;
  return result;
}

uint64_t sub_1005A224C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_100B23628 = v16;
  qword_100B23630 = v18;
  return result;
}

uint64_t sub_1005A24D0()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  v14 = sub_1007A01F4();
  if (v14 > 1u)
  {
    if (v14 != 2)
    {
      sub_1007A2154();
      sub_100796C94();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v1 + 16))(v3, v6, v0);
      v15 = sub_1007A22D4();
      (*(v1 + 8))(v6, v0);
      (*(v8 + 8))(v13, v7);
      return v15;
    }

    if (qword_100AD18A8 != -1)
    {
      swift_once();
    }

    v16 = &qword_100B23618;
    goto LABEL_11;
  }

  if (v14)
  {
    if (qword_100AD18A0 != -1)
    {
      swift_once();
    }

    v16 = &qword_100B23608;
LABEL_11:
    v15 = *v16;

    return v15;
  }

  return v14;
}

uint64_t sub_1005A2844@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v17 = a3;
  v7 = sub_10079C824();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(a1);
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_1000077D8(v6, &v16 - v12, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v13, v17, a2);
  }

  sub_1007A29C4();
  v15 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1005A2A48@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_10079C824();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_1000077D8(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1007A29C4();
    v17 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

unint64_t sub_1005A2D00()
{
  result = qword_100AEBAF0;
  if (!qword_100AEBAF0)
  {
    sub_1001F1234(&qword_100AEBAE8);
    sub_1001F1234(&qword_100AEBAF8);
    sub_100005920(&qword_100AEBB00, &qword_100AEBAF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBAF0);
  }

  return result;
}

uint64_t sub_1005A2DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A2E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A2EBC(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for SearchView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1005A1524(a1, a2, v6);
}

uint64_t sub_1005A2FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005A3000()
{
  v1 = (type metadata accessor for SearchView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1000074E0(v2);

  v3 = v1[10];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079CEE4();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1005A319C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for SearchView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = v4[3];
  v6 = v4[4];
  sub_10000E3E8(v4, v5);
  return a1(v5, v6);
}

unint64_t sub_1005A3220()
{
  result = qword_100AEBB10;
  if (!qword_100AEBB10)
  {
    sub_1001F1234(&qword_100AEBB18);
    sub_1005A16D4();
    sub_1005A1728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBB10);
  }

  return result;
}

uint64_t sub_1005A32AC(uint64_t a1)
{
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v16 = sub_1007A21B4();
  __chkstk_darwin(v16 - 8);
  sub_1007A21A4();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1007A2194(v22);
  v21[1] = a1;
  sub_1007A2174();
  v23._countAndFlagsBits = 0x7365686374616D20;
  v23._object = 0xEE00646E756F6620;
  sub_1007A2194(v23);
  sub_1007A21C4();
  sub_100796C94();
  (*(v10 + 16))(v12, v15, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v5, v8, v2);
  v19 = sub_1007A22D4();
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  return v19;
}

uint64_t sub_1005A35C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100796CF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1007A21D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v15[-v10];
  sub_1007A2154();
  (*(v6 + 16))(v8, v11, v5);
  sub_100796C94();
  sub_1007A22B4();
  (*(v6 + 8))(v11, v5);
  sub_1001F1160(&unk_100AD5090);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10080B690;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_10000E4C4();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v13 = sub_1007A2284();

  return v13;
}

void *BookReaderModuleHost.asset.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___REBookReaderModuleHost_bookProviderService) + OBJC_IVAR___REBookProviderService_bookInfo);
  v2 = v1;
  return v1;
}

uint64_t BookReaderModuleHost.assetViewControllerDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = v1;
    [v3 setAssetViewControllerDelegate:Strong];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*BookReaderModuleHost.assetViewControllerDelegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___REBookReaderModuleHost_assetViewControllerDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1005A3AA4;
}

void sub_1005A3AA4(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[4];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *(v4 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
    if (v5)
    {
      [v5 setAssetViewControllerDelegate:swift_unknownObjectWeakLoadStrong()];
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t BookReaderModuleHost.contentOpenAnimator.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___REBookReaderModuleHost_contentOpenAnimator;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id BookReaderModuleHost.appIntentsInfo.getter()
{
  v1 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1005A3DDC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfo;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  type metadata accessor for BookReaderModuleHost();
  sub_1007A3004();
}

double BookReaderModuleHost.target(forAction:withSender:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = *&v4[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (!v9)
  {
    v18 = ObjectType;
    sub_10000AE20(a2, &v32);
    v19 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v20 = sub_10000E3E8(&v32, *(&v33 + 1));
      v21 = *(v19 - 8);
      v22 = __chkstk_darwin(v20);
      v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      v25 = sub_1007A3AA4();
      (*(v21 + 8))(v24, v19);
      sub_1000074E0(&v32);
    }

    else
    {
      v25 = 0;
    }

    v31.receiver = v4;
    v31.super_class = v18;
    v28 = objc_msgSendSuper2(&v31, "targetForAction:withSender:", a1, v25);
    swift_unknownObjectRelease();
    if (v28)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

LABEL_13:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_14;
  }

  sub_10000AE20(a2, &v32);
  v10 = *(&v33 + 1);
  if (*(&v33 + 1))
  {
    v11 = sub_10000E3E8(&v32, *(&v33 + 1));
    v12 = *(v10 - 8);
    v13 = __chkstk_darwin(v11);
    v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = v9;
    v17 = sub_1007A3AA4();
    (*(v12 + 8))(v15, v10);
    sub_1000074E0(&v32);
  }

  else
  {
    v26 = v9;
    v17 = 0;
  }

  v27 = [v9 targetForAction:a1 withSender:v17];

  swift_unknownObjectRelease();
  if (!v27)
  {

    goto LABEL_13;
  }

  sub_1007A3504();
  swift_unknownObjectRelease();

LABEL_14:
  result = *&v32;
  v30 = v33;
  *a3 = v32;
  a3[1] = v30;
  return result;
}

uint64_t sub_1005A42D4()
{
  sub_1007A3744(27);

  strcpy(v4, "#moduleHost: ");
  HIWORD(v4[1]) = -4864;
  sub_1007A23D4(*(v0 + OBJC_IVAR___REBookReaderModuleHost_hostID));
  v5._countAndFlagsBits = 0x4449746573736120;
  v5._object = 0xEA0000000000203ALL;
  sub_1007A23D4(v5);
  v1 = [*(v0 + OBJC_IVAR___REBookReaderModuleHost_book) assetLogID];
  if (v1)
  {
    v2 = v1;
    sub_1007A2254();
  }

  sub_1001F1160(&qword_100AD4F30);
  v6._countAndFlagsBits = sub_1007A22E4();
  sub_1007A23D4(v6);

  return v4[0];
}

id BookReaderModuleHost.snapshotDuringLiveResize.getter()
{
  v1 = *&v0[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (v1)
  {
    if ([v1 respondsToSelector:"snapshotDuringLiveResize"])
    {
      return [v1 snapshotDuringLiveResize];
    }
  }

  else
  {
    v3 = v0;
    v4 = sub_10079ACC4();
    v5 = sub_1007A29B4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = sub_1005A42D4();
      v10 = sub_1000070F4(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s API called unexpectedly before Book Reader Module intialization", v6, 0xCu);
      sub_1000074E0(v7);
    }
  }

  return 0;
}

id BookReaderModuleHost.open(toLocation:animated:)(uint64_t a1, char a2)
{
  v5 = v2;
  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136446210;
    v10 = sub_1005A42D4();
    v12 = sub_1000070F4(v10, v11, v21);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Open to Location", v8, 0xCu);
    sub_1000074E0(v9);
  }

  v13 = *&v5[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (v13)
  {

    return [v13 openToLocation:a1 animated:a2 & 1];
  }

  else
  {
    v15 = OBJC_IVAR___REBookReaderModuleHost_methodCalls;
    swift_beginAccess();
    v16 = *&v5[v15];
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v5[v15] = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_10066C1F0(0, *(v16 + 2) + 1, 1, v16);
      *&v5[v15] = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_10066C1F0((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[16 * v19];
    *(v20 + 4) = a1;
    v20[40] = a2 & 1 | 0x20;
    *&v5[v15] = v16;
    return swift_endAccess();
  }
}

id sub_1005A48EC(char a1, const char *a2, const char **a3, char a4)
{
  v9 = v4;
  v10 = sub_10079ACC4();
  v11 = sub_1007A29D4();

  if (os_log_type_enabled(v10, v11))
  {
    v28 = a3;
    v12 = a1;
    v13 = a4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 136446210;
    v16 = sub_1005A42D4();
    v18 = sub_1000070F4(v16, v17, v29);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, a2, v14, 0xCu);
    sub_1000074E0(v15);

    a4 = v13;
    a1 = v12;
    a3 = v28;
  }

  v19 = *&v9[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (v19)
  {
    v20 = *a3;

    return [v19 v20];
  }

  else
  {
    v22 = OBJC_IVAR___REBookReaderModuleHost_methodCalls;
    swift_beginAccess();
    v23 = *&v9[v22];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v22] = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_10066C1F0(0, *(v23 + 2) + 1, 1, v23);
      *&v9[v22] = v23;
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_10066C1F0((v25 > 1), v26 + 1, 1, v23);
    }

    *(v23 + 2) = v26 + 1;
    v27 = &v23[16 * v26];
    *(v27 + 4) = a1 & 1;
    v27[40] = a4;
    *&v9[v22] = v23;
    return swift_endAccess();
  }
}

Swift::Void __swiftcall BookReaderModuleHost.close(_:)(Swift::Bool a1)
{
  v3 = v1;
  v4 = sub_10079ACC4();
  v5 = sub_1007A29D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_1005A42D4();
    v10 = sub_1000070F4(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s close", v6, 0xCu);
    sub_1000074E0(v7);
  }

  v11 = *&v3[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (v11)
  {

    [v11 close:a1];
  }
}

Swift::Void __swiftcall BookReaderModuleHost.saveStateClosing(_:)(Swift::Bool a1)
{
  v3 = v1;
  v4 = sub_10079ACC4();
  v5 = sub_1007A29D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446466;
    v8 = sub_1005A42D4();
    v10 = sub_1000070F4(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s saveStateClosing: %{BOOL}d", v6, 0x12u);
    sub_1000074E0(v7);
  }

  v11 = *&v3[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (v11)
  {

    [v11 saveStateClosing:a1];
  }
}

Swift::Void __swiftcall BookReaderModuleHost.saveStateClosing(_:suspending:)(Swift::Bool _, Swift::Bool suspending)
{
  v5 = v2;
  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446722;
    v10 = sub_1005A42D4();
    v12 = sub_1000070F4(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;
    *(v8 + 14) = _;
    *(v8 + 18) = 1024;
    *(v8 + 20) = suspending;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s saveStateClosing: %{BOOL}d suspending: %{BOOL}d", v8, 0x18u);
    sub_1000074E0(v9);
  }

  v13 = sub_1005AA0A0();
  if (v13)
  {

    [v13 saveStateClosing:_ suspending:suspending];
  }
}

id BookReaderModuleHost.dismissShouldBegin(_:)(id a1)
{
  v3 = *(v1 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3)
  {
    return [v3 dismissShouldBegin:a1];
  }

  else
  {
    return [a1 proposedBeginState];
  }
}

id sub_1005A526C(const char **a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController))
  {
    v3 = *a1;
    v4 = *(v2 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);

    return [v4 v3];
  }

  else
  {
    v7 = OBJC_IVAR___REBookReaderModuleHost_methodCalls;
    swift_beginAccess();
    v8 = *(v2 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_10066C1F0(0, *(v8 + 2) + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_10066C1F0((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = a2;
    v12[40] = 0x80;
    *(v2 + v7) = v8;
    return swift_endAccess();
  }
}

Swift::Void __swiftcall BookReaderModuleHost.assetViewControllerWillAddView()()
{
  v1 = v0;
  v2 = sub_10079ACC4();
  v3 = sub_1007A29D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    v6 = sub_1005A42D4();
    v8 = sub_1000070F4(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s assetViewControllerWillAddView", v4, 0xCu);
    sub_1000074E0(v5);
  }

  sub_1005A54F0();
}

void sub_1005A54F0()
{
  v1 = sub_1007A1D04();
  __chkstk_darwin(v1);
  v5 = OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController;
  if (!*&v0[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController])
  {
    v81 = (&v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v82 = v4;
    v83 = v2;
    v6 = v0;
    v7 = sub_10079ACC4();
    v8 = sub_1007A29D4();

    v9 = os_log_type_enabled(v7, v8);
    v78 = v5;
    if (v9)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v85[0] = v11;
      *v10 = 136446210;
      v12 = sub_1005A42D4();
      v14 = sub_1000070F4(v12, v13, v85);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s initializeReaderModule", v10, 0xCu);
      sub_1000074E0(v11);
    }

    v79 = v0;
    v15 = [objc_opt_self() sharedInstance];
    if (v15)
    {
      v16 = v15;
      sub_1007A1024();
      v17 = objc_allocWithZone(type metadata accessor for LightLevelControllerWrapper());
      v18 = sub_100027D40(v16);
      sub_100017D44(&qword_100AE89F0, type metadata accessor for LightLevelControllerWrapper);
      sub_1007A0FC4();

      v84 = sub_1007A1014();
      v19 = *&v6[OBJC_IVAR___REBookReaderModuleHost_hostEnvironmentProvider];
      v20 = [v19 traitCollection];
      sub_1007A0FD4();
      v21 = type metadata accessor for BookReaderModuleFactory();
      v22 = *&v6[OBJC_IVAR___REBookReaderModuleHost_bookProviderService];
      v23 = *&v6[OBJC_IVAR___REBookReaderModuleHost_book];
      v24 = *&v6[OBJC_IVAR___REBookReaderModuleHost_annotationProvider];
      v25 = *&v6[OBJC_IVAR___REBookReaderModuleHost_storeController];
      v26 = *&v6[OBJC_IVAR___REBookReaderModuleHost_styleManager];
      v80 = *&v6[OBJC_IVAR___REBookReaderModuleHost_engagementManager];
      v27 = v80;
      v28 = swift_allocObject();
      v28[2] = v21;
      v28[3] = v19;
      v28[4] = v22;
      v28[5] = v23;
      v28[6] = v24;
      v28[7] = v25;
      v28[8] = v26;
      v28[9] = v6;
      v28[10] = v27;
      v28[11] = v84;
      sub_10000A7C4(0, &qword_100AD1E10);
      v29 = v6;
      swift_unknownObjectRetain();
      v30 = v22;
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v35 = v80;

      v36 = sub_1007A2D74();
      v38 = v81;
      v37 = v82;
      *v81 = v36;
      v39 = v83;
      (*(v37 + 104))(v38, enum case for DispatchPredicate.onQueue(_:), v83);
      LOBYTE(v19) = sub_1007A1D34();
      (*(v37 + 8))(v38, v39);
      if (v19)
      {

        sub_1005AA978(v85);

        v40 = *&v85[0];
        v42 = v78;
        v41 = v79;
        v43 = *&v79[v78];
        *&v79[v78] = v85[0];
        v44 = v40;

        Strong = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        sub_10001CB44(Strong);

        v46 = *&v41[v42];
        if (!v46)
        {
          goto LABEL_18;
        }

        swift_beginAccess();
        [v46 setAssetViewControllerDelegate:swift_unknownObjectWeakLoadStrong()];
        swift_unknownObjectRelease();
        v47 = *&v41[v42];
        if (!v47)
        {
          goto LABEL_18;
        }

        v48 = OBJC_IVAR___REBookReaderModuleHost_contentOpenAnimator;
        swift_beginAccess();
        [v47 setContentOpenAnimator:*&v29[v48]];
        v49 = *&v41[v42];
        if (!v49)
        {
          goto LABEL_18;
        }

        v50 = v49;
        v51 = [v50 view];
        if (!v51)
        {
          v52 = v50;
          goto LABEL_17;
        }

        v52 = v51;
        [v29 addChildViewController:v50];
        [v50 didMoveToParentViewController:v29];
        [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
        v53 = [v29 view];
        if (v53)
        {
          v54 = v53;
          [v53 addSubview:v52];

          sub_1001F1160(&unk_100AD8160);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_100816E30;
          v56 = [v52 topAnchor];
          v57 = [v29 view];
          if (v57)
          {
            v58 = v57;
            v59 = [v57 topAnchor];

            v60 = [v56 constraintEqualToAnchor:v59];
            *(v55 + 32) = v60;
            v61 = [v52 bottomAnchor];
            v62 = [v29 view];
            if (v62)
            {
              v63 = v62;
              v64 = [v62 bottomAnchor];

              v65 = [v61 constraintEqualToAnchor:v64];
              *(v55 + 40) = v65;
              v66 = [v52 leadingAnchor];
              v67 = [v29 view];
              if (v67)
              {
                v68 = v67;
                v69 = [v67 leadingAnchor];

                v70 = [v66 constraintEqualToAnchor:v69];
                *(v55 + 48) = v70;
                v71 = [v52 trailingAnchor];
                v72 = [v29 view];
                if (v72)
                {
                  v73 = v72;
                  v74 = [v72 trailingAnchor];

                  v75 = [v71 constraintEqualToAnchor:v74];
                  *(v55 + 56) = v75;
                  v76 = objc_opt_self();
                  sub_10000A7C4(0, &qword_100AE9010);
                  isa = sub_1007A25D4().super.isa;
                  [v76 activateConstraints:isa];

                  *&v29[OBJC_IVAR___REBookReaderModuleHost_readerHostViewConstraints] = v55;

                  sub_1005A9708();

LABEL_17:
LABEL_18:

                  return;
                }

LABEL_26:
                __break(1u);
                return;
              }

LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }
}

Swift::Void __swiftcall BookReaderModuleHost.assetViewControllerPrepareForReload()()
{
  v1 = v0;
  v2 = sub_10079ACC4();
  v3 = sub_1007A29D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_1005A42D4();
    v8 = sub_1000070F4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s assetViewControllerPrepareForReload", v4, 0xCu);
    sub_1000074E0(v5);
  }

  v9 = sub_1005AA0A0();
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector:"assetViewControllerPrepareForReload"])
    {

      [v10 assetViewControllerPrepareForReload];
    }
  }
}

Swift::Void __swiftcall BookReaderModuleHost.setAssetIsPreordered(_:)(NSNumber_optional a1)
{
  isa = a1.value.super.super.isa;
  v3 = *(v1 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3)
  {

    [v3 setAssetIsPreordered:isa];
  }

  else
  {
    v4 = OBJC_IVAR___REBookReaderModuleHost_methodCalls;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v6 = isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v4) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_10066C1F0(0, *(v5 + 2) + 1, 1, v5);
      *(v1 + v4) = v5;
    }

    v9 = *(v5 + 2);
    v8 = *(v5 + 3);
    if (v9 >= v8 >> 1)
    {
      v5 = sub_10066C1F0((v8 > 1), v9 + 1, 1, v5);
    }

    *(v5 + 2) = v9 + 1;
    v10 = &v5[16 * v9];
    *(v10 + 4) = isa;
    v10[40] = 96;
    *(v1 + v4) = v5;
    swift_endAccess();
  }
}

Swift::Void __swiftcall BookReaderModuleHost.assetViewControllerDidOpen(animated:)(Swift::Bool animated)
{
  v3 = v1;
  v4 = sub_10079ACC4();
  v5 = sub_1007A29D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_1005A42D4();
    v10 = sub_1000070F4(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s assetViewControllerDidOpen", v6, 0xCu);
    sub_1000074E0(v7);
  }

  v11 = sub_1005AA0A0();
  if (v11)
  {
    v12 = v11;
    if ([v11 respondsToSelector:"assetViewControllerDidOpenAnimated:"])
    {

      [v12 assetViewControllerDidOpenAnimated:animated];
    }
  }
}

uint64_t sub_1005A62DC(const char *a1, const char **a2, uint64_t a3)
{
  v7 = v3;
  v8 = sub_10079ACC4();
  v9 = sub_1007A29D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136446210;
    v12 = sub_1005A42D4();
    v14 = sub_1000070F4(v12, v13, v24);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 0xCu);
    sub_1000074E0(v11);
  }

  v15 = *&v7[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (v15)
  {
    result = [*&v7[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController] respondsToSelector:*a2];
    if (result)
    {
      v17 = *a2;

      return [v15 v17];
    }
  }

  else
  {
    v18 = OBJC_IVAR___REBookReaderModuleHost_methodCalls;
    swift_beginAccess();
    v19 = *&v7[v18];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v7[v18] = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_10066C1F0(0, *(v19 + 2) + 1, 1, v19);
      *&v7[v18] = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_10066C1F0((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[16 * v22];
    *(v23 + 4) = a3;
    v23[40] = 0x80;
    *&v7[v18] = v19;
    return swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall BookReaderModuleHost.assetViewControllerDidEnterBackground()()
{
  v1 = v0;
  v2 = sub_10079ACC4();
  v3 = sub_1007A29D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = sub_1005A42D4();
    v8 = sub_1000070F4(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s assetViewControllerDidEnterBackground", v4, 0xCu);
    sub_1000074E0(v5);
  }

  v9 = *&v1[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (v9 && ([v9 respondsToSelector:"assetViewControllerDidEnterBackground"] & 1) != 0)
  {

    [v9 assetViewControllerDidEnterBackground];
  }
}

Swift::Void __swiftcall BookReaderModuleHost.assetViewControllerDidClose(animated:)(Swift::Bool animated)
{
  v3 = v1;
  v4 = sub_10079ACC4();
  v5 = sub_1007A29D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136446210;
    v8 = sub_1005A42D4();
    v10 = sub_1000070F4(v8, v9, v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s assetViewControllerDidClose", v6, 0xCu);
    sub_1000074E0(v7);
  }

  v11 = &v3[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  v12 = *&v3[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (v12)
  {
    if ([*&v3[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController] respondsToSelector:"assetViewControllerDidCloseAnimated:"])
    {
      [v12 assetViewControllerDidCloseAnimated:animated];
    }

    v13 = *v11;
    if (*v11)
    {
      v14 = OBJC_IVAR___REBookReaderModuleHost_readerHostViewConstraints;
      if (*&v3[OBJC_IVAR___REBookReaderModuleHost_readerHostViewConstraints])
      {
        v15 = OBJC_IVAR___REBookReaderModuleHost_fixedSizeConstraints;
        swift_beginAccess();
        if (*&v3[v15])
        {
          v16 = objc_opt_self();
          sub_10000A7C4(0, &qword_100AE9010);
          v17 = v13;

          isa = sub_1007A25D4().super.isa;

          [v16 deactivateConstraints:isa];

          v19 = sub_1007A25D4().super.isa;

          [v16 deactivateConstraints:v19];

          *&v3[v14] = 0;

          *&v3[v15] = 0;

          [v17 willMoveToParentViewController:0];
          v20 = [v17 viewIfLoaded];
          [v20 removeFromSuperview];

          [v3 removeChildViewController:v17];
          v21 = *v11;
          *v11 = 0;
          *(v11 + 1) = 0;

          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          sub_10001CB44(Strong);
        }
      }
    }
  }
}

Swift::Int __swiftcall BookReaderModuleHost.pageCountIncludingUpsell()()
{
  v1 = *(v0 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (!v1)
  {
    return 1;
  }

  if (([v1 respondsToSelector:"pageCountIncludingUpsell"] & 1) == 0)
  {
    return 0;
  }

  return [v1 pageCountIncludingUpsell];
}

void BookReaderModuleHost.didPurchase(withProductProfile:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = sub_10079ACC4();
  v9 = sub_1007A29D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136446210;
    v12 = sub_1005A42D4();
    v14 = sub_1000070F4(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s didPurchase", v10, 0xCu);
    sub_1000074E0(v11);
  }

  v15 = sub_1005AA0A0();
  if (v15)
  {
    v16 = v15;
    v19[4] = a2;
    v19[5] = a3;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_1003323D0;
    v19[3] = &unk_100A24158;
    v17 = _Block_copy(v19);
    v18 = v16;

    [v18 didPurchaseWithProductProfile:a1 completion:v17];

    _Block_release(v17);
  }
}

Swift::Void __swiftcall BookReaderModuleHost.setBuyButtonProgress(_:)(Swift::Float a1)
{
  v3 = v1;
  v4 = sub_10079ACC4();
  v5 = sub_1007A29D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    v8 = sub_1005A42D4();
    v10 = sub_1000070F4(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s setBuyButtonProgress: %f", v6, 0x16u);
    sub_1000074E0(v7);
  }

  v11 = sub_1005AA0A0();
  if (v11)
  {
    v12 = v11;
    if ([v11 respondsToSelector:"setBuyButtonProgress:"])
    {
      *&v13 = a1;

      [v12 setBuyButtonProgress:v13];
    }
  }
}