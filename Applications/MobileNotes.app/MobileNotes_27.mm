double sub_1003AD7C0(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
  [v1 setAllowsSelectionDuringEditing:v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration] == 1];
  [v1 setAllowsMultipleSelectionDuringEditing:{objc_msgSend(v1, "allowsSelectionDuringEditing")}];
  v43.receiver = v1;
  v43.super_class = ObjectType;
  if (objc_msgSendSuper2(&v43, "isEditing") == v2 || *v4 == 1)
  {
    sub_1003AC28C(0, 0, 0);
  }

  else
  {
    v42.receiver = v1;
    v42.super_class = ObjectType;
    if (objc_msgSendSuper2(&v42, "isEditing"))
    {
      v6 = v4[16];
      v7 = &v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_previousNonEditingConfiguration];
      *v7 = *v4;
      v7[16] = v6;
      v8 = *v4;
      LOBYTE(v7) = v4[1];
      v9 = v4[2];
      v10 = v4[3];
      v11 = v4[4];
      v12 = v4[5];
      v13 = *(v4 + 1);
      v14 = v4[16];
      *v4 = 2;
      *(v4 + 1) = 0;
      *(v4 + 1) = 0;
      v4[5] = 0;
      v4[16] = 1;
      v15 = (v7 & 1) == 0;
      v16 = 256;
      if (v15)
      {
        v16 = 0;
      }

      v17 = v16 | v8;
      v18 = 0x10000;
      if ((v9 & 1) == 0)
      {
        v18 = 0;
      }

      v19 = 0x1000000;
      if ((v10 & 1) == 0)
      {
        v19 = 0;
      }

      v20 = v17 | v18 | v19;
      v21 = &_mh_execute_header;
      if ((v11 & 1) == 0)
      {
        v21 = 0;
      }

      v22 = 0x10000000000;
      if ((v12 & 1) == 0)
      {
        v22 = 0;
      }

      sub_1003ABBAC(v20 | v21 | v22, v13, v14 & 1);
    }

    else
    {
      v23 = &v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_previousNonEditingConfiguration];
      v24 = *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_previousNonEditingConfiguration];
      if ((v24 & 0xFF00) == 0x200)
      {
        v25 = 0;
        v26 = 1;
        v24 = 16842752;
      }

      else
      {
        v26 = v23[16];
        v25 = *(v23 + 1);
      }

      v27 = *v4;
      v28 = v4[1];
      v29 = v4[2];
      v30 = v4[3];
      v31 = v4[4];
      v32 = v4[5];
      v33 = *(v4 + 1);
      v34 = v4[16];
      *v4 = v24;
      *(v4 + 1) = v25;
      v4[16] = v26;
      v35 = 256;
      if ((v28 & 1) == 0)
      {
        v35 = 0;
      }

      v36 = v35 | v27;
      v37 = 0x10000;
      if ((v29 & 1) == 0)
      {
        v37 = 0;
      }

      v38 = 0x1000000;
      if ((v30 & 1) == 0)
      {
        v38 = 0;
      }

      v39 = v36 | v37 | v38;
      v40 = &_mh_execute_header;
      if ((v31 & 1) == 0)
      {
        v40 = 0;
      }

      v41 = 0x10000000000;
      if ((v32 & 1) == 0)
      {
        v41 = 0;
      }

      sub_1003ABBAC(v39 | v40 | v41, v33, v34 & 1);
      *&result = 512;
      *v23 = xmmword_100546C70;
      v23[16] = 0;
    }
  }

  return result;
}

char *sub_1003ADAD4(unint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v50 = BYTE5(a1);
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_selectionDidChange];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_dataDidChange];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_defaultAccountObjectID] = 0;
  v7 = objc_opt_self();
  v8 = [v7 sharedContext];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 workerManagedObjectContext];
  }

  else
  {
    v10 = 0;
  }

  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_workerContext] = v10;
  v11 = [v7 sharedContext];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 managedObjectContext];
  }

  else
  {
    v13 = 0;
  }

  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_viewContext] = v13;
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_presentingViewController] = 0;
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelectionBeforeDrag] = 0;
  v14 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_sizingCell;
  type metadata accessor for TagCell();
  *&v3[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagObjectID] = 0;
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_renameTagAction] = 0;
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDeletionViewController] = 0;
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagRenameViewController] = 0;
  v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasLoaded] = 0;
  v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasAppliedInitialTagSelection] = 0;
  v15 = &v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_previousNonEditingConfiguration];
  *v15 = xmmword_100546C70;
  v15[16] = 0;
  v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_allowsContextualMenu] = 1;
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_listLayoutExtraHeightPadding] = 0x4028000000000000;
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_lastEvaluatedTagVisibilityWidth] = 0;
  v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_isRenamingTags] = 0;
  v16 = &v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_currentRenamedTagInfo];
  *v16 = 1;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = 0;
  v17 = &v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_accessibilityProvider];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView____lazy_storage___tagSizingLabel] = 0;
  v18 = [v7 sharedContext];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 workerManagedObjectContext];
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(ICTagSelection) initWithManagedObjectContext:v20];

  *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] = v21;
  v22 = &v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
  *v22 = a1;
  v22[2] = BYTE2(a1);
  v22[3] = BYTE3(a1);
  v22[4] = v45;
  v22[5] = BYTE5(a1);
  *(v22 + 3) = HIWORD(a1);
  *(v22 + 1) = a2;
  v22[16] = a3;
  v23 = 256;
  if (((a1 >> 8) & 1) == 0)
  {
    v23 = 0;
  }

  v24 = 0x10000;
  if (((a1 >> 16) & 1) == 0)
  {
    v24 = 0;
  }

  v25 = 0x1000000;
  if (((a1 >> 24) & 1) == 0)
  {
    v25 = 0;
  }

  v26 = &_mh_execute_header;
  if ((v45 & 1) == 0)
  {
    LODWORD(v26) = 0;
  }

  v27 = sub_1003B6BA8(_swiftEmptyArrayStorage, (v23 | v24 | v25 | v26) & 0xFFFFFF00 | a1);
  v49.receiver = v3;
  v49.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v49, "initWithFrame:collectionViewLayout:", v27, 0.0, 0.0, 0.0, 0.0);

  v29 = v28;
  [v29 setScrollEnabled:0];
  [v29 setAllowsMultipleSelection:1];
  [v29 setAlpha:1.0];
  v30 = &v29[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_previousNonEditingConfiguration];
  *v30 = a1;
  *(v30 + 1) = a2;
  v30[16] = a3;
  v31 = *&v29[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_workerContext];
  if (v31)
  {
    v32 = *&v29[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_viewContext];
    if (v32)
    {
      v33 = objc_allocWithZone(type metadata accessor for TagDataSource());
      v34 = v29;
      v35 = v31;
      v36 = v32;
      v37 = sub_1003583F0(v34, v35, v36);
      v38 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
      swift_beginAccess();
      v39 = *&v34[v38];
      *&v34[v38] = v37;

      if (v50 == 1)
      {
        v40 = *&v34[v38];
        if (v40)
        {
          v41 = [v40 indexer];
          [v41 reloadDataAndWait];
        }
      }

      v42 = [objc_opt_self() defaultCenter];
      [v42 addObserver:v34 selector:"dataSourceDidUpdate:" name:ICDataSourceDataDidUpdateNotification object:*&v34[v38]];
    }
  }

  v43 = [objc_opt_self() clearColor];
  [v29 setBackgroundColor:v43];

  [v29 setDelegate:v29];
  [v29 setDropDelegate:v29];
  [v29 setAllowsFocus:0];

  sub_1000054A4(0, &qword_1006BDAB0);
  static UITraitCollection.traitsAffectingSize.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v29;
}

void sub_1003AE104()
{
  v1 = &v0[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
  if (v0[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration] == 1)
  {
    v2 = sub_1003AF290();
    v3 = 256;
    if ((v1[1] & 1) == 0)
    {
      v3 = 0;
    }

    v4 = v3 | *v1;
    v5 = 0x10000;
    if ((v1[2] & 1) == 0)
    {
      v5 = 0;
    }

    v6 = 0x1000000;
    if ((v1[3] & 1) == 0)
    {
      v6 = 0;
    }

    v7 = v4 | v5 | v6;
    v8 = &_mh_execute_header;
    if ((v1[4] & 1) == 0)
    {
      LODWORD(v8) = 0;
    }

    v9 = sub_1003B6BA8(v2, v7 | v8);

    [v0 setCollectionViewLayout:v9];
  }

  sub_1003ABF94(1);
  v10 = *&v0[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_dataDidChange];
  if (v10)
  {

    v10(v11);

    sub_10000C840(v10);
  }
}

void sub_1003AE2C8(void *a1)
{
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource) = 0;
  v2 = (v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_selectionDidChange);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_dataDidChange);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_defaultAccountObjectID) = 0;
  v4 = objc_opt_self();
  v5 = [v4 sharedContext];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 workerManagedObjectContext];
  }

  else
  {
    v7 = 0;
  }

  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_workerContext) = v7;
  v8 = [v4 sharedContext];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 managedObjectContext];
  }

  else
  {
    v10 = 0;
  }

  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_viewContext) = v10;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_presentingViewController) = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelectionBeforeDrag) = 0;
  v11 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_sizingCell;
  type metadata accessor for TagCell();
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagObjectID) = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_renameTagAction) = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDeletionViewController) = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagRenameViewController) = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasLoaded) = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasAppliedInitialTagSelection) = 0;
  v12 = v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_previousNonEditingConfiguration;
  *v12 = xmmword_100546C70;
  *(v12 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_allowsContextualMenu) = 1;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_listLayoutExtraHeightPadding) = 0x4028000000000000;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_lastEvaluatedTagVisibilityWidth) = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_isRenamingTags) = 0;
  v13 = (v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_currentRenamedTagInfo);
  *v13 = 1;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0;
  v14 = v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_accessibilityProvider;
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView____lazy_storage___tagSizingLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003AE544()
{
  v1 = &v0[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_currentRenamedTagInfo];
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_currentRenamedTagInfo];
  if (v2 >= 2)
  {
    v3 = [v2 objectID];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 window];
      v46 = [v5 rootViewController];

      v6 = [v0 ic_viewControllerManager];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 noteEditorViewController];

        v44 = [v8 eventReporter];
      }

      else
      {
        v44 = 0;
      }

      v43 = type metadata accessor for TagCreateOrRenameAlertController();
      v9 = objc_allocWithZone(v43);
      *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_accountObjectID] = 0;
      v10 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController;
      *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController] = 0;
      v11 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID;
      *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID] = 0;
      v12 = &v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_renameMethod];
      *v12 = 0;
      v12[8] = 0;
      v13 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_sizingCell;
      type metadata accessor for TagCell();
      v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v45 = v4;
      v40 = v4;
      v42 = v46;
      *&v9[v13] = [v14 init];
      v15 = objc_opt_self();
      v16 = [v15 sharedContext];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 workerManagedObjectContext];
      }

      else
      {
        v18 = 0;
      }

      *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_workerContext] = v18;
      v19 = [v15 sharedContext];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 managedObjectContext];
      }

      else
      {
        v21 = 0;
      }

      *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_viewContext] = v21;
      *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField] = 0;
      *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagAction] = 0;
      v22 = *&v9[v11];
      *&v9[v11] = v45;
      v23 = v41;

      v24 = *&v9[v10];
      *&v9[v10] = v46;
      v25 = v42;

      *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_eventReporter] = v44;
      *v12 = 1;
      v12[8] = 0;
      v47.receiver = v9;
      v47.super_class = v43;
      v26 = objc_msgSendSuper2(&v47, "init");

      v27 = 0;
      v28 = 0;
      if (*v1 != 1)
      {
        v27 = *(v1 + 1);
        v28 = *(v1 + 2);
      }

      v29 = swift_allocObject();
      v30 = v0;
      swift_unknownObjectWeakInit();

      v31 = sub_1003A5870(v27, v28, sub_1003B93D0, v29);

      if (v31)
      {
        v32 = [v31 presentationController];
        if (v32)
        {
          v33 = v32;
          if (*v1 == 1 || (v34 = *(v1 + 3)) == 0)
          {
            v35 = 0;
          }

          else
          {
            v35 = v34;
          }

          [v33 setSourceView:v35];
        }

        if (*v1 != 1)
        {
          v36 = *(v1 + 3);
          if (v36)
          {
            [*(v36 + OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField) resignFirstResponder];
          }
        }

        v37 = [v30 window];
        if (v37)
        {
          v38 = v37;
          v39 = [v37 rootViewController];

          if (v39)
          {
            [v39 presentViewController:v31 animated:1 completion:0];
          }
        }

        *(v30 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_isRenamingTags) = 0;
      }

      else
      {
      }
    }
  }
}

void sub_1003AE9DC(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*&Strong[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_currentRenamedTagInfo] != 1)
      {
        v2 = *&Strong[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_currentRenamedTagInfo + 24];
        if (v2)
        {
          v3 = Strong;
          v4 = v2;

          sub_100367034();
          Strong = v4;
        }
      }
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v5[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_isRenamingTags] = 0;
  }
}

void sub_1003AEA9C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong collectionViewLayout];

    [v5 invalidateLayout];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1003AC28C(0, 0, 0);
  }

  if (a2)
  {
    a2();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v8[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasLoaded] = 1;
  }
}

void sub_1003AEBAC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, void *a8)
{
  LODWORD(v9) = a7;
  v43 = a4;
  v44 = a5;
  v45 = a3;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v42 = a2;
    if (a2 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v35 = a6;
      v36 = v15;
      v37 = v17;
      v38 = v9;
      v39 = v13;
      v40 = v12;
      v41 = a8;
      a6 = 0;
      v12 = v42;
      v17 = (v42 & 0xC000000000000001);
      v15 = (v42 & 0xFFFFFFFFFFFFFF8);
      a8 = v45;
      while (1)
      {
        if (v17)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a6 >= *(v15 + 2))
          {
            goto LABEL_26;
          }

          v21 = *(v12 + 8 * a6 + 32);
        }

        v20 = v21;
        v22 = (a6 + 1);
        if (__OFADD__(a6, 1))
        {
          break;
        }

        v13 = [a8 objectWithID:v21];
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (!v23)
        {
          v19 = v20;
          v20 = v13;
LABEL_6:

          goto LABEL_7;
        }

        v24 = [v23 standardizedContent];
        if (!v24)
        {
          v19 = v13;
          goto LABEL_6;
        }

        v9 = v24;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        if (v25 == v43 && v27 == v44)
        {

          goto LABEL_24;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v29)
        {
          goto LABEL_24;
        }

        a8 = v45;
        v12 = v42;
LABEL_7:

        ++a6;
        if (v22 == i)
        {
          v20 = 0;
LABEL_24:
          v12 = v40;
          a8 = v41;
          v13 = v39;
          LOBYTE(v9) = v38;
          v15 = v36;
          v17 = v37;
          a6 = v35;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v20 = 0;
LABEL_29:
    v30 = [a6 collectionViewDiffableDataSource];
    v46 = v20;
    sub_10015DA04(&unk_1006BFED0);
    v31 = [v30 indexPathForItemIdentifier:Optional._bridgeToObjectiveC()()];

    v32 = swift_unknownObjectRelease();
    if (v31)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v17 selectItemAtIndexPath:isa animated:v9 & 1 scrollPosition:0];

      sub_1003B7210();
      v32 = (*(v13 + 1))(v15, v12);
    }

    if (a8)
    {
      (a8)(v32);
    }
  }
}

void sub_1003AEF9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003AF0EC();
    v2 = *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView____lazy_storage___tagSizingLabel];
    *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView____lazy_storage___tagSizingLabel] = v3;

    v4 = &v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
    if (v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration] == 2)
    {
      v5 = sub_1003AFA38();
    }

    else
    {
      v6 = sub_1003AF290();
      v7 = 256;
      if ((v4[1] & 1) == 0)
      {
        v7 = 0;
      }

      v8 = v7 | *v4;
      v9 = 0x10000;
      if ((v4[2] & 1) == 0)
      {
        v9 = 0;
      }

      v10 = 0x1000000;
      if ((v4[3] & 1) == 0)
      {
        v10 = 0;
      }

      v11 = v8 | v9 | v10;
      v12 = &_mh_execute_header;
      if ((v4[4] & 1) == 0)
      {
        LODWORD(v12) = 0;
      }

      v5 = sub_1003B6BA8(v6, v11 | v12);
    }

    [v1 setCollectionViewLayout:v5];

    [v1 reloadData];
    sub_1003ABF94(0);
  }
}

void sub_1003AF0EC()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultMetrics];
  v3 = [v0 traitCollection];
  [v2 scaledValueForValue:v3 compatibleWithTraitCollection:48.0];
  v5 = v4;

  v6 = [v1 defaultMetrics];
  v7 = [v0 traitCollection];
  [v6 scaledValueForValue:v7 compatibleWithTraitCollection:34.0];
  v9 = v8;

  v10 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, v5, v9}];
  v11 = [objc_opt_self() ic_preferredFontForStyle:UIFontTextStyleSubheadline symbolicTraits:2];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 ic_fontWithSingleLineA];

    if (v13)
    {
      [v10 setFont:v13];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_1003AF290()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = [v3 collectionViewDiffableDataSource];
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = v4;
    v7 = [v4 snapshot];
    v8 = [v7 itemIdentifiers];

    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = *(v9 + 16);
    if (v10)
    {
      v18 = _swiftEmptyArrayStorage;
      sub_100189624(0, v10, 0);
      v5 = _swiftEmptyArrayStorage;
      v11 = v9 + 32;
      do
      {
        sub_10000A2A0(v11, v17);
        sub_1003AF440(v17);
        v13 = v12;
        sub_100009F60(v17);
        v18 = v5;
        v15 = v5[2];
        v14 = v5[3];
        if (v15 >= v14 >> 1)
        {
          sub_100189624((v14 > 1), v15 + 1, 1);
          v5 = v18;
        }

        v5[2] = v15 + 1;
        v5[v15 + 4] = v13;
        v11 += 32;
        --v10;
      }

      while (v10);
    }

    else
    {
    }
  }

  return v5;
}

uint64_t sub_1003AF440(uint64_t a1)
{
  v2 = v1;
  sub_10000A2A0(a1, aBlock);
  sub_1000054A4(0, &qword_1006C4B30);
  if (swift_dynamicCast())
  {

    v4 = *&v2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_sizingCell];
    +[ICTagCell newTagImage]_0();
    sub_10047E78C(v5);
    v6 = objc_opt_self();
    v7 = [v6 defaultMetrics];
    v8 = [v2 traitCollection];
    [v7 scaledValueForValue:v8 compatibleWithTraitCollection:48.0];
    v10 = v9;

    v11 = [v6 defaultMetrics];
    v12 = [v2 traitCollection];
    [v11 scaledValueForValue:v12 compatibleWithTraitCollection:34.0];
    v14 = v13;

    LODWORD(v15) = 1112014848;
    LODWORD(v16) = 1112014848;
    [v4 systemLayoutSizeFittingSize:v10 withHorizontalFittingPriority:v14 verticalFittingPriority:{v15, v16}];
    v17 = 0;
LABEL_6:
    [v2 frame];
    CGRectGetWidth(v47);
    return sub_10000C840(v17);
  }

  v45 = 0;
  v46 = 0;
  sub_10000A2A0(a1, aBlock);
  sub_1000054A4(0, &qword_1006C4B38);
  if (swift_dynamicCast())
  {

    v18 = [objc_opt_self() displayText];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v45 = v19;
    v46 = v21;

    v17 = 0;
    if (v21)
    {
LABEL_5:

      v22 = sub_1003AF9D8();
      v23 = String._bridgeToObjectiveC()();

      [v22 setText:v23];

      v24 = *&v2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView____lazy_storage___tagSizingLabel];
      v25 = objc_opt_self();
      v26 = v24;
      v27 = [v25 defaultMetrics];
      v28 = [v2 traitCollection];
      [v27 scaledValueForValue:v28 compatibleWithTraitCollection:34.0];
      v30 = v29;

      LODWORD(v31) = 1112014848;
      LODWORD(v32) = 1148846080;
      [v26 systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width withHorizontalFittingPriority:v30 verticalFittingPriority:{v31, v32}];

      goto LABEL_6;
    }

    return sub_10000C840(v17);
  }

  sub_10000A2A0(a1, aBlock);
  sub_1000054A4(0, &qword_1006BFEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v34 = v44;
  v35 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v36 = *&v2[v35];
  if (!v36)
  {
  }

  v37 = *(v36 + OBJC_IVAR____TtC11MobileNotes13TagDataSource_modernBackgroundManagedObjectContext);
  if (![v34 ic_isHashtagType])
  {
  }

  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = v34;
  v38[4] = &v45;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1003B7750;
  *(v39 + 24) = v38;
  aBlock[4] = sub_10000EFBC;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_10065ACC8;
  v40 = _Block_copy(aBlock);
  v41 = v37;
  v42 = v34;

  [v41 performBlockAndWait:v40];

  _Block_release(v40);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if ((v42 & 1) == 0)
  {
    v17 = sub_1003B7750;
    if (v46)
    {
      goto LABEL_5;
    }

    return sub_10000C840(v17);
  }

  __break(1u);
  return result;
}

id sub_1003AF9D8()
{
  v1 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView____lazy_storage___tagSizingLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView____lazy_storage___tagSizingLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView____lazy_storage___tagSizingLabel);
  }

  else
  {
    sub_1003AF0EC();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1003AFA38()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 ic_viewControllerManager];
  if (v10 && (v11 = v10, v12 = [v10 hasCompactWidth], v11, (v12 & 1) != 0))
  {
    v13 = &enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:);
  }

  else
  {
    v13 = &enum case for UICollectionLayoutListConfiguration.Appearance.sidebar(_:);
  }

  (*(v3 + 104))(v5, *v13, v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  sub_1000054A4(0, &qword_1006C2B20);
  v14 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1003AFC7C(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = [a1 ic_existingObjectWithID:a2];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 displayText];
      if (v7)
      {
        v8 = v7;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v9 = String._bridgeToObjectiveC()();

        v10 = [v9 ic_withHashtagPrefix];

        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        goto LABEL_7;
      }
    }
  }

  v11 = 0;
  v13 = 0;
LABEL_7:
  *a3 = v11;
  a3[1] = v13;
}

id sub_1003AFD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  (*(v5 + 32))(v8 + v7, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v9 = objc_opt_self();

  v10 = [v9 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1003B75FC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003B0774;
  aBlock[3] = &unk_10065ABD8;
  v14 = _Block_copy(aBlock);
  v15 = [objc_opt_self() contextualActionWithStyle:1 title:v13 handler:v14];

  _Block_release(v14);

  sub_10015DA04(&unk_1006BD390);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100534670;
  *(v16 + 32) = v15;
  sub_1000054A4(0, &unk_1006C6380);
  v17 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [objc_opt_self() configurationWithActions:isa];

  [v19 setPerformsFirstActionWithFullSwipe:0];

  return v19;
}

uint64_t sub_1003B00C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1003B0144();
  }

  return a3(1);
}

void sub_1003B0144()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = [v3 collectionViewDiffableDataSource];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [v5 itemIdentifierForIndexPath:isa];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56[0] = v54;
  v56[1] = v55;
  if (!*(&v55 + 1))
  {

    sub_1000073B4(v56, &qword_1006BE7A0);
    goto LABEL_20;
  }

  sub_1000054A4(0, &qword_1006BFEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  v8 = v53;
  v9 = *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_viewContext];
  if (!v9 || (v10 = [v9 objectWithID:v53]) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

    goto LABEL_20;
  }

  v51 = v12;
  v13 = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [v1 cellForItemAtIndexPath:v13];

  if (!v14)
  {

    goto LABEL_18;
  }

  type metadata accessor for TagEditingCell();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v50 = v15;
    if ((sub_100365FF0() & 1) == 0)
    {
      v49 = [v1 ic_viewControllerManager];
      v48 = [v1 window];
      v18 = [v1 ic_viewControllerManager];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 noteEditorViewController];

        v47 = [v20 eventReporter];
      }

      else
      {
        v47 = 0;
      }

      v46 = type metadata accessor for TagDeletionAlertController();
      v21 = objc_allocWithZone(v46);
      v22 = objc_opt_self();
      v23 = [v22 sharedContext];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 workerManagedObjectContext];
      }

      else
      {
        v25 = 0;
      }

      *&v21[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_workerContext] = v25;
      v26 = [v22 sharedContext];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 managedObjectContext];
      }

      else
      {
        v28 = 0;
      }

      *&v21[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_viewContext] = v28;
      v29 = &v21[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_deletionMethod];
      *v29 = 0;
      v29[8] = 0;
      v21[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_shouldSendNotification] = 1;
      *&v21[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_viewControllerManager] = v49;
      *&v21[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_window] = v48;
      *&v21[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_eventReporter] = v47;
      *v29 = 3;
      v29[8] = 0;
      v52.receiver = v21;
      v52.super_class = v46;
      v30 = objc_msgSendSuper2(&v52, "init");
      v31 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDeletionViewController;
      v32 = *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDeletionViewController];
      *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDeletionViewController] = v30;

      v33 = *&v1[v31];
      if (v33)
      {
        sub_10015DA04(&unk_1006BD390);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_100534670;
        *(v34 + 32) = v51;
        v33[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_shouldSendNotification] = 0;
        v11 = v11;
        v35 = v33;
        sub_10045716C(v34);
        if (v36)
        {
          v37 = String._bridgeToObjectiveC()();
        }

        else
        {
          v37 = 0;
        }

        v38 = [objc_opt_self() alertControllerWithTitle:v37 message:0 preferredStyle:0];

        v39 = sub_10029C320(v34);

        [v38 addAction:v39];
        v40 = sub_10029C80C();
        [v38 addAction:v40];

        v41 = [v38 presentationController];
        if (v41)
        {
          v42 = v41;
          [v41 setSourceView:v50];
        }

        v43 = [v1 window];
        if (v43)
        {
          v44 = v43;
          v45 = [v43 rootViewController];

          if (v45)
          {
            [v45 presentViewController:v38 animated:1 completion:0];
          }
        }
      }

      else
      {
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

LABEL_20:
  v16 = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [v1 cellForItemAtIndexPath:v16];

  if (!v5)
  {
    return;
  }

  type metadata accessor for TagEditingCell();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    [*(v17 + OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField) resignFirstResponder];
  }

LABEL_23:
}

void sub_1003B0774(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_10000ABA8, v8);
}

void sub_1003B0848(unint64_t a1, void *a2, id a3, void *a4)
{
  v24 = a4;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  v7 = 0;
  do
  {
    v8 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v5 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v11 = [a2 objectWithID:v9];

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v7 != v6);
LABEL_20:
  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_42:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_22;
    }

LABEL_43:

    return;
  }

  v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_43;
  }

LABEL_22:
  a3 = [a2 objectWithID:{a3, v24}];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v16 = _swiftEmptyArrayStorage[v15 + 4];
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if ([v16 isDeletedOrInTrash])
      {
        break;
      }

      v19 = String._bridgeToObjectiveC()();
      [v17 updateChangeCountWithReason:v19];

      ++v15;
      if (v18 == v12)
      {

        [a2 ic_save];
        goto LABEL_37;
      }
    }

    v20 = [v24 window];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 rootViewController];

      if (v22)
      {
        v23 = [objc_allocWithZone(type metadata accessor for RecoverNoteAlertController()) initWithNote:v17 selectedRange:{0, 0}];
        sub_1003E4B74(v22);
      }
    }
  }

  else
  {
  }

LABEL_37:
}

void sub_1003B0C08()
{
  v1 = v0;
  v37 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_presentingViewController;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_presentingViewController];
  v41 = v2;
  v3 = [v0 ic_viewControllerManager];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 noteEditorViewController];

    v40 = [v5 eventReporter];
  }

  else
  {
    v40 = 0;
  }

  v39 = type metadata accessor for TagCreateOrRenameAlertController();
  v6 = objc_allocWithZone(v39);
  *&v6[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_accountObjectID] = 0;
  v7 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController;
  *&v6[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController] = 0;
  v8 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID;
  *&v6[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID] = 0;
  v9 = &v6[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_renameMethod];
  *v9 = 0;
  v9[8] = 0;
  v10 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_sizingCell;
  type metadata accessor for TagCell();
  *&v6[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = objc_opt_self();
  v12 = [v11 sharedContext];
  if (v12)
  {
    v13 = v2;
    v14 = v12;
    v15 = [v12 workerManagedObjectContext];

    v2 = v13;
  }

  else
  {
    v15 = 0;
  }

  *&v6[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_workerContext] = v15;
  v16 = [v11 sharedContext];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 managedObjectContext];
  }

  else
  {
    v18 = 0;
  }

  *&v6[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_viewContext] = v18;
  *&v6[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField] = 0;
  *&v6[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagAction] = 0;
  v19 = *&v6[v8];
  *&v6[v8] = 0;

  v20 = *&v6[v7];
  *&v6[v7] = v2;
  v21 = v41;

  *&v6[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_eventReporter] = v40;
  *v9 = 1;
  v9[8] = 0;
  v42.receiver = v6;
  v42.super_class = v39;
  v22 = objc_msgSendSuper2(&v42, "init");

  v23 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagRenameViewController;
  v24 = *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagRenameViewController];
  *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagRenameViewController] = v22;

  v25 = *&v1[v23];
  if (v25)
  {
    v26 = *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_defaultAccountObjectID];
    v27 = *&v25[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_accountObjectID];
    *&v25[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_accountObjectID] = v26;
    v28 = v25;
    v29 = v26;

    v30 = *&v1[v23];
    if (v30)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = v1;
      v32 = v1;
      v33 = v30;
      v34 = sub_1003A5870(0, 0, sub_1003B775C, v31);

      if (v34)
      {
        v35 = *&v1[v38];
        if (v35)
        {
          v36 = v35;
          [v36 presentViewController:v34 animated:1 completion:0];
        }
      }
    }
  }
}

void sub_1003B0F60(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection;
    v5 = *(a3 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection);
    v8 = a2;
    v6 = [v5 objectIDs];
    sub_1000054A4(0, &qword_1006BFEC0);
    sub_1001C607C();
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v6) = sub_10033AC4C(v8, v7);

    if ((v6 & 1) == 0)
    {
      [*(a3 + v4) addObjectID:v8 toExcluded:0];
      sub_1003AC28C(1, 0, 1);
    }
  }
}

void sub_1003B1244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_currentRenamedTagInfo;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_1003B7594(v6, v7, v8, v9);
}

uint64_t sub_1003B14A4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

Class sub_1003B15AC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v61 = v14;
  (*(v12 + 16))(v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a3;
  *(v16 + 4) = a5;
  (*(v12 + 32))(&v16[v15], v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v62 = _swiftEmptyArrayStorage;
  sub_1000054A4(0, &unk_1006BD380);
  v18 = objc_opt_self();
  v19 = a3;
  v20 = a4;
  v58[0] = v19;
  v59 = v20;
  v21 = a2;
  v22 = a5;
  v23 = [v18 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = String._bridgeToObjectiveC()();
  v28 = objc_opt_self();
  v29 = [v28 systemImageNamed:v27];

  v58[1] = v17;
  v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v60 = v30;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v31 = [v18 mainBundle];
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 localizedStringForKey:v32 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = String._bridgeToObjectiveC()();
  v35 = [v28 systemImageNamed:v34];

  v36 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v37 = v62;
  if (ICDebugModeEnabled())
  {
    v38 = [v18 mainBundle];
    v39 = String._bridgeToObjectiveC()();
    v40 = [v38 localizedStringForKey:v39 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v37 = v62;
  }

  v42 = *&v59[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_viewContext];
  if (!v42 || (v43 = [v42 objectWithID:v58[0]]) == 0)
  {
    sub_1000054A4(0, &unk_1006C6410);
    v50 = 0;
    v45 = 0;
    goto LABEL_18;
  }

  v44 = v43;
  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (!v45)
  {

    sub_1000054A4(0, &unk_1006C6410);
    goto LABEL_17;
  }

  sub_1000054A4(0, &unk_1006C6410);
  v46 = [v45 displayText];
  if (!v46)
  {
LABEL_17:
    v50 = 0;
LABEL_18:
    v52 = 0xE000000000000000;
    if (v37 >> 62)
    {
      goto LABEL_14;
    }

LABEL_19:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000054A4(0, &qword_1006C6400);
    preferredElementSize = v37;
    goto LABEL_20;
  }

  v47 = v46;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = String._bridgeToObjectiveC()();

  v49 = [v48 ic_withHashtagPrefix];

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  if (!(v37 >> 62))
  {
    goto LABEL_19;
  }

LABEL_14:
  sub_1000054A4(0, &qword_1006C6400);

  preferredElementSize = _bridgeCocoaArray<A>(_:)();

LABEL_20:

  v54._countAndFlagsBits = v50;
  v54._object = v52;
  v63.value.super.isa = 0;
  v63.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v54, 0, v63, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v57).super.super.isa;

  return isa;
}

uint64_t sub_1003B1DEC(uint64_t a1, void *a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1003B93B8;
  *(v6 + 24) = v5;
  v11[4] = sub_1001C71A8;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000EAF8;
  v11[3] = &unk_10065AF98;
  v7 = _Block_copy(v11);
  v8 = a2;
  v9 = a3;

  [v8 performBlockAndWait:v7];
  _Block_release(v7);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

void sub_1003B1F4C(void *a1, uint64_t a2)
{
  v4 = [a1 objectWithID:a2];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    [v3 markForDeletion];
    [a1 ic_save];
  }
}

void sub_1003B1FDC(int a1, char *a2, uint64_t a3, void *a4)
{
  v5 = [a2 ic_viewControllerManager];
  v6 = [a2 window];
  v7 = [a2 ic_viewControllerManager];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 noteEditorViewController];

    v10 = [v9 eventReporter];
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for TagDeletionAlertController();
  v12 = objc_allocWithZone(v11);
  v13 = objc_opt_self();
  v14 = [v13 sharedContext];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 workerManagedObjectContext];
  }

  else
  {
    v16 = 0;
  }

  *&v12[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_workerContext] = v16;
  v17 = [v13 sharedContext];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 managedObjectContext];
  }

  else
  {
    v19 = 0;
  }

  *&v12[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_viewContext] = v19;
  v20 = &v12[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_deletionMethod];
  *v20 = 0;
  v20[8] = 0;
  v12[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_shouldSendNotification] = 1;
  *&v12[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_viewControllerManager] = v5;
  *&v12[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_window] = v6;
  *&v12[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_eventReporter] = v10;
  *v20 = 1;
  v20[8] = 0;
  v47.receiver = v12;
  v47.super_class = v11;
  v21 = objc_msgSendSuper2(&v47, "init");
  v22 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDeletionViewController;
  v23 = *&a2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDeletionViewController];
  *&a2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDeletionViewController] = v21;

  v24 = *&a2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_viewContext];
  if (v24)
  {
    v25 = [v24 objectWithID:a3];
    if (v25)
    {
      v26 = v25;
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = *&a2[v22];
        if (v28)
        {
          v29 = v27;
          sub_10015DA04(&unk_1006BD390);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_100534670;
          *(v30 + 32) = v29;
          v28[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_shouldSendNotification] = 1;
          v31 = v26;
          v32 = v28;
          sub_10045716C(v30);
          if (v33)
          {
            v34 = String._bridgeToObjectiveC()();
          }

          else
          {
            v34 = 0;
          }

          v35 = [objc_opt_self() alertControllerWithTitle:v34 message:0 preferredStyle:0];

          v36 = sub_10029C320(v30);

          [v35 addAction:v36];
          v37 = sub_10029C80C();
          [v35 addAction:v37];

          v38 = [v35 presentationController];
          if (v38)
          {
            v39 = v38;
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v41 = [a4 cellForItemAtIndexPath:isa];

            [v39 setSourceView:v41];
          }

          v42 = [a2 window];
          if (v42)
          {
            v43 = v42;
            v44 = [v42 rootViewController];

            if (v44)
            {
              [v44 presentViewController:v35 animated:1 completion:0];
            }
          }
        }
      }
    }
  }
}

void sub_1003B2418(int a1, char *a2)
{
  v3 = [a2 window];
  v4 = [v3 rootViewController];

  v5 = *&a2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagObjectID];
  v42 = v5;
  v6 = [a2 ic_viewControllerManager];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 noteEditorViewController];

    v41 = [v8 eventReporter];
  }

  else
  {
    v41 = 0;
  }

  v40 = type metadata accessor for TagCreateOrRenameAlertController();
  v9 = objc_allocWithZone(v40);
  *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_accountObjectID] = 0;
  v10 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController;
  *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController] = 0;
  v11 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID;
  *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID] = 0;
  v12 = &v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_renameMethod];
  *v12 = 0;
  v12[8] = 0;
  v13 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_sizingCell;
  type metadata accessor for TagCell();
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v43 = v4;
  v39 = v4;
  *&v9[v13] = [v14 init];
  v15 = objc_opt_self();
  v16 = [v15 sharedContext];
  if (v16)
  {
    v17 = v5;
    v18 = v16;
    v19 = [v16 workerManagedObjectContext];

    v5 = v17;
  }

  else
  {
    v19 = 0;
  }

  *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_workerContext] = v19;
  v20 = [v15 sharedContext];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 managedObjectContext];
  }

  else
  {
    v22 = 0;
  }

  *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_viewContext] = v22;
  *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField] = 0;
  *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagAction] = 0;
  v23 = *&v9[v11];
  *&v9[v11] = v5;
  v24 = v42;

  v25 = *&v9[v10];
  *&v9[v10] = v43;
  v26 = v39;

  *&v9[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_eventReporter] = v41;
  *v12 = 2;
  v12[8] = 0;
  v45.receiver = v9;
  v45.super_class = v40;
  v27 = objc_msgSendSuper2(&v45, "init");

  v28 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagRenameViewController;
  v29 = *&a2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagRenameViewController];
  *&a2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagRenameViewController] = v27;

  v30 = *&a2[v28];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1003A5870(0, 0, 0, 0);

    if (v32)
    {
      v33 = [a2 window];
      if (v33 && (v34 = v33, v35 = [v33 rootViewController], v34, v35))
      {
        v36 = swift_allocObject();
        *(v36 + 16) = a2;
        aBlock[4] = sub_1003B937C;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10028DCE8;
        aBlock[3] = &unk_10065AF20;
        v37 = _Block_copy(aBlock);
        v38 = a2;

        [v35 presentViewController:v32 animated:1 completion:v37];

        _Block_release(v37);
        v26 = v35;
      }

      else
      {
      }
    }
  }
}

id sub_1003B2940(void *a1, char a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = [a1 identifier];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v15 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v17 collectionViewDiffableDataSource];
  v19 = [v18 indexPathForItemIdentifier:v14];

  if (!v19)
  {
LABEL_9:

LABEL_10:
    swift_unknownObjectRelease();
    return 0;
  }

  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 32))(v11, v9, v5);
  v20 = v2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22 = [v20 cellForItemAtIndexPath:isa];

  if (!v22)
  {
    (*(v6 + 8))(v11, v5);
    goto LABEL_9;
  }

  type metadata accessor for TagCell();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v22 = v22;
    v25 = [v24 contentView];
    v26 = [v25 window];

    if (v26)
    {

      *(v24 + OBJC_IVAR___ICTagCell_isPreviewing) = a2 & 1;
      sub_10047EED4();
      v27 = [v24 contentView];

      v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v27];
      swift_unknownObjectRelease();

      (*(v6 + 8))(v11, v5);
      return v28;
    }

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v6 + 8))(v11, v5);
  return 0;
}

void sub_1003B2D58(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 isPasswordProtected];
  }

  else
  {

    v6 = 0;
  }

  *a3 = v6;
}

void sub_1003B3088(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_workerContext);
  if (!v3)
  {
    v12 = 0;
    goto LABEL_29;
  }

  v4 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v6 = *(a1 + v4);
  if (!v6)
  {
LABEL_28:
    v12 = 0;
    goto LABEL_29;
  }

  v7 = v3;
  v8 = [v6 collectionViewDiffableDataSource];
  if (!v8)
  {
LABEL_27:

    goto LABEL_28;
  }

  v9 = v8;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [v9 itemIdentifierForIndexPath:isa];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (!*(&v41 + 1))
  {

    sub_1000073B4(v42, &qword_1006BE7A0);
    goto LABEL_28;
  }

  sub_1000054A4(0, &qword_1006BFEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_27;
  }

  v13 = [v7 objectWithID:v43];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14 || (v15 = [v14 standardizedContent]) == 0)
  {

    goto LABEL_28;
  }

  v16 = v15;
  v35 = v13;
  v37 = v9;
  v39 = a2;
  v38 = v7;
  v17 = [objc_opt_self() hashtagsWithStandardizedContent:v15 context:v7];

  sub_1000054A4(0, &qword_1006C63E0);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v42[0] = _swiftEmptyArrayStorage;
  v36 = v43;
  v19 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
LABEL_59:
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  while (v20 != v21)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_54;
      }

      v23 = *(v18 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
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
      goto LABEL_59;
    }

    v26 = [v23 account];

    ++v21;
    if (v26)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v22 = *&v42[0];
      v21 = v25;
    }
  }

  if (v22 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = 0;
  v19 = v22 & 0xC000000000000001;
  do
  {
    if (v18 == v27)
    {

      v12 = 2;
      goto LABEL_52;
    }

    if (v19)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v27 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v28 = *(v22 + 8 * v27 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_55;
    }

    v30 = [v28 isManaged];

    ++v27;
  }

  while ((v30 & 1) != 0);
  v31 = 0;
  while (v18 != v31)
  {
    if (v19)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v31 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v32 = *(v22 + 8 * v31 + 32);
    }

    v33 = v32;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_57;
    }

    v34 = [v32 isManaged];

    ++v31;
    if (v34)
    {

      v12 = 3;
      goto LABEL_52;
    }
  }

  v12 = 1;
LABEL_52:
  a2 = v39;
LABEL_29:
  *a2 = v12;
  *(a2 + 8) = 0;
}

uint64_t sub_1003B36BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1003B3718(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TagCollectionViewConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TagCollectionViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

id sub_1003B3824(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000054A4(0, &qword_1006C6400);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1003B38B4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1003B47C0();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for UIAppIntentInteraction();
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10026B738();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1003B5200(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1003B3A78(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v10 = *v5;
    }

    else
    {
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = a1;
    v12 = __CocoaSet.contains(_:)();

    if (v12)
    {
      v13 = sub_1003B4918(v10, v11, a5, a2);

      return v13;
    }

    return 0;
  }

  v16 = v5;
  sub_1000054A4(0, a2);
  v17 = NSObject._rawHashValue(seed:)(*(v7 + 40));
  v18 = -1 << *(v7 + 32);
  v19 = v17 & ~v18;
  if (((*(v7 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v7 + 48) + 8 * v19);
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v7 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v24 = v26;
  }

  v25 = *(*(v24 + 48) + 8 * v19);
  sub_1003B5200(v19);
  result = v25;
  *v16 = v26;
  return result;
}

uint64_t sub_1003B3C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Participant();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1003B7708(&qword_1006C63C8, &type metadata accessor for Participant);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1003B7708(&qword_1006C63D0, &type metadata accessor for Participant);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10026BAE4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1003B4A88(v13, &type metadata accessor for Participant, &qword_1006C63C8, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1003B3F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1003B7708(&unk_1006C6390, &type metadata accessor for IndexPath);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1003B7708(&qword_1006C16E0, &type metadata accessor for IndexPath);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10026BC68();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1003B4A88(v13, &type metadata accessor for IndexPath, &unk_1006C6390, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1003B41F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10015DA04(&qword_1006C1790);
  __chkstk_darwin(v50);
  v9 = &v38 - v8;
  v10 = type metadata accessor for MarkdownStyle(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  v16 = *v3;
  Hasher.init(_seed:)();
  v51 = a1;
  sub_1002F804C();
  v17 = Hasher._finalize()();
  v18 = v16 + 56;
  v19 = -1 << *(v16 + 32);
  v20 = v17 & ~v19;
  if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    v33 = 1;
    return (*(v11 + 56))(a2, v33, 1, v10);
  }

  v41 = v10;
  v38 = v3;
  v42 = a2;
  v48 = ~v19;
  v40 = v11;
  v49 = *(v11 + 72);
  v21 = v44;
  v22 = (v44 + 6);
  v44 += 4;
  v45 = (v21 + 1);
  v46 = v16;
  while (1)
  {
    v23 = v49 * v20;
    sub_1003B93D8(*(v16 + 48) + v49 * v20, v15);
    v24 = *(v50 + 48);
    sub_1003B93D8(v15, v9);
    sub_1003B93D8(v51, &v9[v24]);
    v25 = *v22;
    v26 = (*v22)(v9, 6, v6);
    if (v26 > 2)
    {
      if (v26 > 4)
      {
        if (v26 == 5)
        {
          sub_1003B94A0(v15);
          if (v25(&v9[v24], 6, v6) == 5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1003B94A0(v15);
          if (v25(&v9[v24], 6, v6) == 6)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v26 == 3)
      {
        sub_1003B94A0(v15);
        if (v25(&v9[v24], 6, v6) == 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1003B94A0(v15);
        if (v25(&v9[v24], 6, v6) == 4)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    v27 = v18;
    v28 = v47;
    if (v26)
    {
      break;
    }

    sub_1003B93D8(v9, v47);
    if (v25(&v9[v24], 6, v6))
    {
      sub_1003B94A0(v15);
      (*v45)(v28, v6);
      v18 = v27;
      v16 = v46;
LABEL_23:
      sub_1000073B4(v9, &qword_1006C1790);
      goto LABEL_24;
    }

    v30 = v43;
    (*v44)(v43, &v9[v24], v6);
    v39 = static URL.== infix(_:_:)();
    v31 = v30;
    v32 = *v45;
    (*v45)(v31, v6);
    sub_1003B94A0(v15);
    v32(v28, v6);
    v18 = v27;
    v16 = v46;
    if (v39)
    {
      goto LABEL_29;
    }

    sub_1003B94A0(v9);
LABEL_24:
    v20 = (v20 + 1) & v48;
    if (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      v33 = 1;
      a2 = v42;
      goto LABEL_32;
    }
  }

  if (v26 == 1)
  {
    sub_1003B94A0(v15);
    v29 = v25(&v9[v24], 6, v6) == 1;
  }

  else
  {
    sub_1003B94A0(v15);
    v29 = v25(&v9[v24], 6, v6) == 2;
  }

  v18 = v27;
  v16 = v46;
  if (!v29)
  {
    goto LABEL_23;
  }

LABEL_29:
  sub_1003B94A0(v9);
  v34 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v34;
  v52 = *v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10026BEC8();
    v36 = v52;
  }

  a2 = v42;
  sub_1003B943C(*(v36 + 48) + v23, v42);
  sub_1003B4D84(v20);
  v33 = 0;
  *v34 = v52;
LABEL_32:
  v11 = v40;
  v10 = v41;
  return (*(v11 + 56))(a2, v33, 1, v10);
}

uint64_t sub_1003B47C0()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100266BEC(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for UIAppIntentInteraction();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_1003B5200(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003B4918(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  v7 = v4;

  v8 = __CocoaSet.count.getter();
  v9 = swift_unknownObjectRetain();
  v10 = a3(v9, v8);
  v20 = v10;
  v11 = *(v10 + 40);

  v12 = NSObject._rawHashValue(seed:)(v11);
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    sub_1000054A4(0, a4);
    while (1)
    {
      v16 = *(*(v10 + 48) + 8 * v14);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v18 = *(*(v10 + 48) + 8 * v14);
  sub_1003B5200(v14);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v7 = v20;
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003B4A88(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = _HashTable.previousHole(before:)();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v39 = (v17 + 1) & v16;
      v38 = *(v8 + 16);
      v44 = *(v8 + 72);
      v40 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v38(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        sub_1003B7708(v41, v42);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v39)
        {
          if (v26 < v39 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v39 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }

  return result;
}

uint64_t sub_1003B4D84(unint64_t a1)
{
  v45 = type metadata accessor for URL();
  v3 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for MarkdownStyle(0);
  v5 = *(v42 - 8);
  v6 = __chkstk_darwin(v42);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v46 = &v38 - v9;
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;

    v15 = a1;
    v16 = _HashTable.previousHole(before:)();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v17 = (v16 + 1) & v14;
      v18 = *(v5 + 72);
      v43 = (v3 + 48);
      v38 = (v3 + 8);
      v39 = (v3 + 32);
      v19 = v14;
      v40 = v11;
      do
      {
        v20 = v18;
        v21 = v18 * v13;
        v22 = *(v10 + 48) + v18 * v13;
        v23 = v46;
        sub_1003B93D8(v22, v46);
        v24 = v10;
        Hasher.init(_seed:)();
        v25 = v23;
        v26 = v44;
        sub_1003B93D8(v25, v44);
        v27 = (*v43)(v26, 6, v45);
        if (v27 <= 2)
        {
          if (!v27)
          {
            v29 = v41;
            v30 = v45;
            (*v39)(v41, v44, v45);
            Hasher._combine(_:)(6uLL);
            sub_1003B7708(&qword_1006C07C0, &type metadata accessor for URL);
            dispatch thunk of Hashable.hash(into:)();
            v31 = v30;
            v11 = v40;
            (*v38)(v29, v31);
            goto LABEL_18;
          }

          v28 = v27 != 1;
        }

        else if (v27 > 4)
        {
          if (v27 == 5)
          {
            v28 = 4;
          }

          else
          {
            v28 = 5;
          }
        }

        else if (v27 == 3)
        {
          v28 = 2;
        }

        else
        {
          v28 = 3;
        }

        Hasher._combine(_:)(v28);
LABEL_18:
        v32 = Hasher._finalize()();
        sub_1003B94A0(v46);
        v33 = v32 & v19;
        if (v15 >= v17)
        {
          v18 = v20;
          if (v33 < v17)
          {
            v10 = v24;
            goto LABEL_5;
          }

          v10 = v24;
          if (v15 < v33)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v18 = v20;
          v10 = v24;
          if (v33 < v17 && v15 < v33)
          {
            goto LABEL_5;
          }
        }

        v34 = v18 * v15;
        if (v18 * v15 < v21 || *(v10 + 48) + v18 * v15 >= (*(v10 + 48) + v21 + v18))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_29;
        }

        v15 = v13;
        if (v34 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_29:
          v15 = v13;
        }

LABEL_5:
        v13 = (v13 + 1) & v19;
      }

      while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v15) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v35 = *(v10 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v37;
    ++*(v10 + 36);
  }

  return result;
}

unint64_t sub_1003B5200(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1003B53A0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1003B5524(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10015DA04(&unk_1006C1760);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003B5718(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for Participant();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10015DA04(&qword_1006C63C0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1003B7708(&qword_1006C63C8, &type metadata accessor for Participant);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003B5A40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10015DA04(&qword_1006C16E8);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1003B7708(&unk_1006C6390, &type metadata accessor for IndexPath);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003B5D68(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = type metadata accessor for URL();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MarkdownStyle(0);
  v48 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v49 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10015DA04(&qword_1006C1798);
  result = static _SetStorage.allocate(capacity:)();
  v16 = result;
  v45 = v10;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v46 = a4;
  v47 = (v8 + 48);
  v43 = (v8 + 8);
  v44 = (v8 + 32);
  v20 = result + 56;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_16:
    v24 = *(a4 + 48);
    v25 = *(v48 + 72);
    sub_1003B93D8(v24 + v25 * (v21 | (v19 << 6)), v15);
    Hasher.init(_seed:)();
    v26 = v49;
    sub_1003B93D8(v15, v49);
    v27 = (*v47)(v26, 6, v50);
    if (v27 <= 2)
    {
      if (!v27)
      {
        v29 = *v44;
        v42 = v15;
        v30 = v50;
        v29(v45, v49);
        Hasher._combine(_:)(6uLL);
        sub_1003B7708(&qword_1006C07C0, &type metadata accessor for URL);
        v31 = v45;
        dispatch thunk of Hashable.hash(into:)();
        v32 = v30;
        v15 = v42;
        (*v43)(v31, v32);
        goto LABEL_28;
      }

      v28 = v27 != 1;
    }

    else if (v27 > 4)
    {
      if (v27 == 5)
      {
        v28 = 4;
      }

      else
      {
        v28 = 5;
      }
    }

    else if (v27 == 3)
    {
      v28 = 2;
    }

    else
    {
      v28 = 3;
    }

    Hasher._combine(_:)(v28);
LABEL_28:
    result = Hasher._finalize()();
    v33 = -1 << *(v16 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v20 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_38;
        }
      }

      goto LABEL_43;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
    *(v20 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    result = sub_1003B943C(v15, *(v16 + 48) + v36 * v25);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_44;
    }

    a4 = v46;
    if (!a3)
    {
LABEL_40:

      return v16;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      goto LABEL_40;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v18 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void *sub_1003B61DC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1003B6430(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1003B626C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1003B6430((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1003B61DC(v11, v6, a2, a1);
  }

  return v9;
}

uint64_t sub_1003B6430(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v75 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = v61 - v11;
  v13 = __chkstk_darwin(v10);
  v76 = (v61 - v14);
  result = __chkstk_darwin(v13);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        return sub_1003B5A40(v66, v62, v68, a3);
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6);
          sub_1003B7708(&unk_1006C6390, &type metadata accessor for IndexPath);
          v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              v54(v12, *(v73 + 48) + v57 * v53, v6);
              sub_1003B7708(&qword_1006C16E0, &type metadata accessor for IndexPath);
              v59 = dispatch thunk of static Equatable.== infix(_:_:)();
              v60 = *v76;
              (*v76)(v12, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            result = (v60)(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            result = (v60)(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6);
          (*(v7 + 32))(v76, v33, v6);
          sub_1003B7708(&unk_1006C6390, &type metadata accessor for IndexPath);
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              i(v12, *(v74 + 48) + v36 * v72, v6);
              sub_1003B7708(&qword_1006C16E0, &type metadata accessor for IndexPath);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v75;
              (*v75)(v12, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            result = (v41)(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            result = (v41)(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1003B6B18(unint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6)
{
  result = 0;
  if (a4 == a1 && ((a1 >> 8) & 1) == ((a4 >> 8) & 1) && ((a1 >> 16) & 1) == ((a4 >> 16) & 1) && ((a1 >> 24) & 1) == ((a4 >> 24) & 1) && (BYTE4(a1) & 1) == (BYTE4(a4) & 1) && ((a1 >> 40) & 1) == ((a4 >> 40) & 1))
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1003B6BA8(uint64_t a1, int a2)
{
  if (a2 != 1)
  {
    v3 = 16.0;
    if ((a2 & 0x1000000) == 0)
    {
      if ([objc_opt_self() ic_isVision])
      {
        v3 = 12.0;
      }

      else
      {
        v3 = 0.0;
      }
    }

    v4 = objc_opt_self();
    v5 = [v4 estimatedDimension:48.0];
    v6 = [v4 estimatedDimension:34.0];
    v7 = objc_opt_self();
    v8 = [v7 sizeWithWidthDimension:v5 heightDimension:v6];

    v9 = [objc_opt_self() itemWithLayoutSize:v8];
    v10 = [v4 fractionalWidthDimension:1.0];
    v11 = [v4 estimatedDimension:34.0];
    v12 = [v7 sizeWithWidthDimension:v10 heightDimension:v11];

    v13 = objc_opt_self();
    sub_10015DA04(&unk_1006BD390);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100534670;
    *(v14 + 32) = v9;
    sub_1000054A4(0, &qword_1006C63B0);
    v15 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = [v13 horizontalGroupWithLayoutSize:v12 subitems:isa];

    v18 = [objc_opt_self() fixedSpacing:8.0];
    [v17 setInterItemSpacing:v18];

    v19 = [objc_opt_self() sectionWithGroup:v17];
    [v19 setContentInsets:{v3, v3, v3, v3}];
    [v19 setInterGroupSpacing:8.0];
    v20 = [objc_allocWithZone(UICollectionViewCompositionalLayout) initWithSection:v19];
    goto LABEL_20;
  }

  v2 = a1;
  if (*(a1 + 16))
  {
  }

  else
  {
    v2 = &off_10064C378;
  }

  v21 = objc_opt_self();
  v22 = &selRef_countByEnumeratingWithState_objects_count_;
  v8 = [v21 estimatedDimension:34.0];
  v23 = v2[2];
  if (v23)
  {
    v24 = objc_opt_self();
    v25 = objc_opt_self();
    v38 = v2;
    v26 = (v2 + 4);
    v27 = 0.0;
    do
    {
      v28 = *v26;
      v29 = [v21 absoluteDimension:{*v26, v38}];
      v30 = [v24 sizeWithWidthDimension:v29 heightDimension:v8];
      v31 = [v25 itemWithLayoutSize:v30];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v27 = v27 + v28;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v26;
      --v23;
    }

    while (v23);
    v22 = &selRef_countByEnumeratingWithState_objects_count_;
  }

  else
  {
    v27 = 0.0;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v33 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = result - 1;
    if (!__OFSUB__(result, 1))
    {
LABEL_19:
      v15 = [v21 absoluteDimension:v27 + v33 * 8.0];
      v17 = [v21 v22[458]];
      v34 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v17];
      v35 = objc_opt_self();
      sub_1000054A4(0, &qword_1006C63B0);
      v36 = Array._bridgeToObjectiveC()().super.isa;

      v12 = [v35 horizontalGroupWithLayoutSize:v34 subitems:v36];

      v37 = [objc_opt_self() fixedSpacing:8.0];
      [v12 setInterItemSpacing:v37];

      v19 = [objc_opt_self() sectionWithGroup:v12];
      [v19 setContentInsets:{6.0, 20.0, 6.0, 20.0}];
      [v19 setOrthogonalScrollingBehavior:1];
      v20 = [objc_allocWithZone(UICollectionViewCompositionalLayout) initWithSection:v19];

LABEL_20:
      return v20;
    }
  }

  __break(1u);
  return result;
}

void sub_1003B7210()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  if ((objc_msgSendSuper2(&v18, "isEditing") & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
    swift_beginAccess();
    v3 = *&v0[v2];
    if (v3)
    {
      v4 = [v3 collectionViewDiffableDataSource];
      if (v4)
      {
        v5 = v4;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v7 = [v5 itemIdentifierForIndexPath:isa];

        if (v7)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v15 = 0u;
          v16 = 0u;
        }

        v17[0] = v15;
        v17[1] = v16;
        if (*(&v16 + 1))
        {
          v8 = v1;
          sub_1000054A4(0, &qword_1006C1730);
          if (swift_dynamicCast())
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              sub_1003B0C08();
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                [*&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] setMode:1];
              }

              else
              {
                objc_opt_self();
                v9 = swift_dynamicCastObjCClass();
                if (v9)
                {
                  v10 = v9;
                  v11 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection;
                  v12 = *&v8[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection];
                  v13 = v14;
                  [v12 setMode:0];
                  [*&v8[v11] addObjectID:v10 toExcluded:0];
                }
              }
            }

            sub_1003AC28C(0, 0, 1);
          }

          else
          {
          }
        }

        else
        {

          sub_1000073B4(v17, &qword_1006BE7A0);
        }
      }
    }
  }
}

uint64_t sub_1003B7460()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_accessibilityProvider);
  swift_beginAccess();
  v6 = v5[3];
  if (v6)
  {
    v7 = [*sub_10017CC60(v5 v6)];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = UICellConfigurationState.isEditing.getter();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1003B7594(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1003B75FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for IndexPath();

  return sub_1003B00C4(a1, a2, a3);
}

uint64_t sub_1003B7698(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C3FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B7708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003B7764()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  if (objc_msgSendSuper2(&v27, "isEditing"))
  {
    return 0;
  }

  v3 = &v0[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
  if (v0[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 4] == 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v5 = [v0 cellForItemAtIndexPath:isa];

    if (v5)
    {
      type metadata accessor for TagCell();
      v6 = swift_dynamicCastClass();
      if (v6 && (v7 = v6, v8 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource, swift_beginAccess(), (v9 = *&v0[v8]) != 0) && (v10 = [v9 collectionViewDiffableDataSource]) != 0)
      {
        v11 = v10;
        v12 = IndexPath._bridgeToObjectiveC()().super.isa;
        v13 = [v11 itemIdentifierForIndexPath:v12];

        if (v13)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = 0u;
          v25 = 0u;
        }

        v26[0] = v24;
        v26[1] = v25;
        if (*(&v25 + 1))
        {
          sub_1000054A4(0, &qword_1006C1730);
          if (swift_dynamicCast())
          {
            v15 = [objc_opt_self() sharedItemIdentifier];
            v16 = static NSObject.== infix(_:_:)();

            if (v16)
            {
              if (*(v7 + OBJC_IVAR___ICTagCell_isExcluded) != 1)
              {
                [*&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] setMode:2];
                goto LABEL_33;
              }

              if (*v3 == 1)
              {
                [*&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] setMode:1];
LABEL_33:
                sub_1003AC28C(0, 0, 1);

                return 0;
              }
            }

            objc_opt_self();
            v17 = swift_dynamicCastObjCClass();
            if (v17)
            {
              v18 = v17;
              v19 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection;
              v20 = *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection];
              if ((*(v7 + OBJC_IVAR___ICTagCell_isExcluded) & 1) == 0)
              {
                [v20 addObjectID:v18 toExcluded:1];
                goto LABEL_33;
              }

              [v20 removeObjectID:v18 fromExcluded:1];
              if (*v3 == 1 && (([*&v1[v19] isEmpty] & 1) != 0 || objc_msgSend(*&v1[v19], "mode") == 2))
              {
                v21 = *&v1[v19];
                v2 = 1;
                [v21 setMode:1];

                return v2;
              }
            }

            else
            {
            }

            return 1;
          }
        }

        else
        {

          sub_1000073B4(v26, &qword_1006BE7A0);
        }
      }

      else
      {
      }
    }
  }

  if (*v3 != 1)
  {
    return 1;
  }

  v14 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection;
  if ([*&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] mode] != 1)
  {
    if ([*&v1[v14] selectedTagCount] == 1)
    {
      [*&v1[v14] setMode:1];
      sub_1003AC28C(0, 0, 1);
      return 1;
    }

    return 1;
  }

  return 0;
}

void sub_1003B7B78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!v3)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_10:
    sub_1000073B4(&v10, &qword_1006BE7A0);
    return;
  }

  v4 = [v3 collectionViewDiffableDataSource];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [v4 itemIdentifierForIndexPath:isa];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_10;
  }

  sub_1000054A4(0, &qword_1006C1730);
  if (swift_dynamicCast())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      [*(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection) setMode:0];
    }

    else
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        [*(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection) removeObjectID:v7 fromExcluded:0];
      }
    }

    sub_1003AC28C(0, 0, 1);
  }
}

id sub_1003B7D44(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = 0;
  if (v2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_allowsContextualMenu] == 1)
  {
    v10 = v8;
    v11 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
    swift_beginAccess();
    v12 = *&v2[v11];
    if (v12)
    {
      v13 = v2;
      v14 = [v12 collectionViewDiffableDataSource];
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v16 = [v14 itemIdentifierForIndexPath:isa];

      if (v16)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
      }

      aBlock = v36;
      v33 = v37;
      if (*(&v37 + 1))
      {
        sub_1000054A4(0, &qword_1006BFEC0);
        if (swift_dynamicCast())
        {
          v17 = v36;
          v18 = *&v13[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_workerContext];
          if (v18)
          {
            v19 = *&v13[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagObjectID];
            *&v13[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagObjectID] = v36;
            v31 = v18;
            v20 = v17;

            (*(v6 + 16))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
            v21 = (*(v6 + 80) + 48) & ~*(v6 + 80);
            v22 = swift_allocObject();
            *(v22 + 2) = v31;
            *(v22 + 3) = v20;
            *(v22 + 4) = v13;
            *(v22 + 5) = a1;
            (*(v6 + 32))(&v22[v21], &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
            v23 = objc_opt_self();
            v34 = sub_1003B927C;
            v35 = v22;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v33 = sub_1003B3824;
            *(&v33 + 1) = &unk_10065AE58;
            v24 = _Block_copy(&aBlock);
            v25 = v20;
            v26 = v13;
            v27 = a1;

            v28 = [v23 configurationWithIdentifier:v25 previewProvider:0 actionProvider:v24];

            _Block_release(v24);
            return v28;
          }
        }

        return 0;
      }
    }

    else
    {
      aBlock = 0u;
      v33 = 0u;
    }

    sub_1000073B4(&aBlock, &qword_1006BE7A0);
    return 0;
  }

  return v9;
}

id sub_1003B80B8(void *a1, uint64_t a2)
{
  v5 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v61 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v61 - v13;
  v15 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelectionBeforeDrag;
  if (!*&v2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelectionBeforeDrag])
  {
    [*&v2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000054A4(0, &qword_1006C4310);
    v16 = swift_dynamicCast();
    v17 = v70;
    if (!v16)
    {
      v17 = 0;
    }

    v18 = *&v2[v15];
    *&v2[v15] = v17;
  }

  v19 = [a1 localDragSession];
  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = [v19 localContext];
  swift_unknownObjectRelease();
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  v72 = v70;
  v73 = v71;
  if (!*(&v71 + 1))
  {
    goto LABEL_20;
  }

  sub_1000054A4(0, &unk_1006C63E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
  }

  v21 = v70;
  if ([v70 dragSessionType] != 1)
  {

    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
  }

  sub_1001802AC(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    v22 = &unk_1006C3FD0;
    v23 = v7;
LABEL_21:
    sub_1000073B4(v23, v22);
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
  }

  (*(v9 + 32))(v14, v7, v8);
  v24 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (!v25)
  {
    (*(v9 + 8))(v14, v8);
    swift_endAccess();

LABEL_19:
    v72 = 0u;
    v73 = 0u;
LABEL_20:
    v22 = &qword_1006BE7A0;
    v23 = &v72;
    goto LABEL_21;
  }

  v66 = v2;
  swift_endAccess();
  v26 = [v25 collectionViewDiffableDataSource];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v28 = [v26 itemIdentifierForIndexPath:isa];

  if (v28)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  v72 = v70;
  v73 = v71;
  v30 = v66;
  if (!*(&v71 + 1))
  {
    (*(v9 + 8))(v14, v8);

    goto LABEL_20;
  }

  sub_1000054A4(0, &qword_1006BFEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v9 + 8))(v14, v8);

    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
  }

  v31 = v70;
  if (([v70 ic_isHashtagType] & 1) == 0)
  {
    (*(v9 + 8))(v14, v8);

    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
  }

  v61 = v31;
  v32 = [v21 currentSourceObjectIDs];
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v33 >> 62)
  {
    goto LABEL_76;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:
  v69 = (v33 & 0xC000000000000001);
  v62 = v21;
  v65 = v33;
  v67 = v34;
  if (v34)
  {
    v35 = 0;
    v63 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_workerContext;
    v68 = v33 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v69)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *(v68 + 16))
        {
          goto LABEL_75;
        }

        v36 = *(v33 + 8 * v35 + 32);
      }

      v37 = v36;
      v21 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        goto LABEL_74;
      }

      v38 = [v36 ic_isModernNoteType];
      if (v38 && *&v30[v63])
      {
        v64 = &v61;
        __chkstk_darwin(v38);
        *(&v61 - 2) = v39;
        *(&v61 - 1) = v37;
        v33 = v39;
        NSManagedObjectContext.performAndWait<A>(_:)();

        if (v72)
        {
          LODWORD(v64) = 0;
          v30 = v66;
          v34 = v67;
          goto LABEL_48;
        }

        v33 = v65;
        v30 = v66;
      }

      else
      {
      }

      v34 = v67;
      ++v35;
      if (v21 == v67)
      {
        goto LABEL_47;
      }
    }
  }

  v68 = v33 & 0xFFFFFFFFFFFFFF8;
LABEL_47:
  LODWORD(v64) = 1;
LABEL_48:
  v40 = 0;
  v21 = &selRef_fileName;
  while (v34 != v40)
  {
    if (v69)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v40 >= *(v68 + 16))
      {
        goto LABEL_73;
      }

      v41 = *(v65 + 8 * v40 + 32);
    }

    v42 = v41;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      v34 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_30;
    }

    v33 = [v41 ic_isLegacyType];

    ++v40;
    v34 = v67;
    if (v33)
    {

      v58 = v62;
LABEL_66:
      v59 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
      v60 = v61;

      goto LABEL_71;
    }
  }

  v58 = v62;
  if (!v64)
  {
    goto LABEL_66;
  }

  sub_10015DA04(&unk_1006BD390);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100534670;
  v44 = v61;
  *(v43 + 32) = v61;
  v45 = v44;
  sub_10015DA04(&qword_1006C4B40);
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v58 setCurrentDropTargetItemIDs:v46];

  v47 = [v30 indexPathsForVisibleItems];
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v48;
  v50 = *(v48 + 16);
  if (v50)
  {
    v64 = v45;
    v65 = v49;
    v51 = *(v9 + 16);
    v52 = v49 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v68 = *(v9 + 72);
    v69 = v51;
    v67 = (v9 + 16);
    v51(v12, v52, v8);
    while (1)
    {
      v53 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v66 deselectItemAtIndexPath:v53 animated:0];

      v54.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v30 = v66;
      v55 = v54.super.isa;
      (*(v9 + 8))(v12, v8);
      v56 = [v30 cellForItemAtIndexPath:v55];

      if (v56)
      {
        type metadata accessor for TagCell();
        v57 = swift_dynamicCastClass();
        if (v57)
        {
          *(v57 + OBJC_IVAR___ICTagCell_isExcluded) = 0;
          sub_10047EED4();
          v30 = v66;
        }
      }

      v52 += v68;
      if (!--v50)
      {
        break;
      }

      v69(v12, v52, v8);
    }

    v58 = v62;
    v45 = v64;
  }

  else
  {
  }

  [*&v30[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] clear];
  v59 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:3 intent:2];

LABEL_71:
  (*(v9 + 8))(v14, v8);
  return v59;
}

uint64_t sub_1003B8A50(void *a1)
{
  v2 = [objc_msgSend(a1 "session")];
  result = swift_unknownObjectRelease();
  if (v2)
  {
    if ([v2 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    aBlock = v37;
    v32 = v38;
    if (!*(&v38 + 1))
    {
      swift_unknownObjectRelease();
      return sub_1000073B4(&aBlock, &qword_1006BE7A0);
    }

    sub_1000054A4(0, &unk_1006C63E8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return swift_unknownObjectRelease();
    }

    v29 = v36;
    v30 = v2;
    v4 = [v36 currentDropTargetItemIDs];
    sub_10015DA04(&qword_1006C4B40);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&aBlock = _swiftEmptyArrayStorage;
    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_66:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {
      v9 = 0;
      while (2)
      {
        v10 = v9;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v9 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_61;
            }

            swift_unknownObjectRetain();
            v9 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v10;
          if (v9 == v7)
          {
            goto LABEL_27;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = aBlock;
        if (v9 != v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:

    if (v8 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
LABEL_29:
        v12 = 0;
        v6 = v8 & 0xC000000000000001;
        while (1)
        {
          if (v6)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v13 = *(v8 + 8 * v12 + 32);
          }

          v5 = v13;
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_62;
          }

          if ([v13 ic_isHashtagType])
          {
            break;
          }

          ++v12;
          if (v14 == v11)
          {
            goto LABEL_68;
          }
        }

        v15 = [v30 items];
        sub_1000054A4(0, &qword_1006C63F8);
        v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = _swiftEmptyArrayStorage;
        if (v16 >> 62)
        {
          v17 = _CocoaArrayWrapper.endIndex.getter();
          if (v17)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
LABEL_40:
            v6 = 0;
            v28 = _swiftEmptyArrayStorage;
LABEL_41:
            v18 = v6;
            while (1)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_65;
                }

                v19 = *(v16 + 8 * v18 + 32);
              }

              v20 = v19;
              v6 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_64;
              }

              if ([v19 localObject])
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
              }

              else
              {

                v37 = 0u;
                v38 = 0u;
              }

              aBlock = v37;
              v32 = v38;
              if (*(&v38 + 1))
              {
                sub_1000054A4(0, &qword_1006BFEC0);
                if ((swift_dynamicCast() & 1) != 0 && v35)
                {
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v28 = v36;
                  if (v6 != v17)
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_73;
                }
              }

              else
              {
                sub_1000073B4(&aBlock, &qword_1006BE7A0);
              }

              ++v18;
              if (v6 == v17)
              {
                goto LABEL_73;
              }
            }
          }
        }

        v28 = _swiftEmptyArrayStorage;
LABEL_73:

        v21 = *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_workerContext];
        if (v21)
        {
          v22 = swift_allocObject();
          v22[2] = v28;
          v22[3] = v21;
          v22[4] = v5;
          v22[5] = v1;
          v23 = swift_allocObject();
          *(v23 + 16) = sub_1003B9254;
          *(v23 + 24) = v22;
          v33 = sub_1001C71A8;
          v34 = v23;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v32 = sub_10000EAF8;
          *(&v32 + 1) = &unk_10065AE08;
          v24 = _Block_copy(&aBlock);
          v25 = v21;

          v5 = v5;
          v26 = v1;

          [v25 performBlockAndWait:v24];

          _Block_release(v24);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
          swift_unknownObjectRelease();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return result;
          }

          __break(1u);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_29;
      }
    }

LABEL_68:
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003B9170(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_workerContext) && (__chkstk_darwin(a1), v3 = v2, sub_10015DA04(&qword_1006C63D8), NSManagedObjectContext.performAndWait<A>(_:)(), v3, v6 != 1))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

Class sub_1003B927C(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1003B15AC(a1, v4, v5, v6, v7, v8);
}

void sub_1003B92FC(int a1)
{
  type metadata accessor for IndexPath();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  sub_1003B1FDC(a1, v3, v4, v5);
}

void sub_1003B937C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagRenameViewController);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField);
    if (v2)
    {
      [v2 selectAll:0];
    }
  }
}

uint64_t sub_1003B93D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarkdownStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B943C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarkdownStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B94A0(uint64_t a1)
{
  v2 = type metadata accessor for MarkdownStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003B9510()
{
  result = qword_1006C6428;
  if (!qword_1006C6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6428);
  }

  return result;
}

void (*VisibleChecklistItemsQuery.loggingConfiguration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t VisibleChecklistItemsQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for ChecklistItemEntity();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = *(type metadata accessor for ChecklistItemID() - 8);
  v4[11] = v6;
  v4[12] = *(v6 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = sub_10015DA04(&qword_1006C6490);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003B97A4, 0, 0);
}

uint64_t sub_1003B97A4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 136) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = *(v3 + 80);
    v5 = (v4 + 16) & ~v4;
    v6 = *(v0 + 96) + v5;
    *(v0 + 192) = *(v3 + 80);
    v7 = *(v3 + 72);
    v8 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(v0 + 160) = 0;
    *(v0 + 144) = v7;
    *(v0 + 152) = _swiftEmptyArrayStorage;
    v9 = *(v0 + 104);
    v10 = *(v0 + 40);
    v20 = *(v0 + 48);
    v11 = *(v0 + 32);
    AppDependency.wrappedValue.getter();
    v12 = *(v0 + 16);
    *(v0 + 168) = [v12 modernManagedObjectContext];

    sub_1003BC8C4(v1 + ((v4 + 32) & ~v4), v9, type metadata accessor for ChecklistItemID);
    v13 = swift_allocObject();
    *(v0 + 176) = v13;
    sub_1003BC85C(v9, v13 + v5, type metadata accessor for ChecklistItemID);
    v14 = (v13 + v8);
    *v14 = v11;
    v14[1] = v10;
    v14[2] = v20;

    v15 = swift_task_alloc();
    *(v0 + 184) = v15;
    *v15 = v0;
    v15[1] = sub_1003B9A0C;
    v16 = *(v0 + 128);
    v17 = *(v0 + 112);

    return NSManagedObjectContext.perform<A>(_:)(v16, sub_1003BC7BC, v13, v17);
  }

  else
  {

    v18 = *(v0 + 8);

    return v18(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1003B9A0C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 168);

    return _swift_task_switch(sub_1003B9B4C, 0, 0);
  }
}

uint64_t sub_1003B9B4C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_100006038(*(v0 + 128), v1, &qword_1006C6490);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 120);
    sub_1000073B4(*(v0 + 128), &qword_1006C6490);
    sub_1000073B4(v4, &qword_1006C6490);
    v5 = *(v0 + 152);
  }

  else
  {
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    sub_1003BC85C(*(v0 + 120), v6, type metadata accessor for ChecklistItemEntity);
    sub_1003BC8C4(v6, v7, type metadata accessor for ChecklistItemEntity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 152);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1001CBAD4(0, v5[2] + 1, 1, *(v0 + 152));
    }

    v10 = v5[2];
    v9 = v5[3];
    if (v10 >= v9 >> 1)
    {
      v5 = sub_1001CBAD4(v9 > 1, v10 + 1, 1, v5);
    }

    v11 = *(v0 + 128);
    v12 = *(v0 + 72);
    v13 = *(v0 + 64);
    sub_1003BEE24(*(v0 + 80), type metadata accessor for ChecklistItemEntity);
    sub_1000073B4(v11, &qword_1006C6490);
    v5[2] = v10 + 1;
    sub_1003BC85C(v12, v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10, type metadata accessor for ChecklistItemEntity);
  }

  v14 = *(v0 + 160) + 1;
  if (v14 == *(v0 + 136))
  {

    v15 = *(v0 + 8);

    return v15(v5);
  }

  else
  {
    *(v0 + 152) = v5;
    *(v0 + 160) = v14;
    v17 = *(v0 + 192);
    v18 = *(v0 + 104);
    v19 = *(v0 + 40);
    v30 = *(v0 + 48);
    v20 = *(v0 + 32);
    v21 = (v17 + 16) & ~v17;
    v22 = (*(v0 + 96) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v0 + 24) + ((v17 + 32) & ~v17) + *(v0 + 144) * v14;
    AppDependency.wrappedValue.getter();
    v24 = *(v0 + 16);
    *(v0 + 168) = [v24 modernManagedObjectContext];

    sub_1003BC8C4(v23, v18, type metadata accessor for ChecklistItemID);
    v25 = swift_allocObject();
    *(v0 + 176) = v25;
    sub_1003BC85C(v18, v25 + v21, type metadata accessor for ChecklistItemID);
    v26 = (v25 + v22);
    *v26 = v20;
    v26[1] = v19;
    v26[2] = v30;

    v27 = swift_task_alloc();
    *(v0 + 184) = v27;
    *v27 = v0;
    v27[1] = sub_1003B9A0C;
    v28 = *(v0 + 128);
    v29 = *(v0 + 112);

    return NSManagedObjectContext.perform<A>(_:)(v28, sub_1003BC7BC, v25, v29);
  }
}

uint64_t sub_1003B9F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v74 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v72 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v11 - 8);
  v73 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChecklistItemID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  AppDependency.wrappedValue.getter();
  v19 = aBlock;
  v21 = ChecklistItemID.note(in:)(aBlock, v20);

  if (!v21)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22 || (v65 = v22, (v23 = [v22 textStorage]) == 0))
  {

LABEL_9:
    v38 = 0;
    goto LABEL_10;
  }

  v24 = v23;
  v70 = v21;
  v64 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  v66 = v2;
  v84 = 0;
  v85 = 0;
  v86 = 2;
  v69 = ICTTAttributeNameParagraphStyle;
  v25 = [v24 ic_range];
  v67 = v26;
  v68 = v25;
  sub_1003BC8C4(a1, v18, type metadata accessor for ChecklistItemID);
  v27 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_1003BC85C(v18, v30 + v27, type metadata accessor for ChecklistItemID);
  *(v30 + v28) = v24;
  *(v30 + v29) = &v84;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v86;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1003BEE84;
  *(v31 + 24) = v30;
  v82 = sub_1003BEF64;
  v83 = v31;
  aBlock = _NSConcreteStackBlock;
  v79 = 1107296256;
  v80 = sub_1004AEAA8;
  v81 = &unk_10065B2B8;
  v32 = _Block_copy(&aBlock);

  v33 = v24;

  v34 = v69;
  [v33 enumerateAttribute:v69 inRange:v68 options:v67 usingBlock:{0, v32}];

  _Block_release(v32);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  else
  {
    v36 = v85;
    v37 = v70;
    a2 = v71;
    if (!v85 || v86 == 2)
    {

      v38 = sub_1003BEE84;
LABEL_10:
      v39 = type metadata accessor for ChecklistItemEntity();
      (*(*(v39 - 8) + 56))(a2, 1, 1, v39);
      return sub_10000C840(v38);
    }

    LODWORD(v67) = v86;
    v61 = v84;
    sub_1003BC8C4(a1, v64, type metadata accessor for ChecklistItemID);

    v40 = v65;
    v60 = [v65 objectID];
    v41 = [v40 title];
    v63 = v33;
    v62 = v36;
    if (v41)
    {
      v42 = v41;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v43;
    }

    else
    {
      v57 = 0;
      v56 = 0;
    }

    v68 = type metadata accessor for ChecklistItemEntity();
    v44 = v68[6];
    sub_10015DA04(&unk_1006C1870);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    LODWORD(v69) = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v45 = v75;
    v76 = *(v76 + 104);
    (v76)(v75);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v65 = EntityProperty<>.init(title:)();
    *(v71 + v44) = v65;
    v46 = v68;
    v58 = v68[7];
    sub_10015DA04(&unk_1006BCD90);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (v76)(v45, v69, v77);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v59 = EntityProperty<>.init(title:)();
    *(v71 + v58) = v59;
    v58 = v46[8];
    sub_10015DA04(&qword_1006C60E0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (v76)(v45, v69, v77);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    sub_10001C1D4(&qword_1006BCAD0, type metadata accessor for NoteEntity);
    v47 = EntityProperty<>.init(title:)();
    v48 = v71;
    *(v71 + v58) = v47;
    v49 = v68;
    v50 = (v48 + v68[9]);
    *v50 = 0;
    v50[1] = 0;
    v51 = v64;
    sub_1003BC8C4(v64, v48, type metadata accessor for ChecklistItemID);
    v52 = v60;
    v53 = [v60 URIRepresentation];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v61;
    v79 = v62;
    EntityProperty.wrappedValue.setter();
    LOBYTE(aBlock) = v67 & 1;
    EntityProperty.wrappedValue.setter();

    sub_1003BEE24(v51, type metadata accessor for ChecklistItemID);
    v54 = v56;
    *v50 = v57;
    v50[1] = v54;
    (*(*(v49 - 1) + 56))(v48, 0, 1, v49);
  }

  return result;
}

void sub_1003BA87C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6, uint64_t *a7, unsigned __int8 *a8)
{
  v74 = a7;
  v75 = a8;
  v72 = a3;
  v73 = a6;
  v71 = a2;
  v11 = type metadata accessor for CharacterSet();
  v69 = *(v11 - 8);
  v70 = v11;
  __chkstk_darwin(v11);
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v76 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10015DA04(&qword_1006BE0A8);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  v19 = sub_10015DA04(&unk_1006BE0B0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v64 - v24;
  __chkstk_darwin(v23);
  v27 = &v64 - v26;
  sub_100006038(a1, v78, &qword_1006BE7A0);
  if (!v78[3])
  {
    sub_1000073B4(v78, &qword_1006BE7A0);
    return;
  }

  sub_1000054A4(0, &qword_1006BE0C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v28 = v77;
  if ([v77 style] != 103)
  {

    return;
  }

  v65 = a4;
  v29 = type metadata accessor for ChecklistItemID();
  v30 = v76;
  (*(v76 + 16))(v27, a5 + *(v29 + 20), v13);
  v31 = 1;
  v66 = *(v30 + 56);
  v66(v27, 0, 1, v13);
  v67 = v28;
  v32 = [v28 uuid];
  if (v32)
  {
    v33 = v32;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  v66(v25, v31, 1, v13);
  v34 = *(v16 + 48);
  sub_100006038(v27, v18, &unk_1006BE0B0);
  sub_100006038(v25, &v18[v34], &unk_1006BE0B0);
  v35 = *(v76 + 48);
  if (v35(v18, 1, v13) == 1)
  {
    sub_1000073B4(v25, &unk_1006BE0B0);
    sub_1000073B4(v27, &unk_1006BE0B0);
    v36 = v35(&v18[v34], 1, v13);
    v37 = v65;
    if (v36 == 1)
    {
      sub_1000073B4(v18, &unk_1006BE0B0);
      v38 = v67;
LABEL_15:
      v42 = v73;
      v43 = [v73 mutableString];
      v45 = v71;
      v44 = v72;
      [v43 paragraphRangeForRange:{v71, v72}];

      v46 = v68;
      static CharacterSet.newlines.getter();
      v47 = NSAttributedString.range(byTrimmingCharactersIn:in:)();
      v49 = v48;
      (*(v69 + 8))(v46, v70);
      v50 = NSNotFound.getter();
      if (v47 == v50)
      {
        v51 = v45;
      }

      else
      {
        v51 = v47;
      }

      if (v47 == v50)
      {
        v52 = v44;
      }

      else
      {
        v52 = v49;
      }

      v53 = [v42 attributedSubstringFromRange:{v51, v52}];
      v54 = [v53 string];

      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v78[0] = v55;
      v78[1] = v57;
      v58 = String.init<A>(_:)();
      v59 = v74;
      *v74 = v58;
      v59[1] = v60;

      v61 = [v38 todo];
      if (v61)
      {
        v62 = v61;
        v63 = [v61 done];

        *v75 = v63;
      }

      else
      {
        *v75 = 0;
      }

      *v37 = 1;
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  sub_100006038(v18, v22, &unk_1006BE0B0);
  if (v35(&v18[v34], 1, v13) == 1)
  {
    sub_1000073B4(v25, &unk_1006BE0B0);
    sub_1000073B4(v27, &unk_1006BE0B0);
    (*(v76 + 8))(v22, v13);
LABEL_13:
    sub_1000073B4(v18, &qword_1006BE0A8);
    v38 = v67;
    goto LABEL_25;
  }

  v39 = v76;
  (*(v76 + 32))(v15, &v18[v34], v13);
  sub_10001C1D4(&qword_1006C1820, &type metadata accessor for UUID);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v39 + 8);
  v41(v15, v13);
  sub_1000073B4(v25, &unk_1006BE0B0);
  sub_1000073B4(v27, &unk_1006BE0B0);
  v41(v22, v13);
  v37 = v65;
  sub_1000073B4(v18, &unk_1006BE0B0);
  v38 = v67;
  if (v40)
  {
    goto LABEL_15;
  }

LABEL_25:
}

uint64_t VisibleChecklistItemsQuery.suggestedEntities()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10019EDB0;

  return (sub_1003BCFFC)(a2, a3);
}

uint64_t sub_1003BB088(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BCAC0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100006038(a1, &v9 - v6, &unk_1006BCAC0);
  sub_100006038(v7, v5, &unk_1006BCAC0);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(v7, &unk_1006BCAC0);
}

uint64_t VisibleChecklistItemsQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10019EDB0;

  return (sub_1003BC92C)(a1, 0, 0, a3);
}

uint64_t VisibleChecklistItemsQuery.entities(for:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10019EDB0;

  return (sub_1003BC92C)(a1, a2, a3, a5);
}

uint64_t sub_1003BB304@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage;
  v10 = [a1 ic_existingObjectWithID:a2];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

    v10 = 0;
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 hasChecklist];
  sub_1000054A4(0, &qword_1006C3F30);
  v15.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  isa = v15.super.super.isa;
  if (!v14)
  {

LABEL_11:
    v10 = 0;
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  v18 = [v13 textStorage];
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18;
  v33[0] = 0;
  v33[1] = 0;
  v20 = ICTTAttributeNameParagraphStyle;
  v21 = [v19 ic_range];
  v30 = v22;
  v31 = v21;
  v23 = swift_allocObject();
  v23[2] = v33;
  v23[3] = a2;
  v23[4] = v19;
  v23[5] = a3;
  v23[6] = a4;
  v23[7] = v13;
  v23[8] = &v34;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1003BEDD4;
  *(v24 + 24) = v23;
  aBlock[4] = sub_1001A1F54;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004AEAA8;
  aBlock[3] = &unk_10065B218;
  v25 = _Block_copy(aBlock);

  v26 = v11;

  v27 = a2;
  v28 = v19;

  [v28 enumerateAttribute:v20 inRange:v31 options:v30 usingBlock:{0, v25}];

  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if ((v25 & 1) == 0)
  {
    v10 = sub_1003BEDD4;
    v9 = v34;
LABEL_12:
    result = sub_10000C840(v10);
    *a5 = v9;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1003BB614(void *a1, size_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, void *a7, void **a8, uint64_t a9, void *a10, void **a11)
{
  v105 = a8;
  v112 = a7;
  v115 = a6;
  v15 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v109 = *(v15 - 8);
  __chkstk_darwin(v15);
  v108 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v107 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v20 - 8);
  v106 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ChecklistItemEntity();
  v111 = *(v114 - 8);
  v22 = __chkstk_darwin(v114);
  v110 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v116 = &v90 - v24;
  v25 = type metadata accessor for CharacterSet();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ChecklistItemID();
  v30 = __chkstk_darwin(v29);
  v113 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v117 = &v90 - v32;
  v33 = type metadata accessor for UUID();
  v34 = __chkstk_darwin(v33);
  v37 = &v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a5;
  v38 = a5[1];
  v40 = __OFADD__(*a5, v38);
  v41 = *a5 + v38;
  if (v40)
  {
    __break(1u);
    goto LABEL_50;
  }

  v42 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v41 >= v42)
  {
    v43 = a2 + a3;
  }

  else
  {
    v43 = v41;
  }

  if (v39 >= a2 && v39 < v42)
  {
    v41 = &v43[-v39];
    if (!__OFSUB__(v43, v39))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v39 > a2 || v41 <= a2)
  {
    goto LABEL_15;
  }

  v41 = v43 - a2;
  if (__OFSUB__(v43, a2))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_14:
  if (v41 > 0)
  {
    return;
  }

LABEL_15:
  v102 = v37;
  v103 = v35;
  v104 = v34;
  sub_100006038(a1, &v120, &qword_1006BE7A0);
  if (!v122)
  {
    sub_1000073B4(&v120, &qword_1006BE7A0);
    return;
  }

  sub_1000054A4(0, &qword_1006BE0C0);
  if (swift_dynamicCast())
  {
    v44 = v118;
    if ([v118 style] != 103 || (v45 = objc_msgSend(v44, "uuid")) == 0)
    {

      return;
    }

    v101 = v44;
    v100 = v15;
    v99 = a9;
    v46 = v102;
    v47 = v45;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v103 + 16))(v117 + *(v29 + 20), v46, v104);
    v48 = [v115 URIRepresentation];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v112;
    v50 = [v112 mutableString];
    [v50 paragraphRangeForRange:{a2, a3}];
    v98 = v51;

    static CharacterSet.newlines.getter();
    v52 = NSAttributedString.range(byTrimmingCharactersIn:in:)();
    v54 = v53;
    (*(v26 + 8))(v28, v25);
    v55 = NSNotFound.getter();
    if (v52 == v55)
    {
      v56 = a2;
    }

    else
    {
      v56 = v52;
    }

    if (v52 == v55)
    {
      v57 = a3;
    }

    else
    {
      v57 = v54;
    }

    v58 = [v49 attributedSubstringFromRange:{v56, v57}];
    v59 = [v58 string];

    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    v120 = v60;
    v121 = v62;
    v63 = String.init<A>(_:)();
    v65 = v63;
    v66 = v64;
    if (v99)
    {
      v120 = v63;
      v121 = v64;
      v118 = v105;
      v119 = v99;
      sub_10019E0AC();
      if ((StringProtocol.localizedStandardContains<A>(_:)() & 1) == 0)
      {

        sub_1003BEE24(v117, type metadata accessor for ChecklistItemID);
        (*(v103 + 8))(v102, v104);
        return;
      }
    }

    v98 = v65;
    v99 = v66;
    sub_1003BC8C4(v117, v113, type metadata accessor for ChecklistItemID);
    v67 = [v101 todo];
    if (v67)
    {
      v68 = v67;
      v97 = [v67 done];
    }

    else
    {
      v97 = 0;
    }

    v69 = v100;
    v70 = [a10 title];
    v91 = v56;
    v92 = v57;
    v105 = a11;
    if (v70)
    {
      v71 = v70;
      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v72;
    }

    else
    {
      v96 = 0;
      v95 = 0;
    }

    v94 = *(v114 + 24);
    sub_10015DA04(&unk_1006C1870);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    LODWORD(v112) = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v73 = v108;
    v74 = *(v109 + 104);
    v74(v108);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v109 = EntityProperty<>.init(title:)();
    *(v116 + v94) = v109;
    v75 = v114;
    v93 = *(v114 + 28);
    sub_10015DA04(&unk_1006BCD90);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (v74)(v73, v112, v69);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v94 = EntityProperty<>.init(title:)();
    v76 = v116;
    *(v116 + v93) = v94;
    v93 = *(v75 + 32);
    sub_10015DA04(&qword_1006C60E0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (v74)(v73, v112, v100);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    sub_10001C1D4(&qword_1006BCAD0, type metadata accessor for NoteEntity);
    *(v76 + v93) = EntityProperty<>.init(title:)();
    v77 = (v76 + *(v75 + 36));
    *v77 = 0;
    v77[1] = 0;
    v78 = v113;
    sub_1003BC8C4(v113, v76, type metadata accessor for ChecklistItemID);
    v79 = [v115 URIRepresentation];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v120 = v98;
    v121 = v99;
    EntityProperty.wrappedValue.setter();
    LOBYTE(v120) = v97;
    EntityProperty.wrappedValue.setter();
    sub_1003BEE24(v78, type metadata accessor for ChecklistItemID);
    v80 = v95;
    *v77 = v96;
    v77[1] = v80;
    v15 = v110;
    sub_1003BC8C4(v76, v110, type metadata accessor for ChecklistItemEntity);
    a2 = v105;
    a1 = *v105;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = a1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_37:
      v82 = v92;
      v84 = a1[2];
      v83 = a1[3];
      if (v84 >= v83 >> 1)
      {
        *a2 = sub_1001CBAD4(v83 > 1, v84 + 1, 1, a1);
      }

      sub_1003BEE24(v117, type metadata accessor for ChecklistItemID);
      (*(v103 + 8))(v102, v104);
      v85 = *a2;
      *(v85 + 16) = v84 + 1;
      sub_1003BC85C(v15, v85 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v84, type metadata accessor for ChecklistItemEntity);
      v86 = a5[1];
      v40 = __OFADD__(*a5, v86);
      v87 = *a5 + v86;
      if (v40)
      {
        __break(1u);
      }

      else if (!__OFADD__(v91, v82))
      {
        if (v87 <= v91 + v82)
        {
          v87 = v91 + v82;
        }

        if (*a5 >= v91)
        {
          v88 = v91;
        }

        else
        {
          v88 = *a5;
        }

        v89 = v87 - v88;
        if (!__OFSUB__(v87, v88))
        {
          sub_1003BEE24(v116, type metadata accessor for ChecklistItemEntity);
          *a5 = v88;
          a5[1] = v89;
          return;
        }

LABEL_55:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_55;
    }

LABEL_52:
    a1 = sub_1001CBAD4(0, a1[2] + 1, 1, a1);
    *a2 = a1;
    goto LABEL_37;
  }
}

uint64_t sub_1003BC2A4@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes26VisibleChecklistItemsQueryVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1003BC2D0(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10019EDB0;

  return VisibleChecklistItemsQuery.entities(for:)(a1, v4, v5, v6);
}

uint64_t sub_1003BC380(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1001927BC;

  return (sub_1003BCFFC)(v3, v4);
}

uint64_t sub_1003BC434(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1003AA274();
  *v5 = v2;
  v5[1] = sub_10000A600;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t VisibleChecklistItemsQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10019EDB0;

  return sub_1003BDD20(a1, a2, a4);
}

uint64_t sub_1003BC5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *(v3 + 8);
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100189314;

  return sub_1003BDD20(a2, a3, v7);
}

uint64_t _s11MobileNotes26VisibleChecklistItemsQueryVACycfC_0()
{
  sub_10015DA04(&unk_1006BCA40);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006BCDA0);
  swift_getKeyPath();
  IntentParameterDependency.__allocating_init<A, B>(_:)();
  return v0;
}

uint64_t sub_1003BC85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003BC8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003BC92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_1003BC950, 0, 0);
}

uint64_t sub_1003BC950()
{
  v1 = v0[4];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[8] = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = v0[1];

    return v9(_swiftEmptyArrayStorage);
  }

LABEL_19:
  v17 = _CocoaArrayWrapper.endIndex.getter();
  v0[8] = v17;
  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    v0[9] = _swiftEmptyArrayStorage;
    v4 = v0[4];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    v0[10] = v5;
    v0[11] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    AppDependency.wrappedValue.getter();
    v7 = v0[2];
    v8 = [v7 managedObjectContextForObjectID:v6];
    v0[12] = v8;

    if (v8)
    {
      break;
    }

    v3 = v0[11];
    if (v3 == v0[8])
    {
      goto LABEL_11;
    }
  }

  v12 = v0[5];
  v11 = v0[6];
  v13 = swift_allocObject();
  v0[13] = v13;
  v13[2] = v8;
  v13[3] = v6;
  v13[4] = v12;
  v13[5] = v11;
  v8;
  v14 = v6;

  v15 = swift_task_alloc();
  v0[14] = v15;
  v16 = sub_10015DA04(&qword_1006C0050);
  *v15 = v0;
  v15[1] = sub_1003BCB90;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 3, sub_1003BEDB4, v13, v16);
}

uint64_t sub_1003BCB90()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1003BCCCC, 0, 0);
  }
}

uint64_t sub_1003BCCCC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = *(v4 + 72);
  v7 = *(v5 + 16);
  v8 = v6[2];
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 72);
  if (isUniquelyReferenced_nonNull_native && (v12 = *(v11 + 24) >> 1, v12 >= v9))
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v8 <= v9)
    {
      v17 = v8 + v7;
    }

    else
    {
      v17 = v8;
    }

    v11 = sub_1001CBAD4(isUniquelyReferenced_nonNull_native, v17, 1, *(v4 + 72));
    v12 = *(v11 + 24) >> 1;
    if (*(v5 + 16))
    {
LABEL_5:
      v13 = v12 - *(v11 + 16);
      v6 = type metadata accessor for ChecklistItemEntity();
      if (v13 >= v7)
      {
        swift_arrayInitWithCopy();

        if (!v7)
        {
          goto LABEL_14;
        }

        v14 = *(v11 + 16);
        v15 = __OFADD__(v14, v7);
        v16 = v14 + v7;
        if (!v15)
        {
          *(v11 + 16) = v16;
          goto LABEL_14;
        }

LABEL_33:
        __break(1u);
        return NSManagedObjectContext.perform<A>(_:)(v6, a2, a3, a4);
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  if (v7)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_14:
  v18 = *(v4 + 80);

  v19 = *(v4 + 88);
  if (v19 != *(v4 + 64))
  {
    while (1)
    {
      *(v4 + 72) = v11;
      a2 = *(v4 + 32);
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v6 = *(a2 + 8 * v19 + 32);
      }

      v20 = v6;
      *(v4 + 80) = v6;
      *(v4 + 88) = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      AppDependency.wrappedValue.getter();
      v21 = *(v4 + 16);
      v22 = [v21 managedObjectContextForObjectID:v20];
      *(v4 + 96) = v22;

      if (v22)
      {
        break;
      }

      v19 = *(v4 + 88);
      if (v19 == *(v4 + 64))
      {
        goto LABEL_22;
      }
    }

    v26 = *(v4 + 40);
    v25 = *(v4 + 48);
    v27 = swift_allocObject();
    *(v4 + 104) = v27;
    v27[2] = v22;
    v27[3] = v20;
    v27[4] = v26;
    v27[5] = v25;
    v22;
    v28 = v20;

    v29 = swift_task_alloc();
    *(v4 + 112) = v29;
    a4 = sub_10015DA04(&qword_1006C0050);
    *v29 = v4;
    v29[1] = sub_1003BCB90;
    a2 = sub_1003BEDB4;
    v6 = (v4 + 24);
    a3 = v27;

    return NSManagedObjectContext.perform<A>(_:)(v6, a2, a3, a4);
  }

LABEL_22:
  v23 = *(v4 + 8);

  return v23(v11);
}

uint64_t sub_1003BCFFC(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  v3 = type metadata accessor for NoteID();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  type metadata accessor for NoteEntity(0);
  v2[35] = swift_task_alloc();
  v4 = type metadata accessor for ManagedEntityContextType();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_1003BD144, 0, 0);
}

uint64_t sub_1003BD144()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  AppDependency.wrappedValue.getter();
  v4 = v0[26];
  v5 = [v4 modernManagedObjectContext];
  v0[39] = v5;

  AppDependency.wrappedValue.getter();
  v6 = v0[27];
  (*(v2 + 104))(v1, enum case for ManagedEntityContextType.html(_:), v3);
  v7 = ICUnifiedNoteContext.managedObjectContext(for:)();
  v0[40] = v7;
  (*(v0[37] + 8))(v0[38], v0[36]);

  v8 = IntentParameterDependency.wrappedValue.getter();
  v0[41] = v8;
  if (v8)
  {
    v10 = v0[34];
    v9 = v0[35];
    v11 = v0[32];
    v12 = v0[33];
    swift_getKeyPath();
    sub_10021B940();
    IntentProjection.subscript.getter();

    (*(v12 + 16))(v10, v9, v11);
    sub_1003BEE24(v9, type metadata accessor for NoteEntity);
    AppDependency.wrappedValue.getter();
    v13 = v0[29];
    v0[42] = v13;
    v14 = swift_task_alloc();
    v0[43] = v14;
    *v14 = v0;
    v14[1] = sub_1003BD4EC;
    v15 = v0[34];

    return sub_100384000(v15, v13);
  }

  else
  {
    v17 = [objc_allocWithZone(ICRecentNotesCoreDataIndexer) initWithLegacyManagedObjectContext:v7 modernManagedObjectContext:v5];
    v0[45] = v17;
    [v17 setMaximumNumberOfNotesPerAccount:10];
    [v17 setChecklistsOnly:1];
    v0[2] = v0;
    v0[3] = sub_1003BD774;
    v18 = swift_continuation_init();
    v0[17] = sub_10015DA04(&unk_1006BFBB0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100252EB0;
    v0[13] = &unk_10065B240;
    v0[14] = v18;
    [v17 reloadData:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1003BD4EC(uint64_t a1)
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 256);
  *(*v1 + 352) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1003BD664, 0, 0);
}

uint64_t sub_1003BD664()
{
  v1 = v0[44];
  if (v1)
  {
    sub_10015DA04(&unk_1006BD390);
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_100534670;
    v2[4] = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v0[46] = v2;
  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_1003BDAC4;
  v4 = v0[30];

  return sub_1003BC92C(v2, 0, 0, v4);
}

uint64_t sub_1003BD774()
{

  return _swift_task_switch(sub_1003BD854, 0, 0);
}

uint64_t sub_1003BD854()
{
  v1 = [*(v0 + 360) newSnapshotFromIndex];
  v2 = [v1 itemIdentifiers];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10000A2A0(v6, v0 + 144);
      sub_10000A2A0(v0 + 144, v0 + 176);
      sub_1000054A4(0, &qword_1006BFEC0);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 224);
        if ([v7 ic_isNoteType])
        {
          v8 = [v7 ic_isModernNoteType];
          sub_100009F60(v0 + 144);
          if (v8)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          else
          {
          }

          goto LABEL_5;
        }
      }

      sub_100009F60(v0 + 144);
LABEL_5:
      v6 += 32;
      --v5;
    }

    while (v5);
  }

  *(v0 + 368) = _swiftEmptyArrayStorage;
  v9 = swift_task_alloc();
  *(v0 + 376) = v9;
  *v9 = v0;
  v9[1] = sub_1003BDAC4;
  v10 = *(v0 + 240);

  return sub_1003BC92C(_swiftEmptyArrayStorage, 0, 0, v10);
}

uint64_t sub_1003BDAC4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v5 = sub_1003BDC88;
  }

  else
  {

    *(v4 + 392) = a1;
    v5 = sub_1003BDBF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BDBF4()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 8);
  v3 = *(v0 + 392);

  return v2(v3);
}

uint64_t sub_1003BDC88()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003BDD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for ManagedEntityContextType();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003BDDE4, 0, 0);
}

uint64_t sub_1003BDDE4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  AppDependency.wrappedValue.getter();
  v4 = v0[2];
  v0[14] = [v4 modernManagedObjectContext];

  AppDependency.wrappedValue.getter();
  v5 = v0[3];
  (*(v2 + 104))(v1, enum case for ManagedEntityContextType.html(_:), v3);
  v0[15] = ICUnifiedNoteContext.managedObjectContext(for:)();
  (*(v0[12] + 8))(v0[13], v0[11]);

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 prefixMatchingQueryStringForSearchString:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v0[16] = v11;
  sub_1000054A4(0, &unk_1006C1400);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1003BE010;

  return static ICSearchQueryOperation.searchResults(queryString:rankingQueries:)(v9, v11, _swiftEmptyArrayStorage);
}

uint64_t sub_1003BE010(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1003BEADC;
  }

  else
  {

    v4 = sub_1003BE12C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003BE12C()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    type metadata accessor for MainActor();
    v0[20] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1003BE244, v3, v2);
  }

  v4 = v0[14];
  v5 = v0[15];

  v6 = v0[1];

  return v6(_swiftEmptyArrayStorage);
}

uint64_t sub_1003BE244()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = [objc_opt_self() sharedIndexer];
  sub_1000054A4(0, &unk_1006C64D0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10015DA04(&unk_1006BD390);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E20;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  sub_1000054A4(0, &unk_1006C2CF0);
  v6 = v2;
  v7 = v1;
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v3 objectsForSearchableItems:isa inContexts:v8];

  sub_10015DA04(&unk_1006C1410);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = _swiftEmptyArrayStorage;
  v39 = v0;
  v0[4] = _swiftEmptyArrayStorage;
  v12 = v0 + 4;
  v13 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
LABEL_44:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v39[19];
  v39[21] = v11;
  if (v14)
  {
    v16 = 0;
    v36 = v10;
    v37 = (v12 + 3);
    v17 = v10 & 0xC000000000000001;
    v38 = v13;
    v40 = v14;
    v35 = v10 & 0xC000000000000001;
LABEL_5:
    v34 = v11;
    v18 = v16;
    while (1)
    {
      if (v17)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v18 >= *(v13 + 16))
        {
          goto LABEL_43;
        }

        v11 = *(v10 + 8 * v18 + 32);
        swift_unknownObjectRetain();
        v16 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      v12[1] = &OBJC_PROTOCOL___ICSearchIndexableNote;
      v20 = swift_dynamicCastObjCProtocolConditional();
      if (!v20)
      {
        break;
      }

      v21 = v20;
      swift_getObjectType();
      sub_1000054A4(0, &qword_1006C1420);
      if (!swift_dynamicCastMetatype())
      {
        break;
      }

      v22 = qword_1006BC670;
      swift_unknownObjectRetain();
      if (v22 != -1)
      {
        swift_once();
      }

      v23 = sub_10015DA04(&qword_1006C13A0);
      sub_10002597C(v23, static ICNote.hasValidEntityIdentifier);
      v39[6] = v37;
      v39[7] = v21;
      swift_unknownObjectRetain();
      v24 = Predicate.evaluate(_:)();
      v39[22] = v15;
      if (v15)
      {
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        return _swift_task_switch(sub_1003BE84C, 0, 0);
      }

      v25 = v24;

      if (v25)
      {
        v13 = v38;
        if (([v21 isHiddenFromSearch] & 1) == 0)
        {
          v17 = v35;
          if ([v21 isDeletedOrInTrash])
          {
            swift_unknownObjectRelease_n();
            v15 = 0;
            v10 = v36;
          }

          else
          {
            v15 = [v21 hasChecklist];
            sub_1000054A4(0, &qword_1006C3F30);
            v26.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
            if (v15)
            {
              v27 = static NSObject.== infix(_:_:)();

              if (v27)
              {
                v28 = [v21 objectID];
                swift_unknownObjectRelease_n();
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v13 = v38;
                if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v15 = 0;
                v11 = v39[4];
                v39[21] = v11;
                v10 = v36;
                if (v16 != v40)
                {
                  goto LABEL_5;
                }

                goto LABEL_36;
              }

              swift_unknownObjectRelease_n();
              v15 = 0;
            }

            else
            {
              swift_unknownObjectRelease_n();
            }

            v13 = v38;
            v10 = v36;
          }

          goto LABEL_20;
        }

        swift_unknownObjectRelease_n();
        v15 = 0;
        v17 = v35;
        v10 = v36;
        v19 = v40;
      }

      else
      {
        swift_unknownObjectRelease_n();
        v15 = 0;
        v13 = v38;
        v19 = v40;
        v17 = v35;
        v10 = v36;
      }

LABEL_7:
      ++v18;
      if (v16 == v19)
      {
        v11 = v34;
        goto LABEL_36;
      }
    }

    swift_unknownObjectRelease();
LABEL_20:
    v19 = v40;
    goto LABEL_7;
  }

LABEL_36:
  v29 = v39[9];

  v30 = swift_task_alloc();
  v39[23] = v30;
  *v30 = v39;
  v30[1] = sub_1003BE8BC;
  v31 = v39[10];
  v32 = v39[8];

  return sub_1003BC92C(v11, v32, v29, v31);
}

uint64_t sub_1003BE84C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003BE8BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_1003BEA64;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_1003BE9E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BE9E4()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[25];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1003BEA64()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003BEADC()
{
  v1 = v0[15];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

unint64_t sub_1003BEB58()
{
  result = qword_1006C6498;
  if (!qword_1006C6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6498);
  }

  return result;
}

unint64_t sub_1003BEBB0()
{
  result = qword_1006C64A0;
  if (!qword_1006C64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C64A0);
  }

  return result;
}

unint64_t sub_1003BEC50()
{
  result = qword_1006C64B0;
  if (!qword_1006C64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C64B0);
  }

  return result;
}

unint64_t sub_1003BECF0()
{
  result = qword_1006C64C0;
  if (!qword_1006C64C0)
  {
    sub_10017992C(&qword_1006C0050);
    sub_10001C1D4(&unk_1006C6120, type metadata accessor for ChecklistItemEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C64C0);
  }

  return result;
}

uint64_t sub_1003BEE24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003BEE84(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = *(type metadata accessor for ChecklistItemID() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v11);
  v14 = *(v4 + v12);
  v15 = *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1003BA87C(a1, a2, a3, a4, v4 + v10, v13, v14, v15);
}

size_t sub_1003BEF6C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10030D5C8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for MarkdownStyle(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1003B943C(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1003BF08C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_10030FFBC(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1003BF11C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1003D34CC, v4);
}

void sub_1003BF1B0(uint64_t a1, uint64_t a2)
{
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1003BF22C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C64F0);
  sub_10002597C(v0, qword_1006C64F0);
  return static Logger.systemPaper.getter();
}

void sub_1003BF3A4(SEL *a1)
{
  v3 = *(v1 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (v3)
  {
    v3 = [v3 textView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 undoManager];

      v3 = v5;
    }
  }

  v6 = v3;
  [v3 *a1];
}

id sub_1003BF48C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v27 = a3;
  v25 = a2;
  v22[1] = a1;
  ObjectType = swift_getObjectType();
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___ICSystemPaperViewController_pageControlFadeOutTimer] = 0;
  v3[OBJC_IVAR___ICSystemPaperViewController_didCreateInitialEditorController] = 0;
  v3[OBJC_IVAR___ICSystemPaperViewController_hasFinishedInitialViewRefresh] = 0;
  v3[OBJC_IVAR___ICSystemPaperViewController_viewDidAppearAtLeastOnce] = 0;
  v23 = OBJC_IVAR___ICSystemPaperViewController_editorViewControllerUpdateDispatchQueue;
  v10 = sub_1000054A4(0, &qword_1006BE9E0);
  v22[2] = "camera.viewfinder";
  v22[3] = v10;
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006BCB80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015DA04(&unk_1006BFD50);
  sub_1000060B4(&qword_1006BCB90, &unk_1006BFD50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  *&v3[v23] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = OBJC_IVAR___ICSystemPaperViewController_editorViewControllerUpdateSemaphore;
  *&v3[v11] = dispatch_semaphore_create(0);
  *&v3[OBJC_IVAR___ICSystemPaperViewController_emptyNoteIds] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___ICSystemPaperViewController_incomingLink] = 0;
  *&v3[OBJC_IVAR___ICSystemPaperViewController_incomingImageData] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR___ICSystemPaperViewController_launchPreview;
  v13 = type metadata accessor for NotePreview();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___ICSystemPaperViewController_targetCachePoolSize] = 2;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_editorCachePool] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR___ICSystemPaperViewController_noteCache;
  *&v4[v14] = [objc_allocWithZone(NSCache) init];
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = sub_100459988(_swiftEmptyArrayStorage);
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR___ICSystemPaperViewController_subscriptions] = v15;
  *&v4[OBJC_IVAR___ICSystemPaperViewController____lazy_storage___paletteButton] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController____lazy_storage___indexer] = 0;
  v4[OBJC_IVAR___ICSystemPaperViewController_shouldShowModernAccountAlert] = 0;
  v4[OBJC_IVAR___ICSystemPaperViewController_isSettingCurrentNote] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___ICSystemPaperViewController_pageViewController] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_launchImageView] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_doneBarButtonItem] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_newNoteBarButtonItem] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_moreBarButtonItem] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_backToNotesBarButtonItem] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_undoBarButtonItem] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_redoBarButtonItem] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_pageContainerView] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_pageControl] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundView] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundViewBottomConstraint] = 0;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundViewHeight] = 0x4054000000000000;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundViewOnscreenBottomConstraintConstant] = 0;
  v16 = &v4[OBJC_IVAR___ICSystemPaperViewController____lazy_storage___toolPickerBackgroundViewOffscreenBottomConstraintConstant];
  *v16 = 0;
  v16[8] = 1;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_toolPickerSpringAnimationDampingRatio] = 0x3FEB0A3D70A3D70ALL;
  *&v4[OBJC_IVAR___ICSystemPaperViewController_toolPickerSpringAnimationResponse] = 0x3FE0FDF3B645A1CBLL;
  if (v25)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v28.receiver = v4;
  v28.super_class = ObjectType;
  v18 = v27;
  v19 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", v17, v27);

  v20 = v19;
  sub_1003BFA84();

  return v20;
}

void sub_1003BFA84()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:"editorLinkBarVisibilityChanged:" name:ICNoteEditorViewControllerSystemPaperLinkBarVisibilityChangedNotification object:0];

  v3 = [v1 defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  [v3 addObserver:v0 selector:"editingStatusDidChange:" name:v4 object:0];

  v5 = [v1 defaultCenter];
  v6 = String._bridgeToObjectiveC()();
  [v5 addObserver:v0 selector:"editingStatusDidChange:" name:v6 object:0];
}

id sub_1003BFC44(void *a1)
{
  v2 = v1;
  v24 = a1;
  ObjectType = swift_getObjectType();
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___ICSystemPaperViewController_pageControlFadeOutTimer] = 0;
  v1[OBJC_IVAR___ICSystemPaperViewController_didCreateInitialEditorController] = 0;
  v1[OBJC_IVAR___ICSystemPaperViewController_hasFinishedInitialViewRefresh] = 0;
  v1[OBJC_IVAR___ICSystemPaperViewController_viewDidAppearAtLeastOnce] = 0;
  v21 = OBJC_IVAR___ICSystemPaperViewController_editorViewControllerUpdateDispatchQueue;
  v8 = sub_1000054A4(0, &qword_1006BE9E0);
  v20[1] = "camera.viewfinder";
  v20[2] = v8;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006BCB80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015DA04(&unk_1006BFD50);
  sub_1000060B4(&qword_1006BCB90, &unk_1006BFD50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *&v1[v21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = OBJC_IVAR___ICSystemPaperViewController_editorViewControllerUpdateSemaphore;
  *&v1[v9] = dispatch_semaphore_create(0);
  *&v1[OBJC_IVAR___ICSystemPaperViewController_emptyNoteIds] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___ICSystemPaperViewController_incomingLink] = 0;
  *&v1[OBJC_IVAR___ICSystemPaperViewController_incomingImageData] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR___ICSystemPaperViewController_launchPreview;
  v11 = type metadata accessor for NotePreview();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ICSystemPaperViewController_targetCachePoolSize] = 2;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_editorCachePool] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR___ICSystemPaperViewController_noteCache;
  *&v2[v12] = [objc_allocWithZone(NSCache) init];
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = sub_100459988(_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR___ICSystemPaperViewController_subscriptions] = v13;
  *&v2[OBJC_IVAR___ICSystemPaperViewController____lazy_storage___paletteButton] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController____lazy_storage___indexer] = 0;
  v2[OBJC_IVAR___ICSystemPaperViewController_shouldShowModernAccountAlert] = 0;
  v2[OBJC_IVAR___ICSystemPaperViewController_isSettingCurrentNote] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ICSystemPaperViewController_pageViewController] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_launchImageView] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_doneBarButtonItem] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_newNoteBarButtonItem] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_moreBarButtonItem] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_backToNotesBarButtonItem] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_undoBarButtonItem] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_redoBarButtonItem] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_pageContainerView] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_pageControl] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundView] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundViewBottomConstraint] = 0;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundViewHeight] = 0x4054000000000000;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundViewOnscreenBottomConstraintConstant] = 0;
  v14 = &v2[OBJC_IVAR___ICSystemPaperViewController____lazy_storage___toolPickerBackgroundViewOffscreenBottomConstraintConstant];
  *v14 = 0;
  v14[8] = 1;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_toolPickerSpringAnimationDampingRatio] = 0x3FEB0A3D70A3D70ALL;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_toolPickerSpringAnimationResponse] = 0x3FE0FDF3B645A1CBLL;
  v15 = v24;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v25, "initWithCoder:", v24);
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    sub_1003BFA84();
  }

  return v17;
}

id sub_1003C02A0(uint64_t a1)
{
  v21 = a1;
  v1 = sub_10015DA04(&qword_1006C6810);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v20 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() buttonWithType:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  [v19 pointSize];
  v13 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:v12];
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

  static UIButton.Configuration.glass()();
  (*(v4 + 104))(v6, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v20);
  UIButton.Configuration.cornerStyle.setter();
  v16 = v15;
  UIButton.Configuration.image.setter();
  (*(v8 + 16))(v3, v10, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  UIButton.configuration.setter();
  [v11 addTarget:v21 action:"didTapPaletteButton:" forControlEvents:64];

  (*(v8 + 8))(v10, v7);
  return v11;
}

id sub_1003C0610(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_1003C0674(uint64_t a1)
{
  v2 = [objc_opt_self() sharedContext];
  if (v2 && (v3 = v2, v4 = [v2 workerManagedObjectContext], v3, v4))
  {
    v5 = [objc_allocWithZone(ICNoteCoreDataIndexer) initWithLegacyManagedObjectContext:0 modernManagedObjectContext:v4];
    v6 = [objc_opt_self() folderNoteSortTypeWithOrder:2 direction:1];
    [v5 setSortType:v6];

    [v5 setDateHeadersType:1];
    [v5 setDelegate:a1];
    v7 = [objc_opt_self() queryForSystemPaperNotesAllowsRecentlyDeleted:0];
    [v5 setNoteQuery:v7];

    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003C0810(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006BE9E0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1003D31E0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065B790;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

uint64_t sub_1003C0B08(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = OBJC_IVAR___ICSystemPaperViewController_editorCachePool;
    v5 = 1;
    while (1)
    {
      sub_1003C0BFC(0);
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = swift_endAccess();
      if (v3 == v5)
      {
        break;
      }

      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_1003C0BFC(uint64_t a1)
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v3 = ICTK2NoteEditorViewController_ptr;
  if (!IsTextKit2Enabled)
  {
    v3 = ICNoteEditorViewController_ptr;
  }

  v4 = [objc_allocWithZone(*v3) initWithIdentifier:-1 options:3];
  [v4 setAdditionalSafeAreaInsets:{0.0, 0.0, 0.0, 0.0}];
  Strong = swift_unknownObjectWeakLoadStrong();
  [v4 setViewControllerManager:Strong];

  v6 = swift_unknownObjectWeakLoadStrong();
  [v4 setDelegate:v6];

  v7 = [v4 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  [v8 setBackgroundColor:v10];

  v11 = [v4 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v11 layer];

  [v13 setCornerRadius:4.0];
  v14 = [v4 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 layer];

  [v16 setCornerCurve:kCACornerCurveContinuous];
  v17 = [v4 view];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  v19 = [v17 layer];

  [v19 setMasksToBounds:1];
  v20 = [v4 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 layer];

  v23 = [v9 separatorColor];
  v24 = [v23 CGColor];

  [v22 setShadowColor:v24];
  v25 = [v4 view];
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = v25;
  v27 = [v25 layer];

  [v27 setShadowOffset:{0.0, 0.0}];
  v28 = [v4 view];

  if (!v28)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v29 = [v28 layer];

  [v29 setShadowRadius:0.0];
  if (a1)
  {
    [v4 setNote:a1];
  }

  v30 = [v4 textView];
  if (v30)
  {
    v31 = v30;
    [v30 _setCropDrawingAttachmentsWhenViewIsSmaller:1];
  }
}

void sub_1003C0FD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10015DA04(&unk_1006C6870);
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  v5 = __chkstk_darwin(v3);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v42 - v7;
  v8 = type metadata accessor for NSNotificationCenter.Publisher();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v48 = &v42 - v13;
  v14 = __chkstk_darwin(v12);
  v47 = &v42 - v15;
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  v56.receiver = v1;
  v56.super_class = ObjectType;
  objc_msgSendSuper2(&v56, "viewDidLoad");
  sub_1003C0810(2);
  sub_1003C1758();
  sub_1003C1AF0();
  v18 = *&v1[OBJC_IVAR___ICSystemPaperViewController_pageControl];
  if (v18)
  {
    [v18 setAlpha:0.0];
    v19 = objc_opt_self();
    v20 = [v19 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = sub_1003D34EC(&qword_1006C43D0, &type metadata accessor for NSNotificationCenter.Publisher);
    Publisher<>.sink(receiveValue:)();

    v21 = *(v9 + 8);
    v21(v17, v8);
    v54 = v21;
    v22 = OBJC_IVAR___ICSystemPaperViewController_subscriptions;
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v45 = v19;
    v23 = [v19 defaultCenter];
    v46 = v17;
    NSNotificationCenter.publisher(for:object:)();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    Publisher<>.sink(receiveValue:)();

    v24 = v8;
    v21(v17, v8);
    v44 = v22;
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v25 = [v19 defaultCenter];
    v26 = [v1 undoManager];
    v27 = v47;
    NSNotificationCenter.publisher(for:object:)();

    v28 = [v1 undoManager];
    v29 = v48;
    v43 = v25;
    NSNotificationCenter.publisher(for:object:)();

    v30 = v50;
    v31 = v24;
    Publisher.merge(with:)();
    v32 = v24;
    v33 = v54;
    v54(v29, v32);
    v33(v27, v31);
    v34 = [v1 undoManager];
    v35 = v51;
    NSNotificationCenter.publisher(for:object:)();

    v36 = v49;
    v37 = v52;
    Publishers.MergeMany.merge(with:)();
    v38 = v31;
    v33(v35, v31);
    v39 = *(v53 + 8);
    v39(v30, v37);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000060B4(&qword_1006C6880, &unk_1006C6870);
    Publisher<>.sink(receiveValue:)();

    v39(v36, v37);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v40 = [v45 defaultCenter];
    v41 = v46;
    NSNotificationCenter.publisher(for:object:)();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    Publisher<>.sink(receiveValue:)();

    v54(v41, v38);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_1003CF424();
    sub_1003C39C0();
    sub_1003CA968();
  }

  else
  {
    __break(1u);
  }
}

void sub_1003C1758()
{
  v1 = [objc_allocWithZone(UINavigationBar) init];
  v2 = OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar;
  v3 = *&v0[OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar];
  *&v0[OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!*&v0[v2])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  [v5 addSubview:?];

  sub_10015DA04(&unk_1006BD390);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100534950;
  v8 = *&v0[v2];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = [v8 topAnchor];
  v10 = OBJC_IVAR___ICSystemPaperViewController_pageContainerView;
  v11 = *&v0[OBJC_IVAR___ICSystemPaperViewController_pageContainerView];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 topAnchor];

  [objc_opt_self() toolbarTopMarginOnPad];
  v14 = [v9 constraintEqualToAnchor:v13 constant:?];

  *(v7 + 32) = v14;
  v15 = *&v0[v2];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = [v15 leadingAnchor];
  v17 = *&v0[v10];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];

  *(v7 + 40) = v19;
  v20 = *&v0[v2];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = [v20 trailingAnchor];
  v22 = *&v0[v10];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v21;
  v24 = objc_opt_self();
  v25 = [v22 trailingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];

  *(v7 + 48) = v26;
  sub_1000054A4(0, &qword_1006C5D90);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:isa];

  v28 = *&v0[v2];
  if (!v28)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100534670;
  v30 = v28;
  *(v29 + 32) = [v0 navigationItem];
  sub_1000054A4(0, &unk_1006C6890);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v30 setItems:v31];

  sub_1003C2F9C();

  sub_1003C39C0();
}

void sub_1003C1AF0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = sub_1003C0610(&OBJC_IVAR___ICSystemPaperViewController____lazy_storage___paletteButton, sub_1003C02A0);
  [v2 addSubview:v3];

  sub_10015DA04(&unk_1006BD390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100531E10;
  v5 = OBJC_IVAR___ICSystemPaperViewController____lazy_storage___paletteButton;
  v6 = [*&v0[OBJC_IVAR___ICSystemPaperViewController____lazy_storage___paletteButton] leadingAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v7 safeAreaLayoutGuide];

  v10 = [v9 leadingAnchor];
  v11 = objc_opt_self();
  [v11 gutterMarginOnPad];
  v12 = [v6 constraintEqualToAnchor:v10 constant:?];

  *(v4 + 32) = v12;
  v13 = [*&v0[v5] widthAnchor];
  [v11 paletteButtonEdgeSizeOnPad];
  v14 = [v13 constraintEqualToConstant:?];

  *(v4 + 40) = v14;
  v15 = [*&v0[v5] heightAnchor];
  [v11 paletteButtonEdgeSizeOnPad];
  v16 = [v15 constraintEqualToConstant:?];

  *(v4 + 48) = v16;
  v17 = [*&v0[v5] bottomAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = objc_opt_self();
  v21 = [v19 bottomAnchor];

  [v11 gutterMarginOnPad];
  v23 = [v17 constraintEqualToAnchor:v21 constant:-v22];

  *(v4 + 56) = v23;
  sub_1000054A4(0, &qword_1006C5D90);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints:isa];

  v25 = *&v0[OBJC_IVAR___ICSystemPaperViewController_pageControl];
  if (v25)
  {
    v26 = *&v0[v5];
    v27 = v25;
    v28 = [v26 firstBaselineAnchor];
    v29 = [v27 centerYAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:4.75];

    LODWORD(v31) = 1144750080;
    [v30 setPriority:v31];
    [v30 setActive:1];
  }

  v32 = [*&v0[v5] leadingAnchor];
  v33 = [v0 view];
  if (!v33)
  {
    goto LABEL_15;
  }

  v34 = v33;
  v35 = [v33 safeAreaLayoutGuide];

  v36 = [v35 leadingAnchor];
  [v11 gutterMarginOnPad];
  v37 = [v32 constraintEqualToAnchor:v36 constant:?];

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    [Strong setActive:1];
  }
}

void sub_1003C1FE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003C2034();
  }
}

void sub_1003C2034()
{
  v1 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (v1)
  {
    [v1 doneEditing];
  }

  sub_1003C5178();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong closeAuxiliaryWindowAnimated:1];
  }
}

void sub_1003C20B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003C2114();
  }
}

void sub_1003C2114()
{
  v1 = v0;
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006C64F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received noteEditorDidChangeNote.", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR___ICSystemPaperViewController_isSettingCurrentNote))
  {
    return;
  }

  Notification.object.getter();
  if (!v18[3])
  {
    sub_1000073B4(v18, &qword_1006BE7A0);
LABEL_13:
    v6 = (v1 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
    v7 = *(v1 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
    if (v7)
    {
      return;
    }

LABEL_14:
    v8 = v7;
    goto LABEL_15;
  }

  sub_1000054A4(0, &qword_1006C6420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = (v1 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  v7 = *(v1 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (!v19)
  {
    if (v7)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    v16 = 0;
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
  if (v7 == v19)
  {
LABEL_15:
    v9 = Notification.userInfo.getter();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      AnyHashable.init<A>(_:)();
      if (*(v10 + 16))
      {
        v11 = sub_100024E34(v18);
        if (v12)
        {
          sub_10000A2A0(*(v10 + 56) + 32 * v11, &v19);
          sub_100024F9C(v18);

          if (*(&v20 + 1))
          {
            sub_1000054A4(0, &qword_1006C1420);
            if (swift_dynamicCast())
            {
              v13 = v18[0];
              if (*v6 && (v14 = [*v6 note]) != 0)
              {
                v15 = v14;
              }

              else
              {
                v17 = v13;
                sub_1003C6DC0(v13, 0, 0, 0, 0);
              }
            }

            return;
          }

LABEL_25:
          sub_1000073B4(&v19, &qword_1006BE7A0);
          return;
        }
      }

      sub_100024F9C(v18);
    }

    v19 = 0u;
    v20 = 0u;
    goto LABEL_25;
  }
}

void sub_1003C2428()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (v10)
    {
      sub_1000054A4(0, &qword_1006C6888);
      if (swift_dynamicCast())
      {
        v2 = v8;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      sub_1000073B4(v9, &qword_1006BE7A0);
      v2 = 0;
    }

    v3 = *&v1[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
    if (v3 && (v4 = [v3 textView]) != 0)
    {
      v5 = v4;
      v6 = [v4 undoManager];

      if (!v2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = 0;
      if (!v2)
      {
LABEL_10:
        if (v6)
        {

          v1 = v6;
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }

    if (!v6)
    {

      v1 = v2;
      goto LABEL_17;
    }

    sub_1000054A4(0, &qword_1006C6888);
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
LABEL_17:

      return;
    }

LABEL_15:
    sub_1003CF424();
    sub_1003C39C0();
    sub_1003CA968();
    goto LABEL_17;
  }
}

uint64_t sub_1003C25B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v6 = *(v12 - 8);
  __chkstk_darwin(v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006BE9E0);
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1003D34BC;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065BDD0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v13 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v12);
}

void sub_1003C2894()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003C28E8();
  }
}

void sub_1003C28E8()
{
  v1 = &selRef_tintColor;
  if ((_UISolariumEnabled() & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0 || (v3 = Strong, v4 = [Strong isVisible], v3, !v4))
  {
    v12 = 0;
    goto LABEL_8;
  }

  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_self();
    v8 = [v6 window];

    v9 = [v8 windowScene];
    v10 = [v7 _existingInteractionForWindowScene:v9];

    if (v10)
    {
      v11 = [v10 _paletteViewVisible];

      v12 = v11 ^ 1;
    }

    else
    {
      v12 = 1;
    }

LABEL_8:
    v13 = OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundView;
    v14 = *&v0[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundView];
    if (v14 && (v15 = [v14 superview]) != 0)
    {

      v16 = 0.0;
      if ((v12 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((v12 & 1) == 0)
      {
LABEL_18:
        v16 = sub_1003CF29C();
        goto LABEL_19;
      }

      v17 = [objc_opt_self() effectWithStyle:8];
      v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];

      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = [v0 view];
      if (!v19)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v20 = v19;
      v21 = sub_1003C0610(&OBJC_IVAR___ICSystemPaperViewController____lazy_storage___paletteButton, sub_1003C02A0);
      [v20 insertSubview:v18 belowSubview:v21];

      v22 = [v18 bottomAnchor];
      v23 = [v0 view];
      if (!v23)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v24 = v23;
      v54 = v12;
      v25 = [v23 bottomAnchor];

      v26 = [v22 constraintEqualToAnchor:v25 constant:sub_1003CF29C()];
      sub_10015DA04(&unk_1006BD390);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100531E10;
      v28 = [v18 leadingAnchor];
      v29 = [v0 view];
      if (!v29)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v30 = v29;
      v31 = [v29 leadingAnchor];

      v32 = [v28 constraintEqualToAnchor:v31];
      *(v27 + 32) = v32;
      *(v27 + 40) = v26;
      v33 = v26;
      v34 = [v18 trailingAnchor];
      v35 = [v0 view];
      if (!v35)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v36 = v35;
      v37 = objc_opt_self();
      v38 = [v36 trailingAnchor];

      v39 = [v34 constraintEqualToAnchor:v38];
      *(v27 + 48) = v39;
      v40 = [v18 heightAnchor];
      v41 = [v40 constraintEqualToConstant:80.0];

      *(v27 + 56) = v41;
      sub_1000054A4(0, &qword_1006C5D90);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v37 activateConstraints:isa];

      v43 = *&v0[v13];
      *&v0[v13] = v18;

      v44 = *&v0[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundViewBottomConstraint];
      *&v0[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundViewBottomConstraint] = v33;

      v16 = 0.0;
      v1 = &selRef_tintColor;
      v12 = v54;
    }

LABEL_19:
    v45 = [v0 v1[377]];
    if (v45)
    {
      v46 = v45;
      [v45 layoutIfNeeded];

      v47 = objc_opt_self();
      v48 = swift_allocObject();
      *(v48 + 16) = v0;
      *(v48 + 24) = v16;
      v59 = sub_1003D31F4;
      v60 = v48;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_10028DCE8;
      v58 = &unk_10065B920;
      v49 = _Block_copy(&aBlock);
      v50 = v0;

      v51 = swift_allocObject();
      *(v51 + 16) = v12;
      *(v51 + 24) = v50;
      v59 = sub_1003D3200;
      v60 = v51;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_1003CF3C4;
      v58 = &unk_10065B970;
      v52 = _Block_copy(&aBlock);
      v53 = v50;

      [v47 ic_animateUsingSpringWithDampingRatio:v49 response:v52 animations:0.845 completion:0.531];
      _Block_release(v52);
      _Block_release(v49);
      return;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

void sub_1003C2F9C()
{
  v1 = objc_allocWithZone(UIBarButtonItem);
  v2 = v0;
  v3 = [v1 initWithBarButtonSystemItem:0 target:v2 action:"didTapDoneButton:"];
  v4 = OBJC_IVAR___ICSystemPaperViewController_doneBarButtonItem;
  v5 = *&v2[OBJC_IVAR___ICSystemPaperViewController_doneBarButtonItem];
  *&v2[OBJC_IVAR___ICSystemPaperViewController_doneBarButtonItem] = v3;

  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed:v6];

  v9 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v8 style:0 target:v2 action:"didTapAddNoteButton:"];
  v10 = *&v2[OBJC_IVAR___ICSystemPaperViewController_newNoteBarButtonItem];
  v93 = OBJC_IVAR___ICSystemPaperViewController_newNoteBarButtonItem;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_newNoteBarButtonItem] = v9;
  v11 = v9;

  if (!v11)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v11 setAccessibilityLabel:v15];

  v16 = String._bridgeToObjectiveC()();
  v17 = [v7 systemImageNamed:v16];

  v18 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v17 style:0 target:v2 action:"didTapBackToNotes:"];
  v19 = *&v2[OBJC_IVAR___ICSystemPaperViewController_backToNotesBarButtonItem];
  v92 = OBJC_IVAR___ICSystemPaperViewController_backToNotesBarButtonItem;
  *&v2[OBJC_IVAR___ICSystemPaperViewController_backToNotesBarButtonItem] = v18;
  v20 = v18;

  if (!v20)
  {
    goto LABEL_19;
  }

  v90 = v8;
  v91 = v4;
  v21 = [v12 mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [v20 setAccessibilityLabel:v23];

  v24 = String._bridgeToObjectiveC()();
  v25 = [v7 systemImageNamed:v24];

  v26 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v25 style:0 target:0 action:0];
  v27 = OBJC_IVAR___ICSystemPaperViewController_moreBarButtonItem;
  v28 = *&v2[OBJC_IVAR___ICSystemPaperViewController_moreBarButtonItem];
  *&v2[OBJC_IVAR___ICSystemPaperViewController_moreBarButtonItem] = v26;
  v29 = v26;

  if (!v29)
  {
    goto LABEL_20;
  }

  v30 = objc_opt_self();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1003D34C4;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003BF11C;
  aBlock[3] = &unk_10065BDF8;
  v32 = _Block_copy(aBlock);

  v33 = [v30 elementWithUncachedProvider:v32];
  _Block_release(v32);
  sub_1000054A4(0, &unk_1006C6410);
  sub_10015DA04(&unk_1006BD390);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100534670;
  *(v34 + 32) = v33;
  preferredElementSize = v34;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v96.value.super.isa = 0;
  v96.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v35, 0, v96, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v86).super.super.isa;
  [v29 setMenu:isa];

  v37 = *&v2[v27];
  if (!v37)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v89 = v17;
  v38 = v37;
  v39 = [v12 mainBundle];
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 localizedStringForKey:v40 value:0 table:0];

  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
  }

  v88 = v25;
  [v38 setAccessibilityLabel:v41];

  v42 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:21 target:v2 action:"undo"];
  v43 = OBJC_IVAR___ICSystemPaperViewController_undoBarButtonItem;
  v44 = *&v2[OBJC_IVAR___ICSystemPaperViewController_undoBarButtonItem];
  *&v2[OBJC_IVAR___ICSystemPaperViewController_undoBarButtonItem] = v42;

  v45 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:22 target:v2 action:"redo"];
  v46 = OBJC_IVAR___ICSystemPaperViewController_redoBarButtonItem;
  v47 = *&v2[OBJC_IVAR___ICSystemPaperViewController_redoBarButtonItem];
  *&v2[OBJC_IVAR___ICSystemPaperViewController_redoBarButtonItem] = v45;

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100534670;
  v49 = *&v2[v93];
  if (!v49)
  {
    goto LABEL_22;
  }

  *(v48 + 32) = v49;
  v50 = objc_allocWithZone(UIBarButtonItemGroup);
  sub_1000054A4(0, &qword_1006C68A0);
  v51 = v49;
  v52 = Array._bridgeToObjectiveC()().super.isa;

  v53 = [v50 initWithBarButtonItems:v52 representativeItem:0];

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_100531E20;
  v55 = *&v2[v27];
  if (!v55)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v87 = v53;
  *(v54 + 32) = v55;
  v56 = *&v2[v92];
  if (!v56)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v54 + 40) = v56;
  v57 = objc_allocWithZone(UIBarButtonItemGroup);
  v58 = v56;
  v59 = v55;
  v60 = Array._bridgeToObjectiveC()().super.isa;

  v61 = [v57 initWithBarButtonItems:v60 representativeItem:0];

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_100531E20;
  v63 = *&v2[v43];
  if (!v63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v62 + 32) = v63;
  v64 = *&v2[v46];
  if (!v64)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v62 + 40) = v64;
  v65 = objc_allocWithZone(UIBarButtonItemGroup);
  v66 = v64;
  v67 = v63;
  v68 = Array._bridgeToObjectiveC()().super.isa;

  v69 = [v65 initWithBarButtonItems:v68 representativeItem:0];

  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_100534670;
  v71 = *&v2[v91];
  if (v71)
  {
    *(v70 + 32) = v71;
    v72 = objc_allocWithZone(UIBarButtonItemGroup);
    v73 = v71;
    v74 = Array._bridgeToObjectiveC()().super.isa;

    v75 = [v72 initWithBarButtonItems:v74 representativeItem:0];

    v76 = [v2 navigationItem];
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_100531E20;
    *(v77 + 32) = v87;
    *(v77 + 40) = v61;
    sub_1000054A4(0, &qword_1006C68A8);
    v94 = v87;
    v78 = v61;
    v79 = Array._bridgeToObjectiveC()().super.isa;

    [v76 setLeadingItemGroups:v79];

    v80 = [v2 navigationItem];
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100534670;
    *(v81 + 32) = v69;
    v82 = v69;
    v83 = Array._bridgeToObjectiveC()().super.isa;

    [v80 setTrailingItemGroups:v83];

    v84 = [v2 navigationItem];
    [v84 setPinnedTrailingGroup:v75];

    return;
  }

LABEL_27:
  __break(1u);
}