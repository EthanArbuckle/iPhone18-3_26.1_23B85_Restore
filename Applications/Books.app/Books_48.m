void sub_10060EAF4()
{
  v1 = &v0[OBJC_IVAR___BKGoalPickerViewController_model];
  sub_1001F1160(&unk_100AD5090);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10080B690;
  v3 = OBJC_IVAR___BKGoalPickerViewController_selectedRow;
  v4 = *&v0[OBJC_IVAR___BKGoalPickerViewController_selectedRow];
  v5 = *v1;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v4 >= *(v5 + 16))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v2 + 32) = *(v5 + 8 * v4 + 32);

  v6 = sub_1007A2224();
  v8 = v7;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v10 = *&v0[v3];
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  if (v10 >= *(*v1 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v11 = Strong;
  v35 = *(*v1 + 8 * v10 + 32);
  v12 = [Strong accessibilityElements];
  if (v12)
  {
    v34 = v11;
    v13 = v12;
    v14 = sub_1007A25E4();

    v15 = *(v14 + 16);
    if (v15)
    {
      v33 = v14;
      v16 = v14 + 32;
      do
      {
        sub_100007484(v16, aBlock);
        sub_10000A7C4(0, &unk_100AEDDA0);
        if (swift_dynamicCast())
        {
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_10080B690;
          *(v17 + 56) = &type metadata for Int;
          *(v17 + 64) = &protocol witness table for Int;
          *(v17 + 32) = v35;

          sub_1007A2284();

          v18 = sub_1007A2214();

          [v36 setAccessibilityValue:v18];
        }

        v16 += 32;
        --v15;
      }

      while (v15);
    }

    else
    {
    }
  }

  else
  {
  }

  v19 = OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel;
  v20 = [*&v0[OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel] text];
  if (!v20)
  {

    goto LABEL_23;
  }

  v21 = v20;
  v22 = sub_1007A2254();
  v24 = v23;

  if (v6 != v22 || v8 != v24)
  {
    v26 = sub_1007A3AB4();

    if (v26)
    {
      return;
    }

LABEL_23:
    v27 = objc_opt_self();
    v28 = *&v0[v19];
    v29 = swift_allocObject();
    *(v29 + 16) = v0;
    aBlock[4] = sub_10060FA54;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A273D8;
    v30 = _Block_copy(aBlock);
    v31 = v28;
    v32 = v0;

    [v27 transitionWithView:v31 duration:5242880 options:v30 animations:0 completion:0.25];
    _Block_release(v30);

    return;
  }
}

void sub_10060F054(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_23;
  }

  v4 = Strong;
  v5 = [Strong selectedRowInComponent:0];

  if (*(v1 + OBJC_IVAR___BKGoalPickerViewController_goalType))
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(v1 + OBJC_IVAR___BKGoalPickerViewController_model);
      if (v5 < *(v6 + 16))
      {
        v7 = *(v6 + 8 * v5 + 32);
        if ((v7 * 60) >> 64 == (60 * v7) >> 63)
        {
          [*(v1 + OBJC_IVAR___BKGoalPickerViewController_eventHandler) changeDailyGoal:(a1 & 1) == 0 :(60 * v7)];
          if ((a1 & 1) == 0)
          {
            return;
          }

          goto LABEL_11;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v8 = *(v1 + OBJC_IVAR___BKGoalPickerViewController_model);
  if (v5 >= *(v8 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [*(v1 + OBJC_IVAR___BKGoalPickerViewController_eventHandler) changeBooksPerYearGoal:*(v8 + 8 * v5 + 32) :(a1 & 1) == 0];
  if ((a1 & 1) == 0)
  {
    return;
  }

LABEL_11:
  v9 = *(v1 + OBJC_IVAR___BKGoalPickerViewController_model);
  if (v5 >= *(v9 + 16))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v10 = *(v1 + OBJC_IVAR___BKGoalPickerViewController_onFinalized);
  if (v10)
  {
    v11 = *(v9 + 8 * v5 + 32);
    v12 = objc_opt_self();
    v13 = v10;
    v14 = [v12 sharedInstance];
    sub_1001F1160(&qword_100AD7FB0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10080B690;
    *(v15 + 56) = &type metadata for Int;
    *(v15 + 32) = v11;
    v20._countAndFlagsBits = 0x80000001008E17F0;
    v16.super.isa = v13;
    v19.value._rawValue = v15;
    v19.is_nil = 78;
    v20._object = 233;
    sub_1007A32F4(v16, v19, v20, v17);
  }
}

void sub_10060F280(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel);
  v3 = (a1 + OBJC_IVAR___BKGoalPickerViewController_model);
  sub_1001F1160(&unk_100AD5090);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10080B690;
  v5 = *(a1 + OBJC_IVAR___BKGoalPickerViewController_selectedRow);
  v6 = *v3;
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 >= *(v6 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(v4 + 32) = *(v6 + 8 * v5 + 32);
  v7 = v2;

  sub_1007A2224();

  v8 = sub_1007A2214();

  [v7 setText:v8];
}

id sub_10060F758(uint64_t a1, uint64_t a2, id a3)
{
  v6 = [a3 traitCollection];
  v7 = [v6 horizontalSizeClass];

  *(v3 + OBJC_IVAR___BKGoalPickerViewController_sourceViewHorizontalSizeClass) = v7;
  if (v7 == 1)
  {
    return [objc_allocWithZone(type metadata accessor for GoalPickerModalPresentationController()) initWithPresentedViewController:a1 presentingViewController:a2];
  }

  v9 = [objc_allocWithZone(UIPopoverPresentationController) initWithPresentedViewController:a1 presentingViewController:a2];
  [v9 setDelegate:v3];
  return v9;
}

uint64_t sub_10060F9B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10060F9F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int64_t sub_10060FA64@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v58 = sub_100796CF4();
  v5 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  sub_1001F1160(&unk_100AEDDC0);
  v56 = v5;
  v57 = v11;
  v54 = v7;
  if (a1)
  {
    v18 = swift_allocObject();
    result = j__malloc_size_1(v18);
    v20 = result - 32;
    if (result < 32)
    {
      v20 = result - 25;
    }

    v18[2] = 1440;
    v18[3] = 2 * (v20 >> 3);
    v21 = v18 + 4;
    v22 = 1;
    v23 = 4;
    while (1)
    {
      if (v22 == 1440)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }
      }

      v18[v23] = v22;
      if (v23 == 1443)
      {
LABEL_22:
        v30 = v12;
        v31 = v18[2];
        if (v31)
        {
          v32 = 0;
          while (v21[v32] != a2 / 60)
          {
            if (v31 == ++v32)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          v32 = 0;
        }

        goto LABEL_33;
      }

      ++v23;
      v25 = v22 == 1440;
      v22 = v24;
      if (v25)
      {
        __break(1u);
        break;
      }
    }
  }

  v18 = swift_allocObject();
  result = j__malloc_size_1(v18);
  v26 = result - 32;
  if (result < 32)
  {
    v26 = result - 25;
  }

  v18[2] = 365;
  v18[3] = 2 * (v26 >> 3);
  v21 = v18 + 4;
  v27 = 1;
  v28 = 4;
  while (1)
  {
    if (v27 == 365)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_35;
      }
    }

    v18[v28] = v27;
    if (v28 == 368)
    {
      break;
    }

    ++v28;
    v25 = v27 == 365;
    v27 = v29;
    if (v25)
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v30 = v12;
  v33 = v18[2];
  if (v33)
  {
    v32 = 0;
    while (v21[v32] != a2)
    {
      if (v33 == ++v32)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v32 = 0;
  }

LABEL_33:
  v34 = v17;
  sub_1007A2154();
  sub_100796C94();
  v51 = *(v30 + 16);
  v51(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = ObjCClassFromMetadata;
  v49 = objc_opt_self();
  v36 = [v49 bundleForClass:ObjCClassFromMetadata];
  sub_100796C94();
  v37 = sub_1007A22B4();
  v52 = v38;
  v53 = v37;
  v56 = *(v56 + 8);
  v39 = v10;
  (v56)(v10, v58);
  v48 = *(v30 + 8);
  v40 = v57;
  v48(v34, v57);
  sub_1007A2154();
  sub_100796C94();
  v51(v14, v34, v40);
  v41 = [v49 bundleForClass:v50];
  sub_100796C94();
  v42 = sub_1007A22B4();
  v44 = v43;
  (v56)(v39, v58);
  result = (v48)(v34, v57);
  v45 = v55;
  v46 = v52;
  v47 = v53;
  *v55 = v18;
  v45[1] = v47;
  v45[2] = v46;
  v45[3] = v42;
  v45[4] = v44;
  v45[5] = v32;
  v45[6] = 0;
  return result;
}

uint64_t sub_100610164(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v7 = sub_1007A1C54();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007A1CA4();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v14 = sub_1007A2D74();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = a1;
  v15[3] = v16;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_100610868;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A27428;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v18 = a4;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100610874(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v21);
}

void sub_100610444()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___BKGoalPickerViewController_onFinalized) = 0;
  *(v0 + OBJC_IVAR___BKGoalPickerViewController_separatorView) = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t sub_10061051C()
{
  v17[0] = sub_100796CF4();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v17 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  sub_1007A2154();
  sub_100796C94();
  (*(v7 + 16))(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v14 = v17[0];
  (*(v0 + 16))(v2, v5, v17[0]);
  v15 = sub_1007A22D4();
  (*(v0 + 8))(v5, v14);
  (*(v7 + 8))(v12, v6);
  return v15;
}

uint64_t sub_100610874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006108C4()
{
  v1 = _s5StateO9ResettingVMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5StateO21CapturingDragSnapshotVMa(0);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s5StateO21CapturingTurnSnapshotVMa(0);
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s5StateOMa(0);
  __chkstk_darwin(v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100611CF0(v0, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 0x656C64692ELL;
      }

      v20 = _s5StateO9ResettingVMa;
      sub_100611D54(v18, v3, _s5StateO9ResettingVMa);
      v26 = 0x697474657365722ELL;
      v27 = 0xEB0000000028676ELL;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      sub_1007A3744(19);

      v25._countAndFlagsBits = 0xD000000000000010;
      v25._object = 0x80000001008E1BA0;
      v34._countAndFlagsBits = sub_100611608();
      sub_1007A23D4(v34);

      v35._countAndFlagsBits = 41;
      v35._object = 0xE100000000000000;
      sub_1007A23D4(v35);
      sub_1007A23D4(v25);

      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      sub_1007A23D4(v36);
      v21 = v26;
      v22 = v3;
    }

    else
    {
      v20 = _s5StateO8DraggingVMa;
      if (EnumCaseMultiPayload == 4)
      {
        sub_100611D54(v18, v6, _s5StateO8DraggingVMa);
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_1007A3744(27);

        v26 = 0xD000000000000018;
        v27 = 0x80000001008E1BC0;
      }

      else
      {
        sub_100611D54(v18, v6, _s5StateO8DraggingVMa);
        v26 = 0x6E6967676172642ELL;
        v27 = 0xEA00000000002867;
      }

      v40._countAndFlagsBits = sub_100611AC4();
      sub_1007A23D4(v40);

      v41._countAndFlagsBits = 41;
      v41._object = 0xE100000000000000;
      sub_1007A23D4(v41);
      v21 = v26;
      v22 = v6;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v20 = _s5StateO21CapturingDragSnapshotVMa;
      sub_100611D54(v18, v9, _s5StateO21CapturingDragSnapshotVMa);
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1007A3744(26);

      v26 = 0xD000000000000017;
      v27 = 0x80000001008E1BE0;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      sub_1007A3744(90);
      v42._countAndFlagsBits = 0xD000000000000038;
      v42._object = 0x80000001008E1C00;
      sub_1007A23D4(v42);
      v43._countAndFlagsBits = sub_1006110D4();
      sub_1007A23D4(v43);

      v44._countAndFlagsBits = 0x6C736E617274202CLL;
      v44._object = 0xEF203A6E6F697461;
      sub_1007A23D4(v44);
      sub_1007A27D4();
      v45._countAndFlagsBits = 0x69636F6C6576202CLL;
      v45._object = 0xEC000000203A7974;
      sub_1007A23D4(v45);
      sub_1007A27D4();
      v46._countAndFlagsBits = 41;
      v46._object = 0xE100000000000000;
      sub_1007A23D4(v46);
      sub_1007A23D4(v25);

      v47._countAndFlagsBits = 41;
      v47._object = 0xE100000000000000;
      sub_1007A23D4(v47);
      v21 = v26;
      v22 = v9;
      goto LABEL_17;
    }

    sub_100611D54(v18, v12, _s5StateO7TurningVMa);
    v26 = 0x676E696E7275742ELL;
    v27 = 0xE900000000000028;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = _s5StateO21CapturingTurnSnapshotVMa;
      sub_100611D54(v18, v15, _s5StateO21CapturingTurnSnapshotVMa);
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1007A3744(26);

      v26 = 0xD000000000000017;
      v27 = 0x80000001008E1C60;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      sub_1007A3744(73);
      v28._countAndFlagsBits = 0xD000000000000035;
      v28._object = 0x80000001008E1C80;
      sub_1007A23D4(v28);
      v29._countAndFlagsBits = sub_1007A03C4();
      sub_1007A23D4(v29);

      v30._countAndFlagsBits = 0x6E6974736564202CLL;
      v30._object = 0xEF203A6E6F697461;
      sub_1007A23D4(v30);
      sub_1007A0F74();
      sub_100611DBC();
      v31._countAndFlagsBits = sub_1007A3A74();
      sub_1007A23D4(v31);

      v32._countAndFlagsBits = 41;
      v32._object = 0xE100000000000000;
      sub_1007A23D4(v32);
      sub_1007A23D4(v25);

      v33._countAndFlagsBits = 41;
      v33._object = 0xE100000000000000;
      sub_1007A23D4(v33);
      v21 = v26;
      v22 = v15;
LABEL_17:
      v23 = v20;
      goto LABEL_18;
    }

    sub_100611D54(v18, v12, _s5StateO7TurningVMa);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1007A3744(27);

    v26 = 0xD000000000000018;
    v27 = 0x80000001008E1C40;
  }

  v25._countAndFlagsBits = 0x727574286E727554;
  v25._object = 0xEB00000000203A6ELL;
  v37._countAndFlagsBits = sub_100611608();
  sub_1007A23D4(v37);

  v38._countAndFlagsBits = 41;
  v38._object = 0xE100000000000000;
  sub_1007A23D4(v38);
  sub_1007A23D4(v25);

  v39._countAndFlagsBits = 41;
  v39._object = 0xE100000000000000;
  sub_1007A23D4(v39);
  v21 = v26;
  v22 = v12;
  v23 = _s5StateO7TurningVMa;
LABEL_18:
  sub_100611E14(v22, v23);
  return v21;
}

uint64_t sub_1006110D4()
{
  v0 = 7104878;
  v1 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  v17[0] = 91;
  v17[1] = 0xE100000000000000;
  sub_100287FB4(v17 - v5);
  v7 = sub_1007A0F74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) == 1)
  {
    sub_1005C2B68(v6);
    v10 = 0xE300000000000000;
    v11._countAndFlagsBits = 7104878;
  }

  else
  {
    sub_100611DBC();
    v12 = sub_1007A3A74();
    v10 = v13;
    (*(v8 + 8))(v6, v7);
    v11._countAndFlagsBits = v12;
  }

  v11._object = v10;
  sub_1007A23D4(v11);

  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  sub_1007A23D4(v18);
  sub_10028845C(v3);
  if (v9(v3, 1, v7) == 1)
  {
    sub_1005C2B68(v3);
    v14 = 0xE300000000000000;
  }

  else
  {
    sub_100611DBC();
    v0 = sub_1007A3A74();
    v14 = v15;
    (*(v8 + 8))(v3, v7);
  }

  v19._countAndFlagsBits = v0;
  v19._object = v14;
  sub_1007A23D4(v19);

  v20._countAndFlagsBits = 93;
  v20._object = 0xE100000000000000;
  sub_1007A23D4(v20);
  return v17[0];
}

uint64_t sub_100611310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = *(a1 + 24);
  v6 = sub_1007A3454();
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  __chkstk_darwin(v6);
  v29 = &v24 - v8;
  v9 = *(a1 + 16);
  v10 = sub_1007A3454();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v30 = 91;
  v31 = 0xE100000000000000;
  v28 = v3;
  sub_1002881F0(a1, &v24 - v12);
  v14 = *(v9 - 8);
  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  else
  {
    v16 = sub_1007A3A74();
    v15 = v17;
    v11 = v14;
    v10 = v9;
  }

  (*(v11 + 8))(v13, v10);
  v32._countAndFlagsBits = v16;
  v32._object = v15;
  sub_1007A23D4(v32);

  v33._countAndFlagsBits = 8236;
  v33._object = 0xE200000000000000;
  sub_1007A23D4(v33);
  v18 = v29;
  sub_100288698(a1, v29);
  v19 = *(v5 - 8);
  if ((*(v19 + 48))(v18, 1, v5) == 1)
  {
    v20 = 0xE300000000000000;
    v5 = v25;
    v19 = v26;
    v21 = 7104878;
  }

  else
  {
    v21 = sub_1007A3A74();
    v20 = v22;
  }

  (*(v19 + 8))(v18, v5);
  v34._countAndFlagsBits = v21;
  v34._object = v20;
  sub_1007A23D4(v34);

  v35._countAndFlagsBits = 93;
  v35._object = 0xE100000000000000;
  sub_1007A23D4(v35);
  return v30;
}

uint64_t sub_100611608()
{
  sub_1007A3744(119);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001008E1D10;
  sub_1007A23D4(v5);
  v1 = _s5StateO4TurnVMa(0);
  v6._countAndFlagsBits = sub_1007A03C4();
  sub_1007A23D4(v6);

  v7._object = 0x80000001008E1D40;
  v7._countAndFlagsBits = 0xD000000000000015;
  sub_1007A23D4(v7);
  sub_1007A0F74();
  sub_100611DBC();
  v8._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v8);

  v9._countAndFlagsBits = 0xD000000000000017;
  v9._object = 0x80000001008E1D60;
  sub_1007A23D4(v9);
  if (*(v0 + *(v1 + 32)))
  {
    v2._countAndFlagsBits = 0x3E776569763CLL;
  }

  else
  {
    v2._countAndFlagsBits = 7104878;
  }

  if (*(v0 + *(v1 + 32)))
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  v2._object = v3;
  sub_1007A23D4(v2);

  v10._countAndFlagsBits = 0x69636F6C6576202CLL;
  v10._object = 0xEC000000203A7974;
  sub_1007A23D4(v10);
  v11._countAndFlagsBits = sub_1007A27C4();
  sub_1007A23D4(v11);

  v12._countAndFlagsBits = 0x6572676F7270202CLL;
  v12._object = 0xEC000000203A7373;
  sub_1007A23D4(v12);
  v13._countAndFlagsBits = sub_1007A27C4();
  sub_1007A23D4(v13);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  sub_1007A23D4(v14);
  return 0;
}

uint64_t sub_100611800()
{
  sub_1007A3744(73);
  v1._object = 0x80000001008E1C80;
  v1._countAndFlagsBits = 0xD000000000000035;
  sub_1007A23D4(v1);
  _s5StateO21CapturingTurnSnapshotVMa(0);
  v2._countAndFlagsBits = sub_1007A03C4();
  sub_1007A23D4(v2);

  v3._countAndFlagsBits = 0x6E6974736564202CLL;
  v3._object = 0xEF203A6E6F697461;
  sub_1007A23D4(v3);
  sub_1007A0F74();
  sub_100611DBC();
  v4._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1007A23D4(v5);
  return 0;
}

uint64_t sub_100611910()
{
  v1._countAndFlagsBits = sub_100611608();
  sub_1007A23D4(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_1007A23D4(v2);
  return 0x727574286E727554;
}

uint64_t sub_100611980()
{
  sub_1007A3744(90);
  v1._object = 0x80000001008E1C00;
  v1._countAndFlagsBits = 0xD000000000000038;
  sub_1007A23D4(v1);
  _s5StateO21CapturingDragSnapshotVMa(0);
  v2._countAndFlagsBits = sub_1006110D4();
  sub_1007A23D4(v2);

  v3._countAndFlagsBits = 0x6C736E617274202CLL;
  v3._object = 0xEF203A6E6F697461;
  sub_1007A23D4(v3);
  sub_1007A27D4();
  v4._countAndFlagsBits = 0x69636F6C6576202CLL;
  v4._object = 0xEC000000203A7974;
  sub_1007A23D4(v4);
  sub_1007A27D4();
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1007A23D4(v5);
  return 0;
}

uint64_t sub_100611AC4()
{
  sub_1007A3744(99);
  v1._object = 0x80000001008E1CC0;
  v1._countAndFlagsBits = 0xD000000000000017;
  sub_1007A23D4(v1);
  sub_1007A0F74();
  sub_100611DBC();
  v2._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v2);

  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001008E1CE0;
  sub_1007A23D4(v3);
  _s5StateO8DraggingVMa(0);
  v4._countAndFlagsBits = sub_1006110D4();
  sub_1007A23D4(v4);

  v5._countAndFlagsBits = 0x6C736E617274202CLL;
  v5._object = 0xEF203A6E6F697461;
  sub_1007A23D4(v5);
  sub_1007A27D4();
  v6._countAndFlagsBits = 0x69636F6C6576202CLL;
  v6._object = 0xEC000000203A7974;
  sub_1007A23D4(v6);
  sub_1007A27D4();
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_1007A23D4(v7);
  return 0;
}

unint64_t sub_100611C60()
{
  sub_1007A3744(19);

  v1._countAndFlagsBits = sub_100611608();
  sub_1007A23D4(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_1007A23D4(v2);
  return 0xD000000000000010;
}

uint64_t sub_100611CF0(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100611D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100611DBC()
{
  result = qword_100AE2830;
  if (!qword_100AE2830)
  {
    sub_1007A0F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2830);
  }

  return result;
}

uint64_t sub_100611E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100611E74()
{
  sub_10000A7C4(0, &qword_100AD20A0);
  result = sub_1007A33B4();
  qword_100B236C8 = result;
  return result;
}

uint64_t sub_100611EF0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B236D0);
  sub_100008B98(v0, qword_100B236D0);
  if (qword_100AD1948 != -1)
  {
    swift_once();
  }

  v1 = qword_100B236C8;
  return sub_10079ACF4();
}

uint64_t sub_100611F7C(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  sub_1001F1160(&qword_100AEDE70);
  v2[40] = swift_task_alloc();
  sub_1001F1160(&qword_100AEDE78);
  v2[41] = swift_task_alloc();
  v3 = sub_10079A044();
  v2[42] = v3;
  v2[43] = *(v3 - 8);
  v2[44] = swift_task_alloc();
  v4 = sub_10079A1A4();
  v2[45] = v4;
  v2[46] = *(v4 - 8);
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_100612108, 0, 0);
}

uint64_t sub_100612108()
{
  v1 = v0[38];
  v2 = v0[39];
  if (v1)
  {
    v3 = v0 + 10;
    sub_1005AAE74(v1);
    v4 = *(v2 + 16);
    isa = sub_1007A25D4().super.isa;
    v0[48] = isa;

    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = sub_100612330;
    v6 = swift_continuation_init();
    v0[33] = sub_1001F1160(&unk_100AEDE80);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_100613444;
    v0[29] = &unk_100A27478;
    v0[30] = v6;
    [v4 assetDetailsForAssetIDs:isa completion:v0 + 26];
  }

  else
  {
    v3 = v0 + 2;
    v7 = *(v2 + 16);
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_100612B20;
    v8 = swift_continuation_init();
    v0[25] = sub_1001F1160(&unk_100AEDE80);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100613444;
    v0[21] = &unk_100A27450;
    v0[22] = v8;
    [v7 fetchAssetDetailsIncludingDeleted:0 completion:v0 + 18];
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_100612330()
{
  v1 = *(*v0 + 112);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_100613308;
  }

  else
  {
    v2 = sub_100612440;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100612440()
{
  v66 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  if (v1)
  {
    v3 = sub_1001EF820(_swiftEmptyArrayStorage);
    v63 = v3;
    v4 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v1 >> 62)
    {
LABEL_103:
      v5 = sub_1007A38D4();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v7 = *(v0 + 368);
        v8 = *(v0 + 344);
        v61 = (v1 + 32);
        v62 = v1 & 0xC000000000000001;
        v9 = (v8 + 48);
        v55 = (v8 + 32);
        v54 = enum case for StoreBookTaste.neutral(_:);
        v53 = (v8 + 104);
        v57 = (v7 + 56);
        v58 = (v7 + 16);
        v56 = (v7 + 8);
        v59 = v4;
        v60 = v5;
        while (1)
        {
          if (v62)
          {
            v10 = sub_1007A3784();
            v11 = __OFADD__(v6++, 1);
            if (v11)
            {
              goto LABEL_97;
            }
          }

          else
          {
            if (v6 >= v4[2])
            {
              goto LABEL_98;
            }

            v10 = *&v61[8 * v6];
            v11 = __OFADD__(v6++, 1);
            if (v11)
            {
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }
          }

          v1 = v10;
          v3 = [v10 taste];
          v4 = v1;
          result = [v1 assetID];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v13 = result;
          v14 = sub_1007A2254();
          v16 = v15;

          v17 = HIBYTE(v16) & 0xF;
          v18 = v14 & 0xFFFFFFFFFFFFLL;
          if ((v16 & 0x2000000000000000) != 0)
          {
            v19 = HIBYTE(v16) & 0xF;
          }

          else
          {
            v19 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (!v19)
          {

            goto LABEL_6;
          }

          if ((v16 & 0x1000000000000000) != 0)
          {
            v64 = 0;
            v22 = sub_10063E4AC(v14, v16, 10);
            v47 = v46;

            if ((v47 & 1) == 0)
            {
LABEL_75:
              v37 = *(v0 + 328);
              v36 = *(v0 + 336);
              sub_10079A034();
              v1 = v9;
              v38 = *v9;
              v39 = (*v9)(v37, 1, v36);
              v40 = *(v0 + 352);
              v41 = *(v0 + 328);
              v42 = *(v0 + 336);
              if (v39 == 1)
              {
                (*v53)(v40, v54, *(v0 + 336));
                if (v38(v41, 1, v42) != 1)
                {
                  sub_1006135E8(*(v0 + 328));
                }
              }

              else
              {
                (*v55)(v40, *(v0 + 328), *(v0 + 336));
              }

              v43 = *(v0 + 376);
              v44 = *(v0 + 360);
              v45 = *(v0 + 320);
              sub_10079A194();
              (*v58)(v45, v43, v44);
              (*v57)(v45, 0, 1, v44);
              v3 = &v63;
              sub_1005E9D04(v45, v22);

              (*v56)(v43, v44);
              goto LABEL_6;
            }

            goto LABEL_5;
          }

          if ((v16 & 0x2000000000000000) != 0)
          {
            v65[0] = v14;
            v65[1] = v16 & 0xFFFFFFFFFFFFFFLL;
            if (v14 == 43)
            {
              if (!v17)
              {
                goto LABEL_99;
              }

              if (--v17)
              {
                v22 = 0;
                v30 = v65 + 1;
                while (1)
                {
                  v31 = *v30 - 48;
                  if (v31 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v22, 0xAuLL))
                  {
                    break;
                  }

                  v25 = __CFADD__(10 * v22, v31);
                  v22 = 10 * v22 + v31;
                  if (v25)
                  {
                    break;
                  }

                  ++v30;
                  if (!--v17)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v14 == 45)
            {
              if (!v17)
              {
                goto LABEL_102;
              }

              if (--v17)
              {
                v22 = 0;
                v26 = v65 + 1;
                while (1)
                {
                  v27 = *v26 - 48;
                  if (v27 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v22, 0xAuLL))
                  {
                    break;
                  }

                  v25 = 10 * v22 >= v27;
                  v22 = 10 * v22 - v27;
                  if (!v25)
                  {
                    break;
                  }

                  ++v26;
                  if (!--v17)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v17)
            {
              v22 = 0;
              v33 = v65;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v22, 0xAuLL))
                {
                  break;
                }

                v25 = __CFADD__(10 * v22, v34);
                v22 = 10 * v22 + v34;
                if (v25)
                {
                  break;
                }

                ++v33;
                if (!--v17)
                {
                  goto LABEL_74;
                }
              }
            }
          }

          else
          {
            if ((v14 & 0x1000000000000000) != 0)
            {
              v20 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v20 = sub_1007A37B4();
            }

            v21 = *v20;
            if (v21 == 43)
            {
              if (v18 < 1)
              {
                goto LABEL_100;
              }

              v17 = v18 - 1;
              if (v18 != 1)
              {
                v22 = 0;
                if (!v20)
                {
                  goto LABEL_65;
                }

                v28 = v20 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v22, 0xAuLL))
                  {
                    break;
                  }

                  v25 = __CFADD__(10 * v22, v29);
                  v22 = 10 * v22 + v29;
                  if (v25)
                  {
                    break;
                  }

                  ++v28;
                  if (!--v17)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v21 == 45)
            {
              if (v18 < 1)
              {
                goto LABEL_101;
              }

              v17 = v18 - 1;
              if (v18 != 1)
              {
                v22 = 0;
                if (!v20)
                {
                  goto LABEL_65;
                }

                v23 = v20 + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v22, 0xAuLL))
                  {
                    break;
                  }

                  v25 = 10 * v22 >= v24;
                  v22 = 10 * v22 - v24;
                  if (!v25)
                  {
                    break;
                  }

                  ++v23;
                  if (!--v17)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v18)
            {
              v22 = 0;
              if (!v20)
              {
LABEL_65:
                LOBYTE(v17) = 0;
                goto LABEL_74;
              }

              while (1)
              {
                v32 = *v20 - 48;
                if (v32 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v22, 0xAuLL))
                {
                  break;
                }

                v25 = __CFADD__(10 * v22, v32);
                v22 = 10 * v22 + v32;
                if (v25)
                {
                  break;
                }

                ++v20;
                if (!--v18)
                {
                  goto LABEL_65;
                }
              }
            }
          }

          v22 = 0;
          LOBYTE(v17) = 1;
LABEL_74:
          v64 = v17;
          v35 = v17;

          if ((v35 & 1) == 0)
          {
            goto LABEL_75;
          }

LABEL_5:

LABEL_6:
          v4 = v59;
          if (v6 == v60)
          {
            v3 = v63;
            break;
          }
        }
      }
    }
  }

  else
  {
    if (qword_100AD1950 != -1)
    {
      swift_once();
    }

    v48 = sub_10079ACE4();
    sub_100008B98(v48, qword_100B236D0);
    v49 = sub_10079ACC4();
    v50 = sub_1007A29B4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error retrieving reviews from manager", v51, 2u);
    }

    v3 = sub_1001EF820(_swiftEmptyArrayStorage);
  }

  v52 = *(v0 + 8);

  return v52(v3);
}

uint64_t sub_100612B20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_1006133A8;
  }

  else
  {
    v2 = sub_100612C30;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100612C30()
{
  v65 = v0;
  v1 = *(v0 + 272);

  if (v1)
  {
    v2 = sub_1001EF820(_swiftEmptyArrayStorage);
    v62 = v2;
    v3 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v1 >> 62)
    {
LABEL_103:
      v4 = sub_1007A38D4();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = *(v0 + 368);
        v7 = *(v0 + 344);
        v60 = (v1 + 32);
        v61 = v1 & 0xC000000000000001;
        v8 = (v7 + 48);
        v54 = (v7 + 32);
        v53 = enum case for StoreBookTaste.neutral(_:);
        v52 = (v7 + 104);
        v56 = (v6 + 56);
        v57 = (v6 + 16);
        v55 = (v6 + 8);
        v58 = v3;
        v59 = v4;
        while (1)
        {
          if (v61)
          {
            v9 = sub_1007A3784();
            v10 = __OFADD__(v5++, 1);
            if (v10)
            {
              goto LABEL_97;
            }
          }

          else
          {
            if (v5 >= v3[2])
            {
              goto LABEL_98;
            }

            v9 = *&v60[8 * v5];
            v10 = __OFADD__(v5++, 1);
            if (v10)
            {
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }
          }

          v1 = v9;
          v2 = [v9 taste];
          v3 = v1;
          result = [v1 assetID];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v12 = result;
          v13 = sub_1007A2254();
          v15 = v14;

          v16 = HIBYTE(v15) & 0xF;
          v17 = v13 & 0xFFFFFFFFFFFFLL;
          if ((v15 & 0x2000000000000000) != 0)
          {
            v18 = HIBYTE(v15) & 0xF;
          }

          else
          {
            v18 = v13 & 0xFFFFFFFFFFFFLL;
          }

          if (!v18)
          {

            goto LABEL_6;
          }

          if ((v15 & 0x1000000000000000) != 0)
          {
            v63 = 0;
            v21 = sub_10063E4AC(v13, v15, 10);
            v46 = v45;

            if ((v46 & 1) == 0)
            {
LABEL_75:
              v36 = *(v0 + 328);
              v35 = *(v0 + 336);
              sub_10079A034();
              v1 = v8;
              v37 = *v8;
              v38 = (*v8)(v36, 1, v35);
              v39 = *(v0 + 352);
              v40 = *(v0 + 328);
              v41 = *(v0 + 336);
              if (v38 == 1)
              {
                (*v52)(v39, v53, *(v0 + 336));
                if (v37(v40, 1, v41) != 1)
                {
                  sub_1006135E8(*(v0 + 328));
                }
              }

              else
              {
                (*v54)(v39, *(v0 + 328), *(v0 + 336));
              }

              v42 = *(v0 + 376);
              v43 = *(v0 + 360);
              v44 = *(v0 + 320);
              sub_10079A194();
              (*v57)(v44, v42, v43);
              (*v56)(v44, 0, 1, v43);
              v2 = &v62;
              sub_1005E9D04(v44, v21);

              (*v55)(v42, v43);
              goto LABEL_6;
            }

            goto LABEL_5;
          }

          if ((v15 & 0x2000000000000000) != 0)
          {
            v64[0] = v13;
            v64[1] = v15 & 0xFFFFFFFFFFFFFFLL;
            if (v13 == 43)
            {
              if (!v16)
              {
                goto LABEL_99;
              }

              if (--v16)
              {
                v21 = 0;
                v29 = v64 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v21, 0xAuLL))
                  {
                    break;
                  }

                  v24 = __CFADD__(10 * v21, v30);
                  v21 = 10 * v21 + v30;
                  if (v24)
                  {
                    break;
                  }

                  ++v29;
                  if (!--v16)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v13 == 45)
            {
              if (!v16)
              {
                goto LABEL_102;
              }

              if (--v16)
              {
                v21 = 0;
                v25 = v64 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v21, 0xAuLL))
                  {
                    break;
                  }

                  v24 = 10 * v21 >= v26;
                  v21 = 10 * v21 - v26;
                  if (!v24)
                  {
                    break;
                  }

                  ++v25;
                  if (!--v16)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v16)
            {
              v21 = 0;
              v32 = v64;
              while (1)
              {
                v33 = *v32 - 48;
                if (v33 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  break;
                }

                v24 = __CFADD__(10 * v21, v33);
                v21 = 10 * v21 + v33;
                if (v24)
                {
                  break;
                }

                ++v32;
                if (!--v16)
                {
                  goto LABEL_74;
                }
              }
            }
          }

          else
          {
            if ((v13 & 0x1000000000000000) != 0)
            {
              v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v19 = sub_1007A37B4();
            }

            v20 = *v19;
            if (v20 == 43)
            {
              if (v17 < 1)
              {
                goto LABEL_100;
              }

              v16 = v17 - 1;
              if (v17 != 1)
              {
                v21 = 0;
                if (!v19)
                {
                  goto LABEL_65;
                }

                v27 = v19 + 1;
                while (1)
                {
                  v28 = *v27 - 48;
                  if (v28 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v21, 0xAuLL))
                  {
                    break;
                  }

                  v24 = __CFADD__(10 * v21, v28);
                  v21 = 10 * v21 + v28;
                  if (v24)
                  {
                    break;
                  }

                  ++v27;
                  if (!--v16)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v20 == 45)
            {
              if (v17 < 1)
              {
                goto LABEL_101;
              }

              v16 = v17 - 1;
              if (v17 != 1)
              {
                v21 = 0;
                if (!v19)
                {
                  goto LABEL_65;
                }

                v22 = v19 + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v21, 0xAuLL))
                  {
                    break;
                  }

                  v24 = 10 * v21 >= v23;
                  v21 = 10 * v21 - v23;
                  if (!v24)
                  {
                    break;
                  }

                  ++v22;
                  if (!--v16)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v17)
            {
              v21 = 0;
              if (!v19)
              {
LABEL_65:
                LOBYTE(v16) = 0;
                goto LABEL_74;
              }

              while (1)
              {
                v31 = *v19 - 48;
                if (v31 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  break;
                }

                v24 = __CFADD__(10 * v21, v31);
                v21 = 10 * v21 + v31;
                if (v24)
                {
                  break;
                }

                ++v19;
                if (!--v17)
                {
                  goto LABEL_65;
                }
              }
            }
          }

          v21 = 0;
          LOBYTE(v16) = 1;
LABEL_74:
          v63 = v16;
          v34 = v16;

          if ((v34 & 1) == 0)
          {
            goto LABEL_75;
          }

LABEL_5:

LABEL_6:
          v3 = v58;
          if (v5 == v59)
          {
            v2 = v62;
            break;
          }
        }
      }
    }
  }

  else
  {
    if (qword_100AD1950 != -1)
    {
      swift_once();
    }

    v47 = sub_10079ACE4();
    sub_100008B98(v47, qword_100B236D0);
    v48 = sub_10079ACC4();
    v49 = sub_1007A29B4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Error retrieving reviews from manager", v50, 2u);
    }

    v2 = sub_1001EF820(_swiftEmptyArrayStorage);
  }

  v51 = *(v0 + 8);

  return v51(v2);
}

uint64_t sub_100613308()
{
  v1 = *(v0 + 384);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006133A8()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100613444(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_1001F1160(&unk_100AD67F0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      sub_10000A7C4(0, &unk_100AEDE90);
      v11 = sub_1007A25E4();
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*(v7 + 64) + 40);
    *v12 = v11;
    v12[1] = a3;
    v13 = a3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100613548(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002104D8;

  return sub_100611F7C(a1);
}

uint64_t sub_1006135E8(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AEDE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PPTStoreProductPageTest.startBooksUITest(rootBarCoordinator:)(void *a1)
{
  v2 = sub_1007A1C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1007A1CA4();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1007A1CC4();
  v42 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = sub_10079ACE4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v41 = a1;
  v19 = [a1 selectedNavigationController];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 topViewController];

    if (v21)
    {
      sub_100797294();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v40 = v3;
        sub_100797264();
        sub_10079AC94();
        v24 = sub_10079ACC4();
        v25 = sub_1007A29D4();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v39 = v2;
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "waiting 10s for card stack to close", v26, 2u);
          v2 = v39;
        }

        (*(v12 + 8))(v18, v11);
        sub_10000A7C4(0, &qword_100AD1E10);
        v27 = sub_1007A2D74();
        sub_1007A1CB4();
        sub_1007A1D24();
        v42 = *(v42 + 8);
        (v42)(v7, v48);
        v28 = swift_allocObject();
        v29 = v47;
        v28[2] = v41;
        v28[3] = v29;
        v28[4] = v23;
        aBlock[4] = sub_10061422C;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1003323D0;
        aBlock[3] = &unk_100A274C8;
        v30 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v31 = v29;
        v32 = v21;

        v33 = v43;
        sub_1007A1C74();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100265BDC();
        sub_1001F1160(&unk_100AD7CA0);
        sub_100234698();
        v34 = v45;
        sub_1007A3594();
        sub_1007A2D04();
        _Block_release(v30);

        (*(v40 + 8))(v34, v2);
        (*(v44 + 8))(v33, v46);
        return (v42)(v10, v48);
      }
    }
  }

  sub_10079AC94();
  v36 = sub_10079ACC4();
  v37 = sub_1007A29B4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Current VC is not a PageHostingController", v38, 2u);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100613C34(void *a1, void *a2, void *a3)
{
  v39 = a2;
  v40 = a3;
  v4 = sub_1007A1C54();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1007A1CA4();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = sub_10079ACE4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 hostingViewController];
  sub_10000A7C4(0, &unk_100ADAF38);
  v20 = sub_1007A2C64();

  if (v20)
  {
    v51 = BKAppDelegate.enableMetricsInspectorOnDebugMode();
    v52 = 0;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_1003323D0;
    v50 = &unk_100A27540;
    v21 = _Block_copy(&aBlock);
    v22 = v20;
    [v22 popAllCardsAnimated:0 completion:v21];
    _Block_release(v21);
  }

  v38 = v20;
  sub_10079AC94();
  v23 = sub_10079ACC4();
  v24 = sub_1007A29D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "waiting 2s for product page to open", v25, 2u);
  }

  (*(v15 + 8))(v18, v14);
  sub_10000A7C4(0, &qword_100AD1E10);
  v26 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v37 = *(v8 + 8);
  v37(v10, v7);
  v27 = swift_allocObject();
  v29 = v39;
  v28 = v40;
  *(v27 + 16) = v39;
  *(v27 + 24) = v28;
  v51 = sub_100614240;
  v52 = v27;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_1003323D0;
  v50 = &unk_100A27518;
  v30 = _Block_copy(&aBlock);
  v31 = v29;
  v32 = v28;

  v33 = v41;
  sub_1007A1C74();
  aBlock = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0);
  sub_100234698();
  v34 = v43;
  v35 = v46;
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v30);

  (*(v45 + 8))(v34, v35);
  (*(v42 + 8))(v33, v44);
  return (v37)(v13, v7);
}

void sub_100614240()
{
  v1 = *(v0 + 16);
  [v1 setStartPPTTestCalled:1];
  [v1 startPPTTest];
  sub_100797264();
}

void sub_1006142C0(uint64_t a1, double *a2, void *a3)
{
  v4 = [objc_opt_self() _preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout weight:*a2];
  if (v4)
  {
    v5 = v4;
    [v4 pointSize];
    if (v6 <= 29.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 29.0;
    }

    v8 = [objc_opt_self() fontWithDescriptor:v5 size:v7];
  }

  else
  {
    sub_10000A7C4(0, &unk_100AEB3C0);
    v8 = sub_1007A30B4();
  }

  *a3 = v8;
}

BOOL sub_1006143B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10061BF3C(v5, v7);
}

uint64_t sub_1006143FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v73 = sub_1001F1160(&qword_100AEDF00);
  __chkstk_darwin(v73);
  v72 = &v68 - v3;
  v75 = sub_1001F1160(&qword_100AEDF08);
  __chkstk_darwin(v75);
  v5 = &v68 - v4;
  v74 = sub_1001F1160(&qword_100AEDF10);
  __chkstk_darwin(v74);
  v7 = &v68 - v6;
  v76 = sub_1001F1160(&qword_100AEDF18);
  __chkstk_darwin(v76);
  v9 = &v68 - v8;
  v10 = sub_1001F1160(&qword_100AEDF20);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = sub_1001F1160(&qword_100AEDF28);
  __chkstk_darwin(v13 - 8);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  v18 = sub_1001F1160(&qword_100AEDF30);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v77 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  sub_100614C64((&v68 - v22));
  v24 = sub_10079D284();
  sub_10079BBA4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v23[*(sub_1001F1160(&qword_100AEDF38) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_10079D2A4();
  sub_10079BBA4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = &v23[*(sub_1001F1160(&unk_100AEDF40) + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = sub_10079D2B4();
  sub_10079BBA4();
  v45 = &v23[*(v19 + 44)];
  *v45 = v44;
  *(v45 + 1) = v46;
  *(v45 + 2) = v47;
  *(v45 + 3) = v48;
  *(v45 + 4) = v49;
  v45[40] = 0;
  if (sub_1007A0264())
  {
    sub_100614FAC(v12);
    sub_1000077D8(v12, v7, &qword_100AEDF20);
    swift_storeEnumTagMultiPayload();
    sub_10061769C();
    sub_100617870();
    sub_10079CCA4();
    sub_1000077D8(v9, v5, &qword_100AEDF18);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AD4988);
    sub_100617610();
    sub_1001FA380();
    sub_10079CCA4();
    sub_100007840(v9, &qword_100AEDF18);
    sub_100007840(v12, &qword_100AEDF20);
  }

  else
  {
    v69 = a1;
    v70 = v10;
    v71 = v17;
    v50 = sub_1007A01C4();
    v52 = v51;

    v53 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v53 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (v53 || (v54 = sub_1007A01A4(), (v54 & 1) == 0))
    {
      sub_10079E474();
      sub_10079BE54();
      v59 = v83;
      v60 = v84;
      v61 = v85;
      v62 = v86;
      v82 = 1;
      v81 = v84;
      v80 = v86;
      *v5 = 0;
      v5[8] = 1;
      *(v5 + 2) = v59;
      v5[24] = v60;
      *(v5 + 4) = v61;
      v5[40] = v62;
      *(v5 + 3) = v87;
      swift_storeEnumTagMultiPayload();
      sub_1001F1160(&qword_100AD4988);
      sub_100617610();
      sub_1001FA380();
      v17 = v71;
      sub_10079CCA4();
    }

    else
    {
      v68 = &v68;
      __chkstk_darwin(v54);
      *(&v68 - 2) = v69;
      sub_10079D274();
      sub_1001F1160(&qword_100AEDFB8);
      sub_10061795C();
      v55 = v72;
      sub_10079BBD4();
      v56 = sub_10079DDC4();
      v57 = sub_10079D294();
      v58 = v55 + *(v73 + 36);
      *v58 = v56;
      *(v58 + 8) = v57;
      sub_1000077D8(v55, v7, &qword_100AEDF00);
      swift_storeEnumTagMultiPayload();
      sub_10061769C();
      sub_100617870();
      sub_10079CCA4();
      sub_1000077D8(v9, v5, &qword_100AEDF18);
      swift_storeEnumTagMultiPayload();
      sub_1001F1160(&qword_100AD4988);
      sub_100617610();
      sub_1001FA380();
      v17 = v71;
      sub_10079CCA4();
      sub_100007840(v9, &qword_100AEDF18);
      sub_100007840(v55, &qword_100AEDF00);
    }
  }

  v63 = v77;
  sub_1000077D8(v23, v77, &qword_100AEDF30);
  v64 = v78;
  sub_1000077D8(v17, v78, &qword_100AEDF28);
  v65 = v79;
  sub_1000077D8(v63, v79, &qword_100AEDF30);
  v66 = sub_1001F1160(&qword_100AEDFB0);
  sub_1000077D8(v64, v65 + *(v66 + 48), &qword_100AEDF28);
  sub_100007840(v17, &qword_100AEDF28);
  sub_100007840(v23, &qword_100AEDF30);
  sub_100007840(v64, &qword_100AEDF28);
  return sub_100007840(v63, &qword_100AEDF30);
}

uint64_t sub_100614C64@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1007A0284();
  sub_10061B918(&qword_100AEE0F0, &type metadata accessor for SearchViewModel);
  sub_10079C034();
  swift_getKeyPath();
  sub_10079C044();

  v4 = v34;
  v5 = v35;
  v6 = v36;
  v7 = v37;
  sub_1007A0254();
  if (qword_100AD18B0 != -1)
  {
    swift_once();
  }

  v9 = qword_100B23628;
  v8 = qword_100B23630;
  sub_1005A2C48(v1, &v27);
  v10 = swift_allocObject();
  v11 = v32;
  *(v10 + 80) = v31;
  *(v10 + 96) = v11;
  *(v10 + 112) = v33;
  v12 = v28;
  *(v10 + 16) = v27;
  *(v10 + 32) = v12;
  v13 = v30;
  *(v10 + 48) = v29;
  *(v10 + 64) = v13;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  sub_1007A1214();
  sub_10061B918(&qword_100AEFCF0, &type metadata accessor for SearchBarResponderState);

  a1[4] = sub_10079C024();
  a1[5] = v14;
  a1[6] = v9;
  a1[7] = v8;
  a1[8] = sub_10061BEB4;
  a1[9] = v10;
  v15 = *(type metadata accessor for PopoverSearchBar(0) + 32);
  *(a1 + v15) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730);
  swift_storeEnumTagMultiPayload();
  sub_1005A2C48(v2, &v27);
  v16 = swift_allocObject();
  v17 = v32;
  *(v16 + 80) = v31;
  *(v16 + 96) = v17;
  *(v16 + 112) = v33;
  v18 = v28;
  *(v16 + 16) = v27;
  *(v16 + 32) = v18;
  v19 = v30;
  *(v16 + 48) = v29;
  *(v16 + 64) = v19;
  v20 = (a1 + *(sub_1001F1160(&qword_100AEE0F8) + 36));
  *v20 = sub_10061BEDC;
  v20[1] = v16;
  v20[2] = 0;
  v20[3] = 0;
  sub_1005A2C48(v2, &v27);
  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 80) = v31;
  *(v21 + 96) = v22;
  *(v21 + 112) = v33;
  v23 = v28;
  *(v21 + 16) = v27;
  *(v21 + 32) = v23;
  v24 = v30;
  *(v21 + 48) = v29;
  *(v21 + 64) = v24;
  result = sub_1001F1160(&qword_100AEE100);
  v26 = (a1 + *(result + 36));
  *v26 = 0;
  v26[1] = 0;
  v26[2] = sub_10061BF34;
  v26[3] = v21;
  return result;
}

uint64_t sub_100614FAC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_10079C074();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AEDF70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v31 = sub_1001F1160(&qword_100AEDFE8);
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v27 - v10;
  v28 = sub_1001F1160(&qword_100AEDF68);
  __chkstk_darwin(v28);
  v29 = &v27 - v12;
  v33 = v1;
  sub_1001F1160(&qword_100AEDFF0);
  sub_100005920(&qword_100AEDFF8, &qword_100AEDFF0);
  sub_10079D524();
  sub_10079C064();
  sub_100005920(&qword_100AEDF78, &qword_100AEDF70);
  sub_10079DCA4();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v13 = v27;
  sub_1006165F4();
  sub_10079E474();
  sub_10079C414();
  v14 = v29;
  (*(v30 + 32))(v29, v11, v31);
  v15 = &v14[*(v28 + 36)];
  v16 = v41;
  *(v15 + 4) = v40;
  *(v15 + 5) = v16;
  *(v15 + 6) = v42;
  v17 = v37;
  *v15 = v36;
  *(v15 + 1) = v17;
  v18 = v39;
  *(v15 + 2) = v38;
  *(v15 + 3) = v18;
  sub_1005A2C48(v13, v34);
  v19 = swift_allocObject();
  v20 = v34[5];
  *(v19 + 80) = v34[4];
  *(v19 + 96) = v20;
  *(v19 + 112) = v35;
  v21 = v34[1];
  *(v19 + 16) = v34[0];
  *(v19 + 32) = v21;
  v22 = v34[3];
  *(v19 + 48) = v34[2];
  *(v19 + 64) = v22;
  v23 = v14;
  v24 = v32;
  sub_10020B3C8(v23, v32, &qword_100AEDF68);
  result = sub_1001F1160(&qword_100AEDF20);
  v26 = (v24 + *(result + 36));
  *v26 = sub_100616B38;
  v26[1] = 0;
  v26[2] = sub_100617AA8;
  v26[3] = v19;
  return result;
}

uint64_t sub_1006154E0(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_1007A0AD4();
  sub_1007A0254();
  sub_1007A11E4();
}

uint64_t sub_10061554C()
{
  result = sub_1007A0184();
  if (result)
  {
    sub_1007A0254();
    sub_1007A11C4();
  }

  return result;
}

uint64_t sub_1006155A4()
{
  sub_1007A0254();
  sub_1007A11E4();
}

uint64_t sub_1006155E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v62 = sub_1001F1160(&qword_100AEE020);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v75 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v74 = &v57 - v5;
  v59 = sub_1001F1160(&qword_100AEE028);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v68 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_1007A01B4();
  if (v13 == -1)
  {
    v73 = 0;
    v72 = 0;
    v69 = 0;
    v64 = 0;
    v71 = 0;
    v65 = 0;
    v67 = 0;
    v70 = 0;
    v76 = 0;
    v66 = 0;
  }

  else
  {
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    sub_1005A2C48(a1, &v77);
    v18 = swift_allocObject();
    v19 = v82;
    *(v18 + 80) = v81;
    *(v18 + 96) = v19;
    v20 = v83;
    v21 = v78;
    *(v18 + 16) = v77;
    *(v18 + 32) = v21;
    v22 = v80;
    *(v18 + 48) = v79;
    *(v18 + 64) = v22;
    *(v18 + 112) = v20;
    *(v18 + 120) = v14;
    *(v18 + 128) = v15;
    *(v18 + 136) = v16;
    v17 &= 1u;
    v71 = v18;
    *(v18 + 144) = v17;
    sub_1005A2C48(a1, &v77);
    v23 = swift_allocObject();
    v24 = v82;
    *(v23 + 80) = v81;
    *(v23 + 96) = v24;
    *(v23 + 112) = v83;
    v25 = v78;
    *(v23 + 16) = v77;
    *(v23 + 32) = v25;
    v26 = v80;
    *(v23 + 48) = v79;
    *(v23 + 64) = v26;
    v70 = v23;
    LOBYTE(v85) = v17;
    v73 = v14;
    v72 = v15;
    v69 = v16;
    sub_10061BBBC();
    *&v77 = sub_10079DDC4();
    v76 = sub_10079E1B4();
    v66 = v85;
    v67 = sub_10061BBB4;
    v65 = sub_10061C8D4;
    v64 = sub_10061BB44;
  }

  *&v85 = sub_1007A0224();
  sub_1005A2C48(a1, &v77);
  v27 = swift_allocObject();
  v28 = v82;
  *(v27 + 80) = v81;
  *(v27 + 96) = v28;
  *(v27 + 112) = v83;
  v29 = v78;
  *(v27 + 16) = v77;
  *(v27 + 32) = v29;
  v30 = v80;
  *(v27 + 48) = v79;
  *(v27 + 64) = v30;
  sub_1001F1160(&qword_100AEE030);
  sub_100796C04();
  sub_1001F1160(&qword_100AEE038);
  sub_100005920(&qword_100AEE040, &qword_100AEE030);
  sub_10061B758();
  sub_10061B918(&qword_100AEE078, &type metadata accessor for SearchResultEntity);
  v63 = v9;
  sub_10079E274();
  v31 = sub_1007A01F4();
  v32 = sub_1007A0214();
  v34 = v33;
  sub_100009864(a1, &v77);
  v35 = swift_allocObject();
  sub_1000077C0(&v77, v35 + 16);
  sub_1005A2C48(a1, &v77);
  v36 = swift_allocObject();
  v37 = v82;
  *(v36 + 80) = v81;
  *(v36 + 96) = v37;
  *(v36 + 112) = v83;
  v38 = v78;
  *(v36 + 16) = v77;
  *(v36 + 32) = v38;
  v39 = v80;
  *(v36 + 48) = v79;
  *(v36 + 64) = v39;
  v84 = v34 & 1;
  *&v77 = sub_10079DDC4();
  v40 = sub_10079E1B4();
  LOBYTE(v77) = v31;
  *(&v77 + 1) = v32;
  LOBYTE(v78) = v84;
  *(&v78 + 1) = sub_10061B960;
  *&v79 = v35;
  *(&v79 + 1) = sub_10061C8D4;
  *&v80 = 0;
  *(&v80 + 1) = sub_10061B978;
  *&v81 = v36;
  *(&v81 + 1) = v40;
  sub_10079BE14();
  sub_1001F1160(&qword_100AEE080);
  sub_10061B980();
  v41 = v74;
  sub_10079D864();

  v42 = v58;
  v57 = *(v58 + 16);
  v43 = v68;
  v44 = v59;
  v57(v68, v63, v59);
  v45 = v61;
  v46 = *(v61 + 16);
  v47 = v62;
  v46(v75, v41, v62);
  *&v85 = v73;
  *(&v85 + 1) = v72;
  *&v86 = v69;
  *(&v86 + 1) = v66;
  *&v87 = v64;
  *(&v87 + 1) = v71;
  v88 = v65;
  *&v89 = v67;
  *(&v89 + 1) = v70;
  v90 = v76;
  v48 = v60;
  *(v60 + 80) = v76;
  v49 = v88;
  *(v48 + 2) = v87;
  *(v48 + 3) = v49;
  *(v48 + 4) = v89;
  v50 = v86;
  *v48 = v85;
  *(v48 + 1) = v50;
  v51 = sub_1001F1160(&qword_100AEE0A8);
  v57(&v48[*(v51 + 48)], v43, v44);
  v52 = &v48[*(v51 + 64)];
  v53 = v75;
  v46(v52, v75, v47);
  sub_1000077D8(&v85, &v77, &qword_100AEE0B0);
  v54 = *(v45 + 8);
  v54(v74, v47);
  v55 = *(v42 + 8);
  v55(v63, v44);
  v54(v53, v47);
  v55(v68, v44);
  *&v77 = v73;
  *(&v77 + 1) = v72;
  *&v78 = v69;
  *(&v78 + 1) = v66;
  *&v79 = v64;
  *(&v79 + 1) = v71;
  v80 = v65;
  *&v81 = v67;
  *(&v81 + 1) = v70;
  *&v82 = v76;
  return sub_100007840(&v77, &qword_100AEE0B0);
}

uint64_t sub_100615ED4()
{

  sub_1001F1160(&qword_100AEE018);
  sub_10079DFF4();
  sub_10079E004();
}

uint64_t sub_100615FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1007A0774();
  v7 = *(v6 - 8);
  v35 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AEE0B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v33 = a2;
  v36 = &v32 - v11;
  sub_1007A0244();
  v13 = *(v7 + 16);
  v37 = a3;
  v32 = a1;
  v13(a3, a1, v6);
  v34 = type metadata accessor for ResultListResultView(0);
  sub_1000077D8(v12, a3 + *(v34 + 20), &qword_100AEE0B8);
  sub_1005A2C48(a2, &v38);
  v14 = v9;
  v13(v9, a1, v6);
  v15 = (*(v7 + 80) + 120) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v43;
  *(v16 + 80) = v42;
  *(v16 + 96) = v17;
  *(v16 + 112) = v44;
  v18 = v39;
  *(v16 + 16) = v38;
  *(v16 + 32) = v18;
  v19 = v41;
  *(v16 + 48) = v40;
  *(v16 + 64) = v19;
  v20 = *(v7 + 32);
  v20(v16 + v15, v14, v6);
  v21 = v33;
  v22 = (v37 + *(v34 + 24));
  *v22 = sub_10061BBC8;
  v22[1] = v16;
  sub_1005A2C48(v21, &v38);
  v13(v14, v32, v6);
  v23 = swift_allocObject();
  v24 = v43;
  *(v23 + 80) = v42;
  *(v23 + 96) = v24;
  *(v23 + 112) = v44;
  v25 = v39;
  *(v23 + 16) = v38;
  *(v23 + 32) = v25;
  v26 = v41;
  *(v23 + 48) = v40;
  *(v23 + 64) = v26;
  v20(v23 + v15, v14, v6);
  v27 = sub_1001F1160(&qword_100AEE058);
  v28 = v37;
  v29 = (v37 + *(v27 + 36));
  *v29 = sub_10061C8D4;
  v29[1] = 0;
  v29[2] = sub_10061BD28;
  v29[3] = v23;
  *&v38 = sub_10079DDC4();
  v30 = sub_10079E1B4();
  sub_100007840(v36, &qword_100AEE0B8);
  result = sub_1001F1160(&qword_100AEE038);
  *(v28 + *(result + 36)) = v30;
  return result;
}

uint64_t sub_100616318(double *a1, uint64_t a2)
{
  v17[0] = sub_100796C04();
  v4 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_1007A0744();
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = v13;

  sub_1001F1160(&qword_100AEE018);
  sub_10079DFF4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v36;
  sub_1002F66AC(v6, isUniquelyReferenced_nonNull_native, v7 + 2.0);
  (*(v4 + 8))(v6, v17[0]);
  v15 = v22;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v17[1] = v34;
  v18 = v35;
  v19 = v15;
  v20 = v37;
  v21 = v38;
  sub_10079E004();
}

uint64_t sub_100616500()
{

  sub_1001F1160(&qword_100AEE018);
  sub_10079DFF4();
  sub_10079E004();
}

uint64_t sub_1006165F4()
{
  v46 = sub_100796C04();
  v1 = *(v46 - 8);
  __chkstk_darwin(v46);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A0774();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AEE010);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v42 - v10;
  v11 = sub_1007A01B4();
  v15 = 0.0;
  if (v14 != -1)
  {
    sub_10061B72C(v11, v12, v13, v14);
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v58 = *(v0 + 56);
    v59 = v16;
    v60 = v17;
    v61 = v18;
    v62 = v19;
    v63 = v20;
    sub_1001F1160(&qword_100AEE018);
    sub_10079DFF4();
  }

  v21 = sub_1007A0224();
  v43 = v0;
  result = sub_1005A2C48(v0, &v58);
  v23 = v21;
  v24 = 0;
  v44 = v45 + 16;
  v25 = *(v23 + 16);
  v26 = (v45 + 56);
  v27 = (v45 + 48);
  v28 = (v45 + 32);
  v29 = (v1 + 8);
  v30 = (v45 + 8);
  v31 = v49;
  v48 = v23;
  for (i = v25; ; v25 = i)
  {
    if (v24 == v25)
    {
      v33 = 1;
      v24 = v25;
      goto LABEL_10;
    }

    if (v24 >= *(v23 + 16))
    {
      break;
    }

    (*(v45 + 16))(v31, v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v24, v4);
    v33 = 0;
    ++v24;
LABEL_10:
    (*v26)(v31, v33, 1, v4);
    sub_100617AB0(v31, v8);
    if ((*v27)(v8, 1, v4) == 1)
    {

      sub_1005A2CA4(&v58);
      v37 = *(v43 + 64);
      v38 = *(v43 + 72);
      v39 = *(v43 + 80);
      v40 = *(v43 + 88);
      v41 = *(v43 + 96);
      v58 = *(v43 + 56);
      v59 = v37;
      v60 = v38;
      v61 = v39;
      v62 = v40;
      v63 = v41;
      sub_1001F1160(&qword_100AEE018);
      sub_10079DFF4();
    }

    (*v28)(v50, v8, v4);
    sub_1007A0744();
    v52 = v64;
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v57 = v69;
    sub_1001F1160(&qword_100AEE018);
    sub_10079DFF4();
    v34 = v51;
    if (*(v51 + 16) && (v35 = sub_1002EC564(v3), (v36 & 1) != 0))
    {
      v32 = *(*(v34 + 56) + 8 * v35);
      (*v29)(v3, v46);
    }

    else
    {

      (*v29)(v3, v46);
      v32 = 3.0;
    }

    result = (*v30)(v50, v4);
    v15 = v15 + v32;
    v31 = v49;
    v23 = v48;
  }

  __break(1u);
  return result;
}

uint64_t sub_100616B38@<X0>(void *a1@<X8>)
{
  result = sub_10079BEB4();
  *a1 = v3;
  return result;
}

uint64_t sub_100616B64()
{
  v0 = sub_1001F1160(&unk_100AEE000);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  if (qword_100AD1958 != -1)
  {
    swift_once();
  }

  v3 = qword_100AD1960;
  v4 = qword_100AEDEA0;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_100AEDEA8;
  sub_1007A1624();
  v6 = sub_1007A1634();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  return sub_1007A0274();
}

uint64_t sub_100616CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10079CB24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1001F1160(&qword_100AEE0C0);
  sub_100616DD0(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_10079D284();
  sub_10079BBA4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a2 + *(sub_1001F1160(&qword_100AEDFD0) + 36);
  *v13 = a1;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  LOBYTE(a1) = sub_10079D2B4();
  sub_10079BBA4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_1001F1160(&qword_100AEDFB8);
  v23 = a2 + *(result + 36);
  *v23 = a1;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_100616DD0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v25 = a2;
  v3 = sub_1001F1160(&unk_100AEE0C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  sub_1005A2C48(a1, &v27);
  v10 = swift_allocObject();
  v11 = v32;
  *(v10 + 80) = v31;
  *(v10 + 96) = v11;
  *(v10 + 112) = v33;
  v12 = v28;
  *(v10 + 16) = v27;
  *(v10 + 32) = v12;
  v13 = v30;
  *(v10 + 48) = v29;
  *(v10 + 64) = v13;
  v26 = sub_1007A0194();
  swift_getKeyPath();
  sub_1005A2C48(a1, &v27);
  v14 = swift_allocObject();
  v15 = v32;
  *(v14 + 80) = v31;
  *(v14 + 96) = v15;
  *(v14 + 112) = v33;
  v16 = v28;
  *(v14 + 16) = v27;
  *(v14 + 32) = v16;
  v17 = v30;
  *(v14 + 48) = v29;
  *(v14 + 64) = v17;
  sub_1001F1160(&unk_100AD61F0);
  sub_100005920(&qword_100AEE0D8, &unk_100AD61F0);
  sub_10061BE08();
  sub_10079E264();
  v18 = *(v4 + 16);
  v18(v6, v9, v3);
  v19 = v25;
  *v25 = sub_10061BD9C;
  v19[1] = v10;
  v20 = v19;
  v21 = sub_1001F1160(&qword_100AEE0E8);
  v18(v20 + *(v21 + 48), v6, v3);
  v22 = *(v4 + 8);

  v22(v9, v3);
  v22(v6, v3);
}

uint64_t sub_1006170BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_1005A2C48(a2, v12);
  v6 = swift_allocObject();
  v7 = v12[5];
  *(v6 + 80) = v12[4];
  *(v6 + 96) = v7;
  v8 = v13;
  v9 = v12[1];
  *(v6 + 16) = v12[0];
  *(v6 + 32) = v9;
  v10 = v12[3];
  *(v6 + 48) = v12[2];
  *(v6 + 64) = v10;
  *(v6 + 112) = v8;
  *(v6 + 120) = v5;
  *(v6 + 128) = v4;
  *a3 = v5;
  a3[1] = v4;
  a3[2] = sub_10061BE5C;
  a3[3] = v6;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_100617168@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079CB24();
  v5 = sub_1001F1160(&qword_100AEDEE8);
  v6 = a1 + *(v5 + 36);
  *v6 = v4;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  v7 = sub_1001F1160(&unk_100AEDEF0);
  sub_1006143FC(v2, v6 + *(v7 + 44));
  v8 = enum case for ContentSizeCategory.large(_:);
  v9 = sub_10079CAE4();
  v10 = *(v9 - 8);
  (*(v10 + 104))(a1, v8, v9);
  (*(v10 + 56))(a1, 0, 1, v9);
  *(a1 + *(v5 + 40)) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4E0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1006174A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006174F0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100617544(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10061758C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_100617610()
{
  result = qword_100AEDF50;
  if (!qword_100AEDF50)
  {
    sub_1001F1234(&qword_100AEDF18);
    sub_10061769C();
    sub_100617870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDF50);
  }

  return result;
}

unint64_t sub_10061769C()
{
  result = qword_100AEDF58;
  if (!qword_100AEDF58)
  {
    sub_1001F1234(&qword_100AEDF20);
    sub_100617754();
    sub_100005920(&qword_100AEDF80, &qword_100AEDF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDF58);
  }

  return result;
}

unint64_t sub_100617754()
{
  result = qword_100AEDF60;
  if (!qword_100AEDF60)
  {
    sub_1001F1234(&qword_100AEDF68);
    sub_1001F1234(&qword_100AEDF70);
    sub_10079C074();
    sub_100005920(&qword_100AEDF78, &qword_100AEDF70);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDF60);
  }

  return result;
}

unint64_t sub_100617870()
{
  result = qword_100AEDF90;
  if (!qword_100AEDF90)
  {
    sub_1001F1234(&qword_100AEDF00);
    sub_100005920(&qword_100AEDF98, &unk_100AEDFA0);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDF90);
  }

  return result;
}

unint64_t sub_10061795C()
{
  result = qword_100AEDFC0;
  if (!qword_100AEDFC0)
  {
    sub_1001F1234(&qword_100AEDFB8);
    sub_1006179E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDFC0);
  }

  return result;
}

unint64_t sub_1006179E8()
{
  result = qword_100AEDFC8;
  if (!qword_100AEDFC8)
  {
    sub_1001F1234(&qword_100AEDFD0);
    sub_100005920(&qword_100AEDFD8, &qword_100AEDFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDFC8);
  }

  return result;
}

uint64_t sub_100617AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEE010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100617B20(void *a1)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1007A1C54();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1007A1CA4();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PopoverSearchBar(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AEE3E8);
  sub_10079D0C4();
  v10 = aBlock;
  sub_10061C588(v1, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = v11 + v8;
  v13 = swift_allocObject();
  sub_10061C5EC(v9, v13 + v11);
  v14 = &v10[OBJC_IVAR____TtCV5BooksP33_86D993C5768548B01F8EDC3BAEFB8CB116PopoverSearchBar11Coordinator_textDidChange];
  *v14 = sub_10061C650;
  v14[1] = v13;

  v15 = v33;
  sub_10079D0C4();
  v16 = aBlock;
  v17 = *(v2 + 72);
  v18 = (aBlock + OBJC_IVAR____TtCV5BooksP33_86D993C5768548B01F8EDC3BAEFB8CB116PopoverSearchBar11Coordinator_searchButtonClicked);
  *v18 = *(v2 + 64);
  v18[1] = v17;

  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  aBlock = *v2;
  v41 = v19;
  v42 = v20;
  sub_1001F1160(&qword_100AEE3F0);
  sub_10079E1C4();
  v21 = sub_1007A2214();

  [v15 setText:v21];

  v22 = [v15 searchTextField];
  v23 = sub_1007A2214();
  [v22 setPlaceholder:v23];

  if (sub_1007A11B4())
  {
    [v15 becomeFirstResponder];
  }

  if (sub_1007A11D4())
  {
    [v15 resignFirstResponder];
  }

  sub_10000A7C4(0, &qword_100AD1E10);
  v24 = sub_1007A2D74();
  sub_10061C588(v2, v9);
  v25 = swift_allocObject();
  sub_10061C5EC(v9, v25 + v11);
  *(v25 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v43 = sub_10061C6D0;
  v44 = v25;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v41 = sub_1003323D0;
  v42 = &unk_100A27B00;
  v26 = _Block_copy(&aBlock);
  v27 = v15;

  v28 = v34;
  sub_1007A1C74();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_10061B918(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  v29 = v36;
  v30 = v39;
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v26);

  (*(v38 + 8))(v29, v30);
  return (*(v35 + 8))(v28, v37);
}

uint64_t sub_10061806C()
{

  sub_1001F1160(&qword_100AEE3F0);
  return sub_10079E1D4();
}

uint64_t sub_1006180D0(uint64_t a1, void *a2)
{
  if (sub_1007A11B4())
  {
    sub_1007A11C4();
  }

  if (sub_1007A11D4())
  {
    sub_1007A11E4();
  }

  v3 = [a2 isFirstResponder];
  result = sub_1007A11F4();
  if (v3 != (result & 1))
  {
    [a2 isFirstResponder];
    return sub_1007A1204();
  }

  return result;
}

id sub_100618150()
{
  v0 = [objc_allocWithZone(UISearchBar) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1001F1160(&qword_100AEE3E8);
  sub_10079D0C4();
  [v0 setDelegate:v2];

  [v0 setSearchBarStyle:2];
  return v0;
}

id sub_1006181F8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PopoverSearchBar.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100618234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10061B918(&qword_100AEE3F8, type metadata accessor for PopoverSearchBar);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1006182C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10061B918(&qword_100AEE3F8, type metadata accessor for PopoverSearchBar);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10061835C()
{
  sub_10061B918(&qword_100AEE3F8, type metadata accessor for PopoverSearchBar);
  sub_10079CC64();
  __break(1u);
}

uint64_t sub_1006183B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v48 = a2;
  v55 = sub_10079C394();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1001F1160(&qword_100ADB860);
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = &v42[-v6];
  v7 = sub_1001F1160(&unk_100AEE390);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v54 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v58 = &v42[-v10];
  if (qword_100AD1890 != -1)
  {
    swift_once();
  }

  v59 = qword_100B235E8;
  v60 = unk_100B235F0;
  v11 = sub_100206ECC();

  v44 = v11;
  v12 = sub_10079D5D4();
  v14 = v13;
  v16 = v15;
  sub_10079D374();
  v17 = sub_10079D5A4();
  v19 = v18;
  v21 = v20;

  sub_10020B430(v12, v14, v16 & 1);

  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v22 = sub_10079D564();
  v24 = v23;
  v43 = v25;
  v46 = v26;

  sub_10020B430(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  if (qword_100AD1898 != -1)
  {
    swift_once();
  }

  v59 = qword_100B235F8;
  v60 = unk_100B23600;

  v27 = v49;
  sub_10079E084();
  v28 = v52;
  sub_10079C384();
  sub_100005920(&qword_100AEE360, &qword_100ADB860);
  sub_10061B918(&qword_100AD6CF0, &type metadata accessor for PlainButtonStyle);
  v29 = v58;
  v30 = v51;
  v31 = v55;
  sub_10079D6A4();
  (*(v53 + 8))(v28, v31);
  (*(v50 + 8))(v27, v30);
  v33 = v56;
  v32 = v57;
  v34 = *(v56 + 16);
  v35 = v54;
  v34(v54, v29, v57);
  *a3 = v22;
  *(a3 + 8) = v24;
  v36 = v43 & 1;
  *(a3 + 16) = v43 & 1;
  v55 = v24;
  v37 = KeyPath;
  *(a3 + 24) = v46;
  *(a3 + 32) = v37;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0x4020000000000000;
  *(a3 + 64) = 0;
  v38 = sub_1001F1160(&qword_100AEE3A0);
  v34((a3 + *(v38 + 64)), v35, v32);
  v39 = v55;
  sub_1001F1894(v22, v55, v36);
  v40 = *(v33 + 8);

  v40(v58, v32);
  v40(v35, v32);
  sub_10020B430(v22, v39, v36);
}

uint64_t sub_10061890C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_10079C8C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = sub_1001F1160(&qword_100AEE380);
  sub_1006183B4(v4, v3, a1 + *(v5 + 44));
  LOBYTE(v3) = sub_10079D2F4();
  sub_10079BBA4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = sub_1001F1160(&qword_100AEE388);
  v15 = a1 + *(result + 36);
  *v15 = v3;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_1006189C8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *a3 = xmmword_100836470;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;

  sub_10079DFE4();
  *(a3 + 32) = v7;
  *(a3 + 40) = *(&v7 + 1);
  type metadata accessor for CGRect(0);
  sub_10079DFE4();
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  *(a3 + 80) = v9;
  v4 = sub_1001F1160(&qword_100AEE368);
  v5 = *(v4 + 52);
  *(a3 + v5) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730);
  swift_storeEnumTagMultiPayload();
  return sub_100618AF4(a3 + *(v4 + 56));
}

uint64_t sub_100618AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10079C8C4();
  v30 = 0;
  sub_100618CF0(&v17);
  v41 = v27;
  v42[0] = v28[0];
  *(v42 + 9) = *(v28 + 9);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v31 = v17;
  v32 = v18;
  v43[10] = v27;
  v44[0] = v28[0];
  *(v44 + 9) = *(v28 + 9);
  v43[6] = v23;
  v43[7] = v24;
  v43[8] = v25;
  v43[9] = v26;
  v43[2] = v19;
  v43[3] = v20;
  v43[4] = v21;
  v43[5] = v22;
  v43[0] = v17;
  v43[1] = v18;
  sub_1000077D8(&v31, &v16, &qword_100AEE370);
  sub_100007840(v43, &qword_100AEE370);
  *&v29[151] = v40;
  *&v29[167] = v41;
  *&v29[183] = v42[0];
  *&v29[192] = *(v42 + 9);
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[119] = v38;
  *&v29[135] = v39;
  *&v29[23] = v32;
  *&v29[39] = v33;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[7] = v31;
  v3 = v30;
  v4 = sub_10079D2F4();
  result = sub_10079BBA4();
  v6 = *&v29[128];
  *(a1 + 161) = *&v29[144];
  v7 = *&v29[176];
  *(a1 + 177) = *&v29[160];
  *(a1 + 193) = v7;
  *(a1 + 209) = *&v29[192];
  v8 = *&v29[64];
  *(a1 + 97) = *&v29[80];
  v9 = *&v29[112];
  *(a1 + 113) = *&v29[96];
  *(a1 + 129) = v9;
  *(a1 + 145) = v6;
  v10 = *v29;
  *(a1 + 33) = *&v29[16];
  v11 = *&v29[48];
  *(a1 + 49) = *&v29[32];
  *(a1 + 65) = v11;
  *(a1 + 81) = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 17) = v10;
  *(a1 + 232) = v4;
  *(a1 + 240) = v12;
  *(a1 + 248) = v13;
  *(a1 + 256) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = 0;
  return result;
}

uint64_t sub_100618CF0@<X0>(uint64_t a1@<X8>)
{
  v36 = sub_10079DF24();
  v35 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  KeyPath = swift_getKeyPath();
  sub_10079D494();
  sub_10079D3D4();
  v33 = sub_10079D464();

  v38 = swift_getKeyPath();
  sub_10079E474();
  sub_10079BE54();
  v37 = sub_10079D2E4();
  sub_10079BBA4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_100206ECC();

  v10 = sub_10079D5D4();
  v12 = v11;
  v14 = v13;
  sub_10079D374();
  sub_10079D3D4();
  sub_10079D464();

  v15 = sub_10079D5A4();
  v17 = v16;
  v19 = v18;

  sub_10020B430(v10, v12, v14 & 1);

  sub_10079DE34();
  v20 = sub_10079D564();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;

  sub_10020B430(v15, v17, v19 & 1);

  v26 = swift_getKeyPath();
  *&v43 = v36;
  *(&v43 + 1) = KeyPath;
  *&v44 = v35;
  *(&v44 + 1) = v38;
  *v45 = v33;
  *&v45[8] = v40;
  *&v45[24] = v41;
  *&v45[40] = v42;
  v45[56] = v37;
  *&v45[60] = *&v39[3];
  *&v45[57] = *v39;
  *&v46 = v3;
  *(&v46 + 1) = v5;
  *&v47 = v7;
  *(&v47 + 1) = v9;
  v48 = 0;
  LOBYTE(v57) = 0;
  v55 = v46;
  v56 = v47;
  v53 = *&v45[32];
  v54 = *&v45[48];
  v51 = *v45;
  v52 = *&v45[16];
  v49 = v43;
  v50 = v44;
  v27 = v47;
  *(a1 + 96) = v46;
  *(a1 + 112) = v27;
  v28 = v57;
  v29 = v52;
  *(a1 + 32) = v51;
  *(a1 + 48) = v29;
  v30 = v54;
  *(a1 + 64) = v53;
  *(a1 + 80) = v30;
  v31 = v50;
  *a1 = v49;
  *(a1 + 16) = v31;
  *(a1 + 128) = v28;
  *(a1 + 136) = v20;
  *(a1 + 144) = v22;
  *(a1 + 152) = v12 & 1;
  *(a1 + 160) = v25;
  *(a1 + 168) = v26;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  sub_1000077D8(&v43, v58, &qword_100AEE378);
  sub_1001F1894(v20, v22, v12 & 1);

  sub_10020B430(v20, v22, v12 & 1);

  v59 = v40;
  v58[0] = v36;
  v58[1] = KeyPath;
  v58[2] = v35;
  v58[3] = v38;
  v58[4] = v33;
  v60 = v41;
  v61 = v42;
  v62 = v37;
  *v63 = *v39;
  *&v63[3] = *&v39[3];
  v64 = v3;
  v65 = v5;
  v66 = v7;
  v67 = v9;
  v68 = 0;
  return sub_100007840(v58, &qword_100AEE378);
}

uint64_t sub_1006190C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  *&v94 = sub_1001F1160(&qword_100AEE3B8);
  __chkstk_darwin(v94);
  v96 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v97 = &v87 - v5;
  sub_10079DF24();
  v6 = sub_10079D5E4();
  v8 = v7;
  v10 = v9;
  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v11 = sub_10079D564();
  v13 = v12;
  v15 = v14;

  sub_10020B430(v6, v8, v10 & 1);

  v92 = sub_10079D584();
  v91 = v16;
  v18 = v17;
  sub_10020B430(v11, v13, v15 & 1);

  v19 = *a1;
  v20 = *(a1 + 8);
  LODWORD(v93) = *(a1 + 24);
  v88 = v19;
  if (v93 == 1)
  {
    v20 = sub_1005A35C4(v19, v20);
    v22 = v21;
    goto LABEL_7;
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    *&v102 = v20;
    *(&v102 + 1) = v22;
    sub_1002060B4();

    if (sub_1007A28A4())
    {
      goto LABEL_7;
    }

    sub_10061B744();
  }

  *&v102 = v19;
  v23 = sub_1007A3A74();
  v20 = sub_1005A35C4(v23, v24);
  v22 = v25;

LABEL_7:
  *&v102 = v20;
  *(&v102 + 1) = v22;
  v87 = sub_100206ECC();
  v26 = sub_10079D5D4();
  v28 = v27;
  v30 = v29;
  v31 = v92;
  v32 = v18;
  v33 = v91;
  v34 = sub_10079D584();
  v90 = v35;
  v37 = v36;
  v89 = v38;
  sub_10020B430(v26, v28, v30 & 1);

  sub_10020B430(v31, v33, v32 & 1);

  sub_10079D4C4();
  v39 = v90;
  v40 = sub_10079D5A4();
  v42 = v41;
  LOBYTE(v33) = v43;

  sub_10020B430(v34, v39, v37 & 1);

  sub_10079DE34();
  v44 = sub_10079D564();
  v46 = v45;
  v48 = v47;
  v50 = v49;

  sub_10020B430(v40, v42, v33 & 1);

  KeyPath = swift_getKeyPath();
  v52 = v97;
  v53 = (v97 + *(v94 + 36));
  v54 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v55 = enum case for Image.Scale.small(_:);
  v56 = sub_10079DF84();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = swift_getKeyPath();
  *v52 = v44;
  *(v52 + 8) = v46;
  *(v52 + 16) = v48 & 1;
  *(v52 + 24) = v50;
  *(v52 + 32) = KeyPath;
  *(v52 + 40) = 2;
  *(v52 + 48) = 0;
  if (v93)
  {
    v98 = xmmword_1008254B0;
    v99 = 0u;
    v100 = 0u;
    v101 = 1;
    sub_1001F1160(&qword_100AEE3C8);
    sub_100005920(&qword_100AEE3D0, &qword_100AEE3C8);
    sub_10079CCA4();
  }

  else
  {
    *&v102 = v88;
    *&v102 = sub_1007A3A74();
    *(&v102 + 1) = v57;
    v58 = sub_10079D5D4();
    v60 = v59;
    v62 = v61;
    sub_10079D374();
    v63 = sub_10079D5A4();
    v65 = v64;
    v67 = v66;

    sub_10020B430(v58, v60, v62 & 1);

    _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    v68 = sub_10079D564();
    v70 = v69;
    v72 = v71;
    v74 = v73;

    sub_10020B430(v63, v65, v67 & 1);

    sub_1001F1894(v68, v70, v72 & 1);

    sub_1001F1894(v68, v70, v72 & 1);

    sub_10020B430(v68, v70, v72 & 1);

    v98 = xmmword_100836480;
    *&v99 = v68;
    *(&v99 + 1) = v70;
    *&v100 = v72 & 1;
    *(&v100 + 1) = v74;
    v101 = 0;
    sub_1001F1160(&qword_100AEE3C8);
    sub_100005920(&qword_100AEE3D0, &qword_100AEE3C8);
    sub_10079CCA4();
    sub_10020B430(v68, v70, v72 & 1);
  }

  v94 = v103;
  v93 = v102;
  v75 = v104;
  v76 = v105;
  v77 = v106;
  v78 = v97;
  v79 = v96;
  sub_1000077D8(v97, v96, &qword_100AEE3B8);
  v80 = v95;
  sub_1000077D8(v79, v95, &qword_100AEE3B8);
  v81 = v80 + *(sub_1001F1160(&unk_100AEE3D8) + 48);
  v82 = v94;
  v83 = v93;
  *v81 = v93;
  *(v81 + 16) = v82;
  *(v81 + 32) = v75;
  *(v81 + 40) = v76;
  *(v81 + 48) = v77;
  v84 = v83;
  v85 = v82;
  sub_10061C4F0(v83, *(&v83 + 1), v82, *(&v82 + 1), v75, v76, v77);
  sub_100007840(v78, &qword_100AEE3B8);
  sub_10061C53C(v84, *(&v84 + 1), v85, *(&v85 + 1), v75, v76, v77);
  return sub_100007840(v79, &qword_100AEE3B8);
}

uint64_t sub_1006198C8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v6[1] = v1[1];
  v6[2] = v2;
  v6[0] = *v1;
  *a1 = v2;
  v3 = a1 + *(sub_1001F1160(&qword_100AEE3A8) + 36);

  *v3 = sub_10079C8C4();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_1001F1160(&qword_100AEE3B0);
  return sub_1006190C4(v6, &v3[*(v4 + 44)]);
}

uint64_t sub_10061995C@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v1 = sub_1001F1160(&qword_100AEE288);
  __chkstk_darwin(v1 - 8);
  v3 = &v40[-v2];
  v4 = sub_1007966F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v46 = &v40[-v8];
  v49 = sub_10079C8C4();
  LOBYTE(v60[0]) = 0;
  sub_100619EF0(&v62);
  v71 = v63[5];
  v72 = v63[6];
  v67 = v63[1];
  v68 = v63[2];
  v69 = v63[3];
  v70 = v63[4];
  v65 = v62;
  v66 = v63[0];
  v74[6] = v63[5];
  v74[7] = v63[6];
  v74[2] = v63[1];
  v74[3] = v63[2];
  v74[4] = v63[3];
  v74[5] = v63[4];
  v73 = *&v63[7];
  v75 = *&v63[7];
  v74[0] = v62;
  v74[1] = v63[0];
  sub_1000077D8(&v65, v51, &qword_100AEE290);
  sub_100007840(v74, &qword_100AEE290);
  *(&v64[5] + 7) = v70;
  *(&v64[6] + 7) = v71;
  *(&v64[7] + 7) = v72;
  *(&v64[1] + 7) = v66;
  *(&v64[2] + 7) = v67;
  *(&v64[3] + 7) = v68;
  *(&v64[4] + 7) = v69;
  *(&v64[8] + 7) = v73;
  *(v64 + 7) = v65;
  LODWORD(v9) = LOBYTE(v60[0]);
  sub_10061A1E4(v3);
  v10 = v5;
  v11 = *(v5 + 48);
  v12 = v4;
  v13 = v11(v3, 1, v4);
  v48 = v9;
  if (v13 == 1)
  {
    sub_100007840(v3, &qword_100AEE288);
    v44 = 0;
    v45 = 0;
    KeyPath = 0;
    v43 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = v46;
    (*(v10 + 32))(v46, v3, v12);
    (*(v10 + 16))(v45, v21, v12);
    v22 = sub_10079D5C4();
    v9 = v23;
    LOBYTE(v21) = v24;
    sub_10079DE34();
    v25 = sub_10079D564();
    v44 = v26;
    v45 = v25;
    v41 = v27;
    v43 = v28;

    v29 = v9;
    LOBYTE(v9) = v48;
    sub_10020B430(v22, v29, v21 & 1);

    KeyPath = swift_getKeyPath();
    v30 = sub_10079D2A4();
    sub_10079BBA4();
    v17 = v31;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    (*(v10 + 8))(v46, v12);
    LOBYTE(v62) = v41 & 1;
    LOBYTE(v51[0]) = 0;
    LOBYTE(v60[0]) = 0;
    v16 = v41 & 1;
    v15 = v30;
    v14 = 2;
  }

  *(&v52[6] + 1) = v64[6];
  *(&v52[5] + 1) = v64[5];
  *(&v52[2] + 1) = v64[2];
  *(&v52[1] + 1) = v64[1];
  *(&v52[7] + 1) = v64[7];
  v52[8] = *(&v64[7] + 15);
  *(&v52[3] + 1) = v64[3];
  v51[0] = v49;
  v51[1] = 0;
  LOBYTE(v52[0]) = v9;
  *(&v52[4] + 1) = v64[4];
  *(v52 + 1) = v64[0];
  v50[6] = v52[5];
  v50[7] = v52[6];
  v50[8] = v52[7];
  v50[9] = *(&v64[7] + 15);
  v50[2] = v52[1];
  v50[3] = v52[2];
  v50[4] = v52[3];
  v50[5] = v52[4];
  v50[0] = v49;
  v50[1] = v52[0];
  v35 = v44;
  v36 = v45;
  *&v53 = v45;
  *(&v53 + 1) = v44;
  *&v54 = v16;
  v38 = KeyPath;
  v37 = v43;
  *(&v54 + 1) = v43;
  *&v55 = KeyPath;
  *(&v55 + 1) = v14;
  *&v56 = 0;
  *(&v56 + 1) = v15;
  *&v57 = v17;
  *(&v57 + 1) = v18;
  *&v58 = v19;
  *(&v58 + 1) = v20;
  v59 = 0;
  LOBYTE(v50[16]) = 0;
  v50[14] = v57;
  v50[15] = v58;
  v50[10] = v53;
  v50[11] = v54;
  v50[12] = v55;
  v50[13] = v56;
  memcpy(v47, v50, 0x101uLL);
  v60[0] = v36;
  v60[1] = v35;
  v60[2] = v16;
  v60[3] = v37;
  v60[4] = v38;
  v60[5] = v14;
  v60[6] = 0;
  v60[7] = v15;
  v60[8] = v17;
  v60[9] = v18;
  v60[10] = v19;
  v60[11] = v20;
  v61 = 0;
  sub_1000077D8(v51, &v62, &qword_100AEE298);
  sub_1000077D8(&v53, &v62, &unk_100AEE2A0);
  sub_100007840(v60, &unk_100AEE2A0);
  *(&v63[5] + 1) = v64[5];
  *(&v63[6] + 1) = v64[6];
  *(&v63[7] + 1) = v64[7];
  v63[8] = *(&v64[7] + 15);
  *(&v63[1] + 1) = v64[1];
  *(&v63[2] + 1) = v64[2];
  *(&v63[3] + 1) = v64[3];
  *(&v63[4] + 1) = v64[4];
  v62 = v49;
  LOBYTE(v63[0]) = v48;
  *(v63 + 1) = v64[0];
  return sub_100007840(&v62, &qword_100AEE298);
}

uint64_t sub_100619EF0@<X0>(uint64_t a1@<X8>)
{
  sub_1007A0754();
  sub_100206ECC();
  v2 = sub_10079D5D4();
  v4 = v3;
  v6 = v5;
  sub_10079D4C4();
  v7 = sub_10079D5A4();
  v9 = v8;
  v11 = v10;

  sub_10020B430(v2, v4, v6 & 1);

  sub_10079DE34();
  v12 = sub_10079D564();
  v36 = v13;
  v37 = v12;
  v35 = v14;
  v38 = v15;

  sub_10020B430(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  sub_1007A0764();
  v16 = sub_10079D5D4();
  v18 = v17;
  v20 = v19;
  sub_10079D374();
  v21 = sub_10079D5A4();
  v23 = v22;
  v25 = v24;

  sub_10020B430(v16, v18, v20 & 1);

  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v26 = sub_10079D564();
  v28 = v27;
  LOBYTE(v16) = v29;
  v33 = v30;

  sub_10020B430(v21, v23, v25 & 1);

  v31 = swift_getKeyPath();
  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v38;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x4020000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = v26;
  *(a1 + 80) = v28;
  *(a1 + 88) = v16 & 1;
  *(a1 + 96) = v33;
  *(a1 + 104) = v31;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x3FF0000000000000;
  sub_1001F1894(v37, v36, v35 & 1);

  sub_1001F1894(v26, v28, v16 & 1);

  sub_10020B430(v26, v28, v16 & 1);

  sub_10020B430(v37, v36, v35 & 1);
}

uint64_t sub_10061A1E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AEE0B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_10079FF64();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ResultListResultView(0);
  sub_1000077D8(v1 + *(v10 + 20), v5, &qword_100AEE0B8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100007840(v5, &qword_100AEE0B8);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if (qword_100AD1958 != -1)
    {
      swift_once();
    }

    v12.super.isa = qword_100AEDEA0;
    if (qword_100AD1960 != -1)
    {
      v16 = qword_100AEDEA0;
      swift_once();
      v12.super.isa = v16;
    }

    v13.super.isa = qword_100AEDEA8;
    sub_10079FF34(v12, v13);
    sub_100796704();
    (*(v7 + 8))(v9, v6);
    v11 = 0;
  }

  v14 = sub_1007966F4();
  return (*(*(v14 - 8) + 56))(a1, v11, 1, v14);
}

void *sub_10061A45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 24));
  v6 = *v4;
  v5 = v4[1];

  v7 = sub_10079CB34();
  v13 = 0;
  sub_10061995C(__src);
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v15, __src, 0x101uLL);
  sub_1000077D8(__dst, &v10, &qword_100AEE280);
  sub_100007840(v15, &qword_100AEE280);
  memcpy(&v12[7], __dst, 0x101uLL);
  v8 = v13;
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  return memcpy((a2 + 33), v12, 0x108uLL);
}

uint64_t sub_10061A550()
{
  v1 = sub_1001F1160(&qword_100AEE2B0);
  __chkstk_darwin(v1);
  v3 = &v13[-v2];
  v4 = sub_1001F1160(&qword_100AEE2B8);
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  if (sub_1007A01E4())
  {
    sub_10079E474();
    sub_10079BE54();
    v7 = v14;
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v13[24] = 1;
    v13[16] = v15;
    v13[8] = v17;
    *v6 = 0;
    v6[8] = 1;
    *(v6 + 2) = v7;
    v6[24] = v8;
    *(v6 + 4) = v9;
    v6[40] = v10;
    *(v6 + 3) = v18;
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AD4988);
    sub_1001FA380();
    sub_100005920(&qword_100AEE2C8, &qword_100AEE2B0);
    return sub_10079CCA4();
  }

  else
  {
    *v3 = sub_10079C8F4();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v12 = sub_1001F1160(&qword_100AEE2C0);
    sub_10061A808(v0, &v3[*(v12 + 44)]);
    sub_1000077D8(v3, v6, &qword_100AEE2B0);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AD4988);
    sub_1001FA380();
    sub_100005920(&qword_100AEE2C8, &qword_100AEE2B0);
    sub_10079CCA4();
    return sub_100007840(v3, &qword_100AEE2B0);
  }
}

uint64_t sub_10061A808@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v32 = sub_1001F1160(&qword_100AEE2D0);
  __chkstk_darwin(v32);
  v4 = v29 - v3;
  v31 = sub_1001F1160(&qword_100AEE2D8);
  __chkstk_darwin(v31);
  v6 = v29 - v5;
  v7 = sub_1001F1160(&qword_100AEE2E0);
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v10 = sub_1001F1160(&qword_100AEE2E8);
  __chkstk_darwin(v10);
  v12 = v29 - v11;
  v13 = sub_1001F1160(&qword_100AEE2F0);
  __chkstk_darwin(v13);
  v15 = v29 - v14;
  v16 = sub_1001F1160(&qword_100AEE2F8);
  __chkstk_darwin(v16 - 8);
  v30 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v29 - v19;
  v21 = *a1;
  if ((v21 - 2) < 2)
  {
    *v4 = sub_10079CB24();
    *(v4 + 1) = 0x4010000000000000;
    v4[16] = 0;
    v22 = sub_1001F1160(&qword_100AEE300);
    sub_10061B074(a1, &v4[*(v22 + 44)]);
    sub_1000077D8(v4, v6, &qword_100AEE2D0);
    swift_storeEnumTagMultiPayload();
    sub_10061C438();
    sub_100005920(&qword_100AEE318, &qword_100AEE2D0);
    sub_10079CCA4();
    sub_100007840(v4, &qword_100AEE2D0);
LABEL_5:
    v24 = v30;
    sub_1000077D8(v20, v30, &qword_100AEE2F8);
    v25 = v33;
    *v33 = 0;
    *(v25 + 8) = 1;
    v26 = sub_1001F1160(&qword_100AEE320);
    sub_1000077D8(v24, v25 + *(v26 + 48), &qword_100AEE2F8);
    v27 = v25 + *(v26 + 64);
    *v27 = 0;
    v27[8] = 1;
    sub_100007840(v20, &qword_100AEE2F8);
    return sub_100007840(v24, &qword_100AEE2F8);
  }

  v29[1] = v10;
  if (v21 == 1)
  {
    *v15 = sub_10079C8F4();
    *(v15 + 1) = 0x4010000000000000;
    v15[16] = 0;
    v23 = sub_1001F1160(&qword_100AEE328);
    sub_10061ADA0(&v15[*(v23 + 44)]);
    sub_1000077D8(v15, v9, &qword_100AEE2F0);
    swift_storeEnumTagMultiPayload();
    sub_100005920(&qword_100AEE310, &qword_100AEE2F0);
    sub_10079CCA4();
    sub_1000077D8(v12, v6, &qword_100AEE2E8);
    swift_storeEnumTagMultiPayload();
    sub_10061C438();
    sub_100005920(&qword_100AEE318, &qword_100AEE2D0);
    sub_10079CCA4();
    sub_100007840(v12, &qword_100AEE2E8);
    sub_100007840(v15, &qword_100AEE2F0);
    goto LABEL_5;
  }

  result = sub_1007A38A4();
  __break(1u);
  return result;
}

uint64_t sub_10061ADA0@<X0>(_BYTE *a1@<X8>)
{
  v34 = a1;
  v36 = sub_1001F1160(&qword_100AEE330);
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v31[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v4 = &v31[-v3];
  sub_10079BDC4();
  if (qword_100AD18A0 != -1)
  {
    swift_once();
  }

  v37 = qword_100B23608;
  v38 = unk_100B23610;
  sub_100206ECC();

  v5 = sub_10079D5D4();
  v7 = v6;
  v9 = v8;
  sub_10079D354();
  v10 = sub_10079D5A4();
  v12 = v11;
  v14 = v13;

  sub_10020B430(v5, v7, v9 & 1);

  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v15 = sub_10079D564();
  v17 = v16;
  v32 = v18;
  v20 = v19;

  sub_10020B430(v10, v12, v14 & 1);

  v21 = v33;
  v22 = *(v33 + 16);
  v24 = v35;
  v23 = v36;
  v22(v35, v4, v36);
  v25 = v34;
  v22(v34, v24, v23);
  v26 = &v25[*(sub_1001F1160(&unk_100AEE338) + 48)];
  *v26 = v15;
  *(v26 + 1) = v17;
  v27 = v32;
  v28 = v32 & 1;
  v26[16] = v32 & 1;
  *(v26 + 3) = v20;
  sub_1001F1894(v15, v17, v27 & 1);
  v29 = *(v21 + 8);

  v29(v4, v23);
  sub_10020B430(v15, v17, v28);

  return (v29)(v24, v23);
}

uint64_t sub_10061B074@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v3 = sub_10079CDF4();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_1001F1160(&qword_100ADB860);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v50[-v5];
  v6 = sub_1001F1160(&qword_100AEE348);
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  __chkstk_darwin(v6);
  v54 = &v50[-v8];
  v9 = sub_1001F1160(&qword_100AEE350);
  __chkstk_darwin(v9 - 8);
  v62 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v59 = &v50[-v12];
  if (*(a1 + 16))
  {
    v13 = *(a1 + 8) > 1uLL;
  }

  else
  {
    v13 = *(a1 + 8);
  }

  v64 = sub_1005A32AC(v13);
  v65 = v14;
  sub_100206ECC();
  v15 = sub_10079D5D4();
  v17 = v16;
  v19 = v18;
  sub_10079D354();
  v20 = sub_10079D5A4();
  v22 = v21;
  v24 = v23;

  sub_10020B430(v15, v17, v19 & 1);

  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v25 = sub_10079D564();
  v27 = v26;
  LODWORD(v29) = v28;
  v31 = v30;

  sub_10020B430(v20, v22, v24 & 1);

  if (sub_1007A01E4())
  {

    v51 = v29;
    v29 = v52;
    sub_10079E054();
    v32 = v56;
    sub_10079CDE4();
    sub_100005920(&qword_100AEE360, &qword_100ADB860);
    sub_10061B918(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle);
    v34 = v54;
    v33 = v55;
    v35 = v58;
    sub_10079D6A4();
    (*(v57 + 8))(v32, v35);
    v36 = v29;
    LOBYTE(v29) = v51;
    (*(v53 + 8))(v36, v33);
    v37 = v60;
    v38 = &v34[*(v60 + 36)];
    v39 = *(sub_1001F1160(&unk_100ADB9A0) + 28);
    v40 = enum case for ControlSize.small(_:);
    v41 = sub_10079BC54();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    *v38 = swift_getKeyPath();
    v42 = v34;
    v43 = v59;
    sub_10020B3C8(v42, v59, &qword_100AEE348);
    v44 = 0;
    v45 = v37;
  }

  else
  {
    v44 = 1;
    v43 = v59;
    v45 = v60;
  }

  (*(v61 + 56))(v43, v44, 1, v45);
  v46 = v62;
  sub_1000077D8(v43, v62, &qword_100AEE350);
  v47 = v63;
  *v63 = v25;
  v47[1] = v27;
  *(v47 + 16) = v29 & 1;
  v47[3] = v31;
  v48 = sub_1001F1160(&qword_100AEE358);
  sub_1000077D8(v46, v47 + *(v48 + 48), &qword_100AEE350);
  sub_1001F1894(v25, v27, v29 & 1);

  sub_100007840(v43, &qword_100AEE350);
  sub_100007840(v46, &qword_100AEE350);
  sub_10020B430(v25, v27, v29 & 1);
}

uint64_t sub_10061B64C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD18A8 != -1)
  {
    swift_once();
  }

  sub_100206ECC();

  result = sub_10079D5D4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10061B72C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10061B744();
  }

  return result;
}

unint64_t sub_10061B758()
{
  result = qword_100AEE048;
  if (!qword_100AEE048)
  {
    sub_1001F1234(&qword_100AEE038);
    sub_10061B810();
    sub_100005920(&qword_100ADAAE8, &qword_100AEE070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE048);
  }

  return result;
}

unint64_t sub_10061B810()
{
  result = qword_100AEE050;
  if (!qword_100AEE050)
  {
    sub_1001F1234(&qword_100AEE058);
    sub_10061B918(&unk_100AEE060, type metadata accessor for ResultListResultView);
    sub_100005920(&qword_100AEDF80, &qword_100AEDF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE050);
  }

  return result;
}

uint64_t sub_10061B918(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10061B980()
{
  result = qword_100AEE088;
  if (!qword_100AEE088)
  {
    sub_1001F1234(&qword_100AEE080);
    sub_10061BA38();
    sub_100005920(&qword_100ADAAE8, &qword_100AEE070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE088);
  }

  return result;
}

unint64_t sub_10061BA38()
{
  result = qword_100AEE090;
  if (!qword_100AEE090)
  {
    sub_1001F1234(&qword_100AEE098);
    sub_10061BAF0();
    sub_100005920(&qword_100AEDF80, &qword_100AEDF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE090);
  }

  return result;
}

unint64_t sub_10061BAF0()
{
  result = qword_100AEE0A0;
  if (!qword_100AEE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE0A0);
  }

  return result;
}

uint64_t sub_10061BBC8()
{
  sub_1007A0774();
  sub_10000E3E8((v0 + 16), *(v0 + 40));
  return sub_1007A0B14();
}

uint64_t sub_10061BC4C()
{
  v1 = sub_1007A0774();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 120) & ~*(v2 + 80);
  sub_1000074E0(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10061BD28(double *a1)
{
  sub_1007A0774();

  return sub_100616318(a1, v1 + 16);
}

uint64_t sub_10061BDB4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[5];
  v4 = v1[6];
  sub_10000E3E8(v1 + 2, v3);
  return a1(v3, v4);
}

unint64_t sub_10061BE08()
{
  result = qword_100AEE0E0;
  if (!qword_100AEE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE0E0);
  }

  return result;
}

uint64_t sub_10061BEE4()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

BOOL sub_10061BF3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  sub_100750B9C(*(a1 + 16), *(a2 + 16));
  if (v5)
  {
    v6 = *(a2 + 32);
    if ((*(a1 + 32) & 1) == 0)
    {
      if (*(a1 + 24) != *(a2 + 24))
      {
        v6 = 1;
      }

      return (v6 & 1) == 0;
    }

    if (*(a2 + 32))
    {
      return 1;
    }
  }

  return 0;
}

void sub_10061C020()
{
  sub_1007A0774();
  if (v0 <= 0x3F)
  {
    sub_10061C300(319, qword_100AEE170, &type metadata accessor for SearchPassage, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100247D20();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10061C130()
{
  sub_10061C21C();
  if (v0 <= 0x3F)
  {
    sub_10061C26C();
    if (v1 <= 0x3F)
    {
      sub_100247D20();
      if (v2 <= 0x3F)
      {
        sub_10061C300(319, &qword_100ADB690, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10061C21C()
{
  if (!qword_100AEE220)
  {
    v0 = sub_10079E224();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEE220);
    }
  }
}

void sub_10061C26C()
{
  if (!qword_100AEE228)
  {
    sub_1007A1214();
    sub_10061B918(&qword_100AEFCF0, &type metadata accessor for SearchBarResponderState);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEE228);
    }
  }
}

void sub_10061C300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10061C438()
{
  result = qword_100AEE308;
  if (!qword_100AEE308)
  {
    sub_1001F1234(&qword_100AEE2E8);
    sub_100005920(&qword_100AEE310, &qword_100AEE2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE308);
  }

  return result;
}

uint64_t sub_10061C4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_1001F1894(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_10061C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_10020B430(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_10061C588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverSearchBar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061C5EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverSearchBar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061C650()
{
  type metadata accessor for PopoverSearchBar(0);

  return sub_10061806C();
}

uint64_t sub_10061C6D0()
{
  v1 = *(type metadata accessor for PopoverSearchBar(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1006180D0(v0 + v2, v3);
}

unint64_t sub_10061C764()
{
  result = qword_100AEE410;
  if (!qword_100AEE410)
  {
    sub_1001F1234(&qword_100AEE418);
    sub_1001FA380();
    sub_100005920(&qword_100AEE2C8, &qword_100AEE2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE410);
  }

  return result;
}

unint64_t sub_10061C81C()
{
  result = qword_100AEE428;
  if (!qword_100AEE428)
  {
    sub_1001F1234(&qword_100AEE388);
    sub_100005920(&qword_100AEE430, &qword_100AEE438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE428);
  }

  return result;
}

uint64_t sub_10061C8D8()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B236E8);
  sub_100008B98(v0, qword_100B236E8);
  return sub_10079ACD4();
}

id sub_10061C958()
{
  sub_1001F1160(&qword_100AE0A28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100813170;
  v1 = BFMCatalogRequestRelationshipAuthors;
  v2 = BFMCatalogRequestRelationshipGenres;
  *(v0 + 32) = BFMCatalogRequestRelationshipAuthors;
  *(v0 + 40) = v2;
  v3 = BFMCatalogRequestRelationshipMappedBooks;
  v4 = BFMCatalogRequestRelationshipMappedAudiobooks;
  *(v0 + 48) = BFMCatalogRequestRelationshipMappedBooks;
  *(v0 + 56) = v4;
  v5 = BFMCatalogRequestRelationshipBookSeries;
  v6 = BFMCatalogRequestRelationshipAudiobookSeries;
  v13 = BFMCatalogRequestRelationshipAudiobookSeries;
  *(v0 + 64) = BFMCatalogRequestRelationshipBookSeries;
  *(v0 + 72) = v6;
  qword_100B23700 = v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;

  return v13;
}

uint64_t sub_10061CA4C()
{
  sub_1001F1160(qword_100AEA1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = 0xD000000000000026;
  *(inited + 40) = 0x80000001008E1FB0;
  *(inited + 48) = sub_1007A2254();
  *(inited + 56) = v1;
  *(inited + 64) = 0xD00000000000001ALL;
  *(inited + 72) = 0x80000001008E1FE0;
  *(inited + 80) = sub_1007A2254();
  *(inited + 88) = v2;
  *(inited + 96) = 0xD000000000000023;
  *(inited + 104) = 0x80000001008E2000;
  *(inited + 112) = 0x6E49736569726573;
  *(inited + 120) = 0xEA00000000006F66;
  v3 = sub_1001ED994(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AE0920);
  result = swift_arrayDestroy();
  qword_100B23710 = v3;
  return result;
}

uint64_t sub_10061CB8C(uint64_t a1)
{
  v2[105] = v1;
  v2[99] = a1;
  v4 = sub_1007990E4();
  v2[111] = v4;
  v2[117] = *(v4 - 8);
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v5 = sub_10079A734();
  v2[120] = v5;
  v2[121] = *(v5 - 8);
  v2[122] = swift_task_alloc();
  v2[123] = sub_1001F1160(&qword_100AEE518);
  v2[124] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[125] = v6;
  *v6 = v2;
  v6[1] = sub_10061CD30;

  return sub_10061EA1C(a1);
}

uint64_t sub_10061CD30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1008) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10061CE9C, 0, 0);
  }
}

uint64_t sub_10061CE9C()
{
  v71 = v1;
  v69 = v1 + 93;
  v3 = v1[126];
  v63 = v1[123];
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v62 = v1[121];
  v61 = enum case for Book.MediaType.ebook(_:);
  v58 = enum case for Book.MediaType.audiobook(_:);
  v64 = v1[126];

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  v68 = v1;
  v59 = v8;
  v60 = v4;
  while (1)
  {
    v1[128] = v11;
    v1[127] = v10;
    if (!v7)
    {
      break;
    }

    v66 = v11;
    v67 = v10;
LABEL_12:
    v15 = v68[124];
    v16 = v68[122];
    v17 = v68[120];
    v18 = __clz(__rbit64(v7)) | (v9 << 6);
    v19 = *(*(v64 + 48) + 8 * v18);
    v20 = *(v63 + 48);
    v21 = *(v62 + 16);
    v21(&v15[v20], *(v64 + 56) + *(v62 + 72) * v18, v17);
    v65 = v19;
    *v15 = v19;
    v21(v16, &v15[v20], v17);
    v22 = (*(v62 + 88))(v16, v17);
    if (v22 == v61)
    {
      v11 = v66;
      v10 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10066C34C(0, *(v66 + 2) + 1, 1, v66);
      }

      v1 = v68;
      v8 = v59;
      v4 = v60;
      v2 = v65;
      v0 = *(v11 + 2);
      v23 = *(v11 + 3);
      v24 = v0 + 1;
      if (v0 < v23 >> 1)
      {
        v12 = v11;
      }

      else
      {
        v12 = sub_10066C34C((v23 > 1), v0 + 1, 1, v11);
        v11 = v12;
      }
    }

    else
    {
      v11 = v66;
      v10 = v67;
      if (v22 != v58)
      {
        return sub_1007A38A4();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10066C34C(0, *(v67 + 2) + 1, 1, v67);
      }

      v1 = v68;
      v8 = v59;
      v4 = v60;
      v2 = v65;
      v0 = *(v10 + 2);
      v25 = *(v10 + 3);
      v24 = v0 + 1;
      if (v0 >= v25 >> 1)
      {
        v12 = sub_10066C34C((v25 > 1), v0 + 1, 1, v10);
        v10 = v12;
      }

      else
      {
        v12 = v10;
      }
    }

    v7 &= v7 - 1;
    v13 = v1[124];
    *(v12 + 2) = v24;
    *&v12[8 * v0 + 32] = v2;
    sub_100007840(v13, &qword_100AEE518);
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v66 = v11;
      v67 = v10;
      v9 = v14;
      goto LABEL_12;
    }
  }

  v27 = sub_10040E40C(v26);

  v29 = sub_10040E40C(v28);
  v0 = v11;

  v31 = sub_10040E40C(v30);

  v32 = sub_10061F0F4(v31, v29);
  v2 = v32;
  if (*(v32 + 16) <= *(v27 + 2) >> 3)
  {
    goto LABEL_27;
  }

  v33 = sub_100625BDC(v32, v27);

  v27 = *(v33 + 2);
  if (v27)
  {
    while (1)
    {
      v2 = sub_1005D6748(v27, 0);
      v34 = sub_1005D73B0(&v70, v2 + 4, v27, v33);
      sub_10004DC54();
      if (v34 == v27)
      {
        break;
      }

      __break(1u);
LABEL_27:
      v70 = v27;
      sub_100625560(v2);

      v33 = v70;
      v27 = *(v70 + 2);
      if (!v27)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:

    v2 = _swiftEmptyArrayStorage;
  }

  v35 = *(v0 + 16);
  v36 = *(v10 + 2);
  v9 = v35 + v36;
  if (__OFADD__(v35, v36))
  {
    goto LABEL_53;
  }

  if (qword_100AD1968 == -1)
  {
    goto LABEL_31;
  }

LABEL_54:
  swift_once();
LABEL_31:
  v37 = sub_10079ACE4();
  v1[129] = sub_100008B98(v37, qword_100B236E8);

  v38 = sub_10079ACC4();
  v39 = sub_1007A29D4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    *(v40 + 4) = v2[2];

    *(v40 + 12) = 2048;
    *(v40 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v38, v39, "fetchMetadata(untyped): routing: untyped: %ld typed: %ld", v40, 0x16u);
  }

  else
  {
  }

  v41 = v1[105];
  v42 = swift_allocObject();
  v1[130] = v42;
  v42[2] = v9;
  v42[3] = v41;
  v42[4] = v0;
  v42[5] = v10;

  sub_1001F1160(&qword_100AEE520);
  swift_asyncLet_begin();
  v43 = v2[2];
  if (v43)
  {
    v44 = _swiftEmptyArrayStorage;
    v45 = 4;
    v46 = v2;
    do
    {
      *v69 = v2[v45];
      v47 = sub_1007A3A74();
      v49 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_10000B3D8(0, *(v44 + 2) + 1, 1, v44);
      }

      v51 = *(v44 + 2);
      v50 = *(v44 + 3);
      if (v51 >= v50 >> 1)
      {
        v44 = sub_10000B3D8((v50 > 1), v51 + 1, 1, v44);
      }

      v1[137] = v44;
      *(v44 + 2) = v51 + 1;
      v52 = &v44[16 * v51];
      *(v52 + 4) = v47;
      *(v52 + 5) = v49;
      ++v45;
      --v43;
      v2 = v46;
    }

    while (v43);

    v1[131] = OBJC_IVAR____TtC5Books23MediaAPIMetadataService_catalogService;
    if (qword_100AD1970 != -1)
    {
      swift_once();
    }

    v53 = qword_100B23700;
    v1[132] = qword_100B23700;
    if (qword_100AD1980 != -1)
    {
      swift_once();
    }

    v54 = qword_100B23710;
    v1[133] = qword_100B23710;
    sub_1007990F4();
    v55 = swift_task_alloc();
    v1[134] = v55;
    *v55 = v1;
    v55[1] = sub_10061D6E8;
    v56 = v1[119];

    return MCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)(v44, v53, 0, v54, 150, v56);
  }

  else
  {

    v1[147] = _swiftEmptyDictionarySingleton;

    return _swift_asyncLet_get_throwing(v1 + 2, v1 + 87, sub_10061E4D4, v1 + 100);
  }
}

uint64_t sub_10061D6E8(uint64_t a1)
{
  v3 = *v2;
  v3[135] = a1;
  v3[136] = v1;

  if (v1)
  {
    (*(v3[117] + 8))(v3[119], v3[111]);

    v4 = sub_10061E72C;
  }

  else
  {
    v5 = v3[119];
    v6 = v3[117];
    v7 = v3[111];
    v8 = *(v6 + 8);
    v3[138] = v8;
    v3[139] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v7);
    v4 = sub_10061D854;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10061D854()
{
  v43 = v0;
  v1 = v0[135];
  v2 = v1[2];
  v3 = *(v0[137] + 16);
  v0[140] = v3;
  if (v2 == v3)
  {
    v4 = v0[136];

    v5 = sub_10079ACC4();
    v6 = sub_1007A29D4();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[137];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 134218496;
      v10 = *(v8 + 16);
      *(v9 + 4) = v10;
      *(v9 + 12) = 2048;
      *(v9 + 14) = v1[2];
      *(v9 + 22) = 2048;
      *(v9 + 24) = v10;

      _os_log_impl(&_mh_execute_header, v5, v6, "fetchMetadata(untyped): requested: %ld fetched: %ld of %ld", v9, 0x20u);

      goto LABEL_9;
    }

LABEL_8:

LABEL_9:

    if (v1[2] != v0[140])
    {
      v16 = sub_10040E374(v0[137]);

      v18 = sub_10040F850(v17);
      if (*(v18 + 16) <= v16[2] >> 3)
      {
        v42 = v16;
        sub_100625434(v18);
      }

      else
      {
        sub_10062566C(v18, v16);
      }

      v31 = sub_10079ACC4();
      v32 = sub_1007A29B4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v42 = v34;
        *v33 = 136315138;
        v35 = sub_1007A2844();
        v37 = v36;

        v38 = sub_1000070F4(v35, v37, &v42);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "fetchMetadata(untyped): Failed to get some metadata. missingIDs: %s", v33, 0xCu);
        sub_1000074E0(v34);

        goto LABEL_29;
      }
    }

LABEL_29:

    sub_100626E00(v39);
    v41 = v40;
    v0[146] = v4;
    swift_bridgeObjectRelease_n();
    if (v4)
    {

      return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_10061E408, v0 + 94);
    }

    else
    {
      v0[147] = v41;

      return _swift_asyncLet_get_throwing(v0 + 2, v0 + 87, sub_10061E4D4, v0 + 100);
    }
  }

  v12 = sub_10040E374(v11);

  v14 = sub_10040F850(v13);
  if (*(v14 + 16) > v12[2] >> 3)
  {
    v15 = sub_10062566C(v14, v12);

    v5 = *(v15 + 2);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_13:

    v1 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v42 = v12;
  sub_100625434(v14);

  v15 = v12;
  v5 = v12[2];
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_6:
  v1 = sub_1005D6574(v5, 0);
  v4 = sub_1005D6C1C(&v42, v1 + 4, v5, v15);
  sub_10004DC54();
  if (v4 != v5)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_14:
  v0[141] = v1;

  v19 = sub_10079ACC4();
  v20 = sub_1007A29D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v1[2];

    _os_log_impl(&_mh_execute_header, v19, v20, "fetchMetadata(untyped): retrying: %ld", v21, 0xCu);
  }

  else
  {
  }

  v22 = v0[136];
  v23 = v0[133];

  v24 = sub_1001ED994(&off_100A0D5A0);
  sub_100007840(&unk_100A0D5C0, &unk_100AE0920);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v23;
  sub_100627B0C(v24, sub_100626CAC, 0, isUniquelyReferenced_nonNull_native, &v42);

  v26 = v42;
  v0[142] = v42;
  if (v22)
  {
  }

  else
  {
    v28 = v0[132];
    sub_1007990F4();
    v29 = swift_task_alloc();
    v0[143] = v29;
    *v29 = v0;
    v29[1] = sub_10061DE94;
    v30 = v0[118];

    return MCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)(v1, v28, 0, v26, 150, v30);
  }
}

uint64_t sub_10061DE94(uint64_t a1)
{
  v4 = *v2;
  v4[144] = v1;

  v5 = v4[138];
  if (v1)
  {
    v5(v4[118], v4[111]);

    v6 = sub_10061E818;
  }

  else
  {
    v7 = v4[118];
    v8 = v4[111];
    v4[145] = a1;
    v5(v7, v8);

    v6 = sub_10061E05C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10061E05C()
{
  v28 = v0;
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[135];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = v3;
  sub_100627E64(v1, sub_1006282EC, 0, isUniquelyReferenced_nonNull_native, v27, sub_1003D6DE0, sub_1002F2A68);

  v5 = v27[0];

  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[137];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134218496;
    v11 = *(v9 + 16);
    *(v10 + 4) = v11;
    *(v10 + 12) = 2048;
    *(v10 + 14) = *(v5 + 16);
    *(v10 + 22) = 2048;
    *(v10 + 24) = v11;

    _os_log_impl(&_mh_execute_header, v6, v7, "fetchMetadata(untyped): requested: %ld fetched: %ld of %ld", v10, 0x20u);
  }

  else
  {
  }

  if (*(v5 + 16) != v0[140])
  {
    v12 = sub_10040E374(v0[137]);

    v14 = sub_10040F850(v13);
    if (*(v14 + 16) <= v12[2] >> 3)
    {
      v27[0] = v12;
      sub_100625434(v14);
    }

    else
    {
      sub_10062566C(v14, v12);
    }

    v15 = sub_10079ACC4();
    v16 = sub_1007A29B4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136315138;
      v19 = sub_1007A2844();
      v21 = v20;

      v22 = sub_1000070F4(v19, v21, v27);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "fetchMetadata(untyped): Failed to get some metadata. missingIDs: %s", v17, 0xCu);
      sub_1000074E0(v18);

      goto LABEL_12;
    }
  }

LABEL_12:

  sub_100626E00(v23);
  v25 = v24;
  v0[146] = v2;
  swift_bridgeObjectRelease_n();
  if (v2)
  {

    return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_10061E408, v0 + 94);
  }

  else
  {
    v0[147] = v25;

    return _swift_asyncLet_get_throwing(v0 + 2, v0 + 87, sub_10061E4D4, v0 + 100);
  }
}

uint64_t sub_10061E424()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061E4D4()
{
  *(v1 + 1184) = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 16, v1 + 696, sub_10061E950, v1 + 848);
  }

  else
  {

    return _swift_task_switch(sub_10061E580, 0, 0);
  }
}

uint64_t sub_10061E580()
{
  v7 = v0;
  v1 = v0[87];
  if (v1)
  {
    v2 = v0[147];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v2;
    sub_1006275C8(v1, sub_10062683C, 0, isUniquelyReferenced_nonNull_native, &v6);

    v4 = v6;
  }

  else
  {
    v4 = v0[147];
  }

  v0[149] = v4;

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_10061E650, v0 + 112);
}

uint64_t sub_10061E66C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1192);

  return v1(v2);
}

uint64_t sub_10061E768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061E818()
{

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_10061E884, v0 + 704);
}

uint64_t sub_10061E8A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061E96C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061EA1C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1007A2744();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10061EADC, 0, 0);
}

uint64_t sub_10061EADC()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1003BD0CC(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      v0[2] = v5;
      v6 = sub_1007A3A74();
      v16 = v3;
      v9 = v3[2];
      v8 = v3[3];
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_1003BD0CC((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v3 = v16;
      }

      v3[2] = v9 + 1;
      v10 = &v3[2 * v9];
      v10[4] = v6;
      v10[5] = v7;
      --v2;
    }

    while (v2);
  }

  v0[9] = v3;
  sub_1007A2704();
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_10061EC7C;
  v14 = v0[8];

  return sub_100367BF8(v14);
}

uint64_t sub_10061EC7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    (*(v4[7] + 8))(v4[8], v4[6]);

    v5 = sub_10061F090;
  }

  else
  {
    v7 = v4[7];
    v6 = v4[8];
    v8 = v4[6];
    v4[12] = a1;
    (*(v7 + 8))(v6, v8);
    v5 = sub_10061EDD8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10061EDD8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = sub_1001F1160(&qword_100AEE580);
  *v4 = v0;
  v4[1] = sub_10061EEE4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD000000000000014, 0x80000001008E2030, sub_100627DD4, v3, v5);
}

uint64_t sub_10061EEE4()
{

  return _swift_task_switch(sub_10061F018, 0, 0);
}

uint64_t sub_10061F018()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10061F090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061F0F4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1006E6F30(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10061F1D4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1006E6140(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10061F2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10061F300, 0, 0);
}

uint64_t sub_10061F300()
{
  if (*(v0 + 24) < 1)
  {
    **(v0 + 16) = 0;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_10061F3E0;
    v3 = *(v0 + 40);
    v2 = *(v0 + 48);

    return sub_10061F550(v3, v2);
  }
}

uint64_t sub_10061F3E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return _swift_task_switch(sub_10061F52C, 0, 0);
  }
}

uint64_t sub_10061F550(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1007990E4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10061F620, 0, 0);
}

uint64_t sub_10061F620()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v0[11] = v2;
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v3++;
      v0[2] = v5;
      v6 = sub_1007A3A74();
      v8 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10000B3D8(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_10000B3D8((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v8;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v0[12] = v4;
  v12 = v0[5];
  v13 = *(v12 + 16);
  v0[13] = v13;
  if (v13)
  {
    v14 = (v12 + 32);
    v15 = _swiftEmptyArrayStorage;
    do
    {
      v16 = *v14++;
      v0[3] = v16;
      v17 = sub_1007A3A74();
      v19 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_10000B3D8(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = sub_10000B3D8((v20 > 1), v21 + 1, 1, v15);
      }

      *(v15 + 2) = v21 + 1;
      v22 = &v15[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      --v13;
    }

    while (v13);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v23 = OBJC_IVAR____TtC5Books23MediaAPIMetadataService_catalogService;
  v0[14] = v15;
  v0[15] = v23;
  v24 = qword_100AD1970;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_100B23700;
  v0[16] = qword_100B23700;
  if (qword_100AD1980 != -1)
  {
    swift_once();
  }

  v26 = qword_100B23710;
  v0[17] = qword_100B23710;
  sub_1007990F4();
  v27 = swift_task_alloc();
  v0[18] = v27;
  *v27 = v0;
  v27[1] = sub_10061F93C;
  v28 = v0[10];

  return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v4, v15, v25, 0, v26, 150, v28);
}

uint64_t sub_10061F93C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  v5 = v3[10];
  v6 = v3[8];
  v7 = v3[7];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v11 = sub_100620BE0;
  }

  else
  {
    v4[21] = v9;
    v4[22] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);

    v11 = sub_10061FB1C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10061FB1C()
{
  v72 = v2;
  v4 = *(v2[12] + 16);
  v5 = *(v2[14] + 16);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
LABEL_52:
    swift_once();
LABEL_4:
    v8 = sub_10079ACE4();
    v3 = sub_100008B98(v8, qword_100B236E8);

    v9 = sub_10079ACC4();
    v10 = sub_1007A29D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v2[13];
      v12 = v2[11];
      v13 = swift_slowAlloc();
      *v13 = 134218752;
      *(v13 + 4) = v12;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v11;
      *(v13 + 22) = 2048;
      *(v13 + 24) = v0[2];
      *(v13 + 32) = 2048;
      if (__OFADD__(v12, v11))
      {
        __break(1u);
        return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v13, v14, v15, v16, v17, v18, v19);
      }

      *(v13 + 34) = v12 + v11;
      v20 = v13;

      _os_log_impl(&_mh_execute_header, v9, v10, "fetchMetadata(typed): requested books: %ld audiobooks: %ld fetched: %ld of %ld", v20, 0x2Au);

      goto LABEL_12;
    }

LABEL_11:

LABEL_12:

    v25 = v2[13];
    v26 = v2[11];
    v6 = __OFADD__(v26, v25);
    v27 = v26 + v25;
    if (!v6)
    {
      if (v0[2] == v27)
      {
      }

      else
      {
        v44 = sub_10040E374(v2[12]);

        v46 = sub_10040F850(v45);
        if (*(v46 + 16) <= v44[2] >> 3)
        {
          v71 = v44;
          sub_100625434(v46);
        }

        else
        {
          sub_10062566C(v46, v44);
        }

        v49 = sub_10040E374(v2[14]);

        v51 = sub_10040F850(v50);
        if (*(v51 + 16) <= v49[2] >> 3)
        {
          v71 = v49;
          sub_100625434(v51);
        }

        else
        {
          sub_10062566C(v51, v49);
        }

        v52 = sub_10079ACC4();
        v53 = sub_1007A29B4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v70 = v1;
          v71 = swift_slowAlloc();
          *v54 = 136315394;
          v55 = sub_1007A2844();
          v57 = v56;

          v58 = sub_1000070F4(v55, v57, &v71);

          *(v54 + 4) = v58;
          *(v54 + 12) = 2080;
          v59 = sub_1007A2844();
          v61 = v60;

          v62 = sub_1000070F4(v59, v61, &v71);

          *(v54 + 14) = v62;
          _os_log_impl(&_mh_execute_header, v52, v53, "fetchMetadata(typed): Failed to get genre info. missingBookIDs: %s missingAudiobookIDs: %s", v54, 0x16u);
          swift_arrayDestroy();
          v1 = v70;

          goto LABEL_44;
        }
      }

LABEL_44:

      sub_1005822BC(v63);
      v65 = v64;

      sub_100626E00(v65);
      if (v1)
      {

        v67 = v2[1];

        return v67();
      }

      else
      {
        v68 = v66;

        v69 = v2[1];

        return v69(v68);
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  v0 = v2[19];
  if (v0[2] == v7)
  {
    v1 = v2[20];
    if (qword_100AD1968 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_52;
  }

  v22 = sub_10040E374(v21);

  v24 = sub_10040F850(v23);
  if (*(v24 + 16) > v22[2] >> 3)
  {
    v22 = sub_10062566C(v24, v22);

    v9 = v22[2];
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_16:

    v0 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v71 = v22;
  sub_100625434(v24);

  v9 = v22[2];
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_9:
  v0 = sub_1005D6574(v9, 0);
  v1 = sub_1005D6C1C(&v71, v0 + 4, v9, v22);
  sub_10004DC54();
  if (v1 != v9)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  v2[23] = v0;

  v29 = sub_10040E374(v28);

  v31 = sub_10040F850(v30);
  if (*(v31 + 16) <= v29[2] >> 3)
  {
    goto LABEL_21;
  }

  v32 = sub_10062566C(v31, v29);

  v29 = *(v32 + 2);
  if (v29)
  {
    while (1)
    {
      v3 = sub_1005D6574(v29, 0);
      v33 = sub_1005D6C1C(&v71, v3 + 4, v29, v32);
      v31 = sub_10004DC54();
      if (v33 == v29)
      {
        break;
      }

      __break(1u);
LABEL_21:
      v71 = v29;
      sub_100625434(v31);

      v32 = v71;
      v29 = v71[2];
      if (!v29)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:

    v3 = _swiftEmptyArrayStorage;
  }

  v2[24] = v3;
  if (qword_100AD1968 != -1)
  {
LABEL_54:
    swift_once();
  }

  v34 = sub_10079ACE4();
  sub_100008B98(v34, qword_100B236E8);

  v35 = sub_10079ACC4();
  v36 = sub_1007A29D4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134218240;
    *(v37 + 4) = v0[2];

    *(v37 + 12) = 2048;
    *(v37 + 14) = v3[2];

    _os_log_impl(&_mh_execute_header, v35, v36, "fetchMetadata(typed): retrying: books: %ld audiobooks: %ld", v37, 0x16u);
  }

  else
  {
  }

  v38 = v2[20];
  v39 = v2[17];

  v40 = sub_1001ED994(&off_100A0D5E0);
  sub_100007840(&unk_100A0D600, &unk_100AE0920);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v39;
  sub_100627B0C(v40, sub_100626CAC, 0, isUniquelyReferenced_nonNull_native, &v71);

  v42 = v71;
  v2[25] = v71;
  if (!v38)
  {
    v47 = v2[16];
    sub_1007990F4();
    v48 = swift_task_alloc();
    v2[26] = v48;
    *v48 = v2;
    v48[1] = sub_100620478;
    v19 = v2[9];
    v13 = v0;
    v14 = v3;
    v15 = v47;
    v16 = 0;
    v17 = v42;
    v18 = 150;

    return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_100620478(uint64_t a1)
{
  v4 = *v2;
  v4[27] = v1;

  v5 = v4[21];
  if (v1)
  {
    v5(v4[9], v4[7]);

    v6 = sub_100620C4C;
  }

  else
  {
    v7 = v4[9];
    v8 = v4[7];
    v4[28] = a1;
    v5(v7, v8);

    v6 = sub_100620670;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_100620670()
{
  v43 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[19];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = v3;
  sub_100627E64(v1, sub_1006282EC, 0, isUniquelyReferenced_nonNull_native, v42, sub_1003D6DF4, sub_1002F2A7C);

  v5 = v42[0];
  if (qword_100AD1968 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100B236E8);

  v7 = sub_10079ACC4();
  v8 = sub_1007A29D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[13];
    v10 = v0[11];
    v11 = swift_slowAlloc();
    *v11 = 134218752;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v9;
    *(v11 + 22) = 2048;
    *(v11 + 24) = *(v5 + 16);
    *(v11 + 32) = 2048;
    if (__OFADD__(v10, v9))
    {
LABEL_28:
      __break(1u);
      return;
    }

    *(v11 + 34) = v10 + v9;
    v12 = v11;

    _os_log_impl(&_mh_execute_header, v7, v8, "fetchMetadata(typed): requested books: %ld audiobooks: %ld fetched: %ld of %ld", v12, 0x2Au);
  }

  else
  {
  }

  v13 = v0[13];
  v14 = v0[11];
  v15 = __OFADD__(v14, v13);
  v16 = v14 + v13;
  if (v15)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (*(v5 + 16) == v16)
  {
  }

  else
  {
    v17 = sub_10040E374(v0[12]);

    v19 = sub_10040F850(v18);
    if (*(v19 + 16) <= v17[2] >> 3)
    {
      v42[0] = v17;
      sub_100625434(v19);
    }

    else
    {
      sub_10062566C(v19, v17);
    }

    v20 = sub_10040E374(v0[14]);

    v22 = sub_10040F850(v21);
    if (*(v22 + 16) <= v20[2] >> 3)
    {
      v42[0] = v20;
      sub_100625434(v22);
    }

    else
    {
      sub_10062566C(v22, v20);
    }

    v23 = sub_10079ACC4();
    v24 = sub_1007A29B4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v41 = v2;
      v42[0] = swift_slowAlloc();
      *v25 = 136315394;
      v26 = sub_1007A2844();
      v28 = v27;

      v29 = sub_1000070F4(v26, v28, v42);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = sub_1007A2844();
      v32 = v31;

      v33 = sub_1000070F4(v30, v32, v42);

      *(v25 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "fetchMetadata(typed): Failed to get genre info. missingBookIDs: %s missingAudiobookIDs: %s", v25, 0x16u);
      swift_arrayDestroy();
      v2 = v41;

      goto LABEL_20;
    }
  }

LABEL_20:

  sub_1005822BC(v34);
  v36 = v35;

  sub_100626E00(v36);
  if (v2)
  {

    v38 = v0[1];

    v38();
  }

  else
  {
    v39 = v37;

    v40 = v0[1];

    v40(v39);
  }
}

uint64_t sub_100620BE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100620C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100620CC0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1007990E4();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100620D80, 0, 0);
}

uint64_t sub_100620D80()
{
  v34 = v1;
  v2 = v1[9];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v1[9] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v32 = v1[9];

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      do
      {
LABEL_8:
        v1[7] = *(*(v32 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
        v13 = sub_1007A3A74();
        v15 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10000B3D8(0, *(v11 + 2) + 1, 1, v11);
        }

        v0 = *(v11 + 2);
        v16 = *(v11 + 3);
        if (v0 >= v16 >> 1)
        {
          v11 = sub_10000B3D8((v16 > 1), v0 + 1, 1, v11);
        }

        v8 &= v8 - 1;
        *(v11 + 2) = v0 + 1;
        v17 = &v11[16 * v0];
        *(v17 + 4) = v13;
        *(v17 + 5) = v15;
      }

      while (v8);
    }
  }

  v18 = sub_10040E374(v11);

  v1[14] = OBJC_IVAR____TtC5Books23MediaAPIMetadataService_catalogService;
  v19 = *(v18 + 16);
  if (v19)
  {
    v1[15] = _swiftEmptyDictionarySingleton;
    v0 = sub_1005D6574(v19, 0);
    v1[16] = v0;
    v20 = sub_1005D6C1C(v1 + 2, (v0 + 32), v19, v18);
    sub_10004DC54();
    if (v20 == v19)
    {
      if (qword_100AD1978 == -1)
      {
LABEL_17:
        v21 = qword_100B23708;
        if (qword_100AD1988 != -1)
        {
          swift_once();
        }

        v22 = qword_100B23718;
        sub_1007990F4();
        v23 = swift_task_alloc();
        v1[17] = v23;
        *v23 = v1;
        v23[1] = sub_10062125C;
        v24 = v1[13];

        return MCatalogService.fetch(genreIDs:relationships:views:additionalParameters:batchSize:metadata:)(v0, v21, 0, v22, 150, v24);
      }

LABEL_31:
      swift_once();
      goto LABEL_17;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = _swiftEmptyDictionarySingleton[2];
  if (!v25)
  {
    goto LABEL_25;
  }

  v26 = sub_1005D889C(_swiftEmptyDictionarySingleton[2], 0);
  v27 = sub_1005D8870(&v33, v26 + 4, v25, _swiftEmptyDictionarySingleton);

  sub_10004DC54();
  if (v27 != v25)
  {
    __break(1u);
LABEL_25:
    v26 = _swiftEmptyArrayStorage;
  }

  v28 = sub_1006219CC(v26);

  v1[8] = v28;
  sub_1001F1160(&qword_100AEE590);
  sub_100628114();
  v29 = sub_1007A24E4();

  v30 = v1[1];

  return v30(v29);
}

uint64_t sub_10062125C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  (*(v3[12] + 8))(v3[13], v3[11]);

  if (v1)
  {
    v5 = sub_100621960;
  }

  else
  {
    v5 = sub_1006213E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006213E8()
{
  v41 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v3;
  sub_100627E64(v2, sub_1006282EC, 0, isUniquelyReferenced_nonNull_native, &v40, sub_1003D6E08, sub_1002F2A90);
  v37 = v1;

  v39 = v40;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 64);
  v8 = (63 - v6) >> 6;

  v9 = 0;
  v38 = _swiftEmptyArrayStorage;
  if (v7)
  {
    while (1)
    {
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v2 + 56) + ((v9 << 9) | (8 * v11)));
      v13 = sub_100799454();
      if (!v14)
      {
        goto LABEL_6;
      }

      v15 = v13;
      v16 = v14;
      if (*(v39 + 16) && (sub_10000E53C(v13, v14), (v17 & 1) != 0))
      {

LABEL_6:

        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_10000B3D8(0, *(v38 + 2) + 1, 1, v38);
        }

        v19 = *(v38 + 2);
        v18 = *(v38 + 3);
        if (v19 >= v18 >> 1)
        {
          v38 = sub_10000B3D8((v18 > 1), v19 + 1, 1, v38);
        }

        *(v38 + 2) = v19 + 1;
        v20 = &v38[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v16;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v2 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  v21 = sub_10040E374(v38);

  v22 = *(v21 + 16);
  if (v22)
  {
    v0[15] = v39;
    v7 = sub_1005D6574(v22, 0);
    v0[16] = v7;
    v23 = sub_1005D6C1C(v0 + 2, (v7 + 32), v22, v21);
    sub_10004DC54();
    if (v23 == v22)
    {
      if (qword_100AD1978 == -1)
      {
LABEL_23:
        v24 = qword_100B23708;
        if (qword_100AD1988 != -1)
        {
          swift_once();
        }

        v25 = qword_100B23718;
        sub_1007990F4();
        v26 = swift_task_alloc();
        v0[17] = v26;
        *v26 = v0;
        v26[1] = sub_10062125C;
        v27 = v0[13];

        return MCatalogService.fetch(genreIDs:relationships:views:additionalParameters:batchSize:metadata:)(v7, v24, 0, v25, 150, v27);
      }

LABEL_41:
      swift_once();
      goto LABEL_23;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v28 = *(v39 + 16);
  if (v28)
  {
    v29 = sub_1005D889C(*(v39 + 16), 0);
    v30 = sub_1005D8870(&v40, v29 + 4, v28, v39);

    sub_10004DC54();
    if (v30 == v28)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_32:
  v31 = sub_1006219CC(v29);
  if (v37)
  {

    v32 = v0[1];

    return v32();
  }

  else
  {
    v33 = v31;

    v0[8] = v33;
    sub_1001F1160(&qword_100AEE590);
    sub_100628114();
    v34 = sub_1007A24E4();

    v35 = v0[1];

    return v35(v34);
  }
}

uint64_t sub_100621960()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1006219CC(unint64_t a1)
{
  v3 = v1;
  v110 = sub_10079A624();
  v106 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v105 = &v101 - v7;
  __chkstk_darwin(v8);
  v104 = &v101 - v9;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_106:
    v11 = sub_1007A38D4();
    v102 = v3;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_107:
    v13 = _swiftEmptyDictionarySingleton;
LABEL_108:
    v60 = v13 + 8;
    v61 = 1 << *(v13 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & v13[8];
    v64 = (v61 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v65 = 0;
    v66 = _swiftEmptyArrayStorage;
    if (v63)
    {
      goto LABEL_115;
    }

    while (1)
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
        goto LABEL_154;
      }

      if (v67 >= v64)
      {
        break;
      }

      v63 = v60[v67];
      ++v65;
      if (v63)
      {
        v65 = v67;
        do
        {
LABEL_115:
          v68 = *(v13[7] + ((v65 << 9) | (8 * __clz(__rbit64(v63)))));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_10066C34C(0, *(v66 + 2) + 1, 1, v66);
          }

          v70 = *(v66 + 2);
          v69 = *(v66 + 3);
          if (v70 >= v69 >> 1)
          {
            v66 = sub_10066C34C((v69 > 1), v70 + 1, 1, v66);
          }

          v63 &= v63 - 1;
          *(v66 + 2) = v70 + 1;
          *&v66[8 * v70 + 32] = v68;
        }

        while (v63);
      }
    }

    v71 = sub_10040E40C(v66);

    v72 = 1 << *(v13 + 32);
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    else
    {
      v73 = -1;
    }

    v74 = v73 & v13[8];
    v75 = (v72 + 63) >> 6;
    v76 = v71 + 56;
    v108 = (v106 + 32);

    v77 = 0;
    v111 = _swiftEmptyArrayStorage;
    v112 = v13;
    v107 = v75;
    v103 = v71;
    if (!v74)
    {
      goto LABEL_126;
    }

    do
    {
      while (1)
      {
        v78 = v77;
LABEL_129:
        v79 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v80 = *(v13[6] + ((v78 << 9) | (8 * v79)));
        if (!*(v71 + 16))
        {
          break;
        }

        v81 = sub_1007A3BF4();
        v82 = -1 << *(v71 + 32);
        v83 = v81 & ~v82;
        if (((*(v76 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
        {
          break;
        }

        v84 = ~v82;
        while (*(*(v71 + 48) + 8 * v83) != v80)
        {
          v83 = (v83 + 1) & v84;
          if (((*(v76 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
          {
            goto LABEL_134;
          }
        }

        v77 = v78;
        v75 = v107;
        if (!v74)
        {
          goto LABEL_126;
        }
      }

LABEL_134:
      if (v13[2])
      {
        v85 = _swiftEmptyArrayStorage;
        v86 = v80;
        do
        {
          v87 = sub_1002F9CDC(v86);
          if ((v88 & 1) == 0)
          {
            break;
          }

          v86 = *(v13[7] + 8 * v87);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_10066C34C(0, *(v85 + 2) + 1, 1, v85);
          }

          v90 = *(v85 + 2);
          v89 = *(v85 + 3);
          if (v90 >= v89 >> 1)
          {
            v85 = sub_10066C34C((v89 > 1), v90 + 1, 1, v85);
          }

          *(v85 + 2) = v90 + 1;
          *&v85[8 * v90 + 32] = v86;
          v13 = v112;
        }

        while (*(v112 + 16));
      }

      v91 = v105;
      sub_10079A604();
      v92 = *v108;
      v93 = v104;
      v94 = v91;
      v95 = v110;
      (*v108)(v104, v94, v110);
      v92(v109, v93, v95);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_10066C5C8(0, *(v111 + 2) + 1, 1, v111);
      }

      v71 = v103;
      v97 = *(v111 + 2);
      v96 = *(v111 + 3);
      if (v97 >= v96 >> 1)
      {
        v111 = sub_10066C5C8(v96 > 1, v97 + 1, 1, v111);
      }

      v98 = v110;
      v99 = v111;
      *(v111 + 2) = v97 + 1;
      v92(&v99[((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v97], v109, v98);
      v77 = v78;
      v75 = v107;
    }

    while (v74);
LABEL_126:
    while (1)
    {
      v78 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v78 >= v75)
      {

        return v111;
      }

      v74 = v60[v78];
      ++v77;
      if (v74)
      {
        goto LABEL_129;
      }
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v102 = v1;
  if (!v11)
  {
    goto LABEL_107;
  }

LABEL_3:
  v12 = 0;
  v111 = (a1 + 32);
  v112 = a1 & 0xC000000000000001;
  v107 = a1;
  v108 = v113 + 1;
  v13 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v112)
    {
      v14 = sub_1007A3784();
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_100;
      }

      v14 = *&v111[8 * v12];
    }

    v2 = v14;
    v15 = __OFADD__(v12++, 1);
    if (v15)
    {
      break;
    }

    a1 = v14;
    v16 = sub_100799574();
    v18 = HIBYTE(v17) & 0xF;
    v19 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v17 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v17) & 0xF;
    }

    else
    {
      v20 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
      goto LABEL_101;
    }

    if ((v17 & 0x1000000000000000) != 0)
    {
      v114 = 0;
      v3 = v17;
      v23 = sub_10063E4AC(v16, v17, 10);
      v58 = v57;

      if (v58)
      {
        goto LABEL_98;
      }

      goto LABEL_72;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {
      v113[0] = v16;
      v113[1] = v17 & 0xFFFFFFFFFFFFFFLL;
      if (v16 == 43)
      {
        if (!v18)
        {
          goto LABEL_103;
        }

        v19 = v18 - 1;
        if (v18 != 1)
        {
          v23 = 0;
          v31 = v108;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            if (!is_mul_ok(v23, 0xAuLL))
            {
              break;
            }

            v26 = __CFADD__(10 * v23, v32);
            v23 = 10 * v23 + v32;
            if (v26)
            {
              break;
            }

            ++v31;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v16 == 45)
      {
        if (!v18)
        {
          goto LABEL_105;
        }

        v19 = v18 - 1;
        if (v18 != 1)
        {
          v23 = 0;
          v27 = v108;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            if (!is_mul_ok(v23, 0xAuLL))
            {
              break;
            }

            v26 = 10 * v23 >= v28;
            v23 = 10 * v23 - v28;
            if (!v26)
            {
              break;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v18)
      {
        v23 = 0;
        v34 = v113;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          if (!is_mul_ok(v23, 0xAuLL))
          {
            break;
          }

          v26 = __CFADD__(10 * v23, v35);
          v23 = 10 * v23 + v35;
          if (v26)
          {
            break;
          }

          ++v34;
          if (!--v18)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        v21 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v3 = v17;
        v21 = sub_1007A37B4();
        v19 = v59;
      }

      v22 = *v21;
      if (v22 == 43)
      {
        if (v19 < 1)
        {
          goto LABEL_104;
        }

        if (--v19)
        {
          v23 = 0;
          if (!v21)
          {
            goto LABEL_69;
          }

          v29 = v21 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            if (!is_mul_ok(v23, 0xAuLL))
            {
              break;
            }

            v26 = __CFADD__(10 * v23, v30);
            v23 = 10 * v23 + v30;
            if (v26)
            {
              break;
            }

            ++v29;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v22 == 45)
      {
        if (v19 < 1)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        if (--v19)
        {
          v23 = 0;
          if (!v21)
          {
            goto LABEL_69;
          }

          v24 = v21 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            if (!is_mul_ok(v23, 0xAuLL))
            {
              break;
            }

            v26 = 10 * v23 >= v25;
            v23 = 10 * v23 - v25;
            if (!v26)
            {
              break;
            }

            ++v24;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v19)
      {
        v23 = 0;
        if (!v21)
        {
LABEL_69:
          LOBYTE(v19) = 0;
          goto LABEL_71;
        }

        while (1)
        {
          v33 = *v21 - 48;
          if (v33 > 9)
          {
            break;
          }

          if (!is_mul_ok(v23, 0xAuLL))
          {
            break;
          }

          v26 = __CFADD__(10 * v23, v33);
          v23 = 10 * v23 + v33;
          if (v26)
          {
            break;
          }

          ++v21;
          if (!--v19)
          {
            goto LABEL_71;
          }
        }
      }
    }

    v23 = 0;
    LOBYTE(v19) = 1;
LABEL_71:
    v114 = v19;
    v3 = v19;

    if (v3)
    {
      goto LABEL_98;
    }

LABEL_72:
    v36 = sub_100799454();
    if (v37 && (v38 = sub_10063D7E8(v36, v37), (v39 & 1) == 0))
    {
      v44 = v38;
      v103 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113[0] = v13;
      v47 = sub_1002F9CDC(v23);
      v48 = v13;
      v49 = v13[2];
      v50 = (v46 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_155;
      }

      v52 = v46;
      if (v48[3] >= v51)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v3 = v113[0];
          if ((v46 & 1) == 0)
          {
            goto LABEL_84;
          }
        }

        else
        {
          sub_1002F28F4();
          v3 = v113[0];
          if ((v52 & 1) == 0)
          {
            goto LABEL_84;
          }
        }
      }

      else
      {
        sub_1003D6B54(v51, isUniquelyReferenced_nonNull_native);
        v53 = sub_1002F9CDC(v23);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_157;
        }

        v47 = v53;
        v3 = v113[0];
        if ((v52 & 1) == 0)
        {
LABEL_84:
          *(v3 + 8 * (v47 >> 6) + 64) |= 1 << v47;
          *(*(v3 + 48) + 8 * v47) = v23;
          *(*(v3 + 56) + 8 * v47) = v44;

          v55 = *(v3 + 16);
          v15 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v15)
          {
            goto LABEL_156;
          }

          v13 = v3;
          *(v3 + 16) = v56;
          goto LABEL_89;
        }
      }

      *(*(v3 + 56) + 8 * v47) = v44;

      v13 = v3;
LABEL_89:
      v10 = v103;
      v43 = v11;
LABEL_90:
      if (v12 == v43)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v40 = sub_1002F9CDC(v23);
      if (v41)
      {
        v3 = v40;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v113[0] = v13;
        v43 = v11;
        if (!v42)
        {
          sub_1002F28F4();
          v13 = v113[0];
        }

        sub_1002EFCDC(v3, v13);

        goto LABEL_90;
      }

      if (v12 == v11)
      {
        goto LABEL_108;
      }
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:

LABEL_98:

  sub_100627AAC();
  sub_100628298(&qword_100AEE578, sub_100627AAC);
  swift_allocError();
  swift_willThrow();

  return v111;
}

uint64_t sub_10062246C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079A614();
  *a1 = result;
  return result;
}

void sub_100622498(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AEE588);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_100627DDC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A27B78;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  [v14 performBackgroundReadOnlyBlock:v13];
  _Block_release(v13);
}

uint64_t sub_100622664(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1001F1160(&qword_100AE3180);
  __chkstk_darwin(v7 - 8);
  v69 = v66 - v8;
  isUniquelyReferenced_nonNull_native = sub_10079A734();
  v74 = *(isUniquelyReferenced_nonNull_native - 8);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = v66 - v13;
  v83 = _swiftEmptyDictionarySingleton;
  isa = sub_1007A25D4().super.isa;
  v15 = [a2 libraryAssetsWithAssetIDs:isa inManagedObjectContext:a1];

  sub_1002BACBC();
  v16 = sub_1007A25E4();

  if (v16 >> 62)
  {
LABEL_104:
    v17 = sub_1007A38D4();
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_3:
      v66[1] = a4;
      v18 = 0;
      a4 = v16 & 0xC000000000000001;
      v19 = v16 & 0xFFFFFFFFFFFFFF8;
      v79 = v16 + 32;
      v75 = v81 + 1;
      v68 = enum case for Book.MediaType.audiobook(_:);
      v78 = (v74 + 104);
      v67 = (v74 + 56);
      v72 = enum case for Book.MediaType.ebook(_:);
      v76 = v17;
      v77 = (v74 + 32);
      v66[2] = v74 + 40;
      v70 = v16 & 0xFFFFFFFFFFFFFF8;
      v71 = v16 & 0xC000000000000001;
      while (1)
      {
        if (a4)
        {
          v20 = sub_1007A3784();
        }

        else
        {
          if (v18 >= *(v19 + 16))
          {
            goto LABEL_97;
          }

          v20 = *(v79 + 8 * v18);
        }

        v21 = v20;
        v22 = __OFADD__(v18++, 1);
        if (v22)
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v23 = [v20 assetID];
        if (!v23)
        {
          goto LABEL_4;
        }

        v80 = v21;
        v24 = v23;
        v25 = sub_1007A2254();
        v27 = v26;

        v28 = HIBYTE(v27) & 0xF;
        v29 = v25 & 0xFFFFFFFFFFFFLL;
        if ((v27 & 0x2000000000000000) != 0)
        {
          v30 = HIBYTE(v27) & 0xF;
        }

        else
        {
          v30 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (!v30)
        {

LABEL_77:

          goto LABEL_5;
        }

        if ((v27 & 0x1000000000000000) == 0)
        {
          break;
        }

        v82 = 0;
        v33 = sub_10063E4AC(v25, v27, 10);
        v46 = v63;
LABEL_76:

        if (v46)
        {
          goto LABEL_77;
        }

        v21 = v80;
        if (![v80 isBook])
        {
          if ([v21 isAudiobook])
          {
            v59 = v69;
            (*v78)(v69, v68, isUniquelyReferenced_nonNull_native);
            (*v67)(v59, 0, 1, isUniquelyReferenced_nonNull_native);
            sub_1005EA1A4(v59, v33);

            v17 = v76;
            goto LABEL_5;
          }

LABEL_4:

          goto LABEL_5;
        }

        v47 = v16;
        v48 = v73;
        (*v78)(v73, v72, isUniquelyReferenced_nonNull_native);
        v16 = *v77;
        v49 = v11;
        a4 = isUniquelyReferenced_nonNull_native;
        (*v77)(v11, v48, isUniquelyReferenced_nonNull_native);
        v50 = v83;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = v50;
        v52 = sub_1002F9CDC(v33);
        v53 = v50[2];
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          goto LABEL_98;
        }

        v56 = v51;
        if (v50[3] >= v55)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002F2C00();
          }
        }

        else
        {
          sub_1003D70B8(v55, isUniquelyReferenced_nonNull_native);
          v57 = sub_1002F9CDC(v33);
          if ((v56 & 1) != (v58 & 1))
          {
            result = sub_1007A3B24();
            __break(1u);
            return result;
          }

          v52 = v57;
        }

        isUniquelyReferenced_nonNull_native = a4;
        v60 = v81[0];
        if (v56)
        {
          v11 = v49;
          (*(v74 + 40))(*(v81[0] + 56) + *(v74 + 72) * v52, v49, a4);
        }

        else
        {
          *(v81[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
          *(v60[6] + 8 * v52) = v33;
          v11 = v49;
          (v16)(v60[7] + *(v74 + 72) * v52, v49, a4);
          v61 = v60[2];
          v22 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v22)
          {
            goto LABEL_103;
          }

          v60[2] = v62;
        }

        v83 = v60;
        v16 = v47;
        v17 = v76;
        v19 = v70;
        a4 = v71;
LABEL_5:
        if (v18 == v17)
        {

          v64 = v83;
          goto LABEL_106;
        }
      }

      if ((v27 & 0x2000000000000000) != 0)
      {
        v81[0] = v25;
        v81[1] = v27 & 0xFFFFFFFFFFFFFFLL;
        if (v25 == 43)
        {
          if (!v28)
          {
            goto LABEL_100;
          }

          if (--v28)
          {
            v33 = 0;
            v41 = v75;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              if (!is_mul_ok(v33, 0xAuLL))
              {
                break;
              }

              v36 = __CFADD__(10 * v33, v42);
              v33 = 10 * v33 + v42;
              if (v36)
              {
                break;
              }

              ++v41;
              if (!--v28)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v25 == 45)
        {
          if (!v28)
          {
            goto LABEL_99;
          }

          if (--v28)
          {
            v33 = 0;
            v37 = v75;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              if (!is_mul_ok(v33, 0xAuLL))
              {
                break;
              }

              v36 = 10 * v33 >= v38;
              v33 = 10 * v33 - v38;
              if (!v36)
              {
                break;
              }

              ++v37;
              if (!--v28)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v28)
        {
          v33 = 0;
          v44 = v81;
          while (1)
          {
            v45 = *v44 - 48;
            if (v45 > 9)
            {
              break;
            }

            if (!is_mul_ok(v33, 0xAuLL))
            {
              break;
            }

            v36 = __CFADD__(10 * v33, v45);
            v33 = 10 * v33 + v45;
            if (v36)
            {
              break;
            }

            ++v44;
            if (!--v28)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

      if ((v25 & 0x1000000000000000) != 0)
      {
        v31 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v31 = sub_1007A37B4();
      }

      v32 = *v31;
      if (v32 == 43)
      {
        if (v29 < 1)
        {
          goto LABEL_101;
        }

        v28 = v29 - 1;
        if (v29 == 1)
        {
          goto LABEL_74;
        }

        v33 = 0;
        if (v31)
        {
          v39 = v31 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v33, 0xAuLL))
            {
              goto LABEL_74;
            }

            v36 = __CFADD__(10 * v33, v40);
            v33 = 10 * v33 + v40;
            if (v36)
            {
              goto LABEL_74;
            }

            ++v39;
            if (!--v28)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else if (v32 == 45)
      {
        if (v29 < 1)
        {
          goto LABEL_102;
        }

        v28 = v29 - 1;
        if (v29 == 1)
        {
          goto LABEL_74;
        }

        v33 = 0;
        if (v31)
        {
          v34 = v31 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v33, 0xAuLL))
            {
              goto LABEL_74;
            }

            v36 = 10 * v33 >= v35;
            v33 = 10 * v33 - v35;
            if (!v36)
            {
              goto LABEL_74;
            }

            ++v34;
            if (!--v28)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else
      {
        if (!v29)
        {
LABEL_74:
          v33 = 0;
          LOBYTE(v28) = 1;
          goto LABEL_75;
        }

        v33 = 0;
        if (v31)
        {
          do
          {
            v43 = *v31 - 48;
            if (v43 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v33, 0xAuLL))
            {
              goto LABEL_74;
            }

            v36 = __CFADD__(10 * v33, v43);
            v33 = 10 * v33 + v43;
            if (v36)
            {
              goto LABEL_74;
            }

            ++v31;
          }

          while (--v29);
        }
      }

      LOBYTE(v28) = 0;
LABEL_75:
      v82 = v28;
      v46 = v28;
      goto LABEL_76;
    }
  }

  v64 = _swiftEmptyDictionarySingleton;
LABEL_106:
  v81[0] = v64;
  sub_1001F1160(&qword_100AEE588);
  return sub_1007A26B4();
}

void sub_100622E9C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1001F1160(&qword_100AEE558);
  __chkstk_darwin(v4 - 8);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  v9 = sub_10079A734();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v22 - v14;
  sub_100799464();
  v16 = sub_1007995A4();
  if (!v16)
  {
    sub_100627994();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();

    return;
  }

  v17 = v16;
  sub_100799314();
  if (swift_dynamicCastClass())
  {
    v18 = &enum case for Book.MediaType.ebook(_:);
  }

  else
  {
    sub_100798E84();
    if (!swift_dynamicCastClass())
    {
      sub_1006279E8();
      swift_allocError();
      swift_willThrow();

      return;
    }

    v18 = &enum case for Book.MediaType.audiobook(_:);
  }

  (*(v10 + 104))(v15, *v18, v9);
  v20 = sub_1006239D0(v15);
  sub_100623F68(v8);
  v21 = sub_1006234F8();
  if (v2)
  {
  }

  else
  {
    v22[2] = v21;
    (*(v10 + 16))(v12, v15, v9);
    v22[1] = sub_1006219CC(v17);

    if (*(v20 + 2))
    {
      v22[0] = *(v20 + 4);
    }

    else
    {
      v22[0] = 0;
    }

    sub_100627A3C(v8, v23);
    sub_10079A6A4();
  }

  sub_100007840(v8, &qword_100AEE558);
  (*(v10 + 8))(v15, v9);
}

uint64_t sub_10062326C()
{
  v1 = OBJC_IVAR____TtC5Books23MediaAPIMetadataService_catalogService;
  v2 = sub_100798FE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100623320(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002104D8;

  return sub_10061F550(a1, a2);
}

uint64_t sub_1006233C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_10061CB8C(a1);
}

uint64_t sub_100623460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_100620CC0(a1);
}

void *sub_1006234F8()
{
  sub_100799314();
  if (swift_dynamicCastClass() || (sub_100798E84(), swift_dynamicCastClass()))
  {
    v1 = v0;
    v2 = sub_100799414();

    if (!v2)
    {
      v2 = _swiftEmptyArrayStorage;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_94;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v7 = v2 + 32;
      v36 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v6)
        {
          v8 = sub_1007A3784();
        }

        else
        {
          if (v5 >= *(v3 + 16))
          {
            goto LABEL_89;
          }

          v8 = *(v7 + 8 * v5);
        }

        v2 = v8;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v10 = sub_100799574();
        v12 = HIBYTE(v11) & 0xF;
        v13 = v10 & 0xFFFFFFFFFFFFLL;
        if ((v11 & 0x2000000000000000) != 0)
        {
          v14 = HIBYTE(v11) & 0xF;
        }

        else
        {
          v14 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (!v14)
        {

          goto LABEL_76;
        }

        if ((v11 & 0x1000000000000000) == 0)
        {
          if ((v11 & 0x2000000000000000) != 0)
          {
            v37[0] = v10;
            v37[1] = v11 & 0xFFFFFFFFFFFFFFLL;
            if (v10 == 43)
            {
              if (!v12)
              {
                goto LABEL_91;
              }

              v13 = v12 - 1;
              if (v12 != 1)
              {
                v17 = 0;
                v25 = v37 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v17, 0xAuLL))
                  {
                    break;
                  }

                  v20 = __CFADD__(10 * v17, v26);
                  v17 = 10 * v17 + v26;
                  if (v20)
                  {
                    break;
                  }

                  ++v25;
                  if (!--v13)
                  {
                    goto LABEL_75;
                  }
                }
              }
            }

            else if (v10 == 45)
            {
              if (!v12)
              {
                goto LABEL_90;
              }

              v13 = v12 - 1;
              if (v12 != 1)
              {
                v17 = 0;
                v21 = v37 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v17, 0xAuLL))
                  {
                    break;
                  }

                  v20 = 10 * v17 >= v22;
                  v17 = 10 * v17 - v22;
                  if (!v20)
                  {
                    break;
                  }

                  ++v21;
                  if (!--v13)
                  {
                    goto LABEL_75;
                  }
                }
              }
            }

            else if (v12)
            {
              v17 = 0;
              v28 = v37;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v17, 0xAuLL))
                {
                  break;
                }

                v20 = __CFADD__(10 * v17, v29);
                v17 = 10 * v17 + v29;
                if (v20)
                {
                  break;
                }

                ++v28;
                if (!--v12)
                {
                  goto LABEL_73;
                }
              }
            }
          }

          else
          {
            if ((v10 & 0x1000000000000000) != 0)
            {
              v15 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v15 = sub_1007A37B4();
              v13 = v34;
            }

            v16 = *v15;
            if (v16 == 43)
            {
              if (v13 < 1)
              {
                goto LABEL_92;
              }

              if (--v13)
              {
                v17 = 0;
                if (!v15)
                {
                  goto LABEL_73;
                }

                v23 = v15 + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v17, 0xAuLL))
                  {
                    break;
                  }

                  v20 = __CFADD__(10 * v17, v24);
                  v17 = 10 * v17 + v24;
                  if (v20)
                  {
                    break;
                  }

                  ++v23;
                  if (!--v13)
                  {
                    goto LABEL_75;
                  }
                }
              }
            }

            else if (v16 == 45)
            {
              if (v13 < 1)
              {
                goto LABEL_93;
              }

              if (--v13)
              {
                v17 = 0;
                if (v15)
                {
                  v18 = v15 + 1;
                  while (1)
                  {
                    v19 = *v18 - 48;
                    if (v19 > 9)
                    {
                      goto LABEL_74;
                    }

                    if (!is_mul_ok(v17, 0xAuLL))
                    {
                      goto LABEL_74;
                    }

                    v20 = 10 * v17 >= v19;
                    v17 = 10 * v17 - v19;
                    if (!v20)
                    {
                      goto LABEL_74;
                    }

                    ++v18;
                    if (!--v13)
                    {
                      goto LABEL_75;
                    }
                  }
                }

LABEL_73:
                LOBYTE(v13) = 0;
LABEL_75:
                v38 = v13;
                v30 = v13;

                if ((v30 & 1) == 0)
                {
                  goto LABEL_81;
                }

                goto LABEL_76;
              }
            }

            else
            {
              if (!v13)
              {
                goto LABEL_74;
              }

              v17 = 0;
              if (!v15)
              {
                goto LABEL_73;
              }

              while (1)
              {
                v27 = *v15 - 48;
                if (v27 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v17, 0xAuLL))
                {
                  break;
                }

                v20 = __CFADD__(10 * v17, v27);
                v17 = 10 * v17 + v27;
                if (v20)
                {
                  break;
                }

                ++v15;
                if (!--v13)
                {
                  goto LABEL_75;
                }
              }
            }
          }

LABEL_74:
          v17 = 0;
          LOBYTE(v13) = 1;
          goto LABEL_75;
        }

        v38 = 0;
        v17 = sub_10063E4AC(v10, v11, 10);
        v39 = v31;

        if ((v39 & 1) == 0)
        {
LABEL_81:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_10066C34C(0, *(v36 + 2) + 1, 1, v36);
          }

          v33 = *(v36 + 2);
          v32 = *(v36 + 3);
          v2 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            v36 = sub_10066C34C((v32 > 1), v33 + 1, 1, v36);
          }

          *(v36 + 2) = v2;
          *&v36[8 * v33 + 32] = v17;
        }

LABEL_76:
        if (v5 == i)
        {
          goto LABEL_96;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      ;
    }

    v36 = _swiftEmptyArrayStorage;
LABEL_96:

    v0 = sub_10040E40C(v36);
  }

  else
  {
    sub_1006279E8();
    swift_allocError();
    swift_willThrow();
  }

  return v0;
}

char *sub_1006239D0(uint64_t a1)
{
  v2 = sub_10079A734();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Book.MediaType.ebook(_:))
  {
    sub_100799444();
    v8 = sub_1007995A4();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }
  }

  else if (v7 == enum case for Book.MediaType.audiobook(_:))
  {
    sub_100799444();
    v10 = sub_1007995A4();
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_98;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v47 = v9;
  while (v12)
  {
    v13 = 0;
    v14 = v9 & 0xC000000000000001;
    v15 = v9 + 32;
    v48 = _swiftEmptyArrayStorage;
    v9 = 10;
    while (1)
    {
      if (v14)
      {
        v16 = sub_1007A3784();
      }

      else
      {
        if (v13 >= *(v11 + 16))
        {
          goto LABEL_93;
        }

        v16 = *(v15 + 8 * v13);
      }

      v17 = v16;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      v19 = sub_100799574();
      v21 = HIBYTE(v20) & 0xF;
      v22 = v19 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23)
      {

        goto LABEL_81;
      }

      if ((v20 & 0x1000000000000000) == 0)
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v49[0] = v19;
          v49[1] = v20 & 0xFFFFFFFFFFFFFFLL;
          if (v19 == 43)
          {
            if (!v21)
            {
              goto LABEL_95;
            }

            v22 = v21 - 1;
            if (v21 != 1)
            {
              v26 = 0;
              v34 = v49 + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = __CFADD__(10 * v26, v35);
                v26 = 10 * v26 + v35;
                if (v29)
                {
                  break;
                }

                ++v34;
                if (!--v22)
                {
                  goto LABEL_80;
                }
              }
            }
          }

          else if (v19 == 45)
          {
            if (!v21)
            {
              goto LABEL_94;
            }

            v22 = v21 - 1;
            if (v21 != 1)
            {
              v26 = 0;
              v30 = v49 + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = 10 * v26 >= v31;
                v26 = 10 * v26 - v31;
                if (!v29)
                {
                  break;
                }

                ++v30;
                if (!--v22)
                {
                  goto LABEL_80;
                }
              }
            }
          }

          else if (v21)
          {
            v26 = 0;
            v37 = v49;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                break;
              }

              v29 = __CFADD__(10 * v26, v38);
              v26 = 10 * v26 + v38;
              if (v29)
              {
                break;
              }

              ++v37;
              if (!--v21)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else
        {
          if ((v19 & 0x1000000000000000) != 0)
          {
            v24 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v24 = sub_1007A37B4();
            v22 = v44;
          }

          v25 = *v24;
          if (v25 == 43)
          {
            if (v22 < 1)
            {
              goto LABEL_96;
            }

            if (--v22)
            {
              v26 = 0;
              if (!v24)
              {
                goto LABEL_78;
              }

              v32 = v24 + 1;
              while (1)
              {
                v33 = *v32 - 48;
                if (v33 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = __CFADD__(10 * v26, v33);
                v26 = 10 * v26 + v33;
                if (v29)
                {
                  break;
                }

                ++v32;
                if (!--v22)
                {
                  goto LABEL_80;
                }
              }
            }
          }

          else if (v25 == 45)
          {
            if (v22 < 1)
            {
              goto LABEL_97;
            }

            if (--v22)
            {
              v26 = 0;
              if (v24)
              {
                v27 = v24 + 1;
                while (1)
                {
                  v28 = *v27 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_79;
                  }

                  if (!is_mul_ok(v26, 0xAuLL))
                  {
                    goto LABEL_79;
                  }

                  v29 = 10 * v26 >= v28;
                  v26 = 10 * v26 - v28;
                  if (!v29)
                  {
                    goto LABEL_79;
                  }

                  ++v27;
                  if (!--v22)
                  {
                    goto LABEL_80;
                  }
                }
              }

LABEL_78:
              LOBYTE(v22) = 0;
LABEL_80:
              v50 = v22;
              v39 = v22;

              if ((v39 & 1) == 0)
              {
                goto LABEL_86;
              }

              goto LABEL_81;
            }
          }

          else
          {
            if (!v22)
            {
              goto LABEL_79;
            }

            v26 = 0;
            if (!v24)
            {
              goto LABEL_78;
            }

            while (1)
            {
              v36 = *v24 - 48;
              if (v36 > 9)
              {
                break;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                break;
              }

              v29 = __CFADD__(10 * v26, v36);
              v26 = 10 * v26 + v36;
              if (v29)
              {
                break;
              }

              ++v24;
              if (!--v22)
              {
                goto LABEL_80;
              }
            }
          }
        }

LABEL_79:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_80;
      }

      v50 = 0;
      v26 = sub_10063E4AC(v19, v20, 10);
      HIDWORD(v46) = v40;

      if ((v46 & 0x100000000) == 0)
      {
LABEL_86:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_10066C34C(0, *(v48 + 2) + 1, 1, v48);
        }

        v42 = *(v48 + 2);
        v41 = *(v48 + 3);
        if (v42 >= v41 >> 1)
        {
          v48 = sub_10066C34C((v41 > 1), v42 + 1, 1, v48);
        }

        v43 = v48;
        *(v48 + 2) = v42 + 1;
        *&v43[8 * v42 + 32] = v26;
      }

LABEL_81:
      if (v13 == v12)
      {
        goto LABEL_100;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    v12 = sub_1007A38D4();
    v47 = v9;
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_100:

  return v48;
}