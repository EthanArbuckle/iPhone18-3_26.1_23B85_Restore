void sub_10017154C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView];
    if (v2)
    {
      swift_retain_n();
      v6 = v2;
      v3 = [v0 traitCollection];
      sub_1000EAD9C(v1);
      v5 = v4;

      if (v5)
      {
      }

      else
      {
        sub_10074F364();
        sub_1007442C4();
        sub_1007433C4();
        sub_100744244();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1007441F4();

        sub_10000C8CC(v7, &unk_1009276E0);
      }
    }
  }
}

void sub_100171714(id a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C518(&qword_100926DC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_10074F164();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  sub_100171C7C(a3, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000C8CC(v7, &qword_100926DC0);
  }

  else
  {
    v30 = a1;
    v18 = *(v9 + 32);
    v18(v17, v7, v8);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v20 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork), v21 = Strong, , v21, v20))
    {
      sub_10074F3C4();

      v18(v14, v11, v8);
      sub_100171CEC(&qword_100926DC8, &type metadata accessor for Artwork.URLTemplate);
      v22 = sub_100753014();
      v23 = *(v9 + 8);
      v23(v14, v8);
      v23(v17, v8);
      a1 = v30;
      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      (*(v9 + 8))(v17, v8);
      a1 = v30;
    }
  }

  if (a1)
  {
    a1 = [a1 imageWithRenderingMode:2];
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView);
    v26 = v24;
    v27 = v25;

    if (v25)
    {
      v31.value.super.isa = a1;
      v31.is_nil = 0;
      sub_100743384(v31, v28);
    }
  }
}

void sub_100171A68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  if (sub_10074ED64())
  {

    v8 = 15.0;
  }

  else
  {
    v8 = 22.0;
  }

  sub_10074ED54();
  sub_10000C518(&unk_10092BC50);
  v9 = sub_1007532D4();

  v10 = 15.0;
  if ((v9 & 1) == 0)
  {
    v10 = v8;
  }

  v11 = 9.0;
  if (v9)
  {
    v11 = 12.0;
  }

  *&v12 = v11;
  *(&v12 + 1) = 0x402E000000000000;
  v13 = v11;
  v14 = xmmword_1007AB890;
  v15 = v8;
  v16 = 0x4022000000000000;
  v17 = v10;
  v18 = xmmword_1007AB770;
  v19 = xmmword_1007AB780;
  sub_1000EAEE0(v7, &v12, a6);
}

uint64_t sub_100171C3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100171C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100926DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100171CEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100171DE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v5 collectionView];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = v15;
  v17 = &selRef_viewSafeAreaInsetsDidChange;
  [v16 bounds];
  v18 = [v5 layoutAttributesForElementsInRect:?];
  if (!v18 || ((v19 = v18, sub_1000E5AA4(), v20 = sub_1007532A4(), v19, v20 >> 62) ? (v21 = sub_100754664()) : (v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v21))
  {

LABEL_17:
    v52 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
    v57.receiver = v5;
    v57.super_class = v52;
    objc_msgSendSuper2(&v57, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v22 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  v56.receiver = v5;
  v56.super_class = v22;
  objc_msgSendSuper2(&v56, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  [v16 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v58.origin.x = v24;
  v58.origin.y = v26;
  v58.size.width = v28;
  v58.size.height = v30;
  Width = CGRectGetWidth(v58);
  [v5 collectionViewContentSize];
  if (a1 <= 0.0 || floor(v32) <= Width + a1)
  {
LABEL_15:

    return;
  }

  v33 = [v16 numberOfItemsInSection:0];
  if ((v33 & 0x8000000000000000) == 0)
  {
    if (v33)
    {
      v53 = a3;
      v34 = 0;
      v54 = (v11 + 8);
      v35 = 0.0;
      v55 = xmmword_1007A6580;
      do
      {
        v37 = v33;
        v38 = v17;
        sub_10000C518(&qword_1009253E0);
        v39 = swift_allocObject();
        *(v39 + 16) = v55;
        *(v39 + 32) = 0;
        *(v39 + 40) = v34;
        sub_1007416F4();
        isa = sub_100741704().super.isa;
        (*v54)(v14, v10);
        v41 = [v5 layoutAttributesForItemAtIndexPath:isa];

        if (!v41)
        {
          break;
        }

        v17 = v38;
        [v41 v38[472]];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v59.origin.x = v43;
        v59.origin.y = v45;
        v59.size.width = v47;
        v59.size.height = v49;
        v50 = CGRectGetWidth(v59);
        [v5 minimumLineSpacing];
        if (v35 < a1 && v35 + v50 + v51 > a1)
        {
          break;
        }

        ++v34;
        [v5 minimumLineSpacing];
        v35 = v35 + v50 + v36;
        v33 = v37;
      }

      while (v37 != v34);
    }

    goto LABEL_15;
  }

  __break(1u);
}

id sub_100172264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001722CC(uint64_t a1, void *a2, uint64_t a3)
{
  v124 = a3;
  v126 = a2;
  v119 = sub_1007493D4();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10074A304();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v6 - 8);
  v112 = &v106 - v7;
  v122 = sub_100752624();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v9 - 8);
  v107 = &v106 - v10;
  v11 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v11);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v14 - 8);
  v110 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v106 - v17;
  v19 = type metadata accessor for FlowDestination();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v111 = (&v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = (&v106 - v23);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  v108 = sub_10000C518(&qword_100930CA0);
  v123 = sub_100752DE4();

  sub_10074EC44();
  sub_1001362FC(a1, &aBlock, v18);
  v28 = *(v20 + 48);
  v29 = v28(v18, 1, v19);
  v109 = v28;
  if (v29 == 1)
  {
    v30 = v27;
    swift_storeEnumTagMultiPayload();
    if (v28(v18, 1, v19) != 1)
    {
      sub_10000C8CC(v18, &unk_100925750);
    }
  }

  else
  {
    v30 = v27;
    sub_100068B98(v18, v27);
  }

  sub_100742C54();
  v31 = *(v11 + 20);
  v125 = v13;
  v116 = v31;
  sub_100742C44();
  v32 = v126;
  v33 = [v126 presentedViewController];
  if (!v33)
  {
    goto LABEL_8;
  }

  v34 = v33;
  if ([v33 isBeingDismissed])
  {

LABEL_8:
    v35 = v32;
    goto LABEL_9;
  }

  v127 = v34;
  sub_100016C60(0, &qword_10092B0C0);
  v48 = v34;
  sub_10000C518(&qword_100923948);
  if (swift_dynamicCast())
  {
    v106 = v48;
    sub_100032CCC(v128, &aBlock);
    v49 = v30;
    v50 = *(&v131 + 1);
    v51 = v132;
    sub_10000C888(&aBlock, *(&v131 + 1));
    if ((*(v51 + 8))(v49, v50, v51))
    {
      sub_100068C18(v49, v24);
      v52 = v49;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v53 = v125;
        v54 = v123;
        v55 = v106;
        if (*v24)
        {
          v56 = sub_10000C518(&unk_100923210);

          v57 = v107;
          v58 = v124;
          sub_1007526C4();
          v59 = *(v56 - 8);
          if ((*(v59 + 48))(v57, 1, v56) == 1)
          {

            sub_100068C7C(v53, type metadata accessor for FlowPresentationHints);
            sub_100068C7C(v52, type metadata accessor for FlowDestination);
            sub_10000C8CC(v57, &unk_100923960);
LABEL_61:
            sub_10000C620(&aBlock);
            return v54;
          }

          sub_1003C1388(v105, 1, v58, v57);

          (*(v59 + 8))(v57, v56);
          sub_100752D54();

LABEL_60:
          sub_100068C7C(v53, type metadata accessor for FlowPresentationHints);
          sub_100068C7C(v52, type metadata accessor for FlowDestination);
          goto LABEL_61;
        }
      }

      else
      {
        sub_100068C7C(v24, type metadata accessor for FlowDestination);
        v53 = v125;
        v54 = v123;
        v55 = v106;
      }

      v102 = v121;
      v103 = v120;
      v104 = v122;
      (*(v121 + 104))(v120, enum case for ActionOutcome.performed(_:), v122);
      sub_100752DB4();

      (*(v102 + 8))(v103, v104);
      goto LABEL_60;
    }

    sub_10000C620(&aBlock);
    v30 = v49;
    v80 = v124;
    v48 = v106;
  }

  else
  {
    v129 = 0;
    memset(v128, 0, sizeof(v128));
    sub_10000C8CC(v128, &unk_100923950);
    v80 = v124;
  }

  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  if (sub_100173584(v48, v30))
  {
    v95 = swift_allocObject();
    v95[2] = a1;
    v95[3] = v32;
    v96 = v123;
    v95[4] = v80;
    v95[5] = v96;
    *&v132 = sub_100173800;
    *(&v132 + 1) = v95;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v131 = sub_1000CF7B0;
    *(&v131 + 1) = &unk_100869D58;
    v97 = _Block_copy(&aBlock);
    v54 = v96;

    v98 = v32;

    [v48 dismissViewControllerAnimated:1 completion:v97];
    _Block_release(v97);

    v93 = v125;
    goto LABEL_48;
  }

  v99 = v48;
  v100 = v32;
  v101 = [v100 presentedViewController];
  if (v101)
  {
    do
    {
      v35 = v101;

      v101 = [v35 presentedViewController];
      v100 = v35;
    }

    while (v101);
  }

  else
  {
    v35 = v100;
  }

LABEL_9:
  v36 = [v32 traitCollection];
  v37 = sub_100618AD8();

  v38 = v125;
  if (v37)
  {
    v39 = [v32 traitCollection];
    v40 = sub_100477ADC(a1, v39, v124);

    if (v40)
    {
      v41 = v40;
      goto LABEL_26;
    }
  }

  else
  {
    v42 = sub_1003787A4(v32);
    if (!v42 || (*&v128[0] = v42, sub_100016C60(0, &qword_100924658), sub_10000C518(&qword_100924660), (swift_dynamicCast() & 1) == 0))
    {
      *&v132 = 0;
      aBlock = 0u;
      v131 = 0u;
    }

    v43 = v30;
    v44 = [v32 traitCollection];

    sub_10074EC44();
    v45 = v110;
    sub_1001362FC(a1, v128, v110);
    v46 = v109;
    if (v109(v45, 1, v19) == 1)
    {
      v47 = v111;
      swift_storeEnumTagMultiPayload();
      if (v46(v45, 1, v19) != 1)
      {
        sub_10000C8CC(v45, &unk_100925750);
      }
    }

    else
    {
      v47 = v111;
      sub_100068B98(v45, v111);
    }

    v60 = sub_100742C14();
    v62 = v61;
    v63 = v112;
    sub_100742C34();
    v40 = sub_100470520(v47, v44, v60, v62, v63, &aBlock, v124, 1);

    sub_10000C8CC(v63, &qword_10092C1F0);
    sub_100068C7C(v47, type metadata accessor for FlowDestination);
    v41 = v40;
    sub_10000C8CC(&aBlock, &unk_100925760);
    v30 = v43;
    v38 = v125;
    if (v40)
    {
LABEL_26:
      v54 = v123;
      v64 = [v126 traitCollection];
      v65 = v113;
      sub_1006C1C84(v113);

      v66 = sub_10074A2F4();
      v68 = v67;
      (*(v114 + 8))(v65, v115);
      if ((v68 & 1) == 0)
      {
        [v41 setModalPresentationStyle:v66];
      }

      aBlock = xmmword_100931310;
      v131 = xmmword_100931320;
      v132 = xmmword_100931330;
      v133 = xmmword_100931340;
      v134 = xmmword_100931350;
      v69 = qword_100931360;
      v135 = qword_100931360;
      v70 = BYTE8(xmmword_100931330);
      if (BYTE8(xmmword_100931330) != 255)
      {
        v71 = aBlock;
        v73 = v131;
        v72 = *&v132;
        v74 = v133;
        v75 = v134;
        v76 = aBlock;
        v77 = [v41 popoverPresentationController];
        if (v77)
        {
          v78 = v77;
          if (v70)
          {
            sub_100173514(&aBlock, v128);
            v79 = v78;
            [v79 setSourceView:v71];
            [v79 setSourceRect:{*(&v71 + 1), v73, v72}];
            sub_10000C8CC(&aBlock, &unk_1009308C0);
          }

          else
          {
            [v77 setBarButtonItem:v71];
          }

          [v78 setPopoverLayoutMargins:{v74, v75}];
          [v78 setPermittedArrowDirections:v69];
        }

        else
        {
          if (qword_100921EE0 != -1)
          {
            swift_once();
          }

          v81 = sub_100752E44();
          sub_10000D0FC(v81, qword_100983318);
          sub_10000C518(&qword_100923930);
          sub_100752454();
          *(swift_allocObject() + 16) = xmmword_1007A5A00;
          sub_1007523A4();
          sub_100752D14();
        }

        sub_10000C8CC(&aBlock, &unk_1009308C0);
      }

      v82 = v118;
      v83 = v117;
      v84 = v119;
      (*(v118 + 16))(v117, v38 + v116, v119);
      v85 = (*(v82 + 88))(v83, v84);
      if (v85 == enum case for FlowAnimationBehavior.infer(_:))
      {
        goto LABEL_41;
      }

      if (v85 != enum case for FlowAnimationBehavior.never(_:))
      {
        if (v85 == enum case for FlowAnimationBehavior.always(_:))
        {
LABEL_41:
          v86 = 1;
LABEL_46:
          v87 = objc_allocWithZone(type metadata accessor for PresentationContextViewController());
          v88 = v41;
          v89 = sub_1000C3C60(v88, v86);

          [v35 presentViewController:v89 animated:0 completion:0];
          v90 = v121;
          v91 = v120;
          v92 = v122;
          (*(v121 + 104))(v120, enum case for ActionOutcome.performed(_:), v122);
          sub_100752DB4();

          (*(v90 + 8))(v91, v92);
          goto LABEL_47;
        }

        (*(v82 + 8))(v83, v84);
      }

      v86 = 0;
      goto LABEL_46;
    }
  }

  (*(v121 + 104))(v120, enum case for ActionOutcome.unsupported(_:), v122);
  v54 = sub_100752D84();

LABEL_47:
  v93 = v38;
LABEL_48:
  sub_100068C7C(v93, type metadata accessor for FlowPresentationHints);
  sub_100068C7C(v30, type metadata accessor for FlowDestination);
  return v54;
}

uint64_t sub_100173514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009308C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100173584(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068C18(a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v14 = *(sub_10000C518(&qword_100938DF0) + 64);
    v15 = sub_1007462F4();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_100068C7C(v8, type metadata accessor for FlowDestination);
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_100068C7C(v8, type metadata accessor for FlowDestination);
    v12 = 1;
    return v12 & 1;
  }

  sub_1000498A8(v8, v5);
  type metadata accessor for ArticleContainerViewController();
  v10 = swift_dynamicCastClass() == 0;
  v11 = sub_10074C4A4();
  sub_10000C8CC(v5, &unk_100923970);
  v12 = v10 | v11 ^ 1;
  return v12 & 1;
}

uint64_t sub_1001737B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100173800()
{
  sub_1001722CC(v0[2], v0[3], v0[4]);
  sub_100752D54();
}

uint64_t sub_100173848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001738EC(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a2[2])
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
LABEL_3:
    v10 = 0;
LABEL_10:
    v9 = 0;
LABEL_11:
    v7 = 0;
LABEL_12:
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_13;
  }

  if (!a3)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (!a4)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  if (!a5)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    goto LABEL_3;
  }

  if (!a6)
  {

    v12 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v14 = *a2;
  v15 = a2[1];
  v12 = a1;
LABEL_13:
  *a7 = v12;
  *(a7 + 8) = v8;
  *(a7 + 16) = v14;
  *(a7 + 32) = v15;
  *(a7 + 48) = v10;
  *(a7 + 56) = v9;
  *(a7 + 64) = v7;
}

__n128 sub_100173A80@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_10092A2E8 + 32);
  result = *(v1 + qword_10092A2E8);
  v4 = *(v1 + qword_10092A2E8 + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_100173AB8@<Q0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *(v1 + qword_10092A2E8 + 32);
  v5 = *(v1 + qword_10092A2E8 + 16);
  v12[0] = *(v1 + qword_10092A2E8);
  v12[1] = v5;
  v13 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + qword_10092A2F8);
  swift_unknownObjectRetain();
  sub_1001738EC(Strong, v12, v6, v7, v8, v9, v14);
  v10 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v10;
  *(a1 + 64) = v15;
  result = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = result;
  return result;
}

id sub_100173BB0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_1001748A0(v8);

  return v12;
}

id sub_100173C3C()
{
  sub_100174948();
  v0 = swift_unknownObjectRetain();

  return v0;
}

id sub_100173C74()
{
  LinkPresentationProvider.deinit();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_100173CD4(uint64_t a1)
{
  *(v1 + qword_10092A2F8) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*(v1 + qword_10092A308))
  {
    sub_100173AB8(v5);
    type metadata accessor for FullScreenTransitionContext();
  }

  else
  {
    *&v2 = sub_100173AB8(v5).n128_u64[0];
    if (v5[0])
    {
      [v5[8] completeTransition:{0, v2}];
    }

    type metadata accessor for FullScreenTransitionContext();
  }

  v3 = sub_100754284();
  return (*(*(v3 - 8) + 8))(v5, v3);
}

void sub_100173E0C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_100173CD4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100173EAC(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + qword_10092A310;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

void sub_100173EC8(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = [a1 view];
  [a1 translationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([a1 state] == 1)
  {
    v9 = (v1 + qword_10092A310);
    *v9 = v6;
    v9[1] = v8;
    *(v9 + 16) = 0;
    *(v1 + qword_10092A308) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }

  v12 = (v1 + qword_10092A310);
  if ((*(v1 + qword_10092A310 + 16) & 1) == 0 && *(v1 + qword_10092A2F8))
  {
    v13 = *v12;
    v58 = v12[1];
    v14 = [swift_unknownObjectRetain() containerView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v67.origin.x = v16;
    v67.origin.y = v18;
    v67.size.width = v20;
    v67.size.height = v22;
    MidX = CGRectGetMidX(v67);
    v68.origin.x = v16;
    v68.origin.y = v18;
    v68.size.width = v20;
    v68.size.height = v22;
    MidY = CGRectGetMidY(v68);
    v25 = v8 - v58;
    v26 = v6 - v13 + MidX;
    v27 = v25 + MidY;
    v28 = [a1 state];
    if (v28 != 3)
    {
      if (v28 == 2)
      {
        hypot(MidX - v26, MidY - v27);
        v29 = swift_unknownObjectUnownedLoadStrong();
        [v29 setCenter:{v26, v27}];

        sub_10000C518(&unk_1009259C0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1007A5A00;
        aBlock = sub_100753434();
        v60 = v31;
        v66._countAndFlagsBits = 0x656C706D6F632025;
        v66._object = 0xEA00000000006574;
        sub_1007531B4(v66);
        v32 = aBlock;
        v33 = v60;
        *(v30 + 56) = &type metadata for String;
        *(v30 + 32) = v32;
        *(v30 + 40) = v33;
        sub_100754814();
      }

      type metadata accessor for FullScreenTransitionContext();
      v34 = sub_100754284();
      (*(*(v34 - 8) + 8))(v65, v34);
      swift_unknownObjectRelease();
      return;
    }

    v35 = [a1 view];
    [a1 velocityInView:v35];
    v37 = v36;
    v39 = v38;

    v40 = hypot(v37, v39) / 500.0;
    v41 = fabs(v37);
    v42 = fabs(v39);
    v43 = v41 * v40;
    v44 = v42 * v40;
    if (v43 > v44)
    {
      v44 = v43;
    }

    if (v44 > 50.0)
    {
      v44 = 50.0;
    }

    if (v37 == 0.0 && v39 == 0.0)
    {
      v45 = 0.0;
      if (v42 >= v41)
      {
LABEL_17:
        v46 = v44;
        v44 = v44 * v45;
LABEL_26:
        if (v44 > v46)
        {
          v49 = v44;
        }

        else
        {
          v49 = v46;
        }

        v50 = v49 / 50.0 * 0.2;
        v51 = v26 + v44;
        v52 = v27 + v46;
        v53 = objc_opt_self();
        v54 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v55 = swift_allocObject();
        *(v55 + 16) = *(v3 + 80);
        *(v55 + 24) = *(v3 + 88);
        *(v55 + 32) = v54;
        *(v55 + 40) = v51;
        *(v55 + 48) = v52;
        v63 = sub_100174878;
        v64 = v55;
        aBlock = _NSConcreteStackBlock;
        v60 = 1107296256;
        v61 = sub_1000CF7B0;
        v62 = &unk_100869F18;
        v56 = _Block_copy(&aBlock);

        [v53 animateWithDuration:0x20000 delay:v56 options:0 animations:v50 completion:0.0];
        swift_unknownObjectRelease();
        _Block_release(v56);
        type metadata accessor for FullScreenTransitionContext();
        v57 = sub_100754284();
        (*(*(v57 - 8) + 8))(v65, v57);
        return;
      }
    }

    else
    {
      if (v41 > v42)
      {
        v47 = v41;
      }

      else
      {
        v47 = v42;
      }

      v48 = v42 < v41;
      if (v42 < v41)
      {
        v41 = v42;
      }

      v45 = v41 / v47;
      if (!v48)
      {
        goto LABEL_17;
      }
    }

    v46 = v44 * v45;
    goto LABEL_26;
  }
}

void sub_100174438(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectUnownedLoadStrong();

    [v6 setCenter:{a1, a2}];
  }
}

void sub_1001744C8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100173EC8(v4);
}

id sub_100174570()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenTransitionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001745E0(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectUnownedDestroy();

  return swift_unknownObjectRelease();
}

unint64_t sub_100174698()
{
  result = qword_10092A3F8[0];
  if (!qword_10092A3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10092A3F8);
  }

  return result;
}

void sub_1001746EC(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong view];

  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + qword_10092A2F0))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 *a1];
}

void sub_1001747A4()
{
  sub_1001746EC(&selRef_removeGestureRecognizer_);
  swift_unknownObjectWeakAssign();
  sub_1001746EC(&selRef_addGestureRecognizer_);
}

uint64_t sub_100174808()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100174840()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100174888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001748A0(void *a1)
{
  if (!swift_dynamicCastUnknownClass())
  {
    return 0;
  }

  swift_unknownObjectWeakAssign();
  v3 = a1;
  sub_1001747A4();

  *(v1 + qword_10092A2D8) = 1;
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_100174948()
{
  result = v0;
  *(v0 + qword_10092A2D8) = 0;
  return result;
}

uint64_t sub_1001749A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1001749E0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100174A04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100174A4C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100174B08(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_100750304();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100750B04();
  sub_100039C50(v9, a2);
  sub_10000D0FC(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  sub_100750B14();
  return (*(v6 + 8))(v8, v5);
}

char *sub_100174C78(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = (&v66 - v10);
  v12 = sub_10074A3F4();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10074A454();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074A374();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_10074A3E4();
  sub_10074A384();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v21] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel;
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  *&v4[v25] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v26 = &v4[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler];
  v27 = type metadata accessor for CarouselItemTextOverlay();
  *v26 = 0;
  *(v26 + 1) = 0;
  v70.receiver = v4;
  v70.super_class = v27;
  v28 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 setOverrideUserInterfaceStyle:2];
  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v33 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel;
  v34 = qword_1009215A0;
  v35 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel];
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_100750534();
  v37 = sub_10000D0FC(v36, qword_100981E18);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v39(v11, v37, v36);
  v68 = *(v38 + 56);
  v68(v11, 0, 1, v36);
  sub_100745BA4();

  [*&v32[v33] setNumberOfLines:1];
  v40 = *&v32[v33];
  v41 = objc_opt_self();
  v42 = v40;
  v67 = v41;
  v43 = [v41 secondaryLabelColor];
  v44 = v33;
  v45 = v43;
  [v42 setTextColor:v43];

  v69 = v44;
  v46 = [*&v32[v44] layer];
  [v46 setCompositingFilter:kCAFilterPlusL];

  v47 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel;
  v48 = qword_1009215B0;
  v49 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = sub_10000D0FC(v36, qword_100981E48);
  v39(v11, v50, v36);
  v51 = v68;
  v68(v11, 0, 1, v36);
  sub_100745BA4();

  [*&v32[v47] setNumberOfLines:2];
  v52 = *&v32[v47];
  v66 = v47;
  v53 = v67;
  v54 = [v67 labelColor];
  [v52 setTextColor:v54];

  v55 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel;
  v56 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel];
  *v11 = UIFontTextStyleFootnote;
  v11[1] = UIFontWeightBold;
  (*(v38 + 104))(v11, enum case for FontUseCase.preferredFontDerivative(_:), v36);
  v51(v11, 0, 1, v36);
  v57 = v56;
  v58 = UIFontTextStyleFootnote;
  sub_100745BA4();

  [*&v32[v55] setNumberOfLines:1];
  v59 = *&v32[v55];
  v60 = [v53 labelColor];
  [v59 setTextColor:v60];

  v61 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  [*&v32[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_tapGestureRecognizer] setEnabled:0];
  v62 = *&v32[v61];
  v63 = v32;
  [v62 addTarget:v63 action:"handleSelection:"];
  v64 = *&v32[v61];
  [v64 setDelegate:v63];

  [v63 addGestureRecognizer:*&v32[v61]];
  [v63 addSubview:*&v32[v69]];
  [v63 addSubview:*&v32[v66]];
  [v63 addSubview:*&v32[v55]];
  sub_1001761EC();

  return v63;
}

uint64_t sub_1001755C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  ObjectType = swift_getObjectType();
  v57 = sub_1007507B4();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v4 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v53 = &v51[-v6];
  __chkstk_darwin(v7);
  v54 = &v51[-v8];
  __chkstk_darwin(v9);
  v55 = &v51[-v10];
  v11 = sub_10074A374();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = sub_10074A464();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v2[v22], v18);
  sub_10074A394();
  (*(v19 + 8))(v21, v18);
  (*(v12 + 104))(v14, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v11);
  sub_100176F44();
  sub_100753274();
  sub_100753274();
  if (v60[0] == v63 && v60[1] == v64)
  {
    v52 = 1;
  }

  else
  {
    v52 = sub_100754754();
  }

  v23 = *(v12 + 8);
  v23(v14, v11);
  v23(v17, v11);

  sub_100750794();
  v24 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel];
  v25 = sub_100745C84();
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v24;
  v26 = swift_allocObject();
  v27 = v4;
  v28 = ObjectType;
  *(v26 + 16) = v2;
  *(v26 + 24) = v28;
  v29 = v24;
  v30 = v2;
  v31 = v53;
  sub_1007507A4();

  v32 = *(v59 + 8);
  v33 = v57;
  v32(v27, v57);
  sub_10000C620(v60);
  v34 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel];
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  *(v35 + 24) = v28;
  v36 = v30;
  v37 = v34;
  v38 = v54;
  sub_1007507A4();

  v32(v31, v33);
  sub_10000C620(v60);
  v39 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel];
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v39;
  v40 = swift_allocObject();
  v41 = ObjectType;
  *(v40 + 16) = v36;
  *(v40 + 24) = v41;
  v42 = v36;
  v43 = v39;
  v44 = v55;
  sub_1007507A4();

  v32(v38, v33);
  sub_10000C620(v60);
  if (v52)
  {
    v61 = v33;
    v62 = &protocol witness table for VerticalStack;
    v45 = sub_10000D134(v60);
    (*(v59 + 16))(v45, v44, v33);
    sub_1007510D4();
    v46 = sub_100751104();
    v47 = v56;
    v56[3] = v46;
    v47[4] = &protocol witness table for Center;
    sub_10000D134(v47);
    sub_100751114();
    return (v32)(v44, v33);
  }

  else
  {
    v49 = v56;
    v56[3] = v33;
    v49[4] = &protocol witness table for VerticalStack;
    v50 = sub_10000D134(v49);
    return (*(v59 + 32))(v50, v44, v33);
  }
}

uint64_t sub_100175BD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v23 = a5;
  v8 = sub_10074A374();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A464();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v13 + 16))(v15, a2 + v16, v12);
  sub_10074A394();
  (*(v13 + 8))(v15, v12);
  sub_10074A354();
  (*(v9 + 8))(v11, v8);
  sub_100750744();
  v17 = sub_100750764();
  sub_100750784();
  sub_100750784();
  if (sub_100750784() != v17)
  {
    sub_100750784();
  }

  sub_100750734();
  if (*a4 != -1)
  {
    swift_once();
  }

  v18 = sub_100750B04();
  v19 = sub_10000D0FC(v18, v23);
  v24[3] = v18;
  v24[4] = &protocol witness table for StaticDimension;
  v20 = sub_10000D134(v24);
  (*(*(v18 - 8) + 16))(v20, v19, v18);
  return sub_100750714();
}

uint64_t sub_100175E6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074A374();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074A464();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_10074A394();
  (*(v8 + 8))(v10, v7);
  sub_10074A354();
  (*(v4 + 8))(v6, v3);
  sub_100750744();
  sub_10000C518(&unk_10093D7F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  v13 = sub_100750764();
  *(inited + 32) = v13;
  v14 = sub_100750774();
  *(inited + 40) = v14;
  sub_100750784();
  sub_100750784();
  if (sub_100750784() != v13)
  {
    sub_100750784();
  }

  sub_100750784();
  if (sub_100750784() != v14)
  {
    sub_100750784();
  }

  sub_100750734();
  if (qword_100920400 != -1)
  {
    swift_once();
  }

  v15 = sub_100750B04();
  v16 = sub_10000D0FC(v15, qword_10092A4C0);
  v23 = v15;
  v24 = &protocol witness table for StaticDimension;
  v17 = sub_10000D134(v22);
  v18 = *(*(v15 - 8) + 16);
  v18(v17, v16, v15);
  sub_100750714();
  if (qword_100920408 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v15, qword_10092A4D8);
  v23 = v15;
  v24 = &protocol witness table for StaticDimension;
  v20 = sub_10000D134(v22);
  v18(v20, v19, v15);
  return sub_100750724();
}

id sub_1001761EC()
{
  v1 = v0;
  v47 = sub_10074A3F4();
  v55 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v45 - v4;
  __chkstk_darwin(v5);
  v45 = &v45 - v6;
  v7 = sub_10074A374();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A464();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v45 - v14;
  __chkstk_darwin(v15);
  v52 = &v45 - v16;
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  v21 = *(v11 + 16);
  (v21)(v19, &v0[v20], v10);
  sub_10074A394();
  v22 = *(v11 + 8);
  v22(v19, v10);
  v23 = [v0 traitCollection];
  v24 = sub_10074A364();

  v53[1](v9, v54);
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel];
  v51 = v24;
  [v25 setTextAlignment:v24];
  v53 = v21;
  v54 = v20;
  v26 = &v1[v20];
  v27 = v1;
  v28 = v52;
  (v21)(v52, v26, v10);
  v29 = v45;
  sub_10074A404();
  v30 = v28;
  v31 = v10;
  v52 = (v11 + 8);
  v22(v30, v10);
  v32 = sub_10074A3C4();
  v33 = *(v55 + 8);
  v34 = v47;
  v55 += 8;
  v33(v29, v47);
  if (!v32)
  {
    v32 = [objc_opt_self() secondaryLabelColor];
  }

  [v25 setTextColor:v32];

  v35 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel];
  [v35 setTextAlignment:v51];
  v36 = v46;
  v37 = v31;
  (v53)(v46, &v27[v54], v31);
  v38 = v48;
  sub_10074A404();
  v22(v36, v37);
  v39 = sub_10074A3D4();
  v33(v38, v34);
  if (!v39)
  {
    v39 = [objc_opt_self() labelColor];
  }

  [v35 setTextColor:v39];

  v40 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel];
  [v40 setTextAlignment:v51];
  v41 = v49;
  (v53)(v49, &v27[v54], v37);
  v42 = v50;
  sub_10074A404();
  v22(v41, v37);
  v43 = sub_10074A3B4();
  v33(v42, v34);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v40 setTextColor:v43];

  return [v27 setNeedsLayout];
}

id sub_100176840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemTextOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemTextOverlay()
{
  result = qword_10092A540;
  if (!qword_10092A540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017698C()
{
  result = sub_10074A464();
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

uint64_t sub_100176A38(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001B5AC(a1);
  sub_10001B5AC(a1);
  sub_1000164A8(v5);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000164A8(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000164A8(a1);
}

id sub_100176AEC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = objc_allocWithZone(NSMutableAttributedString);
    v6 = sub_100753064();
    v3 = [v5 initWithString:v6];

    v7 = [objc_opt_self() configurationWithScale:1];
    v8 = sub_100753064();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    if (v9)
    {
      v10 = [objc_opt_self() textAttachmentWithImage:v9];
      v11 = objc_allocWithZone(NSAttributedString);
      v12 = sub_100753064();
      v13 = [v11 initWithString:v12];

      if (a3)
      {
        [v3 insertAttributedString:v13 atIndex:0];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 insertAttributedString:v14 atIndex:0];
      }

      else
      {
        [v3 appendAttributedString:v13];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 appendAttributedString:v14];
      }
    }
  }

  return v3;
}

id sub_100176D1C()
{
  v1 = v0;
  v2 = sub_10074A464();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074A474();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_1001761EC();
  (*(v3 + 8))(v5, v2);
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel];
  sub_10074A4D4();
  if (v8)
  {
    v9 = sub_100753064();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel];
  sub_10074A4E4();
  if (v11)
  {
    v12 = sub_100753064();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];

  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel];
  v14 = sub_10074A4A4();
  v16 = sub_100176AEC(v14, v15, [v1 effectiveUserInterfaceLayoutDirection]);

  [v13 setAttributedText:v16];

  return [v1 setNeedsLayout];
}

unint64_t sub_100176F44()
{
  result = qword_10092A550;
  if (!qword_10092A550)
  {
    sub_10074A374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092A550);
  }

  return result;
}

uint64_t sub_100176F9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100177054()
{
  v1 = sub_10074A3F4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074A454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A374();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_10074A3E4();
  sub_10074A384();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_100177300(void *a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    if ([v7 numberOfSections] >= 1)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = sub_10017C388;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_1003ED3AC;
      v11[3] = &unk_10086A188;
      v10 = _Block_copy(v11);

      [a1 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);
    }
  }
}

uint64_t sub_100177454(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10017C390;
  *(v4 + 24) = a2;
  v7[4] = sub_1000C0C28;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10011B528;
  v7[3] = &unk_10086A1D8;
  v5 = _Block_copy(v7);

  [v3 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_1001775A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001775F4();
  }
}

id sub_1001775F4()
{
  v1 = v0;
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_100177CC8();
  if (**&v0[qword_100930140] == &off_100948040)
  {
    sub_10072F12C(v14);
  }

  else
  {
    (*(v3 + 56))(v14, 1, 1, v2);
  }

  v15 = qword_10092A560;
  swift_beginAccess();
  sub_10003E1A0(v14, &v0[v15]);
  result = swift_endAccess();
  if (v0[qword_10092A558] == 1)
  {
    sub_100016B4C(&v0[v15], v11, &unk_100923C00);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      return sub_10000C8CC(v11, &unk_100923C00);
    }

    else
    {
      (*(v3 + 32))(v5, v11, v2);
      result = [v0 collectionView];
      if (result)
      {
        v17 = result;
        isa = sub_100741704().super.isa;
        [v17 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

        (*(v3 + 8))(v5, v2);
        (*(v3 + 56))(v8, 1, 1, v2);
        swift_beginAccess();
        sub_10003E1A0(v8, &v1[v15]);
        return swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_10017793C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100177300(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_1001779BC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v11 = sub_1007417F4();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1, v13);
  if ((*(v2 + qword_10092A558) & 1) == 0)
  {
    *(v2 + qword_10092A558) = 1;
  }

  v16 = qword_10092A560;
  swift_beginAccess();
  sub_100016B4C(v2 + v16, v10, &unk_100923C00);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000C8CC(v10, &unk_100923C00);
  }

  (*(v12 + 32))(v15, v10, v11);
  result = [v2 collectionView];
  if (result)
  {
    v18 = result;
    isa = sub_100741704().super.isa;
    [v18 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

    (*(v12 + 8))(v15, v11);
    (*(v12 + 56))(v7, 1, 1, v11);
    swift_beginAccess();
    sub_10003E1A0(v7, v2 + v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100177C74(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001779BC(a3);
}

uint64_t sub_100177CC8()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10092AB88);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = *&v0[qword_100930140];
  sub_100748BA4();
  sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter);
  sub_1007450A4();
  sub_100752AE4();
  if (*(v5 + 112))
  {

    sub_100749574();
  }

  v6 = &stru_1008F2000;
  v7 = [v0 collectionView];
  [v7 reloadData];

  sub_10017C300(&qword_10092ABA8, &type metadata accessor for GenericPagePresenter);
  if (sub_100748C04())
  {
    sub_100746BF4();
  }

  v8 = [v1 collectionView];
  v9 = &stru_1008F2000;
  if (v8)
  {
    v10 = v8;
    v11 = [v8 collectionViewLayout];

    if (v11)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = (v13 + OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        v16 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        *v15 = sub_10017C348;
        v15[1] = v14;

        v9 = &stru_1008F2000;
        sub_1000164A8(v16);

        v6 = &stru_1008F2000;
      }

      else
      {
      }
    }
  }

  v17 = [v1 v6[40].name];
  if (v17 && (v18 = v17, v19 = [v17 v9[147].name], v18, v19))
  {
    type metadata accessor for BaseCollectionCompositionalLayout();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_1007416B4();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_10017BB74(v4);

  sub_10000C8CC(v4, &qword_10092AB88);
  sub_100748BF4();
}

double sub_100178024(void *a1)
{
  v1 = a1;
  sub_100178080();
  v3 = v2;

  return v3;
}

void sub_100178080()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  [v0 pageContainerSize];
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007537B4();

  if ((v6 & 1) != 0 && v4 > 672.0)
  {
    sub_1004C4774();
  }

  else
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    objc_msgSendSuper2(&v7, "pageMarginInsets");
  }
}

uint64_t type metadata accessor for PrivacyDetailViewController()
{
  result = qword_10092A590;
  if (!qword_10092A590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100178214()
{
  sub_10003DEB8();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1001782B0(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v4 = v3;
  v63 = a3;
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v55 - v12;
  __chkstk_darwin(v14);
  v16 = v55 - v15;
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  sub_10074E994();
  v20 = sub_10034E47C();
  if (!v20)
  {
    return (*(v8 + 8))(v19, v7);
  }

  v57 = v13;
  v58 = v10;
  v60 = v21;
  v61 = v20;
  sub_100748BA4();
  sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter);
  if (sub_100745064())
  {
    v62 = v8;
    if (sub_1007450A4() <= a2 || (sub_100745054() & 1) != 0)
    {
      v56 = 0;
    }

    else
    {
      v22 = sub_100745094();
      if (sub_1003C9404(a2))
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v56 = v23;
    }

    v8 = v62;
  }

  else
  {
    v56 = 0;
  }

  v62 = a1;
  v24 = sub_10074E9C4();
  v25 = *(v8 + 16);
  v25(v16, v19, v7);
  v59 = *(v8 + 88);
  v26 = v59(v16, v7);
  if (v26 == enum case for Shelf.ContentType.smallLockup(_:) || v26 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_19:
    v28 = 1;
    goto LABEL_20;
  }

  v49 = v26 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v26 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v49 || v26 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_19;
  }

  if (v26 == enum case for Shelf.ContentType.editorialCard(_:) || v26 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_17;
  }

  v28 = 1;
  if (v26 == enum case for Shelf.ContentType.brick(_:) || v26 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.reviews(_:) || v26 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v26 == enum case for Shelf.ContentType.framedVideo(_:) || v26 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v26 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v26 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v26 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v26 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v26 == enum case for Shelf.ContentType.posterLockup(_:) || v26 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_17:
    v28 = v24;
    goto LABEL_20;
  }

  if (v26 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v28 = v24;
    if (v26 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v8 + 8))(v16, v7);
      v28 = 0;
    }
  }

LABEL_20:
  v29 = *&v4[qword_100930140];
  v30 = v63;
  [v63 bounds];
  [v30 safeAreaInsets];
  sub_100753BA4();
  v32 = v31.n128_f64[0];
  v34 = v33;
  if ((v28 & 1) != 0 || (v63 = v25, (v35 = sub_10034E47C()) == 0) || (v37 = v35, v38 = v36, [v4 pageMarginInsets], v40 = (*(v38 + 32))(0, v4, v37, v38, v39), v32 = v32 - (v40 + v41), v42 = objc_msgSend(v4, "traitCollection"), v43 = *v29, v55[0] = *(*v29 + 696), v55[1] = v43 + 696, LOBYTE(v37) = (v55[0])(v19, v42), v42, (v37 & 1) == 0))
  {
LABEL_64:
    v31.n128_u64[0] = 0;
    if (v32 > 0.0)
    {
      v31.n128_f64[0] = v32;
    }

    (*(v60 + 24))(v62, v28 & 1, v4, *&v4[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_artworkLoader], v31, v34);
    return (*(v8 + 8))(v19, v7);
  }

  v44 = v57;
  v63(v57, v19, v7);
  v45 = v59(v44, v7);
  v46 = 0;
  if (v45 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v45 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v57, v7);
    v47 = [v4 traitCollection];
    v48 = (v55[0])(v19, v47);

    if (v48)
    {
      v46 = sub_10017B12C(v56, v4, v19);
    }

    else
    {
      v46 = 1;
    }
  }

  v51 = v58;
  v63(v58, v19, v7);
  result = v59(v51, v7);
  if (result == enum case for Shelf.ContentType.annotation(_:) || result == enum case for Shelf.ContentType.productCapability(_:) || result == enum case for Shelf.ContentType.productPageLink(_:) || result == enum case for Shelf.ContentType.privacyType(_:))
  {
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 + (v46 - 1) * -30.0;
      goto LABEL_63;
    }

    __break(1u);
  }

  else
  {
    v53 = (*(v8 + 8))(v58, v7);
    result = sub_10016D1E4(v53);
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 - v31.n128_f64[0] * (v46 - 1);
LABEL_63:
      v32 = v54 / v46;
      goto LABEL_64;
    }
  }

  __break(1u);
  return result;
}

void *sub_100178ABC()
{
  v1 = sub_1007457B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v5);
  v8 = (&v34 - v7);
  v9 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v10 = *(v0 + qword_100930140);
  v11 = (*((swift_isaMask & *v0) + 0x4D8))(v6);
  v12 = sub_10017C0B8(v11);
  if (v12)
  {
    v13 = v12;
    sub_100753284();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v9 = v35;
  }

  v14 = sub_10017B670(v0, v10);
  if (v14)
  {
    v15 = v14;
    sub_100753284();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v9 = v35;
  }

  sub_100748BA4();
  sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter);
  if (sub_1007450A4() < 1)
  {
    goto LABEL_14;
  }

  sub_100745074();
  if ((*(v2 + 88))(v8, v1) != enum case for ShelfBackground.color(_:))
  {
    (*(v2 + 8))(v8, v1);
    goto LABEL_14;
  }

  (*(v2 + 96))(v8, v1);

  v16 = *(sub_10000C518(&unk_100930940) + 48);
  v17 = sub_100748E34();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = sub_100753064();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v8 = v23;
  sub_100753284();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_100753344();

    v9 = v35;
LABEL_14:
    if (sub_1007450A4() < 1)
    {
      break;
    }

    if (!__OFSUB__(sub_1007450A4(), 1))
    {
      sub_100745074();
      if ((*(v2 + 88))(v4, v1) == enum case for ShelfBackground.color(_:))
      {
        (*(v2 + 96))(v4, v1);

        v24 = *(sub_10000C518(&unk_100930940) + 48);
        v25 = sub_100748E34();
        (*(*(v25 - 8) + 8))(v4 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = sub_100753064();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        sub_100753284();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();

        return v35;
      }

      else
      {
        (*(v2 + 8))(v4, v1);
      }

      return v9;
    }

    __break(1u);
LABEL_23:
    sub_100753304();
  }

  return v9;
}

void sub_1001791D4()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v9 = [v1 collectionViewLayout];

    if (v9)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        v5 = v9;
        v6 = [v4 configuration];
        sub_100016C60(0, &unk_100930230);
        v7 = sub_100754244();

        sub_100178ABC();
        sub_100016C60(0, &qword_10092E460);
        isa = sub_100753294().super.isa;

        [v7 setBoundarySupplementaryItems:isa];

        [v4 setConfiguration:v7];
      }
    }
  }
}

void sub_100179358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = sub_1007417F4();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007416B4();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10092AB88);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v54 = &v46 - v14;
  v15 = [v3 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 collectionViewLayout];

    [v17 invalidateLayout];
  }

  v53 = *&v4[qword_100930140];
  v18 = [v4 collectionView];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 collectionViewLayout];

    if (v20)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        goto LABEL_8;
      }
    }

    v18 = 0;
  }

LABEL_8:
  v52 = v18;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v47 = v11;
    v48 = a2;
    v49 = a3;
    v50 = v4;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001E5D4(0, v21, 0);
    v22 = aBlock[0];
    v23 = v57 + 16;
    v57 = *(v57 + 16);
    v24 = *(v23 + 64);
    v51 = a1;
    v25 = a1 + ((v24 + 32) & ~v24);
    v26 = *(v23 + 56);
    v27 = (v23 - 8);
    do
    {
      v28 = v58;
      v29 = v59;
      (v57)(v58, v25, v59);
      v30 = sub_100741784();
      (*v27)(v28, v29);
      aBlock[0] = v22;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_10001E5D4((v31 > 1), v32 + 1, 1);
        v22 = aBlock[0];
      }

      v22[2] = v32 + 1;
      v22[v32 + 4] = v30;
      v25 += v26;
      --v21;
    }

    while (v21);
    v4 = v50;
    a1 = v51;
    a2 = v48;
    a3 = v49;
    v11 = v47;
  }

  sub_10017C300(&qword_100930200, &type metadata accessor for IndexSet);
  v33 = v56;
  sub_100754394();
  v34 = v22[2];
  v35 = v11;
  if (v34)
  {
    v36 = v22 + 4;
    do
    {
      v37 = *v36++;
      aBlock[6] = v37;
      sub_100754344();
      --v34;
    }

    while (v34);
  }

  v39 = v54;
  v38 = v55;
  (*(v55 + 32))(v54, v35, v33);
  (*(v38 + 56))(v39, 0, 1, v33);
  sub_10017BB74(v39);

  sub_10000C8CC(v39, &qword_10092AB88);
  v40 = [v4 collectionView];
  if (v40)
  {
    v41 = v40;
    v42 = swift_allocObject();
    v42[2] = a2;
    v42[3] = a3;
    v42[4] = v4;
    v42[5] = a1;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_10017BFF8;
    *(v43 + 24) = v42;
    aBlock[4] = sub_100045E0C;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_10086A098;
    v44 = _Block_copy(aBlock);
    v45 = v4;

    [v41 performBatchUpdates:v44 completion:0];
    _Block_release(v44);
  }
}

uint64_t sub_1001798B4()
{
  if (qword_100921ED8 != -1)
  {
    swift_once();
  }

  v1 = sub_100752E44();
  sub_10000D0FC(v1, qword_100983300);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5620;
  v7 = sub_10000C518(&qword_10092AB98);
  v6[0] = v0;
  v2 = v0;
  sub_100752424();
  sub_10000C8CC(v6, &unk_100923520);
  sub_1007523A4();
  swift_getErrorValue();
  v7 = v5;
  v3 = sub_10000D134(v6);
  (*(*(v5 - 8) + 16))(v3);
  sub_100752444();
  sub_10000C8CC(v6, &unk_100923520);
  sub_100752D04();
}

void sub_100179AE4()
{
  v1 = *&v0[qword_100930140];

  *(v1 + 80) = 1;

  sub_1001791D4();
}

void sub_100179B44()
{
  v1 = [v0 collectionView];
  sub_10017A020(v1);

  sub_1001791D4();
}

void sub_100179C8C(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        sub_100748BA4();
        sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter);
        v11 = sub_100745154();
        sub_1001782B0(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_100179E44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100725158();
    sub_100179C8C(v2);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    sub_100748BA4();
    sub_10017C300(&qword_10092ABA8, &type metadata accessor for GenericPagePresenter);
    v5 = sub_100748C04();

    if (v5)
    {
      sub_100746BF4();
    }
  }

  return result;
}

void sub_100179F68(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  v4 = [a3 collectionView];
  if (v4)
  {
    v5 = v4;
    sub_1007417F4();
    isa = sub_100753294().super.isa;
    [v5 deleteItemsAtIndexPaths:isa];
  }
}

void sub_10017A020(void *a1)
{
  v3 = sub_1007416B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    sub_100748BA4();
    sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter);
    v14 = sub_1007450A4();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_10017C300(&qword_100930200, &type metadata accessor for IndexSet);
        sub_100754394();
        do
        {
          aBlock[6] = v13;
          sub_100754344();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_10017C29C;
        *(v21 + 24) = v20;
        aBlock[4] = sub_1000C0C28;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10011B528;
        aBlock[3] = &unk_10086A110;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

uint64_t sub_10017A41C(uint64_t a1, uint64_t a2)
{
  v45 = sub_10000C518(&qword_100930BC0);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = sub_100752914();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = sub_100741654();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000C518(&unk_100940650);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_100741664();
  swift_beginAccess();
  sub_1007416B4();
  sub_10017C300(&qword_10092AB90, &type metadata accessor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    sub_1007534F4();
    sub_10017C300(&unk_100940660, &type metadata accessor for IndexSet.Index);
    v19 = sub_100753014();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = sub_100753514();
    v22 = *v21;
    v20(v49, 0);
    sub_100753504();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_100412104(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          sub_100749564();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_10025B470(v16, v22);
    swift_endAccess();
    v50 = v22;
    sub_1007544E4();
    v17 = v44;
    sub_100752EE4();
    sub_100752AD4();
    (*v41)(v17, v45);
  }

  return sub_10000C8CC(v15, &unk_100940650);
}

uint64_t sub_10017A9B4(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10000C518(&qword_100930BC0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = sub_100741654();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100940650);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_100741664();
  sub_1007416B4();
  sub_10017C300(&qword_10092AB90, &type metadata accessor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    sub_1007534F4();
    sub_10017C300(&unk_100940660, &type metadata accessor for IndexSet.Index);
    v12 = v23;
    v13 = sub_100753014();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = sub_100753514();
    v16 = *v15;
    v14(v24, 0);
    sub_100753504();
    v25 = v16;
    sub_1007544E4();
    v17 = v20;
    sub_100752EE4();
    sub_100752AD4();
  }

  return sub_10000C8CC(v9, &unk_100940650);
}

uint64_t sub_10017ACF8()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_100752914();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *(v0 + 16);
  v12 = sub_100748BA4();
  v44 = sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter);
  result = sub_1007450A4();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v14 = 0;
    v42 = result;
    v43 = (v40 + 48);
    v41 = (v40 + 32);
    v38 = v4;
    v39 = (v40 + 16);
    v33 = v40 + 40;
    v34 = (v40 + 8);
    v36 = v11;
    v37 = v10;
    v35 = v12;
    do
    {
      sub_100745154();
      sub_10074EAC4();
      if ((*v43)(v4, 1, v5) == 1)
      {

        sub_10000C8CC(v4, &unk_100925380);
      }

      else
      {
        v15 = *v41;
        (*v41)(v10, v4, v5);
        swift_beginAccess();
        v16 = v7;
        v17 = v5;
        (*v39)(v7, v10, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v1 + 56);
        v19 = v45;
        v20 = v1;
        *(v1 + 56) = 0x8000000000000000;
        v22 = sub_100412104(v14);
        v23 = v19[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = sub_1007547B4();
          __break(1u);
          return result;
        }

        v26 = v21;
        if (v19[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100675E4C();
          }
        }

        else
        {
          sub_100671DD0(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_100412104(v14);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_22;
          }

          v22 = v27;
        }

        v7 = v16;
        v29 = v45;
        if (v26)
        {
          v5 = v17;
          (*(v40 + 40))(v45[7] + *(v40 + 72) * v22, v16, v17);
        }

        else
        {
          v45[(v22 >> 6) + 8] |= 1 << v22;
          *(v29[6] + 8 * v22) = v14;
          v5 = v17;
          v15((v29[7] + *(v40 + 72) * v22), v16, v17);
          v30 = v29[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_20;
          }

          v29[2] = v32;
        }

        v1 = v20;
        *(v20 + 56) = v29;

        swift_endAccess();

        v10 = v37;
        (*v34)(v37, v5);
        v4 = v38;
      }

      ++v14;
      result = v42;
    }

    while (v42 != v14);
  }

  return result;
}

uint64_t sub_10017B12C(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

id sub_10017B670(void *a1, uint64_t a2)
{
  if (*(a2 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v3 = sub_100750B04();
  sub_10000D0FC(v3, qword_1009820C8);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = sub_100751044();
  sub_100750544();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

void sub_10017B858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100752AC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10092A558) = 0;
  v10 = qword_10092A560;
  v11 = sub_1007417F4();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  type metadata accessor for PrivacyDetailDataSource();
  swift_allocObject();
  v12 = swift_retain_n();
  v13 = sub_100478468(v12);

  v14 = sub_10046EA4C(a1, v13, a2);
  sub_10017C300(&qword_10092ABA0, type metadata accessor for PrivacyDetailViewController);
  v15 = v14;

  v16 = v15;
  sub_10074AB24();
  v16[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
  v17 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber];
  v18 = [v16 navigationItem];
  v19 = v18;
  if (v17)
  {
    v20 = 2;
  }

  else
  {
    v20 = 3;
  }

  [v18 setLargeTitleDisplayMode:v20];

  v21 = v16;
  sub_10074AB34();
  v23 = v22;

  if (v23)
  {
    v24 = sub_100753064();
  }

  else
  {
    v24 = 0;
  }

  [v21 setTitle:v24];

  v25 = [v21 view];
  if (v25)
  {
    memset(v26, 0, sizeof(v26));
    sub_100752A84();
    sub_10000C8CC(v26, &unk_100923520);
    sub_100753C74();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10017BB74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_10092AB88);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007416B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_100016B4C(a1, v9, &qword_10092AB88);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10000C8CC(v9, &qword_10092AB88);
    if (v2[14])
    {

      sub_100749574();
    }

    swift_beginAccess();
    v2[7] = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26 = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_10000C518(&qword_100925350);
    v21[0] = 0;
    sub_10017C038();
    v16 = v22;
    sub_100752474();

    (*(v11 + 8))(v15, v10);
  }

  sub_10017ACF8();
  sub_100016B4C(v24, v6, &qword_10092AB88);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10000C8CC(v6, &qword_10092AB88);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_10000C518(&qword_100925350);
  sub_10017C038();
  sub_100752474();

  return (*(v11 + 8))(v19, v10);
}

uint64_t sub_10017BFB8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10017C004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10017C038()
{
  result = qword_100925358;
  if (!qword_100925358)
  {
    sub_10000C724(&qword_100925350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925358);
  }

  return result;
}

id sub_10017C0B8(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 absoluteDimension:a1];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = sub_100753064();
  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v5 elementKind:v6 alignment:1];

  return v7;
}

uint64_t sub_10017C1D8()
{
  v1 = sub_1007416B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10017C29C()
{
  v1 = *(sub_1007416B4() - 8);
  v2 = ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);

  sub_1005D65C4(v3, v2);
}

uint64_t sub_10017C300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10017C350()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10017C5B8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100009D34();
  sub_1007477B4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productRatingView];
  if (v11)
  {
    [v11 setFrame:{v4, v6, v8, v10}];
  }

  result = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (result)
  {
    return [result setFrame:{v4, v6, v8, v10}];
  }

  return result;
}

void sub_10017C6E4()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (v1)
  {
    [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel) measurementsWithFitting:v0 in:?];
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productRatingView];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 traitCollection];
      sub_100750B44();
    }
  }
}

id sub_10017C808(uint64_t a1, char a2)
{
  v3 = v2;
  sub_10074F464();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productNoRatingsView;
    v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
    if (v8)
    {
      v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
    }

    else
    {
      v12 = [objc_allocWithZone(type metadata accessor for ProductNoRatingsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v13 = [v2 contentView];
      [v13 addSubview:v12];

      v14 = *&v2[v7];
      *&v2[v7] = v12;
      v9 = v12;

      v8 = 0;
    }

    v15 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel];
    v16 = v8;
    v17 = sub_100753064();

    [v15 setText:v17];

    [v9 setNeedsLayout];
  }

  else
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productRatingView;
    v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productRatingView];
    if (v11)
    {
      v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productRatingView];
    }

    else
    {
      v18 = [objc_allocWithZone(type metadata accessor for ProductRatingsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v19 = [v3 contentView];
      [v19 addSubview:v18];

      v20 = *&v3[v10];
      *&v3[v10] = v18;
      v9 = v18;

      v11 = 0;
    }

    v21 = v11;
    sub_1001685D0(a1, a2 & 1);
  }

  return [v3 setNeedsLayout];
}

uint64_t type metadata accessor for ProductRatingsCollectionViewCell()
{
  result = qword_10092ABE8;
  if (!qword_10092ABE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017CAAC()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10017CB48()
{
  v1 = v0;
  v2 = sub_10074A8A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A8C4();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v2, qword_10097E010);
  (*(v3 + 16))(v5, v8, v2);
  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  sub_1007477B4();
  v10 = &v9[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v9[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v11 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v9[v11], v120);
    sub_10000C888(v120, v121);
    sub_10074AE54();
    v13 = v12;
    v15 = v14;
    sub_10000C620(v120);
    *v10 = v13;
    *(v10 + 1) = v15;
    v10[16] = 0;
  }

  sub_10074A894();
  v16 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v17 = sub_1007433C4();
  v122 = &protocol witness table for UIView;
  v121 = v17;
  v67 = v16;
  v120[0] = v16;
  v18 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  v66 = v18;
  if (v18)
  {
    v19 = sub_100745C84();
    v20 = &protocol witness table for UILabel;
    v21 = v18;
  }

  else
  {
    v21 = 0;
    v19 = 0;
    v20 = 0;
    v116 = 0;
    v117 = 0;
  }

  v115 = v21;
  v118 = v19;
  v119 = v20;
  v22 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v23 = sub_100745C84();
  v24 = v23;
  v114 = &protocol witness table for UILabel;
  v113 = v23;
  v112 = v22;
  v25 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v111 = &protocol witness table for UILabel;
  v110 = v23;
  v64 = v25;
  v65 = v22;
  v109 = v25;
  v26 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v26)
  {
    v27 = &protocol witness table for UILabel;
    v28 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
    v29 = v23;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v105 = 0;
    v106 = 0;
  }

  v104 = v28;
  v107 = v29;
  v108 = v27;
  v30 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v102 = v23;
  v103 = &protocol witness table for UILabel;
  v63 = v30;
  v101 = v30;
  v99 = type metadata accessor for OfferButton();
  v100 = &protocol witness table for UIView;
  v98 = v9;
  v31 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView);
  v96 = type metadata accessor for RatingView();
  v97 = &protocol witness table for UIView;
  v94 = &protocol witness table for UILabel;
  v95 = v31;
  v32 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel);
  v93 = v24;
  v61 = v32;
  v62 = v31;
  v92 = v32;
  v33 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView);
  v68 = v9;
  if (v33)
  {
    v34 = type metadata accessor for EditorsChoiceView();
    v35 = &protocol witness table for UIView;
    v36 = v33;
  }

  else
  {
    v36 = 0;
    v34 = 0;
    v35 = 0;
    v88 = 0;
    v89 = 0;
  }

  v87 = v36;
  v90 = v34;
  v91 = v35;
  v37 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton);
  v69 = v5;
  if (v37)
  {
    v38 = type metadata accessor for SearchAdTransparencyButton();
    v39 = &protocol witness table for UIView;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v83 = 0;
    v84 = 0;
  }

  v81 = &protocol witness table for UILabel;
  v82 = v37;
  v85 = v38;
  v86 = v39;
  v40 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel);
  v80 = v24;
  v79 = v40;
  v41 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  v77 = type metadata accessor for MetadataRibbonView();
  v78 = &protocol witness table for UIView;
  v76 = v41;
  v42 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView);
  v74 = type metadata accessor for SearchTagsRibbonView();
  v75 = &protocol witness table for UIView;
  v73 = v42;
  v43 = v33;
  v44 = v37;
  v45 = v40;
  v46 = v41;
  v42;
  v47 = v67;
  v48 = v66;
  v49 = v65;
  v50 = v64;
  v51 = v26;
  v52 = v63;
  v53 = v68;
  v54 = v62;
  v55 = v61;
  MetadataRibbonView.hasContent.getter();
  sub_100076CBC();
  v56 = v70;
  sub_10074A8B4();
  sub_100180FDC(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout);
  v57 = v72;
  sub_100750404();
  v59 = v58;
  (*(v71 + 8))(v56, v57);
  return v59;
}

id sub_10017D15C()
{
  v1 = v0;
  v2 = sub_10074AE04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  sub_100743384(v20, v6);
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel];
  v8 = [v7 superview];
  if (!v8 || (v9 = v8, sub_100016C60(0, &qword_100922300), v10 = v0, v11 = sub_100753FC4(), v9, v10, (v11 & 1) == 0))
  {
    [v1 addSubview:v7];
  }

  [v7 setHidden:1];
  [v7 setText:0];
  [v1 setNeedsLayout];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *&v1[v12];
  }

  else
  {
    v14 = 0;
  }

  *&v1[v12] = 0;

  v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  *&v15[v16] = _swiftEmptyArrayStorage;

  sub_100264DD4(_swiftEmptyArrayStorage);
  _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  v17 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v15[v17], v5, v2);
  swift_endAccess();
  [v15 setNeedsLayout];
  (*(v3 + 8))(v5, v2);
  *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels) = _swiftEmptyArrayStorage;

  return sub_10007585C(_swiftEmptyArrayStorage);
}

uint64_t sub_10017D40C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_100749574();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
  type metadata accessor for SearchTagsRibbonView();
  sub_100180FDC(&qword_1009393D0, type metadata accessor for SearchTagsRibbonView);
  return sub_10074D3B4();
}

void sub_10017D514(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview:v6];
  }
}

uint64_t sub_10017D5BC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10074A8A4();
  sub_100039C50(v4, qword_10097E010);
  v46 = sub_10000D0FC(v4, qword_10097E010);
  v96 = &type metadata for Double;
  v97 = &protocol witness table for Double;
  v95 = 0x4024000000000000;
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009809C0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  v7(v3, enum case for FontSource.useCase(_:), v0);
  v50 = v7;
  v93 = sub_100750B04();
  v94 = &protocol witness table for StaticDimension;
  v8 = v93;
  v47 = v93;
  sub_10000D134(v92);
  v90 = v0;
  v91 = &protocol witness table for FontSource;
  v9 = sub_10000D134(v89);
  v52 = v1[2];
  v52(v9, v3, v0);
  v48 = v1 + 2;
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v53 = v1 + 1;
  *v3 = UIFontTextStyleBody;
  v49 = enum case for FontSource.textStyle(_:);
  v54 = v1 + 13;
  (v7)(v3);
  v90 = v8;
  v91 = &protocol witness table for StaticDimension;
  sub_10000D134(v89);
  v87 = v0;
  v88 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v86);
  v12 = v52;
  v52(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  sub_100750B14();
  v10(v3, v0);
  *v3 = v13;
  v14 = v49;
  v15 = v50;
  v50(v3, v49, v0);
  v87 = v47;
  v88 = &protocol witness table for StaticDimension;
  sub_10000D134(v86);
  v84 = v0;
  v85 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v83);
  v12(v16, v3, v0);
  v17 = v13;
  sub_100750B14();
  v10(v3, v0);
  v51 = v10;
  *v3 = v17;
  v15(v3, v14, v0);
  v18 = v47;
  v84 = v47;
  v85 = &protocol witness table for StaticDimension;
  sub_10000D134(v83);
  v81 = v0;
  v82 = &protocol witness table for FontSource;
  v19 = sub_10000D134(v80);
  v20 = v52;
  v52(v19, v3, v0);
  v21 = v17;
  sub_100750B14();
  v10(v3, v0);
  *v3 = v21;
  v50(v3, v49, v0);
  v81 = v18;
  v82 = &protocol witness table for StaticDimension;
  sub_10000D134(v80);
  v78 = v0;
  v79 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v77);
  v20(v22, v3, v0);
  v23 = v21;
  sub_100750B14();
  v51(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v24 = v49;
  v25 = v50;
  v50(v3, v49, v0);
  v26 = v18;
  v78 = v18;
  v79 = &protocol witness table for StaticDimension;
  sub_10000D134(v77);
  v75 = v0;
  v76 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v74);
  v28 = v52;
  v52(v27, v3, v0);
  v29 = UIFontTextStyleFootnote;
  sub_100750B14();
  v30 = v51;
  v51(v3, v0);
  *v3 = v29;
  v25(v3, v24, v0);
  v75 = v26;
  v76 = &protocol witness table for StaticDimension;
  sub_10000D134(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v71);
  v28(v31, v3, v0);
  v32 = v29;
  sub_100750B14();
  v30(v3, v0);
  *v3 = v32;
  v33 = v49;
  v34 = v50;
  v50(v3, v49, v0);
  v72 = v26;
  v73 = &protocol witness table for StaticDimension;
  sub_10000D134(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v35 = sub_10000D134(v68);
  v52(v35, v3, v0);
  v36 = v32;
  sub_100750B14();
  v51(v3, v0);
  *v3 = v36;
  v34(v3, v33, v0);
  v69 = v26;
  v70 = &protocol witness table for StaticDimension;
  sub_10000D134(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v37 = sub_10000D134(v65);
  v38 = v52;
  v52(v37, v3, v0);
  v39 = v36;
  sub_100750B14();
  v40 = v51;
  v51(v3, v0);
  *v3 = v39;
  v34(v3, v33, v0);
  v66 = v26;
  v67 = &protocol witness table for StaticDimension;
  sub_10000D134(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v41 = sub_10000D134(v62);
  v38(v41, v3, v0);
  v42 = v39;
  sub_100750B14();
  v40(v3, v0);
  v64 = &protocol witness table for Double;
  v63 = &type metadata for Double;
  v61[19] = &protocol witness table for Double;
  v62[0] = 0x4024000000000000;
  v61[18] = &type metadata for Double;
  v61[14] = &protocol witness table for Double;
  v61[15] = 0x4010000000000000;
  v61[13] = &type metadata for Double;
  v61[9] = &protocol witness table for Double;
  v61[10] = 0x4020000000000000;
  v61[8] = &type metadata for Double;
  v61[5] = 0x401C000000000000;
  *v3 = v42;
  v50(v3, v49, v0);
  v61[3] = v47;
  v61[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v43 = sub_10000D134(v58);
  v52(v43, v3, v0);
  v44 = v42;
  sub_100750B14();
  v51(v3, v0);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v57 = &protocol witness table for Double;
  v58[0] = 0x4040000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4024000000000000;
  return sub_10074A874();
}

uint64_t sub_10017DF50()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_10092AC00);
  sub_10000D0FC(v0, qword_10092AC00);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

void sub_10017DFEC(char a1)
{
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] != (a1 & 1))
  {
    v2 = v1;
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice])
    {
      v3 = v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_useAdsLocale];
      v4 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
      v5 = sub_1006BACE0(2u, 0, 0, v3, 0);
      v6 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView;
      v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView];
      *&v2[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView] = v5;

      v8 = *&v2[v6];
      if (!v8 || (sub_100016C60(0, &qword_100923500), v9 = v8, v10 = sub_100753DF4(), [v9 setTintColor:v10], v9, v10, !*&v2[v6]))
      {
        __break(1u);
        return;
      }

      [v2 addSubview:?];
    }

    else
    {
      v11 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView;
      v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v11];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v11] = 0;
    }

    [v2 setNeedsLayout];
  }
}

uint64_t sub_10017E148()
{
  v1 = sub_10074AE04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_isDisplayingSearchAd;
  v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_isDisplayingSearchAd);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_isInsideSearchAd;
  result = swift_beginAccess();
  v5[v8] = v7;
  if (v7 == 1)
  {
    _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v2 + 24))(&v5[v10], v4, v1);
    swift_endAccess();
    [v5 setNeedsLayout];
    result = (*(v2 + 8))(v4, v1);
  }

  *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView) + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_isInsideSearchAd) = *(v0 + v6);
  return result;
}

char *sub_10017E2D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v101 = sub_10074AB44();
  v103 = *(v101 - 1);
  __chkstk_darwin(v101);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v94 - v13;
  v15 = sub_100750304();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRegularMargin] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataSmallMargin] = 0x401C000000000000;
  if (qword_100921468 != -1)
  {
    swift_once();
  }

  v98 = v11;
  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100981A70);
  v100 = *(v19 - 8);
  v102 = *(v100 + 16);
  v104 = v100 + 16;
  v102(v18, v20, v19);
  (*(v16 + 104))(v18, enum case for FontSource.useCase(_:), v15);
  v109 = v15;
  v110 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v108);
  (*(v16 + 16))(v21, v18, v15);
  sub_100750B14();
  (*(v16 + 8))(v18, v15);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = 0x4040000000000000;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 0;
  v22 = type metadata accessor for RatingView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating] = 0;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor] = 0;
  v24 = &v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding];
  *v24 = 0;
  v24[8] = 1;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_100921700 != -1)
  {
    swift_once();
  }

  v25 = qword_10093B668;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = qword_10093B668;
  v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize] = 3;
  *v24 = 0;
  v24[8] = 1;
  v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase] = 0;
  v26 = type metadata accessor for StarRow();
  v27 = objc_allocWithZone(v26);
  v28 = v25;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView] = sub_1004FC838(5, 1, 3, 0, 1, 0, 0);
  v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars] = 0;
  v29 = objc_allocWithZone(v26);
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView] = sub_1004FC838(5, 0, 3, 0, 1, 0, 0);
  v107.receiver = v23;
  v107.super_class = v22;
  v30 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1004FA474();
  v31 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView;
  v32 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView];
  v33 = *&v32[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
  *&v32[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating] = *&v30[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating];
  v34 = v32;
  sub_1004FAF60(v33);

  if (*&v30[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView])
  {
    [v30 addSubview:?];
  }

  v35 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView;
  [v30 addSubview:*&v30[v31]];

  *&v5[v35] = v30;
  v36 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel;
  v37 = v103;
  if (qword_100921318 != -1)
  {
    swift_once();
  }

  v38 = sub_10000D0FC(v19, qword_100981680);
  v102(v14, v38, v19);
  v39 = *(v100 + 56);
  v39(v14, 0, 1, v19);
  v40 = *(v37 + 104);
  v103 = v37 + 104;
  v41 = v98;
  LODWORD(v100) = enum case for DirectionalTextAlignment.none(_:);
  v97 = v40;
  v40(v98);
  v42 = sub_100745C84();
  v43 = objc_allocWithZone(v42);
  *&v5[v36] = sub_100745C74();
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_useAdsLocale] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView] = 0;
  v44 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView;
  *&v5[v44] = [objc_allocWithZone(type metadata accessor for MetadataRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView;
  *&v5[v45] = [objc_allocWithZone(type metadata accessor for SearchTagsRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_shouldEvenlyDistribute] = 2;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsCalculator] = 0;
  v46 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock];
  *v46 = 0;
  v46[1] = 0;
  if (qword_100921310 != -1)
  {
    swift_once();
  }

  v47 = sub_10000D0FC(v19, qword_100981668);
  v48 = v102;
  v102(v14, v47, v19);
  v95 = v19;
  v96 = v39;
  v39(v14, 0, 1, v19);
  v97(v41, v100, v101);
  v49 = objc_allocWithZone(v42);
  v50 = &OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel] = sub_100745C74();
  v106.receiver = v5;
  v106.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v106, "initWithFrame:", a1, a2, a3, a4);
  v52 = sub_10074F3F4();
  v109 = v52;
  v53 = sub_100180FDC(&qword_10092AC70, &type metadata accessor for Feature);
  v110 = v53;
  v54 = sub_10000D134(v108);
  v55 = *(v52 - 8);
  v56 = *(v55 + 104);
  LODWORD(v103) = enum case for Feature.search_tags(_:);
  ObjectType = v52;
  v100 = v55 + 104;
  v101 = v56;
  (v56)(v54);
  LOBYTE(v52) = sub_10074FC74();
  sub_10000C620(v108);
  v57 = v48;
  if (v52)
  {
    v98 = v53;
    v58 = v51;
    if (qword_100920EF0 != -1)
    {
      swift_once();
    }

    v59 = v95;
    v60 = sub_10000D0FC(v95, qword_100980A20);
    v48(v14, v60, v59);
    v61 = v14;
    v62 = v14;
    v63 = v96;
    v96(v61, 0, 1, v59);
    sub_100745BA4();
    v64 = qword_100920F00;
    v65 = *&v58[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    if (v64 != -1)
    {
      swift_once();
    }

    v66 = sub_10000D0FC(v59, qword_100980A50);
    v57(v62, v66, v59);
    v63(v62, 0, 1, v59);
    sub_100745BA4();

    v67 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel;
    v68 = *&v58[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel];
    sub_1007509A4();
    if (qword_100920218 != -1)
    {
      swift_once();
    }

    v69 = sub_10074A584();
    v70 = sub_10000D0FC(v69, qword_10097DA08);
    v109 = v69;
    v110 = sub_100180FDC(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle);
    v71 = sub_10000D134(v108);
    (*(*(v69 - 8) + 16))(v71, v70, v69);
    sub_100745BC4();

    v72 = *&v58[v67];
    sub_100016C60(0, &qword_100923500);
    v73 = v72;
    v74 = sub_100753DF4();
    [v73 setTextColor:v74];

    [*&v58[v67] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    v75 = v98;
    v50 = &OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler;
  }

  else
  {
    v76 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel];
    sub_100016C60(0, &qword_100923500);
    v77 = v76;
    v78 = sub_100753DE4();
    [v77 setTextColor:v78];

    v75 = v53;
    v58 = v51;
  }

  v79 = v50[12];
  v80 = *&v58[v79];
  sub_100016C60(0, &qword_100923500);
  v81 = v80;
  v82 = sub_100753DF4();
  [v81 setTextColor:v82];

  [*&v58[v79] setUserInteractionEnabled:0];
  v83 = v103;
  if (qword_100920418 != -1)
  {
    swift_once();
  }

  v84 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v84, qword_10092AC00);
  v105 = v58;
  v85 = v58;
  sub_100743464();

  sub_100753F54();
  [v85 addSubview:*&v85[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView]];
  v86 = ObjectType;
  v109 = ObjectType;
  v110 = v75;
  v87 = sub_10000D134(v108);
  v88 = v101;
  v101(v87, v83, v86);
  v89 = sub_10074FC74();
  sub_10000C620(v108);
  if (v89)
  {
    [v85 addSubview:*&v85[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel]];
  }

  v109 = v86;
  v110 = v75;
  v90 = sub_10000D134(v108);
  v88(v90, v83, v86);
  v91 = sub_10074FC74();
  sub_10000C620(v108);
  v92 = &OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView;
  if ((v91 & 1) == 0)
  {
    v92 = &OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView;
  }

  [v85 addSubview:*&v85[*v92]];
  *(*&v85[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton] + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_includeTopPadding) = 0;
  return v85;
}

double sub_10017F114(void *a1)
{
  v112 = a1;
  v2 = sub_10074A8C4();
  v101 = *(v2 - 8);
  v102 = v2;
  __chkstk_darwin(v2);
  v100 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074AE04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074CD14();
  v94 = *(v7 - 8);
  v95 = v7;
  __chkstk_darwin(v7);
  v93 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007479B4();
  v109 = *(v9 - 8);
  v110 = v9;
  __chkstk_darwin(v9);
  v105 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = &v82 - v12;
  v13 = sub_10074A8A4();
  v106 = *(v13 - 8);
  __chkstk_darwin(v13);
  v99 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v18 - 8);
  v83 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v25 = *(v23 + v24);
  v26 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v22, v23 + v26, v4);
  v86 = v5;
  v87 = v4;
  v27 = *(v5 + 56);
  v103 = v22;
  v27(v22, 0, 1, v4);
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView];
  v29 = *(v28 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
  v84 = *(v28 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_shouldEvenlyDistribute);
  v104 = v29;

  v111 = v25;

  [v1 layoutMargins];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v13, qword_10097E010);
  v96 = *(v106 + 16);
  v97 = v106 + 16;
  v96(v17, v30, v13);
  v31 = v112;
  v32 = sub_100753804();
  v108 = v13;
  if (v32)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v33 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v33 = qword_10093FF58;
  }

  v34 = v110;
  v35 = sub_10000D0FC(v110, v33);
  v36 = v109;
  v37 = v105;
  (*(v109 + 16))(v105, v35, v34);
  (*(v36 + 32))(v107, v37, v34);
  v38 = [v31 preferredContentSizeCategory];
  sub_100753924();

  sub_100747964();
  sub_100747994();
  sub_10074A894();
  v105 = v17;
  sub_10074A884();
  v92 = sub_100750F34();
  swift_allocObject();
  v98 = sub_100750F14();
  v39 = objc_opt_self();
  v90 = v39;
  v40 = [v39 preferredFontForTextStyle:UIFontTextStyleBody];
  v41 = sub_10074F3F4();
  v149[3] = v41;
  v42 = sub_100180FDC(&qword_10092AC70, &type metadata accessor for Feature);
  v149[4] = v42;
  v43 = sub_10000D134(v149);
  v44 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v45 = *(v41 - 8);
  v91 = *(v45 + 104);
  v46 = v45 + 104;
  v88 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v91(v43, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
  v89 = v46;
  sub_10074FC74();
  sub_10000C620(v149);
  v47 = v93;
  sub_10074CD04();
  sub_10074CCE4();
  v48 = v95;
  v94 = *(v94 + 8);
  (v94)(v47, v95);
  v49 = [v39 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v148[3] = v41;
  v148[4] = v42;
  v50 = sub_10000D134(v148);
  v51 = v44;
  v52 = v91;
  v91(v50, v51, v41);
  sub_10074FC74();
  sub_10000C620(v148);
  sub_10074CD04();
  sub_10074CCE4();
  v53 = v94;
  (v94)(v47, v48);
  v54 = [v90 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v147[3] = v41;
  v147[4] = v42;
  v55 = sub_10000D134(v147);
  v52(v55, v88, v41);
  sub_10074FC74();
  sub_10000C620(v147);
  sub_10074CD04();
  sub_10074CCE4();
  v53(v47, v48);
  v56 = v111;
  LODWORD(v95) = sub_10001BB7C(0, v111) & (v56 != 0);
  if (v95 == 1)
  {
    v57 = v92;
    v58 = objc_allocWithZone(sub_100751034());
    v59 = v112;
    v60 = sub_100751024();
    v61 = v83;
    sub_100180F6C(v103, v83);
    v63 = v86;
    v62 = v87;
    v64 = *(v86 + 48);
    if (v64(v61, 1, v87) == 1)
    {
      v65 = v85;
      _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v64(v61, 1, v62) != 1)
      {
        sub_100180F04(v61);
      }
    }

    else
    {
      v65 = v85;
      (*(v63 + 32))(v85, v61, v62);
    }

    v67 = v60;
    sub_100018CE4(v111, v65, v67);

    (*(v63 + 8))(v65, v62);
    swift_allocObject();
    v66 = sub_100750F04();
  }

  else
  {
    v57 = v92;
    swift_allocObject();
    v66 = sub_100750F14();
  }

  v68 = v66;

  v69 = v104;
  if ((sub_10001BB7C(v104, 0) & (v69 != 0)) == 1)
  {
    sub_100077794(v69, v84);
    swift_allocObject();
    v70 = sub_100750F04();
  }

  else
  {
    swift_allocObject();
    v70 = sub_100750F14();
  }

  v71 = v70;
  v96(v99, v105, v108);
  v146 = &protocol witness table for LayoutViewPlaceholder;
  v145 = v57;
  v144 = v98;
  v143 = 0;
  *&v141[40] = 0u;
  v142 = 0u;
  sub_10000C824(v149, v141);
  sub_10000C824(v148, &v140);
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;

  v72 = sub_100750F24();
  v133 = &protocol witness table for LayoutViewPlaceholder;
  v132 = v57;
  v131 = v72;
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v121 = 0;
  v120 = 0u;
  *&v119[40] = 0u;
  sub_10000C824(v147, v119);
  v117 = v57;
  v118 = &protocol witness table for LayoutViewPlaceholder;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  v116 = v68;
  v114 = v57;
  v113 = v71;
  v73 = v100;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1007A5CF0;
  v75 = v112;
  *(v74 + 32) = v112;
  v76 = v75;
  v77 = sub_100751044();
  sub_100180FDC(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout);
  v78 = v102;
  sub_100750404();
  v80 = v79;

  (*(v101 + 8))(v73, v78);
  sub_10000C620(v147);
  sub_10000C620(v148);
  sub_10000C620(v149);
  (*(v109 + 8))(v107, v110);
  (*(v106 + 8))(v105, v108);
  sub_100180F04(v103);
  return v80;
}

uint64_t sub_10017FED8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074A8A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074A8C4();
  v74 = *(v9 - 8);
  v75 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130.receiver = v1;
  v130.super_class = ObjectType;
  v77 = ObjectType;
  objc_msgSendSuper2(&v130, "layoutSubviews", v10);
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v5, qword_10097E010);
  (*(v6 + 16))(v8, v12, v5);
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton];
  type metadata accessor for BaseLockupView();
  sub_1007477B4();
  v14 = &v13[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v13[v15], v127);
    sub_10000C888(v127, v128);
    sub_10074AE54();
    v17 = v16;
    v19 = v18;
    sub_10000C620(v127);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  sub_10074A894();
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
  v21 = sub_1007433C4();
  v129 = &protocol witness table for UIView;
  v128 = v21;
  v71 = v20;
  v127[0] = v20;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
  v70 = v22;
  if (v22)
  {
    v23 = sub_100745C84();
    v24 = &protocol witness table for UILabel;
    v25 = v22;
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v24 = 0;
    v123 = 0;
    v124 = 0;
  }

  v122 = v25;
  v125 = v23;
  v126 = v24;
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel];
  v27 = sub_100745C84();
  v28 = v27;
  v121 = &protocol witness table for UILabel;
  v120 = v27;
  v119 = v26;
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
  v118 = &protocol witness table for UILabel;
  v117 = v27;
  v67 = v29;
  v68 = v26;
  v116 = v29;
  v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v30)
  {
    v31 = &protocol witness table for UILabel;
    v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
    v33 = v27;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v112 = 0;
    v113 = 0;
  }

  v111 = v32;
  v114 = v33;
  v115 = v31;
  v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel];
  v109 = v27;
  v110 = &protocol witness table for UILabel;
  v66 = v34;
  v108 = v34;
  v106 = type metadata accessor for OfferButton();
  v107 = &protocol witness table for UIView;
  v105 = v13;
  v35 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView];
  v103 = type metadata accessor for RatingView();
  v104 = &protocol witness table for UIView;
  v101 = &protocol witness table for UILabel;
  v102 = v35;
  v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel];
  v100 = v28;
  v64 = v36;
  v65 = v35;
  v99 = v36;
  v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView];
  if (v37)
  {
    v38 = type metadata accessor for EditorsChoiceView();
    v39 = &protocol witness table for UIView;
    v40 = v37;
  }

  else
  {
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v95 = 0;
    v96 = 0;
  }

  v94 = v40;
  v97 = v38;
  v98 = v39;
  v41 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  v72 = v8;
  v69 = v13;
  v42 = 0;
  if (v41)
  {
    v42 = type metadata accessor for SearchAdTransparencyButton();
    v43 = &protocol witness table for UIView;
  }

  else
  {
    v43 = 0;
    v90 = 0;
    v91 = 0;
  }

  v88 = &protocol witness table for UILabel;
  v89 = v41;
  v92 = v42;
  v93 = v43;
  v44 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel];
  v87 = v28;
  v86 = v44;
  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView];
  v84 = type metadata accessor for MetadataRibbonView();
  v85 = &protocol witness table for UIView;
  v83 = v45;
  v46 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView];
  v81 = type metadata accessor for SearchTagsRibbonView();
  v82 = &protocol witness table for UIView;
  v80 = v46;
  v47 = v37;
  v48 = v41;
  v49 = v44;
  v50 = v45;
  v51 = v46;
  v52 = v71;
  v53 = v70;
  v54 = v68;
  v55 = v67;
  v56 = v30;
  v57 = v66;
  v58 = v69;
  v59 = v65;
  v60 = v64;
  MetadataRibbonView.hasContent.getter();
  sub_100076CBC();
  v61 = v73;
  sub_10074A8B4();
  sub_1007477B4();
  v62 = v76;
  sub_10074A864();
  (*(v78 + 8))(v62, v79);
  return (*(v74 + 8))(v61, v75);
}

id sub_100180594(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v8)
  {
    v9 = v8;
    [v3 convertPoint:v9 toCoordinateSpace:{a2, a3}];
    v10 = [v9 pointInside:a1 withEvent:?];
    result = v8;
    if (v10)
    {
      return result;
    }
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
}

id sub_1001806E8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100920418 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v6, qword_10092AC00);
    v7 = v1;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

uint64_t sub_1001808F8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataTextSpace;
  v2 = sub_100750B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock);

  return sub_1000164A8(v3);
}

uint64_t type metadata accessor for SmallSearchLockupView()
{
  result = qword_10092AC58;
  if (!qword_10092AC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100180B48()
{
  result = sub_100750B04();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100180CA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100180D58()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_100180DB4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

uint64_t sub_100180E74()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_100180FDC(&qword_1009393D0, type metadata accessor for SearchTagsRibbonView);
  return sub_10074D3C4();
}

uint64_t sub_100180F04(uint64_t a1)
{
  v2 = sub_10000C518(&unk_1009393C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100180F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009393C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100180FDC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 IconArtworkGridLayout.init(metrics:icons:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 73) = *(a1 + 73);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 96) = a2;
  return result;
}

uint64_t IconArtworkGridLayout.Metrics.init(iconSize:interItemSpacing:horizontalOffsetPercentage:rotation:preferredGridSize:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  result = sub_100012160(a1, a5 + 16);
  *(a5 + 56) = a8;
  *(a5 + 64) = a9;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 88) = a4 & 1;
  return result;
}

uint64_t LargeGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 16);

  return sub_100012160(a1, v1 + 16);
}

uint64_t IconArtworkGridLayout.Metrics.preferredGridSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  return result;
}

uint64_t static IconArtworkGridLayout.totalNumberOfIcons(fitting:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  swift_getObjectType();

  return sub_1001814DC(a1, a2, a3);
}

char *static IconArtworkGridLayout.iconFrames(relativeTo:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();

  return sub_100181518(a1, a2, a3, a4, a5);
}

uint64_t IconArtworkGridLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_getObjectType();
  result = sub_100181518(v4, a1, a2, a3, a4);
  v10 = result;
  v11 = *(v4 + 96);
  v12 = *(v11 + 16);
  if (!v12)
  {

    return sub_100750314();
  }

  v13 = 0;
  v14 = *(result + 16);
  v15 = v11 + 32;
  for (i = result + 56; ; i += 32)
  {
    if (v13 >= v14)
    {
      goto LABEL_3;
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    sub_10000C824(v15, v17);
    result = sub_10000C888(v17, v17[3]);
    if (v13 >= *(v10 + 16))
    {
      goto LABEL_12;
    }

    sub_100750394();
    result = sub_10000C620(v17);
LABEL_3:
    ++v13;
    v15 += 40;
    if (v12 == v13)
    {

      return sub_100750314();
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001814DC(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v3 = *(sub_100181518(a1, 0.0, 0.0, a2, a3) + 2);

  return v3;
}

char *sub_100181518(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v206, v182);
  v207.origin.x = a4 * -0.5;
  v207.origin.y = a5 * -0.5;
  v207.size.width = a4;
  v207.size.height = a5;
  v208 = CGRectApplyAffineTransform(v207, &v206);
  x = v208.origin.x;
  y = v208.origin.y;
  width = v208.size.width;
  v204 = v208.size.width;
  height = v208.size.height;
  v200 = v208.size.height;
  MinX = CGRectGetMinX(v208);
  v195 = a2;
  v209.origin.x = a2;
  v196 = a3;
  v209.origin.y = a3;
  v209.size.width = a4;
  v209.size.height = a5;
  v197 = a5;
  v203 = MinX + CGRectGetMidX(v209);
  v210.origin.x = x;
  v210.origin.y = y;
  v210.size.width = width;
  v210.size.height = height;
  MinY = CGRectGetMinY(v210);
  v211.origin.x = a2;
  v211.origin.y = a3;
  v211.size.width = a4;
  v19 = a4;
  v211.size.height = a5;
  v202 = MinY + CGRectGetMidY(v211);
  v21 = *a1;
  v20 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v206, v182);
  v212.origin.x = v21 * -0.5;
  v212.origin.y = v20 * -0.5;
  v212.size.width = v21;
  v212.size.height = v20;
  v194 = v20;
  v213 = CGRectApplyAffineTransform(v212, &v206);
  v22 = v213.origin.x;
  v23 = v213.origin.y;
  v24 = v213.size.width;
  v25 = v213.size.height;
  v26 = CGRectGetMinX(v213);
  v214.origin.x = 0.0;
  v214.origin.y = 0.0;
  v214.size.width = v21;
  v214.size.height = v20;
  v199 = v26 + CGRectGetMidX(v214);
  v215.origin.x = v22;
  v215.origin.y = v23;
  v215.size.width = v24;
  v215.size.height = v25;
  v27 = CGRectGetMinY(v215);
  v216.origin.x = 0.0;
  v216.origin.y = 0.0;
  v216.size.width = v21;
  v216.size.height = v20;
  v201 = v27 + CGRectGetMidY(v216);
  sub_10000C888((a1 + 16), *(a1 + 40));
  sub_100536120();
  sub_100750564();
  v29 = v28;
  v189 = v28;
  (*(v11 + 8))(v13, v10);
  v30 = *(a1 + 56);
  v192 = v21;
  v31 = v21 + v29;
  v32 = floor(v31 * v30);
  v33 = v195;
  v217.origin.x = v195;
  v34 = v196;
  v217.origin.y = v196;
  v217.size.width = v19;
  v35 = v197;
  v217.size.height = v197;
  MidX = CGRectGetMidX(v217);
  v218.origin.x = v33;
  v218.origin.y = v34;
  v193 = v19;
  v218.size.width = v19;
  v218.size.height = v35;
  MidY = CGRectGetMidY(v218);
  v36 = v182;
  v37 = __sincos_stret(v182);
  v188 = v37.__cosval * v31;
  v187 = v37.__sinval * v31;
  v38 = __sincos_stret(v36 + 3.14159265);
  v191 = v38.__cosval * v31;
  v190 = v38.__sinval * v31;
  v179 = v37.__cosval * v32;
  v178 = v37.__sinval * v32;
  v39 = __sincos_stret(v36 + 1.57079633);
  sinval = v39.__sinval;
  cosval = v39.__cosval;
  v40 = v194 + v189;
  v41 = v199;
  v219.origin.x = v199;
  v42 = v201;
  v219.origin.y = v201;
  v219.size.width = v24;
  v219.size.height = v25;
  v43 = MidX + CGRectGetMidX(v219);
  v220.origin.x = v41;
  v220.origin.y = v42;
  v220.size.width = v24;
  v220.size.height = v25;
  v44 = v43 + CGRectGetWidth(v220) * -0.5;
  v221.origin.x = v41;
  v221.origin.y = v42;
  v221.size.width = v24;
  v221.size.height = v25;
  v45 = MidY + CGRectGetMidY(v221);
  v222.origin.x = v41;
  v222.origin.y = v42;
  v222.size.width = v24;
  v222.size.height = v25;
  v223.origin.y = v45 + CGRectGetHeight(v222) * -0.5;
  v299.origin.x = v203;
  v299.size.width = v204;
  v223.origin.x = v44;
  v299.origin.y = v202;
  v223.size.width = v24;
  v223.size.height = v25;
  v299.size.height = v200;
  v46 = CGRectIntersectsRect(v223, v299);
  v177 = v40;
  MinX = v24;
  v198 = v25;
  if (v46)
  {
    v184 = cosval * v40 + v179;
    v183 = sinval * v40 + v178;
    v47 = _swiftEmptyArrayStorage;
    v48 = 0.5;
    v49 = MidX;
    v50 = MidY;
    v51 = v200;
    v52 = v201;
    v53 = v199;
    do
    {
      cosval = v49;
      v229.origin.x = v53;
      v229.origin.y = v52;
      v229.size.width = v24;
      v229.size.height = v25;
      v56 = v49 + CGRectGetMidX(v229);
      v230.origin.x = v53;
      v230.origin.y = v52;
      v230.size.width = v24;
      v230.size.height = v25;
      v57 = v56 - CGRectGetWidth(v230) * v48;
      v231.origin.x = v53;
      v231.origin.y = v52;
      v231.size.width = v24;
      v231.size.height = v25;
      v189 = v50 + CGRectGetMidY(v231);
      v232.origin.x = v53;
      v232.origin.y = v52;
      v232.size.width = v24;
      v232.size.height = v25;
      v58 = v189 - CGRectGetHeight(v232) * v48;
      v233.origin.x = v57;
      v233.origin.y = v58;
      v233.size.width = v24;
      v233.size.height = v25;
      v301.origin.y = v202;
      v301.origin.x = v203;
      v301.size.width = v204;
      v301.size.height = v51;
      v59 = CGRectIntersectsRect(v233, v301);
      sinval = v50;
      if (v59)
      {
        v189 = cosval;
        v60 = v50;
        do
        {
          v239.origin.x = v57;
          v239.origin.y = v58;
          v239.size.width = v24;
          v239.size.height = v25;
          v303.origin.x = v195;
          v303.origin.y = v196;
          v303.size.width = v193;
          v303.size.height = v197;
          if (CGRectIntersectsRect(v239, v303))
          {
            v240.origin.x = 0.0;
            v240.origin.y = 0.0;
            v70 = v192;
            v240.size.width = v192;
            v71 = v194;
            v240.size.height = v194;
            v72 = CGRectGetMidX(v240);
            v241.origin.x = 0.0;
            v241.origin.y = 0.0;
            v241.size.width = v70;
            v241.size.height = v71;
            v73 = CGRectGetWidth(v241);
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v242.size.width = v70;
            v242.size.height = v71;
            v74 = CGRectGetMidY(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v70;
            v243.size.height = v71;
            v75 = CGRectGetHeight(v243);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_100254AF0(0, *(v47 + 2) + 1, 1, v47);
            }

            v77 = *(v47 + 2);
            v76 = *(v47 + 3);
            v62 = v189;
            if (v77 >= v76 >> 1)
            {
              v47 = sub_100254AF0((v76 > 1), v77 + 1, 1, v47);
            }

            v61 = 0.5;
            *(v47 + 2) = v77 + 1;
            v78 = &v47[32 * v77];
            v78[4] = v62 + v72 - v73 * 0.5;
            v78[5] = v60 + v74 - v75 * 0.5;
            v79 = v194;
            v78[6] = v192;
            v78[7] = v79;
          }

          else
          {
            v61 = 0.5;
            v62 = v189;
          }

          v63 = v188 + v62;
          v60 = v187 + v60;
          v25 = v198;
          v64 = v199;
          v234.origin.x = v199;
          v65 = v201;
          v234.origin.y = v201;
          v24 = MinX;
          v234.size.width = MinX;
          v234.size.height = v198;
          v66 = CGRectGetMidX(v234);
          v189 = v63;
          v67 = v63 + v66;
          v235.origin.x = v64;
          v235.origin.y = v65;
          v235.size.width = v24;
          v235.size.height = v25;
          v57 = v67 - CGRectGetWidth(v235) * v61;
          v236.origin.x = v64;
          v236.origin.y = v65;
          v236.size.width = v24;
          v236.size.height = v25;
          v68 = v60 + CGRectGetMidY(v236);
          v237.origin.x = v64;
          v237.origin.y = v65;
          v237.size.width = v24;
          v237.size.height = v25;
          v58 = v68 - CGRectGetHeight(v237) * v61;
          v238.origin.x = v57;
          v238.origin.y = v58;
          v238.size.width = v24;
          v238.size.height = v25;
          v302.origin.y = v202;
          v302.origin.x = v203;
          v302.size.width = v204;
          v302.size.height = v200;
          v69 = CGRectIntersectsRect(v238, v302);
          v50 = sinval;
        }

        while (v69);
      }

      v80 = v191 + cosval;
      v81 = v190 + v50;
      v244.size.height = v198;
      v82 = v199;
      v244.origin.x = v199;
      v83 = v201;
      v244.origin.y = v201;
      v244.size.width = v24;
      v84 = v80 + CGRectGetMidX(v244);
      v245.origin.x = v82;
      v245.origin.y = v83;
      v245.size.width = v24;
      v245.size.height = v198;
      v85 = v84 - CGRectGetWidth(v245) * 0.5;
      v246.origin.x = v82;
      v246.origin.y = v83;
      v246.size.width = v24;
      v246.size.height = v198;
      v86 = v81 + CGRectGetMidY(v246);
      v247.origin.x = v82;
      v247.origin.y = v83;
      v25 = v198;
      v247.size.width = v24;
      v247.size.height = v198;
      v87 = v86 - CGRectGetHeight(v247) * 0.5;
      v248.origin.x = v85;
      v248.origin.y = v87;
      v248.size.width = v24;
      v248.size.height = v25;
      v304.origin.y = v202;
      v304.origin.x = v203;
      v304.size.width = v204;
      v304.size.height = v200;
      if (CGRectIntersectsRect(v248, v304))
      {
        do
        {
          v254.origin.x = v85;
          v254.origin.y = v87;
          v254.size.width = v24;
          v254.size.height = v25;
          v306.origin.x = v195;
          v306.origin.y = v196;
          v306.size.width = v193;
          v306.size.height = v197;
          if (CGRectIntersectsRect(v254, v306))
          {
            v255.origin.x = 0.0;
            v255.origin.y = 0.0;
            v94 = v192;
            v255.size.width = v192;
            v95 = v194;
            v255.size.height = v194;
            v96 = CGRectGetMidX(v255);
            v256.origin.x = 0.0;
            v256.origin.y = 0.0;
            v256.size.width = v94;
            v256.size.height = v95;
            v97 = CGRectGetWidth(v256);
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v257.size.width = v94;
            v257.size.height = v95;
            v189 = CGRectGetMidY(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v94;
            v258.size.height = v95;
            v98 = CGRectGetHeight(v258);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_100254AF0(0, *(v47 + 2) + 1, 1, v47);
            }

            v100 = *(v47 + 2);
            v99 = *(v47 + 3);
            if (v100 >= v99 >> 1)
            {
              v47 = sub_100254AF0((v99 > 1), v100 + 1, 1, v47);
            }

            v88 = 0.5;
            v101 = v81 + v189 - v98 * 0.5;
            *(v47 + 2) = v100 + 1;
            v102 = &v47[32 * v100];
            v102[4] = v80 + v96 - v97 * 0.5;
            v102[5] = v101;
            v103 = v194;
            v102[6] = v192;
            v102[7] = v103;
          }

          else
          {
            v88 = 0.5;
          }

          v80 = v191 + v80;
          v81 = v190 + v81;
          v89 = v199;
          v249.origin.x = v199;
          v90 = v201;
          v249.origin.y = v201;
          v249.size.width = v24;
          v91 = v198;
          v249.size.height = v198;
          v92 = v80 + CGRectGetMidX(v249);
          v250.origin.x = v89;
          v250.origin.y = v90;
          v250.size.width = MinX;
          v250.size.height = v91;
          v85 = v92 - CGRectGetWidth(v250) * v88;
          v251.origin.x = v89;
          v251.origin.y = v90;
          v251.size.width = MinX;
          v251.size.height = v91;
          v93 = v81 + CGRectGetMidY(v251);
          v252.origin.x = v89;
          v252.origin.y = v90;
          v25 = v91;
          v24 = MinX;
          v252.size.width = MinX;
          v252.size.height = v25;
          v87 = v93 - CGRectGetHeight(v252) * v88;
          v253.origin.x = v85;
          v253.origin.y = v87;
          v253.size.width = v24;
          v253.size.height = v25;
          v305.origin.y = v202;
          v305.origin.x = v203;
          v305.size.width = v204;
          v305.size.height = v200;
        }

        while (CGRectIntersectsRect(v253, v305));
      }

      v49 = v184 + cosval;
      v50 = v183 + sinval;
      v53 = v199;
      v224.origin.x = v199;
      v52 = v201;
      v224.origin.y = v201;
      v224.size.width = v24;
      v224.size.height = v25;
      v54 = v49 + CGRectGetMidX(v224);
      v225.origin.x = v53;
      v225.origin.y = v52;
      v225.size.width = v24;
      v225.size.height = v25;
      v48 = 0.5;
      v189 = v54 - CGRectGetWidth(v225) * 0.5;
      v226.origin.x = v53;
      v226.origin.y = v52;
      v226.size.width = v24;
      v226.size.height = v25;
      v55 = v50 + CGRectGetMidY(v226);
      v227.origin.x = v53;
      v227.origin.y = v52;
      v227.size.width = v24;
      v227.size.height = v25;
      v228.origin.y = v55 - CGRectGetHeight(v227) * 0.5;
      v228.origin.x = v189;
      v228.size.width = v24;
      v228.size.height = v25;
      v300.origin.y = v202;
      v300.origin.x = v203;
      v300.size.width = v204;
      v51 = v200;
      v300.size.height = v200;
    }

    while (CGRectIntersectsRect(v228, v300));
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
    v52 = v201;
    v53 = v199;
  }

  v104 = __sincos_stret(v182 + -1.57079633);
  v184 = v104.__cosval * v177 - v179;
  v105 = MidX + v184;
  v183 = v104.__sinval * v177 - v178;
  v106 = MidY + v183;
  v259.origin.x = v53;
  v259.origin.y = v52;
  v259.size.width = v24;
  v259.size.height = v25;
  v107 = CGRectGetMidX(v259);
  sinval = v105;
  v108 = v105 + v107;
  v260.origin.x = v53;
  v260.origin.y = v52;
  v260.size.width = v24;
  v260.size.height = v25;
  v109 = v53;
  v110 = v108 - CGRectGetWidth(v260) * 0.5;
  v261.origin.x = v109;
  v261.origin.y = v52;
  v261.size.width = v24;
  v261.size.height = v25;
  v111 = CGRectGetMidY(v261);
  cosval = v106;
  v112 = v106 + v111;
  v262.origin.x = v109;
  v262.origin.y = v52;
  v262.size.width = v24;
  v262.size.height = v25;
  v263.origin.y = v112 - CGRectGetHeight(v262) * 0.5;
  v307.size.height = v200;
  v263.origin.x = v110;
  v263.size.width = v24;
  v263.size.height = v25;
  v307.origin.y = v202;
  v307.origin.x = v203;
  v307.size.width = v204;
  if (CGRectIntersectsRect(v263, v307))
  {
    v113 = sinval;
    v114 = cosval;
    v115 = v199;
    do
    {
      v269.origin.x = v115;
      v269.origin.y = v52;
      v269.size.width = v24;
      v269.size.height = v25;
      v119 = v113 + CGRectGetMidX(v269);
      v270.origin.x = v115;
      v270.origin.y = v52;
      v270.size.width = v24;
      v270.size.height = v25;
      v120 = v119 - CGRectGetWidth(v270) * 0.5;
      v271.origin.x = v115;
      v271.origin.y = v52;
      v271.size.width = v24;
      v271.size.height = v25;
      v121 = v114 + CGRectGetMidY(v271);
      v272.origin.x = v115;
      v272.origin.y = v52;
      v272.size.width = v24;
      v272.size.height = v25;
      v122 = v121 - CGRectGetHeight(v272) * 0.5;
      v273.origin.x = v120;
      v273.origin.y = v122;
      v273.size.width = v24;
      v273.size.height = v25;
      v309.origin.y = v202;
      v309.origin.x = v203;
      v309.size.width = v204;
      v309.size.height = v200;
      v123 = CGRectIntersectsRect(v273, v309);
      sinval = v113;
      cosval = v114;
      if (v123)
      {
        v189 = v113;
        do
        {
          v279.origin.x = v120;
          v279.origin.y = v122;
          v279.size.width = v24;
          v279.size.height = v25;
          v311.origin.x = v195;
          v311.origin.y = v196;
          v311.size.width = v193;
          v311.size.height = v197;
          if (CGRectIntersectsRect(v279, v311))
          {
            v280.origin.x = 0.0;
            v280.origin.y = 0.0;
            v132 = v192;
            v280.size.width = v192;
            v133 = v194;
            v280.size.height = v194;
            v134 = CGRectGetMidX(v280);
            v281.origin.x = 0.0;
            v281.origin.y = 0.0;
            v281.size.width = v132;
            v281.size.height = v133;
            v135 = CGRectGetWidth(v281);
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v282.size.width = v132;
            v282.size.height = v133;
            v136 = CGRectGetMidY(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v132;
            v283.size.height = v133;
            v137 = CGRectGetHeight(v283);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_100254AF0(0, *(v47 + 2) + 1, 1, v47);
            }

            v139 = *(v47 + 2);
            v138 = *(v47 + 3);
            v140 = 0.5;
            v125 = v189;
            if (v139 >= v138 >> 1)
            {
              v145 = sub_100254AF0((v138 > 1), v139 + 1, 1, v47);
              v140 = 0.5;
              v47 = v145;
            }

            v141 = v125 + v134 - v135 * v140;
            v142 = v114 + v136;
            v124 = 0.5;
            *(v47 + 2) = v139 + 1;
            v143 = &v47[32 * v139];
            v143[4] = v141;
            v143[5] = v142 - v137 * 0.5;
            v144 = v194;
            v143[6] = v192;
            v143[7] = v144;
          }

          else
          {
            v124 = 0.5;
            v125 = v189;
          }

          v126 = v188 + v125;
          v114 = v187 + v114;
          v25 = v198;
          v127 = v199;
          v274.origin.x = v199;
          v128 = v201;
          v274.origin.y = v201;
          v24 = MinX;
          v274.size.width = MinX;
          v274.size.height = v198;
          v129 = CGRectGetMidX(v274);
          v189 = v126;
          v130 = v126 + v129;
          v275.origin.x = v127;
          v275.origin.y = v128;
          v275.size.width = v24;
          v275.size.height = v25;
          v120 = v130 - CGRectGetWidth(v275) * v124;
          v276.origin.x = v127;
          v276.origin.y = v128;
          v276.size.width = v24;
          v276.size.height = v25;
          v131 = v114 + CGRectGetMidY(v276);
          v277.origin.x = v127;
          v277.origin.y = v128;
          v277.size.width = v24;
          v277.size.height = v25;
          v122 = v131 - CGRectGetHeight(v277) * v124;
          v278.origin.x = v120;
          v278.origin.y = v122;
          v278.size.width = v24;
          v278.size.height = v25;
          v310.origin.y = v202;
          v310.origin.x = v203;
          v310.size.width = v204;
          v310.size.height = v200;
        }

        while (CGRectIntersectsRect(v278, v310));
      }

      v146 = v191 + sinval;
      v147 = v190 + cosval;
      v148 = v199;
      v284.origin.x = v199;
      v284.origin.y = v201;
      v284.size.width = v24;
      v284.size.height = v25;
      v149 = CGRectGetMidX(v284);
      v189 = v146;
      v150 = v146 + v149;
      v285.origin.x = v148;
      v285.origin.y = v201;
      v285.size.width = v24;
      v285.size.height = v25;
      v151 = v150 - CGRectGetWidth(v285) * 0.5;
      v286.origin.x = v148;
      v286.origin.y = v201;
      v286.size.width = v24;
      v286.size.height = v25;
      v152 = v147 + CGRectGetMidY(v286);
      v287.origin.x = v148;
      v52 = v201;
      v287.origin.y = v201;
      v287.size.width = v24;
      v287.size.height = v25;
      v153 = v152 - CGRectGetHeight(v287) * 0.5;
      v288.origin.x = v151;
      v288.origin.y = v153;
      v288.size.width = v24;
      v288.size.height = v25;
      v312.origin.y = v202;
      v312.origin.x = v203;
      v312.size.width = v204;
      v312.size.height = v200;
      if (CGRectIntersectsRect(v288, v312))
      {
        do
        {
          v294.origin.x = v151;
          v294.origin.y = v153;
          v294.size.width = v24;
          v294.size.height = v25;
          v314.origin.x = v195;
          v314.origin.y = v196;
          v314.size.width = v193;
          v314.size.height = v197;
          if (CGRectIntersectsRect(v294, v314))
          {
            v295.origin.x = 0.0;
            v295.origin.y = 0.0;
            v161 = v192;
            v295.size.width = v192;
            v162 = v194;
            v295.size.height = v194;
            v163 = CGRectGetMidX(v295);
            v296.origin.x = 0.0;
            v296.origin.y = 0.0;
            v296.size.width = v161;
            v296.size.height = v162;
            v164 = CGRectGetWidth(v296);
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v297.size.width = v161;
            v297.size.height = v162;
            v165 = CGRectGetMidY(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v161;
            v298.size.height = v162;
            v166 = CGRectGetHeight(v298);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_100254AF0(0, *(v47 + 2) + 1, 1, v47);
            }

            v168 = *(v47 + 2);
            v167 = *(v47 + 3);
            v169 = 0.5;
            v155 = v189;
            if (v168 >= v167 >> 1)
            {
              v174 = sub_100254AF0((v167 > 1), v168 + 1, 1, v47);
              v169 = 0.5;
              v47 = v174;
            }

            v170 = v155 + v163 - v164 * v169;
            v171 = v147 + v165;
            v154 = 0.5;
            *(v47 + 2) = v168 + 1;
            v172 = &v47[32 * v168];
            v172[4] = v170;
            v172[5] = v171 - v166 * 0.5;
            v173 = v194;
            v172[6] = v192;
            v172[7] = v173;
          }

          else
          {
            v154 = 0.5;
            v155 = v189;
          }

          v156 = v191 + v155;
          v147 = v190 + v147;
          v25 = v198;
          v157 = v199;
          v289.origin.x = v199;
          v52 = v201;
          v289.origin.y = v201;
          v24 = MinX;
          v289.size.width = MinX;
          v289.size.height = v198;
          v158 = CGRectGetMidX(v289);
          v189 = v156;
          v159 = v156 + v158;
          v290.origin.x = v157;
          v290.origin.y = v52;
          v290.size.width = v24;
          v290.size.height = v25;
          v151 = v159 - CGRectGetWidth(v290) * v154;
          v291.origin.x = v157;
          v291.origin.y = v52;
          v291.size.width = v24;
          v291.size.height = v25;
          v160 = v147 + CGRectGetMidY(v291);
          v292.origin.x = v157;
          v292.origin.y = v52;
          v292.size.width = v24;
          v292.size.height = v25;
          v153 = v160 - CGRectGetHeight(v292) * v154;
          v293.origin.x = v151;
          v293.origin.y = v153;
          v293.size.width = v24;
          v293.size.height = v25;
          v313.origin.y = v202;
          v313.origin.x = v203;
          v313.size.width = v204;
          v313.size.height = v200;
        }

        while (CGRectIntersectsRect(v293, v313));
      }

      v113 = v184 + sinval;
      v114 = v183 + cosval;
      v115 = v199;
      v264.origin.x = v199;
      v264.origin.y = v52;
      v264.size.width = v24;
      v264.size.height = v25;
      v116 = v113 + CGRectGetMidX(v264);
      v265.origin.x = v115;
      v265.origin.y = v52;
      v265.size.width = v24;
      v265.size.height = v25;
      v117 = v116 - CGRectGetWidth(v265) * 0.5;
      v266.origin.x = v115;
      v266.origin.y = v52;
      v266.size.width = v24;
      v266.size.height = v25;
      v118 = v114 + CGRectGetMidY(v266);
      v267.origin.x = v115;
      v267.origin.y = v52;
      v267.size.width = v24;
      v267.size.height = v25;
      v268.origin.y = v118 - CGRectGetHeight(v267) * 0.5;
      v268.origin.x = v117;
      v268.size.width = v24;
      v268.size.height = v25;
      v308.origin.y = v202;
      v308.origin.x = v203;
      v308.size.width = v204;
      v308.size.height = v200;
    }

    while (CGRectIntersectsRect(v268, v308));
  }

  return v47;
}

__n128 sub_100182828(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100182854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018289C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100182904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100182928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100182970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001829E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v36 = a5;
  v37 = a4;
  v42 = a3;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v40 = a1;
  v9 = sub_10074E984();
  v46 = *(v9 - 8);
  __chkstk_darwin(v9);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F6E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = sub_10000C518(&qword_100923228);
  __chkstk_darwin(v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  sub_100016B4C(a2, &v34 - v21, &unk_10093D6E0);
  sub_100016B4C(v42, &v22[*(v17 + 48)], &unk_10093D6E0);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450);
  sub_1007525B4();

  v23 = *(v12 + 104);
  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v48)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v25 = *v24;
  v41 = v16;
  v42 = v11;
  v26 = v11;
  v27 = v39;
  v23(v16, v25, v26);
  swift_getKeyPath();
  sub_1007525B4();

  v28 = *(v46 + 88);
  v38 = v9;
  v29 = v28(v27, v9);
  if (v29 == enum case for Shelf.ContentType.accessibilityFeatures(_:) || v29 == enum case for Shelf.ContentType.accessibilityParagraph(_:))
  {
    v33 = v41;
    v32 = v42;
    (*(v12 + 16))(v35, v41, v42);
    sub_100183368();
    sub_10074F6B4();
    (*(v12 + 8))(v33, v32);
    return sub_10000C8CC(v22, &qword_100923228);
  }

  else
  {
    v47 = v36;
    sub_100016B4C(v22, v19, &qword_100923228);
    v30 = *(v17 + 48);
    sub_1000E1F2C();
    sub_100745684();
    (*(v12 + 8))(v41, v42);
    sub_10000C8CC(v22, &qword_100923228);
    sub_10000C8CC(&v19[v30], &unk_10093D6E0);
    sub_10000C8CC(v19, &unk_10093D6E0);
    return (*(v46 + 8))(v27, v38);
  }
}

uint64_t sub_100182EE8()
{
  sub_10018330C();

  return sub_100745684();
}

uint64_t sub_100182FCC()
{
  sub_10018330C();

  return sub_100745674();
}

uint64_t sub_1001830B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100183CA0();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_10018310C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D6>, double a7@<D7>)
{
  v20[4] = a4;
  *&v20[2] = a6;
  *&v20[3] = a7;
  v20[0] = a5;
  v20[1] = a1;
  v10 = sub_10000C518(&qword_100923228);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  v17 = *v7;
  sub_100016B4C(a2, v20 - v15, &unk_10093D6E0);
  sub_100016B4C(a3, &v16[*(v11 + 56)], &unk_10093D6E0);
  v20[5] = v17;
  sub_100016B4C(v16, v13, &qword_100923228);
  v18 = *(v11 + 56);
  sub_1000E1F2C();

  sub_100745674();
  sub_10000C8CC(v16, &qword_100923228);

  sub_10000C8CC(&v13[v18], &unk_10093D6E0);
  return sub_10000C8CC(v13, &unk_10093D6E0);
}

unint64_t sub_10018330C()
{
  result = qword_10092AC98;
  if (!qword_10092AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092AC98);
  }

  return result;
}

uint64_t sub_100183368()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v34 = &v31 - v1;
  v39 = sub_10074F654();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v5 - 8);
  v43 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  sub_10000C518(&qword_100923E90);
  v16 = *(sub_10074F584() - 8);
  v40 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v32 = v18;
  *(v18 + 16) = xmmword_1007A7250;
  v19 = v18 + v17;
  v45 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v44 = 0x4030000000000000;
  v45 = 0x4020000000000000;
  sub_10074F5F4();
  v45 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v35 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v42 = *(v2 + 104);
  v38 = v2 + 104;
  v42(v4);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  v37 = v19;
  v41 = v15;
  sub_10074F544();
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v44 = 0x4034000000000000;
  v45 = 0x4024000000000000;
  sub_10074F5F4();
  v45 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  v26 = v40;
  v36 = v12;
  sub_10074F544();
  v31 = 2 * v26;
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  *v4 = vdupq_n_s64(0x4041000000000000uLL);
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  v33 = v9;
  sub_10074F544();
  v27 = v40;
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  v35 = enum case for PageGrid.HorizontalMargins.readableContentGuide(_:);
  v28 = v42;
  v42(v4);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  sub_10074F544();
  v31 = 4 * v27;
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v45 = 0x4038000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  v29 = v39;
  v28(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  sub_10074F544();
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v45 = 0x4038000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  (v42)(v4, v35, v29);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  sub_10074F544();
  return v32;
}

unint64_t sub_100183CA0()
{
  result = qword_10092ACA0;
  if (!qword_10092ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092ACA0);
  }

  return result;
}

uint64_t sub_100183CF4(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 >> 62)
  {
    if (sub_100754664() > a1)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    return 0;
  }

LABEL_4:
  result = swift_beginAccess();
  v5 = *(v1 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_100754574();
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

LABEL_7:
    swift_endAccess();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100183DD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100752AC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v13 = sub_10074F314();
  __chkstk_darwin(v13 - 8);
  result = sub_10074EF24();
  if (result)
  {
    v17 = a2;
    swift_beginAccess();
    [a3 contentMode];
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [a3 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();
    if (*(v3 + 16))
    {
      sub_1007433C4();
      sub_10004D658();

      sub_100744204();
    }

    v19 = 0u;
    v20 = 0u;
    memset(v18, 0, sizeof(v18));
    sub_100752A74();
    sub_1000277BC(v18);
    sub_1000277BC(&v19);
    *(&v20 + 1) = &type metadata for Int;
    *&v19 = v17;
    sub_100752AA4();
    v15 = *(v7 + 8);
    v15(v9, v6);
    sub_1000277BC(&v19);
    sub_100753C74();

    return (v15)(v12, v6);
  }

  return result;
}

uint64_t sub_1001840C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100184130()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    return sub_100754664();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1001841BC(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_100184250@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.icons(_:);
  v3 = sub_100748634();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1001842C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100183CF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001842EC()
{
  v0 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_1007433C4();
  v3 = sub_1007431D4();
  if (qword_1009204E8 != -1)
  {
    swift_once();
  }

  v4 = sub_10074F0C4();
  v5 = sub_10000D0FC(v4, qword_10097E278);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v2, v5, v4);
  (*(v6 + 56))(v2, 0, 1, v4);
  sub_100743374();
  return v3;
}

uint64_t sub_100184438()
{
  result = sub_100743344();
  if (*(v0 + 16))
  {
    sub_1007433C4();
    sub_10004D658();

    sub_100744274();
  }

  return result;
}

uint64_t sub_1001844D4(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v44 = sub_10000C518(&qword_10092ADC0);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v35 - v3;
  v45 = sub_100747EA4();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100925340);
  __chkstk_darwin(v5 - 8);
  v36 = &v35 - v6;
  v47 = sub_10000C518(&qword_10092ADC8);
  v38 = *(v47 - 8);
  __chkstk_darwin(v47);
  v37 = &v35 - v7;
  v8 = sub_10000C518(&qword_10092ADB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_10000C518(&unk_100930810);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = sub_100742BB4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  sub_100746944();
  sub_1007525C4();
  (*(v12 + 8))(v14, v11);
  sub_10000C518(&qword_1009242A0);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v10, 0, 1, v15);
    (*(v16 + 32))(v21, v10, v15);
    v24 = a1;
    sub_100746964();
    v25 = v37;
    sub_100752EB4();
    v26 = v46;
    sub_100185ADC();

    sub_100752E84();
    sub_100747EC4();

    (*(v16 + 16))(v18, v21, v15);
    v27 = v39;

    v28 = v41;
    v29 = sub_100747E84();
    v36 = &v35;
    __chkstk_darwin(v29);
    *(&v35 - 4) = v28;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v24;
    __chkstk_darwin(v30);
    *(&v35 - 4) = sub_100185B34;
    *(&v35 - 3) = v31;
    *(&v35 - 2) = v27;
    *(&v35 - 1) = v26;
    sub_10000C518(&qword_10092ADD0);
    sub_100185B4C();
    v32 = v40;
    sub_100751DF4();
    sub_100751E54();
    v33 = v44;
    v48[3] = v44;
    v48[4] = sub_10002DDC8(&qword_10092AE18, &qword_10092ADC0);
    sub_10000D134(v48);
    sub_100751DE4();
    (*(v42 + 8))(v32, v33);
    sub_1007538E4();
    (*(v38 + 8))(v25, v47);
    (*(v16 + 8))(v21, v15);
    return (*(v43 + 8))(v28, v45);
  }

  else
  {
    v23(v10, 1, 1, v15);
    return sub_100185A2C(v10);
  }
}

uint64_t sub_100184B84(uint64_t a1)
{
  v2 = sub_100747EA4();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);

  sub_100744BC4();
  sub_10000C518(&qword_10092AE00);
  return sub_100746934();
}

uint64_t type metadata accessor for AnnotationCollectionViewHostingCell()
{
  result = qword_10092AD90;
  if (!qword_10092AD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100184F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  v4 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v4 - 8);
  v38 = &v36 - v5;
  v6 = sub_10000C518(&qword_10092ADA8);
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v36 - v7;
  v8 = sub_100747EA4();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_10092ADB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_10000C518(&unk_100930810);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_100742BB4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v39 = a1;
  sub_100746944();
  sub_1007525C4();
  (*(v15 + 8))(v17, v14);
  sub_10000C518(&qword_1009242A0);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v26(v13, 0, 1, v18);
    (*(v19 + 32))(v24, v13, v18);
    v27 = *(v19 + 16);
    v37 = v24;
    v27(v21, v24, v18);

    sub_100747E84();
    v28 = v10;
    if (sub_100747E94() & 1) != 0 || (, sub_100747EB4(), , v29 = sub_100745894(), , (v29))
    {
      sub_1007468F4();
      v30 = v40;
      sub_100752994();
      sub_100185ADC();
      v31 = v42;
      sub_100752954();

      sub_100747EC4();

      sub_10000C518(&qword_10092A068);
      sub_10074DCB4();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1007A6580;
      sub_10074DCA4();
      sub_10074DC94();
      v47 = v32;
      sub_100185A94(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
      sub_10000C518(&qword_10092A078);
      sub_10002DDC8(&qword_10092A080, &qword_10092A078);
      sub_1007543A4();
      (*(v41 + 8))(v30, v31);
    }

    else
    {
      sub_10000C518(&qword_10092A068);
      sub_10074DCB4();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1007A6580;
      sub_10074DCA4();
      sub_10074DC94();
      v47 = v35;
      sub_100185A94(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
      sub_10000C518(&qword_10092A078);
      sub_10002DDC8(&qword_10092A080, &qword_10092A078);
      sub_1007543A4();
    }

    (*(v44 + 8))(v28, v45);
    return (*(v19 + 8))(v37, v18);
  }

  else
  {
    v26(v13, 1, 1, v18);
    sub_100185A2C(v13);
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007A6580;
    sub_10074DCA4();
    sub_10074DC94();
    v47 = v33;
    sub_100185A94(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000C518(&qword_10092A078);
    sub_10002DDC8(&qword_10092A080, &qword_10092A078);
    return sub_1007543A4();
  }
}

uint64_t sub_10018584C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100747524();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  v6 = v11[1];
  v7 = sub_1007537D4();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_100747534();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_100747564();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_1001859D4(uint64_t a1)
{
  result = sub_100185A94(&qword_10092ADA0, type metadata accessor for AnnotationCollectionViewHostingCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100185A2C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10092ADB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100185A94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100185ADC()
{
  result = qword_10092ADB8;
  if (!qword_10092ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092ADB8);
  }

  return result;
}

unint64_t sub_100185B4C()
{
  result = qword_10092ADD8;
  if (!qword_10092ADD8)
  {
    sub_10000C724(&qword_10092ADD0);
    sub_100185C04();
    sub_10002DDC8(&qword_100924AD8, &unk_100933360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092ADD8);
  }

  return result;
}

unint64_t sub_100185C04()
{
  result = qword_10092ADE0;
  if (!qword_10092ADE0)
  {
    sub_10000C724(&qword_10092ADE8);
    sub_10000C724(&qword_10092ADF0);
    sub_10000C724(&qword_10092ADF8);
    sub_100752764();
    sub_10000C724(&qword_10092AE00);
    sub_10002DDC8(&qword_10092AE08, &qword_10092AE00);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002DDC8(&qword_10092AE10, &unk_100933350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092ADE0);
  }

  return result;
}

unint64_t sub_100185DD8()
{
  result = qword_10092AE20;
  if (!qword_10092AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092AE20);
  }

  return result;
}

unint64_t sub_100185E30()
{
  result = qword_10092AE28;
  if (!qword_10092AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092AE28);
  }

  return result;
}

uint64_t sub_100185E88(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100185EC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10074E9C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100185EF0(uint64_t a1, uint64_t a2, objc_class *a3, char a4)
{
  v43 = a1;
  v44 = sub_100750304();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007410D4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&qword_100923030);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_100754074();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3;
  if (a4)
  {
    sub_100754164();
  }

  else
  {
    sub_1007541A4();
    v17 = [(objc_class *)a3 userInterfaceStyle];
    v18 = objc_opt_self();
    v19 = &selRef_systemGray3Color;
    if (v17 != 2)
    {
      v19 = &selRef_systemGray5Color;
    }

    v20 = [v18 *v19];
    v21 = sub_100754034();
    v40 = v13;
    v22 = v7;
    v23 = a3;
    v24 = v21;
    sub_100751584();
    v24(v45, 0);
    v25 = v23;
    v7 = v22;
    v13 = v40;
    [(objc_class *)v25 displayScale];
    v26 = sub_100754034();
    sub_100751594();
    v26(v45, 0);
  }

  (*(v14 + 104))(v16, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v13);
  sub_100754084();
  sub_100754104();
  if (a2)
  {
    sub_10000C518(&unk_100929CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = NSFontAttributeName;
    v28 = qword_100921370;

    v29 = NSFontAttributeName;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = sub_100750534();
    v31 = sub_10000D0FC(v30, qword_100981788);
    v32 = v41;
    (*(*(v30 - 8) + 16))(v41, v31, v30);
    v33 = v44;
    (*(v7 + 104))(v32, enum case for FontSource.useCase(_:), v44);
    v34.super.isa = v42;
    isa = sub_1007502F4(v34).super.isa;
    (*(v7 + 8))(v32, v33);
    *(inited + 64) = sub_100016C60(0, &qword_100923AB0);
    *(inited + 40) = isa;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &unk_100923510);
    sub_1007410F4();
    sub_100741094();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = sub_100741084();
  (*(*(v37 - 8) + 56))(v12, v36, 1, v37);
  return sub_1007540F4();
}

NSString sub_10018640C()
{
  result = sub_100753064();
  qword_10092AE30 = result;
  return result;
}

uint64_t sub_10018644C()
{
  v0 = sub_10000C518(&qword_10092AF00);
  __chkstk_darwin(v0);
  v1 = sub_10000C518(&qword_10092AEF8);
  sub_100039C50(v1, qword_10092AE38);
  sub_10000D0FC(v1, qword_10092AE38);
  sub_100016C60(0, &qword_10093B420);
  sub_100750624();
  sub_10002DDC8(&qword_10092AF08, &qword_10092AF00);
  return sub_1007512E4();
}

uint64_t sub_100186570()
{
  v0 = sub_100752E44();
  sub_100039C50(v0, qword_10092AE50);
  v1 = sub_10000D0FC(v0, qword_10092AE50);
  if (qword_100921EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100983330);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100186638()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1007467A4();
    sub_10052AB60(v2, 1, v1);
  }

  return result;
}

void sub_1001866C0(uint64_t a1, char a2, uint64_t a3, objc_class *a4)
{
  v6 = sub_100751504();
  __chkstk_darwin(v6);
  v7 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1007467B4();
  sub_100185EF0(v10, v11, a4, a2 & 1);

  v12 = sub_1007541F4();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_100754224();
  v13 = [(objc_class *)a4 preferredContentSizeCategory];
  v14 = sub_1004E9630(v13);
  v15 = v14;

  if (v14)
  {
    v16 = v15;
    sub_100753CE4();
    sub_1007514D4();
    sub_100753CF4();
  }

  else
  {
    sub_1007519E4();
    sub_100753CE4();
    sub_1007514F4();
    sub_100753CF4();
  }
}

char *sub_1001868B8(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_topSeparator;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = [v11 separatorColor];
  [v10 setBackgroundColor:v12];

  *&v4[v9] = v10;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_bottomSeparator;
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = [v11 separatorColor];
  [v15 setBackgroundColor:v16];

  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_guidedSearchResult] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsCalculator] = 0;
  v17 = &v4[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsUpdateBlock];
  v18 = type metadata accessor for GuidedSearchResultContentView();
  *v17 = 0;
  *(v17 + 1) = 0;
  v29.receiver = v4;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v20 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_topSeparator];
  v21 = v19;
  [v21 addSubview:v20];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_bottomSeparator]];
  v23 = *&v21[v22];
  v24 = objc_opt_self();
  v25 = v23;
  result = [v24 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v27 = result;
    [v25 setFont:result];

    [*&v21[v22] setNumberOfLines:0];
    sub_10000C518(&unk_1009249D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1007A6580;
    *(v28 + 32) = sub_1007519E4();
    *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v28 + 48) = sub_100751554();
    *(v28 + 56) = &protocol witness table for UITraitLegibilityWeight;
    sub_100753D44();

    swift_unknownObjectRelease();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100186C34()
{
  v1 = v0;
  v2 = sub_1007521E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752224();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  *(v9 + 16) = *&v1[v10];
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    swift_beginAccess();
    sub_10018A124((v9 + 16), 0x74696E696564, 0xE600000000000000);
    swift_endAccess();
  }

  else
  {
    sub_100016C60(0, &qword_100926D00);
    v19 = sub_100753774();
    aBlock[4] = sub_10018A978;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10086A5C8;
    v18 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10018A980(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags);
    v17 = v6;
    sub_10000C518(&unk_10092F750);
    sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
    sub_1007543A4();
    v13 = v18;
    v12 = v19;
    sub_100753784();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v20 + 8))(v8, v17);
  }

  v14 = type metadata accessor for GuidedSearchResultContentView();
  v21.receiver = v1;
  v21.super_class = v14;
  return objc_msgSendSuper2(&v21, "dealloc");
}

uint64_t sub_100186FFC(uint64_t a1)
{
  swift_beginAccess();
  sub_10018A124((a1 + 16), 0x74696E696564, 0xE600000000000000);
  return swift_endAccess();
}

uint64_t sub_100187120(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v57 = sub_100752294();
  v3 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = (v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1007476D4();
  sub_10018A980(&qword_10092AF10, 255, &type metadata accessor for GuidedSearchResult);
  result = sub_1007468B4();
  v7 = aBlock[0];
  if (aBlock[0])
  {
    v47 = v3;
    *&v2[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_guidedSearchResult] = aBlock[0];

    v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title];
    sub_1007476B4();
    v58 = v2;
    if (v9)
    {
      v10 = sub_100753064();
    }

    else
    {
      v10 = 0;
    }

    [v8 setText:v10];

    v11 = sub_1007476C4();
    v45 = byte_10092F2E0;
    swift_getKeyPath();
    sub_100746914();

    v55 = v66;
    v12 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills;
    v13 = v58;
    swift_beginAccess();
    v43 = v12;
    sub_10018A124(&v13[v12], 0xD000000000000017, 0x800000010076E960);
    if (qword_100920430 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v14 = sub_100752E44();
      sub_10000D0FC(v14, qword_10092AE50);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007AB1A0;
      v61 = sub_10000C518(&qword_10092AEF0);
      aBlock[0] = &type metadata for GuidedSearchTokenPill;
      sub_100752424();
      sub_10000C8CC(aBlock, &unk_100923520);
      sub_1007523A4();
      if (v11 >> 62)
      {
        v15 = sub_100754664();
      }

      else
      {
        v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v61 = &type metadata for Int;
      aBlock[0] = v15;
      sub_100752424();
      sub_10000C8CC(aBlock, &unk_100923520);
      sub_1007523A4();
      if (qword_100920428 != -1)
      {
        swift_once();
      }

      v16 = sub_10000C518(&qword_10092AEF8);
      v17 = sub_10000D0FC(v16, qword_10092AE38);
      swift_beginAccess();
      v61 = v16;
      v18 = sub_10000D134(aBlock);
      v19 = *(*(v16 - 8) + 16);
      v52 = v17;
      v53 = v16;
      v19(v18, v17, v16);
      sub_100752424();
      sub_10000C8CC(aBlock, &unk_100923520);
      sub_100752CE4();

      if (!v15)
      {
        break;
      }

      v20 = v15;
      v65 = _swiftEmptyArrayStorage;
      result = sub_1007545C4();
      if (v15 < 0)
      {
        __break(1u);
        return result;
      }

      v42[1] = v7;
      v51 = sub_100016C60(0, &qword_100926D00);
      v46 = sub_100016C60(0, &qword_100929CC0);
      v21 = 0;
      v54 = v11;
      v50 = v11 & 0xC000000000000001;
      v49 = enum case for DispatchPredicate.onQueue(_:);
      v48 = (v47 + 13);
      ++v47;
      v45 &= 1u;
      v44 = &v60;
      while (1)
      {
        if (v50)
        {
          v22 = sub_100754574();
        }

        else
        {
          v22 = *(v54 + 8 * v21 + 32);
        }

        *v5 = sub_100753774();
        v23 = v57;
        (*v48)(v5, v49, v57);
        v24 = sub_1007522C4();
        (*v47)(v5, v23);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v11 = v20;
        if (qword_100920420 != -1)
        {
          swift_once();
        }

        v25 = qword_10092AE30;
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v22;
        v28 = v25;

        v7 = sub_100753FF4();
        swift_beginAccess();
        sub_1007512C4();
        swift_endAccess();
        v29 = v64;
        if (v64)
        {
          [v64 removeActionForIdentifier:v28 forControlEvents:0x2000];
          [v29 addAction:v7 forControlEvents:0x2000];
          v30 = v29;
        }

        else
        {
          sub_100016C60(0, &qword_10093B420);
          v31 = v7;
          v67.value.super.super.isa = v7;
          v30 = sub_100754234(UIButtonTypeSystem, v67).super.super.super.super.isa;
          v29 = 0;
        }

        v32 = swift_allocObject();
        *(v32 + 16) = v45;
        v33 = v55;
        *(v32 + 24) = v22;
        *(v32 + 32) = v33;
        v62 = sub_10018A778;
        v63 = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v60 = sub_1001A67C4;
        v61 = &unk_10086A578;
        v34 = _Block_copy(aBlock);

        v35 = v33;
        v36 = v29;

        [(objc_class *)v30 setConfigurationUpdateHandler:v34];

        _Block_release(v34);
        v37 = [(objc_class *)v30 superview];
        v38 = v58;
        if (!v37 || (v7 = v37, sub_100016C60(0, &qword_100922300), v39 = v38, v40 = sub_100753FC4(), v7, v39, (v40 & 1) == 0))
        {
          [v38 addSubview:v30];
        }

        ++v21;
        sub_1007545A4();
        sub_1007545D4();
        sub_1007545E4();
        sub_1007545B4();
        v20 = v11;
        if (v11 == v21)
        {

          v41 = v65;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      swift_once();
    }

    v41 = _swiftEmptyArrayStorage;
    v38 = v58;
LABEL_29:
    *&v38[v43] = v41;
    swift_endAccess();

    [v38 setNeedsLayout];
  }

  return result;
}

void sub_100187B40()
{
  v0 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_100752914();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_guidedSearchResult);
    if (v9 && (swift_beginAccess(), (v10 = swift_weakLoadStrong()) != 0))
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills;
      swift_beginAccess();
      v13 = *&v8[v12];

      v49 = sub_1007476C4();
      v40 = v8;
      v38 = v9;
      if (v13 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
      {
        v47 = v13 & 0xFFFFFFFFFFFFFF8;
        v48 = v13 & 0xC000000000000001;
        v15 = v49 & 0xFFFFFFFFFFFFFF8;
        v50 = v49 & 0xFFFFFFFFFFFFFF8;
        if (v49 < 0)
        {
          v15 = v49;
        }

        v37 = v15;
        v45 = v49 & 0xC000000000000001;
        v43 = (v4 + 48);
        v42 = (v4 + 32);
        v41 = (v4 + 8);
        v16 = 4;
        v46 = v49 >> 62;
        v44 = i;
        v39 = v2;
        while (1)
        {
          v17 = v16 - 4;
          if (v48)
          {
            v18 = sub_100754574();
          }

          else
          {
            if (v17 >= *(v47 + 16))
            {
              goto LABEL_34;
            }

            v18 = *(v13 + 8 * v16);
          }

          v19 = v18;
          v20 = v16 - 3;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v46)
          {
            if (v17 == sub_100754664())
            {
LABEL_30:

              goto LABEL_31;
            }
          }

          else if (v17 == *(v50 + 16))
          {
            goto LABEL_30;
          }

          if (v45)
          {
            v4 = sub_100754574();
          }

          else
          {
            if (v17 >= *(v50 + 16))
            {
              goto LABEL_35;
            }

            v4 = *(v49 + 8 * v16);
          }

          sub_1007467C4();
          if ((*v43)(v2, 1, v3) == 1)
          {

            sub_10000C8CC(v2, &unk_100925380);
          }

          else
          {
            (*v42)(v6, v2, v3);
            v21 = v19;
            if ([v21 isHidden])
            {
            }

            else
            {
              [v21 frame];
              v23 = v22;
              v25 = v24;
              v27 = v26;
              v29 = v28;

              v30 = v11;
              v31 = v13;
              v32 = v3;
              v33 = v6;
              v34 = v40;
              v35 = [v40 superview];
              v36 = v34;
              v6 = v33;
              v3 = v32;
              v13 = v31;
              v11 = v30;
              v2 = v39;
              [v36 convertRect:v35 toView:{v23, v25, v27, v29}];

              sub_100749544();
            }

            (*v41)(v6, v3);
          }

          ++v16;
          if (v20 == v44)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_31:
    }

    else
    {
    }
  }
}

id sub_10018803C()
{
  v1 = v0;
  v60.receiver = v0;
  v60.super_class = type metadata accessor for GuidedSearchResultContentView();
  objc_msgSendSuper2(&v60, "layoutSubviews");
  sub_1007477B4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];
  if (v11 != 3.0)
  {

    goto LABEL_5;
  }

  v12 = sub_100753804();

  if (v12)
  {
LABEL_5:
    v13 = 1.0;
    goto LABEL_6;
  }

  v13 = 0.666666667;
LABEL_6:
  [v1 effectiveUserInterfaceLayoutDirection];
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_topSeparator];
  v61.origin.x = v3;
  v61.origin.y = v5;
  v61.size.width = v7;
  v61.size.height = v9;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = v3;
  v62.origin.y = v5;
  v62.size.width = v7;
  v62.size.height = v9;
  v59 = v13;
  [v14 setFrame:{MinX, 0.0, CGRectGetWidth(v62), v13}];
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title];
  v63.origin.x = v3;
  v63.origin.y = v5;
  v63.size.width = v7;
  v63.size.height = v9;
  CGRectGetMinX(v63);
  [v14 frame];
  CGRectGetMaxY(v64);
  [v16 sizeThatFits:{v7, v9}];
  [v1 bounds];
  sub_100753AB4();
  [v16 setFrame:?];
  v65.origin.x = v3;
  v65.origin.y = v5;
  v65.size.width = v7;
  v65.size.height = v9;
  v17 = CGRectGetMinX(v65);
  [v16 frame];
  MaxY = CGRectGetMaxY(v66);
  [v1 bounds];
  v19 = CGRectGetMaxY(v67);
  v20 = [v1 traitCollection];
  v21 = [v20 preferredContentSizeCategory];
  v22 = sub_100753094();
  v24 = v23;
  if (v22 == sub_100753094() && v24 == v25)
  {

    goto LABEL_10;
  }

  v26 = sub_100754754();

  if (v26)
  {
LABEL_10:
    v28 = sub_100753964();

    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v30 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills;
    swift_beginAccess();
    v31 = *&v1[v30];
    if (v31 >> 62)
    {
LABEL_39:
      v32 = sub_100754664();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v32 != 0;
    v68.origin.x = v3;
    v68.origin.y = v5;
    v68.size.width = v7;
    v68.size.height = v9;
    Width = CGRectGetWidth(v68);
    v35 = *&v1[v30];
    v58 = v1;
    if (v35 >> 62)
    {
      v36 = sub_100754664();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v36)
    {
      goto LABEL_36;
    }

    v37 = 0;
    v52 = v19 - v59 + -12.0;
    v53 = MaxY + 16.0;
    v1 = (v35 & 0xC000000000000001);
    v19 = 1.79769313e308;
    while (2)
    {
      v30 = v33;
      while (2)
      {
        v38 = v37;
        while (1)
        {
          if (v1)
          {
            v39 = sub_100754574();
          }

          else
          {
            if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v39 = *(v35 + 8 * v38 + 32);
          }

          v40 = v39;
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v29 >= v30)
          {
            break;
          }

          [v39 setHidden:1];

          ++v38;
          if (v37 == v36)
          {
            goto LABEL_36;
          }
        }

        v54 = v19;
        v55 = Width;
        [v39 sizeThatFits:{Width, v19}];
        v42 = v41;
        MaxY = v43;
        v44 = v17;
        v45 = v17 + v41;
        v69.size.width = v7;
        v56 = v5;
        v57 = v3;
        v69.origin.x = v3;
        v69.size.height = v9;
        v69.origin.y = v5;
        if (CGRectGetMaxX(v69) >= v45)
        {
          v33 = v30;
          v46 = v44;
          v47 = v53;
          v48 = 8.0;
        }

        else
        {
          v33 = v30 + 1;
          if (v29 <= v30)
          {
            [v40 setHidden:1];

            ++v30;
            v17 = v44;
            Width = v55;
            v19 = v54;
            if (v37 != v36)
            {
              continue;
            }

LABEL_36:

            v49 = *&v58[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_bottomSeparator];
            v72.origin.x = v3;
            v72.origin.y = v5;
            v72.size.width = v7;
            v72.size.height = v9;
            v50 = CGRectGetMinX(v72);
            [v58 bounds];
            v51 = CGRectGetMaxY(v73) - v59;
            v74.origin.x = v3;
            v74.origin.y = v5;
            v74.size.width = v7;
            v74.size.height = v9;
            return [v49 setFrame:{v50, v51, CGRectGetWidth(v74), v59}];
          }

          v70.origin.y = v5;
          v70.origin.x = v3;
          v70.size.width = v7;
          v70.size.height = v9;
          v46 = CGRectGetMinX(v70);
          v48 = 8.0;
          v47 = v53 + MaxY + 8.0;
        }

        break;
      }

      [v58 bounds];
      v53 = v47;
      sub_100753AB4();
      [v40 setFrame:?];
      v17 = v42 + v48 + v46;
      [v40 frame];
      [v40 setHidden:v52 < CGRectGetMaxY(v71)];

      Width = v55;
      v5 = v56;
      v3 = v57;
      v19 = v54;
      if (v37 != v36)
      {
        continue;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

id sub_1001886CC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  result = [v0 setNumberOfLines:0];
  qword_10092AE68 = v0;
  return result;
}

id sub_10018871C()
{
  result = [objc_opt_self() buttonWithType:1];
  qword_10092AE70 = result;
  return result;
}

uint64_t sub_10018875C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1001887A0()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_guidedSearchResult) = 0;

  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title) setText:0];
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  sub_10018A124((v0 + v1), 0x4665726170657270, 0xEF6573756552726FLL);
  return swift_endAccess();
}

uint64_t sub_10018888C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100188944()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_1001889A0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

void (*sub_100188A60())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10018A6EC;
}

uint64_t sub_100188B4C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10018A980(&qword_10092AEE0, a2, type metadata accessor for GuidedSearchResultContentView);
  result = sub_10018A980(&qword_10092AEE8, v3, type metadata accessor for GuidedSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

id sub_100188BD0(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title];
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v4 = result;
    [v2 setFont:result];

    return [a1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100188C74(uint64_t a1, char a2, char *a3, double a4, double a5)
{
  LOBYTE(v6) = a2;
  v91 = sub_100750304();
  v10 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007410D4();
  __chkstk_darwin(v12 - 8);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100923030);
  __chkstk_darwin(v14 - 8);
  v88 = &v81 - v15;
  v16 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v16 - 8);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v81 - v20;
  if (qword_100920440 != -1)
  {
LABEL_46:
    swift_once();
  }

  v22 = qword_10092AE70;
  v92 = a3;
  sub_100185EF0(0, 0, a3, v6 & 1);
  v23 = sub_1007541F4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v99 = v23;
  v25(v21, 0, 1);
  sub_100754224();
  sub_10000C518(&qword_10092AF18);
  v26 = swift_allocObject();
  v83 = xmmword_1007A5A00;
  *(v26 + 16) = xmmword_1007A5A00;
  *(v26 + 32) = _swiftEmptyArrayStorage;
  v27 = *(a1 + 16);
  if (v27)
  {
    v93 = v21;
    v21 = 0;
    v98 = (v24 + 48);
    v87 = (v10 + 13);
    v86 = NSFontAttributeName;
    v85 = (v10 + 1);
    v84 = enum case for FontSource.useCase(_:);
    v28 = a1 + 40;
    v100 = v22;
    v96 = v18;
    v97 = v27;
    v82 = a1 + 40;
    do
    {
      v29 = v26 + 24;
      a3 = v21;
      v30 = a4;
      v6 = (v28 + 16 * v21);
      v95 = v26;
      while (1)
      {
        if (a3 >= v27)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v21 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          goto LABEL_42;
        }

        v31 = *(v6 - 1);
        a1 = *v6;

        sub_100754214();
        v32 = (*v98)(v18, 1, v99);
        v101 = a3 + 1;
        if (v32)
        {
          v33 = v18;
          v10 = &qword_100932470;
          v21 = v29;
          v34 = v26;
          v35 = v18;
          v18 = &unk_1007A5A90;
          sub_100016B4C(v33, v93, &qword_100932470);
          sub_100754224();
          v36 = v35;
          v26 = v34;
          v29 = v21;
          sub_10000C8CC(v36, &qword_100932470);
        }

        else
        {
          v94 = v31;
          v37 = v86;
          v104[0] = v86;
          v38 = qword_100921370;

          v39 = v37;
          if (v38 != -1)
          {
            swift_once();
          }

          v40 = sub_100750534();
          v41 = sub_10000D0FC(v40, qword_100981788);
          v42 = v90;
          (*(*(v40 - 8) + 16))(v90, v41, v40);
          v43 = v91;
          (*v87)(v42, v84, v91);
          v44.super.isa = v92;
          isa = sub_1007502F4(v44).super.isa;
          (*v85)(v42, v43);
          v104[4] = sub_100016C60(0, &qword_100923AB0);
          v104[1] = isa;
          sub_10000C518(&unk_10092AF20);
          v46 = sub_1007546B4();

          sub_100016B4C(v104, &v102, &unk_100923510);
          v10 = v102;
          v47 = sub_100415ADC(v102);
          if (v48)
          {
            goto LABEL_44;
          }

          v46[(v47 >> 6) + 8] |= 1 << v47;
          *(v46[6] + 8 * v47) = v10;
          sub_10000C610(&v103, (v46[7] + 32 * v47));
          v49 = v46[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_45;
          }

          v46[2] = v51;

          sub_10000C8CC(v104, &unk_100923510);
          sub_1007410F4();
          v52 = v88;
          sub_100741094();
          v53 = sub_100741084();
          (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
          sub_1007540F4();
          v22 = v100;
          sub_100754224();
        }

        [v22 sizeThatFits:{a5, 1.79769313e308}];
        v55 = v54;
        v57 = v56;
        if (v30 + v54 > a5)
        {
          break;
        }

        v10 = *(v26 + 16);
        if (!v10)
        {
          goto LABEL_43;
        }

        v58 = *(v29 + 8 * v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v29 + 8 * v10) = v58;
        v18 = v96;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = sub_100255BE0(0, *(v58 + 2) + 1, 1, v58);
          *(v29 + 8 * v10) = v58;
        }

        v61 = *(v58 + 2);
        v60 = *(v58 + 3);
        if (v61 >= v60 >> 1)
        {
          *(v29 + 8 * v10) = sub_100255BE0((v60 > 1), v61 + 1, 1, v58);
        }

        v30 = v30 + v55 + 8.0;

        v62 = *(v29 + 8 * v10);
        *(v62 + 16) = v61 + 1;
        v63 = v62 + 16 * v61;
        *(v63 + 32) = v55;
        *(v63 + 40) = v57;
        ++a3;
        v6 += 2;
        v27 = v97;
        v26 = v95;
        v22 = v100;
        if (v101 == v97)
        {
          goto LABEL_25;
        }
      }

      sub_10000C518(&qword_100923320);
      v64 = swift_allocObject();
      *(v64 + 16) = v83;
      *(v64 + 32) = v55;
      *(v64 + 40) = v57;
      v66 = *(v26 + 16);
      v65 = *(v26 + 24);
      if (v66 >= v65 >> 1)
      {
        v26 = sub_100255CE4((v65 > 1), v66 + 1, 1, v26);
      }

      v18 = v96;
      v21 = v101;

      *(v26 + 16) = v66 + 1;
      *(v26 + 8 * v66 + 32) = v64;
      v27 = v97;
      v28 = v82;
    }

    while (v21 != v97);
  }

LABEL_25:
  v67 = [(objc_class *)v92 preferredContentSizeCategory];
  v68 = sub_100753094();
  v70 = v69;
  if (v68 == sub_100753094() && v70 == v71)
  {

    goto LABEL_29;
  }

  v72 = sub_100754754();

  if (v72)
  {
LABEL_29:
    v74 = sub_100753964();

    v75 = 2;
    if (v74)
    {
      v75 = 3;
    }

    if (*(v26 + 16) >= v75)
    {
      v76 = v75;
    }

    else
    {
      v76 = *(v26 + 16);
    }

    sub_100754774();
    swift_unknownObjectRetain_n();
    v77 = swift_dynamicCastClass();
    if (!v77)
    {
      swift_unknownObjectRelease();
      v77 = _swiftEmptyArrayStorage;
    }

    v78 = v77[2];

    if (v78 == v76)
    {
      v79 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v79)
      {
        return v79;
      }

      v79 = _swiftEmptyArrayStorage;
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1006316A8(v26, v26 + 32, 0, (2 * v76) | 1);
      v79 = v80;
    }

    swift_unknownObjectRelease();
    return v79;
  }

  __break(1u);
  return result;
}

uint64_t sub_100189674(uint64_t a1, char a2, char *a3, double a4)
{
  result = sub_100188C74(a1, a2 & 1, a3, 0.0, a4);
  v5 = result;
  v6 = *(result + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v20 = result + 32;
  v8 = -8.0;
  while (v7 < *(v5 + 16))
  {
    v9 = *(v20 + 8 * v7);
    v10 = *(v9 + 16);
    if (v10)
    {

      sub_10001E46C(0, v10, 0);
      v11 = _swiftEmptyArrayStorage;
      v12 = _swiftEmptyArrayStorage[2];
      v13 = (v9 + 40);
      do
      {
        v14 = *v13;
        v21 = v11;
        v15 = *(v11 + 3);
        v16 = v12 + 1;
        if (v12 >= v15 >> 1)
        {
          sub_10001E46C((v15 > 1), v12 + 1, 1);
          v11 = v21;
        }

        *(v11 + 2) = v16;
        v11[v12 + 4] = v14;
        v13 += 2;
        ++v12;
        --v10;
      }

      while (v10);
LABEL_13:
      v17 = v11[4];
      v18 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 5;
        do
        {
          if (v17 < v11[v19])
          {
            v17 = v11[v19];
          }

          ++v19;
          --v18;
        }

        while (v18);
      }

      goto LABEL_4;
    }

    v16 = _swiftEmptyArrayStorage[2];

    v11 = _swiftEmptyArrayStorage;
    if (v16)
    {
      goto LABEL_13;
    }

    v17 = 0.0;
LABEL_4:
    ++v7;
    v8 = v8 + v17 + 8.0;
    if (v7 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

id sub_100189840()
{
  v0 = sub_100745644();
  v65 = *(v0 - 8);
  v66 = v0;
  __chkstk_darwin(v0);
  v64 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&unk_10092E450);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - v4;
  v63 = sub_10074F6E4();
  v6 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v12 = sub_10074F704();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v67 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v17 = v5;
  v18 = v63;
  (*(v3 + 8))(v17, v2);
  v19 = v16;
  v20 = v64;
  v21 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v70)
  {
    v21 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v6 + 104))(v11, *v21, v18);
  sub_10074F5C4();
  v62 = v22;
  sub_10074F5E4();
  v61 = v23;
  sub_10074F5D4();
  swift_getKeyPath();
  sub_100746914();

  sub_100745604();
  (*(v6 + 16))(v8, v11, v18);
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  v24 = v67;
  sub_10074F6B4();
  (*(v65 + 8))(v20, v66);
  (*(v6 + 8))(v11, v18);
  sub_1007476D4();
  sub_10018A980(&qword_10092AF10, 255, &type metadata accessor for GuidedSearchResult);
  sub_1007468B4();
  v25 = v70;
  swift_getKeyPath();
  sub_100746914();

  v26 = v69;
  [v69 displayScale];
  if (v27 == 3.0)
  {
    v28 = sub_100753804();

    if ((v28 & 1) == 0)
    {
      v29 = 0.666666667;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v29 = 1.0;
LABEL_10:
  sub_10074F674();
  sub_10074F664();
  sub_100753BA4();
  v31 = v30;
  swift_getKeyPath();
  sub_100746914();

  v32 = v69;
  if (v25)
  {
    LODWORD(v66) = byte_10092F2E0;
    v33 = v29 + 20.0;

    v34 = sub_1007476B4();
    v58 = v19;
    if (!v35)
    {
      goto LABEL_20;
    }

    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36)
    {

      goto LABEL_20;
    }

    if (qword_100920438 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v37 = qword_10092AE68;
      result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
      if (!result)
      {
        break;
      }

      v39 = result;
      [v37 setFont:result];

      v40 = sub_100753064();
      [v37 setText:v40];

      [v37 sizeThatFits:{v31, 1.79769313e308}];
      v42 = v41;

      v33 = v33 + v42 + 16.0;
LABEL_20:
      v45 = sub_1007476C4();
      v46 = v45;
      if (v45 >> 62)
      {
        v47 = sub_100754664();
        if (!v47)
        {
LABEL_32:

          v49 = _swiftEmptyArrayStorage;
LABEL_33:
          sub_100189674(v49, v66 & 1, v32, v31);

          v56 = v60;
          v57 = *(v59 + 8);
          v57(v67, v60);
          return (v57)(v58, v56);
        }
      }

      else
      {
        v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v47)
        {
          goto LABEL_32;
        }
      }

      v68 = _swiftEmptyArrayStorage;
      sub_10001E1E8(0, v47 & ~(v47 >> 63), 0);
      if ((v47 & 0x8000000000000000) == 0)
      {
        v64 = v32;
        v65 = v25;
        v48 = 0;
        v49 = v68;
        do
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            sub_100754574();
          }

          else
          {
          }

          v50 = sub_1007467B4();
          v52 = v51;

          v68 = v49;
          v54 = v49[2];
          v53 = v49[3];
          if (v54 >= v53 >> 1)
          {
            sub_10001E1E8((v53 > 1), v54 + 1, 1);
            v49 = v68;
          }

          ++v48;
          v49[2] = v54 + 1;
          v55 = &v49[2 * v54];
          v55[4] = v50;
          v55[5] = v52;
        }

        while (v47 != v48);

        v32 = v64;
        goto LABEL_33;
      }

      __break(1u);
LABEL_35:
      swift_once();
    }

    __break(1u);
  }

  else
  {

    v43 = v60;
    v44 = *(v59 + 8);
    v44(v24, v60);
    return (v44)(v19, v43);
  }

  return result;
}

uint64_t sub_10018A124(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100752294();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016C60(0, &qword_100926D00);
  *v9 = sub_100753774();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_1007522C4();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v28 = a2;
    if (qword_100920430 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_100752E44();
  sub_10000D0FC(v11, qword_10092AE50);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007AB1A0;
  v32 = sub_10000C518(&qword_10092AEF0);
  v31[0] = &type metadata for GuidedSearchTokenPill;
  sub_100752424();
  sub_10000C8CC(v31, &unk_100923520);
  sub_1007523A4();
  v12 = *a1;
  v29 = *a1 >> 62;
  v27 = a1;
  if (v29)
  {
    v13 = sub_100754664();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = &type metadata for Int;
  v31[0] = v13;
  sub_100752424();
  sub_10000C8CC(v31, &unk_100923520);
  sub_1007523A4();
  v32 = &type metadata for String;
  v31[0] = v28;
  v31[1] = a3;

  sub_100752424();
  sub_10000C8CC(v31, &unk_100923520);
  sub_100752CE4();

  if (v29)
  {
    v14 = sub_100754664();
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14 < 1)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    v25 = sub_100754664();
    if ((v25 & 0x8000000000000000) == 0)
    {
LABEL_36:
      v20 = v25;
      return sub_10015DAC8(0, v20);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = 0;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = sub_100754574();
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    if (qword_100920428 != -1)
    {
      swift_once();
    }

    ++v15;
    v18 = sub_10000C518(&qword_10092AEF8);
    sub_10000D0FC(v18, qword_10092AE38);
    v30 = v17;
    swift_beginAccess();
    sub_1007512D4();
    swift_endAccess();
  }

  while (v14 != v15);
LABEL_17:
  v19 = v27;
  if (!v29 && (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) != 0)
  {
    if (!(*v19 >> 62))
    {
      v20 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      return sub_10015DAC8(0, v20);
    }

    goto LABEL_33;
  }

  if (!(*v19 >> 62))
  {
    v22 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    goto LABEL_24;
  }

  v24 = sub_100754664();
  v25 = sub_100754664();
  if (v25 < 0)
  {
    goto LABEL_35;
  }

  v26 = sub_100754664();
  if (v24 < 0 || (v22 = v24, v26 < v24))
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_24:
  v23 = sub_100632C90(0, v22);

  *v19 = v23;
  return result;
}

uint64_t sub_10018A678()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018A6B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018A6FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10074E9C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10018A738()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10018A784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10018A79C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_topSeparator;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = [v3 separatorColor];
  [v2 setBackgroundColor:v4];

  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_bottomSeparator;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = [v3 separatorColor];
  [v7 setBackgroundColor:v8];

  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_guidedSearchResult) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsCalculator) = 0;
  v9 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  *v9 = 0;
  v9[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10018A940()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018A980(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10018A9EC()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10097E0A8);
  sub_10000D0FC(v0, qword_10097E0A8);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10018AB50(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  v46 = a1;
  sub_100746F84();
  if (qword_100920F68 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980B88);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_100750B04();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_10000D134(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_100750B14();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_100746F64();
  if (qword_100920F70 != -1)
  {
    swift_once();
  }

  v42 = sub_10000D0FC(v6, qword_100980BA0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v54);
  v44(v17, v5, v2);
  sub_100750B14();
  v49(v5, v2);
  sub_100747034();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_100750B14();
  v22 = v49;
  v49(v5, v2);
  sub_100747004();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_10000D134(v54);
  v21(v26, v5, v2);
  sub_100750B14();
  v22(v5, v2);
  sub_100746FF4();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_10000D134(v54);
  v21(v28, v5, v2);
  sub_100750B14();
  v22(v5, v2);
  sub_100747054();
  if (qword_100920F80 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_10000D0FC(v45, qword_100980BD0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_10000D134(v54);
  v21(v32, v5, v2);
  sub_100750B14();
  v49(v5, v2);
  sub_100747044();
  if (qword_100920F78 != -1)
  {
    swift_once();
  }

  v33 = sub_10000D0FC(v29, qword_100980BB8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_10000D134(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_100750B14();
  v38 = v49;
  v49(v5, v2);
  sub_100746FC4();
  sub_100746FA4();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_10000D134(v54);
  v37(v39, v5, v2);
  sub_100750B14();
  v38(v5, v2);
  return sub_100746FB4();
}

uint64_t sub_10018B3A4()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10097E0C0);
  sub_10000D0FC(v0, qword_10097E0C0);
  if (qword_100920448 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E0A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10018B538()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_1007504F4();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_100039C50(v6, qword_10097E0D8);
  v28 = v6;
  v31 = sub_10000D0FC(v6, qword_10097E0D8);
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  *&v55 = 0x4030000000000000;
  v29 = v5;
  sub_100750504();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  *&v52 = 0x4024000000000000;
  if (qword_100921570 != -1)
  {
    swift_once();
  }

  v7 = sub_100750534();
  v8 = sub_10000D0FC(v7, qword_100981D88);
  v38 = *(*(v7 - 8) + 16);
  v38(v3, v8, v7);
  v9 = enum case for FontSource.useCase(_:);
  v35 = v1[13];
  v35(v3, enum case for FontSource.useCase(_:), v0);
  v34 = sub_100750B04();
  v50 = v34;
  v51 = &protocol witness table for StaticDimension;
  sub_10000D134(&v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v10 = sub_10000D134(&v46);
  v11 = v1[2];
  v37 = v1 + 2;
  v33 = v11;
  v11(v10, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v12 = v1 + 1;
  v36 = v13;
  v13(v3, v0);
  if (qword_100921578 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v7, qword_100981DA0);
  v38(v3, v14, v7);
  v35(v3, v9, v0);
  v47 = v34;
  v48 = &protocol witness table for StaticDimension;
  sub_10000D134(&v46);
  v44 = v0;
  v45 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v43);
  v33(v15, v3, v0);
  sub_100750B14();
  v36(v3, v0);
  v27 = v12;
  if (qword_100921580 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v7, qword_100981DB8);
  v38(v3, v26, v7);
  v25 = v9;
  v16 = v35;
  v35(v3, v9, v0);
  v17 = v34;
  v44 = v34;
  v45 = &protocol witness table for StaticDimension;
  sub_10000D134(&v43);
  v41 = v0;
  v42 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v40);
  v19 = v33;
  v33(v18, v3, v0);
  sub_100750B14();
  v36(v3, v0);
  v38(v3, v26, v7);
  v16(v3, v25, v0);
  v41 = v17;
  v42 = &protocol witness table for StaticDimension;
  sub_10000D134(&v40);
  v39[3] = v0;
  v39[4] = &protocol witness table for FontSource;
  v20 = sub_10000D134(v39);
  v19(v20, v3, v0);
  sub_100750B14();
  v36(v3, v0);
  v21 = v31;
  sub_100012160(&v55, v31);
  v22 = v28;
  (*(v30 + 32))(v21 + v28[5], v29, v32);
  sub_100012160(&v52, v21 + v22[6]);
  sub_100012160(&v49, v21 + v22[7]);
  sub_100012160(&v46, v21 + v22[8]);
  sub_100012160(&v43, v21 + v22[9]);
  return sub_100012160(&v40, v21 + v22[10]);
}

UIColor sub_10018BB30()
{
  sub_100016C60(0, &qword_100923500);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_100753EC4(v3, v2).super.isa;
  qword_10097E0F0 = result.super.isa;
  return result;
}

id sub_10018BBC4()
{
  v1 = v0;
  v2 = sub_100747064();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100751344();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100751374();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = sub_100753954();

  v16 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_gradientBlurView;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_gradientBlurView];
  if (v15)
  {
    v73 = v5;
    v74 = v12;
    v75 = v9;
    v76 = v8;
    if (v17)
    {
      [v17 setHidden:1];
    }

    v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel];
    [v18 setNumberOfLines:{0, v73}];
    v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_contentView];
    [v19 addSubview:v18];
    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel];
    [v20 setNumberOfLines:0];
    v21 = [v20 layer];
    [v21 setCompositingFilter:0];

    [v19 addSubview:v20];
    v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel];
    if (v22)
    {
      v23 = v22;
      [v23 setNumberOfLines:0];
      v24 = [v23 layer];
      [v24 setCompositingFilter:0];

      [v19 addSubview:v23];
    }

    v25 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView;
    v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView];
    if (v26 || (((*(v73 + 104))(v7, enum case for Separator.Position.top(_:), v4), v80[3] = sub_1007507D4(), v80[4] = &protocol witness table for ZeroDimension, sub_10000D134(v80), sub_1007507C4(), v27 = v74, sub_100751354(), v28 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v29 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator, swift_beginAccess(), v30 = *(v75 + 40), v31 = v28, v30(&v28[v29], v27, v76), swift_endAccess(), v31, (v32 = *&v1[v25]) == 0) ? (v33 = 0) : (objc_msgSend(v32, "removeFromSuperview"), v33 = *&v1[v25]), *&v1[v25] = v31, v54 = v31, v33, objc_msgSend(v19, "addSubview:", v54), v54, objc_msgSend(v1, "setNeedsLayout"), v54, (v26 = *&v1[v25]) != 0))
    {
      [v26 setHidden:0];
    }

    v55 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView;
    v56 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView];
    if (v56)
    {
      v57 = qword_100920450;
      v58 = v56;
      if (v57 != -1)
      {
        swift_once();
      }

      v59 = v79;
      v60 = sub_10000D0FC(v79, qword_10097E0C0);
      v62 = v77;
      v61 = v78;
      (*(v78 + 16))(v77, v60, v59);
      v63 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v61 + 24))(&v58[v63], v62, v59);
      swift_endAccess();
      [v58 setNeedsLayout];

      (*(v61 + 8))(v62, v59);
      v64 = *&v1[v55];
      if (v64)
      {
        [v64 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
      }
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_10;
    }

    v50 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
    v51 = sub_10016AB14(0);
    v52 = *&v1[v16];
    if (v52)
    {
      [v52 removeFromSuperview];
      v53 = *&v1[v16];
    }

    else
    {
      v53 = 0;
    }

    *&v1[v16] = v51;
    v66 = v51;

    v67 = *&v1[v16];
    if (v67)
    {
      v68 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
      v69 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton];
      if (v69)
      {
        v70 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton];
      }

      else
      {
        v70 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel];
        v69 = 0;
      }

      v71 = v69;
      [v68 insertSubview:v67 belowSubview:v70];
    }

    [v1 setNeedsLayout];

    v72 = *&v1[v16];
    if (v72)
    {
      [v72 setUserInteractionEnabled:0];
      v17 = *&v1[v16];
      if (v17)
      {
LABEL_10:
        [v17 setHidden:0];
      }
    }

    v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel];
    [v34 setNumberOfLines:1];
    v35 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
    [v35 addSubview:v34];
    v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel];
    [v36 setNumberOfLines:1];
    [v35 addSubview:v36];
    v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel];
    if (v37)
    {
      v38 = v37;
      [v38 setNumberOfLines:2];
      [v35 addSubview:v38];
    }

    v39 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView];
    if (v39)
    {
      [v39 setHidden:1];
    }

    v40 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView;
    v41 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView];
    if (v41)
    {
      v42 = qword_100920448;
      v43 = v41;
      if (v42 != -1)
      {
        swift_once();
      }

      v44 = v79;
      v45 = sub_10000D0FC(v79, qword_10097E0A8);
      v47 = v77;
      v46 = v78;
      (*(v78 + 16))(v77, v45, v44);
      v48 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v46 + 24))(&v43[v48], v47, v44);
      swift_endAccess();
      [v43 setNeedsLayout];

      (*(v46 + 8))(v47, v44);
      v49 = *&v1[v40];
      if (v49)
      {
        [v49 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
      }
    }

    sub_10018C450();
  }

  return [v1 setNeedsLayout];
}

id sub_10018C450()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_shadowView];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  [v1 setHidden:v3 == 2];
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  LOBYTE(v3) = sub_100753954();

  if ((v3 & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] overrideUserInterfaceStyle];
    sub_100753094();
    v6 = sub_100753064();

    v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel];
    if (v7)
    {
      v8 = [v7 layer];
      [v8 setCompositingFilter:v6];
    }

    v9 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel] layer];
    [v9 setCompositingFilter:v6];
  }

  if (v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v0 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_borderView];

  return [v13 setHidden:v12];
}

id sub_10018C650(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_100753094();
  v8 = v7;
  if (v6 == sub_100753094() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_100754754();

    if ((v11 & 1) == 0)
    {
      return sub_10018BBC4();
    }
  }

  return result;
}

id sub_10018C76C(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  result = [a2 userInterfaceStyle];
  if (v5 != result)
  {
    sub_10018C450();

    return [a1 setNeedsLayout];
  }

  return result;
}