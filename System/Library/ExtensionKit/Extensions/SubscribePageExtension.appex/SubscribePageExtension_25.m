void sub_1002C33A0(void *a1)
{
  if (*(v1 + 24))
  {
    if ((*(v1 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(v1 + 32);
        if (!v5)
        {

          if (!*(v1 + 32))
          {
            return;
          }

          goto LABEL_9;
        }

        v22 = *(v1 + 64);
        v6 = *(v1 + 48);

        sub_10001B5AC(v6);
        v7 = [v4 contentView];
        sub_100009D34();
        sub_1007477B4();
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v24.origin.x = v9;
        v24.origin.y = v11;
        v24.size.width = v13;
        v24.size.height = v15;
        Width = CGRectGetWidth(v24);
        v17 = [v4 contentView];
        v18 = v5(Width);

        [v4 setPreferredHeight:v18];
        v19 = 0.0;
        if ((v22 & 1) == 0)
        {
          v19 = v18;
        }

        [v4 setMinimumHeight:v19];

        sub_1000164A8(v6);
        *(v1 + 65) = 1;
      }
    }
  }

  if (!*(v1 + 32))
  {
    return;
  }

LABEL_9:
  v20 = *(v1 + 48);
  v21 = *(v1 + 64);

  sub_10001B5AC(v20);
  if (v21)
  {
    [a1 _scrollToTopIfPossible:1];
  }

  sub_1000164A8(v20);
}

uint64_t sub_1002C35BC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 32);
    if (v3)
    {
      v4 = *(v0 + 48);
      v17 = v2;
      if (*(v0 + 64))
      {
        v5 = *(v0 + 24);
        if (v5)
        {

          sub_10001B5AC(v4);
          v6 = [v5 isHidden];
          Height = 0.0;
          if ((v6 & 1) == 0)
          {
            v8 = [v17 contentView];
            [v8 frame];
            v10 = v9;
            v12 = v11;
            v14 = v13;
            v16 = v15;

            v19.origin.x = v10;
            v19.origin.y = v12;
            v19.size.width = v14;
            v19.size.height = v16;
            Height = CGRectGetHeight(v19);
          }
        }

        else
        {

          sub_10001B5AC(v4);
          Height = 0.0;
        }

        [v17 setMinimumHeight:Height];
        [v17 minimumHeight];
        [v17 setPreferredHeight:?];
      }

      else
      {
        sub_1002C38B4(v3, *(v0 + 40), v4);
      }

      return sub_1000164A8(v4);
    }

    else
    {

      return _objc_release_x1(0, v2);
    }
  }

  return result;
}

uint64_t sub_1002C3778()
{
  swift_unknownObjectWeakDestroy();

  sub_1002C2AF4(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1002C37EC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1002C3804(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002C3818(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1002C3860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002C38B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_10001B5AC(a3);
  }

  return result;
}

uint64_t sub_1002C3900()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1002C3954()
{
  result = qword_100930C90;
  if (!qword_100930C90)
  {
    sub_100747274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930C90);
  }

  return result;
}

void sub_1002C39AC(uint64_t a1, void **a2)
{
  v98 = a2;
  v103 = a1;
  v3 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v3 - 8);
  v92 = v79 - v4;
  v94 = sub_100742284();
  v93 = *(v94 - 1);
  __chkstk_darwin(v94);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10074ED34();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10074F344();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F164();
  v89 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074F284();
  v86 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100752CD4();
  v97 = *(v100 - 8);
  v17 = *(v97 + 64);
  __chkstk_darwin(v100);
  v90 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v101 = v79 - v19;
  v91 = sub_10000C518(&qword_100930CA0);
  v102 = sub_100752DE4();
  v96 = v2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v21 = [Strong view];

  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = [v21 window];

  if (!v22 || (v23 = [v22 windowScene], v22, !v23))
  {
    sub_1002C4F40();
    swift_allocError();
    sub_100752DA4();

    return;
  }

  v85 = v23;
  v24 = sub_100752764();
  sub_100752D34();
  sub_1002C4F94();
  v83 = v24;
  sub_100752D34();
  v84 = aBlock;
  v25 = sub_100747264();
  if (v26)
  {
    v81 = v25;
    v82 = v26;
    v27 = sub_100747234();
    if (v28)
    {
      v79[1] = v27;
      v79[2] = v28;
      if (sub_100747254())
      {
        sub_1007496A4();
        if (sub_100747254())
        {
          v29 = sub_10074F364();

          sub_100747FA4();
          v30 = sub_10074F274();
          v79[0] = v31;
          (*(v86 + 8))(v16, v14);
          aBlock = v30;
          v110 = v79[0];
          v86 = v29;
          v32 = sub_100747FE4();
          if ((v33 & 1) == 0)
          {
            v108._countAndFlagsBits = 45;
            v108._object = 0xE100000000000000;
            v106 = v32;
            v115._countAndFlagsBits = sub_100754714();
            sub_1007531B4(v115);

            sub_1007531B4(v108);
          }

          sub_10074F3C4();
          v34 = sub_10074F154();
          v36 = v35;
          v89[1](v13, v11);
          v108._countAndFlagsBits = v34;
          v108._object = v36;
          v106 = 8217467;
          v107 = 0xE300000000000000;
          v104 = aBlock;
          v105 = v110;
          sub_1000D5C0C();
          v37 = sub_1007542F4();
          v39 = v38;

          v108._countAndFlagsBits = v37;
          v108._object = v39;
          v106 = 8218235;
          v107 = 0xE300000000000000;
          sub_100747FD4();
          v40 = sub_10074F334();
          v42 = v41;
          (*(v87 + 8))(v10, v88);
          v104 = v40;
          v105 = v42;
          sub_1007542F4();
        }

        else
        {
          sub_10074F3C4();
          sub_10074F154();
          v89[1](v13, v11);
        }

        v43 = objc_allocWithZone(sub_100750264());
        v44 = sub_100750254();

        v89 = v44;
        v45 = v44;
        goto LABEL_18;
      }
    }
  }

  v89 = 0;
LABEL_18:
  sub_10000C518(&unk_100925780);
  sub_100752D34();
  v46 = aBlock;
  swift_getObjectType();
  sub_100747244();
  v98 = v46;
  v47 = sub_1007424E4();
  v48 = *(v95 + 8);
  v48(v8, v99);
  swift_getObjectType();
  v95 = v47;
  sub_1007423D4();
  v49 = v93;
  v50 = v94;
  if ((*(v93 + 88))(v6, v94) == enum case for LegacyAppState.openable(_:))
  {
    (*(v49 + 96))(v6, v50);
    v51 = *&v6[*(sub_10000C518(&unk_100930D20) + 48)];
    v52 = sub_100748314();
    (*(*(v52 - 8) + 8))(v6, v52);
    v53 = [v51 stringValue];
    sub_100753094();
  }

  else
  {
    (*(v49 + 8))(v6, v50);
  }

  sub_100749694();
  v94 = v84;
  sub_100747244();
  sub_10074ECF4();
  v48(v8, v99);
  v54 = objc_allocWithZone(sub_100750224());
  v55 = v89;
  v56 = sub_100750214();
  v57 = v96;
  v58 = swift_unknownObjectUnownedLoadStrong();
  v59 = [v58 presentedViewController];

  if (!v59)
  {
    goto LABEL_24;
  }

  if ([v59 isBeingDismissed])
  {

LABEL_24:
    v60 = v101;
    v61 = sub_100752C94();
    v62 = sub_100752DE4();
    v63 = sub_1007533D4();
    v64 = v92;
    (*(*(v63 - 8) + 56))(v92, 1, 1, v63);
    v65 = swift_allocObject();
    v65[2] = 0;
    v65[3] = 0;
    v66 = v85;
    v65[4] = v85;
    v65[5] = v56;
    v65[6] = v61;
    v65[7] = v62;
    v67 = v66;
    v68 = v56;

    sub_1000A0C18(0, 0, v64, &unk_1007B7B48, v65);

    sub_100752D54();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v97 + 8))(v60, v100);
    return;
  }

  sub_1002C50B8(v57, &v108);
  v69 = v97;
  v70 = v90;
  v71 = v100;
  (*(v97 + 16))(v90, v101, v100);
  v72 = (*(v69 + 80) + 40) & ~*(v69 + 80);
  v73 = (v17 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_1002C51D8(&v108, v74 + 16);
  v75 = v85;
  *(v74 + 24) = v85;
  *(v74 + 32) = v56;
  (*(v69 + 32))(v74 + v72, v70, v71);
  *(v74 + v73) = v102;
  v113 = sub_1002C5210;
  v114 = v74;
  aBlock = _NSConcreteStackBlock;
  v110 = 1107296256;
  v111 = sub_1000CF7B0;
  v112 = &unk_10086FE60;
  v76 = _Block_copy(&aBlock);
  v77 = v75;
  v78 = v56;

  [v59 dismissViewControllerAnimated:1 completion:v76];
  _Block_release(v76);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v69 + 8))(v101, v71);
}

uint64_t sub_1002C4790(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_100752C94();
  v9 = sub_100752DE4();
  v10 = sub_1007533D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v8;
  v11[7] = v9;
  v12 = a2;
  v13 = a3;

  sub_1000A0C18(0, 0, v7, &unk_1007B7B58, v11);

  sub_100752D54();
}

uint64_t sub_1002C4910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = sub_100752624();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_100750204();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002C4A30, 0, 0);
}

uint64_t sub_1002C4A30()
{
  sub_100750244();
  swift_allocObject();
  v0[20] = sub_100750234();
  v7 = (&async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:) + async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1002C4B04;
  v2 = v0[19];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];

  return v7(v2, v5, v3, v4);
}

uint64_t sub_1002C4B04()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1002C4D08;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v3 = sub_1002C4C30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002C4C30()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_100752DB4();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C4D08()
{

  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_100752E44();
  sub_10000D0FC(v1, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_10000D134(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_100752444();
  sub_1000277BC((v0 + 2));
  sub_100752D04();

  sub_100752DA4();

  v5 = v0[1];

  return v5();
}

unint64_t sub_1002C4F40()
{
  result = qword_100930CA8;
  if (!qword_100930CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930CA8);
  }

  return result;
}

unint64_t sub_1002C4F94()
{
  result = qword_100930CB0;
  if (!qword_100930CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100930CB0);
  }

  return result;
}

uint64_t sub_1002C4FE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000A4868;

  return sub_1002C4910(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002C50F0()
{
  v1 = sub_100752CD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectUnownedDestroy();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1002C5210()
{
  sub_100752CD4();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1002C4790(v0 + 16, v1, v2);
}

uint64_t sub_1002C52A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002C52BC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1002C5314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000A27FC;

  return sub_1002C4910(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1002C53FC()
{
  result = qword_100930D30;
  if (!qword_100930D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930D30);
  }

  return result;
}

uint64_t type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver()
{
  result = qword_100930D58;
  if (!qword_100930D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002C5500()
{
  v1 = qword_100930D50;
  v2 = *(v0 + qword_100930D50);
  if (v2)
  {
    v3 = *(v0 + qword_100930D50);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1002C5574(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v117 = a4;
  v114 = a3;
  v115 = a2;
  v113 = a1;
  v98 = sub_100742CF4();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v99 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1007493D4();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v97 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10074A304();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v95 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752614();
  __chkstk_darwin(v8 - 8);
  v92 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v10 - 8);
  v105 = &v82 - v11;
  v12 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v12 - 8);
  v104 = &v82 - v13;
  v89 = sub_10074F4D4();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v103 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v15 - 8);
  v108 = &v82 - v16;
  v17 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v17 - 8);
  v102 = &v82 - v18;
  v19 = sub_1007469A4();
  v111 = *(v19 - 8);
  v112 = v19;
  __chkstk_darwin(v19);
  v101 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v82 - v22;
  v23 = sub_100744604();
  v109 = *(v23 - 8);
  v110 = v23;
  __chkstk_darwin(v23);
  v100 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v82 - v26;
  v28 = sub_10074F704();
  v106 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10074EAB4();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v82 - v36;
  v116 = v4;
  sub_10000C888(&v4[qword_100930D48], *&v4[qword_100930D48 + 24]);
  v38 = v115;
  v39 = sub_10074D754();
  if (!v39 || (v43 = v39, v84 = v42, v85 = v41, v86 = v40, sub_100744624(), sub_1002C6680(&qword_100927FE0, &type metadata accessor for ProductReview), sub_1007468B4(), !v120))
  {
    sub_10074E284();
    v52 = sub_10074E294();
    return v52(v113, v38, v114, v117);
  }

  v83 = v43;
  v87 = v120;
  swift_getKeyPath();
  sub_100746914();

  sub_10074EA54();
  sub_1002C6680(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v44 = sub_100754324();
  v45 = *(v32 + 8);
  v45(v34, v31);
  v45(v37, v31);
  if (v44)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F594();
    v47 = v46;
    (*(v106 + 8))(v30, v28);
    v48 = v117;
    v50 = v111;
    v49 = v112;
    v51 = v38;
    if (v47 <= 1.0)
    {
LABEL_11:
      sub_10074E284();
      v77 = sub_10074E294();
      v77(v113, v51, v114, v48);
    }
  }

  else
  {
    sub_100744614();
    v55 = v109;
    v54 = v110;
    v56 = (*(v109 + 88))(v27, v110);
    v57 = enum case for ProductReview.ReviewSource.editorsChoice(_:);
    (*(v55 + 8))(v27, v54);
    v48 = v117;
    v50 = v111;
    v49 = v112;
    v51 = v38;
    if (v56 == v57)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    sub_100746914();

    v58 = v120;
    v59 = sub_1007537E4();

    if ((v59 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v60 = v100;
  sub_100744614();
  v62 = v109;
  v61 = v110;
  v63 = (*(v109 + 88))(v60, v110) == enum case for ProductReview.ReviewSource.reviewSummary(_:);
  (*(v62 + 8))(v60, v61);
  v64 = v107;
  sub_100746894();
  v65 = v101;
  (*(v50 + 16))(v101, v64, v49);
  v66 = sub_1006B94B0(v48, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000011, 0x8000000100775610);
  v115 = type metadata accessor for ProductPageReviewsOverflowViewController();
  v67 = objc_allocWithZone(v115);
  v68 = sub_1006600B8(v65, v83, v86, v85, v84, v66, v63);

  v69 = sub_1002C5500();
  v70 = v102;
  sub_100746994();
  v71 = sub_1007417F4();
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  v72 = OBJC_IVAR____TtC22SubscribePageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
  swift_beginAccess();
  sub_10003E1A0(v70, &v69[v72]);
  swift_endAccess();
  v69[OBJC_IVAR____TtC22SubscribePageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
  v73 = v68;
  [v73 setTransitioningDelegate:v69];
  [v73 setModalPresentationStyle:4];

  v74 = sub_10000C518(&unk_100923210);
  v75 = v108;
  sub_1007526C4();
  v76 = *(v74 - 8);
  if ((*(v76 + 48))(v75, 1, v74) == 1)
  {
    (*(v50 + 8))(v64, v49);

    return sub_100052F00(v75);
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    (*(v88 + 104))(v103, enum case for FlowPage.viewController(_:), v89);
    v78 = sub_100741264();
    (*(*(v78 - 8) + 56))(v104, 1, 1, v78);
    v79 = sub_100743FE4();
    (*(*(v79 - 8) + 56))(v105, 1, 1, v79);
    v119 = v115;
    v118 = v73;
    v116 = v73;
    sub_1007525F4();
    (*(v90 + 104))(v95, enum case for FlowPresentationContext.infer(_:), v91);
    (*(v93 + 104))(v97, enum case for FlowAnimationBehavior.infer(_:), v94);
    (*(v96 + 104))(v99, enum case for FlowOrigin.inapp(_:), v98);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v80 = sub_100742C84();
    v81 = v108;
    sub_1003C1424(v80, 1, v117, v108);

    (*(v50 + 8))(v107, v112);
    return (*(v76 + 8))(v81, v74);
  }
}

uint64_t sub_1002C6440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100749A94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100749A14();
  sub_100729558(v10, v7);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  return (*(v5 + 16))(a2, a1, v4);
}

void sub_1002C65A8()
{
  swift_unknownObjectWeakDestroy();
  sub_10000C620(v0 + qword_100930D48);
  v1 = *(v0 + qword_100930D50);
}

uint64_t sub_1002C65F8()
{
  v0 = sub_10074E2A4();

  swift_unknownObjectWeakDestroy();
  sub_10000C620(v0 + qword_100930D48);
  v1 = *(v0 + qword_100930D50);

  return swift_deallocClassInstance();
}

uint64_t sub_1002C6680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppPromotionCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:artworkFallbackView:videoView:gradientBlurView:kindLabel:titleLabel:subtitleView:separatorView:lockupContainerView:lockupView:includeSubtitle:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_10019A65C(a1, a9);
  v22 = type metadata accessor for AppPromotionCardLayout(0);
  sub_100012160(a2, a9 + v22[5]);
  sub_100012160(a3, a9 + v22[6]);
  sub_100012160(a4, a9 + v22[7]);
  sub_100012160(a5, a9 + v22[8]);
  sub_100012160(a6, a9 + v22[9]);
  v23 = a9 + v22[11];
  v24 = *(a8 + 16);
  *v23 = *a8;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a8 + 32);
  v25 = a9 + v22[12];
  v26 = *(a10 + 16);
  *v25 = *a10;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a10 + 32);
  sub_100012160(a11, a9 + v22[13]);
  sub_100012160(a12, a9 + v22[14]);
  sub_100012160(a13, a9 + v22[15]);
  v27 = a9 + v22[16];
  v28 = *(a14 + 16);
  *v27 = *a14;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a14 + 32);
  v29 = a9 + v22[17];
  v30 = *(a15 + 16);
  *v29 = *a15;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a15 + 32);
  v31 = a9 + v22[18];
  v32 = *(a16 + 16);
  *v31 = *a16;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a16 + 32);
  *(a9 + v22[19]) = a17;
  v33 = a9 + v22[10];

  return sub_100012160(a7, v33);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = sub_1007504F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = sub_1007504F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppPromotionCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 24);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 28);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 32);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 36);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  sub_100012160(a1, a7);
  v13 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v14 = v13[5];
  v15 = sub_1007504F4();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  sub_100012160(a3, a7 + v13[6]);
  sub_100012160(a4, a7 + v13[7]);
  sub_100012160(a5, a7 + v13[8]);
  v16 = a7 + v13[9];

  return sub_100012160(a6, v16);
}

uint64_t AppPromotionCardLayout.videoView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 44);

  return sub_1000CD5F0(v3, a1);
}

uint64_t AppPromotionCardLayout.gradientBlurView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 48);

  return sub_1000CD5F0(v3, a1);
}

uint64_t AppPromotionCardLayout.separatorView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 64);

  return sub_1000CD5F0(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupContainerView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 68);

  return sub_1000CD5F0(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 72);

  return sub_1000CD5F0(v3, a1);
}

double static AppPromotionCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();

  return sub_1002C9824(a1, a4);
}

double AppPromotionCardLayout.measurements(fitting:in:)(void *a1)
{
  swift_getObjectType();

  return sub_1002C86A0(a1, v1);
}

uint64_t AppPromotionCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v160 = a2;
  v154 = COERCE_DOUBLE(sub_100747064());
  v152 = *(*&v154 - 8);
  __chkstk_darwin(*&v154);
  v151 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(sub_100754724());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10000C888((v6 + v18[5]), *(v6 + v18[5] + 24));
  sub_100750394();
  sub_10000C888((v7 + v18[6]), *(v7 + v18[6] + 24));
  sub_100750394();
  sub_10000C888((v7 + v18[7]), *(v7 + v18[7] + 24));
  sub_100750394();
  sub_10000C888(v7, v7[3]);
  sub_100536120();
  sub_100750564();
  v20 = v19;
  v21 = *(v15 + 8);
  v156 = *&v17;
  v158 = *&v14;
  *&v157 = v15 + 8;
  MaxY = *&v21;
  v21(v17, v14);
  v159 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v171.origin.x = 0.0;
  v171.origin.y = 0.0;
  v171.size.width = a5;
  v171.size.height = a6;
  CGRectGetWidth(v171);
  sub_1007504C4();
  Height = round(v22);
  v172.origin.x = 0.0;
  v172.origin.y = 0.0;
  v172.size.width = a5;
  v172.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v172)) < 1.0)
  {
    v173.origin.x = 0.0;
    v173.origin.y = 0.0;
    v173.size.width = a5;
    v173.size.height = a6;
    Height = CGRectGetHeight(v173);
  }

  v174.origin.x = 0.0;
  v174.origin.y = 0.0;
  v174.size.width = a5;
  v174.size.height = a6;
  Width = CGRectGetWidth(v174);
  sub_10000C888((v6 + v18[8]), *(v6 + v18[8] + 24));
  sub_100753B24();
  sub_100750394();
  v175.origin.x = 0.0;
  v175.origin.y = 0.0;
  v175.size.width = Width;
  v175.size.height = Height;
  v25 = CGRectGetWidth(v175);
  v26 = (v6 + v18[9]);
  sub_10000C888(v26, v26[3]);
  sub_100753B24();
  sub_100750394();
  sub_10000C888((v6 + v18[10]), *(v6 + v18[10] + 24));
  sub_10000C888(v26, v26[3]);
  sub_100750384();
  sub_100750394();
  sub_1000CD5F0(v6 + v18[11], &v169);
  if (v170)
  {
    sub_10000C888(&v169, v170);
    sub_100750394();
    sub_10000C620(&v169);
  }

  else
  {
    sub_1002C9F48(&v169);
  }

  sub_1000CD5F0(v6 + v18[12], &v169);
  if (v170)
  {
    sub_10000C888(&v169, v170);
    sub_100750394();
    sub_10000C620(&v169);
  }

  else
  {
    sub_1002C9F48(&v169);
  }

  sub_1000CD5F0(v6 + v18[17], &v167);
  v161 = a5;
  v163 = a4;
  v162 = a3;
  if (!v168)
  {
    sub_1002C9F48(&v167);
LABEL_17:
    v27 = 1;
    v28 = 0.0;
    v150 = 0.0;
    v149 = 0.0;
    v153 = 0.0;
    goto LABEL_18;
  }

  sub_100012160(&v167, &v169);
  sub_10000C888(&v169, v170);
  if (sub_1007503A4())
  {
LABEL_16:
    sub_10000C620(&v169);
    goto LABEL_17;
  }

  sub_1000CD5F0(v6 + v18[18], &v165);
  if (!v166)
  {
    sub_1002C9F48(&v165);
    goto LABEL_16;
  }

  sub_100012160(&v165, &v167);
  sub_10000C888(&v167, v168);
  if (sub_1007503A4())
  {
    sub_10000C620(&v167);
    goto LABEL_16;
  }

  v146 = sub_10010FD98(0.0, 0.0, a5, a6, 0.0, v20);
  v145 = v118;
  v120 = v119;
  v143 = v121;
  v153 = COERCE_DOUBLE(swift_getObjectType());
  v122 = [a1 traitCollection];
  v123 = [v122 preferredContentSizeCategory];
  v124 = sub_100753954();

  v147 = v20;
  v144 = Width;
  v142 = v25;
  if (v124)
  {
    if (qword_1009219E8 != -1)
    {
      swift_once();
    }

    v125 = qword_100982810;
  }

  else
  {
    if (qword_1009219E0 != -1)
    {
      swift_once();
    }

    v125 = qword_1009827F8;
  }

  v126 = v154;
  v127 = sub_10000D0FC(*&v154, v125);
  v128 = v152;
  v129 = v151;
  (*(v152 + 16))(v151, v127, COERCE_CGFLOAT(*&v126));
  v130 = [a1 traitCollection];
  v131 = [v130 preferredContentSizeCategory];
  sub_100753954();

  type metadata accessor for SmallLockupView();
  v132 = v143;
  sub_1001CF184(v129, a1);
  v134 = ceil(v133);
  v192.origin.x = 0.0;
  v192.origin.y = 0.0;
  v192.size.width = a5;
  v192.size.height = a6;
  MinX = CGRectGetMinX(v192);
  v193.size.width = v120;
  v141 = v120;
  v135 = v146;
  v193.origin.x = v146;
  v136 = v145;
  v193.origin.y = v145;
  v193.size.height = v132;
  v137 = CGRectGetHeight(v193);
  v153 = v134;
  v138 = v137 - v134;
  v194.origin.x = 0.0;
  v194.origin.y = 0.0;
  v194.size.width = a5;
  v194.size.height = a6;
  v139 = CGRectGetWidth(v194);
  sub_10000C888(&v169, v170);
  v150 = v138;
  v149 = v139;
  sub_100750394();
  v195.origin.x = v135;
  v195.origin.y = v136;
  v140 = v141;
  v195.size.width = v141;
  v195.size.height = v132;
  CGRectGetMinX(v195);
  v196.origin.x = v135;
  v196.origin.y = v136;
  v196.size.width = v140;
  v196.size.height = v132;
  CGRectGetMinY(v196);
  v197.origin.x = v135;
  v197.origin.y = v136;
  v197.size.width = v140;
  v197.size.height = v132;
  CGRectGetWidth(v197);
  sub_10000C888(&v167, v168);
  v28 = MinX;
  a5 = v161;
  sub_100750394();
  (*(v128 + 8))(v129, COERCE_CGFLOAT(*&v154));
  sub_10000C620(&v167);
  sub_10000C620(&v169);
  v27 = 0;
  v20 = v147;
  Width = v144;
  v25 = v142;
LABEL_18:
  v29 = [a1 traitCollection];
  v30 = [v29 preferredContentSizeCategory];
  v31 = sub_100753954();

  v164 = a6;
  if (v31)
  {
    MinX = v28;
    v32 = sub_10010FD98(0.0, 0.0, a5, a6, 0.0, v20);
    v156 = v32;
    v158 = v33;
    v35 = v34;
    v37 = v36;
    v176.origin.x = 0.0;
    v176.origin.y = 0.0;
    v176.size.width = v25;
    v176.size.height = Height;
    MaxY = CGRectGetMaxY(v176);
    v38 = (v7 + v18[13]);
    sub_10000C888(v38, v38[3]);
    v157 = v35;
    v39 = v37;
    sub_100750404();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v159;
    sub_10000C888((v7 + *(v159 + 24)), *(v7 + *(v159 + 24) + 24));
    sub_100750584();
    v48 = v47;
    v177.origin.x = v32;
    v177.origin.y = v158;
    v177.size.width = v35;
    v177.size.height = v39;
    v49 = CGRectGetMinX(v177);
    v50 = MaxY + v48;
    sub_10000C888(v38, v38[3]);
    sub_100753B24();
    sub_100750394();
    v178.origin.x = v49;
    v178.origin.y = v50;
    v178.size.width = v41;
    v178.size.height = v43;
    v51 = CGRectGetMaxY(v178) - v45;
    v52 = (v7 + v18[14]);
    sub_10000C888(v52, v52[3]);
    v53 = v157;
    v54 = v39;
    sub_100750404();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_10000C888((v7 + *(v46 + 28)), *(v7 + *(v46 + 28) + 24));
    sub_100750584();
    v62 = v61;
    v179.origin.x = v156;
    v179.origin.y = v158;
    v179.size.width = v53;
    MaxY = v54;
    v179.size.height = v54;
    v63 = CGRectGetMinX(v179);
    sub_10000C888(v52, v52[3]);
    sub_100753B24();
    sub_100750394();
    v180.origin.x = v63;
    v180.origin.y = v51 + v62;
    v180.size.width = v56;
    v180.size.height = v58;
    v64 = CGRectGetMaxY(v180);
    if (*(v7 + v18[19]) == 1)
    {
      v65 = v64 - v60;
      sub_10000C888((v7 + *(v46 + 32)), *(v7 + *(v46 + 32) + 24));
      v66 = [a1 traitCollection];
      sub_100750574();
      v68 = v67;

      v69 = v65 + v68;
      v70 = (v7 + v18[15]);
      sub_10000C888(v70, v70[3]);
      v71 = [a1 traitCollection];
      v72 = v157;
      v73 = MaxY;
      sub_100751254();
      v75 = v74;
      v77 = v76;

      v181.origin.x = v156;
      v181.origin.y = v158;
      v181.size.width = v72;
      v181.size.height = v73;
      v78 = CGRectGetMinX(v181);
      sub_10000C888(v70, v70[3]);
      sub_100753B24();
      v79 = [a1 traitCollection];
      sub_100751244();

      v182.origin.x = v78;
      v182.origin.y = v69;
      v182.size.width = v75;
      v182.size.height = v77;
      CGRectGetMaxY(v182);
    }

    sub_1000CD5F0(v7 + v18[16], &v167);
    if (v168)
    {
      sub_100012160(&v167, &v169);
      sub_10000C888(&v169, v170);
      if ((sub_1007503A4() & 1) == 0 && (v27 & 1) == 0)
      {
        sub_10000C888(&v169, v170);
        v80 = v157;
        v81 = MaxY;
        sub_100750404();
        v183.origin.x = MinX;
        v183.origin.y = v150;
        v183.size.width = v149;
        v183.size.height = v153;
        CGRectGetMinY(v183);
        v82 = v156;
        v184.origin.x = v156;
        v83 = v158;
        v184.origin.y = v158;
        v184.size.width = v80;
        v184.size.height = v81;
        CGRectGetMinX(v184);
        v185.origin.x = v82;
        v185.origin.y = v83;
        v185.size.width = v80;
        v185.size.height = v81;
        CGRectGetWidth(v185);
        sub_10000C888(&v169, v170);
        sub_100750394();
      }

      sub_10000C620(&v169);
    }

    else
    {
      sub_1002C9F48(&v167);
    }
  }

  else
  {
    v84 = sub_10010FD98(0.0, 0.0, Width, Height, 0.0, v20);
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v91 = v159;
    sub_10000C888((v7 + *(v159 + 36)), *(v7 + *(v159 + 36) + 24));
    v92 = v156;
    sub_100536120();
    sub_100750564();
    v94 = v93;
    (*&MaxY)(COERCE_CGFLOAT(*&v92), COERCE_CGFLOAT(*&v158));
    v186.origin.x = v84;
    v186.origin.y = v86;
    v186.size.width = v88;
    v186.size.height = v90;
    v95 = CGRectGetHeight(v186) - v94;
    if (*(v7 + v18[19]) == 1)
    {
      v96 = (v7 + v18[15]);
      sub_10000C888(v96, v96[3]);
      v97 = [a1 traitCollection];
      sub_100751254();
      v158 = v98;
      v100 = v99;

      v156 = v95 - v100;
      v157 = v100;
      v187.origin.x = v84;
      v187.origin.y = v86;
      v187.size.width = v88;
      v187.size.height = v90;
      MaxY = CGRectGetMinX(v187);
      sub_10000C888(v96, v96[3]);
      sub_100753B24();
      v101 = v84;
      v102 = [a1 traitCollection];
      sub_100751244();

      sub_10000C888((v7 + *(v91 + 32)), *(v7 + *(v91 + 32) + 24));
      v103 = [a1 traitCollection];
      sub_100750574();
      v105 = v104;

      v188.origin.x = MaxY;
      v188.origin.y = v156;
      v188.size.width = v158;
      v188.size.height = v157;
      v95 = CGRectGetMinY(v188) - v105;
    }

    else
    {
      v101 = v84;
    }

    v106 = (v7 + v18[14]);
    sub_10000C888(v106, v106[3]);
    sub_100750404();
    v108 = v107;
    v110 = v109;
    v158 = v111;
    v157 = v112;
    v113 = v112 + v95 - v109;
    v189.origin.x = v101;
    v189.origin.y = v86;
    v153 = v86;
    v189.size.width = v88;
    v189.size.height = v90;
    v114 = CGRectGetMinX(v189);
    v154 = v101;
    v115 = v114;
    sub_10000C888(v106, v106[3]);
    sub_100753B24();
    sub_100750394();
    sub_10000C888((v7 + *(v91 + 28)), *(v7 + *(v91 + 28) + 24));
    sub_100750584();
    v190.origin.x = v115;
    v190.origin.y = v113;
    v190.size.width = v108;
    v190.size.height = v110;
    CGRectGetMinY(v190);
    v116 = (v7 + v18[13]);
    sub_10000C888(v116, v116[3]);
    sub_100750404();
    v191.origin.x = v154;
    v191.origin.y = v153;
    v191.size.width = v88;
    v191.size.height = v90;
    CGRectGetMinX(v191);
    sub_10000C888(v116, v116[3]);
    sub_100753B24();
    sub_100750394();
  }

  return sub_100750314();
}

double sub_1002C86A0(void *a1, void *a2)
{
  v108 = sub_100754724();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100750A94();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100750AB4();
  v115 = *(v116 - 1);
  __chkstk_darwin(v116);
  v114 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_100750FD4();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v103 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v104 = &v95 - v9;
  v102 = sub_1007479B4();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v95 - v12;
  __chkstk_darwin(v13);
  v98 = &v95 - v14;
  __chkstk_darwin(v15);
  v17 = &v95 - v16;
  v18 = sub_100747064();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v95 - v23;
  v25 = type metadata accessor for AppPromotionCardLayout(0);
  sub_1000CD5F0(a2 + v25[18], &v120);
  v109 = v121;
  sub_1002C9F48(&v120);
  v117 = a1;
  v26 = [a1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  v28 = sub_100753954();

  if (v28)
  {
    v29 = v25[13];
    v30 = v25[14];
    v31 = v25[16];
    v95 = v25[15];
    v103 = v31;
    LODWORD(v99) = *(a2 + v25[19]);
    if (qword_1009219E8 != -1)
    {
      swift_once();
    }

    v96 = (a2 + v29);
    v32 = (a2 + v30);
    v33 = sub_10000D0FC(v18, qword_100982810);
    v100 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_1007504C4();
    v35 = v34;
    v36 = [v117 traitCollection];
    (*(v19 + 16))(v24, v33, v18);
    v37 = sub_100746FD4();
    v39 = v105;
    v97 = v32;
    if ((v40 & 1) == 0 && ((v37 | v38) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_100753804())
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v41 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v41 = qword_10093FF58;
      }

      v51 = v102;
      v52 = sub_10000D0FC(v102, v41);
      v53 = v101;
      v54 = v98;
      (*(v101 + 16))(v98, v52, v51);
      (*(v53 + 32))(v17, v54, v51);
      sub_100747964();
      sub_100747994();
      sub_100746FE4();
      (*(v53 + 8))(v17, v51);
    }

    sub_100746F14();
    v56 = v55;

    (*(v19 + 8))(v24, v18);
    *&v118 = _swiftEmptyArrayStorage;
    sub_10000C518(&qword_100946760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    v121 = &type metadata for CGFloat;
    v122 = &protocol witness table for CGFloat;
    *&v120 = v35;
    v58 = v110;
    *(inited + 56) = v110;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000D134((inited + 32));
    sub_100750FE4();
    sub_10049FB8C(inited);
    v59 = v117;
    v60 = v108;
    if (v109)
    {
      v121 = &type metadata for CGFloat;
      v122 = &protocol witness table for CGFloat;
      *&v120 = ceil(v56 + 16.0 + 16.0);
      v61 = v104;
      sub_100750FE4();
      v62 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1002548C4(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1002548C4((v63 > 1), v64 + 1, 1, v62);
      }

      v121 = v58;
      v122 = &protocol witness table for VerticalSpaceMeasurable;
      v65 = sub_10000D134(&v120);
      v66 = v107;
      (*(v107 + 16))(v65, v61, v58);
      v62[2] = v64 + 1;
      sub_100012160(&v120, &v62[5 * v64 + 4]);
      (*(v66 + 8))(v61, v58);
      *&v118 = v62;
    }

    (*(v112 + 104))(v111, enum case for StackMeasurable.Axis.vertical(_:), v113);
    v67 = v114;
    sub_100750AA4();
    sub_100750A84();
    v69 = v68;
    (*(v115 + 8))(v67, v116);
    sub_10000C888(a2, a2[3]);
    sub_100536120();
    sub_100750564();
    v116 = *(v106 + 8);
    v116(v39, v60);
    sub_100753BA4();
    sub_10000C888(v96, v96[3]);
    sub_100750404();
    v71 = v70;
    v72 = v100;
    sub_10000C888((a2 + *(v100 + 6)), *(a2 + *(v100 + 6) + 24));
    sub_100750584();
    *&v120 = v71;
    sub_100750554();
    sub_10000C888(v97, v97[3]);
    sub_100750404();
    v74 = v73;
    sub_10000C888((a2 + *(v72 + 7)), *(a2 + *(v72 + 7) + 24));
    sub_100750584();
    *&v120 = v74;
    sub_100750554();
    if (v99)
    {
      sub_10000C888((a2 + v95), *(a2 + v95 + 24));
      v75 = v72;
      v76 = [v59 traitCollection];
      sub_100751254();

      sub_10000C888((a2 + *(v75 + 8)), *(a2 + *(v75 + 8) + 24));
      v77 = [v59 traitCollection];
      sub_100750574();

      sub_10000C888((a2 + *(v75 + 9)), *(a2 + *(v75 + 9) + 24));
      sub_100536120();
      sub_100750564();
      v116(v39, v108);
    }

    sub_1000CD5F0(&v103[a2], &v118);
    if (v119)
    {
      sub_100012160(&v118, &v120);
      sub_10000C888(&v120, v121);
      if ((sub_1007503A4() & 1) == 0)
      {
        sub_10000C888(&v120, v121);
        sub_100750404();
      }

      sub_10000C620(&v120);
    }

    else
    {
      sub_1002C9F48(&v118);
    }
  }

  else
  {
    if (qword_1009219E0 != -1)
    {
      swift_once();
    }

    v42 = sub_10000D0FC(v18, qword_1009827F8);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_1007504C4();
    v44 = v43;
    v45 = [v117 traitCollection];
    (*(v19 + 16))(v21, v42, v18);
    v46 = sub_100746FD4();
    v48 = v110;
    if ((v49 & 1) == 0 && ((v46 | v47) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_100753804())
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v50 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v50 = qword_10093FF58;
      }

      v78 = v102;
      v79 = sub_10000D0FC(v102, v50);
      v80 = v101;
      v81 = v99;
      (*(v101 + 16))(v99, v79, v78);
      v82 = v100;
      (*(v80 + 32))(v100, v81, v78);
      sub_100747964();
      sub_100747994();
      sub_100746FE4();
      (*(v80 + 8))(v82, v78);
    }

    sub_100746F14();
    v84 = v83;

    (*(v19 + 8))(v21, v18);
    *&v118 = _swiftEmptyArrayStorage;
    sub_10000C518(&qword_100946760);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_1007A5A00;
    v121 = &type metadata for CGFloat;
    v122 = &protocol witness table for CGFloat;
    *&v120 = v44;
    *(v85 + 56) = v48;
    *(v85 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000D134((v85 + 32));
    sub_100750FE4();
    sub_10049FB8C(v85);
    if (v109)
    {
      v121 = &type metadata for CGFloat;
      v122 = &protocol witness table for CGFloat;
      *&v120 = ceil(v84 + 4.0 + 4.0);
      v86 = v103;
      sub_100750FE4();
      v87 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_1002548C4(0, v87[2] + 1, 1, v87);
      }

      v89 = v87[2];
      v88 = v87[3];
      if (v89 >= v88 >> 1)
      {
        v87 = sub_1002548C4((v88 > 1), v89 + 1, 1, v87);
      }

      v121 = v48;
      v122 = &protocol witness table for VerticalSpaceMeasurable;
      v90 = sub_10000D134(&v120);
      v91 = v107;
      (*(v107 + 16))(v90, v86, v48);
      v87[2] = v89 + 1;
      sub_100012160(&v120, &v87[5 * v89 + 4]);
      (*(v91 + 8))(v86, v48);
      *&v118 = v87;
    }

    (*(v112 + 104))(v111, enum case for StackMeasurable.Axis.vertical(_:), v113);
    v92 = v114;
    sub_100750AA4();
    sub_100750A84();
    v69 = v93;
    (*(v115 + 8))(v92, v116);
  }

  return v69;
}

double sub_1002C9824(uint64_t a1, void *a2)
{
  v48 = sub_100750A94();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100750AB4();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100750FD4();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1007479B4();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = sub_100747064();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009219E0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v13, qword_1009827F8);
  type metadata accessor for AppPromotionCardLayout.Metrics(0);
  sub_1007504C4();
  v19 = v18;
  v50 = a2;
  v20 = [a2 traitCollection];
  (*(v14 + 16))(v16, v17, v13);
  v21 = sub_100746FD4();
  v23 = v7;
  if ((v24 & 1) == 0 && ((v21 | v22) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v25 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v25 = qword_10093FF58;
    }

    v26 = v42;
    v27 = sub_10000D0FC(v42, v25);
    v28 = v41;
    (*(v8 + 16))(v41, v27, v26);
    (*(v8 + 32))(v12, v28, v26);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v8 + 8))(v12, v26);
  }

  sub_100746F14();
  v30 = v29;

  (*(v14 + 8))(v16, v13);
  v54 = _swiftEmptyArrayStorage;
  sub_10000C518(&qword_100946760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v19;
  *(inited + 56) = v5;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((inited + 32));
  sub_100750FE4();
  sub_10049FB8C(inited);
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = ceil(v30 + 4.0 + 4.0);
  sub_100750FE4();
  v32 = v54;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1002548C4(0, v32[2] + 1, 1, v32);
  }

  v34 = v32[2];
  v33 = v32[3];
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1002548C4((v33 > 1), v34 + 1, 1, v32);
  }

  v52 = v5;
  v53 = &protocol witness table for VerticalSpaceMeasurable;
  v35 = sub_10000D134(&v51);
  v36 = v43;
  (*(v43 + 16))(v35, v23, v5);
  v32[2] = v34 + 1;
  sub_100012160(&v51, &v32[5 * v34 + 4]);
  (*(v36 + 8))(v23, v5);
  (*(v46 + 104))(v45, enum case for StackMeasurable.Axis.vertical(_:), v48);
  v37 = v44;
  sub_100750AA4();
  sub_100750A84();
  v39 = v38;
  (*(v47 + 8))(v37, v49);
  return v39;
}

uint64_t sub_1002C9F48(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C9FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002CA098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1002CA154()
{
  type metadata accessor for AppPromotionCardLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100110300(319, &unk_10092C900);
    if (v1 <= 0x3F)
    {
      sub_1002CA274();
      if (v2 <= 0x3F)
      {
        sub_100110300(319, &qword_10092D510);
        if (v3 <= 0x3F)
        {
          sub_100110300(319, &qword_100930E10);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002CA274()
{
  if (!qword_10092C920)
  {
    sub_10000C724(&qword_100926520);
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10092C920);
    }
  }
}

uint64_t sub_1002CA2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1007504F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002CA3AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1007504F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1002CA450()
{
  result = sub_100110300(319, &qword_1009289A0);
  if (v1 <= 0x3F)
  {
    result = sub_1007504F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for AppPromotionSubtitleView()
{
  result = qword_100930F48;
  if (!qword_100930F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002CA59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v40 = a5;
  v36 = a4;
  v37 = a3;
  v35 = a1;
  v8 = sub_100751154();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100750BD4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100750E94();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  if (a2)
  {
    v34 = a6;
    sub_100750E84();
    if (qword_1009207F0 != -1)
    {
      swift_once();
    }

    v22 = sub_100750534();
    sub_10000D0FC(v22, qword_100930F18);
    sub_100750E54();
    v33 = *(v16 + 8);
    v33(v18, v15);
    (*(v16 + 16))(v18, v21, v15);
    sub_100750BB4();

    sub_100750BF4();
    sub_100753804();
    v36 &= 1u;
    v23 = sub_100744D34();
    swift_allocObject();
    v24 = sub_100744D24();
    v45 = v23;
    v46 = sub_1002CBC64(&qword_100923048, &type metadata accessor for EmptyPlaceable);
    v44[0] = v24;
    sub_100751134();
    v45 = v11;
    v46 = &protocol witness table for LabelPlaceholder;
    v25 = sub_10000D134(v44);
    (*(v12 + 16))(v25, v14, v11);
    if (v37)
    {
      v26 = v39;
      *(&v42 + 1) = v39;
      v43 = &protocol witness table for Resize;
      v27 = sub_10000D134(&v41);
      v28 = v38;
      (*(v38 + 16))(v27, v10, v26);
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v28 = v38;
      v26 = v39;
    }

    sub_1002CB410(v44, &v41, v36, v40, v34);
    (*(v28 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    v33(v21, v15);
    sub_10000C8CC(&v41, &unk_100924A60);
    return sub_10000C8CC(v44, &unk_100924A60);
  }

  else
  {
    v29 = sub_100744D34();
    swift_allocObject();
    v30 = sub_100744D24();
    a6[3] = v29;
    result = sub_1002CBC64(&qword_100923048, &type metadata accessor for EmptyPlaceable);
    a6[4] = result;
    *a6 = v30;
  }

  return result;
}

uint64_t sub_1002CAA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10074F284();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + qword_100930F38);
  if (v10)
  {
    v11 = sub_100753064();
  }

  else
  {
    v11 = 0;
  }

  [v9 setText:v11];

  v12 = *(v3 + qword_100930F40);
  [v12 setHidden:a3 == 0];
  sub_1007442C4();
  result = sub_100752754();
  if (a3)
  {
    if (!v16[1])
    {
      return result;
    }

    sub_10074F294();
    sub_10074F254();
    v14 = *(v6 + 8);
    v14(v8, v5);
    sub_10074F374();
    sub_10074F294();
    v15 = sub_10074F254();
    v14(v8, v5);
    [v12 setContentMode:v15];
    sub_1007433C4();
    sub_1002CBC64(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
  }
}

uint64_t sub_1002CACDC()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100930F18);
  v1 = sub_10000D0FC(v0, qword_100930F18);
  if (qword_100921598 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100981E00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1002CADA4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = qword_100930F38;
  if (qword_1009207F0 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v14 = sub_10000D0FC(v13, qword_100930F18);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v16 = objc_allocWithZone(sub_100745C84());
  *&v2[v12] = sub_100745C74();
  v17 = qword_100930F40;
  sub_1007433C4();
  *&v2[v17] = sub_1007431D4();
  v2[qword_100930F30] = a1 & 1;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = qword_100930F38;
  v20 = *&v18[qword_100930F38];
  v21 = objc_opt_self();
  v22 = v18;
  v23 = v20;
  v24 = [v21 labelColor];
  [v23 setTextColor:v24];

  v25 = qword_100930F40;
  [*&v22[qword_100930F40] setHidden:1];
  [v22 addSubview:*&v18[v19]];
  [v22 addSubview:*&v22[v25]];

  return v22;
}

uint64_t sub_1002CB0F8(uint64_t a1)
{
  v3 = [*(v1 + qword_100930F38) layer];
  sub_100016B4C(a1, v12, &unk_100923520);
  v4 = v13;
  if (v13)
  {
    v5 = sub_10000C888(v12, v13);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_100754734();
    (*(v6 + 8))(v9, v4);
    sub_10000C620(v12);
  }

  else
  {
    v10 = 0;
  }

  [v3 setCompositingFilter:v10];

  swift_unknownObjectRelease();
  return sub_10000C8CC(a1, &unk_100923520);
}

uint64_t sub_1002CB2A8@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = *&v1[qword_100930F38];
  v17[3] = sub_100745C84();
  v17[4] = &protocol witness table for UILabel;
  v17[0] = v3;
  v4 = *&v1[qword_100930F40];
  v5 = v3;
  if ([v4 isHidden])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v7 = sub_1007433C4();
    v8 = sub_1002CBC64(&qword_10092E370, &type metadata accessor for ArtworkView);
    v6 = v4;
  }

  v12 = v6;
  v15 = v7;
  v16 = v8;
  v9 = v1[qword_100930F30];
  v10 = [v1 traitCollection];
  sub_1002CB410(v17, &v12, v9, v10, a1);

  sub_10000C8CC(&v12, &unk_100924A60);
  return sub_10000C8CC(v17, &unk_100924A60);
}

uint64_t sub_1002CB410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = sub_100750A34();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016B4C(a1, &v39, &unk_100924A60);
  if (v40)
  {
    sub_100012160(&v39, v41);
    v16 = sub_100753804();
    v17 = 16.0;
    if ((a3 & 1) == 0)
    {
      v17 = 14.0;
    }

    if (v16)
    {
      v18 = 25.0;
    }

    else
    {
      v18 = v17;
    }

    sub_100038D38();
    if (qword_1009207F0 != -1)
    {
      swift_once();
    }

    v19 = sub_100750534();
    sub_10000D0FC(v19, qword_100930F18);
    v20 = sub_100753C14();
    [v20 lineHeight];
    v22 = v21;
    sub_100750A04();
    sub_100016B4C(a2, &v36, &unk_100924A60);
    if (v37)
    {
      if ((v22 - v18) * 0.5 < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = (v22 - v18) * 0.5;
      }

      sub_100012160(&v36, &v39);
      sub_10000C824(&v39, &v36);
      v35[3] = sub_100751154();
      v35[4] = &protocol witness table for Resize;
      sub_10000D134(v35);
      sub_100751134();
      v34[8] = &type metadata for CGFloat;
      v34[9] = &protocol witness table for CGFloat;
      *&v34[5] = v23;
      v24 = sub_1007507D4();
      v34[3] = v24;
      v34[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v34);
      sub_1007507C4();
      v33[3] = v24;
      v33[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v33);
      sub_1007507C4();
      v32[3] = v24;
      v32[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v32);
      sub_1007507C4();
      v37 = sub_1007511A4();
      v38 = &protocol witness table for Margins;
      sub_10000D134(&v36);
      sub_1007511B4();
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = v6;
      v26 = a4;
      sub_1007509F4();

      sub_10000C620(&v39);
      sub_10000C620(&v36);
    }

    else
    {
      sub_10000C8CC(&v36, &unk_100924A60);
    }

    sub_1007509F4();
    a5[3] = v12;
    a5[4] = &protocol witness table for HorizontalStack;
    v30 = sub_10000D134(a5);
    (*(v13 + 32))(v30, v15, v12);

    return sub_10000C620(v41);
  }

  else
  {
    sub_10000C8CC(&v39, &unk_100924A60);
    v27 = sub_100744D34();
    swift_allocObject();
    v28 = sub_100744D24();
    a5[3] = v27;
    result = sub_1002CBC64(&qword_100923048, &type metadata accessor for EmptyPlaceable);
    a5[4] = result;
    *a5 = v28;
  }

  return result;
}

void sub_1002CB868()
{
  v1 = *(v0 + qword_100930F40);
}

void sub_1002CB8A8(uint64_t a1)
{
  v2 = *(a1 + qword_100930F40);
}

unint64_t sub_1002CB910()
{
  result = qword_100930F98;
  if (!qword_100930F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930F98);
  }

  return result;
}

uint64_t sub_1002CB964()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1002CBA00()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = qword_100930F38;
  if (qword_1009207F0 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_100930F18);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_100745C84());
  *(v1 + v9) = sub_100745C74();
  v14 = qword_100930F40;
  sub_1007433C4();
  *(v1 + v14) = sub_1007431D4();
  sub_100754644();
  __break(1u);
}

uint64_t sub_1002CBC64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002CBCC0()
{
  result = qword_100930FA0;
  if (!qword_100930FA0)
  {
    sub_100748974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930FA0);
  }

  return result;
}

uint64_t sub_1002CBD18()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100930CA0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.unsupported(_:), v0);
  return sub_100752D84();
}

void sub_1002CBF20(void *a1)
{
  v2 = v1;
  sub_100524128(0);
  v4 = [a1 viewForKey:UITransitionContextFromViewKey];
  v5 = v4;
  if (v4)
  {
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v131 = v12;
  }

  else
  {
    v13 = [a1 containerView];
    [v13 bounds];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v131 = v17;
  }

  v18 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 traitCollection];

    v21 = [v20 horizontalSizeClass];
    if (v21 == 1)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 0.25;
    }
  }

  else
  {
    v22 = 0.25;
  }

  v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCardView];
  v129 = v9;
  if (!v23 || (v24 = &v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toBounds], (v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toBounds + 32] & 1) != 0) || (v25 = &v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCenter], (v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCenter + 16] & 1) != 0))
  {
    v137.origin.x = v7;
    v137.origin.y = v9;
    v137.size.width = v11;
    v137.size.height = v131;
    v27 = v22 * CGRectGetWidth(v137);
    v138.origin.x = v7;
    v138.origin.y = v9;
    v138.size.width = v11;
    v138.size.height = v131;
    v28 = CGRectGetHeight(v138) * 0.25;
    v139.origin.x = v7;
    v139.origin.y = v9;
    v139.size.width = v11;
    v139.size.height = v131;
    v140 = CGRectInset(v139, v27, v28);
    width = v140.size.width;
    height = v140.size.height;
    v140.origin.x = v7;
    v140.origin.y = v9;
    v140.size.width = v11;
    v140.size.height = v131;
    MidX = CGRectGetMidX(v140);
    v141.origin.x = v7;
    v141.origin.y = v9;
    v141.size.width = v11;
    v141.size.height = v131;
    MidY = CGRectGetMidY(v141);
    v125 = 0.0;
    v126 = 0.0;
  }

  else
  {
    MidX = *v25;
    MidY = v25[1];
    width = v24[2];
    height = v24[3];
    v125 = *v24;
    v126 = v24[1];
  }

  v29 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCollectionViewController];
  v30 = 0.0;
  if (v29)
  {
    v31 = [*&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCollectionViewController] view];
    v32 = MidX;
    v33 = MidY;
    v34 = 0.0;
    if (v31)
    {
      v35 = v31;
      [v31 bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = MidX;
      v44 = v43;
      v45 = [a1 containerView];
      v46 = v44;
      MidX = v42;
      [v35 convertRect:v45 toCoordinateSpace:{v37, v39, v41, v46}];
      v30 = v47;
      v34 = v48;

      v32 = v42 + v30;
      v33 = MidY + v34;
    }
  }

  else
  {
    v32 = MidX;
    v33 = MidY;
    v34 = 0.0;
  }

  v123 = v33;
  v124 = v32;
  v49 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_detailPageViewController];
  if (v49)
  {
    v50 = [v49 view];
    if (!v50)
    {
      __break(1u);
      goto LABEL_71;
    }

    v51 = v50;
    [v50 transform];
    v121 = v134;
    v122 = aBlock;
    v120 = v135;

    aBlock = v122;
    v134 = v121;
    v135 = v120;
    [v23 setTransform:&aBlock];
  }

  v142.origin.x = v7;
  v142.origin.y = v129;
  v142.size.width = v11;
  v142.size.height = v131;
  v52 = CGRectGetMidX(v142);
  v143.origin.x = v7;
  v143.origin.y = v129;
  v53 = v11;
  v143.size.width = v11;
  v143.size.height = v131;
  v54 = CGRectGetMidY(v143);
  if (!v23)
  {
    goto LABEL_27;
  }

  v55 = v54;
  if (!v29)
  {
    v60 = v23;
    v59 = [a1 containerView];
    [v59 insertSubview:v60 below:v5];
    goto LABEL_26;
  }

  v56 = v29;
  v57 = v23;
  v58 = [v56 view];
  if (!v58)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v59 = v58;
  [v58 addSubview:v57];

LABEL_26:
  [v23 setHidden:0];
  [v23 setBounds:{0.0, 0.0, v53, v131}];
  [v23 setCenter:{v52 - v30, v55 - v34}];
  [v23 setNeedsLayout];
  [v23 layoutIfNeeded];
  [v23 setAlpha:0.0];

LABEL_27:
  v130 = [a1 viewForKey:{UITransitionContextToViewKey, v54, v120, v121, v122}];
  if (v130)
  {
    v61 = MidX;
    v62 = v130;
    v63 = [a1 containerView];
    [v63 bounds];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    [v62 setFrame:{v65, v67, v69, v71}];
    if (v23)
    {
      v72 = v23;
      v73 = [a1 containerView];
      [v73 insertSubview:v62 below:v72];
    }

    else
    {
      v73 = [a1 containerView];
      [v73 insertSubview:v62 below:v5];
    }

    MidX = v61;
  }

  v74 = _swiftEmptyArrayStorage;
  v136 = _swiftEmptyArrayStorage;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v75 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
    v76 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v75 timingParameters:0.0];

    v77 = swift_allocObject();
    *(v77 + 16) = v2;
    *(v77 + 24) = v23;
    *(v77 + 32) = v125;
    *(v77 + 40) = v126;
    *(v77 + 48) = width;
    *(v77 + 56) = height;
    *(v77 + 64) = MidX;
    *(v77 + 72) = MidY;
    *(v77 + 80) = v5;
    *(v77 + 88) = v124;
    *(v77 + 96) = v123;
    *&v135 = sub_1002CD234;
    *(&v135 + 1) = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_1000CF7B0;
    *(&v134 + 1) = &unk_100870040;
    v78 = _Block_copy(&aBlock);
    v79 = v23;
    v80 = v2;
    v81 = v5;

    [v76 addAnimations:v78];
    _Block_release(v78);
    v82 = swift_allocObject();
    *(v82 + 16) = a1;
    *(v82 + 24) = v80;
    *&v135 = sub_1002CD2A8;
    *(&v135 + 1) = v82;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_1001A5B50;
    *(&v134 + 1) = &unk_100870090;
    v83 = _Block_copy(&aBlock);
    v84 = v80;
    swift_unknownObjectRetain();

    [v76 addCompletion:v83];
    _Block_release(v83);
    v85 = v76;
    sub_100753284();
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v74 = v136;
  }

  if (!v5)
  {
LABEL_39:
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v86 = v5;
  if (UIAccessibilityIsReduceMotionEnabled())
  {

    goto LABEL_39;
  }

  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  v88 = objc_allocWithZone(UIViewPropertyAnimator);
  *&v135 = sub_1002CD3E0;
  *(&v135 + 1) = v87;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_1000CF7B0;
  *(&v134 + 1) = &unk_1008701D0;
  v89 = _Block_copy(&aBlock);
  v90 = v86;

  v91 = [v88 initWithDuration:v89 controlPoint1:0.216 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
  _Block_release(v89);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *&v135 = sub_1002CD3F4;
  *(&v135 + 1) = v92;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_1001A5B50;
  *(&v134 + 1) = &unk_100870220;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  [v91 addCompletion:v93];
  _Block_release(v93);

  v95 = v91;
  sub_100753284();
  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();

  v74 = v136;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
LABEL_44:
    [v23 setBounds:{v125, v126, width, height}];
    [v23 setCenter:{MidX, MidY}];
    v96 = swift_allocObject();
    v96[2] = v2;
    v96[3] = v23;
    v96[4] = v5;
    v97 = objc_allocWithZone(UIViewPropertyAnimator);
    *&v135 = sub_1002CD380;
    *(&v135 + 1) = v96;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_1000CF7B0;
    *(&v134 + 1) = &unk_100870130;
    v98 = _Block_copy(&aBlock);
    v99 = v23;
    v100 = v2;
    v101 = v5;

    v102 = [v97 initWithDuration:0 curve:v98 animations:0.3];
    _Block_release(v98);
    v103 = swift_allocObject();
    v103[2] = v5;
    v103[3] = a1;
    v103[4] = v100;
    *&v135 = sub_1002CD3D4;
    *(&v135 + 1) = v103;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_1001A5B50;
    *(&v134 + 1) = &unk_100870180;
    v104 = _Block_copy(&aBlock);
    v105 = v100;
    v106 = v101;
    swift_unknownObjectRetain();

    [v102 addCompletion:v104];
    _Block_release(v104);
    v107 = v102;
    sub_100753284();
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v74 = v136;
  }

LABEL_47:
  if (v74 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v109 = 0;
    while (1)
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v110 = sub_100754574();
      }

      else
      {
        if (v109 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v110 = *(v74 + 8 * v109 + 32);
      }

      v111 = v110;
      v112 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      [v110 startAnimation];

      ++v109;
      if (v112 == i)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

LABEL_60:
  if (!v23)
  {
    goto LABEL_68;
  }

  v113 = v23;
  if (UIAccessibilityIsReduceMotionEnabled())
  {

LABEL_69:

    return;
  }

  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  v115 = objc_allocWithZone(UIViewPropertyAnimator);
  *&v135 = sub_1002CD324;
  *(&v135 + 1) = v114;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_1000CF7B0;
  *(&v134 + 1) = &unk_1008700E0;
  v116 = _Block_copy(&aBlock);
  v117 = v113;

  v118 = [v115 initWithDuration:v116 controlPoint1:0.13 controlPoint2:0.17 animations:{0.0, 0.67, 1.0}];
  _Block_release(v116);

  if (!v118)
  {
LABEL_68:

    goto LABEL_69;
  }

  [v118 startAnimationAfterDelay:0.083];
  v119 = v118;
  sub_100753284();
  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
}

id sub_1002CCE24(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10, void *a11)
{
  sub_100524128(1);
  [a10 setBounds:{a1, a2, a3, a4}];
  [a10 setCenter:{a5, a6}];
  if (a10)
  {
    v22[0] = 0x3FF0000000000000;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = 0x3FF0000000000000;
    v22[4] = 0;
    v22[5] = 0;
    [a10 setTransform:v22];
  }

  [a11 setBounds:{a1, a2, a3, a4}];
  return [a11 setCenter:{a7, a8}];
}

id sub_1002CCF34(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 48);
    v11 = (v8 + 48);
    do
    {
      v12 = *v11;
      v11 += 24;
      if (v12 == 1)
      {
        v13 = *(v10 - 2);

        v13(1, 1);
      }

      v10 = v11;
      --v9;
    }

    while (v9);
  }

  if (a2)
  {
    [a2 setAlpha:1.0];
    v14[0] = 0x3FF0000000000000;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = 0x3FF0000000000000;
    v14[4] = 0;
    v14[5] = 0;
    result = [a2 setTransform:v14];
  }

  if (a3)
  {
    return [a3 setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1002CD050(uint64_t result, id a2, id a3)
{
  if (!result)
  {
    v8 = v3;
    if (a2)
    {
      v7 = a3;
      [a2 setHidden:1];
      a3 = v7;
    }

    [a3 completeTransition:{1, v4, v8, v5, v6}];
    return sub_100524128(2);
  }

  return result;
}

void sub_1002CD0E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_detailPageViewController);
}

id sub_1002CD138()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002CD1EC()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1002CD250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002CD268()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002CD2A8(uint64_t result)
{
  if (!result)
  {
    [*(v1 + 16) completeTransition:1];
    return sub_100524128(2);
  }

  return result;
}

uint64_t sub_1002CD2EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002CD338()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002CD38C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1002CD3F4(id result)
{
  if (!result)
  {
    return [*(v1 + 16) setHidden:1];
  }

  return result;
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityLayout(in:)()
{
  if (sub_100753804())
  {
    return sub_1007537D4() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1007504F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = sub_1007504F4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.contentHorizontalMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 20);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.formattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 24);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleFormattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 28);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 32);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 36);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 40));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.muteButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 44);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 48);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleKindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 52);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 56);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTrailingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 60);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleOverlayBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 64);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 68));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 72);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonLeadingContentInset.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 76);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonBaseline.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 80);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 84);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleDetailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 88);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleContentContainerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 92);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.requirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 96);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleRequirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 100);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.notifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 104);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleNotifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 108);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 112);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 116);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 120);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 124);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.lockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 128);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleLockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 132);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.init(artworkAspectRatio:contentHorizontalMargin:formattedDateTopMargin:accessibleFormattedDateTopMargin:closeButtonTopMargin:closeButtonLeadingMargin:closeButtonSize:muteButtonSpace:kindTopSpace:accessibleKindTopSpace:titleTopSpace:titleTrailingMargin:accessibleOverlayBottomSpace:shareButtonSize:accessibleShareButtonTopSpace:shareButtonLeadingContentInset:shareButtonBaseline:detailTopSpace:accessibleDetailTopSpace:accessibleContentContainerTopSpace:requirementsTopSpace:accessibleRequirementsTopSpace:notifyMeButtonTopSpace:accessibleNotifyMeButtonTopSpace:separatorTopSpace:separatorBottomSpace:accessibleSeparatorTopSpace:accessibleSeparatorBottomSpace:lockupBottomSpace:accessibleLockupBottomSpace:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21, __int128 *a22, __int128 *a23, __int128 *a24, __int128 *a25, __int128 *a26, __int128 *a27, __int128 *a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32, __int128 *a33)
{
  v44 = sub_1007504F4();
  (*(*(v44 - 8) + 32))(a9, a1, v44);
  v45 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100012160(a2, a9 + v45[5]);
  sub_100012160(a3, a9 + v45[6]);
  sub_100012160(a4, a9 + v45[7]);
  sub_100012160(a5, a9 + v45[8]);
  sub_100012160(a6, a9 + v45[9]);
  v46 = (a9 + v45[10]);
  *v46 = a10;
  v46[1] = a11;
  sub_100012160(a7, a9 + v45[11]);
  sub_100012160(a8, a9 + v45[12]);
  sub_100012160(a14, a9 + v45[13]);
  sub_100012160(a15, a9 + v45[14]);
  sub_100012160(a16, a9 + v45[15]);
  sub_100012160(a17, a9 + v45[16]);
  v47 = (a9 + v45[17]);
  *v47 = a12;
  v47[1] = a13;
  sub_100012160(a18, a9 + v45[18]);
  sub_100012160(a19, a9 + v45[19]);
  sub_100012160(a20, a9 + v45[20]);
  sub_100012160(a21, a9 + v45[21]);
  sub_100012160(a22, a9 + v45[22]);
  sub_100012160(a23, a9 + v45[23]);
  sub_100012160(a24, a9 + v45[24]);
  sub_100012160(a25, a9 + v45[25]);
  sub_100012160(a26, a9 + v45[26]);
  sub_100012160(a27, a9 + v45[27]);
  sub_100012160(a28, a9 + v45[28]);
  sub_100012160(a29, a9 + v45[29]);
  sub_100012160(a30, a9 + v45[30]);
  sub_100012160(a31, a9 + v45[31]);
  sub_100012160(a32, a9 + v45[32]);
  v48 = a9 + v45[33];

  return sub_100012160(a33, v48);
}

uint64_t sub_1002CEED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEventDetailPageLayout.init(metrics:shadowView:cardContentView:borderView:contentContainerView:mediaContainerView:artworkView:videoView:gradientBlurView:mediaReplicationView:overlayContentContainerView:contentBackgroundBlurView:formattedDateView:closeButtonView:kindLabel:titleLabel:shareButtonView:detailLabel:requirementsLabel:notifyMeButton:separatorView:lockupView:isCollapsing:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, __int128 *a14, uint64_t a15, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23, char a24)
{
  sub_1002CF880(a1, a9);
  v29 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_100012160(a2, a9 + v29[5]);
  sub_100012160(a3, a9 + v29[6]);
  sub_100012160(a4, a9 + v29[7]);
  sub_100012160(a5, a9 + v29[8]);
  sub_100012160(a6, a9 + v29[9]);
  sub_100012160(a7, a9 + v29[10]);
  v30 = a9 + v29[11];
  v31 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a8 + 32);
  v32 = a9 + v29[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a10 + 32);
  v34 = a9 + v29[13];
  v35 = *(a11 + 16);
  *v34 = *a11;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a11 + 32);
  sub_100012160(a12, a9 + v29[14]);
  v36 = a9 + v29[15];
  v37 = *(a13 + 16);
  *v36 = *a13;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a13 + 32);
  sub_100012160(a14, a9 + v29[16]);
  v38 = a9 + v29[17];
  v39 = *(a15 + 16);
  *v38 = *a15;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a15 + 32);
  sub_100012160(a16, a9 + v29[18]);
  sub_100012160(a17, a9 + v29[19]);
  v40 = a9 + v29[20];
  v41 = *(a18 + 16);
  *v40 = *a18;
  *(v40 + 16) = v41;
  *(v40 + 32) = *(a18 + 32);
  sub_100012160(a19, a9 + v29[21]);
  v42 = a9 + v29[22];
  v43 = *(a20 + 16);
  *v42 = *a20;
  *(v42 + 16) = v43;
  *(v42 + 32) = *(a20 + 32);
  v44 = a9 + v29[23];
  v45 = *(a21 + 16);
  *v44 = *a21;
  *(v44 + 16) = v45;
  *(v44 + 32) = *(a21 + 32);
  sub_100012160(a22, a9 + v29[24]);
  result = sub_100012160(a23, a9 + v29[25]);
  *(a9 + v29[26]) = a24;
  return result;
}

uint64_t sub_1002CF880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityTitleLayout(in:)(void *a1)
{
  if ((sub_1007537D4() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_100753954();

  return v3 & 1;
}

uint64_t AppEventDetailPageLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 traitCollection];
  v11 = sub_1007537E4();

  if (v11)
  {
    sub_1002CFA78(a1, a2, a3, a4, a5);
    goto LABEL_8;
  }

  v12 = [a1 traitCollection];
  if (sub_100753804())
  {
    v13 = sub_1007537D4();

    if (v13)
    {
      sub_1002D1470(a1, a2, a3, a4, a5);
      goto LABEL_8;
    }
  }

  else
  {
  }

  sub_1002D2B04(a1, v14, v15, a4, a5);
LABEL_8:

  return sub_100750314();
}

uint64_t sub_1002CFA78(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_100754724();
  v13 = *(v12 - 1);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  LODWORD(v177) = sub_100753804();

  v18 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000C888((*&v6 + v18[5]), *(*&v6 + v18[5] + 24));
  sub_100750394();
  sub_10000C888((*&v6 + v18[6]), *(*&v6 + v18[6] + 24));
  sub_100750394();
  sub_10000C888((*&v6 + v18[7]), *(*&v6 + v18[7] + 24));
  sub_100750394();
  sub_10000C888((*&v6 + v18[8]), *(*&v6 + v18[8] + 24));
  sub_100750394();
  v190.origin.x = a2;
  v190.origin.y = a3;
  v190.size.width = a4;
  v190.size.height = a5;
  CGRectGetHeight(v190);
  sub_1007504B4();
  v20 = floor(v19) + 4.0;
  v191.origin.x = a2;
  v191.origin.y = a3;
  v191.size.width = a4;
  v191.size.height = a5;
  v21 = CGRectGetHeight(v191) + 4.0;
  sub_10000C888((*&v6 + v18[9]), *(*&v6 + v18[9] + 24));
  v181 = a1;
  sub_100753B24();
  sub_100750394();
  sub_10000C888((*&v6 + v18[10]), *(*&v6 + v18[10] + 24));
  sub_100750394();
  sub_100016B4C(*&v6 + v18[11], v188, &unk_100928A00);
  if (v189)
  {
    sub_10000C888(v188, v189);
    sub_100750394();
    sub_10000C620(v188);
  }

  else
  {
    sub_10000C8CC(v188, &unk_100928A00);
  }

  sub_100016B4C(*&v6 + v18[13], v188, &unk_100928A00);
  v179 = a2;
  if (v189)
  {
    sub_10000C888(v188, v189);
    v192.origin.x = a2;
    v192.origin.y = a3;
    v192.size.width = a4;
    v192.size.height = a5;
    CGRectGetWidth(v192);
    v193.origin.x = v179;
    v193.origin.y = a3;
    v193.size.width = a4;
    v193.size.height = a5;
    CGRectGetHeight(v193);
    a2 = v179;
    sub_100750394();
    sub_10000C620(v188);
  }

  else
  {
    sub_10000C8CC(v188, &unk_100928A00);
  }

  v194.origin.x = 0.0;
  v194.origin.y = 0.0;
  v194.size.width = v20;
  v194.size.height = v21;
  v22 = CGRectGetMaxX(v194) + -4.0;
  v195.origin.x = a2;
  v195.origin.y = a3;
  v195.size.width = a4;
  v195.size.height = a5;
  Width = CGRectGetWidth(v195);
  v196.origin.x = 0.0;
  v196.origin.y = 0.0;
  v196.size.width = v20;
  v196.size.height = v21;
  v24 = Width - CGRectGetWidth(v196) + 4.0;
  v197.origin.x = a2;
  v197.origin.y = a3;
  v197.size.width = a4;
  v197.size.height = a5;
  v25 = CGRectGetHeight(v197) + 4.0;
  sub_10000C888((*&v6 + v18[14]), *(*&v6 + v18[14] + 24));
  sub_100753B24();
  sub_100750394();
  v26 = v18[15];
  v176 = v6;
  sub_100016B4C(*&v6 + v26, v188, &unk_100928A00);
  v180 = v12;
  v174 = a5;
  v175 = a3;
  if (v189)
  {
    sub_10000C888(v188, v189);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v188);
  }

  else
  {
    sub_10000C8CC(v188, &unk_100928A00);
  }

  v27 = a4;
  *&v28 = COERCE_DOUBLE(type metadata accessor for AppEventDetailPageLayout.Metrics(0));
  v29 = v176;
  sub_10000C888((*&v176 + v28[5]), *(*&v176 + v28[5] + 24));
  sub_100536120();
  sub_100750564();
  v31 = v30;
  v32 = *(v13 + 8);
  *&v183 = v13 + 8;
  v33 = v180;
  v32(v16, v180);
  v198.origin.y = 0.0;
  v198.origin.x = v22;
  v198.size.width = v24;
  v198.size.height = v25;
  v34 = CGRectGetWidth(v198) - (v31 + v31);
  v199.origin.y = 0.0;
  v199.origin.x = v22;
  v199.size.width = v24;
  v199.size.height = v25;
  Height = CGRectGetHeight(v199);
  v36 = v28[9];
  v37 = (*&v29 + v28[10]);
  v38 = *v37;
  v166 = *(v37 + 1);
  v167 = v38;
  sub_10000C888((*&v29 + v36), *(*&v29 + v36 + 24));
  sub_100536120();
  sub_100750564();
  v32(v16, v33);
  v200.origin.y = 0.0;
  v200.origin.x = v31;
  v200.size.width = v34;
  v200.size.height = Height;
  CGRectGetHeight(v200);
  v39 = (*&v29 + v18[16]);
  v185 = v18;
  sub_10000C888(v39, v39[3]);
  sub_100750404();
  v41 = v40;
  v43 = v42;
  sub_10000C888((*&v29 + v28[6]), *(*&v29 + v28[6] + 24));
  sub_100536120();
  sub_100750564();
  v45 = v44;
  v32(v16, v33);
  v201.origin.y = 0.0;
  v201.origin.x = v31;
  v201.size.width = v34;
  v201.size.height = Height;
  MinX = CGRectGetMinX(v201);
  v202.origin.y = 0.0;
  v202.origin.x = v31;
  v202.size.width = v34;
  v202.size.height = Height;
  v47 = v45 + CGRectGetMinY(v202);
  sub_10000C888(v39, v39[3]);
  v168 = MinX;
  v172 = v41;
  v171 = v43;
  sub_100753B24();
  v48 = v33;
  sub_100750394();
  v178 = v28;
  sub_10000C888((*&v29 + v28[8]), *(*&v29 + v28[8] + 24));
  sub_100536120();
  sub_100750564();
  v173 = v16;
  v184 = *&v32;
  v32(v16, v33);
  v203.origin.x = v179;
  v203.origin.y = v175;
  v203.size.width = v27;
  v203.size.height = v174;
  CGRectGetMaxX(v203);
  v204.origin.y = 0.0;
  v204.origin.x = v31;
  v169 = v34;
  v204.size.width = v34;
  v182 = Height;
  v204.size.height = Height;
  CGRectGetMinY(v204);
  sub_100016B4C(*&v29 + v185[17], v188, &unk_100928A00);
  v49 = v31;
  if (v189)
  {
    sub_10000C888(v188, v189);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v188);
  }

  else
  {
    sub_10000C8CC(v188, &unk_100928A00);
  }

  v205.origin.x = v168;
  v205.origin.y = v47;
  v205.size.width = v172;
  v205.size.height = v171;
  MaxY = CGRectGetMaxY(v205);
  v51 = v176;
  v52 = (*&v176 + v178[17]);
  v53 = v52[1];
  v171 = *v52;
  sub_10000C888((*&v176 + v178[20]), *(*&v176 + v178[20] + 24));
  v54 = v173;
  sub_100536120();
  sub_100750564();
  v168 = v55;
  v56 = v184;
  (*&v184)(v54, v48);
  v57 = v185;
  *&v172 = v185[20];
  sub_100016B4C(*&v51 + *&v172, &v186, &unk_100928A00);
  v58 = v169;
  v170 = v27;
  v167 = v53;
  if (v187)
  {
    sub_100012160(&v186, v188);
    v59 = v49;
    if (LOBYTE(v177))
    {
      v60 = v51;
      v61 = v178;
      sub_10000C888((*&v60 + v178[18]), *(*&v60 + v178[18] + 24));
      sub_100536120();
      sub_100750564();
      v63 = v62;
      (*&v56)(v54, v48);
      sub_10000C888((*&v176 + v61[19]), *(*&v176 + v61[19] + 24));
      sub_100536120();
      sub_100750564();
      v65 = v64;
      (*&v56)(v54, v48);
      v206.origin.y = 0.0;
      v206.origin.x = v49;
      v206.size.width = v58;
      v66 = v182;
      v206.size.height = v182;
      v67 = CGRectGetMinX(v206) - v65;
      v68 = MaxY + v63;
      sub_10000C888(v188, v189);
      v51 = v176;
      v69 = v171;
      sub_100753B24();
      v57 = v185;
      sub_100750394();
      v207.origin.x = v67;
      v207.origin.y = v68;
      v207.size.width = v69;
      v207.size.height = v53;
      MaxY = CGRectGetMaxY(v207) - v168;
      sub_10000C620(v188);
      goto LABEL_19;
    }

    sub_10000C620(v188);
  }

  else
  {
    sub_10000C8CC(&v186, &unk_100928A00);
    v59 = v49;
  }

  v66 = v182;
LABEL_19:
  v70 = (*&v51 + v57[18]);
  sub_10000C888(v70, v70[3]);
  sub_100750404();
  v72 = v71;
  v74 = v73;
  v75 = 12;
  if (LOBYTE(v177))
  {
    v75 = 13;
  }

  v76 = v178;
  sub_10000C888((*&v51 + v178[v75]), *(*&v51 + v178[v75] + 24));
  sub_100536120();
  sub_100750564();
  v78 = v77;
  v79 = v180;
  (*&v184)(v54, v180);
  v208.origin.y = 0.0;
  v208.origin.x = v59;
  v208.size.width = v58;
  v208.size.height = v66;
  v80 = CGRectGetMinX(v208);
  sub_10000C888(v70, v70[3]);
  sub_100753B24();
  sub_100750394();
  v209.origin.x = v80;
  v209.origin.y = MaxY + v78;
  v209.size.width = v72;
  v209.size.height = v74;
  v81 = CGRectGetMaxY(v209);
  sub_100016B4C(*&v51 + *&v172, v188, &unk_100928A00);
  v82 = v189 == 0;
  sub_10000C8CC(v188, &unk_100928A00);
  if (((v82 | LODWORD(v177)) & 1) == 0)
  {
    sub_10000C888((*&v51 + v76[15]), *(*&v51 + v76[15] + 24));
    sub_100536120();
    sub_100750564();
    (*&v184)(v54, v79);
  }

  v210.origin.y = 0.0;
  v210.origin.x = v59;
  v210.size.width = v58;
  v83 = v58;
  v84 = v59;
  v85 = v182;
  v210.size.height = v182;
  CGRectGetHeight(v210);
  v86 = (*&v51 + v185[19]);
  sub_10000C888(v86, v86[3]);
  sub_100750404();
  v88 = v87;
  v90 = v89;
  v166 = v91;
  sub_10000C888((*&v51 + v76[14]), *(*&v51 + v76[14] + 24));
  sub_100536120();
  sub_100750564();
  v93 = v92;
  (*&v184)(v54, v79);
  v211.origin.y = 0.0;
  v211.origin.x = v84;
  v211.size.width = v83;
  v211.size.height = v85;
  v94 = CGRectGetMinX(v211);
  v95 = v81 + v93;
  sub_10000C888(v86, v86[3]);
  v176 = v84;
  sub_100753B24();
  sub_100750394();
  v212.origin.x = v94;
  v212.origin.y = v95;
  v212.size.width = v88;
  v212.size.height = v90;
  v96 = CGRectGetMaxY(v212);
  sub_100016B4C(*&v51 + *&v172, &v186, &unk_100928A00);
  if (v187)
  {
    sub_100012160(&v186, v188);
    if ((LOBYTE(v177) & 1) == 0)
    {
      v213.origin.x = v94;
      v213.origin.y = v95;
      v213.size.width = v88;
      v213.size.height = v90;
      CGRectGetMinY(v213);
      v214.origin.y = 0.0;
      v214.origin.x = v176;
      v214.size.width = v83;
      v214.size.height = v182;
      CGRectGetMaxX(v214);
      sub_10000C888(v188, v189);
      sub_100753B24();
      sub_100750394();
    }

    sub_10000C620(v188);
  }

  else
  {
    sub_10000C8CC(&v186, &unk_100928A00);
  }

  v97 = v184;
  v98 = v173;
  v99 = v178;
  v100 = (*&v51 + v185[21]);
  sub_10000C888(v100, v100[3]);
  v101 = v182;
  sub_100750404();
  v103 = v102;
  v105 = v104;
  sub_10000C888((*&v51 + v99[21]), *(*&v51 + v99[21] + 24));
  sub_100536120();
  sub_100750564();
  v107 = v106;
  (*&v97)(v98, v180);
  v215.origin.y = 0.0;
  v215.origin.x = v176;
  v215.size.width = v83;
  v215.size.height = v101;
  v108 = CGRectGetMinX(v215);
  v109 = v185;
  sub_10000C888(v100, v100[3]);
  v110 = v83;
  sub_100753B24();
  sub_100750394();
  v216.origin.x = v108;
  v216.origin.y = v96 + v107;
  v216.size.width = v103;
  v216.size.height = v105;
  v111 = CGRectGetMaxY(v216);
  sub_100016B4C(*&v51 + v109[22], &v186, &qword_10092BC30);
  if (v187)
  {
    sub_100012160(&v186, v188);
    sub_10000C888(v188, v189);
    if (sub_1007503A4())
    {
      sub_10000C620(v188);
      v112 = v180;
    }

    else
    {
      sub_10000C888(v188, v189);
      v113 = sub_100750364();
      v112 = v180;
      if (v113)
      {
        sub_10000C888(v188, v189);
        v114 = v182;
        sub_100750404();
        v116 = v115;
        v118 = v117;
        sub_10000C888((*&v51 + v99[24]), *(*&v51 + v99[24] + 24));
        sub_100536120();
        sub_100750564();
        v120 = v119;
        (*&v184)(v98, v112);
        v217.origin.y = 0.0;
        v217.origin.x = v176;
        v217.size.width = v83;
        v217.size.height = v114;
        v121 = CGRectGetMinX(v217);
        sub_10000C888(v188, v189);
        v110 = v83;
        sub_100753B24();
        sub_100750394();
        v218.origin.x = v121;
        v218.origin.y = v111 + v120;
        v218.size.width = v116;
        v218.size.height = v118;
        v111 = CGRectGetMaxY(v218);
      }

      sub_10000C620(v188);
    }

    v109 = v185;
  }

  else
  {
    sub_10000C8CC(&v186, &qword_10092BC30);
    v112 = v180;
  }

  sub_100016B4C(*&v51 + v109[23], &v186, &unk_100928A00);
  if (v187)
  {
    sub_100012160(&v186, v188);
    sub_10000C888(v188, v189);
    v122 = sub_1007503A4();
    v123 = v184;
    if (v122)
    {
      v177 = v111;
    }

    else
    {
      sub_10000C888(v188, v189);
      v124 = v182;
      sub_100750404();
      v126 = v125;
      v128 = v127;
      sub_10000C888((*&v51 + v99[26]), *(*&v51 + v99[26] + 24));
      sub_100536120();
      sub_100750564();
      v130 = v129;
      (*&v123)(v98, v112);
      v219.origin.y = 0.0;
      v219.origin.x = v176;
      v219.size.width = v83;
      v219.size.height = v124;
      v131 = CGRectGetMinX(v219);
      sub_10000C888(v188, v189);
      v110 = v83;
      sub_100753B24();
      sub_100750394();
      v220.origin.x = v131;
      v220.origin.y = v111 + v130;
      v220.size.width = v126;
      v220.size.height = v128;
      v177 = CGRectGetMaxY(v220);
    }

    sub_10000C620(v188);
  }

  else
  {
    v177 = v111;
    sub_10000C8CC(&v186, &unk_100928A00);
    v123 = v184;
  }

  sub_10000C888((*&v51 + v99[32]), *(*&v51 + v99[32] + 24));
  sub_100536120();
  sub_100750564();
  v133 = v132;
  (*&v123)(v98, v112);
  v134 = (*&v51 + v185[25]);
  v135 = v112;
  v136 = v134[3];
  v180 = v134;
  sub_10000C888(v134, v136);
  v137 = v182;
  sub_100750404();
  v139 = v138;
  sub_10000C888((*&v51 + v99[29]), *(*&v51 + v99[29] + 24));
  sub_100536120();
  sub_100750564();
  v141 = v140;
  (*&v123)(v98, v112);
  sub_10000C888((*&v51 + v99[28]), *(*&v51 + v99[28] + 24));
  sub_100536120();
  v142 = v181;
  sub_100750564();
  v144 = v143;
  (*&v123)(v98, v135);
  v145 = [v142 traitCollection];
  sub_100751364();
  v147 = v146;

  *&v178 = v147;
  v183 = v141;
  v184 = v139;
  v148 = v133;
  v149 = v133 + v139 + v141 + v144 + v147;
  v150 = v177;
  v151 = v177 + v149;
  v221.origin.x = v179;
  v221.origin.y = v175;
  v221.size.width = v170;
  v221.size.height = v174;
  v152 = CGRectGetHeight(v221);
  v222.origin.y = 0.0;
  v153 = v110;
  v154 = v176;
  v222.origin.x = v176;
  v222.size.width = v153;
  v222.size.height = v137;
  v179 = CGRectGetMinX(v222);
  if (v152 >= v151)
  {
    v227.origin.y = 0.0;
    v227.origin.x = v154;
    v227.size.width = v153;
    v227.size.height = v137;
    v159 = CGRectGetHeight(v227);
    v160 = v184;
    v161 = v159 - v184 - v148;
    v228.origin.y = 0.0;
    v228.origin.x = v154;
    v228.size.width = v153;
    v228.size.height = v137;
    v162 = CGRectGetWidth(v228);
    sub_10000C888(v180, v180[3]);
    v163 = v179;
    sub_100753B24();
    sub_100750394();
    v229.origin.y = 0.0;
    v229.origin.x = v154;
    v229.size.width = v153;
    v229.size.height = v137;
    CGRectGetMinX(v229);
    v230.origin.x = v163;
    v230.origin.y = v161;
    v230.size.width = v162;
    v230.size.height = v160;
    CGRectGetMinY(v230);
    v231.origin.y = 0.0;
    v231.origin.x = v154;
    v231.size.width = v153;
    v231.size.height = v137;
    CGRectGetWidth(v231);
    sub_10000C888((*&v51 + v185[24]), *(*&v51 + v185[24] + 24));
  }

  else
  {
    v155 = v150 + v144;
    v223.origin.y = 0.0;
    v223.origin.x = v154;
    v223.size.width = v153;
    v223.size.height = v137;
    v156 = CGRectGetWidth(v223);
    sub_10000C888((*&v51 + v185[24]), *(*&v51 + v185[24] + 24));
    v157 = v179;
    v158 = *&v178;
    sub_100753B24();
    sub_100750394();
    v224.origin.y = 0.0;
    v224.origin.x = v154;
    v224.size.width = v153;
    v224.size.height = v137;
    CGRectGetMinX(v224);
    v225.origin.x = v157;
    v225.origin.y = v155;
    v225.size.width = v156;
    v225.size.height = v158;
    CGRectGetMaxY(v225);
    v226.origin.y = 0.0;
    v226.origin.x = v154;
    v226.size.width = v153;
    v226.size.height = v137;
    CGRectGetWidth(v226);
    sub_10000C888(v180, v180[3]);
  }

  sub_100753B24();
  return sub_100750394();
}

uint64_t sub_1002D1470(void *a1, double a2, double a3, CGFloat a4, double a5)
{
  v178 = sub_100754724();
  v11 = *(v178 - 8);
  __chkstk_darwin(v178);
  v13 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007504C4();
  v15 = v14;
  v16 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000C888((v5 + v16[9]), *(v5 + v16[9] + 24));
  sub_100750394();
  v191.origin.x = 0.0;
  v191.origin.y = 0.0;
  v191.size.width = a4;
  v191.size.height = v15;
  CGRectGetWidth(v191);
  v192.origin.x = 0.0;
  v192.origin.y = 0.0;
  v192.size.width = a4;
  v177 = v15;
  v192.size.height = v15;
  CGRectGetHeight(v192);
  sub_10000C888((v5 + v16[10]), *(v5 + v16[10] + 24));
  sub_100750394();
  sub_100016B4C(v5 + v16[11], v189, &unk_100928A00);
  if (v190)
  {
    sub_10000C888(v189, v190);
    sub_100750394();
    sub_10000C620(v189);
  }

  else
  {
    sub_10000C8CC(v189, &unk_100928A00);
  }

  sub_100016B4C(v5 + v16[12], v189, &unk_100928A00);
  if (v190)
  {
    sub_10000C888(v189, v190);
    sub_100750394();
    sub_10000C620(v189);
  }

  else
  {
    sub_10000C8CC(v189, &unk_100928A00);
  }

  sub_10000C888((v5 + v16[14]), *(v5 + v16[14] + 24));
  sub_100750394();
  v17 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v183 = v16;
  v18 = v17;
  sub_10000C888((v5 + *(v17 + 20)), *(v5 + *(v17 + 20) + 24));
  sub_100536120();
  sub_100750564();
  v20 = v19;
  v21 = *(v11 + 8);
  v22 = v178;
  v21(v13, v178);
  v23 = sub_10010FD98(a2, a3, a4, a5, 0.0, v20);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10000C888((v5 + v18[8]), *(v5 + v18[8] + 24));
  sub_100536120();
  sub_100750564();
  v173 = v30;
  v174 = v13;
  v175 = v21;
  v21(v13, v22);
  v182 = v18;
  v31 = v18[10];
  v32 = v183;
  v176 = *(v5 + v31 + 8);
  v193.origin.x = v23;
  v193.origin.y = v25;
  v193.size.width = v27;
  v184 = v29;
  v193.size.height = v29;
  CGRectGetMinY(v193);
  v33 = v32[17];
  v186 = v5;
  sub_100016B4C(v5 + v33, v189, &unk_100928A00);
  v185 = v11 + 8;
  v181 = v23;
  if (v190)
  {
    sub_10000C888(v189, v190);
    v34 = v184;
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v189);
    v35 = a4;
    v36 = v34;
  }

  else
  {
    sub_10000C8CC(v189, &unk_100928A00);
    v35 = a4;
    v36 = v184;
  }

  v179 = v25;
  v37 = v178;
  v38 = 0;
  v39 = 0;
  v176 = v35;
  v40 = v177;
  Height = CGRectGetHeight(*(&v35 - 2));
  v42 = (v186 + v32[18]);
  sub_10000C888(v42, v42[3]);
  sub_100750404();
  v173 = v43;
  v45 = v44;
  v46 = a1;
  v47 = [a1 traitCollection];
  v48 = sub_1007537D4();
  v49 = v27;
  v180 = v27;
  v50 = v174;
  if (v48)
  {
    v51 = [v47 preferredContentSizeCategory];
    v52 = sub_100753954();

    v53 = v181;
    if (v52)
    {
      v54 = 16;
      v55 = v37;
      v56 = v175;
      v57 = v46;
      goto LABEL_15;
    }
  }

  else
  {

    v53 = v181;
  }

  v58 = v186;
  v59 = (v186 + v183[19]);
  sub_10000C888(v59, v59[3]);
  v57 = v46;
  sub_100750404();
  v61 = v60;
  v63 = v62;
  sub_10000C888((v58 + v182[16]), *(v58 + v182[16] + 24));
  sub_100536120();
  sub_100750564();
  v65 = v64;
  v66 = v37;
  v55 = v37;
  v56 = v175;
  v175(v50, v66);
  v67 = Height - v65 - v63;
  v194.origin.x = v53;
  v194.origin.y = v179;
  v194.size.width = v180;
  v194.size.height = v184;
  MinX = CGRectGetMinX(v194);
  sub_10000C888(v59, v59[3]);
  sub_100753B24();
  sub_100750394();
  v195.origin.x = MinX;
  v195.origin.y = v67;
  v195.size.width = v61;
  v49 = v180;
  v36 = v184;
  v195.size.height = v63;
  Height = CGRectGetMinY(v195);
  v54 = 14;
LABEL_15:
  v69 = v182;
  sub_10000C888((v186 + v182[v54]), *(v186 + v182[v54] + 24));
  sub_100536120();
  sub_100750564();
  v71 = v70;
  v72 = v56;
  v56(v50, v55);
  v73 = Height - v71 - v45;
  v196.origin.x = v53;
  v74 = v179;
  v196.origin.y = v179;
  v196.size.width = v49;
  v196.size.height = v36;
  v75 = CGRectGetMinX(v196);
  sub_10000C888(v42, v42[3]);
  v76 = v173;
  sub_100753B24();
  sub_100750394();
  v77 = v186;
  sub_10000C888((v186 + v69[13]), *(v186 + v69[13] + 24));
  sub_100536120();
  sub_100750564();
  v79 = v78;
  v56(v50, v55);
  v197.origin.x = v75;
  v197.origin.y = v73;
  v197.size.width = v76;
  v197.size.height = v45;
  v80 = CGRectGetMinY(v197) - v79;
  v81 = v183;
  v82 = (v77 + v183[16]);
  sub_10000C888(v82, v82[3]);
  sub_100750404();
  v84 = v83;
  v86 = v85;
  v87 = v80 - v85;
  v198.origin.x = v181;
  v198.origin.y = v74;
  v198.size.width = v49;
  v198.size.height = v36;
  v88 = CGRectGetMinX(v198);
  sub_10000C888(v82, v82[3]);
  sub_100753B24();
  sub_100750394();
  sub_10000C888((v77 + v182[7]), *(v77 + v182[7] + 24));
  sub_100536120();
  sub_100750564();
  v56(v50, v55);
  v199.origin.x = v88;
  v89 = v181;
  v199.origin.y = v87;
  v199.size.width = v84;
  v199.size.height = v86;
  CGRectGetMinY(v199);
  sub_100016B4C(v77 + v81[20], &v187, &unk_100928A00);
  v90 = v55;
  if (v188)
  {
    sub_100012160(&v187, v189);
    v91 = v182;
    sub_10000C888((v186 + v182[20]), *(v186 + v182[20] + 24));
    sub_100536120();
    sub_100750564();
    v72(v50, v55);
    v200.origin.x = v89;
    v200.origin.y = v179;
    v200.size.width = v180;
    v200.size.height = v184;
    CGRectGetMinX(v200);
    sub_10000C888(v189, v190);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v189);
    v92 = v176;
  }

  else
  {
    sub_10000C8CC(&v187, &unk_100928A00);
    v92 = v176;
    v91 = v182;
  }

  v93 = 0;
  v94 = 0;
  v95 = v177;
  MaxY = CGRectGetMaxY(*(&v92 - 2));
  v97 = [v57 traitCollection];
  if (sub_1007537D4())
  {
    v98 = [v97 preferredContentSizeCategory];
    v99 = sub_100753954();

    if (v99)
    {
      v100 = v186;
      v101 = (v186 + v183[19]);
      sub_10000C888(v101, v101[3]);
      v102 = v180;
      v103 = v184;
      sub_100750404();
      v105 = v104;
      v177 = v106;
      sub_10000C888((v100 + v91[23]), *(v100 + v91[23] + 24));
      sub_100536120();
      sub_100750564();
      v108 = v107;
      v72(v50, v90);
      v201.origin.x = v181;
      v201.origin.y = v179;
      v201.size.width = v102;
      v201.size.height = v103;
      v109 = CGRectGetMinX(v201);
      v110 = MaxY + v108;
      sub_10000C888(v101, v101[3]);
      v111 = v177;
      sub_100753B24();
      sub_100750394();
      sub_10000C888((v100 + v91[22]), *(v100 + v91[22] + 24));
      sub_100536120();
      sub_100750564();
      v113 = v112;
      v114 = v178;
      (v72)(v50);
      v202.origin.x = v109;
      v202.origin.y = v110;
      v202.size.width = v105;
      v202.size.height = v111;
      v177 = CGRectGetMaxY(v202);
      goto LABEL_23;
    }
  }

  else
  {
  }

  v177 = MaxY;
  sub_10000C888((v186 + v91[23]), *(v186 + v91[23] + 24));
  sub_100536120();
  sub_100750564();
  v113 = v115;
  v114 = v55;
  v72(v50, v55);
LABEL_23:
  v116 = v183;
  v117 = v186;
  v118 = (v186 + v183[21]);
  sub_10000C888(v118, v118[3]);
  v119 = v180;
  v120 = v184;
  sub_100750404();
  v122 = v121;
  v124 = v123;
  v203.origin.x = v181;
  v203.origin.y = v179;
  v203.size.width = v119;
  v203.size.height = v120;
  v125 = CGRectGetMinX(v203);
  v126 = v113 + v177;
  sub_10000C888(v118, v118[3]);
  sub_100753B24();
  sub_100750394();
  v204.origin.x = v125;
  v204.origin.y = v126;
  v204.size.width = v122;
  v204.size.height = v124;
  v127 = CGRectGetMaxY(v204);
  sub_100016B4C(v117 + v116[22], &v187, &qword_10092BC30);
  if (!v188)
  {
    sub_10000C8CC(&v187, &qword_10092BC30);
    goto LABEL_27;
  }

  sub_100012160(&v187, v189);
  sub_10000C888(v189, v190);
  if (sub_1007503A4())
  {
    sub_10000C620(v189);
LABEL_27:
    v128 = v182;
    goto LABEL_31;
  }

  sub_10000C888(v189, v190);
  v129 = sub_100750364();
  v128 = v182;
  if (v129)
  {
    sub_10000C888(v189, v190);
    v130 = v180;
    v131 = v184;
    sub_100750404();
    v177 = v132;
    v134 = v133;
    sub_10000C888((v186 + v128[25]), *(v186 + v128[25] + 24));
    sub_100536120();
    sub_100750564();
    v136 = v135;
    v72(v50, v114);
    v205.origin.x = v181;
    v205.origin.y = v179;
    v205.size.width = v130;
    v205.size.height = v131;
    v137 = CGRectGetMinX(v205);
    sub_10000C888(v189, v190);
    v138 = v177;
    sub_100753B24();
    sub_100750394();
    v206.origin.x = v137;
    v206.origin.y = v127 + v136;
    v206.size.width = v138;
    v206.size.height = v134;
    v127 = CGRectGetMaxY(v206);
  }

  sub_10000C620(v189);
LABEL_31:
  sub_100016B4C(v186 + v183[23], &v187, &unk_100928A00);
  if (v188)
  {
    sub_100012160(&v187, v189);
    sub_10000C888(v189, v190);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(v189, v190);
      v177 = v127;
      v139 = v180;
      v140 = v184;
      sub_100750404();
      v142 = v141;
      v144 = v143;
      sub_10000C888((v186 + v128[27]), *(v186 + v128[27] + 24));
      sub_100536120();
      sub_100750564();
      v146 = v145;
      v72(v50, v114);
      v207.origin.x = v181;
      v207.origin.y = v179;
      v207.size.width = v139;
      v207.size.height = v140;
      v147 = CGRectGetMinX(v207);
      v148 = v177 + v146;
      sub_10000C888(v189, v190);
      sub_100753B24();
      sub_100750394();
      v208.origin.x = v147;
      v208.origin.y = v148;
      v208.size.width = v142;
      v208.size.height = v144;
      v127 = CGRectGetMaxY(v208);
    }

    sub_10000C620(v189);
  }

  else
  {
    sub_10000C8CC(&v187, &unk_100928A00);
  }

  v149 = v186;
  sub_10000C888((v186 + v128[30]), *(v186 + v128[30] + 24));
  sub_100536120();
  sub_100750564();
  v151 = v150;
  v72(v50, v114);
  v152 = [v57 traitCollection];
  sub_100751364();
  v154 = v153;

  v155 = v181;
  v209.origin.x = v181;
  v156 = v179;
  v209.origin.y = v179;
  v157 = v180;
  v209.size.width = v180;
  v158 = v184;
  v209.size.height = v184;
  v159 = CGRectGetMinX(v209);
  v177 = v127 + v151;
  v210.origin.x = v155;
  v210.origin.y = v156;
  v210.size.width = v157;
  v210.size.height = v158;
  Width = CGRectGetWidth(v210);
  v161 = v183;
  sub_10000C888((v149 + v183[24]), *(v149 + v183[24] + 24));
  sub_100753B24();
  sub_100750394();
  sub_10000C888((v149 + v128[31]), *(v149 + v128[31] + 24));
  sub_100536120();
  sub_100750564();
  v163 = v162;
  v72(v50, v114);
  v211.origin.x = v159;
  v211.origin.y = v177;
  v211.size.width = Width;
  v211.size.height = v154;
  v164 = v163 + CGRectGetMaxY(v211);
  v165 = v161;
  v166 = (v149 + v161[25]);
  sub_10000C888(v166, v166[3]);
  sub_100750404();
  v168 = v167;
  v212.origin.x = v155;
  v212.origin.y = v156;
  v212.size.width = v157;
  v212.size.height = v158;
  v169 = CGRectGetMinX(v212);
  v213.origin.x = v155;
  v213.origin.y = v156;
  v213.size.width = v157;
  v213.size.height = v158;
  v170 = CGRectGetWidth(v213);
  sub_10000C888(v166, v166[3]);
  sub_100753B24();
  sub_100750394();
  sub_10000C888((v149 + v182[33]), *(v149 + v182[33] + 24));
  sub_100536120();
  sub_100750564();
  v175(v50, v178);
  v214.origin.x = v169;
  v214.origin.y = v164;
  v214.size.width = v170;
  v214.size.height = v168;
  CGRectGetMaxY(v214);
  sub_10000C888((v149 + v165[8]), *(v149 + v165[8] + 24));
  sub_100750394();
  sub_10000C888((v149 + v165[5]), *(v149 + v165[5] + 24));
  sub_100750394();
  sub_10000C888((v149 + v165[6]), *(v149 + v165[6] + 24));
  sub_100750394();
  sub_10000C888((v149 + v165[7]), *(v149 + v165[7] + 24));
  return sub_100750394();
}

uint64_t sub_1002D2B04(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = sub_100754724();
  v10 = *(v125 - 8);
  __chkstk_darwin(v125);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007504C4();
  if (v13 >= a5)
  {
    v13 = a5;
  }

  v14 = floor(v13);
  v15 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000C888((v5 + v15[5]), *(v5 + v15[5] + 24));
  sub_100750394();
  sub_10000C888((v5 + v15[6]), *(v5 + v15[6] + 24));
  sub_100750394();
  sub_10000C888((v5 + v15[7]), *(v5 + v15[7] + 24));
  sub_100750394();
  sub_10000C888((v5 + v15[8]), *(v5 + v15[8] + 24));
  sub_100750394();
  sub_10000C888((v5 + v15[9]), *(v5 + v15[9] + 24));
  sub_100750394();
  sub_10000C888((v5 + v15[10]), *(v5 + v15[10] + 24));
  sub_100750394();
  sub_100016B4C(v5 + v15[11], v132, &unk_100928A00);
  if (v133)
  {
    sub_10000C888(v132, v133);
    sub_100750394();
    sub_10000C620(v132);
  }

  else
  {
    sub_10000C8CC(v132, &unk_100928A00);
  }

  sub_100016B4C(v5 + v15[12], v132, &unk_100928A00);
  if (v133)
  {
    sub_10000C888(v132, v133);
    sub_100750394();
    sub_10000C620(v132);
  }

  else
  {
    sub_10000C8CC(v132, &unk_100928A00);
  }

  sub_10000C888((v5 + v15[14]), *(v5 + v15[14] + 24));
  sub_100750394();
  v16 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v128 = v15;
  v17 = v16;
  sub_10000C888((v5 + *(v16 + 20)), *(v5 + *(v16 + 20) + 24));
  sub_100536120();
  sub_100750564();
  v19 = v18;
  v20 = *(v10 + 8);
  v129 = v10 + 8;
  v21 = v125;
  v20(v12, v125);
  MinX = v19;
  v22 = sub_10010FD98(0.0, 0.0, a4, v14, 0.0, v19);
  v121 = a4;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v17[9];
  v31 = (v5 + v17[10]);
  v32 = *v31;
  v122 = v31[1];
  v123 = v32;
  sub_10000C888((v5 + v30), *(v5 + v30 + 24));
  sub_100536120();
  sub_100750564();
  v20(v12, v21);
  sub_10000C888((v5 + v17[11]), *(v5 + v17[11] + 24));
  sub_100536120();
  sub_100750564();
  v20(v12, v21);
  v134.origin.x = v23;
  v134.origin.y = v25;
  v134.size.width = v27;
  v134.size.height = v29;
  CGRectGetHeight(v134);
  v33 = (v5 + v128[16]);
  sub_10000C888(v33, v33[3]);
  sub_100750404();
  sub_10000C888((v5 + v17[6]), *(v5 + v17[6] + 24));
  sub_100536120();
  sub_100750564();
  v20(v12, v21);
  v34 = v23;
  v135.origin.x = v23;
  v135.origin.y = v25;
  v135.size.width = v27;
  v135.size.height = v29;
  CGRectGetMinX(v135);
  v136.origin.x = v23;
  v136.origin.y = v25;
  v136.size.width = v27;
  v136.size.height = v29;
  CGRectGetMinY(v136);
  sub_10000C888(v33, v33[3]);
  v35 = v27;
  sub_100753B24();
  sub_100750394();
  v127 = v17;
  v36 = v17[8];
  v37 = v128;
  sub_10000C888((v5 + v36), *(v5 + v36 + 24));
  sub_100536120();
  sub_100750564();
  v126 = v20;
  v20(v12, v21);
  v137.origin.x = v34;
  v137.origin.y = v25;
  v137.size.width = v27;
  v137.size.height = v29;
  CGRectGetMinY(v137);
  sub_100016B4C(v5 + v37[17], v132, &unk_100928A00);
  if (v133)
  {
    sub_10000C888(v132, v133);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v132);
  }

  else
  {
    sub_10000C8CC(v132, &unk_100928A00);
  }

  v38 = (v5 + v37[25]);
  sub_10000C888(v38, v38[3]);
  sub_100750404();
  v40 = v39;
  v41 = v127;
  sub_10000C888((v5 + v127[32]), *(v5 + v127[32] + 24));
  sub_100536120();
  sub_100750564();
  v43 = v42;
  v44 = v125;
  v126(v12, v125);
  v138.origin.x = v34;
  v138.origin.y = v25;
  v138.size.width = v35;
  v138.size.height = v29;
  MinX = CGRectGetMinX(v138);
  v139.origin.x = v34;
  v139.origin.y = v25;
  v139.size.width = v35;
  v139.size.height = v29;
  Height = CGRectGetHeight(v139);
  v123 = v40;
  v122 = Height - v40 - v43;
  v140.origin.x = v34;
  v140.origin.y = v25;
  v140.size.width = v35;
  v140.size.height = v29;
  Width = CGRectGetWidth(v140);
  sub_10000C888(v38, v38[3]);
  sub_100753B24();
  v47 = v44;
  v48 = v128;
  sub_100750394();
  sub_10000C888((v5 + v41[29]), *(v5 + v41[29] + 24));
  sub_100536120();
  sub_100750564();
  v50 = v49;
  v51 = v47;
  v52 = v126;
  v126(v12, v51);
  v53 = [a1 traitCollection];
  sub_100751364();
  v55 = v54;

  v141.origin.x = v34;
  v141.origin.y = v25;
  v141.size.width = v35;
  v141.size.height = v29;
  v56 = CGRectGetMinX(v141);
  v142.origin.x = MinX;
  v142.origin.y = v122;
  v142.size.width = Width;
  v57 = v34;
  v142.size.height = v123;
  v58 = CGRectGetMinY(v142) - v50 - v55;
  v143.origin.x = v57;
  v143.origin.y = v25;
  v143.size.width = v35;
  v143.size.height = v29;
  v59 = CGRectGetWidth(v143);
  sub_10000C888((v6 + v48[24]), *(v6 + v48[24] + 24));
  MinX = v57;
  sub_100753B24();
  sub_100750394();
  v144.origin.x = v56;
  v144.origin.y = v58;
  v144.size.width = v59;
  v144.size.height = v55;
  MinY = CGRectGetMinY(v144);
  v61 = v41[28];
  v62 = v125;
  sub_10000C888((v6 + v61), *(v6 + v61 + 24));
  sub_100536120();
  sub_100750564();
  v64 = v63;
  v52(v12, v62);
  v65 = MinY - v64;
  sub_100016B4C(v6 + v48[23], &v130, &unk_100928A00);
  if (!v131)
  {
    sub_10000C8CC(&v130, &unk_100928A00);
    goto LABEL_16;
  }

  sub_100012160(&v130, v132);
  sub_10000C888(v132, v133);
  if (sub_1007503A4())
  {
    sub_10000C620(v132);
    v52 = v126;
LABEL_16:
    v66 = v29;
    goto LABEL_18;
  }

  sub_10000C888(v132, v133);
  v66 = v29;
  sub_100750404();
  v68 = v67;
  v70 = v69;
  v145.origin.x = MinX;
  v145.origin.y = v25;
  v145.size.width = v35;
  v145.size.height = v29;
  v71 = CGRectGetMinX(v145);
  sub_10000C888(v132, v133);
  sub_100753B24();
  sub_100750394();
  v146.origin.x = v71;
  v146.origin.y = v65 - v70;
  v146.size.width = v68;
  v146.size.height = v70;
  v72 = CGRectGetMinY(v146);
  sub_10000C888((v6 + v127[26]), *(v6 + v127[26] + 24));
  sub_100536120();
  sub_100750564();
  v74 = v73;
  v52 = v126;
  v126(v12, v62);
  v65 = v72 - v74;
  sub_10000C620(v132);
LABEL_18:
  sub_100016B4C(v6 + v128[22], &v130, &qword_10092BC30);
  if (v131)
  {
    sub_100012160(&v130, v132);
    sub_10000C888(v132, v133);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(v132, v133);
      if (sub_100750364())
      {
        sub_10000C888(v132, v133);
        sub_100750404();
        v76 = v75;
        v78 = v77;
        v79 = v65 - v77;
        v147.origin.x = MinX;
        v147.origin.y = v25;
        v147.size.width = v35;
        v147.size.height = v66;
        v80 = CGRectGetMinX(v147);
        sub_10000C888(v132, v133);
        sub_100753B24();
        sub_100750394();
        v148.origin.x = v80;
        v148.origin.y = v79;
        v148.size.width = v76;
        v148.size.height = v78;
        v81 = CGRectGetMinY(v148);
        sub_10000C888((v6 + v127[24]), *(v6 + v127[24] + 24));
        sub_100536120();
        sub_100750564();
        v83 = v82;
        v52(v12, v62);
        v65 = v81 - v83;
      }
    }

    sub_10000C620(v132);
  }

  else
  {
    sub_10000C8CC(&v130, &qword_10092BC30);
  }

  v84 = v128;
  v85 = (v6 + v128[21]);
  sub_10000C888(v85, v85[3]);
  sub_100750404();
  v87 = v86;
  v89 = v88;
  v90 = v65 - v88;
  v149.origin.x = MinX;
  v149.origin.y = v25;
  v149.size.width = v35;
  v149.size.height = v66;
  v91 = CGRectGetMinX(v149);
  sub_10000C888(v85, v85[3]);
  sub_100753B24();
  sub_100750394();
  v150.origin.x = v91;
  v150.origin.y = v90;
  v150.size.width = v87;
  v150.size.height = v89;
  v92 = CGRectGetMinY(v150);
  v93 = v127;
  sub_10000C888((v6 + v127[21]), *(v6 + v127[21] + 24));
  sub_100536120();
  sub_100750564();
  v95 = v94;
  v96 = v126;
  v126(v12, v62);
  v97 = v92 - v95;
  v98 = (v6 + v93[17]);
  v99 = *v98;
  v121 = v98[1];
  *&v123 = v84[20];
  sub_100016B4C(v6 + *&v123, v132, &unk_100928A00);
  v100 = v133;
  sub_10000C8CC(v132, &unk_100928A00);
  if (v100)
  {
    sub_10000C888((v6 + v127[15]), *(v6 + v127[15] + 24));
    sub_100536120();
    sub_100750564();
    v96(v12, v62);
  }

  v122 = v99;
  v101 = MinX;
  v151.origin.x = MinX;
  v151.origin.y = v25;
  v151.size.width = v35;
  v151.size.height = v66;
  CGRectGetHeight(v151);
  v102 = v128;
  v103 = (v6 + v128[19]);
  sub_10000C888(v103, v103[3]);
  sub_100750404();
  v105 = v104;
  v106 = v25;
  v107 = v101;
  v109 = v108;
  v120 = v110;
  v111 = v97 - v108;
  v152.origin.x = v101;
  v152.origin.y = v106;
  v152.size.width = v35;
  v152.size.height = v66;
  v112 = CGRectGetMinX(v152);
  sub_10000C888(v103, v103[3]);
  sub_100753B24();
  sub_100750394();
  v116 = v112;
  v153.origin.x = v112;
  v117 = v111;
  v153.origin.y = v111;
  v119 = v105;
  v153.size.width = v105;
  v118 = v109;
  v153.size.height = v109;
  CGRectGetMinY(v153);
  sub_10000C888((v6 + v127[14]), *(v6 + v127[14] + 24));
  sub_100536120();
  sub_100750564();
  v96(v12, v62);
  v113 = (v6 + v102[18]);
  sub_10000C888(v113, v113[3]);
  sub_100750404();
  v154.origin.x = v107;
  v154.origin.y = v106;
  v154.size.width = v35;
  v154.size.height = v66;
  CGRectGetMinX(v154);
  sub_10000C888(v113, v113[3]);
  sub_100753B24();
  sub_100750394();
  sub_100016B4C(v6 + *&v123, &v130, &unk_100928A00);
  if (!v131)
  {
    return sub_10000C8CC(&v130, &unk_100928A00);
  }

  sub_100012160(&v130, v132);
  sub_10000C888((v6 + v127[20]), *(v6 + v127[20] + 24));
  sub_100536120();
  sub_100750564();
  v96(v12, v62);
  v155.origin.x = v116;
  v155.origin.y = v117;
  v155.size.width = v119;
  v155.size.height = v118;
  CGRectGetMinY(v155);
  v156.origin.x = v107;
  v156.origin.y = v106;
  v156.size.width = v35;
  v156.size.height = v66;
  CGRectGetMaxX(v156);
  sub_10000C888(v132, v133);
  sub_100753B24();
  sub_100750394();
  return sub_10000C620(v132);
}

void sub_1002D3F00()
{
  type metadata accessor for AppEventDetailPageLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100110300(319, &unk_10092C900);
    if (v1 <= 0x3F)
    {
      sub_100110090(319, &qword_10092C920, &qword_100926520);
      if (v2 <= 0x3F)
      {
        sub_100110300(319, &qword_10092D510);
        if (v3 <= 0x3F)
        {
          sub_100110090(319, &unk_10092C910, &unk_10092D520);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1002D40A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1002D4198(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1002D4258()
{
  sub_1007504F4();
  if (v0 <= 0x3F)
  {
    sub_100110300(319, &qword_1009289A0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_1002D4358()
{
  sub_10000C518(&qword_1009311E8);
  inited = swift_initStackObject();
  v2 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 16) = xmmword_1007A6580;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 0;
  *(inited + 48) = v3;
  *(inited + 56) = 6;
  v4 = v2;
  v5 = v3;
  v6 = sub_100414444(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_1009311F0);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_10000C518(&qword_1009311F8);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1007A5A00;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_10000C518(&qword_100931200);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A5A00;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_10000C518(&qword_100931208);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_100414530(v8);
  swift_setDeallocating();
  sub_1002D45A8(v8 + 32);
  type metadata accessor for AttributeName(0);
  sub_1002D4610();
  isa = sub_100752F34().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  [v0 pointSize];
  v14 = [objc_opt_self() fontWithDescriptor:v12 size:v13];

  return v14;
}

uint64_t sub_1002D45A8(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100931210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002D4610()
{
  result = qword_100922508;
  if (!qword_100922508)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922508);
  }

  return result;
}

unint64_t sub_1002D467C()
{
  result = qword_100931218;
  if (!qword_100931218)
  {
    sub_100744FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100931218);
  }

  return result;
}

uint64_t sub_1002D46D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100744FC4();
  v4 = sub_10052AB60(v3, 1, a2);

  return v4;
}

uint64_t type metadata accessor for PrefetchMarkerCollectionViewCell()
{
  result = qword_100931248;
  if (!qword_100931248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D493C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002D4A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1002D4BA8(&qword_100931260);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1002D4A84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1002D4ADC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1002D4BA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PrefetchMarkerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002D4BEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v33 = a3;
  v4 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - v5;
  v6 = sub_100741454();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10074ED34();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074BF14();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v42);
  sub_10000C888(a1, a1[3]);
  v15 = v6;
  v16 = v34;
  sub_1007463C4();
  sub_1002D6F4C(&qword_1009312A8, &type metadata accessor for TodayCardTriggerIdentifier);
  *&v39 = sub_100754714();
  *(&v39 + 1) = v17;
  (*(v12 + 8))(v14, v11);
  v44._countAndFlagsBits = 8250;
  v44._object = 0xE200000000000000;
  sub_1007531B4(v44);
  sub_10000C888(a1, a1[3]);
  sub_1007463E4();
  v18 = sub_10074ECF4();
  v20 = v19;
  (*(v8 + 8))(v10, v35);
  v21 = v36;
  v45._countAndFlagsBits = v18;
  v45._object = v20;
  sub_1007531B4(v45);
  v22 = v37;

  v40 = v39;
  sub_100016B4C(v22, v21, &unk_100928740);
  if ((*(v16 + 48))(v21, 1, v15) == 1)
  {
    sub_10000C8CC(v21, &unk_100928740);
    sub_10000C8CC(v22, &unk_100928740);
    v23 = 0xED00002E74657920;
    v24 = 0x6E65657320746F4ELL;
LABEL_8:
    *&v41 = v24;
    *(&v41 + 1) = v23;
    v29 = v42[1];
    v30 = v33;
    *(v33 + 32) = v42[0];
    *(v30 + 48) = v29;
    *(v30 + 64) = v43;
    v31 = v41;
    *v30 = v40;
    *(v30 + 16) = v31;
    return sub_10000C620(a1);
  }

  v25 = v32;
  (*(v16 + 32))(v32, v21, v15);
  result = sub_100741414();
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v28 = -v27;
  if (!__OFSUB__(0, v27))
  {
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    sub_100754534(20);

    *&v39 = 0x206E656553;
    *(&v39 + 1) = 0xE500000000000000;
    v38 = v28;
    v46._countAndFlagsBits = sub_100754714();
    sub_1007531B4(v46);

    v47._countAndFlagsBits = 0x73646E6F63657320;
    v47._object = 0xED00002E6F676120;
    sub_1007531B4(v47);
    v23 = *(&v39 + 1);
    v24 = v39;
    sub_10000C8CC(v22, &unk_100928740);
    (*(v16 + 8))(v25, v15);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1002D5118@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v13 = sub_10074BF14();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  sub_10000C824(a1, v15);
  sub_10000C888(a2, a2[3]);
  sub_10000C888(a1, a1[3]);
  sub_1007463C4();
  sub_100741BA4();
  (*(v5 + 8))(v7, v13);
  return sub_1002D4BEC(v15, v10, v14);
}

id sub_1002D52B8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_triggerController] = a1;

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_sections] = sub_1002D68A0(v4);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithStyle:", 1);
  v6 = [v5 navigationItem];
  v7 = sub_100753064();
  [v6 setTitle:v7];

  v8 = [v5 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  v9 = [objc_allocWithZone(UIRefreshControl) init];
  [v5 setRefreshControl:v9];

  v10 = [v5 refreshControl];
  if (v10)
  {
    [v10 addTarget:v5 action:"refreshContent" forControlEvents:4096];
  }

  return v5;
}

void sub_1002D54B4()
{
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_sections] = sub_1002D68A0(*&v0[OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_triggerController]);

  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];

    v3 = [v0 refreshControl];
    [v3 endRefreshing];
  }

  else
  {
    __break(1u);
  }
}

void sub_1002D55B8(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  v5 = sub_100753064();

  v6 = sub_100753064();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  sub_10000C824(a1, v17);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  sub_100012160(v17, v8 + 24);
  *(v8 + 64) = v4;
  v9 = v2;
  v10 = sub_100753064();
  aBlock[4] = sub_1002D7300;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10073EFC4;
  aBlock[3] = &unk_1008703A8;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v7 addAction:v13];
  v14 = sub_100753064();
  v15 = [v12 actionWithTitle:v14 style:1 handler:0];

  [v7 addAction:v15];
  [v9 presentViewController:v7 animated:1 completion:0];
}

void sub_1002D5828(void *a1, char a2)
{
  v5 = sub_10074BF14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_triggerController))
  {
    sub_10074BED4();
    sub_100012160(v12, v13);
    if (a2)
    {
      sub_10000C888(v13, v14);
      sub_10000C518(&qword_1009312C8);
      v9 = swift_allocObject();
      v9[1] = xmmword_1007A5A00;
      sub_10000C888(a1, a1[3]);
      sub_1007463C4();
      v10._rawValue = v9;
      sub_100741BC4(v10);
    }

    else
    {
      sub_10000C888(a1, a1[3]);
      sub_1007463D4();
      sub_10000C888(v13, v14);
      sub_10000C888(a1, a1[3]);
      sub_1007463C4();
      sub_100741BB4();
      (*(v6 + 8))(v8, v5);
    }

    v11 = [objc_opt_self() sharedCoordinator];
    [v11 simulateStorefrontChange];

    sub_10000C620(v13);
  }
}

uint64_t sub_1002D61AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002D61C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1002D620C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002D6270()
{
  result = qword_1009312A0;
  if (!qword_1009312A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009312A0);
  }

  return result;
}

uint64_t sub_1002D62C4(uint64_t a1)
{
  v65 = sub_100748794();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10074BF14();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000C518(&qword_1009312B0);
  __chkstk_darwin(v61);
  v60 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v46 - v8;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v74 = _swiftEmptyArrayStorage;
  sub_10001E3CC(0, v9, 0);
  v10 = v74;
  v11 = a1 + 64;
  result = sub_1007543B4();
  v13 = result;
  v14 = 0;
  v15 = *(a1 + 36);
  v56 = v2 + 16;
  v57 = v4 + 16;
  v54 = v2 + 32;
  v55 = v4 + 32;
  v58 = v2;
  v53 = v2 + 8;
  v52 = v4 + 8;
  v47 = a1 + 72;
  v73 = v4;
  v48 = v9;
  v50 = a1 + 64;
  v49 = v15;
  v51 = a1;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v67 = 1 << v13;
    v68 = v13 >> 6;
    v66 = v14;
    v16 = v61;
    v17 = *(v61 + 48);
    v18 = *(a1 + 48) + *(v4 + 72) * v13;
    v70 = *(v4 + 16);
    v19 = v59;
    v20 = v63;
    v70(v59, v18, v63);
    v21 = v58;
    v22 = *(a1 + 56) + *(v58 + 72) * v13;
    v69 = *(v58 + 16);
    v71 = v13;
    v23 = v65;
    v69(&v19[v17], v22, v65);
    v24 = *(v73 + 32);
    v72 = v10;
    v25 = v60;
    v24(v60, v19, v20);
    v26 = *(v16 + 48);
    (*(v21 + 32))(&v25[v26], &v19[v17], v23);
    v27 = v62;
    v70(v62, v25, v20);
    v28 = v64;
    v69(v64, &v25[v26], v23);
    v70 = sub_10074BF04();
    v30 = v29;
    sub_1002D6F4C(&qword_1009312B8, &type metadata accessor for TriggerBuilderError);
    v31 = sub_1007547C4();
    v33 = v32;
    v34 = *(v21 + 8);
    v4 = v73;
    v34(v28, v23);
    (*(v4 + 8))(v27, v20);
    v35 = v25;
    v10 = v72;
    sub_10000C8CC(v35, &qword_1009312B0);
    v74 = v10;
    v37 = v10[2];
    v36 = v10[3];
    if (v37 >= v36 >> 1)
    {
      sub_10001E3CC((v36 > 1), v37 + 1, 1);
      v10 = v74;
    }

    v10[2] = v37 + 1;
    v38 = &v10[9 * v37];
    result = v71;
    v38[4] = v70;
    v38[5] = v30;
    v38[6] = v31;
    v38[7] = v33;
    *(v38 + 4) = 0u;
    *(v38 + 5) = 0u;
    v38[12] = 0;
    a1 = v51;
    v13 = 1 << *(v51 + 32);
    if (result >= v13)
    {
      goto LABEL_24;
    }

    v11 = v50;
    v39 = *(v50 + 8 * v68);
    if ((v39 & v67) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v15) = v49;
    if (v49 != *(v51 + 36))
    {
      goto LABEL_26;
    }

    v40 = v39 & (-2 << (result & 0x3F));
    if (v40)
    {
      v13 = __clz(__rbit64(v40)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v41 = v68 << 6;
      v42 = v68 + 1;
      v43 = (v47 + 8 * v68);
      while (v42 < (v13 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          result = sub_1001D3DC4(result, v49, 0);
          v13 = __clz(__rbit64(v44)) + v41;
          goto LABEL_4;
        }
      }

      result = sub_1001D3DC4(result, v49, 0);
    }

LABEL_4:
    v14 = v66 + 1;
    if (v66 + 1 == v48)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1002D68A0(uint64_t a1)
{
  if (!a1)
  {
    sub_10000C518(&qword_10092F108);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1007A5A00;
    v9[4] = 0xD000000000000015;
    v9[5] = 0x80000001007758F0;
    v9[6] = _swiftEmptyArrayStorage;
    *(v9 + 56) = 2;
    return v9;
  }

  sub_10074BEE4();
  v1 = v39;
  v2 = v40;
  v3 = v41;
  v4 = v42;
  v5 = v43;
  isUniquelyReferenced_nonNull_native = sub_10074BED4();
  v7 = *(v38 + 16);
  v36 = v38;
  v37 = v39;
  if (v7)
  {
    v8 = sub_1002D62C4(v38);
    isUniquelyReferenced_nonNull_native = sub_1002552A4(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = isUniquelyReferenced_nonNull_native;
    v11 = *(isUniquelyReferenced_nonNull_native + 16);
    v10 = *(isUniquelyReferenced_nonNull_native + 24);
    if (v11 >= v10 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4((v10 > 1), v11 + 1, 1, isUniquelyReferenced_nonNull_native);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v11 + 1;
    v12 = &v9[4 * v11];
    v12[4] = 0xD000000000000013;
    v12[5] = 0x8000000100775910;
    v12[6] = v8;
    *(v12 + 56) = 2;
    v1 = v37;
    if (*(v37 + 16))
    {
LABEL_6:
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      v35 = &v38;
      v13 = sub_1003497C0(sub_1002D6F2C, v34, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1002552A4(0, v9[2] + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1002552A4((v14 > 1), v15 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v9[2] = v15 + 1;
      v16 = &v9[4 * v15];
      v16[4] = 0xD00000000000001DLL;
      v16[5] = 0x8000000100775930;
      v16[6] = v13;
      *(v16 + 56) = 1;
      if (!*(v2 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
    if (*(v39 + 16))
    {
      goto LABEL_6;
    }
  }

  if (*(v2 + 16))
  {
LABEL_15:
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v17 = sub_1003497C0(sub_1002D7348, v34, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v19 = v9[2];
    v18 = v9[3];
    if (v19 >= v18 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4((v18 > 1), v19 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v19 + 1;
    v20 = &v9[4 * v19];
    v20[4] = 0xD00000000000001BLL;
    v20[5] = 0x8000000100775950;
    v20[6] = v17;
    *(v20 + 56) = 1;
  }

LABEL_20:
  if (*(v3 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v21 = sub_1003497C0(sub_1002D7348, v34, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v23 = v9[2];
    v22 = v9[3];
    if (v23 >= v22 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4((v22 > 1), v23 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v23 + 1;
    v24 = &v9[4 * v23];
    v24[4] = 0xD00000000000001CLL;
    v24[5] = 0x8000000100775970;
    v24[6] = v21;
    *(v24 + 56) = 0;
  }

  if (*(v4 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v25 = sub_1003497C0(sub_1002D7348, v34, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v27 = v9[2];
    v26 = v9[3];
    if (v27 >= v26 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4((v26 > 1), v27 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v27 + 1;
    v28 = &v9[4 * v27];
    v28[4] = 0xD000000000000020;
    v28[5] = 0x8000000100775990;
    v28[6] = v25;
    *(v28 + 56) = 0;
  }

  if (*(v5 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v29 = sub_1003497C0(sub_1002D7348, v34, v5);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1002552A4(0, v9[2] + 1, 1, v9);
    }

    v31 = v9[2];
    v30 = v9[3];
    if (v31 >= v30 >> 1)
    {
      v9 = sub_1002552A4((v30 > 1), v31 + 1, 1, v9);
    }

    v9[2] = v31 + 1;
    v32 = &v9[4 * v31];
    v32[4] = 0xD000000000000017;
    v32[5] = 0x80000001007759C0;
    v32[6] = v29;
    *(v32 + 56) = 0;
    sub_10000C620(&v38);
  }

  else
  {
    sub_10000C620(&v38);
  }

  return v9;
}

uint64_t sub_1002D6F4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002D6F94(void *a1)
{
  result = sub_100741784();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4 + 32 * result;
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);

  result = sub_100741754();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result < *(v6 + 16))
  {
    sub_1002D7258(v6 + 72 * result + 32, &v15);
    v8 = [a1 textLabel];
    if (v8)
    {
      v9 = v8;
      v10 = sub_100753064();
      [v9 setText:v10];
    }

    v11 = [a1 detailTextLabel];
    if (v11)
    {
      v12 = v11;
      v13 = sub_100753064();
      [v12 setText:v13];

      if (v7 == 2)
      {
LABEL_9:
        v14 = 0;
LABEL_12:
        [a1 setAccessoryType:v14];
        return sub_1002D7290(&v15);
      }
    }

    else
    {

      if (v7 == 2)
      {
        goto LABEL_9;
      }
    }

    v14 = 1;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1002D7130()
{
  result = sub_100741784();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v2 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2 + 32 * result;
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);

  result = sub_100741754();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v4 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1002D7258(v4 + 72 * result + 32, v9);

  if (v5 != 2)
  {
    sub_100016B4C(&v10, &v6, &qword_1009312C0);
    if (!v7)
    {
      sub_1002D7290(v9);
      return sub_10000C8CC(&v6, &qword_1009312C0);
    }

    sub_100012160(&v6, v8);
    sub_1002D55B8(v8, v5 & 1);
    sub_10000C620(v8);
  }

  return sub_1002D7290(v9);
}

uint64_t sub_1002D72C0()
{
  sub_10000C620(v0 + 24);

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1002D7330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D7360()
{
  v49 = sub_100744574();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007429B4();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_10000C518(&qword_1009312D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_100743B04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v51 = v0;
  sub_1007429E4();
  if (v19)
  {

    sub_100743AF4();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10000C8CC(v11, &qword_1009312D0);
      v20 = sub_100743AB4();
    }

    else
    {

      (*(v13 + 32))(v18, v11, v12);
      v20 = sub_100743AE4();
      (*(v13 + 8))(v18, v12);
    }
  }

  else
  {
    v20 = 0;
  }

  sub_1007429D4();
  v21 = (*(v52 + 88))(v8, v53);
  if (v21 == enum case for StoreTab.Identifier.today(_:))
  {
    sub_100742A24();
    if (!v22)
    {
      v54._object = 0x8000000100775B60;
      v54._countAndFlagsBits = 0xD000000000000010;
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      sub_1007458B4(v54, v59);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      (*(v13 + 104))(v15, enum case for SystemImage.docTextImage(_:), v12);
      v23 = sub_100743AE4();
      (*(v13 + 8))(v15, v12);
    }

    v26 = &enum case for NavigationTab.today(_:);
LABEL_34:
    v39 = v49;
    (*(v1 + 104))(v3, *v26, v49);
    v40 = v20;
    v41 = sub_100744554();
    (*(v1 + 8))(v3, v39);
    v42 = objc_allocWithZone(UITabBarItem);
    v43 = sub_100753064();

    v44 = [v42 initWithTitle:v43 image:v23 tag:v41];

    v45 = v50;
    sub_1007429D4();
    v38 = sub_1007535F4();

    (*(v52 + 8))(v45, v53);
    return v38;
  }

  if (v21 == enum case for StoreTab.Identifier.games(_:))
  {
    sub_100742A24();
    if (!v24)
    {
      v55._object = 0x8000000100775B40;
      v55._countAndFlagsBits = 0xD000000000000010;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      sub_1007458B4(v55, v60);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      (*(v13 + 104))(v15, enum case for SystemImage.rocketFill(_:), v12);
      v23 = sub_100743AE4();
      (*(v13 + 8))(v15, v12);
    }

    v26 = &enum case for NavigationTab.games(_:);
    goto LABEL_34;
  }

  if (v21 == enum case for StoreTab.Identifier.apps(_:))
  {
LABEL_17:
    sub_100742A24();
    if (!v25)
    {
      v56._countAndFlagsBits = 0x5449545F45474150;
      v56._object = 0xEF535050415F454CLL;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      sub_1007458B4(v56, v61);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      (*(v13 + 104))(v15, enum case for SystemImage.app3Stack3DFill(_:), v12);
      v23 = sub_100743AE4();
      (*(v13 + 8))(v15, v12);
    }

    v26 = &enum case for NavigationTab.apps(_:);
    goto LABEL_34;
  }

  if (v21 == enum case for StoreTab.Identifier.updates(_:))
  {
    sub_100742A24();
    if (!v27)
    {
      v57._countAndFlagsBits = 0xD000000000000012;
      v57._object = 0x8000000100775B20;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      sub_1007458B4(v57, v62);
    }

    v28 = sub_10056003C(0x5473657461647055, 0xEE006E6F63496261, 0);
    v29 = [v28 _imageThatSuppressesAccessibilityHairlineThickening];

    v30 = v49;
    (*(v1 + 104))(v3, enum case for NavigationTab.updates(_:), v49);
    v31 = sub_100744554();
    (*(v1 + 8))(v3, v30);
    v32 = objc_allocWithZone(UITabBarItem);
    v33 = sub_100753064();

    v34 = [v32 initWithTitle:v33 image:v29 tag:v31];

    v35 = v50;
  }

  else
  {
    if (v21 != enum case for StoreTab.Identifier.search(_:))
    {
      if (v21 == enum case for StoreTab.Identifier.arcade(_:))
      {
        sub_100742A24();
        if (!v47)
        {
          v58._countAndFlagsBits = 0xD000000000000011;
          v58._object = 0x8000000100775B00;
          v63._countAndFlagsBits = 0;
          v63._object = 0xE000000000000000;
          sub_1007458B4(v58, v63);
        }

        if (v20)
        {
          v23 = v20;
        }

        else
        {
          (*(v13 + 104))(v15, enum case for SystemImage.joystickcontrollerFill(_:), v12);
          v23 = sub_100743AE4();
          (*(v13 + 8))(v15, v12);
        }

        v26 = &enum case for NavigationTab.arcade(_:);
        goto LABEL_34;
      }

      if (v21 != enum case for StoreTab.Identifier.featured(_:))
      {

        (*(v52 + 8))(v8, v53);
        return 0;
      }

      goto LABEL_17;
    }

    v36 = v49;
    (*(v1 + 104))(v3, enum case for NavigationTab.search(_:), v49);
    v37 = sub_100744554();
    (*(v1 + 8))(v3, v36);
    v34 = [objc_allocWithZone(UITabBarItem) initWithTabBarSystemItem:8 tag:v37];
    v35 = v50;
  }

  sub_1007429D4();
  v38 = sub_1007535F4();

  (*(v52 + 8))(v35, v53);
  return v38;
}

uint64_t sub_1002D7CA4@<X0>(char *a1@<X8>)
{
  v70 = a1;
  v1 = sub_100744BE4();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100745CA4();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v59 - v6;
  v8 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v8 - 8);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v59 - v11;
  __chkstk_darwin(v12);
  v60 = &v59 - v13;
  __chkstk_darwin(v14);
  v62 = &v59 - v15;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  __chkstk_darwin(v19);
  v61 = &v59 - v20;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = sub_100741264();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1007429B4();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007429D4();
  v32 = (*(v29 + 88))(v31, v28);
  if (v32 == enum case for StoreTab.Identifier.today(_:))
  {
    sub_100742A14();
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_10000C8CC(v23, &unk_100923970);
      v33 = type metadata accessor for FlowDestination();
      return (*(*(v33 - 8) + 56))(v70, 1, 1, v33);
    }

    v37 = *(v25 + 32);
    v37(v27, v23, v24);
    v36 = v70;
    v37(v70, v27, v24);
    v35 = type metadata accessor for FlowDestination();
    goto LABEL_9;
  }

  if (v32 == enum case for StoreTab.Identifier.games(_:) || v32 == enum case for StoreTab.Identifier.apps(_:))
  {
    goto LABEL_17;
  }

  if (v32 != enum case for StoreTab.Identifier.updates(_:))
  {
    if (v32 == enum case for StoreTab.Identifier.search(_:))
    {
      v36 = v70;
      *v70 = 0;
      v35 = type metadata accessor for FlowDestination();
      goto LABEL_9;
    }

    if (v32 == enum case for StoreTab.Identifier.arcade(_:))
    {
      v40 = sub_1007429F4();
      v41 = *(v68 + 104);
      v41(v7, enum case for EditorialPageKey.subscriber(_:), v69);
      if (*(v40 + 16) && (v42 = sub_1004124D0(v7), (v43 & 1) != 0))
      {
        (*(v25 + 16))(v18, *(v40 + 56) + *(v25 + 72) * v42, v24);
        v44 = *(v68 + 8);
        v44(v7, v69);

        v45 = *(v25 + 56);
        v45(v18, 0, 1, v24);
        v46 = v61;
        (*(v25 + 32))(v61, v18, v24);
        v45(v46, 0, 1, v24);
      }

      else
      {

        v44 = *(v68 + 8);
        v44(v7, v69);
        v45 = *(v25 + 56);
        v45(v18, 1, 1, v24);
        v46 = v61;
        sub_100742A14();
        if ((*(v25 + 48))(v18, 1, v24) != 1)
        {
          sub_10000C8CC(v18, &unk_100923970);
        }
      }

      v48 = sub_1007429F4();
      v49 = v59;
      v41(v59, enum case for EditorialPageKey.nonSubscriber(_:), v69);
      v50 = v49;
      v51 = v62;
      if (*(v48 + 16) && (v52 = sub_1004124D0(v50), (v53 & 1) != 0))
      {
        v54 = v60;
        (*(v25 + 16))(v60, *(v48 + 56) + *(v25 + 72) * v52, v24);
        v44(v50, v69);

        v45(v54, 0, 1, v24);
        (*(v25 + 32))(v51, v54, v24);
        v45(v51, 0, 1, v24);
      }

      else
      {

        v44(v50, v69);
        v55 = v60;
        v45(v60, 1, 1, v24);
        sub_100742A14();
        if ((*(v25 + 48))(v55, 1, v24) != 1)
        {
          sub_10000C8CC(v55, &unk_100923970);
        }
      }

      sub_1000497C4(v46, v63);
      sub_1000497C4(v51, v64);
      v56 = v65;
      sub_100744BD4();
      sub_10000C8CC(v51, &unk_100923970);
      sub_10000C8CC(v46, &unk_100923970);
      v57 = *(sub_10000C518(&qword_100938EC0) + 48);
      v36 = v70;
      *v70 = 0;
      (*(v66 + 32))(&v36[v57], v56, v67);
      v35 = type metadata accessor for FlowDestination();
      goto LABEL_9;
    }

    if (v32 != enum case for StoreTab.Identifier.featured(_:))
    {
      v58 = type metadata accessor for FlowDestination();
      (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
      return (*(v29 + 8))(v31, v28);
    }

LABEL_17:
    sub_10000C518(&unk_100932490);
    v47 = v70;
    *v70 = 0;
    sub_100742A14();
    v35 = type metadata accessor for FlowDestination();
    swift_storeEnumTagMultiPayload();
    v38 = *(*(v35 - 8) + 56);
    v39 = v47;
    return v38(v39, 0, 1, v35);
  }

  v35 = type metadata accessor for FlowDestination();
  v36 = v70;
LABEL_9:
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v35 - 8) + 56);
  v39 = v36;
  return v38(v39, 0, 1, v35);
}

char *sub_1002D8698(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_itemLayoutContext;
  v12 = sub_1007469A4();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_expandableTextView;
  sub_100016C60(0, &qword_100923500);
  v14 = sub_100753E04();
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v13] = sub_10025F574(v14, 0.0, 0.0, 0.0, 0.0);
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_expandableTextView]];

  return v18;
}

uint64_t type metadata accessor for ParagraphCollectionViewCell()
{
  result = qword_100931300;
  if (!qword_100931300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1002D8C5C(void *a1, char a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v18 - 8);
  v20 = &v48 - v19;
  if (a2)
  {
    v21 = 3;
  }

  else
  {
    v21 = 0;
  }

  if (a1)
  {
    v22 = a9 >= a8 ? a8 : a9;
    if (v22 != 0.0)
    {
      v23 = a1;
      v24 = [a3 traitCollection];
      v25 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v26 = objc_allocWithZone(v25);
      v27 = &v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins];
      *v27 = a4;
      v27[1] = a5;
      v27[2] = a6;
      v27[3] = a7;
      *&v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines] = v21;
      v28 = &v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize];
      *v28 = a8;
      v28[1] = a9;
      *&v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_traitCollection] = v24;
      *&v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_attributedText] = v23;
      v49.receiver = v26;
      v49.super_class = v25;
      v29 = objc_msgSendSuper2(&v49, "init");
      if (qword_1009206A8 != -1)
      {
        swift_once();
      }

      v30 = qword_10092F470;
      v31 = [qword_10092F470 objectForKey:v29];
      if (v31)
      {
        v32 = v31;

        a8 = *&v32[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
      }

      else
      {
        v33 = qword_1009206A0;
        v32 = v23;
        if (v33 != -1)
        {
          swift_once();
        }

        v34 = sub_100750534();
        v35 = sub_10000D0FC(v34, qword_10092F458);
        v36 = *(v34 - 8);
        (*(v36 + 16))(v20, v35, v34);
        (*(v36 + 56))(v20, 0, 1, v34);
        sub_100750964();
        sub_100750984();
        sub_100750974();
        v38 = v37;
        v40 = v39;
        v42 = v41;

        sub_10000C8CC(v20, &unk_100928A40);
        v43 = type metadata accessor for ExpandableTextView.CacheValue();
        v44 = objc_allocWithZone(v43);
        v45 = &v44[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
        *v45 = a8;
        v45[1] = a4 + a6 + v38;
        *(v45 + 2) = v40;
        *(v45 + 3) = v42;
        v48.receiver = v44;
        v48.super_class = v43;
        v46 = objc_msgSendSuper2(&v48, "init");
        [v30 setObject:v46 forKey:v29];
      }
    }
  }

  return a8;
}

uint64_t sub_1002D8FFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002D9044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002D90AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002D90F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:titleSpace:developerSpace:taglineSpace:tertiaryTitleSpace:shareButtonLeadingMargin:offerTopSpace:offerSubtitleSpace:expandedOfferTitleSpace:expandedOfferSubtitleSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, uint64_t a17, __int128 *a18, __int128 *a19)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100012160(a1, (a9 + 4));
  sub_100012160(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v28 = v27[8];
  v29 = sub_10000C518(&unk_1009249B0);
  v30 = *(*(v29 - 8) + 32);
  v30(a9 + v28, a3, v29);
  v30(a9 + v27[9], a4, v29);
  v30(a9 + v27[10], a5, v29);
  v30(a9 + v27[11], a6, v29);
  sub_100012160(a7, a9 + v27[12]);
  sub_100012160(a8, a9 + v27[13]);
  sub_100012160(a16, a9 + v27[14]);
  v30(a9 + v27[15], a17, v29);
  sub_100012160(a18, a9 + v27[16]);
  v31 = a9 + v27[17];

  return sub_100012160(a19, v31);
}

__n128 ProductLockupAccessibilityLayout.init(metrics:iconView:titleText:developerText:taglineText:tertiaryTitleText:offerButton:shareButton:offerSubtitleText:expandedOfferTitleText:expandedOfferSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  sub_1002D94B8(a1, a9 + *(v20 + 64));
  sub_100012160(a2, a9);
  sub_100012160(a3, a9 + 40);
  sub_100012160(a4, a9 + 80);
  sub_100012160(a5, a9 + 120);
  v21 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a6 + 32);
  sub_100012160(a7, a9 + 200);
  v22 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v22;
  *(a9 + 272) = *(a8 + 32);
  sub_100012160(a10, a9 + 280);
  v23 = *(a11 + 16);
  *(a9 + 320) = *a11;
  *(a9 + 336) = v23;
  *(a9 + 352) = *(a11 + 32);
  v24 = *(a12 + 16);
  *(a9 + 360) = *a12;
  *(a9 + 376) = v24;
  *(a9 + 392) = *(a12 + 32);
  *(a9 + 432) = *(a13 + 32);
  v25 = *(a13 + 16);
  *(a9 + 400) = *a13;
  *(a9 + 416) = v25;
  *(a9 + 472) = *(a14 + 32);
  result = *(a14 + 16);
  *(a9 + 440) = *a14;
  *(a9 + 456) = result;
  return result;
}

uint64_t sub_1002D94B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double ProductLockupAccessibilityLayout.measurements(fitting:in:)(void *a1, double a2)
{
  ObjectType = swift_getObjectType();

  return sub_1002DD668(a1, v2, ObjectType, a2);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 52);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 56);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);

  return sub_1002DD6BC(v3, a1);
}

uint64_t ProductLockupAccessibilityLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v293 = a2;
  v13 = sub_100750354();
  v291 = *(v13 - 8);
  v292 = v13;
  __chkstk_darwin(v13);
  v290 = &v276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007488F4();
  v288 = *(v15 - 8);
  v289 = v15;
  __chkstk_darwin(v15);
  v304 = &v276 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_1007488D4();
  v323 = *(v312 - 8);
  __chkstk_darwin(v312);
  v279 = &v276 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v294 = &v276 - v19;
  __chkstk_darwin(v20);
  v278 = &v276 - v21;
  __chkstk_darwin(v22);
  v302 = &v276 - v23;
  __chkstk_darwin(v24);
  v276 = &v276 - v25;
  __chkstk_darwin(v26);
  v277 = &v276 - v27;
  v339 = sub_100748884();
  v344 = *(v339 - 8);
  __chkstk_darwin(v339);
  v315 = &v276 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = sub_1007488A4();
  v342 = *(v343 - 8);
  __chkstk_darwin(v343);
  v317 = &v276 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = sub_1007488C4();
  v345 = *(v340 - 8);
  __chkstk_darwin(v340);
  v338 = &v276 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100754724();
  v32 = *(v31 - 8);
  *&v33 = __chkstk_darwin(v31).n128_u64[0];
  v35 = &v276 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [a1 traitCollection];
  v305 = sub_1007537E4();

  v37 = v7 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10000C888((v37 + 32), *(v37 + 56));
  sub_100536120();
  sub_100750564();
  v39 = v38;
  v40 = *(v32 + 8);
  v40(v35, v31);
  sub_10000C888((v37 + 72), *(v37 + 96));
  sub_100536120();
  sub_100750564();
  v42 = v41;
  v307 = v35;
  v308 = v32 + 8;
  v43 = v35;
  v44 = v314;
  v309 = v31;
  v306 = v40;
  v40(v43, v31);
  v45 = v37;
  v46 = *(v37 + 8);
  v47 = v39 + *v37;
  v287 = v42;
  v298 = a3;
  v48 = a3;
  v49 = a4;
  v50 = a4;
  v51 = a5;
  v52 = a5;
  v53 = a6;
  v54 = sub_10010FD98(v48, v50, v52, a6, v47, v46);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_100016B4C((v44 + 30), v359, &unk_100928A00);
  v341 = a1;
  v303 = v60;
  if (v360)
  {
    sub_10000C888(v359, v360);
    sub_100750414();
    v295 = v61;
    v63 = v62;
    sub_10000C620(v359);
  }

  else
  {
    sub_10000C8CC(v359, &unk_100928A00);
    v295 = 0.0;
    v63 = 0;
  }

  v280 = v63;
  sub_100016B4C((v44 + 30), v359, &unk_100928A00);
  v64 = v360;
  sub_10000C8CC(v359, &unk_100928A00);
  v296 = v53;
  v297 = v39;
  v299 = v49;
  v300 = v51;
  if (v64)
  {
    v65 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000C888((v37 + *(v65 + 48)), *(v37 + *(v65 + 48) + 24));
    v66 = v307;
    sub_100536120();
    v67 = v341;
    sub_100750564();
    v69 = v68;
    v306(v66, v309);
  }

  else
  {
    v69 = 0.0;
    v67 = v341;
  }

  v70 = [v67 traitCollection];
  v71 = sub_1007537F4();

  v367.origin.x = v54;
  v367.origin.y = v56;
  v367.size.width = v58;
  v72 = v303;
  v367.size.height = v303;
  MinX = CGRectGetMinX(v367);
  v74 = v295;
  v75 = v69 + v295 + MinX;
  v368.origin.x = v54;
  v368.origin.y = v56;
  v368.size.width = v58;
  v368.size.height = v72;
  Width = CGRectGetWidth(v368);
  if (v305)
  {
    v77 = Width - v74 - v69;
  }

  else
  {
    v77 = Width;
  }

  if ((v305 & 1 & v71) != 0)
  {
    v78 = v75;
  }

  else
  {
    v78 = MinX;
  }

  v283 = v78;
  v369.origin.x = v54;
  v369.origin.y = v56;
  v369.size.width = v58;
  v369.size.height = v72;
  MinY = CGRectGetMinY(v369);
  v285 = v56;
  v286 = v54;
  v370.origin.x = v54;
  v370.origin.y = v56;
  v284 = v58;
  v370.size.width = v58;
  v370.size.height = v72;
  Height = CGRectGetHeight(v370);
  sub_10000C888(v44, v44[3]);
  v80 = *(v37 + 120);
  sub_1007503E4();
  v81 = v44[13];
  v337 = v44 + 10;
  sub_10000C888(v44 + 10, v81);
  sub_100750404();
  v83 = v82;
  v85 = v84;
  v86 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v87 = v45;
  v88 = (v45 + *(v86 + 36));
  *&v356 = v67;
  v89 = sub_10000C518(&unk_1009249B0);
  v336 = v88;
  sub_100743464();
  *&v356 = v359[0];
  sub_100750584();
  v91 = v83 - v85 + v90;
  v92 = (v44 + 15);
  sub_10000C888(v44 + 15, v44[18]);
  sub_100750404();
  v94 = v93;
  v96 = v95;
  v321 = v86;
  v322 = v87;
  *&v356 = v67;
  v311 = v89;
  sub_100743464();
  *&v356 = v359[0];
  sub_100750584();
  v98 = v94 - v96 + v97;
  if (v98 >= v91)
  {
    sub_10000C824(v92, &v356);
    v92 = v337;
  }

  else
  {
    sub_10000C824(v337, &v356);
  }

  v99 = v323;
  v100 = v339;
  v101 = v344;
  sub_10000C824(v92, &v353);
  v102 = v341;
  *&v350 = v341;
  sub_100743464();
  v103 = v359[0];
  *&v350 = v102;
  sub_100743464();
  v104 = v359[0];
  if (v98 >= v91)
  {
    v105 = v359[0];
  }

  else
  {
    v105 = v103;
  }

  *(&v351 + 1) = &type metadata for CGFloat;
  v352 = &protocol witness table for CGFloat;
  *&v350 = v105;
  if (v98 >= v91)
  {
    v104 = v103;
  }

  *(&v348 + 1) = &type metadata for CGFloat;
  v349 = &protocol witness table for CGFloat;
  *&v347 = v104;
  sub_100012160(&v356, v359);
  sub_10000C824(&v350, &v362);
  sub_100012160(&v353, v363);
  sub_100012160(&v347, v365);
  sub_10000C620(&v350);
  v106 = v314;
  sub_10000C888(v314 + 25, v314[28]);
  sub_100750414();
  v108 = v107;
  sub_10000C518(&qword_10092C0B8);
  v316 = *(v99 + 72);
  v109 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v281 = 2 * v316;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1007A5620;
  v313 = v109;
  v301 = v110;
  v310 = (v110 + v109);
  *(&v357 + 1) = &type metadata for CGFloat;
  v358 = &protocol witness table for CGFloat;
  *&v356 = v80;
  v355 = 0;
  v353 = 0u;
  v354 = 0u;
  v320 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v336 = *(*&v345 + 104);
  v337 = (*&v345 + 104);
  v111 = v338;
  v336();
  v335 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v112 = v342;
  v333 = *(v342 + 104);
  v334 = v342 + 104;
  v113 = v106;
  v114 = v317;
  v333();
  v115 = sub_10000C518(&unk_100931370);
  v116 = *(*&v101 + 72);
  v330 = *(*&v101 + 80);
  v331 = v115;
  v332 = (v330 + 32) & ~v330;
  v329 = v332 + v116;
  v117 = swift_allocObject();
  v328 = xmmword_1007A5A00;
  *(v117 + 16) = xmmword_1007A5A00;
  sub_100748854();
  *&v350 = v117;
  v327 = sub_1002DD7A4(&qword_10092C0C0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v326 = sub_10000C518(&unk_100931380);
  v325 = sub_1001C4F00();
  v118 = v101;
  v119 = v315;
  sub_1007543A4();
  sub_1007488B4();
  v324 = *(*&v118 + 8);
  v324(v119, v100);
  v120 = *(v112 + 8);
  v342 = v112 + 8;
  v319 = v120;
  v120(v114, v343);
  v121 = *(*&v345 + 8);
  *&v345 += 8;
  v318 = v121;
  v122 = v340;
  v121(v111, v340);
  sub_10000C8CC(&v353, &qword_100931390);
  sub_10000C620(&v356);
  v123 = v106[8];
  v124 = v106[9];
  v125 = sub_10000C888(v113 + 5, v113[8]);
  *(&v357 + 1) = v123;
  v358 = *(v124 + 8);
  v126 = sub_10000D134(&v356);
  (*(*(v123 - 8) + 16))(v126, v125, v123);
  v127 = v100;
  *&v344 = *&v118 + 8;
  *&v350 = v341;
  sub_100743464();
  v128 = *&v353;
  sub_10000C888(v113 + 5, v113[8]);
  sub_100750844();
  *(&v354 + 1) = &type metadata for CGFloat;
  v355 = &protocol witness table for CGFloat;
  *&v353 = v128 + v129;
  v352 = 0;
  v350 = 0u;
  v351 = 0u;
  v130 = v338;
  v131 = v122;
  (v336)(v338, v320, v122);
  v132 = v317;
  v133 = v343;
  (v333)(v317, v335, v343);
  v134 = swift_allocObject();
  *(v134 + 16) = v328;
  sub_100748854();
  *&v347 = v134;
  sub_1007543A4();
  sub_1007488B4();
  v324(v119, v127);
  v135 = v133;
  v319(v132, v133);
  v318(v130, v131);
  sub_10000C8CC(&v350, &qword_100931390);
  sub_10000C620(&v353);
  sub_10000C620(&v356);
  v136 = v360;
  v137 = v361;
  v138 = sub_10000C888(v359, v360);
  *(&v357 + 1) = v136;
  v358 = *(v137 + 8);
  v139 = sub_10000D134(&v356);
  (*(*(v136 - 8) + 16))(v139, v138, v136);
  v355 = 0;
  v353 = 0u;
  v354 = 0u;
  v140 = v320;
  (v336)(v130, v320, v131);
  v141 = v339;
  (v333)(v132, v335, v135);
  v142 = swift_allocObject();
  *(v142 + 16) = v328;
  sub_100748854();
  *&v350 = v142;
  sub_1007543A4();
  sub_1007488B4();
  v324(v119, v141);
  v143 = v319;
  v319(v132, v135);
  v144 = v143;
  v145 = v318;
  v318(v130, v131);
  sub_10000C8CC(&v353, &qword_100931390);
  sub_10000C620(&v356);
  sub_100016B4C((v314 + 20), &v353, &qword_10092BC30);
  if (*(&v354 + 1))
  {
    v146 = v140;
    v147 = v145;
    sub_100012160(&v353, &v356);
    v148 = *(&v357 + 1);
    v149 = v358;
    v150 = v144;
    v151 = sub_10000C888(&v356, *(&v357 + 1));
    *(&v354 + 1) = v148;
    v355 = v149[1];
    v152 = sub_10000D134(&v353);
    (*(*(v148 - 8) + 16))(v152, v151, v148);
    *&v347 = v341;
    *(&v351 + 1) = &type metadata for CGFloat;
    v352 = &protocol witness table for CGFloat;
    sub_100743464();
    v349 = 0;
    v347 = 0u;
    v348 = 0u;
    v153 = v338;
    v154 = v340;
    (v336)(v338, v146, v340);
    v155 = v317;
    v156 = v343;
    (v333)(v317, v335, v343);
    v157 = swift_allocObject();
    *(v157 + 16) = v328;
    sub_100748854();
    v346 = v157;
    v158 = v315;
    v159 = v339;
    sub_1007543A4();
    v160 = v277;
    sub_1007488B4();
    v324(v158, v159);
    v150(v155, v156);
    v147(v153, v154);
    sub_10000C8CC(&v347, &qword_100931390);
    sub_10000C620(&v350);
    sub_10000C620(&v353);
    v161 = v301;
    v163 = *(v301 + 2);
    v162 = *(v301 + 3);
    if (v163 >= v162 >> 1)
    {
      v161 = sub_100254BF4(v162 > 1, v163 + 1, 1, v301);
    }

    v165 = v312;
    v164 = v313;
    v166 = v323;
    *(v161 + 2) = v163 + 1;
    (*(v166 + 32))(&v161[v164 + v163 * v316], v160, v165);
    sub_10000C620(&v356);
  }

  else
  {
    sub_10000C8CC(&v353, &qword_10092BC30);
    v165 = v312;
    v158 = v315;
    v155 = v317;
    v161 = v301;
  }

  v167 = v314;
  sub_10000C888(v314 + 25, v314[28]);
  if (sub_1007503A4())
  {
    v168 = v158;
    v169 = v161;
    v170 = v320;
    v171 = v336;
  }

  else
  {
    sub_10000C888((v322 + *(v321 + 52)), *(v322 + *(v321 + 52) + 24));
    v301 = v161;
    v172 = v307;
    sub_100536120();
    sub_100750564();
    v174 = v173;
    v175 = v315;
    v306(v172, v309);
    *(&v357 + 1) = &type metadata for CGFloat;
    v358 = &protocol witness table for CGFloat;
    *&v356 = v108 + v174;
    v355 = 0;
    v353 = 0u;
    v354 = 0u;
    v176 = v338;
    v177 = v340;
    (v336)(v338, v320, v340);
    v178 = v343;
    (v333)(v155, v335, v343);
    v179 = swift_allocObject();
    *(v179 + 16) = v328;
    sub_100748854();
    *&v350 = v179;
    v180 = v339;
    sub_1007543A4();
    v181 = v276;
    sub_1007488B4();
    v324(v175, v180);
    v319(v155, v178);
    v182 = v177;
    v183 = v301;
    v318(v176, v182);
    sub_10000C8CC(&v353, &qword_100931390);
    sub_10000C620(&v356);
    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_100254BF4(v184 > 1, v185 + 1, 1, v183);
    }

    v186 = v323;
    *(v183 + 2) = v185 + 1;
    (*(v186 + 32))(&v183[v313 + v185 * v316], v181, v165);
    v167 = v314;
    v168 = v315;
    v169 = v183;
    v170 = v320;
    v171 = v336;
  }

  v358 = 0;
  v356 = 0u;
  v357 = 0u;
  v187 = v338;
  v188 = v340;
  (v171)(v338, v170, v340);
  v189 = v317;
  v190 = v343;
  (v333)(v317, v335, v343);
  v191 = swift_allocObject();
  *(v191 + 16) = v328;
  sub_100748854();
  *&v353 = v191;
  v192 = v339;
  sub_1007543A4();
  sub_1007488B4();
  v324(v168, v192);
  v319(v189, v190);
  v318(v187, v188);
  sub_10000C8CC(&v356, &qword_100931390);
  v194 = *(v169 + 2);
  v193 = *(v169 + 3);
  v195 = v169;
  if (v194 >= v193 >> 1)
  {
    v195 = sub_100254BF4(v193 > 1, v194 + 1, 1, v169);
  }

  v196 = v323;
  *(v195 + 2) = v194 + 1;
  v198 = *(v196 + 32);
  v197 = v196 + 32;
  v310 = v198;
  v198(&v195[v313 + v194 * v316], v302, v312);
  sub_100016B4C((v167 + 30), &v353, &unk_100928A00);
  v199 = v317;
  if (*(&v354 + 1))
  {
    sub_100012160(&v353, &v356);
    sub_10000C888(v167 + 25, v167[28]);
    if (v305 & 1 | ((sub_1007503A4() & 1) == 0))
    {
      sub_10000C620(&v356);
    }

    else
    {
      *(&v354 + 1) = &type metadata for CGFloat;
      v355 = &protocol witness table for CGFloat;
      *&v353 = v280;
      v352 = 0;
      v350 = 0u;
      v351 = 0u;
      v200 = v338;
      (v336)(v338, v320, v340);
      v201 = v343;
      (v333)(v199, v335, v343);
      v202 = swift_allocObject();
      *(v202 + 16) = v328;
      sub_100748854();
      *&v347 = v202;
      v203 = v315;
      v204 = v339;
      sub_1007543A4();
      sub_1007488B4();
      v324(v203, v204);
      v319(v199, v201);
      v318(v200, v340);
      sub_10000C8CC(&v350, &qword_100931390);
      sub_10000C620(&v353);
      v206 = *(v195 + 2);
      v205 = *(v195 + 3);
      if (v206 >= v205 >> 1)
      {
        v195 = sub_100254BF4(v205 > 1, v206 + 1, 1, v195);
      }

      sub_10000C620(&v356);
      *(v195 + 2) = v206 + 1;
      v310(&v195[v313 + v206 * v316], v278, v312);
    }
  }

  else
  {
    sub_10000C8CC(&v353, &unk_100928A00);
  }

  sub_100016B4C((v167 + 40), &v353, &qword_10092BC30);
  v323 = v197;
  if (*(&v354 + 1))
  {
    sub_100012160(&v353, &v356);
    v207 = *(&v357 + 1);
    v208 = v358;
    v209 = sub_10000C888(&v356, *(&v357 + 1));
    *(&v354 + 1) = v207;
    v355 = v208[1];
    v210 = sub_10000D134(&v353);
    (*(*(v207 - 8) + 16))(v210, v209, v207);
    *&v347 = v341;
    *(&v351 + 1) = &type metadata for CGFloat;
    v352 = &protocol witness table for CGFloat;
    sub_100743464();
    v349 = 0;
    v347 = 0u;
    v348 = 0u;
    v211 = v195;
    v212 = v338;
    v213 = v340;
    (v336)(v338, v320, v340);
    v214 = v343;
    (v333)(v199, v335, v343);
    v215 = swift_allocObject();
    *(v215 + 16) = v328;
    sub_100748854();
    v346 = v215;
    v216 = v315;
    v217 = v339;
    sub_1007543A4();
    sub_1007488B4();
    v324(v216, v217);
    v319(v199, v214);
    v218 = v212;
    v195 = v211;
    v318(v218, v213);
    sub_10000C8CC(&v347, &qword_100931390);
    sub_10000C620(&v350);
    sub_10000C620(&v353);
    v220 = *(v211 + 2);
    v219 = *(v211 + 3);
    if (v220 >= v219 >> 1)
    {
      v195 = sub_100254BF4(v219 > 1, v220 + 1, 1, v211);
    }

    *(v195 + 2) = v220 + 1;
    v310(&v195[v313 + v220 * v316], v294, v312);
    sub_10000C620(&v356);
  }

  else
  {
    sub_10000C8CC(&v353, &qword_10092BC30);
  }

  sub_100016B4C((v167 + 45), &v353, &qword_10092BC30);
  if (*(&v354 + 1))
  {
    v221 = v315;
    v222 = v343;
    sub_100012160(&v353, &v356);
    v223 = *(&v357 + 1);
    v224 = v358;
    v225 = sub_10000C888(&v356, *(&v357 + 1));
    *(&v354 + 1) = v223;
    v355 = v224[1];
    v226 = sub_10000D134(&v353);
    (*(*(v223 - 8) + 16))(v226, v225, v223);
    v352 = 0;
    v350 = 0u;
    v351 = 0u;
    v227 = v338;
    v228 = v195;
    v229 = v340;
    (v336)(v338, v320, v340);
    (v333)(v199, v335, v222);
    v230 = swift_allocObject();
    *(v230 + 16) = v328;
    sub_100748854();
    *&v347 = v230;
    v231 = v339;
    sub_1007543A4();
    v232 = v279;
    sub_1007488B4();
    v324(v221, v231);
    v319(v199, v222);
    v233 = v229;
    v234 = v228;
    v318(v227, v233);
    sub_10000C8CC(&v350, &qword_100931390);
    sub_10000C620(&v353);
    v235 = *(v228 + 2);
    v236 = *(v234 + 3);
    if (v235 >= v236 >> 1)
    {
      v234 = sub_100254BF4(v236 > 1, v235 + 1, 1, v234);
    }

    *(v234 + 2) = v235 + 1;
    v310(&v234[v313 + v235 * v316], v232, v312);
    sub_10000C620(&v356);
  }

  else
  {
    sub_10000C8CC(&v353, &qword_10092BC30);
  }

  sub_100748894();
  v237 = v290;
  v239 = MinY;
  v238 = v283;
  sub_100748844();
  sub_10000C888(v167 + 5, v167[8]);
  sub_100750404();
  v343 = v240;
  v242 = v241;
  sub_10000C888(v167 + 5, v167[8]);
  sub_100750384();
  v243 = CGRectGetMaxY(v371) - v242;
  v372.origin.x = v238;
  v372.origin.y = v239;
  v372.size.width = v77;
  v372.size.height = Height;
  v244 = CGRectGetMinX(v372);
  v373.origin.x = v238;
  v373.origin.y = v239;
  v373.size.width = v77;
  v373.size.height = Height;
  v245 = CGRectGetWidth(v373);
  sub_100750344();
  v247 = v246;
  v374.origin.x = v238;
  v374.origin.y = v239;
  v374.size.width = v77;
  v374.size.height = Height;
  v248 = v247 + CGRectGetHeight(v374) - v243;
  sub_10000C888(v363, v364);
  sub_100750404();
  v344 = v244;
  v375.origin.x = v244;
  v375.origin.y = v243;
  v375.size.width = v245;
  v375.size.height = v248;
  v345 = CGRectGetMinX(v375);
  v376.origin.x = v244;
  v376.origin.y = v243;
  v376.size.width = v245;
  v376.size.height = v248;
  CGRectGetMinY(v376);
  sub_10000C888(v365, v365[3]);
  sub_100750584();
  sub_10000C888(v363, v364);
  sub_100753B24();
  sub_100750394();
  sub_100016B4C((v167 + 30), &v353, &unk_100928A00);
  if (!*(&v354 + 1))
  {
    sub_10000C8CC(&v353, &unk_100928A00);
    v249 = v296;
    v251 = v285;
    v250 = v286;
    goto LABEL_56;
  }

  sub_100012160(&v353, &v356);
  v249 = v296;
  v251 = v285;
  v250 = v286;
  if ((v305 & 1) == 0)
  {
    sub_10000C888(v167 + 25, v167[28]);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(v167 + 25, v167[28]);
      sub_100750384();
      CGRectGetMidY(v378);
      goto LABEL_58;
    }

    sub_10000C620(&v356);
LABEL_56:
    v252 = v284;
    v253 = v303;
    goto LABEL_59;
  }

  sub_10000C888(v167 + 5, v167[8]);
  sub_100750384();
  CGRectGetMinY(v377);
LABEL_58:
  v379.origin.x = v250;
  v379.origin.y = v251;
  v252 = v284;
  v379.size.width = v284;
  v253 = v303;
  v379.size.height = v303;
  CGRectGetMaxX(v379);
  sub_10000C888(&v356, *(&v357 + 1));
  v249 = v296;
  sub_100753B24();
  sub_100750394();
  sub_10000C620(&v356);
LABEL_59:
  v380.origin.x = v250;
  v380.origin.y = v251;
  v380.size.width = v252;
  v380.size.height = v253;
  v254 = CGRectGetWidth(v380);
  v255 = sub_100750324();
  *v256 = v254;
  v255(&v356, 0);
  v257 = (v322 + *(v321 + 68));
  sub_10000C888(v257, v257[3]);
  v258 = v307;
  sub_100536120();
  sub_100750564();
  v260 = v259;
  v306(v258, v309);
  v261 = sub_100750324();
  *(v262 + 8) = v260 + *(v262 + 8);
  v261(&v356, 0);
  sub_100016B4C((v167 + 50), &v353, &unk_100928A00);
  if (*(&v354 + 1))
  {
    sub_100012160(&v353, &v356);
    sub_10000C888(&v356, *(&v357 + 1));
    v264 = v298;
    v263 = v299;
    v381.origin.x = v298;
    v381.origin.y = v299;
    v265 = v300;
    v381.size.width = v300;
    v381.size.height = v249;
    CGRectGetMinX(v381);
    v382.origin.x = v264;
    v382.origin.y = v263;
    v382.size.width = v265;
    v382.size.height = v249;
    CGRectGetMinY(v382);
    v383.origin.x = v264;
    v383.origin.y = v263;
    v383.size.width = v265;
    v383.size.height = v249;
    CGRectGetWidth(v383);
    sub_100750394();
    sub_10000C620(&v356);
  }

  else
  {
    sub_10000C8CC(&v353, &unk_100928A00);
  }

  sub_100016B4C((v167 + 55), &v353, &unk_100928A00);
  if (*(&v354 + 1))
  {
    sub_100012160(&v353, &v356);
    sub_10000C888(&v356, *(&v357 + 1));
    v266 = v298;
    v267 = v299;
    v384.origin.x = v298;
    v384.origin.y = v299;
    v268 = v300;
    v384.size.width = v300;
    v384.size.height = v249;
    CGRectGetMinX(v384);
    v385.origin.x = v266;
    v385.origin.y = v267;
    v385.size.width = v268;
    v385.size.height = v249;
    CGRectGetMaxY(v385);
    v269 = v287;
    sub_10000C888(v257, v257[3]);
    v270 = v307;
    sub_100536120();
    sub_100750564();
    v306(v270, v309);
    v386.origin.x = v266;
    v386.origin.y = v267;
    v386.size.width = v268;
    v386.size.height = v249;
    CGRectGetWidth(v386);
    sub_100750394();
    sub_10000C620(&v356);
  }

  else
  {
    sub_10000C8CC(&v353, &unk_100928A00);
    v269 = v287;
  }

  v271 = sub_100750324();
  *(v272 + 8) = v297 + *(v272 + 8);
  v271(&v356, 0);
  v273 = sub_100750324();
  *(v274 + 8) = v269 + *(v274 + 8);
  v273(&v356, 0);
  (*(v288 + 8))(v304, v289);
  sub_10000C620(v366);
  (*(v291 + 32))(v293, v237, v292);
  return sub_10000C8CC(v359, &unk_10092F7A0);
}

double ProductLockupAccessibilityLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1002DC874(a1, v1);
}

double sub_1002DC874(uint64_t a1, void *a2)
{
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a2 + 35, a2[38]);
  v8 = sub_1007503A4();
  v9 = 0.0;
  v10 = 0.0;
  if ((v8 & 1) == 0)
  {
    sub_10000C888(a2 + 35, a2[38]);
    sub_100750404();
    v12 = v11;
    v9 = v13;
    v14 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000C888(&v14[*(v15 + 56)], *&v14[*(v15 + 56) + 24]);
    sub_100750584();
    v10 = v12 - v9 + v16;
  }

  v46 = v10;
  sub_100016B4C((a2 + 40), &v48, &qword_10092BC30);
  if (v49)
  {
    sub_100012160(&v48, v50);
    sub_10000C888(v50, v51);
    sub_100750404();
    v18 = v17;
    v9 = v19;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v47 = a1;
    sub_10000C518(&unk_1009249B0);
    sub_100743464();
    v47 = v48;
    v20 = v18;
    sub_100750584();
    v22 = v21;
    sub_10000C620(v50);
    v45 = v9;
  }

  else
  {
    sub_10000C8CC(&v48, &qword_10092BC30);
    v20 = JUMeasurementsZero[1];
    v45 = JUMeasurementsZero[3];
    v22 = 0.0;
  }

  sub_100016B4C((a2 + 45), &v48, &qword_10092BC30);
  if (v49)
  {
    sub_100012160(&v48, v50);
    sub_10000C888(v50, v51);
    sub_100750404();
    v24 = v23;
    v44 = v22;
    v9 = v25;
    v26 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000C888(&v26[*(v27 + 64)], *&v26[*(v27 + 64) + 24]);
    sub_100536120();
    sub_100750564();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    *&v48 = v29;
    v22 = v44;
    sub_100750584();
    v31 = v30;
    sub_10000C620(v50);
    v32 = v9;
  }

  else
  {
    sub_10000C8CC(&v48, &qword_10092BC30);
    v24 = JUMeasurementsZero[1];
    v32 = JUMeasurementsZero[3];
    v31 = 0.0;
  }

  sub_10000C888(a2 + 25, a2[28]);
  sub_100750414();
  v34 = v24 - v32 + v31 + v20 - v45 + v22 + v46 + v33;
  v35 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10000C888(v35 + 9, *(v35 + 12));
  sub_100536120();
  sub_100750564();
  v37 = v36;
  v38 = *(v5 + 8);
  v38(v7, v4);
  v39 = v34 + v37;
  v40 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_10000C888(&v35[*(v40 + 68)], *&v35[*(v40 + 68) + 24]);
  sub_100536120();
  sub_100750564();
  v42 = v41;
  v38(v7, v4);
  return v9 + v39 + v42;
}

double sub_1002DCDFC(void *a1, void *a2, uint64_t a3, double a4)
{
  v87 = a3;
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v92 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v11 = *v10;
  v12 = a4 - v10[1];
  v14 = v10[2];
  v13 = v10[3];
  v90 = v10;
  v15 = v12 - v13;
  v85 = v14;
  v86 = v11;
  v16 = a4 - v11 - v14;
  v17 = [a1 traitCollection];
  v18 = sub_1007537E4();

  sub_100016B4C((a2 + 30), v102, &unk_100928A00);
  if (v103)
  {
    sub_10000C888(v102, v103);
    sub_100750414();
    v20 = v19;
    sub_10000C620(v102);
  }

  else
  {
    sub_10000C8CC(v102, &unk_100928A00);
    v20 = 0.0;
  }

  sub_100016B4C((a2 + 30), v102, &unk_100928A00);
  v21 = v103;
  sub_10000C8CC(v102, &unk_100928A00);
  v88 = v8;
  v89 = v7;
  if (v21)
  {
    v22 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000C888((v90 + *(v22 + 48)), *(v90 + *(v22 + 48) + 24));
    v23 = v92;
    sub_100536120();
    sub_100750564();
    v25 = v24;
    (*(v8 + 8))(v23, v7);
    if (v18)
    {
LABEL_6:
      v26 = v15 - v20 - v25;
      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0.0;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v26 = v15;
LABEL_9:
  v91 = v26;
  sub_10000C888(a2 + 5, a2[8]);
  sub_100750404();
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v100 = a1;
  sub_10000C518(&unk_1009249B0);
  v32 = a2;
  v33 = v90;
  sub_100743464();
  *&v100 = v102[0];
  v82 = v30;
  v83 = v28;
  sub_100750584();
  v81 = v34;
  sub_10000C888(v32 + 5, v32[8]);
  sub_100750844();
  v80 = v35;
  sub_10000C888(v32 + 10, v32[13]);
  sub_100750404();
  v37 = v36;
  v39 = v38;
  v40 = *(v31 + 36);
  *&v100 = a1;
  v79 = v40;
  v41 = v33;
  sub_100743464();
  *&v100 = v102[0];
  sub_100750584();
  v42 = v16;
  v44 = v37 - v39 + v43;
  v45 = (v32 + 15);
  v93 = v32;
  sub_10000C888(v32 + 15, v32[18]);
  v84 = v42;
  sub_100750404();
  v47 = v46;
  v49 = v48;
  *&v100 = a1;
  sub_100743464();
  *&v100 = v102[0];
  sub_100750584();
  v51 = v47 - v49 + v50;
  if (v51 >= v44)
  {
    sub_10000C824(v45, &v100);
    v45 = (v32 + 10);
  }

  else
  {
    sub_10000C824((v32 + 10), &v100);
  }

  sub_10000C824(v45, &v98);
  v97[0] = a1;
  sub_100743464();
  v52 = v102[0];
  v97[0] = a1;
  sub_100743464();
  v53 = v102[0];
  if (v51 >= v44)
  {
    v54 = v102[0];
  }

  else
  {
    v54 = v52;
  }

  v97[3] = &type metadata for CGFloat;
  v97[4] = &protocol witness table for CGFloat;
  v97[0] = v54;
  if (v51 >= v44)
  {
    v53 = v52;
  }

  v95 = &type metadata for CGFloat;
  v96 = &protocol witness table for CGFloat;
  *&v94 = v53;
  sub_100012160(&v100, v102);
  sub_10000C824(v97, v104);
  sub_100012160(&v98, &v105);
  sub_100012160(&v94, &v106);
  sub_10000C620(v97);
  sub_10000C888(v102, v103);
  sub_100750404();
  v56 = v55;
  v58 = v57;
  sub_10000C888(v104, v104[3]);
  sub_100750584();
  v60 = v59;
  sub_100016B4C((v93 + 20), &v98, &qword_10092BC30);
  v61 = v89;
  if (v99)
  {
    sub_100012160(&v98, &v100);
    sub_10000C888(&v100, v101);
    sub_100750404();
    v63 = v62;
    v65 = v64;
    v97[0] = a1;
    sub_100743464();
    v97[0] = v98;
    sub_100750584();
    v67 = v63 - v65 + v66;
    sub_10000C620(&v100);
  }

  else
  {
    sub_10000C8CC(&v98, &qword_10092BC30);
    v67 = 0.0;
  }

  v68 = v88;
  v69 = v67 + v56 - v58 + v60 + v83 - v82 + v81 + v80 + v41[15];
  sub_10000C888((v41 + *(v31 + 52)), *(v41 + *(v31 + 52) + 24));
  v70 = v92;
  sub_100536120();
  sub_100750564();
  v72 = v71;
  v73 = *(v68 + 8);
  v73(v70, v61);
  v74 = v69 + v72 + sub_1002DC874(a1, v93);
  sub_10000C888(v41 + 4, *(v41 + 7));
  sub_100536120();
  sub_100750564();
  v76 = v75;
  v73(v70, v61);
  v77 = v85 + v86 + v74 + v76;
  sub_10000C8CC(v102, &unk_10092F7A0);
  return v77;
}

double sub_1002DD668(void *a1, void *a2, uint64_t a3, double a4)
{
  sub_1002DCDFC(a1, a2, a3, a4);
  type metadata accessor for ProductLockupAccessibilityLayout(0);
  return a4;
}

uint64_t sub_1002DD6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DD720(uint64_t a1)
{
  *(a1 + 8) = sub_1002DD7A4(&unk_10092F790, type metadata accessor for ProductLockupAccessibilityLayout);
  result = sub_1002DD7A4(&qword_100931398, type metadata accessor for ProductLockupAccessibilityLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002DD7A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002DD800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002DD8C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002DD964()
{
  sub_100110300(319, &unk_10092C900);
  if (v0 <= 0x3F)
  {
    sub_100110300(319, &qword_10092D510);
    if (v1 <= 0x3F)
    {
      sub_100110090(319, &unk_10092C910, &unk_10092D520);
      if (v2 <= 0x3F)
      {
        sub_100110090(319, &qword_10092C920, &qword_100926520);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ProductLockupAccessibilityLayout.Metrics(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1002DDAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C518(&unk_1009249B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002DDB88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C518(&unk_1009249B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002DDC38()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_100110300(319, &qword_1009289A0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1001F0280();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_1002DDD18(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock];
  v13 = type metadata accessor for SearchResultCollectionViewCell();
  *v12 = 0;
  *(v12 + 1) = 0;
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v18;
}

void sub_1002DDF88(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
  if (v2)
  {
    if (a1)
    {
      if (v2 == a1)
      {
        return;
      }

      v5 = v2;
      [a1 removeFromSuperview];
    }

    else
    {
      v3 = v2;
    }

    v16 = v2;
    v6 = [v1 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v16 setFrame:{v8, v10, v12, v14}];
    v15 = [v1 contentView];
    [v15 addSubview:v16];

    [v1 setNeedsLayout];
  }
}

void (*sub_1002DE0D8(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    v4 = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4;
  v4 = sub_100747E14();
  v7 = v6;

LABEL_6:
  *a1 = v4;
  a1[1] = v7;
  return sub_1002DE198;
}

void sub_1002DE198(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[3]);
  if (a2)
  {
    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_10001B5AC(v2);
        v4 = v3;
        sub_100747E24();
      }
    }

    goto LABEL_10;
  }

  if (!v3 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {
LABEL_10:

    sub_1000164A8(v2);
    return;
  }

  v5 = v3;
  sub_100747E24();
}

void sub_1002DE2D4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v3 && (swift_getObjectType(), swift_conformsToProtocol2()))
  {
    if (a1)
    {
      sub_1002E1C14(&qword_1009230E0, type metadata accessor for VideoView);
    }

    swift_getObjectType();
    v6 = a1;
    v5 = v3;
    sub_100748FC4();

    v4 = v6;
  }

  else
  {
    v4 = a1;
  }
}

uint64_t sub_1002DE3D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1)
  {
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      return result;
    }

    v3 = v1;
    v4 = sub_100748FB4();

    if (v4)
    {
      type metadata accessor for VideoView();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void (*sub_1002DE478(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v4;
    v7 = sub_100748FB4();

    if (!v7)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    type metadata accessor for VideoView();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {

      goto LABEL_6;
    }
  }

LABEL_7:
  *a1 = v5;
  return sub_1002DE54C;
}

void sub_1002DE54C(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    if (v5)
    {
      v11 = v4;
      swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      v4 = v11;
      if (v6)
      {
        if (v11)
        {
          sub_1002E1C14(&qword_1009230E0, type metadata accessor for VideoView);
        }

        v7 = v11;
        v8 = v5;
        sub_100748FC4();

LABEL_11:
        v4 = v11;
      }
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v11 = v4;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_11;
    }

    if (v11)
    {
      sub_1002E1C14(&qword_1009230E0, type metadata accessor for VideoView);
    }

    v9 = v11;
    v10 = v5;
    sub_100748FC4();

    v4 = v9;
  }

LABEL_13:
}

id sub_1002DE70C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000C518(&qword_100931598), sub_10000C518(&qword_100923C10), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000C888(&v8, *(&v9 + 1));
      v5 = (*(v4 + 8))(v3, v4);
      sub_10000C620(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000C8CC(&v8, &qword_100923C18);

  return v7;
}

id sub_1002DE838()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000C518(&qword_100931598), sub_10000C518(&qword_100923C10), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000C888(&v8, *(&v9 + 1));
      v5 = (*(v4 + 16))(v3, v4);
      sub_10000C620(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000C8CC(&v8, &qword_100923C18);

  return v7;
}

id sub_1002DE964()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000C518(&qword_100931598), sub_10000C518(&qword_100923C10), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000C888(&v8, *(&v9 + 1));
      v5 = (*(v4 + 24))(v3, v4);
      sub_10000C620(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000C8CC(&v8, &qword_100923C18);

  return v7;
}

uint64_t sub_1002DEA90()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000C518(&qword_100931598), sub_10000C518(&qword_100923C10), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10000C888(&v6, *(&v7 + 1));
      (*(v4 + 32))(v3, v4);
      return sub_10000C620(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10000C8CC(&v6, &qword_100923C18);
}

uint64_t sub_1002DEBCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000C518(&qword_100931598), sub_10000C518(&qword_100923C10), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10000C888(&v6, *(&v7 + 1));
      (*(v4 + 40))(v3, v4);
      return sub_10000C620(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10000C8CC(&v6, &qword_100923C18);
}

void sub_1002DECE8()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SearchResultCollectionViewCell();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

uint64_t sub_1002DEEA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100745644();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  v11 = sub_10074F6E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v17 = sub_10074F704();
  v70 = *(v17 - 8);
  v71 = v17;
  __chkstk_darwin(v17);
  v67 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v72 = &v59 - v20;
  sub_100744104();
  sub_1002E1C14(&unk_100928540, &type metadata accessor for SearchResult);
  result = sub_1007468B4();
  if (v73)
  {
    v61 = v16;
    v22 = sub_1000F0DA4();
    if (!v22)
    {
    }

    v24 = v23;
    v60 = a2;
    v62 = &v3[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
    v63 = v3;
    if (!*&v3[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents] || sub_10000C518(&qword_100931590) != v22)
    {
      v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v26 = v62;
      v27 = *v62;
      *v62 = v25;
      *(v26 + 1) = v24;
      v28 = v11;
      v29 = a1;
      v30 = v25;
      sub_1002DDF88(v27);

      a1 = v29;
      v11 = v28;
    }

    swift_getKeyPath();
    sub_100746914();

    v31 = v73;
    v32 = sub_1007537D4();

    if ((v32 & 1) == 0)
    {
      v50 = *v62;
      if (*v62)
      {
        v51 = *(v62 + 1);
        goto LABEL_18;
      }

LABEL_19:
      [v63 setNeedsLayout];
    }

    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_1007525B4();

    (*(v64 + 8))(v10, v8);
    v33 = &enum case for PageGrid.Direction.horizontal(_:);
    if (!v73)
    {
      v33 = &enum case for PageGrid.Direction.vertical(_:);
    }

    v34 = v61;
    (*(v12 + 104))(v61, *v33, v11);
    sub_10074F5C4();
    v64 = v35;
    sub_10074F5E4();
    v59 = v36;
    sub_10074F5D4();
    swift_getKeyPath();
    sub_100746914();

    v37 = v66;
    sub_100745604();
    (*(v12 + 16))(v65, v34, v11);
    if (qword_100920C20 != -1)
    {
      swift_once();
    }

    v38 = v67;
    sub_10074F6B4();
    (*(v68 + 8))(v37, v69);
    v39 = v62;
    if (*v62)
    {
      [*v62 layoutMargins];
      v41 = v40;
      v43 = v42;
      sub_10074F664();
      v45 = v44;
      sub_10074F664();
      v46 = *v39;
      if (!*v39)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10074F664();
      v41 = v56;
      v45 = v57;
      v43 = v58;
      v46 = *v39;
      if (!*v39)
      {
LABEL_14:
        v47 = *(v70 + 8);
        v48 = v38;
        v49 = v71;
        v47(v48, v71);
        (*(v12 + 8))(v34, v11);
        v47(v72, v49);
        v50 = *v39;
        if (*v39)
        {
          v51 = *(v39 + 1);
LABEL_18:
          ObjectType = swift_getObjectType();
          v53 = a1;
          v54 = *(v51 + 48);
          v55 = v50;
          v54(v53, v60, ObjectType, v51);

          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    [v46 setLayoutMargins:{v41, v45, v43}];
    goto LABEL_14;
  }

  return result;
}

void sub_1002DF5E0(uint64_t a1, uint64_t a2)
{
  v11 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v11)
  {
    type metadata accessor for AdvertsSearchResultContentView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      if (a1)
      {
        v7 = objc_opt_self();
        v8 = v11;
        v9 = [v7 clearColor];
        [v6 setBackgroundColor:v9];
      }

      else
      {
        v10 = v11;
      }

      sub_10002A748(a1, a2);
      [v6 setNeedsLayout];
    }
  }
}

uint64_t sub_1002DF6F4(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4, char *a5, int a6)
{
  v73 = a6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v8 = sub_1007521E4();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752224();
  v77 = *(v11 - 8);
  __chkstk_darwin(v11);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007521D4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_100752244();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009253C0);
  sub_100745E64();
  result = swift_dynamicCast();
  if (result)
  {
    v68 = v11;
    v23 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
    if (v23 && (v69 = v81[0], v65 = v9, v24 = type metadata accessor for AdvertsSearchResultContentView(), (v25 = swift_dynamicCastClass()) != 0))
    {
      v26 = v25;
      v27 = v23;
      [v6 setUserInteractionEnabled:0];
      v66 = v27;
      [v26 frame];
      v32 = [objc_allocWithZone(v24) initWithFrame:{v28, v29, v30, v31}];
      v33 = *(*&v26[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing);
      [v26 layoutMargins];
      v67 = v21;
      v34 = v69;
      v35 = v71;
      v36 = v70;
      v70 = v6;
      sub_10054F6E0(v69, v71, v36, v79, v33, v37, v38, v39, v40);
      [v32 layoutIfNeeded];
      [v26 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v81[0] = v42;
      v81[1] = v44;
      v81[2] = v46;
      v81[3] = v48;
      v82 = 0;
      sub_100551AD0(v34, v81, v72, v35);
      v49 = &v26[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation];
      swift_beginAccess();
      v72 = v8;
      v50 = *v49;
      v51 = v49[1];
      sub_10001B5AC(*v49);
      sub_10048862C(v50, v51);
      sub_1000164A8(v50);
      sub_1000A7FA0();
      v71 = sub_100753774();
      sub_100752234();
      v52 = 333;
      if ((v73 & 1) == 0)
      {
        v52 = 0;
      }

      *v16 = v52;
      (*(v14 + 104))(v16, enum case for DispatchTimeInterval.milliseconds(_:), v13);
      sub_1007522A4();
      (*(v14 + 8))(v16, v13);
      v74 = *(v74 + 8);
      v53 = v75;
      (v74)(v18, v75);
      v54 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v55 = swift_allocObject();
      v55[2] = v54;
      v55[3] = v26;
      v56 = v79;
      v55[4] = v32;
      v55[5] = v56;
      aBlock[4] = sub_1002E1B94;
      aBlock[5] = v55;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_1008705A8;
      v57 = _Block_copy(aBlock);
      v58 = v66;
      v59 = v32;

      v60 = v76;
      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002E1C14(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000C518(&unk_10092F750);
      sub_1000A8054();
      v61 = v78;
      v62 = v72;
      sub_1007543A4();
      v63 = v67;
      v64 = v71;
      sub_100753734();

      _Block_release(v57);

      (*(v65 + 8))(v61, v62);
      (*(v77 + 8))(v60, v68);
      return (v74)(v63, v53);
    }

    else
    {
    }
  }

  return result;
}

void sub_1002DFEAC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = v8;
    aBlock[4] = sub_1002E1C08;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100144DD8;
    aBlock[3] = &unk_1008705F8;
    v11 = _Block_copy(aBlock);

    v12 = a2;
    v13 = a3;
    v14 = v8;

    [v9 transitionFromView:v12 toView:v13 duration:5242880 options:v11 completion:0.666];
    _Block_release(v11);
  }
}

void sub_1002E000C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1002E1C14(&qword_1009230E0, type metadata accessor for VideoView);
  }

  sub_1002E1C14(&unk_100936AA0, type metadata accessor for AdvertsSearchResultContentView);
  sub_10074B124();

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    sub_1002E1C14(&qword_1009230E0, type metadata accessor for VideoView);
  }

  sub_10074B164();

  v9 = sub_1002E1C14(&qword_100928220, type metadata accessor for AdvertsSearchResultContentView);
  v10 = &a5[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
  v11 = *&a5[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
  *v10 = a4;
  *(v10 + 1) = v9;
  v12 = a4;
  sub_1002DDF88(v11);

  [a5 setUserInteractionEnabled:1];
}

void sub_1002E0248()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_1000164A8(v2);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v3)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = v3;
      sub_10074D394();
    }
  }
}

void sub_1002E0334()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100749574();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v5 = v4;
      sub_10074D384();
    }
  }
}

uint64_t sub_1002E0430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_100747524();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100747C14();
  __chkstk_darwin(v5 - 8);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10074F704();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100744E64();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100931580);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_10000C518(&unk_100925330);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  sub_100747E74();
  sub_1002E1C14(&qword_100927520, &type metadata accessor for AdvertsSearchResult);
  v37 = a1;
  sub_1007468B4();
  if (!v45)
  {
    v26 = 1;
    v25 = v44;
    goto LABEL_14;
  }

  v34 = v4;
  v43 = v45;
  sub_100747E44();
  (*(v9 + 104))(v19, enum case for ItemBackground.clearAdWithSeparator(_:), v8);
  (*(v9 + 56))(v19, 0, 1, v8);
  v23 = *(v11 + 48);
  sub_100016B4C(v22, v13, &unk_100925330);
  sub_100016B4C(v19, &v13[v23], &unk_100925330);
  v24 = *(v9 + 48);
  if (v24(v13, 1, v8) != 1)
  {
    sub_100016B4C(v13, v16, &unk_100925330);
    if (v24(&v13[v23], 1, v8) != 1)
    {
      v27 = v35;
      (*(v9 + 32))(v35, &v13[v23], v8);
      sub_1002E1C14(&qword_100931588, &type metadata accessor for ItemBackground);
      v28 = sub_100753014();
      v29 = *(v9 + 8);
      v29(v27, v8);
      sub_10000C8CC(v19, &unk_100925330);
      sub_10000C8CC(v22, &unk_100925330);
      v29(v16, v8);
      sub_10000C8CC(v13, &unk_100925330);
      v25 = v44;
      if (v28)
      {
        goto LABEL_11;
      }

LABEL_9:

      v26 = 1;
      goto LABEL_14;
    }

    sub_10000C8CC(v19, &unk_100925330);
    sub_10000C8CC(v22, &unk_100925330);
    (*(v9 + 8))(v16, v8);
LABEL_8:
    sub_10000C8CC(v13, &qword_100931580);
    v25 = v44;
    goto LABEL_9;
  }

  sub_10000C8CC(v19, &unk_100925330);
  sub_10000C8CC(v22, &unk_100925330);
  if (v24(&v13[v23], 1, v8) != 1)
  {
    goto LABEL_8;
  }

  sub_10000C8CC(v13, &unk_100925330);
  v25 = v44;
LABEL_11:
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  v30 = v38;
  sub_10074F6A4();
  sub_10074F694();
  (*(v40 + 104))(v34, enum case for ComponentSeparator.Position.bottom(_:), v42);
  v31 = [objc_opt_self() systemGray3Color];
  sub_100747534();

  (*(v39 + 8))(v30, v41);
  v26 = 0;
LABEL_14:
  v32 = sub_100747564();
  return (*(*(v32 - 8) + 56))(v25, v26, 1, v32);
}

id sub_1002E0B80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultCollectionViewCell()
{
  result = qword_100931558;
  if (!qword_100931558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002E0C8C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002E0D30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100923200);
}

uint64_t sub_1002E0D98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1002E0E5C()
{
  sub_100744104();
  sub_1002E1C14(&unk_100928540, &type metadata accessor for SearchResult);
  result = sub_1007468B4();
  if (v1)
  {
    if (sub_1000F0DA4())
    {
      sub_100748B84();
    }
  }

  return result;
}

void sub_1002E0F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    type metadata accessor for SearchResultCollectionViewCell();
    v10 = v4;
    sub_1007477B4();
    (*(v8 + 56))(a1, a2, a3, ObjectType, v8);
  }
}