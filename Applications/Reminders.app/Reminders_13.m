uint64_t sub_100156D70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076F9C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v32 - v6;
  if (sub_1001554CC())
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = sub_1005473B8(0, 1, 1, _swiftEmptyArrayStorage);
    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1005473B8((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    v12 = &v9[2 * v11];
    v12[4] = sub_100158700;
    v12[5] = v8;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for TTRProcessMoveSubjects();
  *&v45 = a1;
  v13 = sub_100058000(&qword_10076F9D0);
  v14 = sub_100158618();
  v38 = v13;
  v37 = v14;
  static TTRProcessMoveSubjects.process<A>(moveSubjects:disallowOverride:moveFilters:)();
  *(v2 + 24) = TTRProcessMoveSubjects.MoveResults.shouldDisallow.getter() & 1;
  *(v2 + 16) = TTRProcessMoveSubjects.MoveResults.moveSubjects.getter();

  v15 = *(v2 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v32[2] = v9;
    v33 = v7;
    v34 = v5;
    v35 = v4;
    v36 = v2;
    v17 = v15 + 32;
    v32[1] = v15;

    v18 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_10000794C(v17, &v45, &qword_10076F9E0);
      *&v40[9] = *&v46[9];
      v39 = v45;
      *v40 = *v46;
      v19 = v46[24];
      sub_100005FD0(&v39, v41);
      if (v19)
      {
        sub_100005FD0(v41, &v42);
        if (*(&v43 + 1))
        {
          sub_100005FD0(&v42, &v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100547394(0, v18[2] + 1, 1, v18);
          }

          v21 = v18[2];
          v20 = v18[3];
          if (v21 >= v20 >> 1)
          {
            v18 = sub_100547394((v20 > 1), v21 + 1, 1, v18);
          }

          v22 = sub_10000AE84(&v39, *&v40[8]);
          v23 = __chkstk_darwin(v22);
          v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v26 + 16))(v25, v23);
          *(&v43 + 1) = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
          v44 = &off_100718370;
          v27 = sub_1000317B8(&v42);
          sub_10015869C(v25, v27);
          v18[2] = v21 + 1;
          sub_100005FD0(&v42, &v18[5 * v21 + 4]);
          sub_100004758(&v39);
          goto LABEL_10;
        }
      }

      else
      {
        sub_100004758(v41);
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
      }

      sub_1000079B4(&v42, &qword_100775A40);
LABEL_10:
      v17 += 48;
      if (!--v16)
      {

        v2 = v36;
        v4 = v35;
        v5 = v34;
        v7 = v33;
        goto LABEL_20;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_20:
  v28 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredMoveSubjects;
  swift_beginAccess();
  *(v2 + v28) = v18;

  swift_beginAccess();
  v29 = *(v2 + v28);
  if (v29)
  {
    swift_endAccess();
    *&v39 = v29;
    type metadata accessor for TTRRemindersListViewModel.Item();

    v30 = Sequence.completeCompactMap<A>(_:)();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    swift_endAccess();

    v30 = 0;
  }

  *(v2 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredLocalItems) = v30;
}

uint64_t sub_10015733C()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_100058000(&qword_10076FA28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_100058000(&unk_100775A30);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  sub_1001560F8(&v17 - v9);
  v11 = sub_100058000(&qword_10076FA08);
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_1000079B4(v10, &unk_100775A30);
  if (v12 != 1 && *(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredLocalItems))
  {
    v13 = *(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_insertionRequest);

    v14 = sub_100155444();

    if (v14)
    {
      sub_10000794C(v13 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent, v3, &qword_100772140);
      type metadata accessor for TTRRemindersListViewModel.Item();
      sub_10015A208(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      TTRDerivedTreeLocation.init(parent:index:)();
      v15 = TTRRemindersListTreeViewModel.steps(forMoving:to:)();

      (*(v5 + 8))(v7, v4);
      return v15;
    }
  }

  return 0;
}

uint64_t sub_10015762C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_100058000(&unk_100775A30);
  __chkstk_darwin(v3 - 8);
  v5 = &v62 - v4;
  v6 = sub_100058000(&qword_10076FA08);
  v70 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  v9 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for TTRSection();
  v74 = *(v12 - 8);
  __chkstk_darwin(v12);
  v75 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100775970);
  __chkstk_darwin(v14 - 8);
  v16 = &v62 - v15;
  v17 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v69 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v71 = &v62 - v21;
  v22 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredMoveSubjects;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (!v23)
  {
    goto LABEL_4;
  }

  v68 = v2;
  v24 = v23;

  sub_100155510(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    sub_1000079B4(v16, &qword_100775970);
LABEL_4:
    v25 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
    v26 = *(*(v25 - 8) + 56);
    v27 = v72;
    return v26(v27, 1, 1, v25);
  }

  v63 = v5;
  v62 = v8;
  v64 = v6;
  v66 = v18;
  v67 = v17;
  (*(v18 + 32))(v71, v16, v17);
  v28 = *(v24 + 16);
  v65 = v24;
  if (v28)
  {
    v29 = v24 + 32;
    v30 = (v74 + 16);
    v31 = (v74 + 56);
    v32 = (v74 + 48);
    v33 = (v74 + 32);
    v76 = _swiftEmptyArrayStorage;
    v73 = (v74 + 32);
    do
    {
      sub_10000B0D8(v29, v77);
      v34 = sub_10000C36C(v77, v77[3]);
      v35 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
      (*v30)(v11, &v34[*(v35 + 20)], v12);
      (*v31)(v11, 0, 1, v12);
      sub_100004758(v77);
      if ((*v32)(v11, 1, v12) == 1)
      {
        sub_1000079B4(v11, &unk_100775960);
      }

      else
      {
        v36 = *v33;
        (*v33)(v75, v11, v12);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v37 = v76;
        }

        else
        {
          v37 = sub_100547428(0, v76[2] + 1, 1, v76);
        }

        v39 = v37[2];
        v38 = v37[3];
        if (v39 >= v38 >> 1)
        {
          v37 = sub_100547428(v38 > 1, v39 + 1, 1, v37);
        }

        v37[2] = v39 + 1;
        v40 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v76 = v37;
        v41 = v37 + v40 + *(v74 + 72) * v39;
        v33 = v73;
        v36(v41, v75, v12);
      }

      v29 += 40;
      --v28;
    }

    while (v28);
  }

  else
  {
    v76 = _swiftEmptyArrayStorage;
  }

  if (!v76[2])
  {
    (*(v66 + 8))(v71, v67);

    v46 = v72;
    goto LABEL_21;
  }

  v42 = v63;
  sub_1001560F8(v63);
  v43 = v70;
  v44 = v64;
  v45 = (*(v70 + 48))(v42, 1, v64);
  v47 = v71;
  v46 = v72;
  if (v45 == 1)
  {
    (*(v66 + 8))(v71, v67);

    sub_1000079B4(v42, &unk_100775A30);
LABEL_21:
    v25 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
    v26 = *(*(v25 - 8) + 56);
    v27 = v46;
    return v26(v27, 1, 1, v25);
  }

  v49 = *(v43 + 32);
  v50 = v62;
  v49(v62, v42, v44);
  v52 = v66;
  v51 = v67;
  v53 = v69;
  (*(v66 + 16))(v69, v47, v67);
  v54 = (*(v52 + 88))(v53, v51);
  if (v54 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.list(_:))
  {
    (*(v52 + 8))(v47, v51);

    (*(v52 + 96))(v53, v51);
    v55 = *v53;
    v56 = *(sub_100058000(&qword_10076FA20) + 64);
    *v46 = v76;
    v46[1] = v55;
    v49(v46 + v56, v50, v44);
    v57 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
LABEL_29:
    swift_storeEnumTagMultiPayload();
    return (*(*(v57 - 8) + 56))(v46, 0, 1, v57);
  }

  if (v54 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.smartList(_:))
  {
    (*(v52 + 8))(v47, v51);

    (*(v52 + 96))(v53, v51);
    v58 = *v53;
    v59 = *(sub_100058000(&qword_10076FA18) + 64);
    *v46 = v76;
    v46[1] = v58;
    v49(v46 + v59, v50, v44);
    v57 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
    goto LABEL_29;
  }

  if (v54 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.template(_:))
  {
    (*(v52 + 8))(v47, v51);

    (*(v52 + 96))(v53, v51);
    v60 = *v53;
    v61 = *(sub_100058000(&qword_10076FA10) + 64);
    *v46 = v76;
    v46[1] = v60;
    v49(v46 + v61, v50, v44);
    v57 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
    goto LABEL_29;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100157F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_10000C36C(a1, a1[3]);

    LOBYTE(v4) = sub_100158708(v4);

    v5 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
    if (v4)
    {
      v6 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    }

    else
    {
      v6 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
    }

    return (*(*(v5 - 8) + 104))(a2, *v6, v5);
  }

  else
  {
    v7 = enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    v8 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
    return (*(*(v8 - 8) + 104))(a2, v7, v8);
  }
}

uint64_t sub_10015806C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_10076F9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000B0D8(a1, v18);
  sub_100058000(&qword_10076F9F8);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_10015869C(v6, v10);
    v13 = type metadata accessor for TTRRemindersListViewModel.Item();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, v10, v13);
    sub_100158F18(v10, type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem);
    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_1000079B4(v6, &qword_10076F9F0);
    v16 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_1001582EC()
{

  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan____lazy_storage___position, &qword_10076FA00);

  return swift_deallocClassInstance();
}

void sub_1001583E4()
{
  sub_1001592D4(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100014068(319, &unk_10076F828, &qword_100775970);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100158540()
{
  sub_100014068(319, &unk_10076F920, &unk_100775A30);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100158618()
{
  result = qword_10076F9D8;
  if (!qword_10076F9D8)
  {
    sub_10005D20C(&qword_10076F9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076F9D8);
  }

  return result;
}

uint64_t sub_10015869C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100158708(uint64_t a1)
{
  v2 = type metadata accessor for TTRSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775970);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-1] - v7;
  v9 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
  v22 = v13;
  v23 = &off_100718370;
  v14 = sub_1000317B8(v21);
  sub_10015A1A0(a1, v14, type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem);
  if (sub_1001554CC())
  {
    sub_100155510(v8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_100093330();
      v16 = TTRRemindersListInteractorSectionsCapabilityTarget.objectID.getter();
      v17 = sub_10000C36C(v21, v22);
      (*(v3 + 16))(v5, &v17[*(v13 + 20)], v2);
      v18 = TTRSection.parentID.getter();
      (*(v3 + 8))(v5, v2);
      v15 = static NSObject.== infix(_:_:)();

      (*(v10 + 8))(v12, v9);
      goto LABEL_6;
    }

    sub_1000079B4(v8, &qword_100775970);
  }

  v15 = 0;
LABEL_6:
  sub_100004758(v21);
  return v15 & 1;
}

uint64_t *sub_100158A14(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;

    v8 = v7;
    v9 = sub_100058000(&qword_10076FA08);
    v10 = *(*(v9 - 8) + 16);
    if (EnumCaseMultiPayload == 2)
    {
      v13 = sub_100058000(&qword_10076FA10);
      v10(a1 + *(v13 + 64), a2 + *(v13 + 64), v9);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = sub_100058000(&qword_10076FA18);
      }

      else
      {
        v11 = sub_100058000(&qword_10076FA20);
      }

      v10(a1 + *(v11 + 64), a2 + *(v11 + 64), v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100158BC8(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {

    v3 = &qword_10076FA10;
  }

  else if (result == 1)
  {

    v3 = &qword_10076FA18;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v3 = &qword_10076FA20;
  }

  v4 = *(sub_100058000(v3) + 64);
  v5 = sub_100058000(&qword_10076FA08);
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *sub_100158CCC(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;

  v6 = v5;
  v7 = sub_100058000(&qword_10076FA08);
  v8 = *(*(v7 - 8) + 16);
  if (EnumCaseMultiPayload == 2)
  {
    v9 = &qword_10076FA10;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v9 = &qword_10076FA18;
  }

  else
  {
    v9 = &qword_10076FA20;
  }

  v10 = sub_100058000(v9);
  v8(&a1[*(v10 + 64)], &a2[*(v10 + 64)], v7);
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100158DDC(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_100158F18(a1, type metadata accessor for TTRRemindersListMovingSectionsParams);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    v5 = *(a2 + 1);
    *(a1 + 1) = v5;

    v6 = v5;
    v7 = sub_100058000(&qword_10076FA08);
    v8 = *(*(v7 - 8) + 16);
    if (EnumCaseMultiPayload == 2)
    {
      v9 = &qword_10076FA10;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v9 = &qword_10076FA18;
    }

    else
    {
      v9 = &qword_10076FA20;
    }

    v10 = sub_100058000(v9);
    v8(&a1[*(v10 + 64)], &a2[*(v10 + 64)], v7);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100158F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_100158F78(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = sub_100058000(&qword_10076FA08);
  v7 = *(*(v6 - 8) + 32);
  if (EnumCaseMultiPayload == 2)
  {
    v8 = &qword_10076FA10;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = &qword_10076FA18;
  }

  else
  {
    v8 = &qword_10076FA20;
  }

  v9 = sub_100058000(v8);
  v7(&a1[*(v9 + 64)], &a2[*(v9 + 64)], v6);
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100159080(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_100158F18(a1, type metadata accessor for TTRRemindersListMovingSectionsParams);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = sub_100058000(&qword_10076FA08);
    v7 = *(*(v6 - 8) + 32);
    if (EnumCaseMultiPayload == 2)
    {
      v8 = &qword_10076FA10;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v8 = &qword_10076FA18;
    }

    else
    {
      v8 = &qword_10076FA20;
    }

    v9 = sub_100058000(v8);
    v7(&a1[*(v9 + 64)], &a2[*(v9 + 64)], v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_1001591AC()
{
  sub_1001592D4(319, &unk_10076FAB0, &type metadata accessor for TTRSection, &type metadata accessor for TTRRelativeInsertionPosition);
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v4 = &v3;
    swift_getTupleTypeLayout3();
    v5 = &v2;
    swift_getTupleTypeLayout3();
    v6 = &v1;
    swift_initEnumMetadataMultiPayload();
  }
}

void sub_1001592D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_100159338(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for TTRSection();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_100159434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for TTRSection();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1001594D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSection();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_100159588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSection();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_100159638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSection();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1001596E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSection();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1001597C0()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRSection();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100159888(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v3 = sub_100058000(&qword_10076FA08);
  v4 = *(v3 - 8);
  v96 = v3;
  v97 = v4;
  v5 = __chkstk_darwin(v3);
  v92 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v94 = &v90 - v8;
  v9 = __chkstk_darwin(v7);
  v91 = &v90 - v10;
  v11 = __chkstk_darwin(v9);
  v93 = &v90 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v90 - v14;
  __chkstk_darwin(v13);
  v17 = &v90 - v16;
  v18 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
  v19 = __chkstk_darwin(v18);
  v21 = (&v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v19);
  v24 = (&v90 - v23);
  __chkstk_darwin(v22);
  v26 = (&v90 - v25);
  v27 = sub_100058000(&qword_10076FB70);
  v28 = __chkstk_darwin(v27 - 8);
  v30 = &v90 - v29;
  v31 = (&v90 + *(v28 + 56) - v29);
  sub_10015A1A0(a1, &v90 - v29, type metadata accessor for TTRRemindersListMovingSectionsParams);
  sub_10015A1A0(v95, v31, type metadata accessor for TTRRemindersListMovingSectionsParams);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v94 = v17;
    sub_10015A1A0(v30, v26, type metadata accessor for TTRRemindersListMovingSectionsParams);
    v52 = *v26;
    v34 = v26[1];
    v53 = *(sub_100058000(&qword_10076FA20) + 64);
    v36 = v26 + v53;
    if (!swift_getEnumCaseMultiPayload())
    {
      v95 = v30;
      v90 = v34;
      v70 = *v31;
      v71 = v31[1];
      v72 = v97;
      v73 = *(v97 + 32);
      v74 = v36;
      v75 = v96;
      v73(v94, v74, v96);
      v76 = v31 + v53;
      v77 = v15;
      v73(v15, v76, v75);
      v78 = sub_100125DF4(v52, v70);

      if ((v78 & 1) == 0)
      {

        v85 = *(v72 + 8);
        v85(v15, v75);
        v85(v94, v75);
        goto LABEL_25;
      }

      sub_100093330();
      v79 = v90;
      v80 = static NSObject.== infix(_:_:)();
      v67 = v95;
      if (v80)
      {
        type metadata accessor for TTRSection();
        sub_10015A208(&qword_10076D1D8, &type metadata accessor for TTRSection);
        v81 = v94;
        v49 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

        v82 = *(v97 + 8);
        v82(v77, v75);
        v82(v81, v75);
        goto LABEL_18;
      }

      v88 = *(v97 + 8);
      v88(v77, v75);
      v88(v94, v75);
LABEL_29:
      v86 = v67;
      goto LABEL_30;
    }

    v38 = v97;
LABEL_14:
    (*(v38 + 8))(v36, v96);

    sub_1000079B4(v30, &qword_10076FB70);
LABEL_31:
    v49 = 0;
    return v49 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10015A1A0(v30, v21, type metadata accessor for TTRRemindersListMovingSectionsParams);
    v54 = *v21;
    v34 = v21[1];
    v55 = *(sub_100058000(&qword_10076FA10) + 64);
    v36 = v21 + v55;
    v56 = swift_getEnumCaseMultiPayload();
    v38 = v97;
    if (v56 == 2)
    {
      v95 = v30;
      v90 = v34;
      v57 = *v31;
      v58 = v31[1];
      v59 = *(v97 + 32);
      v42 = v94;
      v60 = v36;
      v43 = v96;
      v59(v94, v60, v96);
      v61 = v31 + v55;
      v62 = v92;
      v59(v92, v61, v43);
      v63 = sub_100125DF4(v54, v57);

      if ((v63 & 1) == 0)
      {

        v83 = *(v38 + 8);
        v83(v62, v43);
        goto LABEL_22;
      }

      sub_100093330();
      v64 = v90;
      v65 = v58;
      v66 = static NSObject.== infix(_:_:)();
      v67 = v95;
      if (v66)
      {
        type metadata accessor for TTRSection();
        sub_10015A208(&qword_10076D1D8, &type metadata accessor for TTRSection);
        v68 = v94;
        v49 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

        v69 = *(v38 + 8);
        v69(v62, v43);
        v69(v68, v43);
LABEL_18:
        v51 = v67;
        goto LABEL_19;
      }

      v87 = *(v38 + 8);
      v87(v62, v43);
      v87(v94, v43);
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v95 = v30;
  sub_10015A1A0(v30, v24, type metadata accessor for TTRRemindersListMovingSectionsParams);
  v33 = *v24;
  v34 = v24[1];
  v35 = *(sub_100058000(&qword_10076FA18) + 64);
  v36 = v24 + v35;
  v37 = swift_getEnumCaseMultiPayload();
  v38 = v97;
  if (v37 != 1)
  {
    v30 = v95;
    goto LABEL_14;
  }

  v90 = v34;
  v39 = *v31;
  v40 = v31[1];
  v41 = *(v97 + 32);
  v42 = v93;
  v43 = v96;
  v41(v93, v24 + v35, v96);
  v44 = v31 + v35;
  v45 = v91;
  v41(v91, v44, v43);
  v46 = sub_100125DF4(v33, v39);

  if ((v46 & 1) == 0)
  {

    v83 = *(v38 + 8);
    v83(v45, v43);
LABEL_22:
    v84 = v42;
LABEL_23:
    v83(v84, v43);
LABEL_25:
    v86 = v95;
LABEL_30:
    sub_100158F18(v86, type metadata accessor for TTRRemindersListMovingSectionsParams);
    goto LABEL_31;
  }

  sub_100093330();
  v47 = v90;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    v83 = *(v38 + 8);
    v83(v45, v43);
    v84 = v93;
    goto LABEL_23;
  }

  type metadata accessor for TTRSection();
  sub_10015A208(&qword_10076D1D8, &type metadata accessor for TTRSection);
  v48 = v93;
  v49 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

  v50 = *(v38 + 8);
  v50(v45, v43);
  v50(v48, v43);
  v51 = v95;
LABEL_19:
  sub_100158F18(v51, type metadata accessor for TTRRemindersListMovingSectionsParams);
  return v49 & 1;
}

uint64_t sub_10015A1A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015A208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015A250(uint64_t a1, void *a2, void *a3)
{
  sub_100058000(&unk_100776BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSFontAttributeName;
  v6 = sub_100003540(0, &qword_100771DF0);
  *(inited + 40) = a2;
  *(inited + 64) = v6;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_100003540(0, &qword_100772610);
  *(inited + 80) = a3;
  v7 = NSFontAttributeName;
  v8 = a2;
  v9 = NSForegroundColorAttributeName;
  v10 = a3;
  v11 = sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0);
  swift_arrayDestroy();
  NSMutableAttributedString.formatHashtags(with:)(v11);
}

id sub_10015A3AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [a1 mutableString];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  [v8 replaceOccurrencesOfString:v9 withString:v10];

  result = [a1 string];
  if (result)
  {
    v12 = result;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 rangeOfString:v13];
    v16 = v15;

    result = NSNotFound.getter();
    if (v14 != result)
    {
      v17 = String._bridgeToObjectiveC()();
      [a1 addAttribute:NSLinkAttributeName value:v17 range:{v14, v16}];

      return [a1 addAttribute:NSForegroundColorAttributeName value:a6 range:{v14, v16}];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t destroy for TextViewAction(id *a1)
{
}

uint64_t initializeWithCopy for TextViewAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for TextViewAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

__n128 initializeWithTake for TextViewAction(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TextViewAction(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextViewAction(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for TextViewAction(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TTRIAddReminderBarButtonModule.Title(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIAddReminderBarButtonModule.Title(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10015A884()
{
  result = qword_10076FB78;
  if (!qword_10076FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076FB78);
  }

  return result;
}

uint64_t sub_10015A8D8(uint64_t a1, uint64_t a2)
{
  v298 = a2;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v6 - 8);
  v293 = &v285 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v295 = &v285 - v9;
  __chkstk_darwin(v10);
  v294 = &v285 - v11;
  __chkstk_darwin(v12);
  v296 = &v285 - v13;
  v14 = *((v5 & v4) + 0x58);
  v334 = v2;
  v15 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v330 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v302 = &v285 - v17;
  v331 = v18;
  v19 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v312 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v305 = &v285 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v316 = &v285 - v22;
  v327 = v19;
  v325 = *(v19 - 8);
  __chkstk_darwin(v23);
  v303 = &v285 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v313 = &v285 - v26;
  __chkstk_darwin(v27);
  v324 = &v285 - v28;
  __chkstk_darwin(v29);
  v304 = &v285 - v30;
  __chkstk_darwin(v31);
  v323 = &v285 - v32;
  __chkstk_darwin(v33);
  v329 = &v285 - v34;
  updated = type metadata accessor for TTRITreeViewDropUpdateCoordinator.Hit();
  v321 = *(updated - 1);
  __chkstk_darwin(updated);
  v320 = &v285 - v35;
  v318 = swift_getTupleTypeMetadata2();
  v310 = type metadata accessor for Optional();
  v309 = *(v310 - 1);
  __chkstk_darwin(v310);
  v317 = &v285 - v36;
  v308 = swift_getTupleTypeMetadata2();
  __chkstk_darwin(v308);
  v307 = &v285 - v37;
  v38 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v38 - 8);
  v319 = &v285 - v39;
  v40 = type metadata accessor for Optional();
  v336 = *(v40 - 8);
  v337 = v40;
  __chkstk_darwin(v40);
  v301 = &v285 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v300 = &v285 - v43;
  __chkstk_darwin(v44);
  v311 = &v285 - v45;
  __chkstk_darwin(v46);
  v315 = &v285 - v47;
  __chkstk_darwin(v48);
  v314 = &v285 - v49;
  __chkstk_darwin(v50);
  v332 = &v285 - v51;
  __chkstk_darwin(v52);
  v333 = &v285 - v53;
  __chkstk_darwin(v54);
  v56 = &v285 - v55;
  v339 = *(v15 - 8);
  __chkstk_darwin(v57);
  v297 = &v285 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v299 = &v285 - v60;
  __chkstk_darwin(v61);
  v306 = &v285 - v62;
  __chkstk_darwin(v63);
  v335 = &v285 - v64;
  v338 = v15;
  v326 = v14;
  v65 = type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult();
  v66 = type metadata accessor for Optional();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = &v285 - v68;
  v70 = *(v65 - 8);
  __chkstk_darwin(v71);
  v73 = &v285 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v76 = &v285 - v75;
  v77 = *(*a1 + 120);
  swift_beginAccess();
  (*(v67 + 16))(v69, a1 + v77, v66);
  if ((*(v70 + 48))(v69, 1, v65) == 1)
  {
    return (*(v67 + 8))(v69, v66);
  }

  (*(v70 + 32))(v76, v69, v65);
  v79 = sub_1001ABC10();
  if (v80)
  {

    return (*(v70 + 8))(v76, v65);
  }

  v290 = v76;
  v291 = v70;
  v292 = v65;
  v340 = v79;
  v81 = v338;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  v82 = v339;
  v83 = v339 + 48;
  v84 = *(v339 + 48);
  if (v84(v56, 1, v81) == 1)
  {
    (*(v291 + 8))(v290, v292);
    (*(v336 + 8))(v56, v337);
  }

  v289 = v84;
  v288 = v83;
  v85 = v335;
  v287 = *(v82 + 32);
  v287(v335, v56, v81);
  v86 = sub_10015CC3C();
  v286 = sub_10052A7B4(v85);
  v88 = v87;

  if ((v88 & 1) == 0)
  {
    v285 = v82 + 32;
    v91 = sub_10015CC3C();
    sub_10052A73C(v85, v333);

    v92 = v290;
    (*(v291 + 16))(v73, v290, v292);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v94 = v337;
      if (EnumCaseMultiPayload != 1)
      {

        (*(v336 + 8))(v333, v94);
        (*(v82 + 8))(v85, v81);
LABEL_21:
        v89 = *(v291 + 8);
        v90 = v92;
        return v89(v90, v292);
      }

      v95 = v319;
      sub_10015D7F4(v73, v319);
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
LABEL_115:
        __break(1u);
        return result;
      }

      v96 = result;

      v97 = sub_1001ABC10();
      v99 = v317;
      sub_100188D74(v97, v98 & 1, v95, v317);

      sub_10008B860(v95);
      v100 = v318;
      if ((*(*(v318 - 8) + 48))(v99, 1, v318) == 1)
      {
        (*(v309 + 8))(v99, v310);
        (*(v336 + 8))(v333, v337);
        goto LABEL_9;
      }

      v106 = *&v99[*(v100 + 48)];
      v107 = v308;
      v108 = *(v308 + 48);
      v109 = v307;
      v110 = v287;
      v287(v307, v99, v81);
      *&v109[v108] = v106;
      v82 = v339;
      v111 = *(v107 + 48);
      v104 = v332;
      v318 = *&v109[v111];
      v112 = v306;
      v110(v306, v109, v81);
      v110(v104, v112, v81);
      LODWORD(v319) = 0;
      v105 = v336;
      v92 = v290;
    }

    else
    {

      v101 = v321;
      v102 = v320;
      v103 = updated;
      (*(v321 + 32))(v320, v73, updated);
      v104 = v332;
      (*(v82 + 16))(v332, &v102[*(v103 + 9)], v81);
      (*(v101 + 8))(v102, v103);
      v318 = 0;
      LODWORD(v319) = 1;
      v105 = v336;
    }

    v113 = v337;
    (*(v82 + 56))(v104, 0, 1, v81);
    v114 = sub_10015CC3C();
    v115 = sub_10052A84C(v104);
    v116 = v82;
    v118 = v117;

    if (v118)
    {
      v119 = *(v105 + 8);
      v119(v104, v113);
      v119(v333, v113);
      (*(v116 + 8))(v85, v81);
      goto LABEL_21;
    }

    v309 = v115;
    v120 = *(v105 + 16);
    v121 = v314;
    v321 = v105 + 16;
    v320 = v120;
    (v120)(v314, v333, v113);
    v122 = 1;
    if (v289(v121, 1, v81) == 1)
    {
      v123 = v105;
      v124 = v113;
      v125 = v331;
      v126 = v326;
      v127 = v329;
    }

    else
    {
      v126 = v326;
      v127 = v329;
      (*(v326 + 24))(v81, v326);
      v122 = 0;
      v123 = v339;
      v124 = v81;
      v125 = v331;
    }

    v128 = v113;
    (*(v123 + 8))(v121, v124);
    v129 = (v330 + 56);
    v130 = 1;
    updated = *(v330 + 56);
    (updated)(v127, v122, 1, v125);
    v131 = v315;
    (v320)(v315, v104, v128);
    if (v289(v131, 1, v81) == 1)
    {
      v132 = v336;
      v133 = v128;
      v134 = v323;
    }

    else
    {
      v134 = v323;
      (*(v126 + 24))(v81, v126);
      v130 = 0;
      v132 = v339;
      v133 = v81;
    }

    (*(v132 + 8))(v131, v133);
    v317 = v129;
    (updated)(v134, v130, 1, v125);
    v135 = v329;
    v136 = *(TupleTypeMetadata2 + 48);
    v137 = v325;
    v139 = (v325 + 16);
    v138 = *(v325 + 16);
    v140 = v316;
    v141 = v327;
    v138(v316, v329, v327);
    v315 = v136;
    v138(&v136[v140], v134, v141);
    v142 = v330 + 48;
    v143 = *(v330 + 48);
    v144 = v143(v140, 1, v125);
    v314 = v139;
    v310 = v138;
    if (v144 == 1)
    {
      v145 = *(v137 + 8);
      v145(v134, v141);
      v145(v135, v141);
      if (v143(&v315[v140], 1, v331) == 1)
      {
        v145(v140, v141);
        v146 = v336;
        v147 = v332;
LABEL_49:
        if (v319)
        {
          v192 = *(v146 + 8);
          v193 = v337;
          v192(v147, v337);
          v192(v333, v193);
          (*(v339 + 8))(v335, v338);
          goto LABEL_10;
        }

        v196 = v146;
        v197 = v318;
        v198 = v286;
        v199 = v338;
        v200 = v292;
        v201 = v290;
        v202 = v335;
        if (v286 == v318)
        {
          sub_10015CC88(0, 0, 255);
          v203 = *(v196 + 8);
          v204 = v337;
          v203(v332, v337);
          v203(v333, v204);
          (*(v339 + 8))(v202, v199);
          return (*(v291 + 8))(v201, v200);
        }

        result = v318 - 1;
        if (!__OFSUB__(v318, 1))
        {
          v212 = v332;
          v213 = sub_10015CE28(result, v332);
          if (v214)
          {
            v215 = v213;
          }

          else
          {
            v215 = 0;
          }

          if (v214)
          {
            v216 = v214;
          }

          else
          {
            v216 = 0xE000000000000000;
          }

          v217 = sub_10015CE28(v197, v212);
          if (v218)
          {
            v219 = v217;
          }

          else
          {
            v219 = 0;
          }

          if (v218)
          {
            v220 = v218;
          }

          else
          {
            v220 = 0xE000000000000000;
          }

          if (v197 < v198 || !v215 && v216 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v221 = 0;
            v222 = v220;
          }

          else
          {
            v221 = 1;
            v219 = v215;
            v222 = v216;
          }

          sub_10015D7EC();

          sub_10015CC88(v219, v222, v221);
          sub_10015D724();
          v223 = *(v196 + 8);
          v224 = v337;
          v223(v332, v337);
          v223(v333, v224);
          (*(v339 + 8))(v202, v199);
          goto LABEL_10;
        }

        goto LABEL_114;
      }

      v308 = v142;
      v154 = v311;
      v153 = v143;
    }

    else
    {
      v148 = v137;
      v149 = v304;
      v138(v304, v140, v141);
      v150 = v315;
      v151 = v331;
      v308 = v142;
      v152 = v143(&v315[v140], 1, v331);
      v146 = v336;
      v153 = v143;
      if (v152 != 1)
      {
        v188 = v330;
        v189 = &v150[v140];
        v190 = v302;
        (*(v330 + 32))(v302, v189, v151);
        swift_getAssociatedConformanceWitness();
        LODWORD(v315) = dispatch thunk of static Equatable.== infix(_:_:)();
        v191 = *(v188 + 8);
        v191(v190, v151);
        v145 = *(v148 + 8);
        v145(v323, v327);
        v145(v329, v327);
        v191(v149, v151);
        v145(v140, v327);
        v154 = v311;
        v147 = v332;
        if (v315)
        {
          goto LABEL_49;
        }

LABEL_37:
        v329 = v145;
        v155 = v326;
        v156 = *(v326 + 24);
        v157 = v324;
        v158 = v338;
        v156(v338, v326);
        v159 = 1;
        (updated)(v157, 0, 1, v331);
        v160 = v147;
        v161 = v337;
        (v320)(v154, v160, v337);
        v162 = v289(v154, 1, v158);
        v307 = v153;
        if (v162 == 1)
        {
          v163 = v336;
          v164 = v161;
          v165 = v313;
        }

        else
        {
          v165 = v313;
          v156(v158, v155);
          v159 = 0;
          v163 = v339;
          v164 = v158;
        }

        (*(v163 + 8))(v154, v164);
        v166 = v331;
        (updated)(v165, v159, 1, v331);
        v167 = v327;
        v168 = *(TupleTypeMetadata2 + 48);
        v169 = v305;
        v170 = v165;
        v171 = v324;
        v172 = v310;
        v310(v305, v324, v327);
        v172(&v169[v168], v165, v167);
        v173 = v307;
        if ((v307)(v169, 1, v166) == 1)
        {
          v174 = v329;
          (v329)(v170, v167);
          v174(v171, v167);
          v175 = v173(&v169[v168], 1, v166);
          v176 = v338;
          v92 = v290;
          v177 = v335;
          if (v175 == 1)
          {
            v174(v169, v167);
LABEL_57:
            sub_10015CC88(0, 0, 255);
            v210 = v337;
            v211 = *(v336 + 8);
            v211(v332, v337);
            v211(v333, v210);
            (*(v339 + 8))(v177, v176);
            goto LABEL_21;
          }
        }

        else
        {
          v178 = v303;
          v172(v303, v169, v167);
          v179 = v173(&v169[v168], 1, v166);
          v92 = v290;
          if (v179 != 1)
          {
            v205 = v330;
            v206 = v302;
            (*(v330 + 32))(v302, &v169[v168], v166);
            v176 = v338;
            swift_getAssociatedConformanceWitness();
            v207 = dispatch thunk of static Equatable.== infix(_:_:)();
            v208 = *(v205 + 8);
            v208(v206, v166);
            v209 = v329;
            (v329)(v313, v167);
            v209(v324, v167);
            v208(v303, v166);
            v209(v169, v167);
            v177 = v335;
            if (v207)
            {
              goto LABEL_57;
            }

LABEL_46:
            v181 = v337;
            v182 = v332;
            if (v319)
            {
              v183 = 0;
              v184 = 0;
              v185 = 255;
              v186 = v301;
              v187 = v309;
            }

            else
            {
              v194 = v318;
              result = sub_10015CE28(v318, v332);
              v184 = v195;
              v187 = v309;
              if (v195)
              {
                v186 = v301;
                if (__OFSUB__(v309, 1))
                {
                  __break(1u);
LABEL_114:
                  __break(1u);
                  goto LABEL_115;
                }

                v183 = result;
                v185 = v309 - 1 <= v194;
                sub_10015D7EC();
              }

              else
              {
                v183 = 0;
                v185 = 255;
                v186 = v301;
              }
            }

            if (v187 >= 1)
            {
              v225 = v300;
              (v320)(v300, v182, v181);
              if (v289(v225, 1, v176) == 1)
              {
                (*(v336 + 8))(v225, v181);
LABEL_90:
                if (v185 != 255)
                {
                  sub_10015CC88(v183, v184, v185);
                }

                sub_10015D70C(v183, v184, v185);
                v256 = *(v336 + 8);
                v256(v182, v181);
                v256(v333, v181);
                (*(v339 + 8))(v177, v176);
                goto LABEL_10;
              }

              v227 = v299;
              v287(v299, v225, v176);
              v228 = v176;
              v229 = *(v334 + qword_100780CC8);
              v230 = sub_10015CC3C();
              v331 = v229(v230, v227);
              v232 = v231;

              if (!v232)
              {
                (*(v339 + 8))(v227, v228);
                v176 = v228;
                v181 = v337;
                v182 = v332;
                goto LABEL_90;
              }

              v330 = v183;
              v233 = *(type metadata accessor for TTRITreeViewDropProposal(0) + 20);
              v234 = v298;
              v235 = v296;
              sub_10015D72C(v298 + v233, v296);
              v236 = sub_100058000(&qword_100780DC0);
              v237 = *(*(v236 - 8) + 48);
              v238 = v237(v235, 4, v236);
              sub_10015D790(v235);
              if (v238 == 3)
              {
                v239 = v330;
                sub_10015D0A4(v331, v232, v330, v184, v185, 0, 0);

                sub_10015D70C(v239, v184, v185);
                v240 = v338;
                v241 = v292;
              }

              else
              {
                v257 = v234 + v233;
                v258 = v294;
                sub_10015D72C(v257, v294);
                v259 = v237(v258, 4, v236);
                sub_10015D790(v258);
                v260 = v259 == 4;
                v240 = v338;
                v241 = v292;
                if (!v260)
                {
                  v263 = v335;
                  v262 = v336;
                  v277 = v299;
                  if (v185 == 255)
                  {
                  }

                  else
                  {
                    v278 = v330;
                    sub_10015D0A4(v331, v232, v330, v184, v185, 0, 0);

                    sub_10015D70C(v278, v184, v185);
                  }

                  v264 = v277;
                  goto LABEL_111;
                }

                v261 = v330;
                sub_10015D0A4(v331, v232, v330, v184, v185, 0, 0);

                sub_10015D70C(v261, v184, v185);
              }

              v263 = v335;
              v262 = v336;
              v264 = v299;
LABEL_111:
              v279 = *(v339 + 8);
              v279(v264, v240);
              v283 = *(v262 + 8);
              v284 = v337;
              v283(v332, v337);
              v283(v333, v284);
              v282 = v263;
              goto LABEL_112;
            }

            (v320)(v186, v182, v181);
            if (v289(v186, 1, v176) == 1)
            {
              sub_10015D70C(v183, v184, v185);
              v226 = *(v336 + 8);
              v226(v182, v181);
              v226(v333, v181);
              (*(v339 + 8))(v177, v176);
              (*(v291 + 8))(v290, v292);
              return (v226)(v186, v181);
            }

            v242 = v297;
            v287(v297, v186, v176);
            v243 = *(v334 + qword_100780CC8);
            v244 = v176;
            v245 = sub_10015CC3C();
            v246 = v243(v245, v242);
            v248 = v247;

            if (!v248)
            {
              v265 = *(v339 + 8);
              v265(v242, v244);
              sub_10015D70C(v183, v184, v185);
              v266 = v337;
              v267 = *(v336 + 8);
              v267(v332, v337);
              v267(v333, v266);
              v265(v177, v244);
              goto LABEL_10;
            }

            v331 = v246;
            v335 = v248;
            v249 = v183;
            v250 = *(type metadata accessor for TTRITreeViewDropProposal(0) + 20);
            v251 = v298;
            v252 = v295;
            sub_10015D72C(v298 + v250, v295);
            v253 = sub_100058000(&qword_100780DC0);
            v254 = *(*(v253 - 8) + 48);
            if (v254(v252, 4, v253) == 3)
            {
              sub_10015D70C(v183, v184, v185);
              v255 = v252;
            }

            else
            {
              sub_10015D790(v252);
              v268 = v251 + v250;
              v269 = v293;
              sub_10015D72C(v268, v293);
              if (v254(v269, 4, v253) != 4)
              {

                sub_10015D790(v269);
                v240 = v338;
                v241 = v292;
                v276 = v336;
                v272 = v297;
                if (v185 != 255)
                {
                  sub_10015CC88(v249, v184, v185);
                }

                sub_10015D70C(v249, v184, v185);
                goto LABEL_108;
              }

              sub_10015D70C(v183, v184, v185);
              v255 = v269;
            }

            sub_10015D790(v255);
            v270 = *(v334 + qword_100780CD0);
            v271 = sub_10015CC3C();
            v272 = v297;
            v273 = v270(v271, v297);
            v275 = v274;

            sub_10015D0A4(v331, v335, 0, 0, 255, v273, v275);

            v240 = v338;
            v241 = v292;
            v276 = v336;
LABEL_108:
            v279 = *(v339 + 8);
            v279(v272, v240);
            v280 = *(v276 + 8);
            v281 = v337;
            v280(v332, v337);
            v280(v333, v281);
            v282 = v177;
LABEL_112:
            v279(v282, v240);
            return (*(v291 + 8))(v290, v241);
          }

          v180 = v329;
          (v329)(v313, v167);
          v180(v324, v167);
          (*(v330 + 8))(v178, v166);
          v176 = v338;
          v177 = v335;
        }

        (*(v312 + 8))(v169, TupleTypeMetadata2);
        goto LABEL_46;
      }

      v145 = *(v148 + 8);
      v145(v323, v141);
      v145(v329, v141);
      (*(v330 + 8))(v149, v151);
      v154 = v311;
    }

    v147 = v332;
    (*(v312 + 8))(v140, TupleTypeMetadata2);
    goto LABEL_37;
  }

LABEL_9:
  (*(v82 + 8))(v85, v81);
LABEL_10:
  v89 = *(v291 + 8);
  v90 = v290;
  return v89(v90, v292);
}

uint64_t sub_10015CC3C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1001893F4();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015CC88(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == -1)
  {
    v9._object = 0x8000000100674830;
    v10._countAndFlagsBits = 0xD00000000000004DLL;
    v10._object = 0x8000000100674850;
    v9._countAndFlagsBits = 0xD000000000000013;
    v12 = TTRLocalizedString(_:comment:)(v9, v10);
    countAndFlagsBits = v12._countAndFlagsBits;
    object = v12._object;
  }

  else
  {
    if (a3)
    {
      v5 = " the same place it was before";
      sub_10015D7EC();
      v6 = 0x6C65622065766F4DLL;
      v7 = 0xED0000402520776FLL;
      v8 = 0xD00000000000003ALL;
    }

    else
    {
      v5 = "ving an item below another";
      sub_10015D7EC();
      v6 = 0x6F62612065766F4DLL;
      v7 = 0xED00004025206576;
      v8 = 0xD00000000000003BLL;
    }

    v14 = v5 | 0x8000000000000000;
    TTRLocalizedString(_:comment:)(*&v6, *&v8);
    sub_100058000(&unk_100786CB0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10062D400;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10005C390();
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;
    v16 = String.init(format:_:)();
    object = v17;

    countAndFlagsBits = v16;
  }

  sub_10015D36C(countAndFlagsBits, object);
}

uint64_t sub_10015CE28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *v2) + 0x50);
  v7 = type metadata accessor for Optional();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = *(v6 - 8);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = sub_10015CC3C();
  v15 = sub_10052A84C(a2);
  v17 = v16;

  result = 0;
  if ((v17 & 1) == 0)
  {
    v19 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      __break(1u);
    }

    else
    {
      if (v19 >= a1)
      {
        v19 = a1;
      }

      v20 = v19 & ~(v19 >> 63);
      v21 = sub_10015CC3C();
      sub_10052A7CC(v20, a2, v9);

      if ((*(v10 + 48))(v9, 1, v6) == 1)
      {
        (*(v25 + 8))(v9, v26);
        return 0;
      }

      else
      {
        (*(v10 + 32))(v13, v9, v6);
        v22 = *(v3 + qword_100780CC8);
        v23 = sub_10015CC3C();
        v24 = v22(v23, v13);

        (*(v10 + 8))(v13, v6);
        return v24;
      }
    }
  }

  return result;
}

uint64_t sub_10015D0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a5 == -1)
  {
    v19._countAndFlagsBits = 0x736E692065766F4DLL;
    v19._object = 0xEE00402520656469;
    v20._countAndFlagsBits = 0xD00000000000003DLL;
    v20._object = 0x8000000100674920;
    TTRLocalizedString(_:comment:)(v19, v20);
    sub_100058000(&unk_100786CB0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10062D400;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_10005C390();
    *(v21 + 32) = a1;
    *(v21 + 40) = a2;
  }

  else
  {
    if (a5)
    {
      v11 = "oving an item inside a parent";
    }

    else
    {
      v11 = "side a parent, below another";
    }

    if (a5)
    {
      v12 = "Move inside %@, below %@";
    }

    else
    {
      v12 = "Move inside %@, above %@";
    }

    sub_10015D7EC();
    v15._object = (v11 | 0x8000000000000000);
    v16._countAndFlagsBits = 0xD00000000000004CLL;
    v16._object = (v12 | 0x8000000000000000);
    v15._countAndFlagsBits = 0xD000000000000018;
    TTRLocalizedString(_:comment:)(v15, v16);
    sub_100058000(&unk_100786CB0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10062D3F0;
    *(v17 + 56) = &type metadata for String;
    v18 = sub_10005C390();
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v18;
    *(v17 + 64) = v18;
    *(v17 + 72) = a3;
    *(v17 + 80) = a4;
  }

  v22 = String.init(format:_:)();
  v24 = v23;

  if (a7)
  {
    sub_100058000(&unk_100771E10);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10062D3F0;
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    *(v25 + 48) = a6;
    *(v25 + 56) = a7;

    static TTRAccesibility.General.Label.SentenceEnd.getter();
    sub_100058000(&unk_100781F20);
    sub_10000E188(&qword_100771E20, &unk_100781F20);
    v22 = BidirectionalCollection<>.joined(separator:)();
    v24 = v26;
  }

  sub_10015D36C(v22, v24);
}

uint64_t sub_10015D36C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A96A0();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10015D864;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_1007184C0;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001A4CC();
  sub_100058000(&qword_100780A50);
  sub_10000E188(&qword_10076B7E0, &qword_100780A50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v16);
}

void sub_10015D634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + qword_100780CD8);
  v6 = *(a1 + qword_100780CD8 + 8);
  if (!v6 || (*v5 == a2 ? (v7 = v6 == a3) : (v7 = 0), !v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    *v5 = a2;
    v5[1] = a3;

    v8 = UIAccessibilityAnnouncementNotification;

    v9 = String._bridgeToObjectiveC()();
    UIAccessibilityPostNotification(v8, v9);
  }
}

uint64_t sub_10015D70C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10015D724();
  }

  return result;
}

uint64_t sub_10015D72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015D790(uint64_t a1)
{
  v2 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10015D7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100771B10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015D870()
{
}

uint64_t sub_10015D8B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t sub_10015D90C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_10015D98C(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_10015DA28()
{
}

uint64_t sub_10015DA7C()
{
  type metadata accessor for TTRITreeViewNode();

  swift_getWitnessTable();
  Dictionary.subscript.getter();

  return v1;
}

uint64_t sub_10015DB58()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TTRITreeViewNode();
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  v0 = Sequence.contains(where:)();

  return v0 & 1;
}

uint64_t sub_10015DCCC()
{
  sub_10015DA7C();
  if (v0)
  {
    return 0;
  }

  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  Array.subscript.getter();
  v1 = v3;

  return v1;
}

uint64_t sub_10015DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a2;
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  type metadata accessor for Array();

  Array.insert(_:at:)();
  v12[0] = a3;
  sub_100058000(&qword_10076FC00);
  sub_10000E188(&qword_10076FC08, &qword_10076FC00);
  sub_10015DF18(v12, 1);
  sub_100058000(&qword_10076B780);
  swift_allocObject();
  v8 = static Array._adoptStorage(_:count:)();
  *v9 = a1;
  type metadata accessor for TTRITreeViewNode();
  v10 = type metadata accessor for Array();
  v12[0] = v8;

  swift_getWitnessTable();
  sub_10015E0B4(v12, a3, a4, v10);

  v12[0] = a2;
  return sub_10015E0B4(v12, a3, a4, v10);
}

uint64_t sub_10015DF18(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * v11)));

        result = dispatch thunk of RangeExpression.contains(_:)();
        if (result)
        {
          if (__OFADD__(v12, a2))
          {
            goto LABEL_16;
          }

          type metadata accessor for TTRITreeViewNode();
          swift_getWitnessTable();
          type metadata accessor for Dictionary();
          result = Dictionary.subscript.setter();
          v9 = v10;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v9 = v10;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v10 = v9;
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10015E0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a3;
  v6 = *(a3 + 24);
  v24 = *(a3 + 16);
  v25 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v21 - v9;
  v11 = *(a4 - 8);
  __chkstk_darwin(v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v23 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  (*(v11 + 16))(v13, a1, a4);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  v17 = dispatch thunk of IteratorProtocol.next()();
  v18 = v29;
  if (v29)
  {
    v19 = (v22 + 8);
    do
    {
      sub_10023A594(v17);
      sub_10015F39C(v10, v18);
      (*v19)(v10, AssociatedTypeWitness);
      v28 = v18;
      v29 = v26;
      v30 = 0;
      type metadata accessor for TTRITreeViewNode();
      swift_getWitnessTable();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      v17 = dispatch thunk of IteratorProtocol.next()();
      v18 = v29;
    }

    while (v29);
  }

  return (*(v23 + 8))(v16, v14);
}

uint64_t sub_10015E3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  v6 = Array.count.getter();

  return sub_10015DD60(a1, a2, v6, a3);
}

uint64_t sub_10015E454(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  type metadata accessor for Array();
  Array.remove(at:)();
  v4 = v10[0];
  v5 = v10[1];
  sub_100058000(&qword_10076B780);
  swift_allocObject();
  v6 = static Array._adoptStorage(_:count:)();
  *v7 = v10[0];
  type metadata accessor for TTRITreeViewNode();
  v8 = type metadata accessor for Array();
  v10[0] = v6;

  swift_getWitnessTable();
  sub_10015E5E8(v10, a2, v8);

  v10[0] = v5;
  sub_10015E5E8(v10, a2, v8);
  v10[0] = a1;
  sub_100058000(&qword_10076FC00);
  sub_10000E188(&qword_10076FC08, &qword_10076FC00);
  sub_10015DF18(v10, -1);
  return v4;
}

uint64_t sub_10015E5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v25 = a2;
  v23 = v5;
  v24 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v21 - v9;
  v11 = *(a3 - 8);
  __chkstk_darwin(v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v22 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  (*(v11 + 16))(v13, a1, a3);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  v17 = dispatch thunk of IteratorProtocol.next()();
  v18 = v27;
  if (v27)
  {
    v19 = (v21 + 8);
    do
    {
      sub_10023A594(v17);
      sub_10015F0F4(v10, v18);
      (*v19)(v10, AssociatedTypeWitness);
      v26 = v18;
      type metadata accessor for TTRITreeViewNode();
      swift_getWitnessTable();
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();

      v17 = dispatch thunk of IteratorProtocol.next()();
      v18 = v27;
    }

    while (v27);
  }

  return (*(v22 + 8))(v16, v14);
}

uint64_t sub_10015E918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    type metadata accessor for TTRITreeViewSectionsMetadata.Section();
    Array.subscript.getter();
    return v15;
  }

  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  type metadata accessor for Array();
  Array.remove(at:)();
  v4 = v15;
  v6 = v16;

  result = Array.insert(_:at:)();
  if (a1 < a2)
  {
    v8 = a1 + 1;
    v9 = -1;
    v10 = a2;
LABEL_8:
    v15 = v8;
    v16 = v10;
    sub_100058000(&qword_10076FC18);
    sub_10000E188(qword_10076FC20, &qword_10076FC18);
    sub_10015DF18(&v15, v9);
    sub_100058000(&qword_10076B780);
    swift_allocObject();
    v11 = static Array._adoptStorage(_:count:)();
    *v12 = v4;
    type metadata accessor for TTRITreeViewNode();
    v13 = type metadata accessor for Array();
    v15 = v11;

    swift_getWitnessTable();
    sub_10015E0B4(&v15, a2, a3, v13);

    v15 = v6;
    sub_10015E0B4(&v15, a2, a3, v13);
    return v4;
  }

  v10 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else if (v10 >= a2)
  {
    v9 = 1;
    v8 = a2;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10015EB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = IndexPath.section.getter();
  v10 = a1;

  IndexPath.row.getter();
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  sub_100160D68(v6, *v3);
  type metadata accessor for TTRITreeViewNode();
  v7 = type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection.insert<A>(contentsOf:at:)();
  v10 = a1;
  v8 = IndexPath.section.getter();
  swift_getWitnessTable();
  return sub_10015E0B4(&v10, v8, a3, v7);
}

uint64_t sub_10015ECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = IndexPath.row.getter();
  result = IndexPath.row.getter();
  v8 = __OFADD__(result, a2);
  v9 = result + a2;
  if (v8)
  {
    __break(1u);
  }

  else if (v9 >= v6)
  {
    v10 = IndexPath.section.getter();
    v19 = a3;
    type metadata accessor for TTRITreeViewSectionsMetadata.Section();
    Array.subscript.getter();
    type metadata accessor for TTRITreeViewNode();
    v11 = Array.subscript.getter();
    v13 = v12;
    v17 = v15;
    v18 = v14;

    v20 = v6;
    v21 = v9;
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    sub_100160D68(v10, *v3);
    type metadata accessor for Array();
    swift_getWitnessTable();
    RangeReplaceableCollection.removeSubrange(_:)();
    v20 = v11;
    v21 = v13;
    v22 = v18;
    v23 = v17;
    v16 = type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    sub_10015E5E8(&v20, v19, v16);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10015EEAC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  Array.subscript.getter();
  type metadata accessor for TTRITreeViewNode();
  v11 = Array.subscript.getter();
  v13 = v12;
  v19 = v14;
  v20 = v15;

  v22 = a1;
  v23 = a2;
  type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  sub_100160D68(a3, *v7);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RangeReplaceableCollection.removeSubrange(_:)();
  v22 = v11;
  v23 = v13;
  v24 = v19;
  v25 = v20;
  swift_unknownObjectRetain();
  Array._makeMutableAndUnique()();
  sub_100160D68(a4, *v7);
  v16 = type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  RangeReplaceableCollection.insert<A>(contentsOf:at:)();
  if (a3 != a4)
  {
    v22 = v11;
    v23 = v13;
    v24 = v19;
    v25 = v20;
    swift_getWitnessTable();
    sub_10015E0B4(&v22, a4, a6, v16);
  }

  return v11;
}

uint64_t sub_10015F0F4(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v11 - v5;
  type metadata accessor for TTRITreeViewNode();
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();
  if (!v13[0])
  {
    return 0;
  }

  v13[0] = a2;
  if ((Set.contains(_:)() & 1) == 0)
  {

    return 0;
  }

  if (Set.count.getter() == 1)
  {

    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();

    return 1;
  }

  else
  {
    v13[4] = a2;
    v7 = v11;
    v8 = v12;
    (*(v12 + 16))(v11, a1, AssociatedTypeWitness);
    type metadata accessor for Dictionary._Variant();
    result = Dictionary._Variant.subscript.modify();
    if (*v9)
    {
      v10 = result;

      Set.remove(_:)();

      v10(v13, 0);
      (*(v8 + 8))(v7, AssociatedTypeWitness);
      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10015F39C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRITreeViewNode();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Set();
  v10 = v20;
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();
  if (v22[0])
  {

    v22[4] = v21;
    (*(v3 + 16))(v7, v10, AssociatedTypeWitness);

    type metadata accessor for Dictionary._Variant();
    result = Dictionary._Variant.subscript.modify();
    if (*v12)
    {
      v13 = result;
      Set.insert(_:)();

      v13(v22, 0);
      return (*(v3 + 8))(v7, AssociatedTypeWitness);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v18 = WitnessTable;
    (*(v3 + 16))(v19, v10, AssociatedTypeWitness);
    sub_100058000(&qword_10076B780);
    swift_initStackObject();
    v14 = static Array._adoptStorage(_:count:)();
    *v15 = v21;
    type metadata accessor for Array();

    if (Array._getCount()())
    {
      v16 = sub_100160DBC(v14, v8, v18);
    }

    else
    {
      v16 = &_swiftEmptySetSingleton;
    }

    v22[0] = v16;
    type metadata accessor for Dictionary();
    return Dictionary.subscript.setter();
  }

  return result;
}

uint64_t sub_10015F6B4()
{
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  IndexPath.section.getter();
  sub_100058000(&qword_10076FC10);
  v0 = Range.contains(_:)();
  result = 0;
  if (v0)
  {
    IndexPath.section.getter();
    Array.subscript.getter();
    type metadata accessor for TTRITreeViewNode();
    type metadata accessor for Array();
    swift_getWitnessTable();
    RandomAccessCollection<>.indices.getter();
    IndexPath.row.getter();
    if (Range.contains(_:)())
    {
      IndexPath.row.getter();
      Array.subscript.getter();

      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10015F890()
{
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  sub_100058000(&qword_10076FC10);
  v0 = 0;
  if (Range.contains(_:)())
  {
    Array.subscript.getter();
    v0 = v2;
  }

  return v0;
}

uint64_t sub_10015F984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = v14 - v11;
  (*(a7 + 24))(a6, a7);
  type metadata accessor for TTRITreeViewNode();
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  if (!v15)
  {
    return 0;
  }

  v14[2] = v15;
  swift_getWitnessTable();
  Collection.first.getter();

  return v14[1];
}

uint64_t sub_10015FB6C()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TTRITreeViewNode();
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();
  if (!v2)
  {
    return 0;
  }

  swift_getWitnessTable();
  Collection.first.getter();

  return v1;
}

uint64_t sub_10015FCAC@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_10015DA7C();
  if (v4)
  {
    goto LABEL_2;
  }

  if ((a1 & 1) == 0)
  {
    type metadata accessor for TTRITreeViewSectionsMetadata.Section();
    Array.subscript.getter();

    type metadata accessor for TTRITreeViewNode();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.firstIndex(where:)();

    if (v15)
    {
      v13 = type metadata accessor for IndexPath();
      return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
    }

    else
    {
      IndexPath.init(row:section:)();
      v14 = type metadata accessor for IndexPath();
      return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    }
  }

  v10 = sub_10023A6E8();

  result = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_2:
    v5 = type metadata accessor for IndexPath();
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a2;
    v9 = 1;
  }

  else
  {
    IndexPath.init(row:section:)();
    v12 = type metadata accessor for IndexPath();
    v6 = *(*(v12 - 8) + 56);
    v7 = v12;
    v8 = a2;
    v9 = 0;
  }

  return v6(v8, v9, 1, v7);
}

uint64_t sub_10015FF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (sub_10015F984(a1, a2, a3, a4, 0, a6, a7))
  {
    sub_10015FCAC(a5 & 1, a8);
  }

  else
  {
    v11 = type metadata accessor for IndexPath();
    v12 = *(*(v11 - 8) + 56);

    return v12(a8, 1, 1, v11);
  }
}

uint64_t sub_1001600A8(uint64_t a1)
{
  result = sub_10015DCCC();
  if (result)
  {
    v3 = result;

    return v3 == a1;
  }

  return result;
}

void (*sub_1001600E4@<X0>(uint64_t a1@<X0>, char a2@<W4>, char *a3@<X8>))(_BYTE *, void)
{
  v6 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for IndexPath();
  v20 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1001600A8(a1))
  {
    sub_10015DA7C();
    if (v12)
    {
      v13 = *(v20 + 56);
      v14 = a3;
      v15 = 1;
    }

    else
    {
      IndexPath.init(row:section:)();
      v13 = *(v20 + 56);
      v14 = a3;
      v15 = 0;
    }

    return v13(v14, v15, 1, v9);
  }

  else
  {
    sub_10015FCAC(a2 & 1, v8);
    if ((*(v20 + 48))(v8, 1, v9) == 1)
    {
      sub_10008B860(v8);
      return (*(v20 + 56))(a3, 1, 1, v9);
    }

    else
    {
      v17 = *(v20 + 32);
      v17(v11, v8, v9);
      result = IndexPath.row.modify();
      if (__OFADD__(*v18, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v18;
        result(v21, 0);
        v17(a3, v11, v9);
        return (*(v20 + 56))(a3, 0, 1, v9);
      }
    }
  }

  return result;
}

uint64_t sub_1001603A4()
{
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  v0 = Array.init()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TTRITreeViewNode();
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getAssociatedConformanceWitness();
  Dictionary.init()();
  Dictionary.init()();
  return v0;
}

uint64_t sub_1001604BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = __chkstk_darwin(a1);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = _swiftEmptyArrayStorage;
  v72 = v7;
  v65 = v9;
  v66 = v10;
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.enumerated()();
  v68 = v70[0];
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v62 = type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  v11 = v70[1];
  if (v70[1])
  {
    v12 = v70[0];
    v13 = v71;
    v14 = 1702195828;
    if ((a4 & 1) == 0)
    {
      v14 = 0x65736C6166;
    }

    v60 = v14;
    v61 = 0x8000000100674A40;
    v15 = 0xE500000000000000;
    if (a4)
    {
      v15 = 0xE400000000000000;
    }

    v59 = v15;
    v58 = (v6 + 16);
    v57 = v66 + 32;
    v56 = (v6 + 8);
    v55 = 0x8000000100674A60;
    v16 = v65;
    do
    {
      v69 = v12;
      strcpy(v70, "Section ");
      BYTE1(v70[1]) = 0;
      WORD1(v70[1]) = 0;
      HIDWORD(v70[1]) = -402653184;
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v18 = v70[0];
      v19 = v70[1];
      v20 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100546970(0, *(v20 + 2) + 1, 1, v20);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_100546970((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[16 * v22];
      *(v23 + 4) = v18;
      *(v23 + 5) = v19;
      v70[0] = 0;
      v70[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v24._countAndFlagsBits = v60;
      v70[0] = 0xD000000000000013;
      v70[1] = v61;
      v24._object = v59;
      String.append(_:)(v24);

      v25 = v70[0];
      v26 = v70[1];
      v28 = *(v20 + 2);
      v27 = *(v20 + 3);
      if (v28 >= v27 >> 1)
      {
        v20 = sub_100546970((v27 > 1), v28 + 1, 1, v20);
      }

      *(v20 + 2) = v28 + 1;
      v29 = &v20[16 * v28];
      *(v29 + 4) = v25;
      *(v29 + 5) = v26;
      strcpy(v70, "\tRoot node: ");
      BYTE5(v70[1]) = 0;
      HIWORD(v70[1]) = -5120;
      v30 = *(*v11 + 144);
      swift_beginAccess();
      v31 = v11 + v30;
      v32 = v63;
      v33 = v65;
      (*v58)(v63, v31, v65);
      v34 = (*(v66 + 32))(v33);
      v36 = v35;
      (*v56)(v32, v33);
      v37._countAndFlagsBits = v34;
      v37._object = v36;
      String.append(_:)(v37);

      v38 = v70[0];
      v39 = v70[1];
      v41 = *(v20 + 2);
      v40 = *(v20 + 3);
      v42 = v40 >> 1;
      v43 = v41 + 1;
      if (v40 >> 1 <= v41)
      {
        v20 = sub_100546970((v40 > 1), v41 + 1, 1, v20);
        v40 = *(v20 + 3);
        v42 = v40 >> 1;
      }

      *(v20 + 2) = v43;
      v44 = &v20[16 * v41];
      *(v44 + 4) = v38;
      *(v44 + 5) = v39;
      v45 = v41 + 2;
      if (v42 < v45)
      {
        v20 = sub_100546970((v40 > 1), v45, 1, v20);
      }

      *(v20 + 2) = v45;
      v46 = &v20[16 * v43];
      *(v46 + 4) = 0xD000000000000011;
      *(v46 + 5) = v55;
      v73 = v20;
      v69 = v13;
      v64 = v13;
      v47 = v66;
      type metadata accessor for TTRITreeViewNode();
      type metadata accessor for Array();
      swift_getWitnessTable();
      v48 = Sequence.enumerated()();
      v69 = v70[0];
      __chkstk_darwin(v48);
      *(&v55 - 4) = v16;
      *(&v55 - 3) = v47;
      *(&v55 - 2) = sub_100161198;
      *(&v55 - 1) = 0;
      v49 = type metadata accessor for EnumeratedSequence();
      WitnessTable = swift_getWitnessTable();
      v50 = swift_getWitnessTable();
      v52 = sub_1000868E8(sub_10016119C, (&v55 - 6), v49, &type metadata for String, &type metadata for Never, v50, &protocol witness table for Never, v51);

      sub_100081340(v52);

      EnumeratedSequence.Iterator.next()();
      v12 = v70[0];
      v11 = v70[1];
      v13 = v71;
    }

    while (v70[1]);
  }

  v72 = v73;
  sub_100058000(&unk_100781F20);
  sub_10000E188(&qword_100771E20, &unk_100781F20);
  v53 = BidirectionalCollection<>.joined(separator:)();

  return v53;
}

uint64_t sub_100160B70(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v17 - v7;
  v18 = 2313;
  v19 = 0xE200000000000000;
  v17[1] = v6;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 8238;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11 = *(*a2 + 144);
  swift_beginAccess();
  (*(v5 + 16))(v8, a2 + v11, v4);
  v12 = (*(*(v3 + 88) + 32))(v4);
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  return v18;
}

uint64_t sub_100160D68(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100160DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v50 = &v38 - v11;
  v39 = v12;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (Array.count.getter())
  {
    type metadata accessor for _SetStorage();
    v15 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v43 = Array._getCount()();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = v15;
    v23 = -1 << v15[32];
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *&v49[8 * (v24 >> 6)];
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (v22[6] + v28 * v24), a2);
        v30 = a3;
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *&v49[8 * (v24 >> 6)];
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *&v49[8 * v25] = v27 | v26;
    v34 = v22[6] + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = v22[2];
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    v22[2] = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10016119C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t *TTRListSharingUtilities.excludedShareActivityTypes.unsafeMutableAddressor()
{
  if (qword_100766F80 != -1)
  {
    swift_once();
  }

  return &static TTRListSharingUtilities.excludedShareActivityTypes;
}

id sub_100161240@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  *(a2 + 24) = sub_100003540(0, &qword_10076FCC0);
  *a2 = a1;

  return a1;
}

id sub_100161338(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v14, a2, v6);

  v7 = v15;
  if (v15)
  {
    v8 = sub_10000C36C(v14, v15);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    sub_100004758(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1001614A0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  *(a2 + 24) = sub_100003540(0, &qword_10076FCC0);
  *a2 = a1;

  return a1;
}

id sub_100161598(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v12);

  v5 = v13;
  if (v13)
  {
    v6 = sub_10000C36C(v12, v13);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v5);
    sub_100004758(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1001616F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003540(0, &qword_100777780);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_10016268C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100718610;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001A4CC();
  sub_100058000(&qword_100780A50);
  sub_10001A524();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return 0;
}

id sub_100161994(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_100162684, v4);

  return v5;
}

void sub_100161A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

NSString sub_100161AA4()
{
  sub_100058000(&qword_10076FCB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006329D0;
  v1 = UIActivityTypeCreateReminder;
  *(v0 + 32) = UIActivityTypeAirDrop;
  *(v0 + 40) = v1;
  *(v0 + 48) = UIActivityTypeAddToReadingList;
  *(v0 + 56) = UIActivityTypePostToFlickr;
  *(v0 + 64) = UIActivityTypePostToVimeo;
  *(v0 + 72) = UIActivityTypeCopyToPasteboard;
  *(v0 + 80) = UIActivityTypePrint;
  v2 = UIActivityTypeAirDrop;
  v3 = v1;
  v4 = UIActivityTypeAddToReadingList;
  v5 = UIActivityTypePostToFlickr;
  v6 = UIActivityTypePostToVimeo;
  v7 = UIActivityTypeCopyToPasteboard;
  v8 = UIActivityTypePrint;
  result = String._bridgeToObjectiveC()();
  *(v0 + 88) = result;
  static TTRListSharingUtilities.excludedShareActivityTypes = v0;
  return result;
}

uint64_t static TTRListSharingUtilities.excludedShareActivityTypes.getter()
{
  if (qword_100766F80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TTRListSharingUtilities.excludedShareActivityTypes.setter(uint64_t a1)
{
  if (qword_100766F80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TTRListSharingUtilities.excludedShareActivityTypes = a1;
}

uint64_t (*static TTRListSharingUtilities.excludedShareActivityTypes.modify())()
{
  if (qword_100766F80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id _s9Reminders23TTRListSharingUtilitiesC20imageForLinkMetadataSo7LPImageCvgZ_0()
{
  v0 = [objc_allocWithZone(NSItemProvider) init];
  sub_100003540(0, &qword_10076FCB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6[4] = sub_1001616F4;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100161994;
  v6[3] = &unk_100718598;
  v2 = _Block_copy(v6);
  [v0 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v2];
  _Block_release(v2);
  v3 = [objc_allocWithZone(LPImageProperties) init];
  [v3 setType:1];
  v4 = [objc_allocWithZone(LPImage) initWithItemProvider:v0 properties:v3 placeholderImage:0];

  return v4;
}

id _s9Reminders23TTRListSharingUtilitiesC26activityItemsConfiguration3forSo010UIActivityfG0CSo7REMListC_tFZ_0(void *a1)
{
  v2 = _s9Reminders23TTRListSharingUtilitiesC17shareItemProvider3forSo06NSItemG0CSo7REMListC_tFZ_0(a1);
  v3 = [objc_allocWithZone(LPLinkMetadata) init];
  v4 = [a1 displayName];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  [v3 setTitle:v4];

  static TTRLocalizableStrings.Sharing.sharedListSummaryForShareSheet.getter();
  v5 = String._bridgeToObjectiveC()();

  [v3 setSummary:v5];

  v6 = _s9Reminders23TTRListSharingUtilitiesC20imageForLinkMetadataSo7LPImageCvgZ_0();
  [v3 setImage:v6];

  sub_100058000(&qword_10076B780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10062D420;
  *(v7 + 32) = v2;
  v8 = objc_allocWithZone(UIActivityItemsConfiguration);
  sub_100003540(0, &unk_10076C570);
  v9 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithItemProviders:isa];

  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v23 = sub_1001626DC;
  v24 = v12;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100161338;
  v22 = &unk_100718660;
  v13 = _Block_copy(&v19);
  v14 = v3;

  [v11 setPerItemMetadataProvider:v13];
  _Block_release(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v23 = sub_1001626E4;
  v24 = v15;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100161598;
  v22 = &unk_1007186B0;
  v16 = _Block_copy(&v19);
  v17 = v14;

  [v11 setMetadataProvider:v16];
  _Block_release(v16);

  return v11;
}

id _s9Reminders23TTRListSharingUtilitiesC32shareSheetActivityViewController3for13popoverAnchorSo010UIActivityhI0CSo7REMListC_0A6UICore011TTRIPopoverL0VSgtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076FCC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TTRIPopoverAnchor();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s9Reminders23TTRListSharingUtilitiesC26activityItemsConfiguration3forSo010UIActivityfG0CSo7REMListC_tFZ_0(a1);
  v15 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v14];
  if (qword_100766F80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for ActivityType(0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setExcludedActivityTypes:isa];

  sub_1001626EC(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1000079B4(v9, &unk_10076FCD0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v17 = [v15 popoverPresentationController];
    if (v17)
    {
      v18 = v17;
      TTRIPopoverAnchor.source.getter();
      v19 = type metadata accessor for TTRIPopoverAnchor.Source();
      (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
      UIPopoverPresentationController.setPopoverAnchorSource(_:)();

      sub_1000079B4(v6, &qword_10076FCC8);
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }
  }

  return v15;
}

id _s9Reminders23TTRListSharingUtilitiesC8appImageSo7UIImageCSgvgZ_0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = [v0 mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v3 scale:{v5, v8}];
  v10 = _s9Reminders23TTRListSharingUtilitiesC17remindersAppImage3forSo7IFImageCSgSo17ISImageDescriptorC_tFZ_0(v9);
  if (v10)
  {
    v11 = v10;
    result = [v10 CGImage];
    if (result)
    {
      v13 = result;
      [v11 scale];
      v15 = [objc_allocWithZone(UIImage) initWithCGImage:v13 scale:0 orientation:v14];

      return v15;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100003540(0, &qword_10076FCB0);
    type metadata accessor for RemindersUICoreBundleLookupObject();
    v16 = static RemindersUICoreBundleLookupObject.bundle.getter();
    v17 = static UIImage.ttr_image(named:in:)();

    return v17;
  }

  return result;
}

void sub_10016268C()
{
  v1 = *(v0 + 16);
  v2 = _s9Reminders23TTRListSharingUtilitiesC8appImageSo7UIImageCSgvgZ_0();
  v1(v2, 0);
}

uint64_t sub_1001626EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076FCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100162774()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076FCE0);
  v1 = sub_100003E30(v0, qword_10076FCE0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10016283C()
{
  v1 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_10076FE00);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem(0);
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v0;
  v14 = [*(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator) items];
  sub_100058000(&qword_10076FE08);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = v15;
    v50[0] = _swiftEmptyArrayStorage;
    v15 = v50;
    result = sub_1004A1DF8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    v20 = v50[0];
    v21 = v17;
    v43 = v17 & 0xC000000000000001;
    v40 = 0x800000010066F5E0;
    v41 = i;
    v35 = OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dragAndDropCoordinatorID;
    v34 = v17 & 0xFFFFFFFFFFFFFF8;
    v46 = (v2 + 56);
    v38 = v6;
    v39 = (v2 + 48);
    v42 = v17;
    while (1)
    {
      if (v43)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_10;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v19 >= *(v34 + 16))
      {
        goto LABEL_20;
      }

      v22 = *(v21 + 8 * v19 + 32);
      swift_unknownObjectRetain();
LABEL_10:
      v23 = *v46;
      (*v46)(v9, 1, 1, v1);
      v24 = [v22 dragItem];
      v47 = 0xD000000000000022;
      v48 = v40;
      AnyHashable.init<A>(_:)();
      UIDragItem.localObject<A>(ofType:forKey:)();

      sub_100077654(v49);
      if ((*v39)(v6, 1, v1) == 1)
      {
        sub_1000079B4(v6, &qword_10076FE00);
      }

      else
      {
        v25 = v36;
        sub_100165290(v6, v36, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        if (static UUID.== infix(_:_:)())
        {
          sub_1000079B4(v9, &qword_10076FE00);
          sub_100165290(v25, v9, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
          v23(v9, 0, 1, v1);
        }

        else
        {
          sub_1001652F8(v25, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        }
      }

      v15 = [v22 dragItem];
      v26 = v45;
      sub_10000794C(v9, v13 + *(v45 + 20), &qword_10076FE00);
      [v22 previewSize];
      v28 = v27;
      v30 = v29;
      sub_1000079B4(v9, &qword_10076FE00);
      swift_unknownObjectRelease();
      *v13 = v15;
      v31 = (v13 + *(v26 + 24));
      *v31 = v28;
      v31[1] = v30;
      v50[0] = v20;
      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      v2 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v15 = v50;
        sub_1004A1DF8(v32 > 1, v33 + 1, 1);
        v20 = v50[0];
      }

      ++v19;
      *(v20 + 16) = v2;
      sub_100165290(v13, v20 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v33, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
      v21 = v42;
      v6 = v38;
      if (v41 == v19)
      {

        return v20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100162DFC()
{
  v0 = sub_100058000(&qword_10076FE00);
  __chkstk_darwin(v0 - 8);
  v2 = &v29 - v1;
  v38 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem(0);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v29 - v8;
  v9 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10016283C();
  v14 = v13[2];
  if (v14)
  {
    v15 = *(v9 + 20);
    v16 = *(v10 + 80);
    v29 = v13;
    v17 = v13 + ((v16 + 32) & ~v16);
    v18 = *(v10 + 72);
    v19 = (v3 + 48);
    v20 = _swiftEmptyArrayStorage;
    v31 = v18;
    v32 = v15;
    v30 = v19;
    do
    {
      sub_10016522C(v17, v12);
      sub_10000794C(v12 + v15, v2, &qword_10076FE00);
      if ((*v19)(v2, 1, v38) == 1)
      {
        sub_1001652F8(v12, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
        sub_1000079B4(v2, &qword_10076FE00);
      }

      else
      {
        v21 = v2;
        v22 = v36;
        sub_100165290(v2, v36, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        v23 = *v12;
        sub_1001652F8(v12, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
        v24 = v33;
        v25 = v37;
        sub_100165290(v22, &v33[*(v35 + 20)], type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        *v24 = v23;
        sub_100165290(v24, v25, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100547400(0, v20[2] + 1, 1, v20);
        }

        v27 = v20[2];
        v26 = v20[3];
        v2 = v21;
        v15 = v32;
        if (v27 >= v26 >> 1)
        {
          v20 = sub_100547400(v26 > 1, v27 + 1, 1, v20);
        }

        v20[2] = v27 + 1;
        sub_100165290(v37, v20 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
        v19 = v30;
        v18 = v31;
      }

      v17 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v20;
}

uint64_t sub_10016324C@<X0>(char *a1@<X8>)
{
  v153 = a1;
  v1 = sub_100058000(&unk_10076FE10);
  __chkstk_darwin(v1 - 8);
  v134 = &v124 - v2;
  v133 = sub_100058000(&unk_100784640);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v124 - v3;
  v139 = type metadata accessor for IndexPath();
  v141 = *(v139 - 8);
  __chkstk_darwin(v139);
  v128 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v140 = &v124 - v6;
  __chkstk_darwin(v7);
  v131 = &v124 - v8;
  __chkstk_darwin(v9);
  v136 = &v124 - v10;
  v11 = sub_100058000(&unk_10076FE20);
  __chkstk_darwin(v11 - 8);
  v127 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v146 = &v124 - v14;
  v15 = sub_100058000(&unk_100784660);
  v147 = *(v15 - 8);
  v148 = v15;
  __chkstk_darwin(v15);
  v126 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &v124 - v18;
  v143 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for TTRUnadjustedIndexPath();
  v149 = *(v152 - 8);
  __chkstk_darwin(v152);
  v135 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v129 = &v124 - v23;
  __chkstk_darwin(v24);
  v138 = &v124 - v25;
  __chkstk_darwin(v26);
  v145 = &v124 - v27;
  v151 = type metadata accessor for TTRAdjustedIndexPath();
  v144 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TTRICollectionViewDropIntent();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100058000(&unk_10076FE30);
  __chkstk_darwin(v33 - 8);
  v35 = &v124 - v34;
  v36 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v124 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v154 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_lastDropProposal, v35, &unk_10076FE30);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_1000079B4(v35, &unk_10076FE30);
LABEL_22:
    v102 = enum case for TTRTreeViewDropDestination.unknown<A, B>(_:);
    v103 = sub_100058000(&qword_100769548);
    return (*(*(v103 - 8) + 104))(v153, v102, v103);
  }

  sub_100165290(v35, v39, type metadata accessor for TTRIRemindersBoardDropProposal);
  (*(v30 + 16))(v32, &v39[*(v36 + 24)], v29);
  v40 = (*(v30 + 88))(v32, v29);
  if (v40 == enum case for TTRICollectionViewDropIntent.insertAtDestinationIndexPath(_:))
  {
    (*(v30 + 96))(v32, v29);
    v141 = *(sub_100058000(&qword_10076FE60) + 48);
    v41 = v144;
    v42 = v150;
    v43 = v151;
    (*(v144 + 32))(v150, v32, v151);
    v125 = v39;
    v44 = *(v39 + 1);
    (*(v41 + 16))(v20, v42, v43);
    v45 = v142;
    v46 = v143;
    (*(v142 + 104))(v20, enum case for TTRICollectionViewInsertAtIndexPathOption.at(_:), v143);
    v47 = v145;
    sub_1005D0F7C(v20, v44, v145);
    (*(v45 + 8))(v20, v46);
    v155 = v44;

    sub_1000815A4(v48);
    sub_100058000(&unk_10076FE40);
    type metadata accessor for TTRRemindersListViewModel.ItemID();
    sub_100165358();
    sub_1001653BC(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    Sequence.mapToSet<A>(_:)();

    v49 = v146;
    TTRBoardColumnDiffableDataSource.itemLocation(forInsertingAt:localItemIDsToBeMoved:)();

    (*(v149 + 8))(v47, v152);
    (*(v41 + 8))(v150, v151);
    sub_1001652F8(v125, type metadata accessor for TTRIRemindersBoardDropProposal);
    v51 = v147;
    v50 = v148;
    if ((*(v147 + 48))(v49, 1, v148) == 1)
    {
      sub_1000079B4(v49, &unk_10076FE20);
      v52 = enum case for TTRTreeViewDropDestination.unknown<A, B>(_:);
      v53 = sub_100058000(&qword_100769548);
      (*(*(v53 - 8) + 104))(v153, v52, v53);
    }

    else
    {
      v79 = *(v51 + 32);
      v80 = v137;
      v79(v137, v49, v50);
      v81 = v153;
      v79(v153, v80, v50);
      v82 = enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:);
      v83 = sub_100058000(&qword_100769548);
      (*(*(v83 - 8) + 104))(v81, v82, v83);
    }

    v84 = type metadata accessor for TTRICollectionViewDropIntent.TargetType();
    return (*(*(v84 - 8) + 8))(&v32[v141], v84);
  }

  if (v40 != enum case for TTRICollectionViewDropIntent.insertIntoDestinationIndexPath(_:))
  {
    if (v40 != enum case for TTRICollectionViewDropIntent.unspecified(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v86 = v154;
    v87 = *(v154 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator);
    v88 = [v87 proposal];
    v89 = [v88 operation];

    v90 = v141;
    v91 = v140;
    if (v89 != 2)
    {
LABEL_21:
      sub_1001652F8(v39, type metadata accessor for TTRIRemindersBoardDropProposal);
      goto LABEL_22;
    }

    v92 = [v87 destinationIndexPath];
    if (v92)
    {
      v93 = v128;
      v94 = v92;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v154 = *(v86 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column);
      v95 = v139;
      (*(v90 + 16))(v91, v93, v139);
      v96 = v135;
      TTRUnadjustedIndexPath.init(_:)();
      v155 = *(v39 + 1);

      sub_1000815A4(v97);
      sub_100058000(&unk_10076FE40);
      type metadata accessor for TTRRemindersListViewModel.ItemID();
      sub_100165358();
      v98 = v39;
      sub_1001653BC(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      Sequence.mapToSet<A>(_:)();

      v99 = v127;
      TTRBoardColumnDiffableDataSource.itemLocation(forInsertingAt:localItemIDsToBeMoved:)();

      (*(v149 + 8))(v96, v152);
      (*(v90 + 8))(v93, v95);
      sub_1001652F8(v98, type metadata accessor for TTRIRemindersBoardDropProposal);
      v101 = v147;
      v100 = v148;
      if ((*(v147 + 48))(v99, 1, v148) != 1)
      {
        v120 = *(v101 + 32);
        v121 = v126;
        v120(v126, v99, v100);
        v118 = v153;
        v120(v153, v121, v100);
        v119 = &enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:);
        goto LABEL_32;
      }

      sub_1000079B4(v99, &unk_10076FE20);
    }

    else
    {
      sub_1001652F8(v39, type metadata accessor for TTRIRemindersBoardDropProposal);
    }

    v118 = v153;
    v119 = &enum case for TTRTreeViewDropDestination.unknown<A, B>(_:);
LABEL_32:
    v122 = *v119;
    v123 = sub_100058000(&qword_100769548);
    return (*(*(v123 - 8) + 104))(v118, v122, v123);
  }

  (*(v30 + 96))(v32, v29);
  v54 = v149;
  v55 = v138;
  v56 = v152;
  (*(v149 + 32))(v138, v32, v152);
  v57 = [*(v154 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator) destinationIndexPath];
  if (!v57)
  {
    (*(v54 + 8))(v55, v56);
    goto LABEL_21;
  }

  v58 = v131;
  v59 = v57;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v141;
  v61 = v136;
  v62 = v139;
  (*(v141 + 32))(v136, v58, v139);
  v63 = v140;
  TTRUnadjustedIndexPath.indexPath.getter();
  sub_1001653BC(&unk_100772710, &type metadata accessor for IndexPath);
  LOBYTE(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
  v150 = *(v60 + 8);
  v151 = v60 + 8;
  (v150)(v63, v62);
  if ((v59 & 1) == 0)
  {
    if (qword_100766F88 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100003E30(v64, qword_10076FCE0);
    v65 = v129;
    v66 = v152;
    (*(v54 + 16))(v129, v55, v152);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v125 = v39;
      v148 = v70;
      v155 = v70;
      *v69 = 136315394;
      v61 = v136;
      swift_beginAccess();
      sub_1001653BC(&qword_1007720C0, &type metadata accessor for IndexPath);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v65;
      v74 = sub_100004060(v71, v72, &v155);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      v63 = v140;
      TTRUnadjustedIndexPath.indexPath.getter();
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      (v150)(v63, v139);
      (*(v149 + 8))(v73, v152);
      v78 = sub_100004060(v75, v77, &v155);
      v62 = v139;

      *(v69 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v67, v68, "TTRIRemindersBoardDropCommitCoordinator: unexpected dropCoordinator.destinationIndexPath {given: %s, expected: %s}", v69, 0x16u);
      swift_arrayDestroy();
      v39 = v125;

      v54 = v149;
    }

    else
    {

      (*(v54 + 8))(v65, v66);
      v61 = v136;
      v63 = v140;
    }

    TTRUnadjustedIndexPath.indexPath.getter();
    swift_beginAccess();
    v60 = v141;
    (*(v141 + 40))(v61, v63, v62);
  }

  swift_beginAccess();
  (*(v60 + 16))(v63, v61, v62);
  v104 = v55;
  v105 = v135;
  TTRUnadjustedIndexPath.init(_:)();
  v106 = v134;
  TTRBoardColumnDiffableDataSource.itemLocation(forItemAt:)();
  v107 = *(v54 + 8);
  v108 = v152;
  v107(v105, v152);
  v107(v104, v108);
  sub_1001652F8(v39, type metadata accessor for TTRIRemindersBoardDropProposal);
  v109 = v132;
  v110 = v133;
  if ((*(v132 + 48))(v106, 1, v133) == 1)
  {
    sub_1000079B4(v106, &unk_10076FE10);
    v111 = enum case for TTRTreeViewDropDestination.unknown<A, B>(_:);
    v112 = sub_100058000(&qword_100769548);
    (*(*(v112 - 8) + 104))(v153, v111, v112);
  }

  else
  {
    v113 = *(v109 + 32);
    v114 = v130;
    v113(v130, v106, v110);
    v115 = v153;
    v113(v153, v114, v110);
    v116 = enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:);
    v117 = sub_100058000(&qword_100769548);
    (*(*(v117 - 8) + 104))(v115, v116, v117);
  }

  return (v150)(v61, v62);
}

void sub_100164774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v3 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column) + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [v10 layoutAttributesForItemAtIndexPath:isa];

  if (v12)
  {
    [v12 bounds];

    v13 = *(v3 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator);
    v25 = IndexPath._bridgeToObjectiveC()().super.isa;
    CGRect.center.getter();
    v14 = [v13 dropItem:a1 intoItemAtIndexPath:v25 rect:?];
    swift_unknownObjectRelease();
    v15 = v25;
  }

  else
  {
    if (qword_100766F88 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10076FCE0);
    (*(v7 + 16))(v9, a2, v6);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      sub_1001653BC(&qword_1007720C0, &type metadata accessor for IndexPath);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v7 + 8))(v9, v6);
      v24 = sub_100004060(v21, v23, &v26);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "TTRIRemindersBoardDropCommitCoordinator: layout attributes for the item doesn't exist. {indexPath: %s}", v19, 0xCu);
      sub_100004758(v20);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_100164AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v45 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v6 - 8);
  v43 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v39 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v38 - v15;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    v38[1] = v3;
    v18 = v45;
    sub_1000079B4(v10, &unk_100771B10);
    v20 = v43;
    v19 = v44;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
    if (v17(v20, 1, v11) == 1)
    {
      sub_1000079B4(v20, &unk_100771B10);
      if (qword_100766F88 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100003E30(v21, qword_10076FCE0);
      v23 = v40;
      v22 = v41;
      v24 = v19;
      v25 = v42;
      (*(v41 + 16))(v40, v24, v42);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46 = v29;
        *v28 = 136315138;
        sub_1001653BC(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        (*(v22 + 8))(v23, v25);
        v33 = sub_100004060(v30, v32, &v46);

        *(v28 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v26, v27, "TTRIRemindersBoardDropCommitCoordinator: row for the fallbackItemID doesn't exist. {itemID: %s}", v28, 0xCu);
        sub_100004758(v29);
      }

      else
      {

        (*(v22 + 8))(v23, v25);
      }
    }

    else
    {
      v37 = v39;
      (*(v12 + 32))(v39, v20, v11);
      sub_100164774(v18, v37);
      (*(v12 + 8))(v37, v11);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    v34 = *(v3 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v36 = [v34 dropItem:v45 toItemAtIndexPath:isa];
    swift_unknownObjectRelease();

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_100164FF0()
{
  v1 = OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dragAndDropCoordinatorID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_lastDropProposal, &unk_10076FE30);

  return swift_deallocClassInstance();
}

void sub_1001650F4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100166C78(319, &unk_10076FD50, type metadata accessor for TTRIRemindersBoardDropProposal);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10016522C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100165290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001652F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100165358()
{
  result = qword_100769550;
  if (!qword_100769550)
  {
    sub_10005D20C(&unk_10076FE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769550);
  }

  return result;
}

uint64_t sub_1001653BC(unint64_t *a1, void (*a2)(uint64_t))
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

void **sub_100165404(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;
    v10(v7, v8, v9);
    v12 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
    v13 = v12[5];
    v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v15 = *(*(v14 - 8) + 16);
    v15(&v7[v13], &v8[v13], v14);
    v16 = v12[6];
    v17 = type metadata accessor for IndexPath();
    (*(*(v17 - 8) + 16))(&v7[v16], &v8[v16], v17);
    v15(&v7[v12[7]], &v8[v12[7]], v14);
    v7[v12[8]] = v8[v12[8]];
  }

  return v5;
}

uint64_t sub_100165598(id *a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 20);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v7 = v6[5];
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(*(v8 - 8) + 8);
  (v13)((v8 - 8), &v4[v7], v8);
  v9 = v6[6];
  v10 = type metadata accessor for IndexPath();
  (*(*(v10 - 8) + 8))(&v4[v9], v10);
  v11 = &v4[v6[7]];

  return v13(v11, v8);
}

void **sub_1001656CC(void **a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 16);
  v10 = v4;
  v9(v6, v7, v8);
  v11 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v12 = v11[5];
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(*(v13 - 8) + 16);
  v14(&v6[v12], &v7[v12], v13);
  v15 = v11[6];
  v16 = type metadata accessor for IndexPath();
  (*(*(v16 - 8) + 16))(&v6[v15], &v7[v15], v16);
  v14(&v6[v11[7]], &v7[v11[7]], v13);
  v6[v11[8]] = v7[v11[8]];
  return a1;
}

void **sub_100165818(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 24))(v10, v11, v12);
  v13 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v14 = v13[5];
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v16 = *(*(v15 - 8) + 24);
  v16(&v10[v14], &v11[v14], v15);
  v17 = v13[6];
  v18 = type metadata accessor for IndexPath();
  (*(*(v18 - 8) + 24))(&v10[v17], &v11[v17], v18);
  v16(&v10[v13[7]], &v11[v13[7]], v15);
  v10[v13[8]] = v11[v13[8]];
  return a1;
}

void *sub_100165970(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 32))(v5, v6, v7);
  v8 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v9 = v8[5];
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v11 = *(*(v10 - 8) + 32);
  v11(&v5[v9], &v6[v9], v10);
  v12 = v8[6];
  v13 = type metadata accessor for IndexPath();
  (*(*(v13 - 8) + 32))(&v5[v12], &v6[v12], v13);
  v11(&v5[v8[7]], &v6[v8[7]], v10);
  v5[v8[8]] = v6[v8[8]];
  return a1;
}

void **sub_100165AB4(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 40))(v8, v9, v10);
  v11 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v12 = v11[5];
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(*(v13 - 8) + 40);
  v14(&v8[v12], &v9[v12], v13);
  v15 = v11[6];
  v16 = type metadata accessor for IndexPath();
  (*(*(v16 - 8) + 40))(&v8[v15], &v9[v15], v16);
  v14(&v8[v11[7]], &v9[v11[7]], v13);
  v8[v11[8]] = v9[v11[8]];
  return a1;
}

uint64_t sub_100165C30()
{
  result = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **sub_100165CCC(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
    v22 = *(v11 - 1);
    v12 = *(v22 + 48);
    v13 = v4;
    if (v12(v10, 1, v11))
    {
      v14 = sub_100058000(&qword_10076FE00);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 16))(v9, v10, v15);
      v16 = v11[5];
      v17 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v18 = *(*(v17 - 8) + 16);
      v18(&v9[v16], &v10[v16], v17);
      v19 = v11[6];
      v20 = type metadata accessor for IndexPath();
      (*(*(v20 - 8) + 16))(&v9[v19], &v10[v19], v20);
      v18(&v9[v11[7]], &v10[v11[7]], v17);
      v9[v11[8]] = v10[v11[8]];
      (*(v22 + 56))(v9, 0, 1, v11);
    }

    *(v7 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return v7;
}

uint64_t sub_100165F40(id *a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 20);
  v5 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  result = (*(*(v5 - 1) + 48))(v4, 1, v5);
  if (!result)
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v4, v7);
    v8 = v5[5];
    v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v13 = *(*(v9 - 8) + 8);
    (v13)((v9 - 8), &v4[v8], v9);
    v10 = v5[6];
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
    v12 = &v4[v5[7]];

    return v13(v12, v9);
  }

  return result;
}

void **sub_1001660C0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 48);
  v13 = v6;
  if (v12(v9, 1, v10))
  {
    v14 = sub_100058000(&qword_10076FE00);
    memcpy(v8, v9, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 16))(v8, v9, v15);
    v16 = v10[5];
    v17 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v18 = *(*(v17 - 8) + 16);
    v18(&v8[v16], &v9[v16], v17);
    v19 = v10[6];
    v20 = type metadata accessor for IndexPath();
    (*(*(v20 - 8) + 16))(&v8[v19], &v9[v19], v20);
    v18(&v8[v10[7]], &v9[v10[7]], v17);
    v8[v10[8]] = v9[v10[8]];
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void **sub_1001662D8(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v13 = *(v12 - 1);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v16 = v14(v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 24))(v10, v11, v28);
      v29 = v12[5];
      v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v31 = *(*(v30 - 8) + 24);
      v31(&v10[v29], &v11[v29], v30);
      v32 = v12[6];
      v33 = type metadata accessor for IndexPath();
      (*(*(v33 - 8) + 24))(&v10[v32], &v11[v32], v33);
      v31(&v10[v12[7]], &v11[v12[7]], v30);
      v10[v12[8]] = v11[v12[8]];
      goto LABEL_7;
    }

    sub_1001652F8(v10, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    v23 = sub_100058000(&qword_10076FE00);
    memcpy(v10, v11, *(*(v23 - 8) + 64));
    goto LABEL_7;
  }

  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 16))(v10, v11, v17);
  v18 = v12[5];
  v19 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v20 = *(*(v19 - 8) + 16);
  v20(&v10[v18], &v11[v18], v19);
  v21 = v12[6];
  v22 = type metadata accessor for IndexPath();
  (*(*(v22 - 8) + 16))(&v10[v21], &v11[v21], v22);
  v20(&v10[v12[7]], &v11[v12[7]], v19);
  v10[v12[8]] = v11[v12[8]];
  (*(v13 + 56))(v10, 0, 1, v12);
LABEL_7:
  v24 = *(a3 + 24);
  v25 = (a1 + v24);
  v26 = (a2 + v24);
  *v25 = *v26;
  v25[1] = v26[1];
  return a1;
}

void *sub_100166634(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v10 = *(v9 - 1);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    v11 = sub_100058000(&qword_10076FE00);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 32))(v7, v8, v12);
    v13 = v9[5];
    v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v15 = *(*(v14 - 8) + 32);
    v15(&v7[v13], &v8[v13], v14);
    v16 = v9[6];
    v17 = type metadata accessor for IndexPath();
    (*(*(v17 - 8) + 32))(&v7[v16], &v8[v16], v17);
    v15(&v7[v9[7]], &v8[v9[7]], v14);
    v7[v9[8]] = v8[v9[8]];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void **sub_100166848(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 40))(v8, v9, v23);
      v24 = v10[5];
      v25 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v26 = *(*(v25 - 8) + 40);
      v26(&v8[v24], &v9[v24], v25);
      v27 = v10[6];
      v28 = type metadata accessor for IndexPath();
      (*(*(v28 - 8) + 40))(&v8[v27], &v9[v27], v28);
      v26(&v8[v10[7]], &v9[v10[7]], v25);
      v8[v10[8]] = v9[v10[8]];
      goto LABEL_7;
    }

    sub_1001652F8(v8, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v21 = sub_100058000(&qword_10076FE00);
    memcpy(v8, v9, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 32))(v8, v9, v15);
  v16 = v10[5];
  v17 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v18 = *(*(v17 - 8) + 32);
  v18(&v8[v16], &v9[v16], v17);
  v19 = v10[6];
  v20 = type metadata accessor for IndexPath();
  (*(*(v20 - 8) + 32))(&v8[v19], &v9[v19], v20);
  v18(&v8[v10[7]], &v9[v10[7]], v17);
  v8[v10[8]] = v9[v10[8]];
  (*(v11 + 56))(v8, 0, 1, v10);
LABEL_7:
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void sub_100166BB8()
{
  sub_100166C78(319, &unk_10076FF60, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_100166C78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100166CCC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100003540(0, &qword_100771DF0);
  v5 = static UIFont.roundedSystemFont(ofSize:weight:)();
  v6 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  [v6 scaledFontForFont:v5];
  sub_10008CD14();
  AttributeContainer.subscript.setter();
}

uint64_t sub_100166DE0(void *a1)
{
  v23 = a1;
  v1 = sub_100058000(&qword_100769CF8);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  static UIButton.Configuration.filled()();
  v15 = objc_opt_self();
  v16 = [v15 tintColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v17 = [v15 whiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.contentInsets.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v18 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  static TTRLocalizableStrings.AccountsList.upgradeButtonTitle.getter();
  UIButton.Configuration.title.setter();
  sub_100003540(0, &unk_10077A690);
  (*(v9 + 16))(v11, v14, v8);
  v19 = v23;
  v20 = UIButton.init(configuration:primaryAction:)();
  (*(v9 + 8))(v14, v8);
  return v20;
}

void (*sub_1001670F4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10016A6D4(v3, v8);
  return sub_10016720C;
}

void sub_10016720C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void (*sub_100167284(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10016A8A8(v6, a2, a3);
  return sub_10016730C;
}

void sub_10016730C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100167358()
{
  swift_getObjectType();
  dispatch thunk of TTRDeferredViewActionScheduling.trigger.getter();
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_10016A3D8;
  *(v1 + 24) = v0;
  sub_100058000(&qword_100769510);
  sub_10000E1D0(&unk_100784590, &qword_100769510);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_100058000(&unk_100781750);
  sub_10000E1D0(&qword_100770088, &unk_100781750);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10016A3F0;
  *(v3 + 24) = v2;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100167624()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10016767C();
  }

  return result;
}

uint64_t sub_10016767C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v208 = *(v1 - 8);
  __chkstk_darwin(v1);
  v192 = &v191 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v191 - v4;
  __chkstk_darwin(v6);
  v198 = &v191 - v7;
  __chkstk_darwin(v8);
  v194 = &v191 - v9;
  __chkstk_darwin(v10);
  v193 = &v191 - v11;
  __chkstk_darwin(v12);
  v195 = &v191 - v13;
  __chkstk_darwin(v14);
  v205 = &v191 - v15;
  __chkstk_darwin(v16);
  v201 = &v191 - v17;
  __chkstk_darwin(v18);
  v212 = &v191 - v19;
  swift_beginAccess();
  if (*(v0 + 88) == 1)
  {
    swift_beginAccess();

    v21 = sub_1004B538C(v20);
  }

  else
  {
  }

  v221 = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  v210 = v1;
  *&v211 = Strong;
  v204 = v0;
  v202 = v5;
  if (!Strong)
  {
    v28 = _swiftEmptyArrayStorage;
    v38 = _swiftEmptyArrayStorage[2];
    if (!v38)
    {
      goto LABEL_27;
    }

LABEL_155:
    v165 = 0;
    v166 = v28 + 4;
    v209 = (v208 + 16);
    v207 = v208 + 8;
    v39 = &_swiftEmptyDictionarySingleton;
    v206 = v28;
    v203 = v28 + 4;
    while (v165 < v28[2])
    {
      v167 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID;
      v211 = *&v166[2 * v165];
      v168 = v211;
      swift_beginAccess();
      v169 = *v209;
      v170 = v168 + v167;
      v171 = v212;
      (*v209)(v212, v170, v1);
      swift_unknownObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v222.i64[0] = v39;
      v173 = sub_1003AB294(v171);
      v175 = v39;
      v176 = v173;
      v177 = v39[2];
      v178 = (v174 & 1) == 0;
      v179 = v177 + v178;
      if (__OFADD__(v177, v178))
      {
        goto LABEL_169;
      }

      v180 = v174;
      if (v175[3] >= v179)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003B0790();
        }
      }

      else
      {
        sub_10054DC1C(v179, isUniquelyReferenced_nonNull_native);
        v181 = sub_1003AB294(v212);
        if ((v180 & 1) != (v182 & 1))
        {
          goto LABEL_174;
        }

        v176 = v181;
      }

      v1 = v210;
      v183 = v222.i64[0];
      if (v180)
      {
        *(*(v222.i64[0] + 56) + 16 * v176) = v211;
        v39 = v183;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*v207)(v212, v1);
      }

      else
      {
        v184 = v38;
        v39 = v222.i64[0];
        *(v222.i64[0] + 8 * (v176 >> 6) + 64) |= 1 << v176;
        v185 = v208;
        v186 = v1;
        v187 = v212;
        v169(v39[6] + *(v208 + 72) * v176, v212, v186);
        *(v39[7] + 16 * v176) = v211;
        swift_unknownObjectRelease();
        v188 = v187;
        v1 = v186;
        (*(v185 + 8))(v188, v186);
        v189 = v39[2];
        v123 = __OFADD__(v189, 1);
        v190 = v189 + 1;
        if (v123)
        {
          goto LABEL_170;
        }

        v39[2] = v190;
        v38 = v184;
        v166 = v203;
      }

      ++v165;
      v28 = v206;
      if (v38 == v165)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v23 = *(v211 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (!v23)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_175:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v24 = [v23 visibleCells];
  sub_10016A474();
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_153:
    v28 = _swiftEmptyArrayStorage;
    goto LABEL_154;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_153;
  }

LABEL_8:
  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  do
  {
    v29 = v27;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_149;
        }

        v30 = *(v25 + 8 * v29 + 32);
      }

      v31 = v30;
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_148;
      }

      type metadata accessor for TTRIBoardColumnCollectionViewCell();
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        break;
      }

LABEL_11:
      ++v29;
      if (v27 == v26)
      {
        goto LABEL_154;
      }
    }

    v33 = *(v32 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_chromelessBarsStateContributor);

    if (!v33)
    {
      goto LABEL_11;
    }

    v34 = swift_isUniquelyReferenced_nonNull_native();
    if ((v34 & 1) == 0)
    {
      v28 = sub_100547E24(0, v28[2] + 1, 1, v28);
    }

    v36 = v28[2];
    v35 = v28[3];
    if (v36 >= v35 >> 1)
    {
      v28 = sub_100547E24((v35 > 1), v36 + 1, 1, v28);
    }

    v28[2] = v36 + 1;
    v37 = &v28[2 * v36];
    v37[4] = v33;
    v37[5] = &off_10072E500;
  }

  while (v27 != v26);
LABEL_154:

  swift_unknownObjectRelease();
  v1 = v210;
  v38 = v28[2];
  if (v38)
  {
    goto LABEL_155;
  }

LABEL_27:
  v39 = &_swiftEmptyDictionarySingleton;
LABEL_28:

  v40 = v204;
  swift_beginAccess();

  v42 = sub_1004B538C(v41);

  v206 = v39;
  sub_10057D1C4(v43, v42);
  v45 = 0;
  v47 = v44 + 56;
  v46 = *(v44 + 56);
  v207 = v44;
  v48 = 1 << *(v44 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v46;
  v51 = (v48 + 63) >> 6;
  v212 = v208 + 16;
  *&v211 = v208 + 32;
  v52 = (v208 + 8);
  v197 = xmmword_10062E1C0;
  v209 = (v208 + 8);
  v199 = v51;
  v200 = v44 + 56;
  if (v50)
  {
    while (1)
    {
LABEL_37:
      v59 = v208;
      v60 = *(v208 + 16);
      v61 = v201;
      v60(v201, *(v207 + 48) + *(v208 + 72) * (__clz(__rbit64(v50)) | (v45 << 6)), v1);
      v62 = v205;
      (*(v59 + 32))(v205, v61, v1);
      v63 = v206;
      if (v206[2] && (v64 = sub_1003AB294(v62), (v65 & 1) != 0))
      {
        v66 = (v63[7] + 16 * v64);
        v67 = *v66;
        v68 = v66[1];
        swift_unknownObjectRetain();
      }

      else
      {
        v67 = 0;
        v68 = 0;
      }

      swift_beginAccess();
      v69 = *(v40 + 48);
      v70 = *(v69 + 16);
      if (v70)
      {
        v71 = sub_1003AB294(v205);
        if (v72)
        {
          sub_10016A5B4(*(v69 + 56) + 32 * v71, &v222);
          LOBYTE(v70) = v222.i64[1] != 1;
          if (v222.i64[0] != 1)
          {
            goto LABEL_49;
          }

          goto LABEL_47;
        }

        LOBYTE(v70) = 0;
      }

      v222 = vdupq_n_s64(1uLL);
      *&v223 = 0;
      WORD4(v223) = 0;
LABEL_47:
      if ((v70 & 1) == 0)
      {
        sub_1000079B4(&v222, &qword_100770090);
        swift_endAccess();
        v216 = v197;
        v217 = 0;
        goto LABEL_50;
      }

LABEL_49:
      sub_10000794C(&v222, &v216, &qword_1007700A0);
      sub_1000079B4(&v222, &qword_100770090);
      swift_endAccess();
LABEL_50:
      v50 &= v50 - 1;
      if (!v67)
      {
        sub_10000794C(&v216, &v222, &qword_1007700A0);
        if (*&v222 == __PAIR128__(1, 0))
        {
          sub_1000079B4(&v222, &qword_1007700A0);
        }

        else
        {
          v88 = v223;

          sub_10016A00C(&v222);
          if (v88)
          {
            AnyCancellable.cancel()();
          }
        }

        v60(v194, v205, v1);
        swift_beginAccess();
        v90 = sub_1001670F4(v222.i64);
        if (*v89 == 1 && v89[1] == 1)
        {
          (v90)(&v222, 0);
          swift_endAccess();
          v91 = *v52;
          (*v52)(v194, v1);
        }

        else
        {
          v92 = v89;
          sub_1000079B4(v89, &qword_1007700A0);
          *v92 = v197;
          v92[2] = 0;
          (v90)(&v222, 0);
          swift_endAccess();
          v91 = *v52;
          (*v52)(v194, v1);
        }

        sub_1000079B4(&v216, &qword_1007700A0);
        v91(v205, v1);
        goto LABEL_74;
      }

      sub_10000794C(&v216, &v213, &qword_1007700A0);
      if (!v213 && v214 == 1)
      {
        swift_unknownObjectRetain();
        sub_1000079B4(&v213, &qword_1007700A0);
        goto LABEL_59;
      }

      sub_10016A578(&v213, &v222);
      v73 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRetain();
      if (!v73 || (swift_unknownObjectRelease(), v73 != v67))
      {
        sub_10016A00C(&v222);
        goto LABEL_59;
      }

      v93 = v223;

      sub_10016A00C(&v222);
      if (v93)
      {
        swift_unknownObjectRelease_n();

        sub_1000079B4(&v216, &qword_1007700A0);
        (*v52)(v205, v1);
LABEL_74:
        v51 = v199;
        v47 = v200;
        if (!v50)
        {
          goto LABEL_33;
        }
      }

      else
      {
LABEL_59:
        v203 = v60;
        v196 = v68;
        type metadata accessor for TTRIBoardColumnChromelessBarsStateContributor();
        v74 = sub_1005552D0();
        v75 = v204;
        v222.i64[0] = v74;
        swift_allocObject();
        swift_weakInit();
        sub_100058000(&qword_1007700A8);
        sub_10000E1D0(&qword_1007700B0, &qword_1007700A8);
        v76 = Publisher<>.sink(receiveValue:)();

        v214 = v196;
        v196 = v67;
        swift_unknownObjectWeakInit();
        v215 = v76;
        sub_10016A4C8(&v213, v220);
        swift_beginAccess();
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v222.i64[0] = *(v75 + 48);
        v78 = v222.i64[0];
        *(v75 + 48) = 0x8000000000000000;
        v80 = sub_1003AB294(v205);
        v81 = v78[2];
        v82 = (v79 & 1) == 0;
        v83 = v81 + v82;
        if (__OFADD__(v81, v82))
        {
          goto LABEL_150;
        }

        v84 = v79;
        if (v78[3] >= v83)
        {
          v1 = v210;
          if ((v77 & 1) == 0)
          {
            sub_1003B050C();
            v78 = v222.i64[0];
          }
        }

        else
        {
          sub_10054D840(v83, v77);
          v78 = v222.i64[0];
          v85 = sub_1003AB294(v205);
          v1 = v210;
          if ((v84 & 1) != (v86 & 1))
          {
            goto LABEL_175;
          }

          v80 = v85;
        }

        *(v204 + 48) = v78;
        if ((v84 & 1) == 0)
        {
          v222 = v197;
          *&v223 = 0;
          WORD4(v223) = 0;
          v87 = v195;
          (v203)(v195, v205, v1);
          sub_10054F974(v80, v87, &v222, v78);
        }

        sub_10016A508(v220, v78[7] + 32 * v80);
        swift_endAccess();
        v53 = v193;
        v54 = v205;
        (v203)(v193, v205, v1);
        v55 = v195;
        sub_10058B6B8(v195, v53);
        swift_unknownObjectRelease_n();
        v56 = *v209;
        v57 = v55;
        v52 = v209;
        (*v209)(v57, v1);
        sub_10016A00C(&v213);
        sub_1000079B4(&v216, &qword_1007700A0);
        (v56)(v54, v1);
        v51 = v199;
        v47 = v200;
        v40 = v204;
        if (!v50)
        {
          goto LABEL_33;
        }
      }
    }
  }

  while (1)
  {
LABEL_33:
    v58 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_145;
    }

    if (v58 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v58);
    ++v45;
    if (v50)
    {
      v45 = v58;
      goto LABEL_37;
    }
  }

  v94 = v221 + 56;
  v95 = 1 << *(v221 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  v97 = v96 & *(v221 + 56);
  v98 = (v95 + 63) >> 6;
  v207 = v221;

  v99 = 0;
  while (v97)
  {
LABEL_87:
    while (1)
    {
      v101 = __clz(__rbit64(v97));
      v97 &= v97 - 1;
      v102 = v208;
      v103 = *(v207 + 48);
      v206 = *(v208 + 72);
      v104 = *(v208 + 16);
      v105 = v198;
      v106 = v210;
      v104(v198, v103 + v206 * (v101 | (v99 << 6)), v210);
      v107 = *(v102 + 32);
      v108 = v202;
      v107(v202, v105, v106);
      swift_beginAccess();
      v109 = *(v40 + 48);
      if (*(v109 + 16))
      {
        v110 = sub_1003AB294(v108);
        if (v111)
        {
          break;
        }
      }

      swift_endAccess();
      (*v209)(v108, v210);
      if (!v97)
      {
        goto LABEL_83;
      }
    }

    sub_10016A5B4(*(v109 + 56) + 32 * v110, &v213);
    sub_10016A43C(&v213, &v216);
    swift_endAccess();
    if (v216 == __PAIR128__(1, 0) || (v112 = swift_unknownObjectWeakLoadStrong()) == 0)
    {
      (*v209)(v202, v210);
    }

    else
    {
      v205 = v112;
      v113 = *(v112 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_chromelessBarsContributorConfiguration + 32);
      v114 = *(v112 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_chromelessBarsContributorConfiguration + 16);
      v222 = *(v112 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_chromelessBarsContributorConfiguration);
      v223 = v114;
      v224 = v113;
      v115 = v222.i64[0];
      v218 = sub_1001698C0(&v222) & 0x101;
      v116 = v192;
      v104(v192, v202, v210);
      swift_beginAccess();
      sub_10016A5B4(&v216, &v213);
      v117 = swift_isUniquelyReferenced_nonNull_native();
      v219 = *(v40 + 48);
      v118 = v219;
      *(v40 + 48) = 0x8000000000000000;
      v119 = sub_1003AB294(v116);
      v121 = v118[2];
      v122 = (v120 & 1) == 0;
      v123 = __OFADD__(v121, v122);
      v124 = v121 + v122;
      if (v123)
      {
        goto LABEL_171;
      }

      v125 = v120;
      if (v118[3] >= v124)
      {
        if ((v117 & 1) == 0)
        {
          v136 = v119;
          sub_1003B050C();
          v119 = v136;
        }
      }

      else
      {
        sub_10054D840(v124, v117);
        v119 = sub_1003AB294(v192);
        if ((v125 & 1) != (v126 & 1))
        {
          goto LABEL_174;
        }
      }

      v127 = v219;
      v128 = v209;
      v203 = (v209 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      if (v125)
      {
        sub_10016A648(&v213, v219[7] + 32 * v119);
        v129 = *v128;
        v130 = v210;
        (*v128)(v192, v210);
      }

      else
      {
        v219[(v119 >> 6) + 8] |= 1 << v119;
        v131 = v119;
        v132 = v210;
        v104((v127[6] + v119 * v206), v192, v210);
        sub_10016A43C(&v213, v127[7] + 32 * v131);
        v129 = *v128;
        (*v128)(v192, v132);
        v133 = v127[2];
        v123 = __OFADD__(v133, 1);
        v134 = v133 + 1;
        if (v123)
        {
          goto LABEL_172;
        }

        v127[2] = v134;
        v130 = v210;
      }

      v135 = v204;
      *(v204 + 48) = v127;

      swift_endAccess();
      sub_10016A61C(&v222);
      swift_unknownObjectRelease();
      v129(v202, v130);
      v40 = v135;
    }

    sub_10016A5EC(&v216);
  }

LABEL_83:
  while (1)
  {
    v100 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      break;
    }

    if (v100 >= v98)
    {

      v137 = *(v40 + 48);
      v138 = 1 << *(v137 + 32);
      v139 = -1;
      if (v138 < 64)
      {
        v139 = ~(-1 << v138);
      }

      v140 = v139 & *(v137 + 64);
      v141 = (v138 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v142 = 0;
      while (v140)
      {
        v143 = v142;
LABEL_114:
        v144 = __clz(__rbit64(v140));
        v140 &= v140 - 1;
        sub_10016A5B4(*(v137 + 56) + ((v143 << 11) | (32 * v144)), &v216);
        v145 = v218;
        sub_10016A5EC(&v216);
        if (v145 == 1)
        {
          v146 = 1;
LABEL_117:

          v147 = *(v204 + 48);
          v148 = 1 << *(v147 + 32);
          v149 = -1;
          if (v148 < 64)
          {
            v149 = ~(-1 << v148);
          }

          v150 = v149 & *(v147 + 64);
          v151 = (v148 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v152 = 0;
          do
          {
            if (!v150)
            {
              while (1)
              {
                v153 = v152 + 1;
                if (__OFADD__(v152, 1))
                {
                  goto LABEL_147;
                }

                if (v153 >= v151)
                {
                  v156 = 0;
                  goto LABEL_129;
                }

                v150 = *(v147 + 64 + 8 * v153);
                ++v152;
                if (v150)
                {
                  v152 = v153;
                  goto LABEL_126;
                }
              }
            }

            v153 = v152;
LABEL_126:
            v154 = __clz(__rbit64(v150));
            v150 &= v150 - 1;
            sub_10016A5B4(*(v147 + 56) + ((v153 << 11) | (32 * v154)), &v216);
            v155 = HIBYTE(v218);
            sub_10016A5EC(&v216);
          }

          while (v155 != 1);
          v156 = 1;
LABEL_129:

          v157 = *(v204 + 64);
          if (v157 == 2 || ((v146 ^ v157) & 1) != 0)
          {
            *(v204 + 64) = v146;
            if (swift_unknownObjectWeakLoadStrong())
            {
              TTRObservableViewModel.value.getter();
              v158 = BYTE1(v216) & 1;
              if (v216 == 2)
              {
                LOBYTE(v158) = 0;
              }

              LOBYTE(v216) = v146;
              BYTE1(v216) = v158;
              sub_10016A680();
              TTRObservableViewModel<A>.update(with:forcePublish:)();
              swift_unknownObjectRelease();
            }
          }

          v159 = *(v204 + 65);
          if (v159 == 2 || ((v156 ^ v159) & 1) != 0)
          {
            *(v204 + 65) = v156;
            if (swift_unknownObjectWeakLoadStrong())
            {
              TTRObservableViewModel.value.getter();
              LOBYTE(v216) = (v216 != 2) & v216;
              BYTE1(v216) = v156 ^ 1;
              sub_10016A680();
              TTRObservableViewModel<A>.update(with:forcePublish:)();
              swift_unknownObjectRelease();
            }
          }

          if (qword_100766F90 != -1)
          {
            goto LABEL_151;
          }

          goto LABEL_140;
        }
      }

      while (1)
      {
        v143 = v142 + 1;
        if (__OFADD__(v142, 1))
        {
          goto LABEL_146;
        }

        if (v143 >= v141)
        {
          v146 = 0;
          goto LABEL_117;
        }

        v140 = *(v137 + 64 + 8 * v143);
        ++v142;
        if (v140)
        {
          v142 = v143;
          goto LABEL_114;
        }
      }
    }

    v97 = *(v94 + 8 * v100);
    ++v99;
    if (v97)
    {
      v99 = v100;
      goto LABEL_87;
    }
  }

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
  swift_once();
LABEL_140:
  v160 = byte_10076FFA0;
  v161 = qword_10076FFA8;
  v162 = word_10076FFB0;
  if (HIBYTE(word_10076FFB0))
  {
    v163 = 256;
  }

  else
  {
    v163 = 0;
  }

  return sub_1001694B4(v160, v161, v163 | v162);
}

uint64_t sub_100168BB0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100168C10(v1);
  }

  return result;
}

uint64_t sub_100168C10(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  __chkstk_darwin(v10);
  v58 = &v49 - v11;
  __chkstk_darwin(v12);
  v61.i64[0] = &v49 - v13;
  swift_beginAccess();
  v14 = *(v2 + 48);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v59 = a1 + 56;
  v60 = a1;
  v62 = v5 + 16;
  v63 = (v5 + 8);
  v56 = v5;
  v53 = (v5 + 32);
  v55 = v14;

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v51 = v15;
  v50 = v19;
  v52 = v2;
LABEL_5:
  v23 = v21;
  v57 = v22;
  if (!v18)
  {
    goto LABEL_7;
  }

  do
  {
    v21 = v23;
LABEL_10:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = *(v56 + 72);
    v26 = *(v56 + 16);
    v26(v61.i64[0], *(v55 + 48) + v25 * (v24 | (v21 << 6)), v4);
    if (!*(v60 + 16) || (v27 = v60, sub_10016A3F8(&qword_10076FE50), v28 = dispatch thunk of Hashable._rawHashValue(seed:)(), v29 = -1 << *(v27 + 32), v30 = v28 & ~v29, ((*(v59 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0))
    {
LABEL_18:
      v34 = *v53;
      (*v53)(v54, v61.i64[0], v4);
      v22 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65.i64[0] = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004A2324(0, v22[2] + 1, 1);
        v22 = v65.i64[0];
      }

      v2 = v52;
      v37 = v22[2];
      v36 = v22[3];
      if (v37 >= v36 >> 1)
      {
        sub_1004A2324(v36 > 1, v37 + 1, 1);
        v22 = v65.i64[0];
      }

      v22[2] = v37 + 1;
      result = v34(v22 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + v37 * v25, v54, v4);
      v15 = v51;
      v19 = v50;
      goto LABEL_5;
    }

    v31 = ~v29;
    while (1)
    {
      v26(v9, *(v60 + 48) + v30 * v25, v4);
      sub_10016A3F8(&qword_10076BB60);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *v63;
      (*v63)(v9, v4);
      if (v32)
      {
        break;
      }

      v30 = (v30 + 1) & v31;
      if (((*(v59 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = (v33)(v61.i64[0], v4);
    v23 = v21;
    v2 = v52;
    v22 = v57;
    v15 = v51;
    v19 = v50;
  }

  while (v18);
  while (1)
  {
LABEL_7:
    v21 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v23;
    if (v18)
    {
      goto LABEL_10;
    }
  }

  v38 = v22[2];
  if (v38)
  {
    v39 = v22 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v40 = *(v56 + 72);
    v41 = *(v56 + 16);
    v61 = vdupq_n_s64(1uLL);
    v42 = v58;
    v41(v58, v39, v4);
    while (1)
    {
      swift_beginAccess();
      v43 = sub_1003AB294(v42);
      v45 = v44;
      v46 = *v63;
      (*v63)(v42, v4);
      if (v45)
      {
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v48 = *(v2 + 48);
        v64 = v48;
        *(v2 + 48) = 0x8000000000000000;
        if (!v47)
        {
          sub_1003B050C();
          v48 = v64;
        }

        v46((*(v48 + 48) + v43 * v40), v4);
        sub_10016A43C(*(v48 + 56) + 32 * v43, &v65);
        sub_1003ADDB4(v43, v48);
        *(v2 + 48) = v48;
      }

      else
      {
        v65 = v61;
        v66 = 0;
        v67 = 0;
      }

      swift_endAccess();
      sub_1000079B4(&v65, &qword_100770090);
      v39 += v40;
      if (!--v38)
      {
        break;
      }

      v41(v42, v39, v4);
    }
  }
}

uint64_t sub_1001691E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    *(v1 + 72) = 1;
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = *(v1 + 89);
    v5 = qword_100766F90;

    if (v5 != -1)
    {
      swift_once();
    }

    if (byte_10076FFA0 == 1)
    {
      v6 = HIBYTE(word_10076FFB0);
      v7 = word_10076FFB0;
      v8 = sub_1000E8AD0(v2, qword_10076FFA8);

      if ((v8 & 1) != 0 && ((v3 ^ v7) & 1) == 0 && ((v4 ^ v6) & 1) == 0)
      {
      }
    }

    else
    {
    }

    swift_getObjectType();
    dispatch thunk of TTRDeferredViewActionScheduling.schedule()();
  }

  return result;
}

uint64_t sub_10016931C()
{
  swift_beginAccess();
  *(v0 + 88) = 1;
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 89);
  v4 = qword_100766F90;

  if (v4 != -1)
  {
    swift_once();
  }

  if (v1 != byte_10076FFA0)
  {

LABEL_5:
    swift_getObjectType();
    return dispatch thunk of TTRDeferredViewActionScheduling.schedule()();
  }

  v6 = HIBYTE(word_10076FFB0);
  v7 = word_10076FFB0;
  v8 = sub_1000E8AD0(v2, qword_10076FFA8);

  if (v8 & 1) == 0 || !v7 || ((v3 ^ v6))
  {
    goto LABEL_5;
  }

  return result;
}

void sub_10016941C()
{
  byte_10076FFA0 = 0;
  qword_10076FFA8 = &_swiftEmptySetSingleton;
  word_10076FFB0 = 0;
}

uint64_t sub_10016943C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[17];
  v4 = a2[17];
  v5 = a2[16];
  v6 = a1[16];
  v7 = sub_1000E8AD0(*(a1 + 1), *(a2 + 1));
  if ((v5 ^ v6))
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 ^ v4 ^ 1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001694B4(char a1, uint64_t a2, int a3)
{
  swift_beginAccess();
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  *(v3 + 89) = BYTE1(a3) & 1;

  if (qword_100766F90 != -1)
  {
    swift_once();
  }

  if (byte_10076FFA0 != (a1 & 1))
  {

LABEL_5:
    swift_getObjectType();
    return dispatch thunk of TTRDeferredViewActionScheduling.schedule()();
  }

  v8 = HIBYTE(word_10076FFB0);
  v9 = word_10076FFB0;
  v10 = sub_1000E8AD0(a2, qword_10076FFA8);

  if (v10 & 1) == 0 || ((v9 ^ a3) & 1) != 0 || ((((a3 & 0x100) != 0) ^ v8))
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1001695E8(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100058000(&qword_1007700B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-v7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v10 = sub_100058000(&unk_1007700C0);
  v11 = v10;
  if (Strong)
  {
    v12 = *(v10 + 48);
    (*(v3 + 16))(v5, a1, v2);
    swift_beginAccess();
    v13 = sub_10058B6B8(&v8[v12], v5);
    swift_endAccess();
    v14 = *(Strong + 72);
    v15 = *(Strong + 80);
    v16 = *(Strong + 88);
    v17 = *(Strong + 89);
    v18 = qword_100766F90;

    if (v18 != -1)
    {
      swift_once();
    }

    if (v14 == byte_10076FFA0)
    {
      v19 = HIBYTE(word_10076FFB0);
      v20 = word_10076FFB0;
      v21 = sub_1000E8AD0(v15, qword_10076FFA8);

      if ((v21 & 1) != 0 && ((v16 ^ v20) & 1) == 0 && ((v17 ^ v19) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    swift_getObjectType();
    dispatch thunk of TTRDeferredViewActionScheduling.schedule()();
LABEL_11:

    *v8 = v13 & 1;
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    return sub_1000079B4(v8, &qword_1007700B8);
  }

  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  return sub_1000079B4(v8, &qword_1007700B8);
}

uint64_t sub_1001698C0(uint64_t a1)
{
  v2 = *a1;
  [*a1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 safeAreaInsets];
  rect1_8 = v11;
  v13 = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v15 = [Strong parentViewController];
  if (!v15)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v16 = v15;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v17 = sub_10037BD64();
  swift_unknownObjectRelease();

  if (!v17)
  {
    goto LABEL_14;
  }

  v16 = v17;
  if ([v16 isHidden])
  {

LABEL_9:
    goto LABEL_14;
  }

  [v16 bounds];
  v19 = v18;
  v21 = v20;

  [v2 convertPoint:v16 fromCoordinateSpace:{v19, v21}];
  v23 = v22;
  v44.origin.x = v4;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  MaxY = CGRectGetMaxY(v44);

  v25 = MaxY - v23;
  if (MaxY - v23 < 0.0)
  {
    v25 = 0.0;
  }

  if (v13 <= v25)
  {
    v13 = v25;
  }

LABEL_14:
  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  Width = CGRectGetWidth(v45);
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  rect1 = CGRectGetMinX(v46);
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  v27 = CGRectGetMaxY(v47) - v13;
  v48.origin.x = v4;
  v48.origin.y = v6;
  v48.size.width = v8;
  v48.size.height = v10;
  v28 = CGRectGetWidth(v48);
  [v2 contentSize];
  v31 = sub_100068328(0.0, 0.0, v29, v30, *(a1 + 8), *(a1 + 16));
  v32 = v13;
  v34 = v33;
  v49.origin.x = v4;
  v36 = v35;
  v49.origin.y = v6;
  v38 = v37;
  v49.size.width = Width;
  v49.size.height = rect1_8;
  v51.origin.x = v31;
  v51.origin.y = v34;
  v51.size.width = v36;
  v51.size.height = v38;
  v39 = CGRectIntersectsRect(v49, v51);
  v50.origin.x = rect1;
  v50.origin.y = v27;
  v50.size.width = v28;
  v50.size.height = v32;
  v52.origin.x = v31;
  v52.origin.y = v34;
  v52.size.width = v36;
  v52.size.height = v38;
  if (CGRectIntersectsRect(v50, v52))
  {
    v40 = 256;
  }

  else
  {
    v40 = 0;
  }

  return v40 | v39;
}

uint64_t sub_100169B5C()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shadow(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shadow(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shadow(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_100169CD4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersBoardChromelessBarsController.InvalidationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

__n128 initializeWithTake for TTRIRemindersBoardChromelessBarsController.InvalidationContext(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIRemindersBoardChromelessBarsController.InvalidationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.InvalidationContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.InvalidationContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destroy for TTRIRemindersBoardChromelessBarsController.ColumnState(void *result)
{
  if (*result)
  {
    v2 = 0;
  }

  else
  {
    v2 = result[1] == 1;
  }

  if (!v2)
  {
    swift_unknownObjectWeakDestroy();
  }

  return result;
}

uint64_t initializeWithCopy for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8) == 1;
  }

  if (v4)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    swift_unknownObjectWeakCopyInit();
    v5 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t a1, __int128 *a2)
{
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 1) == 1;
  }

  v5 = v4;
  if (*a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8) == 1;
  }

  if (v6)
  {
    if (v5)
    {
      v8 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v8;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
    }
  }

  else if (v5)
  {
    sub_10016A00C(a1);
    v7 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v7;
  }

  else
  {
    swift_unknownObjectWeakCopyAssign();
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 16) = *(a2 + 2);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t sub_10016A00C(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();

  return a1;
}

uint64_t initializeWithTake for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a2 + 8) == 1;
  }

  if (v3)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    result = swift_unknownObjectWeakTakeInit();
    v4 = *(a2 + 16);
    *(result + 8) = *(a2 + 8);
    *(result + 16) = v4;
  }

  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t assignWithTake for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8) == 1;
  }

  v5 = v4;
  if (*a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8) == 1;
  }

  if (v6)
  {
    if ((v5 & 1) == 0)
    {
      swift_unknownObjectWeakTakeInit();
      v7 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v7;
      goto LABEL_17;
    }
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      swift_unknownObjectWeakTakeAssign();
      *(a1 + 8) = *(a2 + 8);

      goto LABEL_17;
    }

    sub_10016A00C(a1);
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
LABEL_17:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v3 = (*a1 & 0x7FFFFFFF) - 1;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2;
      *(result + 8) = 1;
    }
  }

  return result;
}

uint64_t destroy for TTRIRemindersBoardChromelessBarsController.TrackingContext()
{
  swift_unknownObjectWeakDestroy();
}

uint64_t initializeWithCopy for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1, uint64_t a2)
{
  *(swift_unknownObjectWeakCopyAssign() + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithTake for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  v4 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v4;
  return result;
}

uint64_t assignWithTake for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t sub_10016A3F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRRemindersListViewModel.ItemID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016A474()
{
  result = qword_100770098;
  if (!qword_100770098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100770098);
  }

  return result;
}

uint64_t sub_10016A4C8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v4;

  return a2;
}

uint64_t sub_10016A508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007700A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016A578(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeInit();
  v4 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v4;
  return a2;
}

unint64_t sub_10016A680()
{
  result = qword_1007817B0;
  if (!qword_1007817B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007817B0);
  }

  return result;
}

void (*sub_10016A6D4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_10016B0F8(v5);
  v5[12] = sub_10016A9B4(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_10016A810;
}

void sub_10016A810(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_10016A8A8(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10016B12C(v7);
  v7[9] = sub_10016AD78(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10016A954;
}

void sub_10016A954(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10016A9B4(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x110uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 224) = a2;
  *(v8 + 232) = v3;
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9[15].i64[0] = v10;
  v11 = *(v10 - 8);
  v9[15].i64[1] = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[16].i64[0] = v12;
  v13 = *v3;
  v14 = sub_1003AB294(a2);
  v9[1].i8[10] = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1003B050C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_10054D840(v19, a3 & 1);
    v14 = sub_1003AB294(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  v9[16].i64[1] = v14;
  if (v20)
  {
    sub_10016A43C(*(*v4 + 56) + 32 * v14, v9);
  }

  else
  {
    *v9 = vdupq_n_s64(1uLL);
    v9[1].i64[0] = 0;
    v9[1].i16[4] = 0;
  }

  return sub_10016AB78;
}

void sub_10016AB78(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_10000794C(*a1, v2 + 160, &qword_100770090);
    v8 = *(v2 + 26);
    if (*(v2 + 160) != 1 || *(v2 + 168) != 1)
    {
      v10 = *(v2 + 232);
      sub_10016A43C(v2 + 160, v2 + 128);
      v6 = *v10;
      v7 = *(v2 + 264);
      if (v8)
      {
        sub_10016A43C(v2 + 128, v6[7] + 32 * v7);
        goto LABEL_21;
      }

      v13 = *(v2 + 256);
      (*(*(v2 + 248) + 16))(v13, *(v2 + 224), *(v2 + 240));
      sub_10016A43C(v2 + 128, v2 + 192);
      v14 = v2 + 192;
      goto LABEL_20;
    }

    sub_1000079B4(v2 + 160, &qword_100770090);
    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_17:
    v11 = *(v2 + 264);
    v12 = **(v2 + 232);
    (*(*(v2 + 248) + 8))(*(v12 + 48) + *(*(v2 + 248) + 72) * v11, *(v2 + 240));
    sub_1003ADDB4(v11, v12);
    goto LABEL_21;
  }

  sub_10000794C(*a1, v2 + 64, &qword_100770090);
  v3 = *(v2 + 26);
  if (*(v2 + 64) != 1 || *(v2 + 72) != 1)
  {
    v5 = *(v2 + 232);
    sub_10016A43C(v2 + 64, v2 + 32);
    v6 = *v5;
    v7 = *(v2 + 264);
    if (v3)
    {
      sub_10016A43C(v2 + 32, v6[7] + 32 * v7);
      goto LABEL_21;
    }

    v13 = *(v2 + 256);
    (*(*(v2 + 248) + 16))(v13, *(v2 + 224), *(v2 + 240));
    sub_10016A43C(v2 + 32, v2 + 96);
    v14 = v2 + 96;
LABEL_20:
    sub_10054F974(v7, v13, v14, v6);
    goto LABEL_21;
  }

  sub_1000079B4(v2 + 64, &qword_100770090);
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_21:
  v15 = *(v2 + 256);
  sub_1000079B4(v2, &qword_100770090);
  free(v15);

  free(v2);
}

void (*sub_10016AD78(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xD0uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[22] = a3;
  v10[23] = v4;
  v10[21] = a2;
  v12 = *v4;
  v13 = sub_100009044(a2, a3);
  *(v11 + 200) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1003AF8E0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10054C540(v18, a4 & 1);
    v13 = sub_100009044(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[24] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 56 * v13;
    v24 = *v23;
    v25 = *(v23 + 16);
    v26 = *(v23 + 24);
    v27 = *(v23 + 32);
    v28 = *(v23 + 48);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v24 = 0uLL;
    v27 = 0uLL;
  }

  *(v11 + 7) = v24;
  v11[16] = v25;
  v11[17] = v26;
  *(v11 + 9) = v27;
  v11[20] = v28;
  return sub_10016AF00;
}

void sub_10016AF00(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  v4 = *(*a1 + 120);
  v5 = *(*a1 + 128);
  v6 = *(*a1 + 136);
  v7 = *(*a1 + 144);
  v8 = *(*a1 + 152);
  v9 = *(*a1 + 160);
  v10 = *(*a1 + 200);
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      if ((*(*a1 + 200) & 1) == 0)
      {
        goto LABEL_15;
      }

      v26 = *(v2 + 192);
      v27 = **(v2 + 184);
      v28 = *(*a1 + 112);
      v29 = *(*a1 + 120);
      v16 = *(*a1 + 136);
      v30 = *(*a1 + 144);
      v31 = *(*a1 + 152);
      sub_100007E80(*(v27 + 48) + 16 * v26);
      sub_1003AD6E4(v26, v27);
      goto LABEL_14;
    }

    v11 = *(v2 + 192);
    v12 = **(v2 + 184);
    if ((v10 & 1) == 0)
    {
      v13 = *(v2 + 168);
      v32 = *(v2 + 176);
      *(v2 + 56) = v3;
      *(v2 + 64) = v4;
      *(v2 + 72) = v5;
      *(v2 + 80) = v6;
      *(v2 + 88) = v7;
      *(v2 + 96) = v8;
      *(v2 + 104) = v9;
      v16 = v6;
      v17 = v2 + 56;
      v15 = v32;
      goto LABEL_13;
    }

LABEL_7:
    v18 = (v12[7] + 56 * v11);
    *v18 = v3;
    v18[1] = v4;
    v18[2] = v5;
    v18[3] = v6;
    v18[4] = v7;
    v18[5] = v8;
    v18[6] = v9;
    goto LABEL_15;
  }

  if (v5)
  {
    v11 = *(v2 + 192);
    v12 = **(v2 + 184);
    if ((v10 & 1) == 0)
    {
      v13 = *(v2 + 168);
      v14 = *(v2 + 176);
      *v2 = v3;
      *(v2 + 8) = v4;
      *(v2 + 16) = v5;
      *(v2 + 24) = v6;
      *(v2 + 32) = v7;
      *(v2 + 40) = v8;
      *(v2 + 48) = v9;
      v15 = v14;
      v16 = v6;
      v17 = v2;
LABEL_13:
      v28 = v3;
      v29 = v4;
      v30 = v7;
      v31 = v8;
      sub_10054F708(v11, v13, v15, v17, v12);

LABEL_14:
      v8 = v31;
      v7 = v30;
      v6 = v16;
      v4 = v29;
      v3 = v28;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (*(*a1 + 200))
  {
    v19 = *(v2 + 192);
    v20 = **(v2 + 184);
    v21 = *(*a1 + 112);
    v22 = *(*a1 + 120);
    v23 = *(*a1 + 136);
    v24 = *(*a1 + 144);
    v25 = *(*a1 + 152);
    sub_100007E80(*(v20 + 48) + 16 * v19);
    sub_1003AD6E4(v19, v20);
    v8 = v25;
    v7 = v24;
    v6 = v23;
    v4 = v22;
    v3 = v21;
  }

LABEL_15:
  v33 = *(v2 + 112);
  v34 = *(v2 + 120);
  v35 = *(v2 + 128);
  v36 = *(v2 + 136);
  v37 = *(v2 + 144);
  v38 = *(v2 + 152);
  sub_10016B154(v3, v4, v5, v6, v7, v8);
  sub_10016B1B8(v33, v34, v35, v36, v37, v38);

  free(v2);
}

uint64_t (*sub_10016B0F8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10016B120;
}

uint64_t (*sub_10016B12C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10016B218;
}

void sub_10016B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3)
  {

    v6 = a6;
  }
}

uint64_t sub_10016B1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10016B224()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007700D0);
  v1 = sub_100003E30(v0, qword_1007700D0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10016B2EC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_1007701A8);
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v24 = *(v0 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_didScroll);

  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v11 = [objc_opt_self() mainRunLoop];
  v23 = v11;
  v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_100058000(&unk_1007701B0);
  sub_100003540(0, &qword_10076DFB0);
  sub_10000E188(&unk_1007701C0, &unk_1007701B0);
  sub_100139DF0();
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000079B4(v3, &qword_1007701A0);

  (*(v18 + 8))(v6, v19);

  sub_10000E188(&unk_1007701D0, &qword_1007701A8);
  v13 = v17;
  v14 = v20;
  v15 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v21 + 8))(v10, v14);
  *(v13 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_didStopScrollingCancellable) = v15;
}

void sub_10016B6A0()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_contentScrollViewNeedsAdjustmentAfterScrollingAnimation) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_contentScrollViewNeedsAdjustmentAfterScrollingAnimation) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(*(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView), 1, 0);
    }
  }

  v4 = *(*(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController) + 24);
  if (!v4 || (*(v4 + 24) & 1) == 0)
  {
    (*(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates))();
  }

  sub_10016C28C();
}

uint64_t sub_10016B750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_100770180);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_100058000(&qword_100790EE0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_pendingStartEditingItem;
  swift_beginAccess();
  sub_10016CDBC(v2 + v13, v9);
  v14 = sub_100058000(&unk_100770170);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1000079B4(v9, &unk_100770180);
  }

  else
  {
    v16 = *&v9[*(v14 + 48)];
    v30 = *(v10 + 48);
    v31 = v16;
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v32 = a1;
    v18 = v17;
    v19 = v2;
    v20 = *(v17 - 8);
    (*(v20 + 32))(v12, v9, v17);
    *&v12[v30] = v31;
    v21 = v18;
    a1 = v32;
    (*(v20 + 8))(v12, v21);
    v2 = v19;
    v22 = type metadata accessor for PromiseError();
    sub_10016CE9C();
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for PromiseError.cancelled(_:), v22);
    DeferredPromise.reject(_:)();
  }

  sub_100058000(&unk_100770190);
  swift_allocObject();
  v24 = DeferredPromise.init()();
  v25 = *(v14 + 48);
  v26 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v26 - 8) + 16))(v6, a1, v26);
  *&v6[v25] = v24;
  (*(v15 + 56))(v6, 0, 1, v14);
  swift_beginAccess();

  sub_10016CE2C(v6, v2 + v13);
  swift_endAccess();
  result = DeferredPromise.promise.getter();
  if (result)
  {
    v28 = result;

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016BB00(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(result + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_diffableDataSource);
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000079B4(v8, &unk_100771B10);
      return 0;
    }

    else
    {
      v16 = (*(v10 + 32))(v12, v8, v9);
      if ((a2 & 1) == 0)
      {
        v17 = *(*&v14[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController] + 24);
        if (!v17 || (*(v17 + 24) & 1) == 0)
        {
          (*&v14[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates])(v16);
        }
      }

      v18 = OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView;
      v19 = *&v14[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView];
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v19 scrollToItemAtIndexPath:isa atScrollPosition:a4 animated:a2 & 1];

      v21 = [*&v14[v18] isScrollAnimating];
      (*(v10 + 8))(v12, v9);

      return v21;
    }
  }

  return result;
}

BOOL sub_10016BD80()
{
  v0 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_diffableDataSource);
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      (*(v4 + 32))(v6, v2, v3);
      v11 = [*&v8[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView] indexPathsForVisibleItems];
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = sub_10010D158(v6, v12);

      (*(v4 + 8))(v6, v3);
      return v10;
    }

    sub_1000079B4(v2, &unk_100771B10);
  }

  return 0;
}

uint64_t sub_10016BFAC(uint64_t a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  if (qword_100766F98 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_1007700D0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100004060(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100004060(0xD00000000000002ALL, 0x8000000100674E00, &v16);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = TTRIShowRemindersEditableCellScrollingTarget.resolvedTargetsToTry.getter();
  __chkstk_darwin(v12);
  v15[2] = v13;
  v15[3] = a2;
  sub_10016C1B0(sub_10016CEF4, v15, a3 & 1);
}

void sub_10016C1B0(uint64_t (*a1)(void), uint64_t a2, char a3)
{
  v4.super.super.super.isa = *(v3 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView);
  if (a3)
  {
    v5._rawValue = a1(*(v3 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView));
    UIScrollView.scrollRectToFullyVisibleAnimated(_:)(v5);

    *(v3 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_contentScrollViewNeedsAdjustmentAfterScrollingAnimation) = 1;
  }

  else
  {
    UIScrollView.iterativelyScrollRectToFullyVisible(with:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(v4, 0, 1);
    }
  }
}

void sub_10016C28C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v57 = *(v1 - 8);
  __chkstk_darwin(v1);
  v56 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v3 - 8);
  v58 = &v46 - v4;
  v5 = type metadata accessor for IndexPath();
  v55 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_100770180);
  __chkstk_darwin(v8 - 8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v54 = sub_100058000(&qword_100790EE0);
  __chkstk_darwin(v54);
  v14 = &v46 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_pendingStartEditingItem;
  swift_beginAccess();
  v51 = v19;
  sub_10016CDBC(v0 + v19, v12);
  v20 = sub_100058000(&unk_100770170);
  v50 = *(v20 - 8);
  if ((*(v50 + 48))(v12, 1, v20) == 1)
  {
    v21 = &unk_100770180;
    v22 = v12;
LABEL_5:
    sub_1000079B4(v22, v21);
    return;
  }

  v46 = v20;
  v47 = v7;
  v23 = v5;
  v24 = *&v12[*(v20 + 48)];
  v48 = v1;
  v49 = v16;
  v25 = v15;
  v53 = v18;
  v26 = v54;
  v27 = *(v54 + 48);
  v28 = *(v16 + 32);
  v28(v14, v12, v15);
  *&v14[v27] = v24;
  v29 = v55;
  v30 = v53;
  v31 = v0;
  v32 = *&v14[*(v26 + 48)];
  v28(v53, v14, v15);
  v33 = v23;
  v34 = v56;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v35 = v58;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  (*(v57 + 8))(v34, v48);
  if ((*(v29 + 48))(v35, 1, v33) == 1)
  {
    (*(v49 + 8))(v30, v25);

    v21 = &unk_100771B10;
    v22 = v35;
    goto LABEL_5;
  }

  v57 = v32;
  v36 = v49;
  v37 = v47;
  (*(v29 + 32))(v47, v35, v33);
  v38 = UICollectionView.visibleCellForItem(at:)();
  v39 = v29;
  if (v38)
  {
    v40 = v38;
    swift_getObjectType();
    v41 = swift_conformsToProtocol2();
    if (v41)
    {
      v42 = v41;
      v43 = v52;
      (*(v50 + 56))(v52, 1, 1, v46);
      v44 = v33;
      v45 = v51;
      swift_beginAccess();
      sub_10016CE2C(v43, v31 + v45);
      swift_endAccess();
      v59 = v40;
      v60 = v42;
      DeferredPromise.resolve(_:)();

      (*(v39 + 8))(v37, v44);
      (*(v36 + 8))(v53, v25);

      return;
    }
  }

  else
  {
  }

  (*(v29 + 8))(v37, v33);
  (*(v36 + 8))(v53, v25);
}

uint64_t type metadata accessor for TTRIRemindersListScrollingController_collectionView()
{
  result = qword_100770158;
  if (!qword_100770158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016C9D0()
{
  sub_10016CAAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10016CAAC()
{
  if (!qword_100770168)
  {
    sub_10005D20C(&unk_100770170);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100770168);
    }
  }
}

uint64_t sub_10016CDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100770180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016CE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100770180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10016CE9C()
{
  result = qword_1007817D0;
  if (!qword_1007817D0)
  {
    type metadata accessor for PromiseError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007817D0);
  }

  return result;
}

uint64_t sub_10016CEF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4[2] = *(v1 + 24);
  v4[3] = a1;
  return sub_10007DEE4(sub_10016CF40, v4, v2);
}

double sub_10016CF40@<D0>(uint64_t a1@<X8>)
{
  sub_10000C36C(*(v1 + 16), *(*(v1 + 16) + 24));
  dispatch thunk of TTRIShowRemindersEditableCellScrollingTargetProviding.rect(for:in:)();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_10016CFC8(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController) + 24);
    if (!v2 || (*(v2 + 24) & 1) == 0)
    {
      return (*(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates))();
    }
  }

  return result;
}

uint64_t sub_10016D01C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController) + 24);
  if (!v1 || (*(v1 + 24) & 1) == 0)
  {
    return (*(v0 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates))();
  }

  return result;
}

uint64_t sub_10016D06C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17[3] = type metadata accessor for TTRITemplateSharingRouter();
  v17[4] = &off_10071D758;
  v17[0] = a2;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 40) = 0;
  swift_unknownObjectWeakInit();
  TTRTemplateSharingViewModel.init()();
  v8 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_previewUndoManager;
  v9 = objc_allocWithZone(TTRUndoManager);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithDebugIdentifier:v10];

  *(a4 + v8) = v11;
  *(a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_allowsShareSheets) = 1;
  v12 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_continuationForPerformAction;
  v13 = sub_100058000(&unk_10076B170);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  v14 = (a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_interactor);
  *v14 = a1;
  v14[1] = &protocol witness table for TTRTemplateSharingInteractor;
  sub_10000B0D8(v17, a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router);
  *(a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_undoManager) = a3;
  type metadata accessor for TTRTemplateSharingPresenterCapability();
  swift_allocObject();

  v15 = a3;
  *(a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_presenterCapability) = TTRTemplateSharingPresenterCapability.init(interactor:)();
  type metadata accessor for TTRMainActorDeferredAction();
  swift_allocObject();
  *(a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_deferredAction) = TTRMainActorDeferredAction.init()();
  sub_10016D550(&qword_1007701F8);

  TTRMainActorDeferredAction.delegate.setter();
  sub_100004758(v17);
  return a4;
}

uint64_t sub_10016D29C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(TTRUndoManager);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithDebugIdentifier:v8];

  type metadata accessor for TTRTemplateSharingInteractor();
  swift_allocObject();
  v10 = a1;
  v11 = TTRTemplateSharingInteractor.init(template:)();
  v12 = [v10 store];
  v13 = type metadata accessor for TTRITemplateSharingRouter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIActivityAlertRouterCapability();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 56) = v15;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v14 + 80) = 0;
  *(v14 + 16) = v12;
  swift_unknownObjectWeakAssign();
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = v9;
  v26[3] = v13;
  v26[4] = &off_10071D758;
  v26[0] = v14;
  type metadata accessor for TTRITemplateSharingPresenter();
  v16 = swift_allocObject();
  v17 = sub_10000AE84(v26, v13);
  __chkstk_darwin(v17);
  v19 = (&v26[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v22 = v9;

  v23 = sub_10016D06C(v11, v21, v22, v16);

  sub_100004758(v26);
  sub_10016D550(&qword_1007701F0);

  TTRTemplateSharingInteractor.delegate.setter();

  return v23;
}

uint64_t sub_10016D550(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRITemplateSharingPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10016D594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = UIListContentConfiguration.text.getter();
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v8;
  v11 = v9;
  v12 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

LABEL_6:
    v10 = static TTRAccesibility.General.Label.Untitled.getter();
    v11 = v13;
  }

  sub_100058000(&unk_100771E10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  *(v14 + 32) = v10;
  *(v14 + 40) = v11;
  v29 = v14;
  v15 = UIListContentConfiguration.secondaryText.getter();
  if (v16)
  {
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {

      if (!a2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    if (v19 >= v18 >> 1)
    {
      v27 = v15;
      v24 = v16;
      v25 = sub_100546970((v18 > 1), v19 + 1, 1, v14);
      v16 = v24;
      v14 = v25;
      v15 = v27;
    }

    *(v14 + 16) = v19 + 1;
    v20 = v14 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v16;
    v29 = v14;
  }

  if (a2)
  {
LABEL_15:

    sub_100081340(v21);
    v14 = v29;
  }

LABEL_16:
  v28 = v14;
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  v22 = BidirectionalCollection<>.joined(separator:)();

  (*(v5 + 8))(v7, v4);
  return v22;
}

uint64_t sub_10016D7FC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100770200);
  v1 = sub_100003E30(v0, qword_100770200);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10016D8C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v3 - 8);
  v54 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v5 - 8);
  v53 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v7 - 8);
  v52 = v40 - v8;
  v9 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v9 - 8);
  v51 = v40 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v56 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v13 = *(v45 - 8);
  __chkstk_darwin(v45);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v16 - 8);
  v18 = v40 - v17;
  v19 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v19 - 8);
  v21 = v40 - v20;
  v22 = type metadata accessor for TTRListType.SortingCapability();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10016FFE8();
  v26 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v23 + 16))(v25, v2 + v26, v22);
  v27 = (*(v23 + 88))(v25, v22);
  v44 = enum case for TTRListType.SortingCapability.notSupported(_:);
  if (v27 != enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    if (v27 == enum case for TTRListType.SortingCapability.supported(_:))
    {
      goto LABEL_5;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  (*(v23 + 96))(v25, v22);
  v28 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  (*(*(v28 - 8) + 8))(v25, v28);
LABEL_5:
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v29 = enum case for TTRListType.tagged(_:);
  v30 = type metadata accessor for TTRListType();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v21, v29, v30);
  v32 = *(v31 + 56);
  v49 = v21;
  v32(v21, 0, 1, v30);
  v43 = sub_100170420();
  v42 = v33;
  type metadata accessor for TTRListColors();
  v41 = static TTRListColors.tagged.getter();
  v34 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v35 = *(*(v34 - 8) + 56);
  v50 = v18;
  v35(v18, 1, 1, v34);
  swift_getObjectType();
  v36 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
  if (v36)
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v40[1] = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v13 + 8))(v15, v45);
  v37 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
  if (v37)
  {
    swift_unknownObjectRelease();
  }

  (*(v47 + 104))(v56, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v48);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v57, &qword_1007693C0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    LODWORD(v45) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v45) = 0;
  }

  LODWORD(v48) = v37 != 0;
  LODWORD(v47) = v36 != 0;
  sub_10017020C();
  sub_1001706BC(v51);
  v38 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

void *sub_10016E114()
{
  v1 = v0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v2 = dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  v4 = v3;
  swift_unknownObjectRelease();
  type metadata accessor for ShowTaggedViewModelSourceHashtagContext();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v1;
  sub_100173810(&qword_100770928, type metadata accessor for ShowTaggedViewModelSourceHashtagContext);

  return v5;
}

uint64_t sub_10016E1E4()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.tagged(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_10016E2F4()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.tagged(_:), v0);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10016E408()
{
  v1 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

uint64_t sub_10016E564()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_hasIncompleteOrCompletedReminders) == 2)
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(completedCount:)();
  }

  else
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(hasIncompleteOrCompletedReminders:shouldCategorizeGroceryItems:)();
  }
}

uint64_t sub_10016E59C@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v4 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v4 - 8) + 104))(a1, v3, v4);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  swift_storeEnumTagMultiPayload();
  v5 = (a1 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v5 = sub_100173B40;
  v5[1] = v1;
}

uint64_t sub_10016E65C()
{

  TTRRemindersListTreeViewModel.primarySectionID.getter();
}

uint64_t sub_10016E6B0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v3 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);

  return swift_storeEnumTagMultiPayload();
}

double sub_10016E73C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10016E8DC();
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = *(v5 + 88);
  v11 = (v5 + 8);
  if (v10(v7, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v11)(v7, v4);
    v12 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 24) = v12;
    *(a2 + 32) = &off_10071A5E0;
    v13 = sub_1000317B8(a2);
    v9(v13, a1, v4);
    *(v13 + *(v12 + 20)) = v8;
    *(v13 + *(v12 + 24)) = 0;
  }

  else
  {

    (*v11)(v7, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10016E8DC()
{
  v1 = OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    v3 = REMSmartListTypeTagged;
    type metadata accessor for TTRAttributeMatchingDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 40) = 1;
    *(v2 + 24) = &off_100718978;
    *(v2 + 32) = v3;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    v4 = v3;
  }

  return v2;
}

uint64_t sub_10016E998()
{
  v0 = type metadata accessor for TTRHashtagSpecifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for REMHashtagLabelCollection();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  v6 = __chkstk_darwin(v4);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v41 = &v37 - v9;
  __chkstk_darwin(v8);
  v43 = &v37 - v10;
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  result = (*(v12 + 88))(v14, v11);
  if (result != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    goto LABEL_6;
  }

  (*(v12 + 96))(v14, v11);
  v18 = *v14;

  v16 = *(sub_100058000(&qword_10076B830) + 64);
  v19 = TTRReminderEditor.changeItem.getter();
  v20 = [v19 hashtagContext];

  if (!v20)
  {
LABEL_11:

LABEL_17:
    v36 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    return (*(*(v36 - 8) + 8))(v14 + v16, v36);
  }

  v21 = [v20 hashtags];

  sub_100003540(0, &unk_1007758F0);
  sub_100173AD8();
  v38 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = *(v18 + 16);
  v39 = v16;
  v40 = v14;
  if (!v22)
  {

    goto LABEL_13;
  }

  v14 = sub_1003AC440(v22, 0);
  v23 = sub_1003B2F84(&v46, v14 + 4, v22, v18);
  result = sub_10008BA48();
  if (v23 == v22)
  {
LABEL_13:
    v25 = v44;
    v26 = v45;
    v27 = v41;
    v28 = v42;
    v29 = v38;
    REMHashtagLabelCollection.init(labels:)();
    v46 = v29;
    sub_100058000(&qword_100775900);
    sub_10000E188(&qword_100770918, &qword_100775900);
    REMHashtagLabelCollection.init<A>(hashtags:)();
    REMHashtagLabelCollection.subtracting(_:)();
    v30 = *(v26 + 8);
    v30(v28, v25);
    v45 = v26 + 8;
    v41 = v30;
    v30(v27, v25);
    v42 = REMHashtagLabelCollection.labels.getter();
    v31 = *(v42 + 2);
    if (v31)
    {
      v32 = enum case for TTRHashtagSpecifier.named(_:);
      v33 = *(v1 + 104);
      v34 = (v42 + 40);
      do
      {
        v35 = *v34;
        *v3 = *(v34 - 1);
        v3[1] = v35;
        v3[2] = 0;
        v33(v3, v32, v0);

        (*(v1 + 8))(v3, v0);
        v34 += 2;
        --v31;
      }

      while (v31);
    }

    (v41)(v43, v44);
    v16 = v39;
    v14 = v40;
    goto LABEL_17;
  }

  __break(1u);
LABEL_6:
  if (result != enum case for REMHashtagLabelSpecifier.allLabels(_:) && result != enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10016EF24(void *a1)
{
  v59 = sub_100058000(&qword_100770910);
  __chkstk_darwin(v59);
  v3 = v53 - v2;
  v4 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = v53 - v11;
  v61 = type metadata accessor for REMHashtagLabelCollection();
  v13 = *(v61 - 8);
  v14 = __chkstk_darwin(v61);
  v60 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v67 = v53 - v17;
  __chkstk_darwin(v16);
  v19 = v53 - v18;
  sub_10000C36C(a1, a1[3]);
  dispatch thunk of TTRReminderProtocol.ttrHashtagContext.getter();
  if (!v69)
  {
    sub_1000079B4(&v68, &qword_100769998);
    v30 = 0;
    return v30 & 1;
  }

  sub_10000C36C(&v68, v69);
  v20 = dispatch thunk of TTRReminderHashtagContextProtocol.hashtags.getter();
  sub_100004758(&v68);
  v68 = v20;

  sub_100058000(&qword_100775900);
  v63 = v7;
  sub_10000E188(&qword_100770918, &qword_100775900);
  v58 = v19;
  REMHashtagLabelCollection.init<A>(hashtags:)();
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v21 = v63;
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  (*(v21 + 16))(v10, v12, v6);
  v22 = (*(v21 + 88))(v10, v6);
  if (v22 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    if (v22 == enum case for REMHashtagLabelSpecifier.allLabels(_:))
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v31 = __CocoaSet.count.getter();

        (*(v21 + 8))(v12, v6);
        (*(v13 + 8))(v58, v61);
      }

      else
      {
        (*(v21 + 8))(v12, v6);
        (*(v13 + 8))(v58, v61);
        v31 = *(v20 + 16);
      }

      v30 = v31 != 0;
      return v30 & 1;
    }

    if (v22 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v32 = __CocoaSet.count.getter();

        (*(v21 + 8))(v12, v6);
        (*(v13 + 8))(v58, v61);
      }

      else
      {
        (*(v21 + 8))(v12, v6);
        (*(v13 + 8))(v58, v61);
        v32 = *(v20 + 16);
      }

      v30 = v32 == 0;
      return v30 & 1;
    }

    goto LABEL_43;
  }

  v56 = v3;
  (*(v21 + 96))(v10, v6);
  v23 = *v10;
  v24 = v10[1];
  v25 = sub_100058000(&qword_10076B830);
  (*(v65 + 32))(v64, v10 + *(v25 + 64), v66);
  v26 = *(v23 + 16);
  v57 = v6;
  v54 = v12;
  v55 = v13;
  v53[1] = v23;
  v62 = v24;
  if (v26)
  {
    v27 = sub_1003AC440(v26, 0);
    v28 = sub_1003B2F84(&v68, v27 + 4, v26, v23);

    sub_10008BA48();
    if (v28 != v26)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_44;
    }

    v29 = v56;
    v6 = v57;
    v24 = v62;
    v21 = v63;
  }

  else
  {
    v29 = v56;
  }

  REMHashtagLabelCollection.init(labels:)();
  v33 = *(v24 + 16);
  if (v33)
  {
    v34 = sub_1003AC440(*(v24 + 16), 0);
    v35 = sub_1003B2F84(&v68, v34 + 4, v33, v24);

    sub_10008BA48();
    if (v35 == v33)
    {
      v6 = v57;
      v21 = v63;
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_17:
  REMHashtagLabelCollection.init(labels:)();
  v36 = REMHashtagLabelCollection.isEmpty.getter();
  v37 = REMHashtagLabelCollection.isEmpty.getter();
  v38 = *(v59 + 48);
  v39 = *(v59 + 64);
  v40 = v65;
  v41 = v66;
  (*(v65 + 16))(v29, v64, v66);
  v29[v38] = (v36 & 1) == 0;
  v29[v39] = (v37 & 1) == 0;
  v42 = (*(v40 + 88))(v29, v41);
  if (v42 == enum case for REMHashtagLabelSpecifier.Operation.or(_:))
  {

    v43 = v55;
    if ((v36 & 1) == 0)
    {
      v44 = v58;
      v46 = REMHashtagLabelCollection.isDisjoint(with:)();
      if ((v37 & 1) == 0)
      {
        v48 = v54;
        if (v46)
        {
          v45 = v60;
          v30 = REMHashtagLabelCollection.isDisjoint(with:)() ^ 1;
        }

        else
        {
          v30 = 1;
          v45 = v60;
        }

        goto LABEL_32;
      }

      v30 = v46 ^ 1;
      goto LABEL_29;
    }

    v44 = v58;
    if ((v37 & 1) == 0)
    {
      v45 = v60;
      v30 = REMHashtagLabelCollection.isDisjoint(with:)() ^ 1;
LABEL_31:
      v48 = v54;
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  v43 = v55;
  if (v42 == enum case for REMHashtagLabelSpecifier.Operation.and(_:))
  {

    if (v36)
    {
      v44 = v58;
      if (v37)
      {
LABEL_24:
        v30 = 0;
LABEL_29:
        v48 = v54;
        v45 = v60;
LABEL_32:
        v49 = *(v43 + 8);
        v50 = v45;
        v51 = v61;
        v49(v50, v61);
        v49(v67, v51);
        (*(v65 + 8))(v64, v66);
        (*(v21 + 8))(v48, v6);
        v49(v44, v51);
        return v30 & 1;
      }
    }

    else
    {
      v44 = v58;
      v47 = REMHashtagLabelCollection.isSuperset(of:)();
      if (v37 & 1 | ((v47 & 1) == 0))
      {
        v30 = v37 & v47;
        goto LABEL_29;
      }
    }

    v45 = v60;
    v30 = REMHashtagLabelCollection.isDisjoint(with:)();
    goto LABEL_31;
  }

LABEL_44:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10016F854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10016E8DC();
  sub_1001D6AC0(a1, a2, a3);
}

uint64_t sub_10016F8B0()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  (*(v5 + 16))(v3, v7, v4);
  (*(v1 + 104))(v3, enum case for TTRUserActivityListPayload.State.tagged(_:), v0);
  v10[3] = type metadata accessor for TTRUserActivityListPayload();
  v10[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v10);
  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  (*(v5 + 8))(v7, v4);
  return sub_100004758(v10);
}

uint64_t sub_10016FAE0()
{
  v0 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v15 = *(v0 - 8);
  v16 = v0;
  __chkstk_darwin(v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  sub_100003540(0, &qword_1007865E0);
  v11 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  (*(v8 + 16))(v2, v10, v7);
  (*(v15 + 104))(v2, enum case for TTRUserActivityWindowSceneRestorationPayload.State.tagged(_:), v16);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v17[3] = v3;
  v17[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v12 = sub_1000317B8(v17);
  (*(v4 + 16))(v12, v6, v3);
  NSUserActivity.setPayload(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  sub_100004758(v17);
  return v11;
}

id sub_10016FDD0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_smartList);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.smartList(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10016FF08()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  sub_100003E68(v0, qword_100770218);
  v1 = sub_100003E30(v0, qword_100770218);
  v2 = enum case for TTRRemindersListViewModel.SectionID.NamedID.taggedSection(_:);
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = enum case for TTRRemindersListViewModel.SectionID.named(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_10016FFE8()
{
  v1 = v0;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;

    v8 = *(sub_100058000(&qword_10076B830) + 64);
    v9 = *(v7 + 16);

    v10 = v9 != 0;
    v11 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v11 - 8) + 8))(&v5[v8], v11);
    v12 = v10;
  }

  else
  {
    if (v6 != enum case for REMHashtagLabelSpecifier.allLabels(_:) && v6 != enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v10 = 0;
    v12 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_hasDefaultNewReminderButtonWhenSelectingAllTags);
  }

  if (v12)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  return v14 | v10;
}