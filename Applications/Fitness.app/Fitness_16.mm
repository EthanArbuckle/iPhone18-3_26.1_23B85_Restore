uint64_t sub_100208594()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10020864C(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008DB8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002086B4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_100140278(&qword_1008E1890);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008E1898);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002087E8, 0, 0);
}

uint64_t sub_1002087E8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = [objc_opt_self() predicateForWorkoutsWithWorkoutActivityType:84];
  v0[11] = v4;
  v5 = [objc_opt_self() notPredicateWithSubpredicate:v4];
  v0[12] = v5;
  sub_1000059F8(0, &qword_1008E04D0);
  v6 = v5;
  static HKSamplePredicate.workout(_:)();

  sub_100140278(&qword_1008E18A0);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D46C0;
  (*(v2 + 16))(v8 + v7, v1, v3);
  sub_100140278(&qword_1008E18A8);
  sub_100140278(&qword_1008E18B0);
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  sub_1000059F8(0, &qword_1008ED7C0);
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  AppDependency.wrappedValue.getter();
  v9 = v0[2];
  v0[13] = v9;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100208A90;
  v11 = v0[5];

  return HKSampleQueryDescriptor.result(for:)(v9, v11);
}

uint64_t sub_100208A90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  *(*v2 + 120) = v1;

  if (v1)
  {
    v6 = sub_100208CCC;
  }

  else
  {
    *(v4 + 128) = a1;
    v6 = sub_100208BD8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100208BD8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v11 = sub_100207284(v0[16]);

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9(v11);
}

uint64_t sub_100208CCC()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100208D98(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_100140278(&qword_1008E1890);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008E1898);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100208ECC, 0, 0);
}

uint64_t sub_100208ECC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = [objc_opt_self() predicateForWorkoutsWithWorkoutActivityType:82];
  v0[11] = v4;
  sub_1000059F8(0, &qword_1008E04D0);
  v5 = v4;
  static HKSamplePredicate.workout(_:)();

  sub_100140278(&qword_1008E18A0);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D46C0;
  (*(v2 + 16))(v7 + v6, v1, v3);
  sub_100140278(&qword_1008E18A8);
  sub_100140278(&qword_1008E18B0);
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  sub_1000059F8(0, &qword_1008ED7C0);
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  AppDependency.wrappedValue.getter();
  v8 = v0[2];
  v0[12] = v8;
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_100209148;
  v10 = v0[5];

  return HKSampleQueryDescriptor.result(for:)(v8, v10);
}

uint64_t sub_100209148(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = sub_10020937C;
  }

  else
  {
    *(v4 + 120) = a1;
    v6 = sub_100209290;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100209290()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = sub_100207284(v0[15]);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_10020937C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_100209504()
{
  _StringGuts.grow(_:)(20);

  if (*(v0 + OBJC_IVAR___CHNavigatorContext_hasActiveWorkout))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CHNavigatorContext_hasActiveWorkout))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  return 0xD000000000000012;
}

id DivingDataCalculator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10020969C@<X0>(void *a1@<X8>)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, "init");
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TabularMetric(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TabularMetric(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1002098C4(uint64_t a1, id *a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *a2;
  v7 = [v5 preferredFontForTextStyle:v6];

  v8 = objc_opt_self();
  v9 = UIContentSizeCategoryLarge;
  v10 = [v8 traitCollectionWithPreferredContentSizeCategory:v9];

  v11 = [v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v10];
  if (v11)
  {
    *a3 = v11;
  }

  else
  {
    __break(1u);
  }
}

void sub_1002099B4()
{
  sub_1000059F8(0, &qword_1008F73C0);
  v0 = UIFontTextStyleCallout;
  v1 = UIFontDescriptorSystemDesignRounded;
  v2 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();

  v3 = objc_opt_self();
  v4 = UIContentSizeCategoryLarge;
  v5 = [v3 traitCollectionWithPreferredContentSizeCategory:v4];

  v6 = [v2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v5];
  if (v6)
  {
    qword_1009252A0 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_100209AEC()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setMinimumFractionDigits:0];
  [v0 setMaximumFractionDigits:2];
  result = [v0 setNumberStyle:1];
  qword_1008E18E8 = v0;
  return result;
}

uint64_t sub_100209B68(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x43676E696C637963;
    v7 = 0xD000000000000012;
    if (a1 != 10)
    {
      v7 = 0x536D756D6978616DLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x65636E65646163;
    v9 = 0x796772656E65;
    if (a1 != 7)
    {
      v9 = 0x6465657073;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x72656B72616DLL;
    v2 = 1701011824;
    v3 = 0x7461527472616568;
    if (a1 != 4)
    {
      v3 = 0x7265776F70;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x65636E6174736964;
    if (a1 != 1)
    {
      v4 = 1701669236;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

void sub_100209CE0(void *a1, unsigned __int8 a2)
{
  if (a2 > 5u)
  {
    if (a2 != 7)
    {
LABEL_8:
      v7 = [objc_opt_self() mainBundle];
      v8 = String._bridgeToObjectiveC()();
      v9 = [v7 localizedStringForKey:v8 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      goto LABEL_9;
    }

    v3 = String._bridgeToObjectiveC()();
    v4 = [a1 localizationKeyForEnergyBaseKey:v3];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [objc_opt_self() mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else if (a2 > 2u || a2)
  {
    goto LABEL_8;
  }

LABEL_9:

  AttributedString.init(stringLiteral:)();
}

void sub_10020A2B4(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 5u)
  {
    if (a1 > 2u)
    {
      goto LABEL_14;
    }

    if (!a1)
    {
LABEL_28:

      static Color.gray.getter();
      return;
    }

    if (a1 != 1)
    {
      v18 = [objc_opt_self() elapsedTimeColors];
      if (!v18)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v19 = v18;
      v20 = [v18 nonGradientTextColor];

      if (v20)
      {
        goto LABEL_35;
      }

      __break(1u);
LABEL_34:
      v21 = [objc_opt_self() powerColors];
      v22 = [v21 nonGradientTextColor];

      if (v22)
      {
        goto LABEL_35;
      }

LABEL_43:
      __break(1u);
      return;
    }

    v2 = [objc_opt_self() distanceColors];
    if (!v2)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v3 = v2;
    v4 = [v2 nonGradientTextColor];

    if (v4)
    {
      goto LABEL_35;
    }

    __break(1u);
  }

  if (v1 > 8)
  {
    goto LABEL_19;
  }

  if (v1 == 6)
  {
    goto LABEL_26;
  }

  if (v1 != 7)
  {
LABEL_23:
    v13 = [objc_opt_self() paceColors];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 nonGradientTextColor];

      if (v15)
      {
        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_39;
  }

  v5 = [objc_opt_self() energyColors];
  if (!v5)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v6 = v5;
  v7 = [v5 nonGradientTextColor];

  if (v7)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_14:
  if (v1 == 3)
  {
    goto LABEL_23;
  }

  if (v1 != 4)
  {
    goto LABEL_34;
  }

  v8 = [objc_opt_self() heartRateColors];
  if (!v8)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v9 = v8;
  v10 = [v8 nonGradientTextColor];

  if (v10)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_19:
  if (v1 != 9)
  {
    if (v1 == 10)
    {
      v11 = [objc_opt_self() elevationColors];
      v12 = [v11 nonGradientTextColor];

      if (v12)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    goto LABEL_23;
  }

LABEL_26:
  v16 = [objc_opt_self() cadenceColors];
  v17 = [v16 nonGradientTextColor];

  if (!v17)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_35:

  Color.init(_:)();
}

uint64_t sub_10020A5C0@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v484 = a4;
  v488 = a1;
  v449 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v448 = *(v449 - 8);
  __chkstk_darwin(v449);
  v447 = &v445 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v477 = sub_100140278(&qword_1008E18F8);
  v476 = *(v477 - 8);
  __chkstk_darwin(v477);
  v475 = &v445 - v11;
  v12 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v12 - 8);
  v479 = &v445 - v13;
  v14 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v14 - 8);
  v464 = &v445 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v462 = &v445 - v17;
  __chkstk_darwin(v18);
  v472 = &v445 - v19;
  __chkstk_darwin(v20);
  v468 = &v445 - v21;
  __chkstk_darwin(v22);
  v24 = &v445 - v23;
  __chkstk_darwin(v25);
  v459 = &v445 - v26;
  __chkstk_darwin(v27);
  v455 = &v445 - v28;
  __chkstk_darwin(v29);
  v453 = &v445 - v30;
  v482 = sub_100140278(&qword_1008E1908);
  v480 = *(v482 - 8);
  __chkstk_darwin(v482);
  v457 = &v445 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v456 = &v445 - v33;
  __chkstk_darwin(v34);
  v469 = &v445 - v35;
  __chkstk_darwin(v36);
  v461 = &v445 - v37;
  __chkstk_darwin(v38);
  v460 = &v445 - v39;
  __chkstk_darwin(v40);
  v451 = &v445 - v41;
  __chkstk_darwin(v42);
  v450 = &v445 - v43;
  __chkstk_darwin(v44);
  v446 = &v445 - v45;
  v483 = type metadata accessor for AttributedString();
  v478 = *(v483 - 8);
  __chkstk_darwin(v483);
  v47 = &v445 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v470 = &v445 - v49;
  __chkstk_darwin(v50);
  v471 = &v445 - v51;
  __chkstk_darwin(v52);
  v466 = &v445 - v53;
  __chkstk_darwin(v54);
  v465 = &v445 - v55;
  __chkstk_darwin(v56);
  v458 = &v445 - v57;
  __chkstk_darwin(v58);
  v60 = &v445 - v59;
  __chkstk_darwin(v61);
  v452 = &v445 - v62;
  v63 = sub_100140278(&qword_1008E1910);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v445 - v65;
  v67 = type metadata accessor for AttributeContainer();
  v489 = *(v67 - 8);
  __chkstk_darwin(v67);
  v474 = &v445 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v491 = &v445 - v70;
  *&v72 = __chkstk_darwin(v71).n128_u64[0];
  v490 = &v445 - v73;
  v487 = a6;
  v467 = v24;
  v463 = v47;
  v454 = v60;
  v473 = a2;
  v75 = v74;
  if (a3)
  {
    v76 = [a3 workoutConfiguration];
    v77 = [v76 activityType];
  }

  else
  {
    v77 = [a2 workoutActivityType];
  }

  v78 = v491;
  AttributeContainer.init()();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  v481 = sub_1001ED5AC();
  AttributeContainer.subscript.getter();

  v80 = *(v489 + 1);
  v81 = v75;
  v486 = v489 + 8;
  v485 = v80;
  v80(v78, v75);
  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v82 = qword_1009252A0;
  v493 = qword_1009252A0;
  v83 = v490;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v64 + 8))(v66, v63);
  if (a5 <= 6u)
  {
    v84 = v488;
    if (a5 <= 3u)
    {
      if (a5 <= 2u)
      {
        if (a5 == 1)
        {
          if ((*(v488 + 40) & 1) != 0 || (v85 = *(v488 + 32), floor(v85) <= 0.0))
          {
LABEL_135:
            v433 = swift_getKeyPath();
            __chkstk_darwin(v433);
            swift_getKeyPath();
            sub_10005FAB0();
            v434 = v475;
            AttributeContainer.subscript.getter();

            v493 = static Color.gray.getter();
            v395 = v491;
            v435 = v477;
            AttributeContainer.Builder.callAsFunction(_:)();

            (*(v476 + 8))(v434, v435);
            v397 = [objc_opt_self() mainBundle];
            v398 = String._bridgeToObjectiveC()();
            v399 = [v397 localizedStringForKey:v398 value:0 table:0];
            goto LABEL_136;
          }

          if ((*(v488 + 56) & 1) == 0)
          {
            v86 = *(v488 + 48);
            v87 = [objc_opt_self() defaultPrecisionForDistanceUnit:v86];
            v88 = [v484 localizedStringWithDistanceInMeters:v86 distanceUnit:0 unitStyle:v87 decimalPrecision:2 roundingMode:1 decimalTrimmingMode:v85];
            if (v88)
            {
              v472 = v82;
              v473 = v81;
              v89 = v88;
              v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v92 = v91;

              v93 = [v484 localizedShortUnitStringForDistanceUnit:v86];
              if (v93)
              {
                v94 = v93;
                v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v97 = v96;

                v493 = v95;
                v494 = v97;
                sub_10000FCBC();
                v98 = StringProtocol.localizedUppercase.getter();
                v100 = v99;

                v101 = [objc_opt_self() mainBundle];
                v102 = String._bridgeToObjectiveC()();
                v103 = [v101 localizedStringForKey:v102 value:0 table:0];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                sub_100140278(&unk_1008E4E50);
                v104 = swift_allocObject();
                *(v104 + 16) = xmmword_1006D1F70;
                *(v104 + 56) = &type metadata for String;
                v105 = sub_10000A788();
                *(v104 + 32) = v90;
                *(v104 + 40) = v92;
                *(v104 + 96) = &type metadata for String;
                *(v104 + 104) = v105;
                *(v104 + 64) = v105;
                *(v104 + 72) = v98;
                *(v104 + 80) = v100;
                v489 = v92;

                String.init(format:_:)();

                AttributeContainer.init()();
                v106 = v452;
                AttributedString.init(_:attributes:)();
                v493 = v472;
                v472;
                AttributedString.subscript.setter();
                v493 = v98;
                v494 = v100;
                v107 = type metadata accessor for Locale();
                v108 = v479;
                (*(*(v107 - 8) + 56))(v479, 1, 1, v107);
                sub_10007BD90();
                v109 = v453;
                v110 = v483;
                AttributedStringProtocol.range<A>(of:options:locale:)();
                sub_10000EA04(v108, &qword_1008EB540);
                if ((*(v480 + 48))(v109, 1, v482) == 1)
                {
                  v111 = &qword_1008E1900;
                }

                else
                {
                  v441 = v109;
                  v109 = v446;
                  sub_10007BE08(v441, v446);
                  isa = UIFont.smallCapsVersion()().super.isa;
                  sub_10007C0F0();
                  v443 = AttributedString.subscript.modify();
                  v495 = isa;
                  AttributedSubstring.subscript.setter();
                  v443(&v493, 0);
                  v111 = &qword_1008E1908;
                }

                sub_10000EA04(v109, v111);
                v444 = v490;
                (*(v478 + 32))(v487, v106, v110);

                v214 = v444;
                goto LABEL_140;
              }

              goto LABEL_150;
            }
          }

          if (a3)
          {
            v331 = [a3 fiui_activityType];
LABEL_129:
            v406 = FIUIDistanceTypeForActivityType();
            v495 = 1;
            v407 = v484;
            v408 = [v484 localizedNaturalScaleStringWithDistanceInMeters:v406 distanceType:0 unitStyle:&v495 usedUnit:v85];
            if (v408)
            {
              v489 = v331;
              v472 = v82;
              v473 = v81;
              v409 = v408;
              v410 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v412 = v411;

              v413 = [v407 localizedShortUnitStringForDistanceUnit:v495];
              if (v413)
              {
                v414 = v413;
                v415 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v417 = v416;

                v493 = v415;
                v494 = v417;
                sub_10000FCBC();
                v418 = StringProtocol.localizedUppercase.getter();
                v420 = v419;

                v421 = [objc_opt_self() mainBundle];
                v422 = String._bridgeToObjectiveC()();
                v423 = [v421 localizedStringForKey:v422 value:0 table:0];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                sub_100140278(&unk_1008E4E50);
                v424 = swift_allocObject();
                *(v424 + 16) = xmmword_1006D1F70;
                *(v424 + 56) = &type metadata for String;
                v425 = sub_10000A788();
                *(v424 + 32) = v410;
                *(v424 + 40) = v412;
                *(v424 + 96) = &type metadata for String;
                *(v424 + 104) = v425;
                *(v424 + 64) = v425;
                *(v424 + 72) = v418;
                *(v424 + 80) = v420;
                v488 = v412;

                String.init(format:_:)();

                AttributeContainer.init()();
                v426 = v454;
                AttributedString.init(_:attributes:)();
                v493 = v472;
                v472;
                AttributedString.subscript.setter();
                v493 = v418;
                v494 = v420;
                v427 = type metadata accessor for Locale();
                v428 = v479;
                (*(*(v427 - 8) + 56))(v479, 1, 1, v427);
                sub_10007BD90();
                v429 = v455;
                v430 = v483;
                AttributedStringProtocol.range<A>(of:options:locale:)();
                sub_10000EA04(v428, &qword_1008EB540);
                if ((*(v480 + 48))(v429, 1, v482) == 1)
                {
                  v431 = &qword_1008E1900;
                  v432 = v429;
                }

                else
                {
                  v438 = v450;
                  sub_10007BE08(v429, v450);
                  v439 = UIFont.smallCapsVersion()().super.isa;
                  sub_10007C0F0();
                  v440 = AttributedString.subscript.modify();
                  v492 = v439;
                  AttributedSubstring.subscript.setter();
                  v440(&v493, 0);
                  v431 = &qword_1008E1908;
                  v432 = v438;
                }

                sub_10000EA04(v432, v431);
                (*(v478 + 32))(v487, v426, v430);

LABEL_139:
                v214 = v490;
LABEL_140:
                v297 = v473;
                return v485(v214, v297);
              }

LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            goto LABEL_135;
          }

          v331 = [v473 fiui_activityType];
          if (v331)
          {
            goto LABEL_129;
          }

          goto LABEL_97;
        }

        if (a5 != 2)
        {
LABEL_153:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v245 = v81;
        v246 = round(*(v488 + 64));
        if (v246 < 3600.0)
        {
          v247 = 3;
        }

        else
        {
          v247 = 2;
        }

        v248 = v484;
        v249 = [v484 stringWithDuration:v247 durationFormat:v246];
        if (v249)
        {
          v250 = v249;
          v251 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v253 = v252;

          v83 = v490;
          if (*(v84 + 80))
          {
LABEL_78:
            v295 = [v248 stringWithDuration:v247 durationFormat:v246];
            if (v295)
            {
              v296 = v295;
LABEL_80:

              static String._unconditionallyBridgeFromObjectiveC(_:)();

              (*(v489 + 2))(v491, v83, v81);
              AttributedString.init(_:attributes:)();
              v214 = v83;
LABEL_81:
              v297 = v245;
              return v485(v214, v297);
            }

            goto LABEL_144;
          }
        }

        else
        {
          v251 = 0;
          v253 = 0;
          if (*(v84 + 80))
          {
            goto LABEL_78;
          }
        }

        v294 = *(v84 + 72);
        if (v294 != 0.0)
        {
          v308 = [v248 stringWithDuration:v247 durationFormat:round(v294)];
          if (v308)
          {
            v309 = v308;
            v310 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v312 = v311;

            if (v253 && v312)
            {
              sub_100140278(&qword_1008E1928);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1006D1F70;
              *(inited + 32) = v310;
              *(inited + 40) = v312;
              v314 = objc_opt_self();

              v315 = [v314 elapsedTimeColors];
              if (!v315)
              {
LABEL_151:
                __break(1u);
                goto LABEL_152;
              }

              v316 = v315;
              v317 = [v315 nonGradientTextColor];

              if (!v317)
              {
LABEL_152:
                __break(1u);
                goto LABEL_153;
              }

              *(inited + 48) = v317;
              v318 = [objc_opt_self() mainBundle];
              v319 = String._bridgeToObjectiveC()();
              v320 = [v318 localizedStringForKey:v319 value:0 table:0];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_100140278(&unk_1008E4E50);
              v321 = swift_allocObject();
              *(v321 + 16) = xmmword_1006D46C0;
              *(v321 + 56) = &type metadata for String;
              *(v321 + 64) = sub_10000A788();
              *(v321 + 32) = v251;
              *(v321 + 40) = v253;
              v322 = String.init(format:_:)();
              v324 = v323;

              *(inited + 56) = v322;
              *(inited + 64) = v324;
              *(inited + 72) = [objc_opt_self() grayColor];
              v325 = sub_1004C1FE0(inited);
              swift_setDeallocating();
              sub_100140278(&qword_1008E1930);
              swift_arrayDestroy();
              v326 = v325;
              AttributedString.init(_:)();
              v327 = v448;
              v328 = v447;
              v329 = v449;
              (*(v448 + 104))(v447, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v449);
              v330 = v490;
              AttributedString.mergeAttributes(_:mergePolicy:)();

              (*(v327 + 8))(v328, v329);
              v214 = v330;
              goto LABEL_81;
            }

            v83 = v490;
          }

          v365 = [v248 stringWithDuration:v247 durationFormat:v246];
          if (v365)
          {
            v296 = v365;

            goto LABEL_80;
          }

LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        goto LABEL_78;
      }

      if (*(v488 + 40))
      {
        goto LABEL_125;
      }

      v215 = *(v488 + 32);
      if (floor(v215) <= 0.0)
      {
        goto LABEL_125;
      }

      if (a3)
      {
        v216 = [a3 fiui_activityType];
LABEL_108:
        v341 = FIUIDistanceTypeForActivityType();
        v342 = v484;
        v343 = [v484 unitManager];
        if (!v343)
        {
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v344 = v343;
        v473 = v81;
        v345 = [v343 paceDistanceUnitForDistanceType:v341];

        v346 = [objc_opt_self() meterUnit];
        v347 = [objc_opt_self() quantityWithUnit:v346 doubleValue:v215];

        v470 = v216;
        v348 = FIUIPaceFormatForWorkoutActivityType();
        v349 = [v342 localizedShortUnitStringForDistanceUnit:v345];
        v471 = v347;
        if (v349)
        {
          v472 = v82;
          v350 = v349;
          v351 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v353 = v352;

          v354 = FIUINumberOfUnitsInPaceForPaceFormat();
          v355 = [objc_opt_self() mainBundle];
          if (v354 < 2)
          {
            v366 = String._bridgeToObjectiveC()();
            v367 = [v355 localizedStringForKey:v366 value:0 table:0];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_100140278(&unk_1008E4E50);
            v368 = swift_allocObject();
            *(v368 + 16) = xmmword_1006D46C0;
            v493 = v351;
            v494 = v353;
            sub_10000FCBC();
            v369 = StringProtocol.localizedUppercase.getter();
            v371 = v370;
            *(v368 + 56) = &type metadata for String;
            *(v368 + 64) = sub_10000A788();
            *(v368 + 32) = v369;
            *(v368 + 40) = v371;
          }

          else
          {
            v356 = String._bridgeToObjectiveC()();
            v357 = [v355 localizedStringForKey:v356 value:0 table:0];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_100140278(&unk_1008E4E50);
            v358 = swift_allocObject();
            *(v358 + 16) = xmmword_1006D1F70;
            v359 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v354];
            *(v358 + 56) = sub_1000059F8(0, &qword_1008E1750);
            *(v358 + 64) = sub_1001983C8();
            *(v358 + 32) = v359;
            v493 = v351;
            v494 = v353;
            sub_10000FCBC();
            v360 = StringProtocol.localizedUppercase.getter();
            v362 = v361;
            *(v358 + 96) = &type metadata for String;
            *(v358 + 104) = sub_10000A788();
            *(v358 + 72) = v360;
            *(v358 + 80) = v362;
          }

          v363 = String.init(format:_:)();
          v364 = v372;

          v82 = v472;
          v342 = v484;
          v347 = v471;
        }

        else
        {
          v363 = 0;
          v364 = 0xE000000000000000;
        }

        v373 = *(v488 + 64);
        if ((*(v488 + 80) & 1) == 0 && *(v488 + 72) > 0.0)
        {
          v373 = *(v488 + 72);
        }

        v374 = [v342 localizedPaceStringWithDistance:v347 overDuration:v348 paceFormat:v341 distanceType:v373];
        if (v374)
        {
          v375 = v374;
          v376 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v488 = v363;
          v377 = v376;
          v379 = v378;

          v380 = [objc_opt_self() mainBundle];
          v381 = String._bridgeToObjectiveC()();
          v382 = v82;
          v383 = [v380 localizedStringForKey:v381 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v384 = swift_allocObject();
          *(v384 + 16) = xmmword_1006D1F70;
          *(v384 + 56) = &type metadata for String;
          v385 = sub_10000A788();
          *(v384 + 32) = v377;
          *(v384 + 40) = v379;
          *(v384 + 96) = &type metadata for String;
          *(v384 + 104) = v385;
          v386 = v488;
          *(v384 + 64) = v385;
          *(v384 + 72) = v386;
          *(v384 + 80) = v364;
          v489 = v379;

          String.init(format:_:)();

          AttributeContainer.init()();
          v387 = v458;
          AttributedString.init(_:attributes:)();
          v493 = v382;
          v382;
          AttributedString.subscript.setter();
          v493 = v386;
          v494 = v364;
          v388 = type metadata accessor for Locale();
          v389 = v479;
          (*(*(v388 - 8) + 56))(v479, 1, 1, v388);
          sub_10007BD90();
          sub_10000FCBC();
          v390 = v459;
          v391 = v483;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v389, &qword_1008EB540);
          if ((*(v480 + 48))(v390, 1, v482) == 1)
          {
            v392 = &qword_1008E1900;
          }

          else
          {
            v400 = v390;
            v390 = v451;
            sub_10007BE08(v400, v451);
            v401 = UIFont.smallCapsVersion()().super.isa;
            sub_10007C0F0();
            v402 = AttributedString.subscript.modify();
            v495 = v401;
            AttributedSubstring.subscript.setter();
            v402(&v493, 0);
            v392 = &qword_1008E1908;
          }

          sub_10000EA04(v390, v392);
          v403 = v473;
          v404 = v485;
          v405 = v471;
          (*(v478 + 32))(v487, v387, v391);

          return v404(v490, v403);
        }

        v81 = v473;
        v83 = v490;
LABEL_125:
        v393 = swift_getKeyPath();
        __chkstk_darwin(v393);
        swift_getKeyPath();
        sub_10005FAB0();
        v394 = v475;
        AttributeContainer.subscript.getter();

        v493 = static Color.gray.getter();
        v395 = v491;
        v396 = v477;
        AttributeContainer.Builder.callAsFunction(_:)();

        (*(v476 + 8))(v394, v396);
        v397 = [objc_opt_self() mainBundle];
        v398 = String._bridgeToObjectiveC()();
        v399 = [v397 localizedStringForKey:v398 value:0 table:0];
LABEL_136:
        v436 = v399;

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v489 + 2))(v474, v395, v81);
        AttributedString.init(_:attributes:)();
        v437 = v485;
        v485(v395, v81);
        return v437(v83, v81);
      }

      v216 = [v473 fiui_activityType];
      if (v216)
      {
        goto LABEL_108;
      }

LABEL_97:
      AttributedString.init(stringLiteral:)();
      goto LABEL_98;
    }

    if (a5 != 4)
    {
      if (a5 == 5)
      {
        v147 = [objc_opt_self() localizedShortPowerUnitString];
        if (!v147)
        {
          goto LABEL_97;
        }

        v472 = v82;
        v148 = v147;
        v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v151 = v150;

        v152 = *(v84 + 112);
        if (v152)
        {
          v473 = v81;
          [v152 _value];
          v154 = v153;
          v155 = objc_opt_self();
          v156 = [objc_allocWithZone(NSNumber) initWithDouble:v154];
          v157 = [v155 localizedStringFromNumber:v156 numberStyle:0];

          v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v160 = v159;

          v495 = v149;
          v496 = v151;
          sub_10000FCBC();
          v161 = StringProtocol.localizedUppercase.getter();
          v163 = v162;

          v164 = [objc_opt_self() mainBundle];
          v165 = String._bridgeToObjectiveC()();
          v166 = [v164 localizedStringForKey:v165 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v167 = swift_allocObject();
          *(v167 + 16) = xmmword_1006D1F70;
          *(v167 + 56) = &type metadata for String;
          v168 = sub_10000A788();
          *(v167 + 32) = v158;
          *(v167 + 40) = v160;
          *(v167 + 96) = &type metadata for String;
          *(v167 + 104) = v168;
          *(v167 + 64) = v168;
          *(v167 + 72) = v161;
          *(v167 + 80) = v163;
          v489 = v160;

          String.init(format:_:)();

          AttributeContainer.init()();
          v169 = v466;
          AttributedString.init(_:attributes:)();
          v493 = v472;
          v472;
          AttributedString.subscript.setter();
          v493 = v161;
          v494 = v163;
          v170 = type metadata accessor for Locale();
          v171 = v479;
          (*(*(v170 - 8) + 56))(v479, 1, 1, v170);
          sub_10007BD90();
          v172 = v468;
          v173 = v483;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v171, &qword_1008EB540);
          if ((*(v480 + 48))(v172, 1, v482) == 1)
          {
            v174 = &qword_1008E1900;
          }

          else
          {
            v298 = v172;
            v172 = v461;
            sub_10007BE08(v298, v461);
            v299 = UIFont.smallCapsVersion()().super.isa;
            sub_10007C0F0();
            v300 = AttributedString.subscript.modify();
            v492 = v299;
            AttributedSubstring.subscript.setter();
            v300(&v493, 0);
            v174 = &qword_1008E1908;
          }

          sub_10000EA04(v172, v174);
          (*(v478 + 32))(v487, v169, v173);

          v214 = v83;
          goto LABEL_140;
        }

LABEL_63:

        goto LABEL_97;
      }

      goto LABEL_32;
    }

    v217 = *(v488 + 104);
    if (!v217)
    {
      goto LABEL_97;
    }

    v113 = v217;
    v218 = [v484 localizedStringWithHeartRate:v113];
    if (v218)
    {
      v489 = v113;
      v473 = v81;
      v219 = v218;
      v488 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v221 = v220;

      v222 = FIUIBundle();
      if (!v222)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v223 = v222;
      v224 = String._bridgeToObjectiveC()();
      v225 = [v223 localizedStringForKey:v224 value:0 table:0];

      v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v228 = v227;

      v495 = v226;
      v496 = v228;
      sub_10000FCBC();
      v229 = StringProtocol.localizedUppercase.getter();
      v231 = v230;

      v232 = [objc_opt_self() mainBundle];
      v233 = String._bridgeToObjectiveC()();
      v234 = [v232 localizedStringForKey:v233 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50);
      v235 = swift_allocObject();
      *(v235 + 16) = xmmword_1006D1F70;
      *(v235 + 56) = &type metadata for String;
      v236 = sub_10000A788();
      *(v235 + 32) = v488;
      *(v235 + 40) = v221;
      *(v235 + 96) = &type metadata for String;
      *(v235 + 104) = v236;
      *(v235 + 64) = v236;
      *(v235 + 72) = v229;
      *(v235 + 80) = v231;
      v488 = v221;

      String.init(format:_:)();

      AttributeContainer.init()();
      v237 = v465;
      AttributedString.init(_:attributes:)();
      v493 = v82;
      v82;
      AttributedString.subscript.setter();
      v493 = v229;
      v494 = v231;
      v238 = type metadata accessor for Locale();
      v239 = v479;
      (*(*(v238 - 8) + 56))(v479, 1, 1, v238);
      sub_10007BD90();
      v240 = v467;
      v241 = v483;
      AttributedStringProtocol.range<A>(of:options:locale:)();
      sub_10000EA04(v239, &qword_1008EB540);
      if ((*(v480 + 48))(v240, 1, v482) == 1)
      {
        v242 = &qword_1008E1900;
        v243 = v240;
      }

      else
      {
        v301 = v460;
        sub_10007BE08(v240, v460);
        v302 = UIFont.smallCapsVersion()().super.isa;
        sub_10007C0F0();
        v303 = AttributedString.subscript.modify();
        v492 = v302;
        AttributedSubstring.subscript.setter();
        v303(&v493, 0);
        v242 = &qword_1008E1908;
        v243 = v301;
      }

      sub_10000EA04(v243, v242);
      v304 = v473;
      v305 = v490;
      v306 = v485;
      v307 = v489;
      (*(v478 + 32))(v487, v237, v241);

      return v306(v305, v304);
    }

LABEL_96:

    goto LABEL_97;
  }

  v84 = v488;
  if (a5 <= 8u)
  {
    if (a5 != 7)
    {
      if (a3)
      {
        v207 = [a3 fiui_activityType];
      }

      else
      {
        v207 = [v473 fiui_activityType];
        if (!v207)
        {
          goto LABEL_97;
        }
      }

      sub_10020E114(v207, v84, v484, v487);
LABEL_75:

LABEL_98:
      v214 = v83;
      goto LABEL_99;
    }

    v205 = [v484 unitManager];
    if (!v205)
    {
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v206 = v205;
    v207 = [v205 userActiveEnergyBurnedUnit];

    v208 = *(v84 + 88);
    if (v208)
    {
      [v208 doubleValueForUnit:v207];
      v210 = v209;
      if (qword_1008DA670 != -1)
      {
        swift_once();
      }

      v211 = qword_1008E18E8;
      v212 = [objc_allocWithZone(NSNumber) initWithDouble:v210];
      v213 = [v211 stringFromNumber:v212];

      if (v213)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v489 + 2))(v491, v83, v81);
        AttributedString.init(_:attributes:)();

        v214 = v83;
LABEL_99:
        v297 = v81;
        return v485(v214, v297);
      }
    }

LABEL_72:
    AttributedString.init(stringLiteral:)();
    goto LABEL_75;
  }

  if (a5 != 9)
  {
    if (a5 == 10)
    {
      v112 = *(v488 + 152);
      if (!v112)
      {
        goto LABEL_97;
      }

      v113 = v112;
      v114 = v484;
      v115 = [v484 unitManager];
      if (!v115)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v116 = v115;
      v117 = [v115 userDistanceElevationUnit];

      v118 = [objc_opt_self() meterUnit];
      [v113 doubleValueForUnit:v118];
      v120 = v119;

      v121 = [v114 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:v120];
      if (v121)
      {
        v473 = v81;
        v122 = v121;
        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v124;

        v126 = [v114 localizedShortUnitStringForDistanceUnit:v117 textCase:1];
        if (v126)
        {
          v127 = v126;
          v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v129 = v82;
          v131 = v130;

          v495 = v128;
          v496 = v131;
          v488 = sub_10000FCBC();
          v132 = StringProtocol.localizedUppercase.getter();
          v134 = v133;

          v135 = [objc_opt_self() mainBundle];
          v136 = String._bridgeToObjectiveC()();
          v137 = [v135 localizedStringForKey:v136 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v138 = swift_allocObject();
          *(v138 + 16) = xmmword_1006D1F70;
          *(v138 + 56) = &type metadata for String;
          v139 = sub_10000A788();
          *(v138 + 32) = v123;
          *(v138 + 40) = v125;
          *(v138 + 96) = &type metadata for String;
          *(v138 + 104) = v139;
          *(v138 + 64) = v139;
          *(v138 + 72) = v132;
          *(v138 + 80) = v134;
          v489 = v125;

          String.init(format:_:)();

          AttributeContainer.init()();
          v140 = v463;
          AttributedString.init(_:attributes:)();
          v493 = v129;
          v129;
          AttributedString.subscript.setter();
          v493 = v132;
          v494 = v134;
          v141 = type metadata accessor for Locale();
          v142 = v479;
          (*(*(v141 - 8) + 56))(v479, 1, 1, v141);
          sub_10007BD90();
          v143 = v464;
          v144 = v483;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v142, &qword_1008EB540);
          if ((*(v480 + 48))(v143, 1, v482) == 1)
          {
            v145 = &qword_1008E1900;
            v146 = v143;
          }

          else
          {
            v332 = v457;
            sub_10007BE08(v143, v457);
            v333 = UIFont.smallCapsVersion()().super.isa;
            sub_10007C0F0();
            v334 = AttributedString.subscript.modify();
            v492 = v333;
            AttributedSubstring.subscript.setter();
            v334(&v493, 0);
            v145 = &qword_1008E1908;
            v146 = v332;
          }

          sub_10000EA04(v146, v145);
          (*(v478 + 32))(v487, v140, v144);

          goto LABEL_139;
        }

        v81 = v473;
        v83 = v490;
      }

      goto LABEL_96;
    }

    if (a3)
    {
      v207 = [a3 fiui_activityType];
      v244 = v484;
    }

    else
    {
      v207 = [v473 fiui_activityType];
      v244 = v484;
      if (!v207)
      {
        goto LABEL_97;
      }
    }

    v260 = *(v84 + 144);
    if (v260)
    {
      v261 = objc_opt_self();
      v262 = v260;
      v263 = [v261 meterUnit];
      v264 = String._bridgeToObjectiveC()();
      v265 = [v261 unitFromString:v264];

      [v262 doubleValueForUnit:v265];
      v267 = v266;

      v268 = [objc_opt_self() quantityWithUnit:v263 doubleValue:v267];
      v269 = [v244 localizedPaceStringWithDistance:v268 overDuration:4 paceFormat:FIUIDistanceTypeForActivityType() distanceType:1.0];
      if (v269)
      {
        v472 = v82;
        v270 = v269;
        v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v273 = v272;

        v274 = [v244 localizedSpeedUnitStringForActivityType:v207];
        if (v274)
        {
          v473 = v81;
          v275 = v274;
          v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v489 = v271;
          v278 = v277;

          v495 = v276;
          v496 = v278;
          v488 = sub_10000FCBC();
          v279 = StringProtocol.localizedUppercase.getter();
          v281 = v280;

          v282 = [objc_opt_self() mainBundle];
          v283 = String._bridgeToObjectiveC()();
          v284 = [v282 localizedStringForKey:v283 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v285 = swift_allocObject();
          *(v285 + 16) = xmmword_1006D1F70;
          *(v285 + 56) = &type metadata for String;
          v286 = sub_10000A788();
          *(v285 + 32) = v489;
          *(v285 + 40) = v273;
          *(v285 + 96) = &type metadata for String;
          *(v285 + 104) = v286;
          *(v285 + 64) = v286;
          *(v285 + 72) = v279;
          *(v285 + 80) = v281;
          v489 = v273;

          String.init(format:_:)();

          AttributeContainer.init()();
          v287 = v470;
          AttributedString.init(_:attributes:)();
          v493 = v472;
          v491 = v472;
          AttributedString.subscript.setter();
          v493 = v279;
          v494 = v281;
          v288 = type metadata accessor for Locale();
          v289 = v479;
          (*(*(v288 - 8) + 56))(v479, 1, 1, v288);
          sub_10007BD90();
          v290 = v462;
          v291 = v483;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v289, &qword_1008EB540);
          if ((*(v480 + 48))(v290, 1, v482) == 1)
          {
            v292 = &qword_1008E1900;
            v293 = v290;
          }

          else
          {
            v335 = v290;
            v336 = v456;
            sub_10007BE08(v335, v456);
            v337 = UIFont.smallCapsVersion()().super.isa;
            sub_10007C0F0();
            v338 = AttributedString.subscript.modify();
            v492 = v337;
            AttributedSubstring.subscript.setter();
            v338(&v493, 0);
            v292 = &qword_1008E1908;
            v293 = v336;
            v287 = v470;
          }

          sub_10000EA04(v293, v292);
          v339 = v473;
          v340 = v485;
          (*(v478 + 32))(v487, v287, v291);

          return v340(v490, v339);
        }
      }

      AttributedString.init(stringLiteral:)();

      v214 = v490;
      goto LABEL_99;
    }

    goto LABEL_72;
  }

LABEL_32:
  v175 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType:v77];
  if (!v175)
  {
    goto LABEL_97;
  }

  v176 = v175;
  v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v179 = v178;

  v180 = *(v84 + 96);
  if (!v180)
  {
    goto LABEL_63;
  }

  v473 = v81;
  v181 = objc_opt_self();
  v182 = v180;
  v183 = [v181 _countPerMinuteUnit];
  [v182 doubleValueForUnit:v183];
  v185 = v184;

  v186 = objc_opt_self();
  v187 = [objc_allocWithZone(NSNumber) initWithDouble:v185];
  v188 = [v186 localizedStringFromNumber:v187 numberStyle:0];

  v489 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v190 = v189;

  v495 = v177;
  v496 = v179;
  sub_10000FCBC();
  v191 = StringProtocol.localizedUppercase.getter();
  v193 = v192;

  v194 = [objc_opt_self() mainBundle];
  v195 = String._bridgeToObjectiveC()();
  v196 = [v194 localizedStringForKey:v195 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v197 = swift_allocObject();
  *(v197 + 16) = xmmword_1006D1F70;
  *(v197 + 56) = &type metadata for String;
  v198 = sub_10000A788();
  *(v197 + 32) = v489;
  *(v197 + 40) = v190;
  *(v197 + 96) = &type metadata for String;
  *(v197 + 104) = v198;
  *(v197 + 64) = v198;
  *(v197 + 72) = v191;
  *(v197 + 80) = v193;
  v489 = v190;

  String.init(format:_:)();

  AttributeContainer.init()();
  v199 = v471;
  AttributedString.init(_:attributes:)();
  v493 = v82;
  v82;
  AttributedString.subscript.setter();
  v493 = v191;
  v494 = v193;
  v200 = type metadata accessor for Locale();
  v201 = v479;
  (*(*(v200 - 8) + 56))(v479, 1, 1, v200);
  sub_10007BD90();
  v202 = v472;
  v203 = v483;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v201, &qword_1008EB540);
  if ((*(v480 + 48))(v202, 1, v482) == 1)
  {
    v204 = &qword_1008E1900;
  }

  else
  {
    v254 = v202;
    v202 = v469;
    sub_10007BE08(v254, v469);
    v255 = UIFont.smallCapsVersion()().super.isa;
    sub_10007C0F0();
    v256 = AttributedString.subscript.modify();
    v492 = v255;
    AttributedSubstring.subscript.setter();
    v256(&v493, 0);
    v204 = &qword_1008E1908;
  }

  sub_10000EA04(v202, v204);
  v257 = v473;
  v258 = v485;
  (*(v478 + 32))(v487, v199, v203);

  return v258(v490, v257);
}

void sub_10020E114(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v8 - 8);
  v10 = &v63 - v9;
  v11 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v11 - 8);
  v72 = &v63 - v12;
  v73 = sub_100140278(&qword_1008E1908);
  v13 = *(v73 - 8);
  __chkstk_darwin(v73);
  v15 = &v63 - v14;
  v16 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for AttributedString();
  __chkstk_darwin(v17);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 136);
  if (v22)
  {
    v69 = v13;
    v70 = v19;
    v71 = v18;
    v68 = v15;
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 meterUnit];
    v26 = a4;
    v27 = String._bridgeToObjectiveC()();
    v28 = [v23 unitFromString:v27];

    a4 = v26;
    [v24 doubleValueForUnit:v28];
    v30 = v29;

    v31 = [objc_opt_self() quantityWithUnit:v25 doubleValue:v30];
    v32 = 1.0;
    if (!v31)
    {
LABEL_12:
      v74 = 0;
LABEL_15:
      AttributedString.init(stringLiteral:)();
      v59 = v74;

      return;
    }
  }

  else
  {
    if (*(a2 + 40))
    {
      goto LABEL_12;
    }

    v69 = v13;
    v70 = v19;
    v71 = v18;
    v68 = v15;
    v33 = *(a2 + 32);
    v34 = [objc_opt_self() meterUnit];
    v31 = [objc_opt_self() quantityWithUnit:v34 doubleValue:v33];

    v32 = *(a2 + 64);
    if (!v31)
    {
      goto LABEL_12;
    }
  }

  v74 = v31;
  v35 = [a3 localizedPaceStringWithDistance:v74 overDuration:4 paceFormat:FIUIDistanceTypeForActivityType() distanceType:v32];
  if (!v35)
  {
LABEL_14:

    goto LABEL_15;
  }

  v36 = v35;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = [a3 localizedSpeedUnitStringForActivityType:a1];
  if (!v40)
  {

    goto LABEL_14;
  }

  v41 = v40;
  v66 = v37;
  v67 = a4;

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v76[4] = v42;
  v76[5] = v44;
  v65 = sub_10000FCBC();
  v64 = StringProtocol.localizedUppercase.getter();
  v46 = v45;

  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v63 = qword_1009252A0;
  v47 = [objc_opt_self() mainBundle];
  v48 = String._bridgeToObjectiveC()();
  v49 = [v47 localizedStringForKey:v48 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1006D1F70;
  *(v50 + 56) = &type metadata for String;
  v51 = sub_10000A788();
  *(v50 + 32) = v66;
  *(v50 + 40) = v39;
  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v51;
  v52 = v64;
  *(v50 + 64) = v51;
  *(v50 + 72) = v52;
  *(v50 + 80) = v46;
  v66 = v39;

  String.init(format:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v53 = v63;
  v76[0] = v63;
  sub_1001ED5AC();
  v53;
  AttributedString.subscript.setter();
  v76[0] = v52;
  v76[1] = v46;
  v54 = type metadata accessor for Locale();
  (*(*(v54 - 8) + 56))(v10, 1, 1, v54);
  sub_10007BD90();
  v56 = v71;
  v55 = v72;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v10, &qword_1008EB540);
  if ((*(v69 + 48))(v55, 1, v73) == 1)
  {
    v57 = &qword_1008E1900;
    v58 = v55;
  }

  else
  {
    v60 = v68;
    sub_10007BE08(v55, v68);
    isa = UIFont.smallCapsVersion()().super.isa;
    sub_10007C0F0();
    v62 = AttributedString.subscript.modify();
    v75 = isa;
    AttributedSubstring.subscript.setter();
    v62(v76, 0);
    v57 = &qword_1008E1908;
    v58 = v60;
  }

  sub_10000EA04(v58, v57);
  (*(v70 + 32))(v67, v21, v56);
}

uint64_t sub_10020E8F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100209B68(*a1);
  v5 = v4;
  if (v3 == sub_100209B68(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10020E97C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100209B68(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020E9E0()
{
  sub_100209B68(*v0);
  String.hash(into:)();
}

Swift::Int sub_10020EA34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100209B68(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10020EA94@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10020EC14(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10020EB78()
{
  result = qword_1008E18F0;
  if (!qword_1008E18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E18F0);
  }

  return result;
}

unint64_t sub_10020EC14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100842400, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10020EC60()
{
  result = qword_1008E1948;
  if (!qword_1008E1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1948);
  }

  return result;
}

uint64_t sub_10020ECBC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10021447C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10020EFBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6863746177;
  }

  else
  {
    v3 = 0x656E6F687069;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6863746177;
  }

  else
  {
    v5 = 0x656E6F687069;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10020F05C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020F0D8()
{
  String.hash(into:)();
}

Swift::Int sub_10020F140()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10020F1C4(uint64_t *a1@<X8>)
{
  v2 = 0x656E6F687069;
  if (*v1)
  {
    v2 = 0x6863746177;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10020F1FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x3434333734393431;
  }

  else
  {
    v3 = 0x3235333734393431;
  }

  if (v2)
  {
    v4 = 0xEA00000000003631;
  }

  else
  {
    v4 = 0xEA00000000003037;
  }

  if (*a2)
  {
    v5 = 0x3434333734393431;
  }

  else
  {
    v5 = 0x3235333734393431;
  }

  if (*a2)
  {
    v6 = 0xEA00000000003037;
  }

  else
  {
    v6 = 0xEA00000000003631;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10020F2A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020F330()
{
  String.hash(into:)();
}

Swift::Int sub_10020F3A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10020F434(uint64_t *a1@<X8>)
{
  v2 = 0x3235333734393431;
  if (*v1)
  {
    v2 = 0x3434333734393431;
  }

  v3 = 0xEA00000000003037;
  if (!*v1)
  {
    v3 = 0xEA00000000003631;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10020F478()
{
  v1 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  swift_defaultActor_initialize();
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 112) = 1;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = sub_100653FFC(0, 0, v3, &unk_1006DE1E8, v6);
  v8 = *(v0 + 112);
  *(v0 + 112) = v7;
  sub_1002151B0(v8);
  return v0;
}

uint64_t sub_10020F5E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10020F6D0;

    return sub_10020F870();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10020F6D0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10020F80C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10020F80C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020F870()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_10020F900, v0, 0);
}

void sub_10020F900()
{
  v55 = v0;
  v1 = v0[3];
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  if (*(v1 + 112))
  {
    v4 = objc_opt_self();
    v5 = [v4 bagSubProfile];
    if (v5)
    {
      v2 = v5;
      v6 = [v4 bagSubProfileVersion];
      if (v6)
      {
        v7 = v6;
        v8 = v0[3];
        v9 = [objc_opt_self() bagForProfile:v2 profileVersion:v6];

        v10 = *(v8 + 120);
        *(v8 + 120) = v9;
        v11 = v9;

        v12 = String._bridgeToObjectiveC()();
        v13 = [v11 stringForKey:v12];

        v0[2] = 0;
        v14 = [v13 valueWithError:v0 + 2];

        v15 = v0[2];
        if (v14 && (v16 = v0[3], v17 = *(v16 + 136), *(v16 + 136) = v14, v18 = v15, v17, v19 = String._bridgeToObjectiveC()(), v20 = [v11 URLForKey:v19], v19, v0[2] = 0, v21 = objc_msgSend(v20, "valueWithError:", v0 + 2), v20, v15 = v0[2], v21))
        {
          v22 = v0[3];
          v23 = v22[18];
          v22[18] = v21;
          v24 = v15;

          v25 = objc_allocWithZone(AMSMediaTokenService);
          v26 = v11;
          v27 = String._bridgeToObjectiveC()();
          v28 = [v25 initWithClientIdentifier:v27 bag:v26];

          v29 = v22[16];
          v22[16] = v28;
          v30 = v28;

          v31 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v30 bag:v26];
          v32 = v22[20];
          v22[20] = v31;

          v33 = [objc_opt_self() ephemeralSessionConfiguration];
          v34 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v33];

          v35 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v30];
          [v34 setProtocolHandler:v35];
          v36 = v22[19];
          v22[19] = v34;
          v37 = v34;

          static os_log_type_t.default.getter();
          v38 = HKLogActivity;
          os_log(_:dso:log:_:_:)();

          v39 = *(v1 + 112);
          *(v1 + 112) = 0;
          sub_1002151B0(v39);
        }

        else
        {
          v40 = v15;
          v41 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v42 = *(v1 + 112);
          *(v1 + 112) = 1;
          sub_1002151B0(v42);
          v43 = static os_log_type_t.error.getter();
          v44 = HKLogActivity;
          if (os_log_type_enabled(HKLogActivity, v43))
          {
            v45 = v44;
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v54 = v47;
            *v46 = 136315138;
            v0[2] = v41;
            swift_errorRetain();
            sub_100140278(&qword_1008EB640);
            v48 = String.init<A>(describing:)();
            v50 = sub_10000AFDC(v48, v49, &v54);

            *(v46 + 4) = v50;
            _os_log_impl(&_mh_execute_header, v45, v43, "[AppStoreQuery] Failed to activate query: %s", v46, 0xCu);
            sub_100005A40(v47);
          }

          else
          {
          }
        }

        v53 = v0[1];
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  static os_log_type_t.error.getter();
  v51 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  sub_100214354();
  swift_allocError();
  *v52 = 9;
  swift_willThrow();
  v53 = v0[1];
LABEL_12:

  v53();
}

uint64_t sub_10020FF14(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 128) = a3;
  *(v4 + 16) = a1;
  sub_100140278(&unk_1008EAF30);
  *(v4 + 40) = swift_task_alloc();
  v5 = type metadata accessor for URLComponents();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100210020, v3, 0);
}

uint64_t sub_100210020()
{
  v54 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_100210FF4(*(v0 + 24), *(v0 + 128) & 1, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000EA04(*(v0 + 40), &unk_1008EAF30);
    v4 = static os_log_type_t.error.getter();
    v5 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v4))
    {
      v6 = v5;
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v53[0] = v8;
      *v7 = 136315138;
      v9 = Array.description.getter();
      v11 = sub_10000AFDC(v9, v10, v53);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v6, v4, "[AppStoreQuery] Unable to create URL for identifier %s", v7, 0xCu);
      sub_100005A40(v8);
    }

    sub_100214354();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
    goto LABEL_9;
  }

  v13 = *(v0 + 32);
  (*(*(v0 + 56) + 32))(*(v0 + 72), *(v0 + 40), *(v0 + 48));
  v14 = *(v13 + 160);
  *(v0 + 80) = v14;
  v15 = *(v0 + 72);
  if (!v14)
  {
    v38 = *(v0 + 48);
    v39 = *(v0 + 56);
    static os_log_type_t.error.getter();
    v40 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    sub_100214354();
    swift_allocError();
    *v41 = 6;
    swift_willThrow();
    (*(v39 + 8))(v15, v38);
LABEL_9:

    v42 = *(v0 + 8);

    return v42();
  }

  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 48);
  v19 = v14;
  isa = URLComponents._bridgeToObjectiveC()().super.isa;
  v21 = [v19 requestWithComponents:isa];
  *(v0 + 88) = v21;

  v22 = static os_log_type_t.default.getter();
  v23 = HKLogActivity;
  (*(v17 + 16))(v16, v15, v18);
  v24 = os_log_type_enabled(v23, v22);
  v25 = *(v0 + 56);
  v26 = *(v0 + 64);
  v27 = *(v0 + 48);
  if (v24)
  {
    log = v23;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v53[0] = v29;
    *v28 = 136315138;
    sub_100215470(&qword_1008E1B38, 255, &type metadata accessor for URLComponents);
    v51 = v22;
    v30 = v21;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v34 = *(v25 + 8);
    v34(v26, v27);
    v35 = v31;
    v21 = v30;
    v36 = sub_10000AFDC(v35, v33, v53);

    *(v28 + 4) = v36;
    _os_log_impl(&_mh_execute_header, log, v51, "[AppStoreQuery] Encoding request with components %s.", v28, 0xCu);
    sub_100005A40(v29);
  }

  else
  {
    v34 = *(v25 + 8);
    v34(*(v0 + 64), *(v0 + 48));
  }

  *(v0 + 96) = v34;
  v44 = *(v0 + 24);
  v45 = *(v0 + 32);
  v46 = sub_100215470(&qword_1008E1B10, v37, type metadata accessor for AppStoreQuery);
  v47 = swift_task_alloc();
  *(v0 + 104) = v47;
  *(v47 + 16) = v21;
  *(v47 + 24) = v44;
  v48 = swift_task_alloc();
  *(v0 + 112) = v48;
  v49 = type metadata accessor for URLRequest();
  *v48 = v0;
  v48[1] = sub_1002105C0;
  v50 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v50, v45, v46, 0xD000000000000021, 0x800000010074DED0, sub_100215468, v47, v49);
}

uint64_t sub_1002105C0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1002107C4;
  }

  else
  {
    v4 = sub_100210708;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100210708()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);

  v1(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002107C4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);

  v1(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

void sub_100210878(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008E1B40);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1002154B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002156FC;
  aBlock[3] = &unk_10084CBF0;
  v13 = _Block_copy(aBlock);

  [a2 addFinishBlock:v13];
  _Block_release(v13);
}

uint64_t sub_100210A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v53[-v12];
  __chkstk_darwin(v14);
  v16 = &v53[-v15];
  if (a2)
  {
    swift_errorRetain();
    v17 = static os_log_type_t.error.getter();
    v18 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v17))
    {
      v19 = v18;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v60 = a2;
      v61 = v21;
      *v20 = 136315394;
      swift_errorRetain();
      sub_100140278(&qword_1008EB640);
      v22 = String.init<A>(describing:)();
      v24 = sub_10000AFDC(v22, v23, &v61);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = Array.description.getter();
      v27 = sub_10000AFDC(v25, v26, &v61);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v17, "[AppStoreQuery] Received an error %s encoding the URL for identifiers %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    v61 = a2;
LABEL_5:
    sub_100140278(&qword_1008E1B40);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    v43 = static os_log_type_t.error.getter();
    v44 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v43))
    {
      v45 = v44;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v61 = v47;
      *v46 = 136315138;
      v48 = Array.description.getter();
      v50 = sub_10000AFDC(v48, v49, &v61);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v45, v43, "[AppStoreQuery] Unable to cast AMSURLRequest for identifiers %s.", v46, 0xCu);
      sub_100005A40(v47);
    }

    sub_100214354();
    v51 = swift_allocError();
    *v52 = 0;
    v61 = v51;
    goto LABEL_5;
  }

  v59 = a4;
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = static os_log_type_t.default.getter();
  v30 = HKLogActivity;
  v31 = *(v8 + 16);
  v31(v13, v16, v7);
  if (os_log_type_enabled(v30, v29))
  {
    v56 = v30;
    v32 = swift_slowAlloc();
    v58 = v31;
    v33 = v32;
    v55 = swift_slowAlloc();
    v61 = v55;
    *v33 = 136315394;
    v34 = Array.description.getter();
    v36 = sub_10000AFDC(v34, v35, &v61);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    sub_100215470(&qword_1008E1B20, 255, &type metadata accessor for URLRequest);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v8 + 16;
    v39 = v38;
    v40 = *(v8 + 8);
    v54 = v29;
    v40(v13, v7);
    v41 = sub_10000AFDC(v37, v39, &v61);

    *(v33 + 14) = v41;
    v42 = v56;
    _os_log_impl(&_mh_execute_header, v56, v54, "[AppStoreQuery] Successfully encoded URL request for identifiers %s and request %s", v33, 0x16u);
    swift_arrayDestroy();

    v31 = v58;
  }

  else
  {
    v40 = *(v8 + 8);
    v40(v13, v7);
  }

  v31(v10, v16, v7);
  sub_100140278(&qword_1008E1B40);
  CheckedContinuation.resume(returning:)();
  return (v40)(v16, v7);
}

uint64_t sub_100210FF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v7 - 8);
  v9 = v63 - v8;
  v10 = type metadata accessor for URLComponents();
  __chkstk_darwin(*(v10 - 8));
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 136);
  v71 = v14;
  if (!v13)
  {
    static os_log_type_t.error.getter();
    v26 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

LABEL_19:
    v29 = *(v71 + 56);
    v30 = a3;
    v31 = v10;
    goto LABEL_20;
  }

  v15 = *(v3 + 144);
  if (!v15)
  {
    v27 = v13;
    static os_log_type_t.error.getter();
    v28 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    goto LABEL_19;
  }

  v64 = a2;
  v65 = v9;
  v66 = v15;
  v67 = v12;
  v68 = v10;
  v69 = a3;
  v70 = v13;
  v16 = *(a1 + 16);
  v63[0] = a1;
  if (v16)
  {
    v17 = (a1 + 32);
    v18 = v13;
    v19 = v15;
    v20 = _swiftEmptyArrayStorage;
    do
    {
      if (*v17)
      {
        v21 = 0x3434333734393431;
      }

      else
      {
        v21 = 0x3235333734393431;
      }

      if (*v17)
      {
        v22 = 0xEA00000000003037;
      }

      else
      {
        v22 = 0xEA00000000003631;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100042744(0, *(v20 + 2) + 1, 1, v20);
      }

      v24 = *(v20 + 2);
      v23 = *(v20 + 3);
      if (v24 >= v23 >> 1)
      {
        v20 = sub_100042744((v23 > 1), v24 + 1, 1, v20);
      }

      *(v20 + 2) = v24 + 1;
      v25 = &v20[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
      ++v17;
      --v16;
    }

    while (v16);
    goto LABEL_24;
  }

  v20 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage[2];
  v34 = v13;
  v35 = v15;
  if (v33)
  {
LABEL_24:
    v72[0] = v20;
    sub_100140278(&unk_1008E99C0);
    sub_100020FC0();
    v63[1] = BidirectionalCollection<>.joined(separator:)();

    v36 = v67;
    URLComponents.init()();
    URLComponents.scheme.setter();
    v37 = v66;
    v38 = [v66 absoluteString];
    if (v38)
    {
      v39 = v38;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v40 = v68;
    v41 = v70;
    URLComponents.host.setter();
    v72[0] = 0;
    v72[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    strcpy(v72, "/v1/editorial/");
    HIBYTE(v72[1]) = -18;
    v42 = [v41 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46._countAndFlagsBits = v43;
    v46._object = v45;
    String.append(_:)(v46);

    v47._object = 0x800000010074DE50;
    v47._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v47);
    URLComponents.path.setter();
    sub_100140278(&unk_1008EAF40);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_1006D1F70;
    URLQueryItem.init(name:value:)();

    URLQueryItem.init(name:value:)();

    URLComponents.queryItems.setter();
    v48 = v65;
    URLComponents.url.getter();
    v49 = type metadata accessor for URL();
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {
      sub_10000EA04(v48, &unk_1008EB5B0);
      v50 = static os_log_type_t.error.getter();
      v51 = HKLogActivity;
      v52 = os_log_type_enabled(HKLogActivity, v50);
      v53 = v69;
      if (v52)
      {
        v54 = v51;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v72[0] = v56;
        *v55 = 136315138;
        v57 = Array.description.getter();
        v59 = sub_10000AFDC(v57, v58, v72);

        *(v55 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v54, v50, "[AppStoreQuery] Unable to create URL for identifiers %s", v55, 0xCu);
        sub_100005A40(v56);
      }

      else
      {
      }

      (*(v71 + 8))(v36, v40);
      return (*(v71 + 56))(v53, 1, 1, v40);
    }

    else
    {

      sub_10000EA04(v48, &unk_1008EB5B0);
      v60 = v69;
      (*(v71 + 32))(v69, v36, v40);
      return (*(v71 + 56))(v60, 0, 1, v40);
    }
  }

  v61 = v35;

  static os_log_type_t.error.getter();
  v62 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  v29 = *(v71 + 56);
  v31 = v68;
  v30 = v69;
LABEL_20:

  return v29(v30, 1, 1, v31);
}

uint64_t sub_100211804(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100211824, v1, 0);
}

uint64_t sub_100211824()
{
  v1 = v0[4];
  v2 = *(v1 + 152);
  v0[5] = v2;
  if (v2)
  {
    v3 = v0[3];
    v4 = v2;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v6 = [v4 dataTaskPromiseWithRequest:isa];
    v0[6] = v6;

    v8 = sub_100215470(&qword_1008E1B10, v7, type metadata accessor for AppStoreQuery);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *(v9 + 16) = v3;
    *(v9 + 24) = v6;
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_100211A64;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, v8, 0xD000000000000015, 0x800000010074DD70, sub_1002152C8, v9, &type metadata for EditorialItemsList);
  }

  else
  {
    static os_log_type_t.error.getter();
    v11 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    sub_100214354();
    swift_allocError();
    *v12 = 7;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100211A64()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_100211BF8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100211B8C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100211B8C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100211BF8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100211C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a3;
  v34 = a1;
  v38 = sub_100140278(&qword_1008E1B18);
  v4 = *(v38 - 8);
  v33 = *(v4 + 64);
  __chkstk_darwin(v38);
  v37 = &v29 - v5;
  v6 = type metadata accessor for URLRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = static os_log_type_t.default.getter();
  v13 = HKLogActivity;
  v14 = *(v7 + 16);
  v35 = a2;
  v31 = v14;
  v14(v11, a2, v6);
  if (os_log_type_enabled(v13, v12))
  {
    v30 = v13;
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v15 = 136315138;
    sub_100215470(&qword_1008E1B20, 255, &type metadata accessor for URLRequest);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v12;
    v19 = v18;
    (*(v7 + 8))(v11, v6);
    v20 = sub_10000AFDC(v16, v19, aBlock);

    *(v15 + 4) = v20;
    v21 = v30;
    _os_log_impl(&_mh_execute_header, v30, v17, "[AppStoreQuery] Begining EditorialItem download for request %s.", v15, 0xCu);
    sub_100005A40(v29);
  }

  else
  {
    (*(v7 + 8))(v11, v6);
  }

  v22 = v32;
  v31(v32, v35, v6);
  v23 = v37;
  v24 = v38;
  (*(v4 + 16))(v37, v34, v38);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = (v8 + *(v4 + 80) + v25) & ~*(v4 + 80);
  v27 = swift_allocObject();
  (*(v7 + 32))(v27 + v25, v22, v6);
  (*(v4 + 32))(v27 + v26, v23, v24);
  aBlock[4] = sub_1002152D0;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002156FC;
  aBlock[3] = &unk_10084CBA0;
  v28 = _Block_copy(aBlock);

  [v36 addFinishBlock:v28];
  _Block_release(v28);
}

uint64_t sub_1002120A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = &v70 - v10;
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v70 - v17;
  if (a2)
  {
    swift_errorRetain();
    v19 = static os_log_type_t.error.getter();
    v20 = HKLogActivity;
    (*(v8 + 16))(v18, a3, v7);
    if (os_log_type_enabled(v20, v19))
    {
      v71 = v20;
      v21 = v7;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v73 = a2;
      v74 = v23;
      *v22 = 136315650;
      swift_errorRetain();
      sub_100140278(&qword_1008EB640);
      v24 = String.init<A>(describing:)();
      v26 = sub_10000AFDC(v24, v25, &v74);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      sub_100215470(&qword_1008E1B20, 255, &type metadata accessor for URLRequest);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v8 + 8))(v18, v21);
      v30 = sub_10000AFDC(v27, v29, &v74);

      *(v22 + 14) = v30;
      *(v22 + 22) = 2080;
      v73 = a1;
      sub_100140278(&qword_1008E1B30);
      v31 = Optional.description.getter();
      v33 = sub_10000AFDC(v31, v32, &v74);

      *(v22 + 24) = v33;
      v34 = v71;
      _os_log_impl(&_mh_execute_header, v71, v19, "[AppStoreQuery] Received an error %s downloading the request %s. Result %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v8 + 8))(v18, v7);
    }

    v74 = a2;
LABEL_14:
    sub_100140278(&qword_1008E1B18);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    v39 = static os_log_type_t.error.getter();
    v40 = HKLogActivity;
    (*(v8 + 16))(v11, a3, v7);
    if (os_log_type_enabled(v40, v39))
    {
      v41 = v40;
      v42 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v42 = 136315394;
      sub_100215470(&qword_1008E1B20, 255, &type metadata accessor for URLRequest);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v7;
      v45 = v43;
      v47 = v46;
      (*(v8 + 8))(v11, v44);
      v48 = sub_10000AFDC(v45, v47, &v74);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v73 = 0;
      sub_100140278(&qword_1008DFED8);
      v49 = Optional.description.getter();
      v51 = sub_10000AFDC(v49, v50, &v74);

      *(v42 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v41, v39, "[AppStoreQuery] There are no apps for the request %s. The error is %s.", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v8 + 8))(v11, v7);
    }

    sub_100214354();
    v67 = swift_allocError();
    *v68 = 5;
    v74 = v67;
    goto LABEL_14;
  }

  v35 = [a1 data];
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1002153C0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v52 = v74;
  v53 = static os_log_type_t.default.getter();
  v54 = HKLogActivity;
  (*(v8 + 16))(v14, a3, v7);
  if (os_log_type_enabled(v54, v53))
  {
    v70 = v54;
    v56 = v52;
    v57 = v7;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v71 = v38;
    v60 = v59;
    v74 = v59;
    *v58 = 136315138;
    sub_100215470(&qword_1008E1B20, 255, &type metadata accessor for URLRequest);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = v57;
    v52 = v56;
    (*(v8 + 8))(v14, v64);
    v65 = sub_10000AFDC(v61, v63, &v74);

    *(v58 + 4) = v65;
    v66 = v70;
    _os_log_impl(&_mh_execute_header, v70, v53, "[AppStoreQuery] EditorialItem download complete for request %s.", v58, 0xCu);
    sub_100005A40(v60);
    v38 = v71;
  }

  else
  {
    (*(v8 + 8))(v14, v7);
  }

  v74 = v52;
  sub_100140278(&qword_1008E1B18);
  CheckedContinuation.resume(returning:)();
  return sub_10000AF88(v36, v38);
}

void sub_100212B08(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100212B94()
{
  sub_1002151B0(*(v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100212BEC()
{
  sub_100212B94();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100212C5C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100212C74(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100212CC8(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_100212D24(void *result, int a2)
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

unint64_t sub_100212D58()
{
  result = qword_1008E1AF8;
  if (!qword_1008E1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1AF8);
  }

  return result;
}

unint64_t sub_100212DB0()
{
  result = qword_1008E1B00;
  if (!qword_1008E1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1B00);
  }

  return result;
}

uint64_t sub_100212E04(uint64_t a1, char a2)
{
  *(v3 + 1008) = v2;
  *(v3 + 1096) = a2;
  *(v3 + 1000) = a1;
  v4 = type metadata accessor for URLRequest();
  *(v3 + 1016) = v4;
  *(v3 + 1024) = *(v4 - 8);
  *(v3 + 1032) = swift_task_alloc();

  return _swift_task_switch(sub_100212ECC, v2, 0);
}

uint64_t sub_100212ECC()
{
  v35 = v0;
  v1 = *(*(v0 + 1008) + 112);
  *(v0 + 1040) = v1;
  if (v1 >= 2)
  {

    v5 = static os_log_type_t.default.getter();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v5))
    {
      v7 = *(v0 + 1000);

      v8 = v6;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 134218242;
      *(v9 + 4) = *(v7 + 16);

      *(v9 + 12) = 2080;
      v11 = Array.description.getter();
      v13 = sub_10000AFDC(v11, v12, v34);

      *(v9 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v8, v5, "[AppStoreQuery] Fetching Editorial Items for %ld identifiers %s", v9, 0x16u);
      sub_100005A40(v10);
    }

    v14 = swift_task_alloc();
    *(v0 + 1048) = v14;
    v15 = sub_100140278(&qword_1008EB640);
    *v14 = v0;
    v14[1] = sub_100213398;

    return Task.value.getter(v15, v1, &type metadata for () + 8, v15, &protocol self-conformance witness table for Error);
  }

  else if (v1)
  {
    sub_100214354();
    swift_allocError();
    *v2 = 8;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v16 = [objc_opt_self() sharedConnection];
    if (v16 && (v17 = v16, v18 = [v16 isAppInstallationAllowed], v17, v18))
    {
      v19 = static os_log_type_t.default.getter();
      v20 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, v19))
      {
        v21 = *(v0 + 1000);

        v22 = v20;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v34[0] = v24;
        *v23 = 134218242;
        *(v23 + 4) = *(v21 + 16);

        *(v23 + 12) = 2080;
        v25 = Array.description.getter();
        v27 = sub_10000AFDC(v25, v26, v34);

        *(v23 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v22, v19, "[AppStoreQuery] Fetching Editorial Items for %ld identifiers %s", v23, 0x16u);
        sub_100005A40(v24);
      }

      v28 = *(v0 + 1096);
      v29 = swift_task_alloc();
      *(v0 + 1056) = v29;
      *v29 = v0;
      v29[1] = sub_1002137EC;
      v30 = *(v0 + 1032);
      v31 = *(v0 + 1000);

      return sub_10020FF14(v30, v31, v28 & 1);
    }

    else
    {
      static os_log_type_t.default.getter();
      v32 = HKLogActivity;
      os_log(_:dso:log:_:_:)();

      v33 = *(v0 + 8);

      return v33(_swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_100213398()
{
  v2 = *v1;

  v3 = *(v2 + 1008);
  if (v0)
  {

    v4 = sub_1002156F4;
  }

  else
  {
    v4 = sub_1002134D0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002134D0()
{
  v24 = v0;
  v1 = *(v0 + 1008);
  sub_1002151B0(*(v0 + 1040));
  if (*(v1 + 112))
  {
    sub_100214354();
    swift_allocError();
    *v2 = 8;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = [objc_opt_self() sharedConnection];
    if (v5 && (v6 = v5, v7 = [v5 isAppInstallationAllowed], v6, v7))
    {
      v8 = static os_log_type_t.default.getter();
      v9 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, v8))
      {
        v10 = *(v0 + 1000);

        v11 = v9;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v23 = v13;
        *v12 = 134218242;
        *(v12 + 4) = *(v10 + 16);

        *(v12 + 12) = 2080;
        v14 = Array.description.getter();
        v16 = sub_10000AFDC(v14, v15, &v23);

        *(v12 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v11, v8, "[AppStoreQuery] Fetching Editorial Items for %ld identifiers %s", v12, 0x16u);
        sub_100005A40(v13);
      }

      v17 = *(v0 + 1096);
      v18 = swift_task_alloc();
      *(v0 + 1056) = v18;
      *v18 = v0;
      v18[1] = sub_1002137EC;
      v19 = *(v0 + 1032);
      v20 = *(v0 + 1000);

      return sub_10020FF14(v19, v20, v17 & 1);
    }

    else
    {
      static os_log_type_t.default.getter();
      v21 = HKLogActivity;
      os_log(_:dso:log:_:_:)();

      v22 = *(v0 + 8);

      return v22(_swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_1002137EC()
{
  v2 = *v1;
  v2[133] = v0;

  if (v0)
  {
    v3 = v2[126];

    return _swift_task_switch(sub_100214270, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[134] = v4;
    *v4 = v2;
    v4[1] = sub_100213960;
    v5 = v2[129];

    return sub_100211804(v5);
  }
}

uint64_t sub_100213960(uint64_t a1)
{
  v4 = *v2;
  v4[135] = v1;

  v5 = v4[126];
  if (v1)
  {
    v6 = sub_1002142D4;
  }

  else
  {
    v4[136] = a1;
    v6 = sub_100213A9C;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100213A9C()
{
  v1 = _swiftEmptyArrayStorage;
  if (*(v0 + 1088))
  {
    v2 = *(v0 + 1088);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = 0;
  while (2)
  {
    v5 = &v2[3 * v4 + 6];
    v6 = v4;
    while (1)
    {
      if (v6 >= v2[2])
      {
        __break(1u);
        goto LABEL_68;
      }

      v7 = *v5;
      if ((*v5 - 1) >= 2)
      {
        break;
      }

LABEL_8:
      ++v6;
      v5 += 3;
      if (v3 == v6)
      {
        goto LABEL_17;
      }
    }

    if (!v7)
    {
      sub_1002143A8(0);
      goto LABEL_8;
    }

    sub_1001BCA04(*v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1001A24B0(0, v1[2] + 1, 1, v1);
    }

    v9 = v1[2];
    v8 = v1[3];
    if (v9 >= v8 >> 1)
    {
      v1 = sub_1001A24B0((v8 > 1), v9 + 1, 1, v1);
    }

    v4 = v6 + 1;
    v1[2] = v9 + 1;
    v1[v9 + 4] = v7;
    if (v3 - 1 != v6)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v10 = v1[2];
  if (v10)
  {
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v11 >= v1[2])
      {
        goto LABEL_69;
      }

      v13 = v1[v11 + 4];
      v14 = *(v13 + 16);
      v15 = *(v12 + 2);
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_70;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v16 <= *(v12 + 3) >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v18 = v15 + v14;
        }

        else
        {
          v18 = v15;
        }

        v12 = sub_1001A2388(isUniquelyReferenced_nonNull_native, v18, 1, v12);
        if (!*(v13 + 16))
        {
LABEL_19:

          if (v14)
          {
            goto LABEL_71;
          }

          goto LABEL_20;
        }
      }

      if ((*(v12 + 3) >> 1) - *(v12 + 2) < v14)
      {
        goto LABEL_72;
      }

      swift_arrayInitWithCopy();

      if (v14)
      {
        v19 = *(v12 + 2);
        v20 = __OFADD__(v19, v14);
        v21 = v19 + v14;
        if (v20)
        {
          goto LABEL_73;
        }

        *(v12 + 2) = v21;
      }

LABEL_20:
      if (v10 == ++v11)
      {
        goto LABEL_36;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_36:

  v22 = *(v12 + 2);
  if (!v22)
  {
    v25 = _swiftEmptyArrayStorage;
LABEL_59:
    v47 = (v0 + 992);

    v48 = [objc_opt_self() hiddenAppBundleIdentifiers];
    v49 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 992) = _swiftEmptyArrayStorage;

    sub_100214E7C(v25, v49, (v0 + 992));
    swift_bridgeObjectRelease_n();

    v50 = static os_log_type_t.default.getter();
    v51 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v50))
    {
      v52 = v51;
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      swift_beginAccess();
      *(v53 + 4) = *(*v47 + 16);
      _os_log_impl(&_mh_execute_header, v52, v50, "[AppStoreQuery] Found %ld apps to recommend", v53, 0xCu);
    }

    swift_beginAccess();
    v54 = *v47;
    if (*(*v47 + 16) <= 3uLL)
    {

      v56 = v54;
    }

    else
    {
      sub_100311450(*v47, v54 + 32, 0, 7uLL);
      v56 = v55;
    }

    v57 = *(v0 + 1032);
    v58 = *(v0 + 1024);
    v59 = *(v0 + 1016);
    v60 = sub_10019F4D0(v56);

    (*(v58 + 8))(v57, v59);

    v61 = *(v0 + 8);

    v61(v60);
    return;
  }

  v23 = 0;
  v24 = v12 + 224;
  v25 = _swiftEmptyArrayStorage;
LABEL_38:
  v65 = v25;
  v26 = &v24[208 * v23];
  v27 = v23;
  while (v27 < *(v12 + 2))
  {
    v28 = *(v26 - 24);
    v29 = *(v26 - 23);
    v30 = *(v26 - 22);
    v31 = *(v26 - 21);
    v71 = *(v26 - 6);
    v72 = *(v26 - 5);
    v69 = *(v26 - 8);
    v70 = *(v26 - 7);
    v75 = *(v26 - 2);
    v76 = *(v26 - 1);
    v73 = *(v26 - 4);
    v74 = *(v26 - 3);
    v67 = *(v26 - 10);
    v68 = *(v26 - 9);
    v77 = *v26;
    *(v0 + 16) = v30;
    *(v0 + 24) = v31;
    *(v0 + 128) = v73;
    *(v0 + 144) = v74;
    *(v0 + 160) = v75;
    *(v0 + 176) = v76;
    *(v0 + 64) = v69;
    *(v0 + 80) = v70;
    *(v0 + 96) = v71;
    *(v0 + 112) = v72;
    *(v0 + 32) = v67;
    *(v0 + 48) = v68;
    *(v0 + 192) = v77;
    if (sub_100085644(v0 + 16) != 1)
    {
      v32 = *(v0 + 200);
      if (v32)
      {
        v66 = *(v0 + 192);
        *(v0 + 304) = v73;
        *(v0 + 320) = v74;
        *(v0 + 336) = v75;
        *(v0 + 352) = v76;
        *(v0 + 240) = v69;
        *(v0 + 256) = v70;
        *(v0 + 272) = v71;
        *(v0 + 288) = v72;
        *(v0 + 208) = v67;
        *(v0 + 224) = v68;
        if (sub_1002143C8(v0 + 208) != 1)
        {
          v33 = *(v0 + 320);
          *(v0 + 464) = *(v0 + 304);
          *(v0 + 480) = v33;
          v34 = *(v0 + 352);
          *(v0 + 496) = *(v0 + 336);
          *(v0 + 512) = v34;
          v35 = *(v0 + 256);
          *(v0 + 400) = *(v0 + 240);
          *(v0 + 416) = v35;
          v36 = *(v0 + 288);
          *(v0 + 432) = *(v0 + 272);
          *(v0 + 448) = v36;
          v37 = *(v0 + 224);
          *(v0 + 368) = *(v0 + 208);
          *(v0 + 384) = v37;
          if (sub_100085644(v0 + 368) != 1 && *(v0 + 392) && v31 && v29)
          {
            v64 = *(v0 + 392);
            v63 = *(v0 + 384);
            *(v0 + 624) = v73;
            *(v0 + 640) = v74;
            *(v0 + 656) = v75;
            *(v0 + 672) = v76;
            *(v0 + 560) = v69;
            *(v0 + 576) = v70;
            *(v0 + 592) = v71;
            *(v0 + 608) = v72;
            *(v0 + 528) = v67;
            *(v0 + 544) = v68;
            if (sub_100085644(v0 + 528) == 1)
            {
              sub_1002143EC(v0 + 688);
            }

            else
            {
              sub_10021440C(v0 + 560, v0 + 816);
              v38 = *(v0 + 640);
              *(v0 + 752) = *(v0 + 624);
              *(v0 + 768) = v38;
              v39 = *(v0 + 672);
              *(v0 + 784) = *(v0 + 656);
              *(v0 + 800) = v39;
              v40 = *(v0 + 576);
              *(v0 + 688) = *(v0 + 560);
              *(v0 + 704) = v40;
              v41 = *(v0 + 608);
              *(v0 + 720) = *(v0 + 592);
              *(v0 + 736) = v41;
            }

            *&v79[71] = *(v0 + 752);
            *&v79[87] = *(v0 + 768);
            *&v79[103] = *(v0 + 784);
            *&v79[119] = *(v0 + 800);
            *&v79[7] = *(v0 + 688);
            *&v79[23] = *(v0 + 704);
            *&v79[39] = *(v0 + 720);
            *&v79[55] = *(v0 + 736);

            v62 = sub_10020ECBC(v28, v29);
            v43 = v42 & 1;
            v78 = *&v79[112];
            HIBYTE(v78) = v79[127];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_1001A2268(0, *(v65 + 2) + 1, 1, v65);
            }

            v45 = *(v65 + 2);
            v44 = *(v65 + 3);
            if (v45 >= v44 >> 1)
            {
              v65 = sub_1001A2268((v44 > 1), v45 + 1, 1, v65);
            }

            v23 = v27 + 1;
            *(v65 + 2) = v45 + 1;
            v46 = &v65[192 * v45];
            *(v46 + 4) = v66;
            *(v46 + 5) = v32;
            *(v46 + 6) = v30;
            *(v46 + 7) = v31;
            *(v46 + 8) = v63;
            *(v46 + 9) = v64;
            *(v46 + 10) = v62;
            v46[88] = v43;
            v25 = v65;
            *(v46 + 89) = *v79;
            *(v46 + 153) = *&v79[64];
            *(v46 + 137) = *&v79[48];
            *(v46 + 121) = *&v79[32];
            *(v46 + 105) = *&v79[16];
            *(v46 + 27) = *&v79[127];
            *(v46 + 201) = v78;
            *(v46 + 185) = *&v79[96];
            *(v46 + 169) = *&v79[80];
            v24 = v12 + 224;
            if (v22 - 1 != v27)
            {
              goto LABEL_38;
            }

            goto LABEL_59;
          }
        }
      }
    }

    ++v27;
    v26 += 208;
    if (v22 == v27)
    {
      v25 = v65;
      goto LABEL_59;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_100214270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002142D4()
{
  (*(v0[128] + 8))(v0[129], v0[127]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_100214354()
{
  result = qword_1008E1B08;
  if (!qword_1008E1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1B08);
  }

  return result;
}

uint64_t sub_1002143A8(uint64_t result)
{
  if (result != 2)
  {
    return sub_1002143B8(result);
  }

  return result;
}

uint64_t sub_1002143B8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1002143C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

double sub_1002143EC(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t sub_10021440C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF7E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unsigned __int8 *sub_10021447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100214A08();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100214A08()
{
  v0 = String.subscript.getter();
  v4 = sub_100214A88(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100214A88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10007DD88(v9, 0), v12 = sub_100214BE0(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100214BE0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100214E00(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100214E00(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

uint64_t sub_100214E00(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100214E7C(uint64_t result, uint64_t a2, char **a3)
{
  v42 = *(result + 16);
  if (v42)
  {
    v5 = 0;
    v41 = result + 32;
    v43 = a2 + 56;
    do
    {
      v6 = (v41 + 192 * v5);
      v7 = v6[9];
      v53 = v6[8];
      v54 = v7;
      v8 = v6[11];
      v55 = v6[10];
      v56 = v8;
      v9 = v6[5];
      v49 = v6[4];
      v50 = v9;
      v10 = v6[7];
      v51 = v6[6];
      v52 = v10;
      v11 = v6[1];
      v45 = *v6;
      v46 = v11;
      v12 = v6[3];
      v47 = v6[2];
      v48 = v12;
      v13 = v47;
      v14 = objc_allocWithZone(LSApplicationRecord);

      sub_1001AB490(&v45, v44);
      v15 = String._bridgeToObjectiveC()();

      v44[0] = 0;
      v16 = [v14 initWithBundleIdentifier:v15 allowPlaceholder:0 error:v44];

      if (v16)
      {
        v17 = v44[0];
        v18 = [v16 applicationState];
        v19 = [v18 isInstalled];

        if (v19)
        {
          if (*(a2 + 16))
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v20 = Hasher._finalize()();
            v21 = -1 << *(a2 + 32);
            v22 = v20 & ~v21;
            if ((*(v43 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              v23 = ~v21;
              while (1)
              {
                v24 = (*(a2 + 48) + 16 * v22);
                v25 = *v24 == v13 && v24[1] == *(&v13 + 1);
                if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v22 = (v22 + 1) & v23;
                if (((*(v43 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
                {
                  goto LABEL_14;
                }
              }

              goto LABEL_21;
            }
          }
        }

LABEL_14:
      }

      else
      {
        v26 = v44[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v27 = *a3;
      sub_1001AB490(&v45, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1001A2268(0, *(v27 + 2) + 1, 1, v27);
        *a3 = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1001A2268((v29 > 1), v30 + 1, 1, v27);
        *a3 = v27;
      }

      *(v27 + 2) = v30 + 1;
      v31 = &v27[192 * v30];
      v32 = v45;
      v33 = v46;
      v34 = v48;
      *(v31 + 4) = v47;
      *(v31 + 5) = v34;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v35 = v49;
      v36 = v50;
      v37 = v52;
      *(v31 + 8) = v51;
      *(v31 + 9) = v37;
      *(v31 + 6) = v35;
      *(v31 + 7) = v36;
      v38 = v53;
      v39 = v54;
      v40 = v56;
      *(v31 + 12) = v55;
      *(v31 + 13) = v40;
      *(v31 + 10) = v38;
      *(v31 + 11) = v39;
LABEL_21:
      result = sub_1002151C0(&v45);
      ++v5;
    }

    while (v5 != v42);
  }

  return result;
}

unint64_t sub_1002151B0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100215214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_10020F5C8(a1, v4, v5, v6);
}

uint64_t sub_1002152D0(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URLRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100140278(&qword_1008E1B18) - 8);
  v9 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1002120A4(a1, a2, v2 + v6, v9);
}

unint64_t sub_1002153C0()
{
  result = qword_1008E1B28;
  if (!qword_1008E1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1B28);
  }

  return result;
}

uint64_t sub_100215414(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100215470(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1002154B8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&qword_1008E1B40) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100210A3C(a1, a2, v6, v7);
}

uint64_t getEnumTagSinglePayload for AppStoreQuery.AppStoreQueryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreQuery.AppStoreQueryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10021569C()
{
  result = qword_1008E1B48;
  if (!qword_1008E1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1B48);
  }

  return result;
}

id sub_100215700(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [objc_allocWithZone(UIBezierPath) init];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if ((a2 & 1) == 0)
  {
LABEL_10:
    CGRectGetMaxY(*&v13);
    if (qword_1008DAC88 == -1)
    {
LABEL_11:
      UIRoundToScale();
      UIRoundToScale();
      v27 = v26;
      UIRoundToScale();
      [v12 moveToPoint:{v27, v28}];
      v40.origin.x = a3;
      v40.origin.y = a4;
      v40.size.width = a5;
      v40.size.height = a6;
      CGRectGetMaxX(v40);
      UIRoundToScale();
      v30 = v29;
      UIRoundToScale();
      [v12 addLineToPoint:{v30, v31}];
      UIRoundToScale();
      v33 = v32;
      UIRoundToScale();
      [v12 moveToPoint:{v33, v34}];
      v41.origin.x = a3;
      v41.origin.y = a4;
      v41.size.width = a5;
      v41.size.height = a6;
      CGRectGetMaxX(v41);
      UIRoundToScale();
      v36 = v35;
      UIRoundToScale();
      [v12 addLineToPoint:{v36, v37}];
      return v12;
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  CGRectGetWidth(*&v13);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a1 - 1 < 1)
  {
    __break(1u);
  }

  else if (qword_1008DAC88 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v17 = 2 - a1;
  v18 = 1;
  while (1)
  {
    UIRoundToScale();
    UIRoundToScale();
    v20 = v19;
    UIRoundToScale();
    [v12 moveToPoint:{v20, v21}];
    v39.origin.x = a3;
    v39.origin.y = a4;
    v39.size.width = a5;
    v39.size.height = a6;
    CGRectGetMaxY(v39);
    UIRoundToScale();
    v23 = v22;
    UIRoundToScale();
    [v12 addLineToPoint:{v23, v24}];
    if (v17 + v18 == 1)
    {
      return v12;
    }

    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_10;
    }
  }
}

void *sub_1002159F8(char a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [objc_allocWithZone(UIBezierPath) init];
  v13 = v12;
  if (a2)
  {
    [v12 moveToPoint:{0.0, 0.0}];
    v27.origin.x = a3;
    v27.origin.y = a4;
    v27.size.width = a5;
    v27.size.height = a6;
    [v13 addLineToPoint:{0.0, CGRectGetMaxY(v27)}];
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    [v13 moveToPoint:{CGRectGetMaxX(v28), 0.0}];
    v29.origin.x = a3;
    v29.origin.y = a4;
    v29.size.width = a5;
    v29.size.height = a6;
    MaxX = CGRectGetMaxX(v29);
    v30.origin.x = a3;
    v30.origin.y = a4;
    v30.size.width = a5;
    v30.size.height = a6;
    MaxY = CGRectGetMaxY(v30);
LABEL_7:
    [v13 addLineToPoint:{MaxX, MaxY}];
    return v13;
  }

  if (qword_1008DAC88 != -1)
  {
    swift_once();
  }

  UIRoundToScale();
  v17 = v16;
  UIRoundToScale();
  [v13 moveToPoint:{v17, v18}];
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  CGRectGetMaxX(v31);
  UIRoundToScale();
  v20 = v19;
  UIRoundToScale();
  [v13 addLineToPoint:{v20, v21}];
  if (a1)
  {
    v32.origin.x = a3;
    v32.origin.y = a4;
    v32.size.width = a5;
    v32.size.height = a6;
    CGRectGetMaxY(v32);
    UIRoundToScale();
    v23 = v22;
    UIRoundToScale();
    [v13 moveToPoint:{v23, v24}];
    v33.origin.x = a3;
    v33.origin.y = a4;
    v33.size.width = a5;
    v33.size.height = a6;
    CGRectGetMaxX(v33);
    v34.origin.x = a3;
    v34.origin.y = a4;
    v34.size.width = a5;
    v34.size.height = a6;
    CGRectGetMaxY(v34);
    UIRoundToScale();
    MaxX = v25;
    UIRoundToScale();
    goto LABEL_7;
  }

  return v13;
}

void *sub_100215C6C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

double sub_100215C8C()
{
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  result = *&qword_100925B90 + *&qword_100925B90;
  *&qword_1008E1B50 = *&qword_100925B90 + *&qword_100925B90;
  return result;
}

char *sub_100215CE8(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainGridLayer;
  *&v2[v4] = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayGridLayer;
  *&v2[v5] = [objc_allocWithZone(CAShapeLayer) init];
  v6 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainStrokeColor;
  sub_1001C8DCC();
  *&v2[v6] = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28235, 0.28235, 0.28235, 1.0);
  v7 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayStrokeColor;
  *&v2[v7] = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.50196, 0.50196, 0.50196, 1.0);
  v8 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineDashPattern;
  sub_100140278(&qword_1008DE450);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D1F70;
  if (qword_1008DA680 != -1)
  {
    v26 = v9;
    swift_once();
    v9 = v26;
  }

  v10 = *&qword_1008E1B50;
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth] = v10;
  *&v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_nHoursInADay] = 24;
  v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_drawsBottomLine] = 0;
  *(v9 + 32) = v10;
  *(v9 + 40) = v10 * 4.0;
  v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_gridType] = a1 & 1;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for ChartAxisGridLayer();
  v11 = objc_msgSendSuper2(&v27, "init");
  v12 = *&v11[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainGridLayer];
  v13 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth;
  v14 = *&v11[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth];
  v15 = v11;
  v16 = v12;
  [v16 setLineWidth:v14];
  v17 = *&v15[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainStrokeColor];
  v18 = [v17 CGColor];
  [v16 setStrokeColor:v18];

  v19 = CAShapeLayer.withLineDashPattern(_:)();

  [v15 addSublayer:v19];

  v20 = *&v11[v13];
  v21 = *&v15[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayGridLayer];
  [v21 setLineWidth:v20];
  v22 = *&v15[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayStrokeColor];
  v23 = [v22 CGColor];
  [v21 setStrokeColor:v23];

  v24 = CAShapeLayer.withLineDashPattern(_:)();

  [v15 addSublayer:v24];

  return v15;
}

id sub_100216004(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainGridLayer;
  *&v2[v4] = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayGridLayer;
  *&v2[v5] = [objc_allocWithZone(CAShapeLayer) init];
  v6 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainStrokeColor;
  sub_1001C8DCC();
  *&v2[v6] = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28235, 0.28235, 0.28235, 1.0);
  v7 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayStrokeColor;
  *&v2[v7] = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.50196, 0.50196, 0.50196, 1.0);
  v8 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineDashPattern;
  sub_100140278(&qword_1008DE450);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D1F70;
  if (qword_1008DA680 != -1)
  {
    v17 = v9;
    swift_once();
    v9 = v17;
  }

  v10 = qword_1008E1B50;
  v11 = *&qword_1008E1B50 * 4.0;
  *(v9 + 32) = qword_1008E1B50;
  *(v9 + 40) = v11;
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth] = v10;
  *&v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_nHoursInADay] = 24;
  v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_drawsBottomLine] = 0;
  sub_10000B1B4(a1, v20);
  v12 = type metadata accessor for ChartAxisGridLayer();
  if (swift_dynamicCast())
  {
    v13 = v19[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_gridType];
  }

  else
  {
    v13 = 0;
  }

  v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_gridType] = v13;
  sub_1000066AC(a1, a1[3]);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  v18.receiver = v2;
  v18.super_class = v12;
  v15 = objc_msgSendSuper2(&v18, "initWithLayer:", v14);
  swift_unknownObjectRelease();
  sub_100005A40(a1);
  return v15;
}

uint64_t sub_100216284(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainGridLayer;
  *(v1 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayGridLayer;
  *(v1 + v5) = [objc_allocWithZone(CAShapeLayer) init];
  v6 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainStrokeColor;
  sub_1001C8DCC();
  *(v1 + v6) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28235, 0.28235, 0.28235, 1.0);
  v7 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayStrokeColor;
  *(v1 + v7) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.50196, 0.50196, 0.50196, 1.0);
  v8 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineDashPattern;
  sub_100140278(&qword_1008DE450);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D1F70;
  if (qword_1008DA680 != -1)
  {
    swift_once();
  }

  v10 = qword_1008E1B50;
  v11 = *&qword_1008E1B50 * 4.0;
  *(v9 + 32) = qword_1008E1B50;
  *(v9 + 40) = v11;

  *(v2 + v8) = v9;
  *(v2 + OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth) = v10;
  *(v2 + OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_nHoursInADay) = 24;
  *(v2 + OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_drawsBottomLine) = 0;

  type metadata accessor for ChartAxisGridLayer();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_100216480()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ChartAxisGridLayer();
  objc_msgSendSuper2(&v18, "layoutSublayers");
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainGridLayer];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayGridLayer];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = v1[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_gridType];
  [v1 bounds];
  v9 = sub_100215700(*&v1[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_nHoursInADay], v4, v5, v6, v7, v8);
  [v1 bounds];
  v14 = sub_1002159F8(v1[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_drawsBottomLine], v4, v10, v11, v12, v13);
  v15 = objc_opt_self();
  [v15 begin];
  [v15 setDisableActions:1];
  v16 = [v9 CGPath];
  [v2 setPath:v16];

  v17 = [v14 CGPath];
  [v3 setPath:v17];

  [v15 commit];
}

id sub_1002166A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChartAxisGridLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100216790()
{
  result = qword_1008E1BC8;
  if (!qword_1008E1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1BC8);
  }

  return result;
}

__n128 sub_1002167E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100216800(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100216848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100216910(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Color.RGBColorSpace();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.displayP3(_:), v4);
  result = Color.init(_:red:green:blue:opacity:)();
  *a2 = result;
  return result;
}

uint64_t sub_100216A04@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);

  v10 = sub_100216A98(v3, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
}

void *sub_100216A98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v97 = *&a2;
  v98 = *&a3;
  v99 = a1;
  v101 = type metadata accessor for SleepingSampleBaselineBand.Configuration(0);
  v96 = *(v101 - 8);
  __chkstk_darwin(v101);
  v8 = (&v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v84 - v10);
  v104 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
  v91 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BaselineRelativeValue();
  v105 = *(v13 - 8);
  __chkstk_darwin(v13);
  v90 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = (&v84 - v16);
  *&v95 = COERCE_DOUBLE(sub_100140278(&qword_1008E1BD0));
  __chkstk_darwin(v95);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v94 = &v84 - v20;
  v93 = sub_100140278(&qword_1008E1BD8);
  __chkstk_darwin(v93);
  v100 = &v84 - v21;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v84 - v27;
  if ((a4 & 1) != 0 || !*(a5 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v89 = v11;
  v29 = a5 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  Date.timeIntervalSince(_:)();
  Date.addingTimeInterval(_:)();
  Date.addingTimeInterval(_:)();
  sub_1002175F0();
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v88 = v8;
    v30 = *(v23 + 16);
    v31 = v94;
    v86 = v25;
    v30(v94, v25, v22);
    v32 = v95;
    v33 = v31 + *(v95 + 48);
    v87 = v28;
    v30(v33, v28, v22);
    sub_10001B104(v31, v18, &qword_1008E1BD0);
    v34 = *(v32 + 48);
    v102 = v22;
    v35 = *(v23 + 32);
    v29 = v100;
    v35(v100, v18, v102);
    v36 = *(v23 + 8);
    v36(&v18[v34], v102);
    sub_100217648(v31, v18);
    v35((v29 + *(v93 + 36)), &v18[*(v32 + 48)], v102);
    v22 = v102;
    v94 = (v23 + 8);
    v93 = v36;
    v36(v18, v102);
    sub_100140278(&qword_1008DF270);
    v37 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v85 = *(v96 + 72);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1006D46C0;
    v96 = v38;
    v84 = v37;
    v8 = (v38 + v37);
    if (qword_1008DA688 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v39 = v97;
  v40 = v98;
  v41 = v97;
  v42 = v98;
  v43 = Color.opacity(_:)();
  *v8 = v39;
  v8[1] = v40;
  v44 = v101;
  sub_10001B104(v29, v8 + *(v101 + 20), &qword_1008E1BD8);
  *(v8 + v44[6]) = v43;
  *(v8 + v44[7]) = 4.0;
  v45 = v99;
  v46 = *(v99 + 16);
  v47 = _swiftEmptyArrayStorage;
  if (v46)
  {
    v106 = _swiftEmptyArrayStorage;
    sub_100185EA4(0, v46, 0);
    v48 = v45 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v49 = *(v91 + 72);
    v47 = v106;
    v50 = (*&v105 + 16);
    v51 = v90;
    do
    {
      v52 = v103;
      sub_1002176B8(v48, v103);
      (*v50)(v51, v52 + *(v104 + 20), v13);
      sub_10014C324(v52);
      v106 = v47;
      v54 = v47[2];
      v53 = v47[3];
      if (v54 >= v53 >> 1)
      {
        sub_100185EA4(v53 > 1, v54 + 1, 1);
        v47 = v106;
      }

      v47[2] = v54 + 1;
      (*(*&v105 + 32))(v47 + ((*(*&v105 + 80) + 32) & ~*(*&v105 + 80)) + *(*&v105 + 72) * v54, v51, v13);
      v48 += v49;
      --v46;
    }

    while (v46);
    v44 = v101;
    v22 = v102;
    v29 = v100;
  }

  v57 = v47[2];
  *&v95 = v42;
  if (v57)
  {
    v58 = *&v105 + 16;
    v59 = *(*&v105 + 16);
    v60 = v47 + ((*(*&v105 + 80) + 32) & ~*(*&v105 + 80));
    v104 = *(*&v105 + 72);
    v105 = *&v59;
    v61 = (v58 + 72);
    v62 = enum case for BaselineRelativeValue.determinate(_:);
    v63 = (v58 - 8);
    v64 = (v58 + 80);
    v65 = v42;
    v66 = v41;
    v67 = v92;
    v59(v92, v60, v13);
    while (1)
    {
      if ((*v61)(v67, v13) == v62)
      {
        (*v64)(v67, v13);
        if (*v67 >= v66)
        {
          if (v65 < *v67)
          {
            v65 = *v67;
          }
        }

        else
        {
          v66 = *v67;
        }
      }

      else
      {
        (*v63)(v67, v13);
      }

      v60 += v104;
      if (!--v57)
      {
        break;
      }

      (*&v105)(v67, v60, v13);
    }

    v44 = v101;
    v22 = v102;
    v29 = v100;
  }

  else
  {

    v65 = v42;
    v66 = v41;
  }

  v68 = 100.0;
  v69 = fabs(v66 * 100.0);
  v70 = fmod(v69, 50.0);
  v105 = v65 * 100.0;
  v71 = fmod(v65 * 100.0, 50.0);
  v72 = v41 + -0.1;
  v73 = v88;
  v74 = v89;
  v55 = v96;
  if (v66 >= v72)
  {
    v70 = 0.1;
    v78 = *&v95;
    goto LABEL_33;
  }

  v66 = v71;
  v69 = (v69 + 50.0 - v70) / -100.0;
  if (v69 > v72)
  {
    __break(1u);
    goto LABEL_44;
  }

  sub_10001B104(v29, v89 + v44[5], &qword_1008E1BD8);
  v70 = 0.1;
  if (qword_1008DA690 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v75 = Color.opacity(_:)();
    *v74 = v69;
    v74[1] = v72;
    *(v74 + v44[6]) = v75;
    *(v74 + v44[7]) = 4.0;
    v77 = v55[2];
    v76 = v55[3];
    if (v77 >= v76 >> 1)
    {
      v55 = sub_1001A24D4(v76 > 1, v77 + 1, 1, v55);
    }

    v78 = *&v95;
    v55[2] = v77 + 1;
    sub_100217784(v74, v55 + v84 + v77 * v85);
    v71 = v66;
LABEL_33:
    v72 = v78 + v70;
    if (v78 + v70 >= v65)
    {
      sub_10021771C(v29);
      v83 = v93;
      (v93)(v86, v22);
      v83(v87, v22);
      return v55;
    }

    v68 = (v105 + 50.0 - v71) / v68;
    if (v72 <= v68)
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  sub_10001B104(v29, v73 + v44[5], &qword_1008E1BD8);
  if (qword_1008DA690 != -1)
  {
    swift_once();
  }

  v79 = Color.opacity(_:)();
  *v73 = v72;
  v73[1] = v68;
  *(v73 + v44[6]) = v79;
  *(v73 + v44[7]) = 4.0;
  v81 = v55[2];
  v80 = v55[3];
  if (v81 >= v80 >> 1)
  {
    v55 = sub_1001A24D4(v80 > 1, v81 + 1, 1, v55);
  }

  sub_10021771C(v29);
  v82 = v93;
  (v93)(v86, v22);
  v82(v87, v22);
  v55[2] = v81 + 1;
  sub_100217784(v73, v55 + v84 + v81 * v85);
  return v55;
}

unint64_t sub_1002175F0()
{
  result = qword_1008E4080;
  if (!qword_1008E4080)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4080);
  }

  return result;
}

uint64_t sub_100217648(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E1BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002176B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021771C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E1BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100217784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineBand.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002177E8()
{
  result = qword_1008E1BE0;
  if (!qword_1008E1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1BE0);
  }

  return result;
}

unint64_t sub_100217840()
{
  result = qword_1008E1BE8;
  if (!qword_1008E1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1BE8);
  }

  return result;
}

unint64_t sub_100217898()
{
  result = qword_1008E1BF0;
  if (!qword_1008E1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1BF0);
  }

  return result;
}

unint64_t sub_1002178F0()
{
  result = qword_1008E1BF8;
  if (!qword_1008E1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1BF8);
  }

  return result;
}

unint64_t sub_100217948()
{
  result = qword_1008E1C00;
  if (!qword_1008E1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C00);
  }

  return result;
}

uint64_t sub_1002179D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v50 = type metadata accessor for DataLinkCommand();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v50);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Logger();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for URL();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v43 - v11;
  v12 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  type metadata accessor for DataLinkMonitor();
  v15 = static DataLinkMonitor.shared.getter();
  DataLinkMonitor.client.getter();

  dispatch thunk of DataLinkClient.sessionUUID.getter();

  v16 = type metadata accessor for UUID();
  LODWORD(v15) = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_10000EA04(v14, &unk_1008DB8A0);
  if (v15 == 1)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v54 = 0xD00000000000001ELL;
    v55 = 0x800000010074E0E0;
    sub_100219258(&qword_1008E1C48, &type metadata accessor for DataLinkCommand);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    URL.init(string:)();

    v18 = v48;
    if ((*(v48 + 48))(v7, 1, v8) == 1)
    {
      sub_10000EA04(v7, &unk_1008EB5B0);
    }

    else
    {
      v24 = v8;
      v25 = v45;
      (*(v18 + 32))(v45, v7, v8);
      v26 = v47;
      static WOLog.dataLink.getter();
      v27 = v43;
      (*(v18 + 16))(v43, v25, v8);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = v27;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v54 = v32;
        *v31 = 136315138;
        sub_100219258(&unk_1008F5500, &type metadata accessor for URL);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        v36 = v30;
        v37 = *(v18 + 8);
        v37(v36, v24);
        v38 = sub_10000AFDC(v33, v35, &v54);

        *(v31 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v28, v29, "Sending %s to app", v31, 0xCu);
        sub_100005A40(v32);

        (*(v44 + 8))(v47, v46);
      }

      else
      {

        v37 = *(v18 + 8);
        v37(v27, v24);
        (*(v44 + 8))(v26, v46);
      }

      if (qword_1008DACC0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for NavigatorContext();
      v40 = objc_allocWithZone(v39);
      v40[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
      v53.receiver = v40;
      v53.super_class = v39;
      v41 = objc_msgSendSuper2(&v53, "init");
      sub_1004DA120(v25, v41);

      v37(v25, v24);
    }
  }

  else
  {
    v19 = static DataLinkMonitor.shared.getter();
    DataLinkMonitor.client.getter();

    v21 = v49;
    v20 = v50;
    (*(v2 + 16))(v49, v51, v50);
    v22 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v23 = swift_allocObject();
    (*(v2 + 32))(v23 + v22, v21, v20);
    dispatch thunk of DataLinkClient.send(command:acknowledged:)();
  }

  return static IntentResult.result<>()();
}

uint64_t sub_1002180FC(int a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v5 = type metadata accessor for DataLinkCommand();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  (*(v6 + 16))(v8, a3, v5);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v10;
    v16 = v15;
    v26 = swift_slowAlloc();
    v30 = v26;
    *v16 = 136315650;
    sub_100219258(&qword_1008E1C48, &type metadata accessor for DataLinkCommand);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v9;
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = sub_10000AFDC(v17, v19, &v30);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v28 & 1;
    *(v16 + 18) = 2080;
    v29 = a2;
    sub_100140278(&qword_1008DFED8);
    v21 = Optional.description.getter();
    v23 = sub_10000AFDC(v21, v22, &v30);

    *(v16 + 20) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Sent %s: %{BOOL}d, %s", v16, 0x1Cu);
    swift_arrayDestroy();

    return (*(v27 + 8))(v12, v25);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v9);
  }
}

NSString sub_100218464()
{
  result = String._bridgeToObjectiveC()();
  qword_1009252C0 = result;
  return result;
}

uint64_t sub_10021849C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_1009252C8);
  sub_10001AC90(v0, qword_1009252C8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100218524(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DataLinkCommand();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002185E4, 0, 0);
}

uint64_t sub_1002185E4()
{
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100218678, v2, v1);
}

uint64_t sub_100218678()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for DataLinkCommand.resume(_:), v2);
  sub_1002179D0(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100218740(uint64_t a1)
{
  v2 = sub_100217898();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100218780()
{
  result = qword_1008E1C08;
  if (!qword_1008E1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C08);
  }

  return result;
}

unint64_t sub_1002187D8()
{
  result = qword_1008E1C10;
  if (!qword_1008E1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C10);
  }

  return result;
}

unint64_t sub_100218830()
{
  result = qword_1008E1C18;
  if (!qword_1008E1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C18);
  }

  return result;
}

unint64_t sub_100218888()
{
  result = qword_1008E1C20;
  if (!qword_1008E1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C20);
  }

  return result;
}

NSString sub_100218910()
{
  result = String._bridgeToObjectiveC()();
  qword_1009252E0 = result;
  return result;
}

uint64_t sub_100218948()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_1009252E8);
  sub_10001AC90(v0, qword_1009252E8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1002189D0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DataLinkCommand();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100218A90, 0, 0);
}

uint64_t sub_100218A90()
{
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100218B24, v2, v1);
}

uint64_t sub_100218B24()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for DataLinkCommand.pause(_:), v2);
  sub_1002179D0(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100218BEC(uint64_t a1)
{
  v2 = sub_1002187D8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100218C2C()
{
  result = qword_1008E1C28;
  if (!qword_1008E1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C28);
  }

  return result;
}

unint64_t sub_100218C84()
{
  result = qword_1008E1C30;
  if (!qword_1008E1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C30);
  }

  return result;
}

unint64_t sub_100218CDC()
{
  result = qword_1008E1C38;
  if (!qword_1008E1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C38);
  }

  return result;
}

unint64_t sub_100218D34()
{
  result = qword_1008E1C40;
  if (!qword_1008E1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C40);
  }

  return result;
}

NSString sub_100218E10()
{
  result = String._bridgeToObjectiveC()();
  qword_100925300 = result;
  return result;
}

uint64_t sub_100218E48()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925308);
  sub_10001AC90(v0, qword_100925308);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100218ED0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for LocalizedStringResource();
  v6 = sub_10001AC90(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100218F6C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DataLinkCommand();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10021902C, 0, 0);
}

uint64_t sub_10021902C()
{
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002190C0, v2, v1);
}

uint64_t sub_1002190C0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for DataLinkCommand.markSegment(_:), v2);
  sub_1002179D0(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100219188(uint64_t a1)
{
  v2 = sub_100218C84();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1002191F4()
{
  result = qword_1008DE270;
  if (!qword_1008DE270)
  {
    sub_100141EEC(&qword_1008DE278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE270);
  }

  return result;
}

uint64_t sub_100219258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002192A0(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DataLinkCommand() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1002180FC(a1, a2, v6);
}

uint64_t sub_100219340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100219388(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002193F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v32 = a1;
  v33 = a2;
  v10 = StateObject.wrappedValue.getter();
  v11 = *&v10[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  v12 = [v11 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = v36;
  v14 = StateObject.wrappedValue.getter();
  v15 = *&v14[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  v16 = [v15 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10021D8EC(&qword_1008E1D78, &type metadata accessor for Date);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v13 + 8);
  v13 += 8;
  v17(v6, v4);
  v30 = v9;
  v31 = v4;
  v29 = v17;
  v17(v9, v4);
  sub_100140278(&unk_1008E51C0);
  v18 = (*(v13 + 72) + 32) & ~*(v13 + 72);
  v36 = *(v13 + 64);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006D1F70;
  v20 = StateObject.wrappedValue.getter();
  v21 = *&v20[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  v22 = [v21 startDate];
  v35 = v19 + v18;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = StateObject.wrappedValue.getter();
  v24 = *&v23[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  if (v34)
  {
    v25 = [v24 startDate];

    v26 = v30;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.addingTimeInterval(_:)();
    v29(v26, v31);
  }

  else
  {
    v27 = [v24 endDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v19;
}

void *sub_100219818()
{
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v0 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15[8] = v12;
  v15[9] = v13;
  *v16 = *v14;
  *&v16[9] = *&v14[9];
  v15[4] = v8;
  v15[5] = v9;
  v15[6] = v10;
  v15[7] = v11;
  v15[0] = v4;
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  sub_10021D28C(v15);
  if (v16[24])
  {
    return _swiftEmptyArrayStorage;
  }

  if (*&v16[8] > 0.0)
  {
    v2 = *&v16[8];
  }

  else
  {
    v2 = 0.0;
  }

  if (*&v16[16] > 0.0)
  {
    v3 = *&v16[16];
  }

  else
  {
    v3 = 0.0;
  }

  sub_100140278(&qword_1008DE480);
  result = swift_allocObject();
  *(result + 1) = xmmword_1006D1F70;
  *(result + 4) = v2;
  *(result + 5) = v3;
  return result;
}

uint64_t sub_1002199A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = sub_100140278(&qword_1008E1C58);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = [objc_opt_self() systemGray6Color];
  v15 = Color.init(_:)();
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v16 = sub_100140278(&qword_1008E1C60);
  sub_100219B44(a1, a2, a3 & 1, &v13[*(v16 + 44)]);
  sub_10001B104(v13, v10, &qword_1008E1C58);
  *a4 = v15;
  v17 = sub_100140278(&qword_1008E1C68);
  sub_10001B104(v10, a4 + *(v17 + 48), &qword_1008E1C58);

  sub_10000EA04(v13, &qword_1008E1C58);
  sub_10000EA04(v10, &qword_1008E1C58);
}

void sub_100219B44(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v159 = a4;
  v158 = sub_100140278(&qword_1008E1C70);
  __chkstk_darwin(v158);
  v149 = (&v121 - v7);
  v8 = sub_100140278(&qword_1008E1C78);
  __chkstk_darwin(v8 - 8);
  v146 = &v121 - v9;
  v10 = sub_100140278(&qword_1008E1C80);
  v134 = *(v10 - 8);
  v135 = v10;
  __chkstk_darwin(v10);
  v133 = &v121 - v11;
  v12 = sub_100140278(&qword_1008E1C88);
  v137 = *(v12 - 8);
  v138 = v12;
  __chkstk_darwin(v12);
  v136 = &v121 - v13;
  v142 = sub_100140278(&qword_1008E1C90);
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v121 - v14;
  v15 = sub_100140278(&qword_1008E1C98);
  v143 = *(v15 - 8);
  v144 = v15;
  __chkstk_darwin(v15);
  v141 = &v121 - v16;
  v145 = sub_100140278(&qword_1008E1CA0);
  __chkstk_darwin(v145);
  v147 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v148 = &v121 - v19;
  v150 = sub_100140278(&qword_1008E1CA8);
  __chkstk_darwin(v150);
  v152 = (&v121 - v20);
  v21 = sub_100140278(&qword_1008E1CB0);
  __chkstk_darwin(v21 - 8);
  v157 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v156 = &v121 - v24;
  LocalizedStringKey.init(stringLiteral:)();
  v120 = 256;
  v119 = 0;
  v25 = Text.init(_:tableName:bundle:comment:)();
  v27 = v26;
  v29 = v28;
  static Font.body.getter();
  v30 = Text.font(_:)();
  v153 = v31;
  v154 = v30;
  v151 = v32;
  v155 = v33;

  sub_10004642C(v25, v27, v29 & 1);

  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  LODWORD(v160) = a3;
  v34 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v196[8] = v193;
  v196[9] = v194;
  v197[0] = v195[0];
  *(v197 + 9) = *(v195 + 9);
  v196[5] = v190;
  v196[6] = v191;
  v196[7] = v192;
  v196[0] = v185;
  v196[1] = v186;
  v196[2] = v187;
  v196[3] = v188;
  v196[4] = v189;
  sub_10021D28C(v196);
  if ((BYTE8(v197[1]) & 1) != 0 || ((v35 = StateObject.wrappedValue.getter(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v35, v193 = v182, v194 = v183, v195[0] = v184[0], *(v195 + 9) = *(v184 + 9), v189 = v178, v190 = v179, v191 = v180, v192 = v181, v185 = v174, v186 = v175, v187 = v176, v188 = v177, v36 = *(&v174 + 1), , sub_10021D28C(&v185), v36) ? (v37 = v36) : (v37 = _swiftEmptyArrayStorage), v38 = v37[2], , !v38))
  {
    LocalizedStringKey.init(stringLiteral:)();
    v120 = 256;
    v119 = 0;
    v100 = Text.init(_:tableName:bundle:comment:)();
    v102 = v101;
    v104 = v103;
    static Font.body.getter();
    v105 = Text.font(_:)();
    v107 = v106;
    v109 = v108;
    v111 = v110;

    sub_10004642C(v100, v102, v104 & 1);

    v112 = v152;
    *v152 = v105;
    v112[1] = v107;
    *(v112 + 16) = v109 & 1;
    v112[3] = v111;
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008E1CC0, &qword_1008E1C70);
    v99 = v156;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_10;
  }

  v39 = [objc_opt_self() mainBundle];
  v40 = a1;
  v41 = String._bridgeToObjectiveC()();
  v42 = [v39 localizedStringForKey:v41 value:0 table:0];

  v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1006D46C0;
  v131 = v40;
  v132 = a2;
  v44 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v182 = v171;
  v183 = v172;
  v184[0] = v173[0];
  *(v184 + 9) = *(v173 + 9);
  v178 = v167;
  v179 = v168;
  v180 = v169;
  v181 = v170;
  v174 = v163;
  v175 = v164;
  v176 = v165;
  v177 = v166;
  v45 = *(&v170 + 1);
  v46 = v171;

  sub_10021D28C(&v174);
  *(v43 + 56) = &type metadata for String;
  *(v43 + 64) = sub_10000A788();
  *(v43 + 32) = v45;
  *(v43 + 40) = v46;
  v47 = String.init(format:_:)();
  v49 = v48;

  *&v163 = v47;
  *(&v163 + 1) = v49;
  sub_10000FCBC();
  v50 = Text.init<A>(_:)();
  v52 = v51;
  LOBYTE(v42) = v53;
  static Font.body.getter();
  v54 = Text.font(_:)();
  v56 = v55;
  v58 = v57;

  sub_10004642C(v50, v52, v42 & 1);

  v59 = [objc_opt_self() paceColors];
  if (v59)
  {
    v60 = v59;
    v61 = [v59 nonGradientTextColor];

    if (v61)
    {
      *&v163 = Color.init(_:)();
      v62 = Text.foregroundStyle<A>(_:)();
      v126 = v63;
      v127 = v62;
      v128 = v64;
      v129 = v65;
      sub_10004642C(v54, v56, v58 & 1);

      __chkstk_darwin(v66);
      v67 = v131;
      v68 = v132;
      *(&v121 - 4) = v131;
      *(&v121 - 3) = v68;
      v69 = v160 & 1;
      v125 = v160 & 1;
      sub_100140278(&qword_1008E1CD0);
      sub_10021D2EC();
      v70 = v133;
      v71 = Chart.init(content:)();
      v130 = &v121;
      __chkstk_darwin(v71);
      *(&v121 - 4) = v67;
      *(&v121 - 3) = v68;
      LOBYTE(v119) = v69;
      v122 = sub_100140278(&qword_1008E1CE8);
      v72 = sub_10014A6B0(&qword_1008E1CF0, &qword_1008E1C80);
      v124 = &protocol conformance descriptor for AxisMarks<A>;
      v73 = sub_10014A6B0(&qword_1008E1CF8, &qword_1008E1CE8);
      v74 = v135;
      v75 = v136;
      View.chartYAxis<A>(content:)();
      (*(v134 + 8))(v70, v74);
      v123 = sub_1002193F8(v67, v68);
      v162 = v123;
      v76 = type metadata accessor for ScaleType();
      v77 = *(v76 - 8);
      v133 = *(v77 + 56);
      v134 = v77 + 56;
      v78 = v146;
      (v133)(v146, 1, 1, v76);
      v121 = sub_100140278(&qword_1008E1D00);
      *&v163 = v74;
      *(&v163 + 1) = v122;
      *&v164 = v72;
      *(&v164 + 1) = v73;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v80 = sub_10021D3FC(&qword_1008E1D08, &qword_1008E1D00);
      v82 = v138;
      v81 = v139;
      View.chartXScale<A>(domain:type:)();
      sub_10000EA04(v78, &qword_1008E1C78);

      (*(v137 + 8))(v75, v82);
      v161 = sub_100219818();
      (v133)(v78, 1, 1, v76);
      v83 = sub_100140278(&qword_1008E1D10);
      *&v163 = v82;
      *(&v163 + 1) = v121;
      *&v164 = OpaqueTypeConformance2;
      *(&v164 + 1) = v80;
      v84 = swift_getOpaqueTypeConformance2();
      v85 = sub_10021D3FC(&qword_1008E1D18, &qword_1008E1D10);
      v87 = v141;
      v86 = v142;
      View.chartYScale<A>(domain:type:)();
      sub_10000EA04(v78, &qword_1008E1C78);

      v88 = (*(v140 + 8))(v81, v86);
      v160 = &v121;
      __chkstk_darwin(v88);
      v89 = v132;
      *(&v121 - 4) = v131;
      *(&v121 - 3) = v89;
      LOBYTE(v119) = v125;
      sub_100140278(&qword_1008E1D20);
      *&v163 = v86;
      *(&v163 + 1) = v83;
      *&v164 = v84;
      *(&v164 + 1) = v85;
      swift_getOpaqueTypeConformance2();
      sub_10014A6B0(&qword_1008E1D28, &qword_1008E1D20);
      v90 = v148;
      v91 = v144;
      View.chartXAxis<A>(content:)();
      (*(v143 + 8))(v87, v91);
      *(v90 + *(sub_100140278(&qword_1008E1D30) + 36)) = 0;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v92 = (v90 + *(v145 + 36));
      v93 = v164;
      *v92 = v163;
      v92[1] = v93;
      v92[2] = v165;
      v94 = v147;
      sub_10001B104(v90, v147, &qword_1008E1CA0);
      v95 = v149;
      v96 = v126;
      v97 = v127;
      *v149 = v127;
      *(v95 + 8) = v96;
      LOBYTE(v78) = v128 & 1;
      *(v95 + 16) = v128 & 1;
      *(v95 + 24) = v129;
      v98 = sub_100140278(&qword_1008E1D38);
      sub_10001B104(v94, v95 + *(v98 + 48), &qword_1008E1CA0);
      sub_10006965C(v97, v96, v78);

      sub_10006965C(v97, v96, v78);

      sub_10000EA04(v94, &qword_1008E1CA0);
      sub_10004642C(v97, v96, v78);

      sub_10001B104(v95, v152, &qword_1008E1C70);
      swift_storeEnumTagMultiPayload();
      sub_10014A6B0(&qword_1008E1CC0, &qword_1008E1C70);
      v99 = v156;
      _ConditionalContent<>.init(storage:)();
      sub_10004642C(v97, v96, v78);

      sub_10000EA04(v95, &qword_1008E1C70);
      sub_10000EA04(v90, &qword_1008E1CA0);
LABEL_10:
      v113 = v157;
      sub_10001B104(v99, v157, &qword_1008E1CB0);
      v114 = v159;
      v116 = v153;
      v115 = v154;
      *v159 = v154;
      v114[1] = v116;
      v117 = v151 & 1;
      *(v114 + 16) = v151 & 1;
      v114[3] = v155;
      v118 = sub_100140278(&qword_1008E1CC8);
      sub_10001B104(v113, v114 + *(v118 + 48), &qword_1008E1CB0);
      sub_10006965C(v115, v116, v117);

      sub_10000EA04(v99, &qword_1008E1CB0);
      sub_10000EA04(v113, &qword_1008E1CB0);
      sub_10004642C(v115, v116, v117);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10021ADCC()
{
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v0 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13[8] = v10;
  v13[9] = v11;
  v14[0] = *v12;
  *(v14 + 9) = *&v12[9];
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;

  sub_10021D28C(v13);
  sub_100140278(&qword_1008E1DC8);
  sub_100140278(&qword_1008E1DD0);
  sub_10014A6B0(&qword_1008E1DD8, &qword_1008E1DC8);
  sub_100141EEC(&qword_1008E1CE0);
  type metadata accessor for RuleMark();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10021D8EC(&qword_1008E1DE0, type metadata accessor for WorkoutChartDataElement);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10021B084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100140278(&qword_1008E1DE8);
  __chkstk_darwin(v3 - 8);
  v24 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v22[1] = v22 - v6;
  v7 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v7 - 8);
  v22[0] = v22 - v8;
  v9 = type metadata accessor for RuleMark();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008E1CE0);
  v14 = *(v13 - 8);
  v27 = v13;
  v28 = v14;
  __chkstk_darwin(v13);
  v23 = v22 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for Date();
  v16 = a1;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v17 = type metadata accessor for WorkoutChartDataElement(0);
  v34[0] = *(v16 + *(v17 + 24));
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v34[0] = *(v16 + *(v17 + 28));
  static PlottableValue.value(_:_:)();

  RuleMark.init<A, B>(x:yStart:yEnd:)();
  v34[0] = static Color.teal.getter();
  v18 = v23;
  v19 = v25;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v26 + 8))(v12, v19);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v30 = v19;
  v31 = &type metadata for Color;
  v32 = &protocol witness table for RuleMark;
  v33 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v20 = v27;
  ChartContent.lineStyle(_:)();
  sub_10021D934(v34);
  return (*(v28 + 8))(v18, v20);
}

uint64_t sub_10021B500(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v8 - 8);
  static AxisMarkPreset.inset.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3 & 1;
  sub_10021D48C(a1, a2, a3 & 1);
  static AxisMarkPosition.automatic.getter();
  static AxisMarkValues.automatic.getter();
  sub_100140278(&qword_1008E1D80);
  sub_10021D600();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_10021B6AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  LODWORD(v71) = a3;
  v69 = a1;
  v70 = a2;
  v72 = a4;
  v65 = sub_100140278(&qword_1008E1DB0);
  __chkstk_darwin(v65);
  v64 = &v57 - v4;
  v5 = sub_100140278(&qword_1008E1DA8);
  __chkstk_darwin(v5 - 8);
  v66 = &v57 - v6;
  v7 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v7 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100140278(&qword_1008E1D50);
  v67 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v14 = sub_100140278(&qword_1008E1DB8);
  v68 = *(v14 - 8);
  __chkstk_darwin(v14);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  v19 = type metadata accessor for AxisGridLine();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v62 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v57 - v23;
  if (AxisValue.index.getter())
  {
    v63 = v9;
    v64 = v13;
    v65 = v14;
    v66 = v11;
    v25 = v72;
    v26 = AxisValue.index.getter();
    result = AxisValue.count.getter();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if (v26 == result - 1)
    {
      v28 = static UnitPoint.trailing.getter();
      __chkstk_darwin(v28);
      static AxisValueLabelCollisionResolution.automatic.getter();
      static AxisValueLabelOrientation.automatic.getter();
      v56 = &protocol witness table for Text;
      v54 = &v51;
      v55 = &type metadata for Text;
      v53 = sub_10021D890;
      v52 = 1;
      v51 = 0;
      v29 = v64;
      AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
      sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
      v30 = v66;
      AxisMark.offset(x:y:)();
      (*(v67 + 8))(v29, v30);
      (*(v68 + 32))(v25, v18, v65);
      sub_100140278(&qword_1008E1DC0);
      swift_storeEnumTagMultiPayload();
      v31 = sub_100140278(&qword_1008E1D98);
      return (*(*(v31 - 8) + 56))(v25, 0, 1, v31);
    }

    else
    {
      v49 = sub_100140278(&qword_1008E1D98);
      v50 = *(*(v49 - 8) + 56);

      return v50(v25, 1, 1, v49);
    }
  }

  else
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    v61 = v24;
    AxisGridLine.init(centered:stroke:)();
    v32 = static UnitPoint.bottomTrailing.getter();
    v59 = v34;
    v60 = v33;
    __chkstk_darwin(v32);
    static AxisValueLabelCollisionResolution.automatic.getter();
    static AxisValueLabelOrientation.automatic.getter();
    v56 = &protocol witness table for Text;
    v54 = &v51;
    v55 = &type metadata for Text;
    v53 = sub_10021D89C;
    v52 = 1;
    v51 = 0;
    AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
    AxisMark.offset(x:y:)();
    (*(v67 + 8))(v13, v11);
    v35 = *(v20 + 16);
    v36 = v62;
    v35(v62, v61, v19);
    v37 = v18;
    v58 = v18;
    v38 = v20;
    v39 = v68;
    v71 = *(v68 + 16);
    v40 = v63;
    v71(v63, v37, v14);
    v41 = v64;
    v35(v64, v36, v19);
    v42 = v65;
    v43 = *(v65 + 48);
    v71(&v41[v43], v40, v14);
    v44 = v66;
    (*(v38 + 32))(v66, v41, v19);
    (*(v39 + 32))(v44 + *(v42 + 48), &v41[v43], v14);
    v45 = *(v39 + 8);
    v45(v58, v14);
    v46 = *(v38 + 8);
    v46(v61, v19);
    v45(v40, v14);
    v46(v36, v19);
    v47 = v72;
    sub_1000886C0(v44, v72);
    sub_100140278(&qword_1008E1DC0);
    swift_storeEnumTagMultiPayload();
    v48 = sub_100140278(&qword_1008E1D98);
    return (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  }

  return result;
}

uint64_t sub_10021BF74@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v1 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v4 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34[8] = v31;
  v34[9] = v32;
  v35[0] = v33[0];
  *(v35 + 9) = *(v33 + 9);
  v34[4] = v27;
  v34[5] = v28;
  v34[6] = v29;
  v34[7] = v30;
  v34[0] = v23;
  v34[1] = v24;
  v34[2] = v25;
  v34[3] = v26;
  v5 = *(&v31 + 1);
  v6 = v32;
  sub_10021D8A8(*(&v31 + 1), v32);
  sub_10021D28C(v34);
  if (v6)
  {
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *&v23 = v5;
  *(&v23 + 1) = v6;
  sub_10000FCBC();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  static Font.system(size:weight:design:)();
  sub_10000EA04(v3, &qword_1008DC448);
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_10004642C(v7, v9, v11 & 1);

  v21 = v22;
  *v22 = v13;
  v21[1] = v15;
  *(v21 + 16) = v17 & 1;
  v21[3] = v19;
  return result;
}

uint64_t sub_10021C22C@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v1 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v4 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35[8] = v32;
  v35[9] = v33;
  v36[0] = v34[0];
  *(v36 + 9) = *(v34 + 9);
  v35[4] = v28;
  v35[5] = v29;
  v35[6] = v30;
  v35[7] = v31;
  v35[0] = v24;
  v35[1] = v25;
  v35[2] = v26;
  v35[3] = v27;
  v5 = *(&v33 + 1);
  v7 = v33;
  v6 = *&v34[0];
  sub_10021D8A8(*(&v32 + 1), v33);
  sub_10021D28C(v35);
  if (v7)
  {
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *&v24 = v5;
  *(&v24 + 1) = v6;
  sub_10000FCBC();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for Font.Design();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  static Font.system(size:weight:design:)();
  sub_10000EA04(v3, &qword_1008DC448);
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_10004642C(v8, v10, v12 & 1);

  v22 = v23;
  *v23 = v14;
  v22[1] = v16;
  *(v22 + 16) = v18 & 1;
  v22[3] = v20;
  return result;
}

uint64_t sub_10021C4E4(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v7 - 8);
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  a3 &= 1u;
  v8 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22[8] = v19;
  v22[9] = v20;
  v23[0] = *v21;
  *(v23 + 9) = *&v21[9];
  v22[4] = v15;
  v22[5] = v16;
  v22[6] = v17;
  v22[7] = v18;
  v22[0] = v11;
  v22[1] = v12;
  v22[2] = v13;
  v22[3] = v14;

  sub_10021D28C(v22);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  sub_10021D48C(a1, a2, a3);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100140278(&qword_1008E1D40);
  type metadata accessor for Date();
  sub_10021D49C();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_10021C77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v48 = a3;
  v47 = a2;
  v49 = a1;
  v53 = a5;
  v52 = sub_100140278(&qword_1008E1D60) - 8;
  __chkstk_darwin(v52);
  v51 = &v41 - v5;
  v6 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100140278(&qword_1008E1D50);
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v46 = sub_100140278(&qword_1008E1D68);
  v56 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v41 - v13;
  v14 = type metadata accessor for AxisGridLine();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100140278(&qword_1008E1D70);
  v41 = *(v43 - 8);
  v18 = v41;
  __chkstk_darwin(v43);
  v54 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v41 - v21;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  AxisGridLine.init(centered:stroke:)();
  v42 = v22;
  AxisMark.offset(x:y:)();
  (*(v15 + 8))(v17, v14);
  v57 = v47;
  v58 = v48;
  v59 = v50 & 1;
  v60 = v49;
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  static Color.gray.getter();
  v23 = Color.opacity(_:)();

  v61 = v23;
  sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
  v24 = v55;
  AxisMark.foregroundStyle<A>(_:)();

  (*(v44 + 8))(v10, v8);
  v25 = *(v18 + 16);
  v26 = v54;
  v27 = v43;
  v25(v54, v22, v43);
  v28 = *(v56 + 16);
  v29 = v45;
  v30 = v46;
  v28(v45, v24, v46);
  v31 = v51;
  v25(v51, v26, v27);
  v32 = v52;
  v33 = *(v52 + 56);
  v28(&v31[v33], v29, v30);
  v34 = v41;
  v35 = v53;
  (*(v41 + 32))(v53, v31, v27);
  v36 = *(v32 + 56);
  v37 = v56;
  (*(v56 + 32))(v35 + v36, &v31[v33], v30);
  v38 = *(v37 + 8);
  v38(v55, v30);
  v39 = *(v34 + 8);
  v39(v42, v27);
  v38(v29, v30);
  return (v39)(v54, v27);
}

unint64_t sub_10021CE14@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v38 = a1;
  v2 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v2 - 8);
  v36 = &v34 - v3;
  v35 = type metadata accessor for Date();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v34 = StateObject.wrappedValue.getter();
  v7 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v50[8] = v47;
  v50[9] = v48;
  v51[0] = v49[0];
  *(v51 + 9) = *(v49 + 9);
  v50[4] = v43;
  v50[5] = v44;
  v50[6] = v45;
  v50[7] = v46;
  v50[0] = v39;
  v50[1] = v40;
  v50[2] = v41;
  v50[3] = v42;
  v8 = v40;

  sub_10021D28C(v50);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  result = AxisValue.index.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < v9[2])
  {
    v11 = v35;
    (*(v4 + 16))(v6, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * result, v35);

    v12 = v34;
    v13 = *(v34 + OBJC_IVAR___CHDivingDataCalculator_axisFormatter);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v15 = [v13 stringFromDate:isa];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    (*(v4 + 8))(v6, v11);
    *&v39 = v16;
    *(&v39 + 1) = v18;
    sub_10000FCBC();
    v19 = Text.init<A>(_:)();
    v21 = v20;
    v23 = v22;
    v24 = type metadata accessor for Font.Design();
    v25 = v36;
    (*(*(v24 - 8) + 56))(v36, 1, 1, v24);
    static Font.system(size:weight:design:)();
    sub_10000EA04(v25, &qword_1008DC448);
    v26 = Text.font(_:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_10004642C(v19, v21, v23 & 1);

    v33 = v37;
    *v37 = v26;
    v33[1] = v28;
    *(v33 + 16) = v30 & 1;
    v33[3] = v32;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10021D228@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static Alignment.leading.getter();
  a1[1] = v6;
  v7 = sub_100140278(&qword_1008E1C50);
  return sub_1002199A4(v3, v4, v5, (a1 + *(v7 + 44)));
}

unint64_t sub_10021D2EC()
{
  result = qword_1008E1CD8;
  if (!qword_1008E1CD8)
  {
    sub_100141EEC(&qword_1008E1CD0);
    sub_100141EEC(&qword_1008E1CE0);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1CD8);
  }

  return result;
}

uint64_t sub_10021D3FC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10021D470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1();
  }

  else
  {
  }
}

id sub_10021D48C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

unint64_t sub_10021D49C()
{
  result = qword_1008E1D48;
  if (!qword_1008E1D48)
  {
    sub_100141EEC(&qword_1008E1D40);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    sub_100141EEC(&qword_1008E1D50);
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1D48);
  }

  return result;
}

unint64_t sub_10021D600()
{
  result = qword_1008E1D88;
  if (!qword_1008E1D88)
  {
    sub_100141EEC(&qword_1008E1D80);
    sub_10021D684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1D88);
  }

  return result;
}

unint64_t sub_10021D684()
{
  result = qword_1008E1D90;
  if (!qword_1008E1D90)
  {
    sub_100141EEC(&qword_1008E1D98);
    sub_10021D788();
    sub_100141EEC(&qword_1008E1D50);
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1D90);
  }

  return result;
}

unint64_t sub_10021D788()
{
  result = qword_1008E1DA0;
  if (!qword_1008E1DA0)
  {
    sub_100141EEC(&qword_1008E1DA8);
    sub_100141EEC(&qword_1008E1D50);
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1DA0);
  }

  return result;
}

uint64_t sub_10021D8A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10021D8EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021D988@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1 || !a2)
  {
    v33 = objc_opt_self();
    v34 = [v33 mainBundle];
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 localizedStringForKey:v35 value:0 table:0];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = [v33 mainBundle];
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 localizedStringForKey:v41 value:0 table:0];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    sub_1004C2DD4(v37, v39, v43, v45, 0, 0xE000000000000000, a3, a4);

    goto LABEL_7;
  }

  v8 = objc_opt_self();
  v9 = a2;
  v10 = a1;
  v11 = [v8 minuteUnit];
  v12 = objc_opt_self();
  v52 = v10;
  [v10 doubleValueForUnit:v11];
  v14 = [objc_allocWithZone(NSNumber) initWithDouble:v13];
  v15 = [v12 stringWithNumber:v14 decimalPrecision:1 roundingMode:1];

  v16 = v9;
  if (v15)
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    [v16 doubleValueForUnit:v11];
    v20 = [objc_allocWithZone(NSNumber) initWithDouble:v19];
    v21 = [v12 stringWithNumber:v20 decimalPrecision:1 roundingMode:1];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = [objc_opt_self() mainBundle];
      v26 = String._bridgeToObjectiveC()();
      v27 = [v25 localizedStringForKey:v26 value:0 table:0];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v18;
      v30 = v16;
      v32 = v31;

      sub_1004C2DD4(v50, v29, v22, v24, v28, v32, a3, a4);

LABEL_7:
      v46 = 0;
      goto LABEL_10;
    }
  }

  v46 = 1;
LABEL_10:
  v47 = type metadata accessor for AttributedString();
  v48 = *(*(v47 - 8) + 56);

  return v48(a4, v46, 1, v47);
}

uint64_t sub_10021DD98@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1 || !a2)
  {
    v33 = objc_opt_self();
    v34 = [v33 mainBundle];
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 localizedStringForKey:v35 value:0 table:0];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = [v33 mainBundle];
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 localizedStringForKey:v41 value:0 table:0];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    sub_1004C2DD4(v37, v39, v43, v45, 0, 0xE000000000000000, a3, a4);

    goto LABEL_7;
  }

  v8 = objc_opt_self();
  v9 = a2;
  v10 = a1;
  v11 = [v8 countUnit];
  v12 = objc_opt_self();
  v52 = v10;
  [v10 doubleValueForUnit:v11];
  v14 = [objc_allocWithZone(NSNumber) initWithDouble:v13];
  v15 = [v12 stringWithNumber:v14 decimalPrecision:1];

  v16 = v9;
  if (v15)
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    [v16 doubleValueForUnit:v11];
    v20 = [objc_allocWithZone(NSNumber) initWithDouble:v19];
    v21 = [v12 stringWithNumber:v20 decimalPrecision:1];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = [objc_opt_self() mainBundle];
      v26 = String._bridgeToObjectiveC()();
      v27 = [v25 localizedStringForKey:v26 value:0 table:0];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v18;
      v30 = v16;
      v32 = v31;

      sub_1004C2DD4(v50, v29, v22, v24, v28, v32, a3, a4);

LABEL_7:
      v46 = 0;
      goto LABEL_10;
    }
  }

  v46 = 1;
LABEL_10:
  v47 = type metadata accessor for AttributedString();
  v48 = *(*(v47 - 8) + 56);

  return v48(a4, v46, 1, v47);
}

id sub_10021E1A0(void *a1, void *a2, void *a3)
{
  if (!a1 || !a2)
  {
    return sub_1004C2254(11565, 0xE200000000000000, 0x2D2D, 0xE200000000000000, 0, 0xE000000000000000, a3);
  }

  v6 = objc_opt_self();
  v7 = a1;
  v30 = a2;
  v8 = [v6 minuteUnit];
  v9 = objc_opt_self();
  [v7 doubleValueForUnit:v8];
  v11 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
  v12 = [v9 stringWithNumber:v11 decimalPrecision:1 roundingMode:1];

  if (v12)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    [v30 doubleValueForUnit:v8];
    v16 = [objc_allocWithZone(NSNumber) initWithDouble:v15];
    v17 = [v9 stringWithNumber:v16 decimalPrecision:1 roundingMode:1];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = [objc_opt_self() mainBundle];
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 localizedStringForKey:v22 value:0 table:0];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_1004C2254(v29, v14, v18, v20, v24, v26, a3);

      return v27;
    }
  }

  return 0;
}

id sub_10021E444(void *a1, void *a2, void *a3, void *a4)
{
  if (!a1 || !a2)
  {
    return sub_1004C2254(11565, 0xE200000000000000, 0x2D2D, 0xE200000000000000, 0, 0xE000000000000000, a4);
  }

  v7 = a1;
  v29 = a2;
  result = [a3 unitManager];
  if (result)
  {
    v9 = result;
    v10 = [result userActiveEnergyBurnedUnit];

    v11 = objc_opt_self();
    [v7 doubleValueForUnit:v10];
    v13 = [objc_allocWithZone(NSNumber) initWithDouble:v12];
    v14 = [v11 stringWithNumber:v13 decimalPrecision:1 roundingMode:1];

    if (!v14)
    {

      return 0;
    }

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    [v29 doubleValueForUnit:v10];
    v18 = [objc_allocWithZone(NSNumber) initWithDouble:v17];
    v19 = [v11 stringWithNumber:v18 decimalPrecision:1 roundingMode:1];

    if (!v19)
    {

      return 0;
    }

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    result = [a3 localizedShortActiveEnergyUnitString];
    if (result)
    {
      v23 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000FCBC();
      v24 = StringProtocol.localizedUppercase.getter();
      v26 = v25;

      v27 = sub_1004C2254(v28, v16, v20, v22, v24, v26, a4);

      return v27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10021E708(void *a1, void *a2, void *a3)
{
  if (!a1 || !a2)
  {
    return sub_1004C2254(11565, 0xE200000000000000, 0x2D2D, 0xE200000000000000, 0, 0xE000000000000000, a3);
  }

  v6 = objc_opt_self();
  v7 = a1;
  v30 = a2;
  v8 = [v6 countUnit];
  v9 = objc_opt_self();
  [v7 doubleValueForUnit:v8];
  v11 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
  v12 = [v9 stringWithNumber:v11 decimalPrecision:1];

  if (v12)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    [v30 doubleValueForUnit:v8];
    v16 = [objc_allocWithZone(NSNumber) initWithDouble:v15];
    v17 = [v9 stringWithNumber:v16 decimalPrecision:1];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = [objc_opt_self() mainBundle];
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 localizedStringForKey:v22 value:0 table:0];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_1004C2254(v29, v14, v18, v20, v24, v26, a3);

      return v27;
    }
  }

  return 0;
}

uint64_t sub_10021E9A4(void *a1)
{
  v2 = [objc_opt_self() countUnit];
  [a1 doubleValueForUnit:v2];
  v4 = v3;

  v5 = objc_opt_self();
  v6 = [objc_allocWithZone(NSNumber) initWithDouble:v4];
  v7 = [v5 stringWithNumber:v6 decimalPrecision:1 roundingMode:4];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

id sub_10021EA9C(void *a1, void *a2, void *a3)
{
  v6 = [objc_opt_self() meterUnit];
  [a1 doubleValueForUnit:v6];
  v8 = v7;

  result = [a2 unitManager];
  if (result)
  {
    v10 = result;
    [result distanceInUserDistanceUnitForDistanceInMeters:1 distanceType:v8];

    v11.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
    v12 = [objc_opt_self() stringWithNumber:v11.super.super.isa decimalPrecision:3];
    if (!v12)
    {

      return 0;
    }

    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    result = [a2 localizedShortUnitStringForDistanceType:1];
    if (result)
    {
      v17 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000FCBC();
      v18 = StringProtocol.localizedUppercase.getter();
      v20 = v19;

      v21 = sub_1004C154C(v14, v16, v18, v20, a3);

      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10021EC5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10021ECA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10021ED08(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v38 = a5;
  v11 = a3;
  v12 = type metadata accessor for UUID();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin(v12);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Card = type metadata accessor for FitnessPlusUpNextCard();
  __chkstk_darwin(Card);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v17 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  if (v11 < 3 || a1 ^ 5 | a2)
  {
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else
  {
    sub_10001B104(a4, &v42, &qword_1008DCC60);
    v23 = v43;
    if (v43)
    {
      v24 = v44;
      sub_1000066AC(&v42, v43);
      (*(v24 + 8))(v23, v24);
      (*(v39 + 56))(v22, 0, 1, v40);
      sub_100005A40(&v42);
    }

    else
    {
      sub_10000EA04(&v42, &qword_1008DCC60);
      (*(v39 + 56))(v22, 1, 1, v40);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = v42;
    sub_100007C5C(v6 + 8, &v42);
    sub_100007C5C(v6 + 48, v41);
    *(a6 + 24) = Card;
    *(a6 + 32) = &off_100852068;
    v26 = sub_100005994(a6);
    v27 = &v16[Card[5]];
    *v27 = xmmword_1006D4A80;
    v27[16] = 3;
    v16[Card[6]] = 1;
    sub_10001B104(v22, v19, &unk_1008DB8A0);
    v29 = v39;
    v28 = v40;
    v30 = *(v39 + 48);
    if (v30(v19, 1, v40) == 1)
    {
      v36 = v26;
      v31 = v25;
      v32 = v37;
      UUID.init()();
      sub_10000EA04(v22, &unk_1008DB8A0);
      v33 = v30(v19, 1, v28);
      v34 = v32;
      v25 = v31;
      v26 = v36;
      if (v33 != 1)
      {
        sub_10000EA04(v19, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v22, &unk_1008DB8A0);
      v34 = v37;
      (*(v29 + 32))(v37, v19, v28);
    }

    (*(v29 + 32))(v16, v34, v28);
    v16[Card[7]] = v38 & 1;
    v16[Card[8]] = 1;
    *&v16[Card[9]] = v25;
    sub_100006260(&v42, &v16[Card[10]]);
    sub_100006260(v41, &v16[Card[11]]);
    sub_10021F194(v16, v26);
  }
}

uint64_t sub_10021F194(uint64_t a1, uint64_t a2)
{
  Card = type metadata accessor for FitnessPlusUpNextCard();
  (*(*(Card - 8) + 32))(a2, a1, Card);
  return a2;
}

void sub_10021F200(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v38 = a5;
  v11 = a3;
  v12 = type metadata accessor for UUID();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin(v12);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Card = type metadata accessor for FitnessPlusUpNextCard();
  __chkstk_darwin(Card);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v17 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  if (v11 < 3 || a1 ^ 5 | a2)
  {
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else
  {
    sub_10001B104(a4, &v42, &qword_1008DCC60);
    v23 = v43;
    if (v43)
    {
      v24 = v44;
      sub_1000066AC(&v42, v43);
      (*(v24 + 8))(v23, v24);
      (*(v39 + 56))(v22, 0, 1, v40);
      sub_100005A40(&v42);
    }

    else
    {
      sub_10000EA04(&v42, &qword_1008DCC60);
      (*(v39 + 56))(v22, 1, 1, v40);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = v42;
    sub_100007C5C(v6 + 8, &v42);
    sub_100007C5C(v6 + 48, v41);
    *(a6 + 24) = Card;
    *(a6 + 32) = &off_100852068;
    v26 = sub_100005994(a6);
    v27 = &v16[Card[5]];
    *v27 = xmmword_1006D4A80;
    v27[16] = 3;
    v16[Card[6]] = 1;
    sub_10001B104(v22, v19, &unk_1008DB8A0);
    v29 = v39;
    v28 = v40;
    v30 = *(v39 + 48);
    if (v30(v19, 1, v40) == 1)
    {
      v36 = v26;
      v31 = v25;
      v32 = v37;
      UUID.init()();
      sub_10000EA04(v22, &unk_1008DB8A0);
      v33 = v30(v19, 1, v28);
      v34 = v32;
      v25 = v31;
      v26 = v36;
      if (v33 != 1)
      {
        sub_10000EA04(v19, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v22, &unk_1008DB8A0);
      v34 = v37;
      (*(v29 + 32))(v37, v19, v28);
    }

    (*(v29 + 32))(v16, v34, v28);
    v16[Card[7]] = v38 & 1;
    v16[Card[8]] = 1;
    *&v16[Card[9]] = v25;
    sub_100006260(&v42, &v16[Card[10]]);
    sub_100006260(v41, &v16[Card[11]]);
    sub_100221070(v16, v26, type metadata accessor for FitnessPlusUpNextCard);
  }
}

double sub_10021F69C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v11 = a3;
  v12 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26[-1] - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 < 3 || a1 ^ 6 | a2)
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_10001B104(a4, v26, &qword_1008DCC60);
  v19 = v27;
  if (!v27)
  {
    sub_10000EA04(v26, &qword_1008DCC60);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_8:
    UUID.init()();
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_10000EA04(v14, &unk_1008DB8A0);
    }

    goto LABEL_10;
  }

  v20 = v28;
  sub_1000066AC(v26, v27);
  (*(v20 + 8))(v19, v20);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_100005A40(v26);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_8;
  }

  (*(v16 + 32))(v18, v14, v15);
LABEL_10:
  v22 = type metadata accessor for FitnessPlusSampleContentCard();
  *(a6 + 24) = v22;
  *(a6 + 32) = &off_10084B820;
  v23 = sub_100005994(a6);
  (*(v16 + 32))(v23, v18, v15);
  v24 = v23 + v22[5];
  *&result = 6;
  *v24 = xmmword_1006D4A90;
  v24[16] = 3;
  *(v23 + v22[6]) = 1;
  *(v23 + v22[7]) = a5 & 1;
  *(v23 + v22[8]) = 1;
  return result;
}

void sub_10021F9AC(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v65 = a5;
  v68 = a6;
  v63 = a4;
  v62 = a2;
  v67 = type metadata accessor for UUID();
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v61 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v61 - v12;
  v66 = type metadata accessor for TrendsCard();
  __chkstk_darwin(v66);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v61 - v23;
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  __chkstk_darwin(v28);
  v30 = &v61 - v29;
  if (a3 == 2)
  {
    v62 = v13;
    LODWORD(v61) = v63 & 1;
    v64 = sub_1000779F4(a1, v61);
    v63 = v37;
    sub_10001B104(v65, v70, &qword_1008DCC60);
    v38 = v71;
    if (v71)
    {
      v39 = v72;
      sub_1000066AC(v70, v71);
      (*(v39 + 8))(v38, v39);
      v40 = v69;
      v41 = v67;
      (*(v69 + 56))(v30, 0, 1, v67);
      sub_100005A40(v70);
    }

    else
    {
      sub_10000EA04(v70, &qword_1008DCC60);
      v40 = v69;
      v41 = v67;
      (*(v69 + 56))(v30, 1, 1, v67);
    }

    v42 = a1;
    v43 = v66;
    *(a7 + 24) = v66;
    *(a7 + 32) = &off_100860780;
    v44 = sub_100005994(a7);
    sub_10001B104(v30, v27, &unk_1008DB8A0);
    v45 = *(v40 + 48);
    if (v45(v27, 1, v41) == 1)
    {
      v69 = v42;
      v46 = v44;
      v47 = v62;
      UUID.init()();
      sub_10000EA04(v30, &unk_1008DB8A0);
      v48 = v45(v27, 1, v41);
      v49 = v47;
      v44 = v46;
      v42 = v69;
      if (v48 != 1)
      {
        sub_10000EA04(v27, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v30, &unk_1008DB8A0);
      v49 = v62;
      (*(v40 + 32))(v62, v27, v41);
    }

    (*(v40 + 32))(v18, v49, v41);
    v50 = &v18[v43[5]];
    *v50 = v42;
    *(v50 + 1) = 0;
    v50[16] = 2;
    v18[v43[6]] = v61;
    v18[v43[7]] = v68 & 1;
    v18[v43[8]] = 1;
    v51 = &v18[v43[9]];
    *v51 = v64;
    v51[8] = v63;
    v52 = v18;
  }

  else
  {
    if (a3 != 3 || a1 != 8 || v62)
    {
      *(a7 + 32) = 0;
      *a7 = 0u;
      *(a7 + 16) = 0u;
      return;
    }

    v31 = v63 & 1;
    v64 = sub_1000779F4(9u, v63 & 1);
    v63 = v32;
    sub_10001B104(v65, v70, &qword_1008DCC60);
    v33 = v71;
    if (v71)
    {
      v34 = v72;
      sub_1000066AC(v70, v71);
      (*(v34 + 8))(v33, v34);
      v35 = v69;
      v36 = v67;
      (*(v69 + 56))(v24, 0, 1, v67);
      sub_100005A40(v70);
    }

    else
    {
      sub_10000EA04(v70, &qword_1008DCC60);
      v35 = v69;
      v36 = v67;
      (*(v69 + 56))(v24, 1, 1, v67);
    }

    v53 = v66;
    *(a7 + 24) = v66;
    *(a7 + 32) = &off_100860780;
    v44 = sub_100005994(a7);
    sub_10001B104(v24, v21, &unk_1008DB8A0);
    v54 = *(v35 + 48);
    if (v54(v21, 1, v36) == 1)
    {
      v55 = v61;
      UUID.init()();
      sub_10000EA04(v24, &unk_1008DB8A0);
      if (v54(v21, 1, v36) != 1)
      {
        sub_10000EA04(v21, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v24, &unk_1008DB8A0);
      v56 = *(v35 + 32);
      v55 = v61;
      v56(v61, v21, v36);
    }

    v57 = v63;
    v58 = v63 < 3u;
    (*(v69 + 32))(v15, v55, v36);
    v59 = &v15[v53[5]];
    *v59 = xmmword_1006D4AC0;
    v59[16] = 3;
    v15[v53[6]] = v31;
    v15[v53[7]] = v68 & 1;
    v15[v53[8]] = v58;
    v60 = &v15[v53[9]];
    *v60 = v64;
    v60[8] = v57;
    v52 = v15;
  }

  sub_100221070(v52, v44, type metadata accessor for TrendsCard);
}

void sub_100220120(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v45 = a8;
  v40 = a7;
  v43 = a4;
  v44 = a6;
  v13 = a3;
  v14 = type metadata accessor for UUID();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CatalogTipCard();
  __chkstk_darwin(v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v19 - 8);
  v46 = &v39 - v20;
  v21 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v21 - 8);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v39 - v25;
  if (v13 < 3 || a1 ^ 7 | a2)
  {
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
  }

  else
  {
    sub_10001B104(a5, v47, &qword_1008DCC60);
    v27 = v48;
    if (v48)
    {
      v28 = v49;
      sub_1000066AC(v47, v48);
      (*(v28 + 8))(v27, v28);
      v29 = v42;
      (v42[7])(v26, 0, 1, v14);
      sub_100005A40(v47);
    }

    else
    {
      sub_10000EA04(v47, &qword_1008DCC60);
      v29 = v42;
      (v42[7])(v26, 1, 1, v14);
    }

    v30 = *(v40 + 32);
    v31 = *(*v30 + class metadata base offset for ManagedBuffer + 16);
    v32 = (*(*v30 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v30 + v32));
    v33 = type metadata accessor for CatalogTipActivityTileDataModel.State();
    sub_10001B104(v30 + *(v33 + 20) + v31, v46, &qword_1008E4E80);
    os_unfair_lock_unlock((v30 + v32));
    *(a9 + 24) = v16;
    *(a9 + 32) = &off_1008520B0;
    v42 = sub_100005994(a9);
    v34 = &v18[v16[5]];
    *v34 = xmmword_1006D4AA0;
    v34[16] = 3;
    sub_10001B104(v26, v23, &unk_1008DB8A0);
    v35 = v29;
    v36 = v29[6];
    LODWORD(v31) = v36(v23, 1, v14);
    v37 = v45;

    if (v31 == 1)
    {
      v38 = v41;
      UUID.init()();
      sub_10000EA04(v26, &unk_1008DB8A0);
      if (v36(v23, 1, v14) != 1)
      {
        sub_10000EA04(v23, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v26, &unk_1008DB8A0);
      v38 = v41;
      (v35[4])(v41, v23, v14);
    }

    (v35[4])(v18, v38, v14);
    v18[v16[6]] = v43 & 1;
    v18[v16[7]] = v44 & 1;
    v18[v16[8]] = 1;
    sub_100015E80(v46, &v18[v16[9]], &qword_1008E4E80);
    *&v18[v16[10]] = v37;
    sub_100221070(v18, v42, type metadata accessor for CatalogTipCard);
  }
}

void sub_10022063C(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, int *a10)
{
  v66 = a8;
  v67 = a5;
  v69 = a7;
  v76 = a4;
  v77 = a6;
  v13 = a3;
  v74 = type metadata accessor for UUID();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ActivityRingsCard();
  __chkstk_darwin(v75);
  v73 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v16 - 8);
  v70 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v68 = &v63 - v19;
  v20 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v20 - 8);
  v78 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  __chkstk_darwin(v25);
  v79 = &v63 - v26;
  v27 = type metadata accessor for Calendar();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  if (v13 < 3 || a1 | a2)
  {
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
  }

  else
  {
    v38 = v36;
    v39 = &v63 - v37;
    static Calendar.current.getter();
    Date.init()();
    Calendar.startOfDay(for:)();
    v40 = *(v32 + 8);
    v65 = v38;
    v63 = v40;
    v40(v34, v38);
    (*(v28 + 8))(v30, v27);
    v64 = v39;
    v41 = sub_1001E9F44();
    v42 = v69;
    v43 = [*(v69 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:v41];
    v44 = v66;
    v45 = [v66 resumeDate];
    if (v45)
    {
      v46 = v45;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    v48 = v75;
    v49 = v73;
    v75 = a10;
    (*(v32 + 56))(v24, v47, 1, v65);
    sub_100015E80(v24, v79, &unk_1008F73A0);
    v50 = [v44 isPaused];
    v73 = v43;
    [v43 setDeprecatedPauseForInternalSwiftClient:v50];
    sub_10001B104(v67, v80, &qword_1008DCC60);
    v51 = v81;
    if (v81)
    {
      v52 = v82;
      sub_1000066AC(v80, v81);
      v53 = v51;
      v54 = v68;
      (*(v52 + 8))(v53, v52);
      v55 = v72;
      v56 = v74;
      (v72[7])(v54, 0, 1, v74);
      sub_100005A40(v80);
    }

    else
    {
      sub_10000EA04(v80, &qword_1008DCC60);
      v55 = v72;
      v54 = v68;
      v56 = v74;
      (v72[7])(v68, 1, 1, v74);
    }

    sub_10001B104(v79, v78, &unk_1008F73A0);
    LODWORD(v74) = *(v42 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
    *(a9 + 24) = v48;
    *(a9 + 32) = &off_1008552C8;
    v72 = sub_100005994(a9);
    v57 = v49 + v48[5];
    *v57 = 0;
    *(v57 + 8) = 0;
    *(v57 + 16) = 3;
    v58 = v70;
    sub_10001B104(v54, v70, &unk_1008DB8A0);
    v59 = v55[6];
    v60 = v59(v58, 1, v56);
    v61 = v75;
    if (v60 == 1)
    {
      v62 = v71;
      UUID.init()();
      sub_10000EA04(v54, &unk_1008DB8A0);
      if (v59(v58, 1, v56) != 1)
      {
        sub_10000EA04(v58, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v54, &unk_1008DB8A0);
      v62 = v71;
      (v55[4])(v71, v58, v56);
    }

    (v55[4])(v49, v62, v56);
    *(v49 + v48[6]) = v76 & 1;
    *(v49 + v48[7]) = v77 & 1;
    *(v49 + v48[8]) = 1;
    *(v49 + v48[9]) = v73;
    sub_100015E80(v78, v49 + v48[10], &unk_1008F73A0);
    *(v49 + v48[12]) = v74;
    *(v49 + v48[11]) = v75;
    sub_100221070(v49, v72, type metadata accessor for ActivityRingsCard);
    sub_10000EA04(v79, &unk_1008F73A0);
    v63(v64, v65);
  }
}